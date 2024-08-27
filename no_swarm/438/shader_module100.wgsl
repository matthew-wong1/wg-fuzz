struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: Struct_2,
    e: f32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_4,
    c: vec2<i32>,
    d: i32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(823f, 507f, -420f);

var<private> global1: array<i32, 10>;

var<private> global2: array<vec3<f32>, 23>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_5) -> f32 {
    global2 = array<vec3<f32>, 23>();
    global1 = array<i32, 10>();
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-arg_0.a))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.a.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -729f) * _wgslsmith_f_op_f32(f32(-1f) * -1918f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1114f, global0.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-983f - _wgslsmith_f_op_f32(-arg_0.b.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1220f))), u_input.b.x <= _wgslsmith_mod_u32(arg_0.b.b.x, 18925u)))));
    var var_0 = (vec4<i32>(-1i) * -(~vec4<i32>(-11394i, -14406i, u_input.a.x, u_input.a.x) << ((vec4<u32>(26386u, 1u, 42858u, arg_0.e.a.a) | vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 0u)) % vec4<u32>(32u)))) ^ ~vec4<i32>(arg_0.d, (i32(-1i) * -2147483647i) & -arg_0.c.x, u_input.a.x, -_wgslsmith_add_i32(-1i, u_input.a.x));
    var var_1 = _wgslsmith_add_i32(abs(-(~(-1i))) >> (arg_0.b.d.a.x % 32u), global1[_wgslsmith_index_u32(arg_0.e.a.a, 10u)] & ~_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(1u, 10u)], -6213i));
    return _wgslsmith_f_op_f32(select(-401f, _wgslsmith_f_op_f32(-574f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-193f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(629f, arg_0.b.a.x) + 375f))), true));
}

fn func_2(arg_0: bool, arg_1: vec3<f32>) -> Struct_3 {
    let var_0 = global1[_wgslsmith_index_u32(1u, 10u)];
    let var_1 = Struct_2(reverseBits(~u_input.b.wyx));
    let var_2 = Struct_2(var_1.a);
    global0 = vec3<f32>(_wgslsmith_div_f32(-1420f, 1063f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_5(vec3<f32>(1986f, arg_1.x, -667f), Struct_4(arg_1.zx, u_input.b, vec4<bool>(true, false, false, arg_0), Struct_2(vec3<u32>(7582u, 4294967295u, 4294967295u)), global0.x), u_input.a.yx, 7681i, Struct_3(Struct_1(u_input.b.x))))), -1000f) - _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_1.x, global0.x)))))), _wgslsmith_f_op_f32(f32(-1f) * -519f));
    var var_3 = vec4<bool>(all(!vec3<bool>(false, arg_0, true)) || arg_0, all(vec2<bool>(select(global1[_wgslsmith_index_u32(26481u, 10u)] <= -1i, !arg_0, all(vec4<bool>(false, arg_0, true, true))), arg_0)), false, any(!(!vec2<bool>(false, arg_0))));
    return Struct_3(Struct_1(24815u));
}

fn func_1() -> Struct_2 {
    global0 = global2[_wgslsmith_index_u32(~0u, 23u)];
    let var_0 = func_2(any(vec2<bool>(true, true)), global2[_wgslsmith_index_u32(u_input.b.x, 23u)]);
    global1 = array<i32, 10>();
    var var_1 = func_2(all(!select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)))), _wgslsmith_f_op_vec3_f32(exp2(global2[_wgslsmith_index_u32(func_2(true, global2[_wgslsmith_index_u32(u_input.b.x, 23u)]).a.a, 23u)]))).a;
    var var_2 = var_0;
    return Struct_2(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(~_wgslsmith_add_vec3_u32(u_input.b.xxz, u_input.b.xwz), u_input.b.wxz), _wgslsmith_sub_vec3_u32(u_input.b.yxw, u_input.b.xzw >> (u_input.b.wwy % vec3<u32>(32u))) & firstTrailingBit(~u_input.b.xzy)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = global2[_wgslsmith_index_u32(~u_input.b.x, 23u)];
    global0 = _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(-1300f * global0.x), -498f), global2[_wgslsmith_index_u32(1u, 23u)]);
    var var_2 = _wgslsmith_f_op_f32(select(306f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-682f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * 144f))), global0.x)), !(true | (-2147483647i >= u_input.a.x))));
    let var_3 = -1000f;
    let var_4 = _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(~(~vec4<u32>(var_0.a.x, 49535u, var_0.a.x, 0u)), min(~vec4<u32>(var_0.a.x, var_0.a.x, 0u, 0u), ~(~u_input.b))), u_input.b);
    global1 = array<i32, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, ~2147483647i ^ _wgslsmith_mod_i32(firstLeadingBit(firstTrailingBit(-23223i)), _wgslsmith_div_i32(-17181i, u_input.a.x)), vec2<u32>(6234u, ~func_1().a.x), var_4.x);
}

