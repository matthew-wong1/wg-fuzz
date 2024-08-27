struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 1>;

var<private> global1: array<f32, 31> = array<f32, 31>(562f, 672f, 2195f, -362f, 598f, 1062f, -131f, -2035f, 919f, 532f, 1140f, 164f, -1036f, 222f, -507f, 2259f, 480f, 1000f, -1000f, -461f, 252f, -1047f, 961f, 423f, 1318f, -3298f, -1000f, -446f, 598f, -1707f, -1587f);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    let var_0 = vec4<u32>(1u, arg_0.x, abs(0u), reverseBits(_wgslsmith_mod_u32(u_input.a.x, 8803u)));
    let var_1 = ~(~(~6501u));
    global0 = array<vec2<f32>, 1>();
    var var_2 = firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(1i, 1i), _wgslsmith_div_vec2_i32(countOneBits(abs(vec2<i32>(1i, 0i))), select(vec2<i32>(1i, 30323i), vec2<i32>(-35675i, 1i), vec2<bool>(false, true)) << (~arg_0 % vec2<u32>(32u)))));
    let var_3 = Struct_1(~abs(_wgslsmith_div_i32(var_2.x, var_2.x >> (var_0.x % 32u))));
    return var_1;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_1(arg_0.x >> ((~arg_1.x | 1u) % 32u));
    global0 = array<vec2<f32>, 1>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.a.x << ((u_input.a.x >> (56420u % 32u)) % 32u), 31u)], 1055f), 1112f)) + _wgslsmith_f_op_f32(step(1434f, _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(~func_3(vec2<u32>(u_input.a.x, u_input.a.x)), 31u)])))));
    var var_2 = arg_0;
    var var_3 = Struct_1(~firstLeadingBit(-firstTrailingBit(var_2.x)));
    return var_0;
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> u32 {
    var var_0 = arg_1;
    var_0 = Struct_1(select(var_0.a, arg_1.a, select(true, true, !(-33535i == arg_1.a))));
    var_0 = func_2(_wgslsmith_div_vec2_i32(vec2<i32>(arg_1.a >> (u_input.a.x % 32u), abs(0i ^ var_0.a)), ~abs(vec2<i32>(0i, 10435i)) << (u_input.a.xx % vec2<u32>(32u))), u_input.a);
    var_0 = func_2(vec2<i32>(_wgslsmith_dot_vec2_i32(firstTrailingBit(-vec2<i32>(var_0.a, var_0.a)), firstTrailingBit(vec2<i32>(19714i, arg_1.a) | vec2<i32>(var_0.a, 1i))), arg_1.a), vec4<u32>(u_input.a.x, _wgslsmith_sub_u32(max(4294967295u, _wgslsmith_clamp_u32(16200u, u_input.a.x, 25265u)), abs(4294967295u)), ~u_input.a.x, u_input.a.x));
    global0 = array<vec2<f32>, 1>();
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-1i);
    var var_1 = _wgslsmith_mult_vec3_u32(u_input.a.zwy, min(u_input.a.yyx, firstTrailingBit(firstTrailingBit(vec3<u32>(u_input.a.x, 1u, 976u)))));
    var_1 = u_input.a.yzy;
    let var_2 = ~u_input.a.yx;
    var_1 = ~u_input.a.xzw;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(abs(~var_1.yz), u_input.a.xy & vec2<u32>(u_input.a.x, ~10216u)), _wgslsmith_add_u32(~func_1(true, var_0), min(min(u_input.a.x, ~34307u), 35633u)));
}

