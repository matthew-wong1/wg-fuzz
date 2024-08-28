struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4>;

var<private> global1: array<f32, 9> = array<f32, 9>(-636f, 1561f, -522f, -1000f, -188f, -2154f, -219f, 1000f, -467f);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: f32, arg_3: bool) -> u32 {
    return ~(~(~(1u & _wgslsmith_div_u32(1u, arg_1.a.a.x))));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_3) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 9u)]), _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(u_input.a.x, 9u)], 908f, arg_0.x))))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1[_wgslsmith_index_u32(86404u, 9u)], global1[_wgslsmith_index_u32(arg_1.b.x, 9u)]), vec2<f32>(-772f, global1[_wgslsmith_index_u32(0u, 9u)]))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1379f, -2408f) + vec2<f32>(659f, 116f))), vec2<f32>(1805f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 9u)]))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 9u)], -511f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(698u, 9u)], global1[_wgslsmith_index_u32(u_input.a.x, 9u)])))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(905f, global1[_wgslsmith_index_u32(arg_1.a.a.x, 9u)]))))), select(vec2<bool>(all(select(vec4<bool>(true, arg_0.x, false, global0[_wgslsmith_index_u32(u_input.a.x, 4u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], true, global0[_wgslsmith_index_u32(25614u, 4u)], false), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 4u)], false, arg_0.x))), global1[_wgslsmith_index_u32(u_input.a.x, 9u)] >= _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(2489u, 9u)]))), !arg_0, all(select(!vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 4u)], global0[_wgslsmith_index_u32(u_input.a.x, 4u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(25498u, 4u)], false, true), vec3<bool>(global0[_wgslsmith_index_u32(16445u, 4u)], arg_0.x, true), vec3<bool>(global0[_wgslsmith_index_u32(arg_1.b.x, 4u)], false, false)), all(vec3<bool>(global0[_wgslsmith_index_u32(40962u, 4u)], false, true)))))));
    var var_1 = Struct_2(false, ~arg_1.c, var_0.x, Struct_1(reverseBits(abs(u_input.a))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-565f + _wgslsmith_f_op_f32(select(var_0.x, 1000f, false))), _wgslsmith_f_op_f32(var_0.x + var_0.x)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1143f, var_0.x))))));
    var var_2 = var_1.d;
    var var_3 = firstTrailingBit(~var_1.d.a.x) | 0u;
    return 14609u;
}

fn func_1() -> f32 {
    var var_0 = 2147483647i;
    var var_1 = vec3<u32>(u_input.a.x, 19012u, 0u);
    let var_2 = vec3<u32>(~max(func_2(false, Struct_3(Struct_1(vec2<u32>(var_1.x, u_input.a.x)), var_1.yz, -50413i), -338f, true) & (u_input.a.x & 54343u), 0u | var_1.x), func_3(select(select(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 4u)], false), !vec2<bool>(global0[_wgslsmith_index_u32(5129u, 4u)], global0[_wgslsmith_index_u32(7027u, 4u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], global0[_wgslsmith_index_u32(0u, 4u)]), vec2<bool>(global0[_wgslsmith_index_u32(85889u, 4u)], global0[_wgslsmith_index_u32(u_input.a.x, 4u)]), global0[_wgslsmith_index_u32(1u, 4u)])), vec2<bool>(true, true), !select(vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 4u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], true), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 4u)], global0[_wgslsmith_index_u32(var_1.x, 4u)]))), Struct_3(Struct_1(abs(var_1.xy)), _wgslsmith_clamp_vec2_u32(var_1.zx, vec2<u32>(20294u, 29892u), u_input.a) << (_wgslsmith_add_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(u_input.a.x, 82189u)) % vec2<u32>(32u)), _wgslsmith_mult_i32(1i, -43008i << (u_input.a.x % 32u)))), 56034u);
    global0 = array<bool, 4>();
    var_0 = -333i;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(1u, 9u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_1.x, 9u)]))), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-301f)) + -1326f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-623f)), 597f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 9u)], 825f, global1[_wgslsmith_index_u32(u_input.a.x, 9u)]))))) * vec3<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(~64074u, 9u)])))), _wgslsmith_div_f32(1132f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 9u)] * global1[_wgslsmith_index_u32(25670u, 9u)]), -140f)))));
    var var_1 = Struct_2(!global0[_wgslsmith_index_u32(u_input.a.x, 4u)], 10801i, global1[_wgslsmith_index_u32(1u, 9u)], Struct_1(~u_input.a));
    global1 = array<f32, 9>();
    let var_2 = reverseBits(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.b, var_1.b, 1i, 2147483647i) << (abs(vec4<u32>(21185u, 24986u, 16817u, 1u)) % vec4<u32>(32u)), abs(vec4<i32>(var_1.b, 2147483647i, 2147483647i, 2147483647i) | vec4<i32>(39178i, var_1.b, -2147483647i, var_1.b))), _wgslsmith_div_vec4_i32(-abs(vec4<i32>(-13444i, -2147483647i, var_1.b, var_1.b)), vec4<i32>(_wgslsmith_sub_i32(-1i, var_1.b), var_1.b, var_1.b << (16440u % 32u), ~var_1.b))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2, var_1.c);
}

