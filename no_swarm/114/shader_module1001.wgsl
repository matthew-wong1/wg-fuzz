struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec4<f32> = vec4<f32>(777f, 1110f, -1000f, 430f);

var<private> global2: array<bool, 1>;

var<private> global3: array<u32, 12> = array<u32, 12>(0u, 1u, 33104u, 1u, 53980u, 38406u, 1u, 1u, 32075u, 0u, 0u, 0u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>) -> u32 {
    return ~1u;
}

fn func_1() -> vec4<f32> {
    let var_0 = _wgslsmith_div_u32(global0.x, global3[_wgslsmith_index_u32(min(8497u, 1u) >> (~func_2(Struct_1(-13876i, false, u_input.a, global1.x, -20825i), vec3<u32>(global3[_wgslsmith_index_u32(88494u, 12u)], 21932u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 12u)], 12u)])) % 32u), 12u)] | 49321u);
    let var_1 = _wgslsmith_f_op_f32(global1.x * -656f);
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - 569f) * _wgslsmith_f_op_f32(sign(782f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(-291f - var_1)))), -541f)), var_1, -682f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1640f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.x, global1.x, global2[_wgslsmith_index_u32(global0.x, 1u)])))), -2625f, _wgslsmith_f_op_f32(794f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-302f - -1935f) - 175f)), -685f));
    let var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-587f, -557f, -1040f, 1018f) * vec4<f32>(global1.x, global1.x, 702f, global1.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-259f, -470f, global1.x, 1000f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, global1.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -1000f, -1297f, -1675f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, global1.x) + vec4<f32>(-172f, global1.x, global1.x, global1.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, -850f) * vec4<f32>(global1.x, global1.x, global1.x, 672f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -1069f, global1.x, global1.x))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.x, 1000f, -428f, -694f)))))));
    var var_1 = Struct_2(_wgslsmith_mult_vec3_i32(firstTrailingBit(~reverseBits(vec3<i32>(106530i, u_input.a, -30164i))), vec3<i32>(-15224i, u_input.a, _wgslsmith_add_i32(-2147483647i >> (global3[_wgslsmith_index_u32(0u, 12u)] % 32u), max(u_input.a, 1i)))));
    global2 = array<bool, 1>();
    var var_2 = u_input.a;
    var var_3 = vec4<u32>(~_wgslsmith_clamp_u32(global0.x, 0u, _wgslsmith_sub_u32(13528u, 588u)) << (global0.x % 32u), ~1u, ~func_2(Struct_1(i32(-1i) * -28666i, all(vec3<bool>(false, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 12u)], 1u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(51812u, 12u)], 1u)])), 13930i, -1063f, -1i), reverseBits(~vec3<u32>(45220u, 27497u, 70871u))), abs(35733u));
    let var_4 = vec4<bool>(global2[_wgslsmith_index_u32(2250u, 1u)], global3[_wgslsmith_index_u32(~var_3.x, 12u)] > global0.x, true, global2[_wgslsmith_index_u32(0u, 1u)]);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec4_u32(min(~vec4<u32>(4294967295u, 1u, 2945u, global3[_wgslsmith_index_u32(var_3.x, 12u)]), vec4<u32>(4294967295u, 4294967295u, global3[_wgslsmith_index_u32(0u, 12u)], var_3.x)), vec4<u32>(~global0.x, global3[_wgslsmith_index_u32(~1u, 12u)], ~37028u, var_3.x)));
}

