struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: vec4<bool>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec2<bool>,
    d: f32,
    e: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_3,
    d: u32,
}

struct Struct_5 {
    a: u32,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 27> = array<vec2<bool>, 27>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false));

var<private> global1: vec3<bool>;

var<private> global2: Struct_2 = Struct_2(vec2<u32>(9707u, 52677u), i32(-2147483648), vec4<bool>(true, true, true, false), Struct_1(vec3<u32>(0u, 1u, 4294967295u), vec2<f32>(-1145f, 427f), 5508u, -1i), false);

var<private> global3: array<vec4<u32>, 5>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4) -> vec2<bool> {
    let var_0 = Struct_3(global2.d, arg_1.b.d.b.x, vec2<bool>(!(all(arg_1.b.c) & (arg_1.b.e | true)), arg_0.c.x), _wgslsmith_f_op_f32(select(arg_1.b.d.b.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.a.b.x) - _wgslsmith_f_op_f32(1000f + global2.d.b.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(735f)))))), global2.e)), _wgslsmith_add_i32(-1i, reverseBits(~2058i)));
    global0 = array<vec2<bool>, 27>();
    global1 = arg_1.b.c.wzx;
    var var_1 = arg_1.c.a.a;
    let var_2 = !(!(!(!(!vec3<bool>(global2.c.x, false, true)))));
    return arg_0.c;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: Struct_4) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-arg_1.b);
    let var_1 = arg_1;
    var var_2 = Struct_2(vec2<u32>(global2.d.c, ~arg_1.a.a.x), u_input.c, global2.c, Struct_1(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(~arg_3.a.a.a, global2.d.a), u_input.a, arg_3.c.a.a), global2.d.b, global2.a.x, -_wgslsmith_mult_i32(_wgslsmith_mult_i32(-1i, arg_1.a.d), ~(-10563i))), false);
    var var_3 = Struct_3(arg_1.a, 1000f, func_3(Struct_3(var_1.a, arg_1.a.b.x, var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a.b * var_2.d.b.x)), -reverseBits(-2147483647i)), Struct_4(arg_1, arg_3.b, Struct_3(arg_1.a, arg_3.b.d.b.x, vec2<bool>(var_2.e, false), _wgslsmith_f_op_f32(var_2.d.b.x - arg_3.c.d), global2.b), 1u)), -413f, -24796i | _wgslsmith_sub_i32(-1i, global2.d.d));
    return any(arg_3.b.c);
}

fn func_2() -> bool {
    var var_0 = Struct_5(1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1500f)))), Struct_1(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, global2.a.x), u_input.a)) << (~abs(u_input.a) % vec3<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(-global2.d.b.x), global2.d.b.x), u_input.a.x, ~0i));
    var_0 = Struct_5(var_0.c.a.x, -933f, Struct_1(var_0.c.a, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_0.c.b), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-147f, global2.d.b.x), var_0.c.b, any(global2.c.xyw))))), min(var_0.a, 89041u), -u_input.b.x));
    var_0 = Struct_5(abs(global2.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.b.x * -415f))) + global2.d.b.x), Struct_1(reverseBits(u_input.a), var_0.c.b, ~global2.a.x, i32(-1i) * -var_0.c.d));
    global0 = array<vec2<bool>, 27>();
    global2 = Struct_2(min(~vec2<u32>(7718u, 56348u << (u_input.a.x % 32u)), vec2<u32>(0u, _wgslsmith_sub_u32(~109599u, global2.a.x))), i32(-1i) * -2147483647i, global2.c, var_0.c, all(vec2<bool>(true, global2.c.x)));
    return func_4(var_0.c.a.zy, Struct_3(Struct_1(vec3<u32>(0u, var_0.c.a.x, var_0.a), _wgslsmith_f_op_vec2_f32(round(var_0.c.b)), ~u_input.a.x, 2147483647i), global2.d.b.x, func_3(Struct_3(Struct_1(vec3<u32>(26392u, global2.a.x, 1u), global2.d.b, 0u, var_0.c.d), 257f, vec2<bool>(true, false), 185f, 23071i), Struct_4(Struct_3(Struct_1(global2.d.a, var_0.c.b, u_input.a.x, var_0.c.d), -481f, global0[_wgslsmith_index_u32(u_input.a.x, 27u)], var_0.c.b.x, -2147483647i), Struct_2(global2.d.a.zy, 26897i, global2.c, Struct_1(global2.d.a, vec2<f32>(-1819f, 2031f), 0u, 18497i), global2.c.x), Struct_3(var_0.c, -575f, global0[_wgslsmith_index_u32(3699u, 27u)], var_0.c.b.x, -1i), u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.b.x) * _wgslsmith_f_op_f32(774f * -1838f)), u_input.c), select(global2.c, select(select(vec4<bool>(false, global1.x, false, global2.e), vec4<bool>(global1.x, false, true, global2.e), global1.x), !global2.c, !global2.c), any(!global2.c)), Struct_4(Struct_3(Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), vec2<f32>(var_0.c.b.x, -958f), 22560u, var_0.c.d), _wgslsmith_f_op_f32(min(-1717f, global2.d.b.x)), vec2<bool>(global1.x, false), _wgslsmith_f_op_f32(ceil(758f)), -2147483647i), Struct_2(vec2<u32>(var_0.c.a.x, 77652u), global2.b, vec4<bool>(false, false, false, global2.e), global2.d, global1.x), Struct_3(var_0.c, global2.d.b.x, !global0[_wgslsmith_index_u32(37653u, 27u)], _wgslsmith_f_op_f32(-global2.d.b.x), -2147483647i), global2.d.c)) | any(vec3<bool>(true, all(!vec4<bool>(global2.e, false, true, global2.e)), any(vec3<bool>(true, false, false))));
}

fn func_1(arg_0: i32, arg_1: vec3<f32>, arg_2: vec3<bool>, arg_3: vec4<f32>) -> vec2<bool> {
    var var_0 = global3[_wgslsmith_index_u32(1u, 5u)];
    var var_1 = global2.d;
    let var_2 = all(global2.c);
    var_0 = global3[_wgslsmith_index_u32(~var_0.x, 5u)];
    let var_3 = !(_wgslsmith_f_op_f32(f32(-1f) * -255f) <= _wgslsmith_f_op_f32(-arg_1.x));
    return vec2<bool>(true, func_2());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(func_1(u_input.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.d.b.x, -679f, global2.d.b.x)), global2.c.xwz, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.d.b.x, 1044f, global2.d.b.x, 489f) - vec4<f32>(-648f, global2.d.b.x, global2.d.b.x, -523f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-741f, global2.d.b.x, 348f, -1098f))))), global0[_wgslsmith_index_u32(u_input.a.x, 27u)], true);
    let var_1 = global2.d.b.x;
    let var_2 = Struct_4(Struct_3(global2.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -836f) + _wgslsmith_f_op_f32(global2.d.b.x + global2.d.b.x)) + global2.d.b.x), global2.c.yz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d.b.x + -1462f))), ~(i32(-1i) * -1319i)), Struct_2(_wgslsmith_div_vec2_u32((vec2<u32>(20932u, u_input.a.x) << (vec2<u32>(0u, u_input.a.x) % vec2<u32>(32u))) >> ((vec2<u32>(4294967295u, u_input.a.x) & u_input.a.yz) % vec2<u32>(32u)), global2.a), -(-601i << (global2.d.c % 32u)), global2.c, global2.d, !var_0.x), Struct_3(global2.d, 1f, !vec2<bool>(false, var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1382f), 331i), max(global2.a.x, global2.d.c));
    global0 = array<vec2<bool>, 27>();
    var var_3 = Struct_1(~(~(~firstTrailingBit(vec3<u32>(69737u, 47576u, global2.d.c)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.d, _wgslsmith_f_op_f32(-global2.d.b.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1171f, var_2.b.d.b.x)))), 17237u, ~2400i);
    var var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.b), u_input.b.x, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(var_2.b.d.b, var_2.c.a.b))));
}

