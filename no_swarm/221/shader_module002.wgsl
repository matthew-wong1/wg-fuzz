struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<f32>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 4>;

var<private> global1: array<bool, 4>;

var<private> global2: array<vec2<u32>, 30>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>) -> f32 {
    let var_0 = vec2<f32>(944f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(583f * -375f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2383f), 1f))));
    let var_1 = ~vec4<i32>(arg_1.x, 1i, -2147483647i, arg_1.x) << (~vec4<u32>(_wgslsmith_dot_vec3_u32(min(vec3<u32>(arg_0, 4550u, arg_0), vec3<u32>(arg_0, 4294967295u, arg_0)), ~vec3<u32>(0u, 99995u, u_input.a.x)), ~_wgslsmith_mod_u32(arg_0, u_input.c), u_input.b, firstTrailingBit(1991u)) % vec4<u32>(32u));
    let var_2 = Struct_2(Struct_1(arg_0, ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.b, arg_0, 4294967295u, arg_0), vec4<u32>(u_input.a.x, u_input.b, 1u, arg_0), ~vec4<u32>(1u, 78446u, arg_0, 29326u)), ~vec4<i32>(-71878i, 1i, 3975i, u_input.d), select(!(!global1[_wgslsmith_index_u32(arg_0, 4u)]), global1[_wgslsmith_index_u32(4294967295u, 4u)], global1[_wgslsmith_index_u32(u_input.c >> (0u % 32u), 4u)])), var_1.x, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(2361f, var_0.x, _wgslsmith_f_op_f32(-var_0.x)))), reverseBits(~(-reverseBits(var_1.x))));
    let var_3 = Struct_2(Struct_1(_wgslsmith_mult_u32(var_2.a.a, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 41055u, 1u, 61982u) >> (vec4<u32>(var_2.a.a, 1u, 25967u, arg_0) % vec4<u32>(32u)), var_2.a.b | var_2.a.b)), vec4<u32>(firstLeadingBit(~161959u), arg_0, u_input.c, 84110u), vec4<i32>(var_2.d, 2147483647i, -62687i, 14049i), any(select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 4u)], false), vec2<bool>(var_2.a.d, true)), true))), var_1.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-326f + _wgslsmith_f_op_f32(abs(3434f))), -929f, var_2.c.x)), select(reverseBits(arg_1.x), abs(arg_1.x) >> (4294967295u % 32u), any(!(!vec4<bool>(global1[_wgslsmith_index_u32(0u, 4u)], global1[_wgslsmith_index_u32(u_input.a.x, 4u)], global1[_wgslsmith_index_u32(var_2.a.b.x, 4u)], true)))));
    return 416f;
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: bool) -> u32 {
    global0 = array<vec2<u32>, 4>();
    var var_0 = Struct_1(select(max(4294967295u, ~(~44559u)), u_input.c, ~(~u_input.b) <= ~abs(0u)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, ~(~17213u), ~u_input.c, u_input.b), select(~vec4<u32>(u_input.a.x, u_input.c, 15022u, u_input.c), max(vec4<u32>(0u, 84930u, 4294967295u, u_input.a.x) >> (vec4<u32>(21702u, u_input.b, 1u, 40818u) % vec4<u32>(32u)), ~vec4<u32>(27704u, 77243u, 0u, u_input.c)), select(select(arg_1, vec4<bool>(false, arg_1.x, true, false), vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 4u)], true, false)), arg_1, true))), (vec4<i32>(-1i) * -firstTrailingBit(vec4<i32>(u_input.e, -2985i, u_input.e, u_input.e))) | abs(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, 0i, u_input.e, 14502i), _wgslsmith_mod_vec4_i32(vec4<i32>(10379i, u_input.e, u_input.e, u_input.e), vec4<i32>(u_input.e, u_input.d, 1i, u_input.e)))), true);
    var_0 = Struct_1(min(_wgslsmith_mult_u32(_wgslsmith_sub_u32(var_0.a, u_input.c), u_input.b) ^ 0u, u_input.a.x), ~select(~vec4<u32>(0u, 1u, 1u, var_0.b.x), _wgslsmith_mult_vec4_u32(var_0.b, var_0.b) << (abs(vec4<u32>(u_input.a.x, 9782u, u_input.a.x, 1u)) % vec4<u32>(32u)), true), vec4<i32>(51589i, ~(-1i), -2309i, -25760i), true);
    let var_1 = var_0.c.yy;
    global1 = array<bool, 4>();
    return 87236u;
}

fn func_2() -> vec4<f32> {
    global1 = array<bool, 4>();
    var var_0 = vec3<u32>(func_4(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1501f * 1139f))), -2054f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(482f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.b, vec4<i32>(-1i, u_input.e, -14093i, -1i))) * _wgslsmith_f_op_f32(step(1420f, -1420f)))), vec4<bool>(true == (u_input.a.x > 35706u), all(select(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 4u)], global1[_wgslsmith_index_u32(u_input.b, 4u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 4u)], true, true), true)), false && !global1[_wgslsmith_index_u32(u_input.a.x, 4u)], 0i <= firstTrailingBit(0i)), global1[_wgslsmith_index_u32(u_input.c, 4u)]), ~u_input.a.x, u_input.b);
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1689f, 468f, -2363f, 1140f), vec4<f32>(-148f, -183f, -992f, -494f))))))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec4<u32>) -> u32 {
    global1 = array<bool, 4>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2()))))) - vec4<f32>(-630f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -849f)) * 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1582f)), _wgslsmith_f_op_f32(ceil(586f))));
    let var_1 = 693f;
    var var_2 = vec3<bool>(min(arg_2.x ^ 65677u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(u_input.c, arg_0.a))) == _wgslsmith_mod_u32(arg_2.x, _wgslsmith_sub_u32(~arg_2.x, arg_0.a & arg_0.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - 1871f), -1838f) > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-115f)))), true);
    global2 = array<vec2<u32>, 30>();
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 4>();
    let var_0 = ~u_input.e;
    var var_1 = select(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 4u)], false, global1[_wgslsmith_index_u32(u_input.a.x, 4u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 4u)], global1[_wgslsmith_index_u32(4294967295u, 4u)], true), vec3<bool>(false, false, global1[_wgslsmith_index_u32(23835u, 4u)])), global1[_wgslsmith_index_u32(select(1u, u_input.c, true), 4u)])), vec3<bool>(!(!(!global1[_wgslsmith_index_u32(u_input.a.x, 4u)])), select(func_1(Struct_1(2967u, vec4<u32>(u_input.a.x, u_input.c, 1u, u_input.b), vec4<i32>(var_0, var_0, var_0, u_input.e), false), vec2<i32>(u_input.e, var_0), vec4<u32>(75366u, 4294967295u, 4294967295u, u_input.c)) <= _wgslsmith_add_u32(u_input.b, 84881u), !all(vec4<bool>(false, true, global1[_wgslsmith_index_u32(141408u, 4u)], global1[_wgslsmith_index_u32(32609u, 4u)])), true), false), !vec3<bool>(select(true, global1[_wgslsmith_index_u32(30143u, 4u)], global1[_wgslsmith_index_u32(~0u, 4u)]), any(!vec4<bool>(global1[_wgslsmith_index_u32(38601u, 4u)], global1[_wgslsmith_index_u32(u_input.b, 4u)], global1[_wgslsmith_index_u32(u_input.c, 4u)], global1[_wgslsmith_index_u32(u_input.b, 4u)])), true));
    global2 = array<vec2<u32>, 30>();
    let var_2 = Struct_1(u_input.c, ~select(abs(~vec4<u32>(u_input.c, u_input.b, u_input.b, u_input.b)), abs(~vec4<u32>(4294967295u, 50496u, u_input.b, u_input.c)), false), vec4<i32>(_wgslsmith_mult_i32(~var_0, var_0 ^ var_0) << (~(~u_input.b) % 32u), var_0 << (u_input.c % 32u), 40456i, _wgslsmith_mod_i32(~(2147483647i ^ var_0), 1i)), false);
    var var_3 = var_2;
    var var_4 = var_2;
    var var_5 = var_2.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(576f, -394f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2147f + -106f)))));
}

