struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 17>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: f32) -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1410f, 553f))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1.a.x, arg_1.a.x)))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(arg_1.a - vec2<f32>(-614f, 573f)), vec2<f32>(arg_1.a.x, 510f)))))));
    var var_1 = arg_1;
    let var_2 = ~(~(u_input.c ^ u_input.c));
    let var_3 = all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, 1i > u_input.a.x, arg_1.a.x >= var_0.a.x, select(true, true, false)), all(vec3<bool>(false, false, false))), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), all(vec4<bool>(false, true, false, false)))));
    global0 = array<vec3<u32>, 17>();
    return ~_wgslsmith_div_u32(0u, select(~_wgslsmith_mult_u32(var_2.x, 1u), 4294967295u, all(!vec4<bool>(var_3, true, false, false))));
}

fn func_2() -> f32 {
    let var_0 = u_input.c.zw;
    global0 = array<vec3<u32>, 17>();
    let var_1 = Struct_1(1u);
    let var_2 = 185f;
    var var_3 = _wgslsmith_add_u32(var_0.x | (_wgslsmith_div_u32(func_3(global0[_wgslsmith_index_u32(var_0.x, 17u)], Struct_2(vec2<f32>(-698f, -2348f)), 1070f), var_0.x | var_0.x) << (max(1u, 113819u) % 32u)), 1u);
    return _wgslsmith_f_op_f32(abs(var_2));
}

fn func_1() -> i32 {
    global0 = array<vec3<u32>, 17>();
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -638f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(253f))), -385f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())))));
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.x;
    let var_1 = _wgslsmith_div_i32(func_1(), _wgslsmith_mult_i32(u_input.b.x, _wgslsmith_sub_i32(u_input.b.x, ~1i)));
    let var_2 = vec3<bool>(true | (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(419f - -416f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(592f)))), true, !any(vec3<bool>(true, true, all(vec2<bool>(true, true)))));
    global0 = array<vec3<u32>, 17>();
    let var_3 = ~0u;
    let x = u_input.a;
    s_output = StorageBuffer(abs(-(_wgslsmith_add_vec2_i32(u_input.a.zx, u_input.a.yz) >> (_wgslsmith_sub_vec2_u32(u_input.c.zz, vec2<u32>(37486u, 0u)) % vec2<u32>(32u)))), vec4<u32>(firstLeadingBit(firstTrailingBit(30913u)), 51998u, ~1u, firstLeadingBit(u_input.c.x)), u_input.d, 35003u);
}

