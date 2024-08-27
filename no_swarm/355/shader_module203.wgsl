struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: array<vec2<f32>, 4>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    global0 = array<Struct_1, 30>();
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(countOneBits(abs(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, 60642u), u_input.a.xx))), ~(~(~u_input.b.yx))), 1u), 30u)];
    global0 = array<Struct_1, 30>();
    return true;
}

fn func_2() -> u32 {
    var var_0 = select(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), vec2<bool>(true, true), func_3(Struct_1(firstTrailingBit(vec2<i32>(0i, 38528i))), Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(26890i, -11253i), vec2<i32>(28321i, 4711i))), Struct_1(vec2<i32>(35331i, -1i)), Struct_1(~vec2<i32>(-41139i, -1i))) && any(!select(vec2<bool>(false, false), vec2<bool>(true, true), false)));
    var var_1 = Struct_1(~vec2<i32>(countOneBits(2147483647i), 2147483647i));
    var var_2 = !vec4<bool>(false, true, any(vec3<bool>(true, var_0.x, true)), var_0.x);
    var var_3 = global0[_wgslsmith_index_u32(u_input.a.x, 30u)];
    var var_4 = ~var_1.a.x;
    return _wgslsmith_dot_vec4_u32(u_input.a, u_input.a);
}

fn func_1() -> u32 {
    var var_0 = vec2<i32>(~(~(~2708i)), firstLeadingBit(5280i));
    let var_1 = _wgslsmith_f_op_f32(-461f - 245f);
    global1 = array<vec2<f32>, 4>();
    global0 = array<Struct_1, 30>();
    let var_2 = Struct_1(~vec2<i32>(2147483647i, -15420i));
    return 4294967295u & func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 30>();
    global1 = array<vec2<f32>, 4>();
    var var_0 = func_1();
    global1 = array<vec2<f32>, 4>();
    global0 = array<Struct_1, 30>();
    var var_1 = true;
    global1 = array<vec2<f32>, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1f)))), abs(vec3<u32>(~u_input.b.x, ~u_input.b.x, 1u)), ~_wgslsmith_mult_i32(~0i >> (~u_input.b.x % 32u), 2147483647i), vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(11156i, 2190i), vec2<i32>(-28906i, 26168i)), countOneBits(vec2<i32>(-2147483647i, -1i))) | -9443i, -11406i, -3089i, ~(max(24362i, -2140i) | _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(0i, 0i)))));
}

