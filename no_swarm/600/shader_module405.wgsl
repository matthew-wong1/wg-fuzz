struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 24>;

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec3<u32>(0u, 0u, 45549u), vec4<u32>(30568u, 40556u, 1u, 0u), -1i, vec4<f32>(-805f, 836f, -873f, 513f), 491f), Struct_1(vec3<u32>(12758u, 4294967295u, 74160u), vec4<u32>(1u, 37062u, 1u, 1u), 1i, vec4<f32>(327f, -1156f, 1043f, 584f), 804f), Struct_1(vec3<u32>(4294967295u, 0u, 4294967295u), vec4<u32>(0u, 4294967295u, 25927u, 13734u), 2334i, vec4<f32>(1000f, -1000f, -340f, -1168f), 1857f), Struct_1(vec3<u32>(0u, 98870u, 4294967295u), vec4<u32>(0u, 6854u, 1u, 45426u), -26853i, vec4<f32>(870f, -1005f, 944f, -221f), 789f), Struct_1(vec3<u32>(29782u, 4294967295u, 28233u), vec4<u32>(1413u, 27811u, 1u, 0u), 14440i, vec4<f32>(433f, -604f, -1000f, 1000f), 1226f), Struct_1(vec3<u32>(94469u, 4544u, 0u), vec4<u32>(106112u, 70319u, 4294967295u, 4294967295u), -40819i, vec4<f32>(-1983f, -1282f, 1985f, -311f), 521f), Struct_1(vec3<u32>(1437u, 85457u, 94257u), vec4<u32>(41412u, 1u, 4294967295u, 4294967295u), i32(-2147483648), vec4<f32>(-1000f, 2137f, -316f, 1276f), -172f), Struct_1(vec3<u32>(4294967295u, 0u, 100965u), vec4<u32>(58377u, 1u, 4294967295u, 1u), 10664i, vec4<f32>(364f, -225f, -598f, 498f), 839f), Struct_1(vec3<u32>(1u, 40840u, 4294967295u), vec4<u32>(16881u, 1u, 4294967295u, 0u), 40455i, vec4<f32>(-720f, -2062f, 1000f, -1799f), 748f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(~1u, 9u)];
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.d.zzw * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.d.yxw, var_0.d.zyx)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(var_0.d.wyx - vec3<f32>(-893f, 1363f, -985f)))))));
    global0 = array<vec3<i32>, 24>();
    var var_2 = all(select(select(vec2<bool>(-8353i == u_input.b.x, any(vec2<bool>(false, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, 246f >= var_1.x)), select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(true, true)), true), -33017i == var_0.c), vec2<bool>(true, !(var_0.b.x != 0u))));
    var var_3 = ~(vec4<u32>(~(~41533u), 42341u, ~var_0.b.x, min(var_0.a.x, 6825u) ^ (0u << (1u % 32u))) ^ var_0.b);
    let var_4 = ~vec4<i32>(var_0.c, _wgslsmith_dot_vec3_i32(abs(~global0[_wgslsmith_index_u32(1u, 24u)]), firstLeadingBit(global0[_wgslsmith_index_u32(var_3.x, 24u)] | vec3<i32>(var_0.c, u_input.a.x, var_0.c))), _wgslsmith_add_i32(~var_0.c, (var_0.c >> (88887u % 32u)) << (~var_0.b.x % 32u)), 27924i | abs(max(u_input.b.x, u_input.a.x)));
    var var_5 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_0.d.zz))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.d.x, -1214f), var_0.d.yw, vec2<bool>(true, true)))), reverseBits(u_input.b.x ^ _wgslsmith_mod_i32(-54568i, u_input.a.x)) >= -1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, -213f)))), -1013f, _wgslsmith_f_op_f32(-var_1.x), var_0.b);
}

