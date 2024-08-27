struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<bool, 29> = array<bool, 29>(true, true, true, true, true, false, false, true, true, false, false, false, true, false, false, true, false, false, false, false, true, false, false, false, true, false, true, false, false);

var<private> global2: Struct_1 = Struct_1(vec4<i32>(1i, -4936i, -21508i, 2147483647i), vec3<f32>(-1000f, -1048f, 323f));

var<private> global3: array<vec2<f32>, 27>;

var<private> global4: array<f32, 9> = array<f32, 9>(-1876f, 113f, 1253f, 1410f, -1053f, -1000f, -1000f, 1107f, -415f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    global2 = Struct_1(abs(~(-vec4<i32>(8312i, 13906i, u_input.a.x, global0.x)) << (vec4<u32>(0u, _wgslsmith_mult_u32(0u, 33514u), 23372u, 1u) % vec4<u32>(32u))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1522f, 1350f, global1[_wgslsmith_index_u32(4294967295u, 29u)]))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(global2.b.x))))), _wgslsmith_f_op_f32(floor(-465f)), -1092f));
    global3 = array<vec2<f32>, 27>();
    var var_0 = false;
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.x)))));
    let var_2 = global1[_wgslsmith_index_u32(firstLeadingBit(48938u), 29u)];
    return _wgslsmith_dot_vec3_i32(arg_0.a.xyx, -_wgslsmith_div_vec3_i32(-vec3<i32>(global2.a.x, global0.x, u_input.b.x), arg_0.a.ywy));
}

fn func_4(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_2) -> f32 {
    let var_0 = arg_2.a;
    global0 = max(vec2<i32>(~(~(-16052i) >> (arg_2.c.x % 32u)), -1i), select(global2.a.yx, u_input.a.xz, select(!select(vec2<bool>(false, true), vec2<bool>(true, global1[_wgslsmith_index_u32(arg_2.c.x, 29u)]), true), select(vec2<bool>(true, global1[_wgslsmith_index_u32(arg_2.c.x, 29u)]), !vec2<bool>(false, global1[_wgslsmith_index_u32(arg_2.c.x, 29u)]), 6463i > arg_1), vec2<bool>(global1[_wgslsmith_index_u32(~26698u, 29u)], true))));
    global1 = array<bool, 29>();
    let var_1 = Struct_2(Struct_1(-arg_2.b, _wgslsmith_f_op_vec3_f32(-global2.b)), abs(vec4<i32>(-17199i, -29922i, min(var_0.a.x, 58873i), -36673i) << (vec4<u32>(27612u, min(arg_2.c.x, 28872u), firstLeadingBit(arg_2.c.x), arg_2.c.x) % vec4<u32>(32u))), arg_2.c);
    var var_2 = !vec2<bool>(!select(false, all(vec4<bool>(global1[_wgslsmith_index_u32(0u, 29u)], true, global1[_wgslsmith_index_u32(var_1.c.x, 29u)], true)), var_1.c.x >= 4294967295u), any(!select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 29u)], global1[_wgslsmith_index_u32(arg_2.c.x, 29u)], global1[_wgslsmith_index_u32(arg_2.c.x, 29u)], false), vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(1u, 29u)], global1[_wgslsmith_index_u32(0u, 29u)]), vec4<bool>(global1[_wgslsmith_index_u32(arg_2.c.x, 29u)], true, true, false))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1942f));
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(func_4(global2.a.zxz, ~reverseBits(~abs(-30981i)), Struct_2(Struct_1(vec4<i32>(1i, u_input.b.x, -36824i, global2.a.x), vec3<f32>(global4[_wgslsmith_index_u32(71376u, 9u)], _wgslsmith_f_op_f32(global2.b.x + 977f), _wgslsmith_f_op_f32(sign(-1268f)))), vec4<i32>(~_wgslsmith_mult_i32(global0.x, global2.a.x), 38505i, u_input.a.x, func_3(arg_0)), ~select(vec2<u32>(4294967295u, 25263u), _wgslsmith_div_vec2_u32(vec2<u32>(23297u, 75536u), vec2<u32>(4294967295u, 36685u)), vec2<bool>(true, false)))));
    let var_1 = arg_0;
    global4 = array<f32, 9>();
    let var_2 = select(!(!(!vec3<bool>(false, global1[_wgslsmith_index_u32(40215u, 29u)], false))), select(!select(select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(4294967295u, 29u)], global1[_wgslsmith_index_u32(34407u, 29u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 29u)], global1[_wgslsmith_index_u32(1u, 29u)]), vec3<bool>(global1[_wgslsmith_index_u32(48542u, 29u)], global1[_wgslsmith_index_u32(4835u, 29u)], global1[_wgslsmith_index_u32(27231u, 29u)])), select(vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 29u)], true), vec3<bool>(false, false, global1[_wgslsmith_index_u32(4294967295u, 29u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(1u, 29u)], true)), false), vec3<bool>(all(!vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 29u)], true)), false, -661f <= _wgslsmith_f_op_f32(select(-342f, 1850f, true))), select(global1[_wgslsmith_index_u32(1u, 29u)], false, !all(vec2<bool>(global1[_wgslsmith_index_u32(15354u, 29u)], true)))), !vec3<bool>(true, all(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 29u)], global1[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(1u, 29u)])), select(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 58664u), 29u)], true, select(global1[_wgslsmith_index_u32(27401u, 29u)], global1[_wgslsmith_index_u32(0u, 29u)], true))));
    let var_3 = Struct_2(arg_0, global2.a, ~vec2<u32>(1u, 1u));
    return var_3;
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1) -> vec4<i32> {
    global2 = Struct_1(global2.a | vec4<i32>(~u_input.a.x, firstLeadingBit(global0.x), ~arg_1.a.x, _wgslsmith_add_i32(arg_1.a.x, _wgslsmith_sub_i32(-10125i, global0.x))), arg_1.b);
    global0 = vec2<i32>(-1i, 1i);
    global3 = array<vec2<f32>, 27>();
    var var_0 = func_2(arg_1);
    var var_1 = func_2(func_2(arg_1).a);
    return _wgslsmith_sub_vec4_i32(global2.a, global2.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_add_vec4_i32(u_input.b, _wgslsmith_clamp_vec4_i32(vec4<i32>(~0i, _wgslsmith_mod_i32(48919i, 7275i), -1i, reverseBits(-13098i)), func_1(vec4<u32>(4000u, 19268u, 0u, 26494u), Struct_1(vec4<i32>(-20816i, -2147483647i, 0i, 2147483647i), global2.b)), global2.a)), global2.b);
    let var_1 = Struct_2(var_0, ~vec4<i32>(max(select(global2.a.x, global2.a.x, true), _wgslsmith_dot_vec3_i32(vec3<i32>(-48355i, -8716i, -20057i), u_input.b.yyy)), func_1(~vec4<u32>(25553u, 6507u, 4294967295u, 7625u), Struct_1(vec4<i32>(var_0.a.x, global2.a.x, 35537i, global2.a.x), vec3<f32>(var_0.b.x, global2.b.x, global2.b.x))).x, global2.a.x, ~_wgslsmith_mult_i32(u_input.b.x, u_input.a.x)), ~(~(~(~vec2<u32>(35719u, 26885u)))));
    global3 = array<vec2<f32>, 27>();
    var var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~(1u & firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(57803u, var_1.c.x, 0u), vec3<u32>(19750u, 0u, 0u)))), vec3<i32>(_wgslsmith_div_i32(var_2.a.x ^ global0.x, -1i) << (_wgslsmith_add_u32(~var_1.c.x, 21433u) % 32u), var_2.a.x, ~_wgslsmith_div_i32(~global0.x, _wgslsmith_div_i32(global0.x, 2147483647i))), var_2.b, reverseBits(select(countOneBits(~vec2<u32>(1240u, var_1.c.x)), vec2<u32>(reverseBits(var_1.c.x), 1u), any(vec3<bool>(global1[_wgslsmith_index_u32(41235u, 29u)], false, false)))), i32(-1i) * -4388i);
}

