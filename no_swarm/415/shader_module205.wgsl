struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<f32, 9> = array<f32, 9>(687f, -629f, -442f, 915f, -1763f, -146f, -1010f, 545f, -1000f);

var<private> global2: bool = false;

var<private> global3: f32 = -2740f;

var<private> global4: vec3<i32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = select(countOneBits(~vec4<u32>(u_input.d, _wgslsmith_div_u32(61273u, 25179u), arg_0.a, ~u_input.d)), ~(~(~firstLeadingBit(vec4<u32>(37786u, u_input.a.x, arg_1.a, arg_0.a)))), !vec4<bool>(true, !all(vec4<bool>(true, true, false, false)), true, !any(vec3<bool>(true, false, false))));
    var var_1 = arg_0;
    let var_2 = Struct_1(max(arg_1.a, 65910u), arg_0.b, global1[_wgslsmith_index_u32(min(~(~1u), ~_wgslsmith_clamp_u32(34261u, 1u, reverseBits(var_1.a))), 9u)]);
    let var_3 = var_2;
    global2 = true;
    return ~var_2.a;
}

fn func_1() -> StorageBuffer {
    let var_0 = _wgslsmith_mult_vec3_u32(countOneBits(~vec3<u32>(_wgslsmith_div_u32(0u, u_input.a.x), 4294967295u, ~u_input.a.x)), vec3<u32>(u_input.a.x, 18983u, ~func_2(Struct_1(u_input.a.x, vec2<f32>(-461f, global1[_wgslsmith_index_u32(u_input.a.x, 9u)]), global1[_wgslsmith_index_u32(11769u, 9u)]), Struct_1(u_input.a.x, vec2<f32>(global1[_wgslsmith_index_u32(1u, 9u)], global1[_wgslsmith_index_u32(45413u, 9u)]), global1[_wgslsmith_index_u32(u_input.a.x, 9u)])) | 3951u));
    let var_1 = Struct_1(u_input.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(var_0.x, 9u)])), 826f)), global1[_wgslsmith_index_u32(u_input.a.x, 9u)]);
    let var_2 = var_0.x;
    let var_3 = vec2<i32>(_wgslsmith_div_i32(u_input.c.x, global4.x), -_wgslsmith_mod_i32(u_input.c.x, _wgslsmith_dot_vec3_i32(u_input.c, firstLeadingBit(u_input.c))));
    var var_4 = var_1;
    return StorageBuffer((vec2<u32>(reverseBits(var_0.x), ~var_4.a) & vec2<u32>(abs(20149u), var_1.a)) << (~u_input.a.yx % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

