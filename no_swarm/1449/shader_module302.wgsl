struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 6> = array<vec3<bool>, 6>(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true));

var<private> global1: array<Struct_2, 5>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: vec3<f32>) -> u32 {
    global1 = array<Struct_2, 5>();
    var var_0 = false;
    let var_1 = global0[_wgslsmith_index_u32(u_input.a.x, 6u)];
    var var_2 = vec3<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_sub_i32(-33039i, ~(-8803i)), max(abs(1i), firstTrailingBit(1i))), max(_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, 54531i, -1640i, 38929i), ~vec4<i32>(1i, -2147483647i, -50509i, 37876i)), -_wgslsmith_mod_i32(1i, -34485i))), 1i, max(-2147483647i, abs(-7363i)));
    global1 = array<Struct_2, 5>();
    return ~(~(~(~(~u_input.a.x))));
}

fn func_2() -> bool {
    var var_0 = global1[_wgslsmith_index_u32(func_3(1078f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(462f, 635f), _wgslsmith_f_op_f32(sign(755f)), false))), vec3<f32>(226f, 2233f, _wgslsmith_f_op_f32(f32(-1f) * -1060f))) << (44970u % 32u), 5u)];
    let var_1 = 423f;
    var_0 = global1[_wgslsmith_index_u32(min(var_0.b.x, 0u), 5u)];
    let var_2 = ~var_0.b;
    let var_3 = global1[_wgslsmith_index_u32(var_0.b.x, 5u)];
    return select(false, !(_wgslsmith_f_op_f32(f32(-1f) * -424f) >= var_1) | !(!var_0.a), all(select(!vec4<bool>(var_0.a, false, var_0.a, true), vec4<bool>(all(vec3<bool>(var_3.a, false, var_3.a)), true, any(vec2<bool>(true, false)), !var_0.a), !(!vec4<bool>(false, var_3.a, false, true)))));
}

fn func_1(arg_0: Struct_3) -> vec2<bool> {
    let var_0 = arg_0.a;
    let var_1 = !select(vec3<bool>(func_2(), false, true), global0[_wgslsmith_index_u32(1u, 6u)], func_2());
    global1 = array<Struct_2, 5>();
    global0 = array<vec3<bool>, 6>();
    var var_2 = global1[_wgslsmith_index_u32(var_0.b.x, 5u)];
    return vec2<bool>(reverseBits(-(~(-39915i))) <= -_wgslsmith_clamp_i32(-1i, 10681i, 2147483647i >> (var_0.b.x % 32u)), arg_0.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.a.x;
    global1 = array<Struct_2, 5>();
    let var_1 = select(!(!func_1(Struct_3(Struct_2(false, u_input.a.wyw), Struct_1(true, 38987u)))), func_1(Struct_3(global1[_wgslsmith_index_u32(~13821u, 5u)], Struct_1(true, ~u_input.a.x))), vec2<bool>(false, true));
    global1 = array<Struct_2, 5>();
    global0 = array<vec3<bool>, 6>();
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2180f * 1816f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), 2095f));
    let var_3 = max(1u, ~_wgslsmith_mod_u32(~_wgslsmith_mod_u32(10736u, var_0), u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_2, ~4294967295u & u_input.a.x, var_3, max(_wgslsmith_mod_i32(select(-15145i, _wgslsmith_mod_i32(-1i, 2147483647i), var_1.x), select(_wgslsmith_div_i32(51961i, -1i), -7872i, var_1.x || false)), -reverseBits(_wgslsmith_mult_i32(27225i, 46839i))));
}

