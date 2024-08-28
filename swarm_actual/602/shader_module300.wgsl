struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4>;

var<private> global1: array<Struct_3, 20>;

var<private> global2: array<vec3<bool>, 19> = array<vec3<bool>, 19>(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: f32) -> vec2<f32> {
    return arg_0.a.c.c;
}

fn func_2(arg_0: vec3<u32>) -> bool {
    global1 = array<Struct_3, 20>();
    global0 = array<u32, 4>();
    var var_0 = global1[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 4u)], 4u)], 20u)];
    var var_1 = Struct_1(var_0.a.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_3(Struct_2(var_0.a.a, Struct_1(var_0.a.c.a, var_0.a.c.c, vec2<f32>(1366f, var_0.a.b.c.x), vec4<bool>(true, var_0.a.b.d.x, true, var_0.a.c.d.x)), Struct_1(vec2<i32>(var_0.a.a.x, -45837i), var_0.a.b.c, var_0.a.c.c, vec4<bool>(var_0.a.c.d.x, true, true, var_0.a.b.d.x)), 8226i)), Struct_1(var_0.a.b.a, var_0.a.c.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-754f, var_0.a.c.c.x)), var_0.a.b.d), var_0.a.c.d.yy, 689f))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_0.a.b.c))), !select(!vec4<bool>(true, true, var_0.a.c.d.x, var_0.a.b.d.x), !select(var_0.a.b.d, vec4<bool>(false, var_0.a.c.d.x, var_0.a.b.d.x, var_0.a.b.d.x), var_0.a.b.d), var_0.a.b.d));
    var_1 = Struct_1(~(~vec2<i32>(var_1.a.x << (4294967295u % 32u), ~14547i)), vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.c.b.x), var_1.c.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.c.c.x), 466f), var_1.b))), var_0.a.b.d);
    return false;
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_3) -> vec2<bool> {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(select(_wgslsmith_sub_u32(max(4294967295u, u_input.a.x >> (u_input.a.x % 32u)), ~(~58085u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24873u, 4u)], 4u)]), _wgslsmith_mod_vec3_u32(vec3<u32>(36261u, 34186u, 0u), arg_0.ywz)), arg_1.a.c.d.x), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(arg_0.xzy, arg_0.yzx), vec3<u32>(0u, 115848u, 50669u)), abs(_wgslsmith_mult_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(52920u, 4u)], u_input.a.x, 29208u), u_input.a.yyx))) >> (~reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 92772u, 1u, 0u), u_input.a)) % 32u)), 20u)];
    var var_1 = func_2(countOneBits(vec3<u32>(1u, ~arg_0.x, ~arg_0.x) >> (firstTrailingBit(vec3<u32>(0u, arg_0.x, 39330u)) % vec3<u32>(32u))));
    global1 = array<Struct_3, 20>();
    let var_2 = arg_0.x;
    var var_3 = Struct_3(Struct_2(_wgslsmith_add_vec2_i32(arg_1.a.b.a, ~vec2<i32>(-16103i, var_0.a.c.a.x)), Struct_1(vec2<i32>(select(arg_1.a.d, arg_1.a.d, var_0.a.c.d.x), i32(-1i) * -14633i), arg_1.a.b.c, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(314f, -281f), vec2<f32>(arg_1.a.c.b.x, var_0.a.c.b.x))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1.a.c.b.x, 739f))))), !(!var_0.a.b.d)), var_0.a.b, reverseBits(countOneBits(_wgslsmith_mod_i32(var_0.a.a.x, 2147483647i)))));
    return vec2<bool>(select(true, !(~var_2 > 6603u), var_3.a.b.d.x), !arg_1.a.b.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(vec2<i32>(~(~1i), reverseBits(abs(-65i))));
    let var_1 = vec2<bool>(any(select(func_1(vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(76579u, 4u)], 15415u, u_input.a.x), Struct_3(Struct_2(vec2<i32>(var_0.x, -1i), Struct_1(vec2<i32>(var_0.x, -32962i), vec2<f32>(961f, -689f), vec2<f32>(-734f, 244f), vec4<bool>(true, true, false, true)), Struct_1(vec2<i32>(1i, 9859i), vec2<f32>(-114f, -1000f), vec2<f32>(-574f, 1418f), vec4<bool>(true, false, false, true)), 2147483647i))), vec2<bool>(false, all(vec4<bool>(false, false, true, true))), true)), true);
    global2 = array<vec3<bool>, 19>();
    var var_2 = Struct_1(var_0, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-1352f - 1000f), -1040f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-531f)))), vec2<bool>(true, true))), vec2<f32>(505f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -440f))), 1000f, false))), select(select(vec4<bool>(!var_1.x, true, var_1.x, select(false, false, var_1.x)), select(!vec4<bool>(var_1.x, false, false, true), vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(var_1.x, var_1.x, var_1.x, true)), true), vec4<bool>(var_1.x | true, any(select(vec3<bool>(true, true, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(false, var_1.x, var_1.x))), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_0.x), var_0) < 0i, var_1.x), !(!select(vec4<bool>(false, var_1.x, var_1.x, false), vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, false)))));
    let var_3 = 26514u;
    var_2 = Struct_1(vec2<i32>(reverseBits(_wgslsmith_div_i32(_wgslsmith_sub_i32(var_2.a.x, var_2.a.x), -24472i)), 13034i), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_2.c.x)), var_2.c.x), var_2.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(2079f - var_2.b.x), -616f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-683f * _wgslsmith_f_op_f32(floor(var_2.b.x))), var_2.c.x)), !select(!vec4<bool>(false, false, var_2.d.x, var_1.x), var_2.d, vec4<bool>(true & var_1.x, any(var_1), !var_1.x, true)));
    var var_4 = Struct_3(Struct_2(var_2.a, Struct_1(_wgslsmith_mult_vec2_i32(var_2.a | var_0, vec2<i32>(var_2.a.x, var_2.a.x) ^ var_0), vec2<f32>(-608f, _wgslsmith_f_op_vec2_f32(func_3(Struct_3(Struct_2(vec2<i32>(var_2.a.x, var_0.x), Struct_1(vec2<i32>(2147483647i, var_0.x), var_2.c, vec2<f32>(777f, var_2.c.x), var_2.d), Struct_1(var_0, vec2<f32>(378f, -1056f), var_2.b, var_2.d), var_2.a.x)), Struct_1(var_0, var_2.c, vec2<f32>(-1578f, var_2.b.x), var_2.d), vec2<bool>(var_2.d.x, true), var_2.b.x)).x), _wgslsmith_f_op_vec2_f32(trunc(var_2.c)), vec4<bool>(true, var_1.x, true, true)), Struct_1(vec2<i32>(0i, -1i) << (_wgslsmith_add_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(var_3, 4u)], u_input.a.x), vec2<u32>(global0[_wgslsmith_index_u32(45458u, 4u)], 67252u)) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_2.b), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1447f, var_2.b.x), vec2<f32>(var_2.b.x, -204f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c.x, -226f)), _wgslsmith_f_op_vec2_f32(func_3(Struct_3(Struct_2(vec2<i32>(var_0.x, -2147483647i), Struct_1(var_0, vec2<f32>(241f, var_2.b.x), vec2<f32>(var_2.b.x, 117f), vec4<bool>(var_2.d.x, var_1.x, true, var_2.d.x)), Struct_1(vec2<i32>(-1i, -11294i), var_2.c, vec2<f32>(1000f, -732f), var_2.d), var_0.x)), Struct_1(vec2<i32>(var_2.a.x, var_2.a.x), vec2<f32>(var_2.c.x, -350f), vec2<f32>(var_2.c.x, 789f), var_2.d), var_2.d.xw, var_2.c.x)), func_1(vec4<u32>(global0[_wgslsmith_index_u32(0u, 4u)], u_input.a.x, u_input.a.x, 1u), Struct_3(Struct_2(var_2.a, Struct_1(var_2.a, var_2.c, var_2.b, vec4<bool>(var_1.x, true, var_1.x, var_1.x)), Struct_1(vec2<i32>(8367i, var_2.a.x), vec2<f32>(182f, 1982f), var_2.c, var_2.d), var_0.x))).x)), select(select(vec4<bool>(var_2.d.x, false, true, var_2.d.x), var_2.d, false), vec4<bool>(var_1.x, var_2.d.x, var_2.d.x, var_2.d.x), var_2.d)), reverseBits(var_2.a.x)));
    let var_5 = var_4.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-619f, -377f), vec2<f32>(713f, var_2.b.x)) + vec2<f32>(var_5.b.c.x, var_4.a.b.c.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-708f, var_5.b.c.x) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1118f, var_5.c.b.x)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2.b.x, -593f)))), select(var_4.a.c.d.wy, !(!var_2.d.ww), !(false | var_4.a.c.d.x)))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(var_2.c.x, -835f)))), _wgslsmith_f_op_f32(floor(var_4.a.c.c.x))))), abs(min(vec3<u32>(u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(73735u, 4u)]) & ~u_input.a.zzz, max(firstTrailingBit(vec3<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(55060u, 4u)], 4u)], 58258u)), u_input.a.yyy))));
}

