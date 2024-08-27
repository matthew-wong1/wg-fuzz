struct Struct_1 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 16> = array<vec2<i32>, 16>(vec2<i32>(-14146i, -1i), vec2<i32>(-66924i, i32(-2147483648)), vec2<i32>(0i, -16788i), vec2<i32>(1i, 2147483647i), vec2<i32>(1i, 1i), vec2<i32>(0i, 0i), vec2<i32>(-30885i, 0i), vec2<i32>(9234i, 1i), vec2<i32>(0i, -4103i), vec2<i32>(54568i, 1i), vec2<i32>(1i, 14514i), vec2<i32>(-1i, -42780i), vec2<i32>(28543i, i32(-2147483648)), vec2<i32>(18440i, -39784i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(2147483647i, i32(-2147483648)));

var<private> global1: array<f32, 29> = array<f32, 29>(915f, 1400f, 171f, 445f, 732f, -627f, -362f, 511f, -746f, 2073f, -160f, 1423f, -106f, -1000f, 1000f, 1000f, 319f, -273f, -772f, -332f, -128f, 589f, 2176f, 176f, 1000f, 740f, -195f, -995f, 1000f);

var<private> global2: vec3<f32> = vec3<f32>(713f, -630f, -1361f);

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> u32 {
    let var_0 = true;
    var var_1 = _wgslsmith_dot_vec2_i32(~(~(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, -2147483647i), global0[_wgslsmith_index_u32(26503u, 16u)], global0[_wgslsmith_index_u32(0u, 16u)]) | vec2<i32>(u_input.a, u_input.a))), global0[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(~10977u, _wgslsmith_dot_vec3_u32(vec3<u32>(5703u, 48102u, 42307u), ~vec3<u32>(65143u, 13163u, 16639u)))), 16u)]);
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), countOneBits(vec4<u32>(1u, 24544u, 44537u, 4294967295u))), 29u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-431f * _wgslsmith_f_op_f32(abs(-360f)))))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(41909u, 29u)] + var_2.x)))))), global2.x);
    let var_4 = false;
    return ~abs(_wgslsmith_sub_u32(~abs(77062u), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(68877u, 1u, 20248u)))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<u32>) -> f32 {
    var var_0 = -1887f;
    var var_1 = !(global1[_wgslsmith_index_u32(func_3(), 29u)] == global1[_wgslsmith_index_u32(firstTrailingBit(~arg_1.x), 29u)]) | (4294967295u == (22354u >> (_wgslsmith_sub_u32(reverseBits(arg_1.x), arg_0.x) % 32u)));
    var var_2 = Struct_1(703f, _wgslsmith_f_op_f32(1533f - -1213f));
    global1 = array<f32, 29>();
    global2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1545f, global1[_wgslsmith_index_u32(20673u, 29u)], -229f)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2.x, -625f, -779f), vec3<f32>(484f, global2.x, var_2.b))))) + vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-global2.x), 591f, _wgslsmith_div_f32(-440f, 2114f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2.x, global2.x, global1[_wgslsmith_index_u32(1u, 29u)]), vec3<f32>(-1073f, var_2.a, -641f)))))))));
    return global1[_wgslsmith_index_u32(arg_1.x, 29u)];
}

fn func_1(arg_0: Struct_1) -> f32 {
    global2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(0u, 29u)], 647f, -528f) * vec3<f32>(global2.x, arg_0.a, global2.x)), vec3<f32>(529f, -1289f, global1[_wgslsmith_index_u32(72277u, 29u)])))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -288f) - _wgslsmith_div_f32(global1[_wgslsmith_index_u32(32219u, 29u)], 266f)), _wgslsmith_f_op_f32(trunc(-229f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(floor(2340f)), true))))));
    let var_0 = 4294967295u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(154611u, 29u)] - arg_0.b)) * 773f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(func_2(vec4<u32>(var_0, 4294967295u, var_0, var_0), vec2<u32>(var_0, 0u)))) - _wgslsmith_f_op_f32(-arg_0.b)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, abs(4294967295u)), select(~vec2<u32>(50154u, 469u), firstLeadingBit(vec2<u32>(80851u, 1u)), true))) << (vec2<u32>(0u, ~(~1u)) % vec2<u32>(32u));
    global0 = array<vec2<i32>, 16>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1196f, _wgslsmith_f_op_f32(func_1(Struct_1(global1[_wgslsmith_index_u32(46660u, 29u)], global1[_wgslsmith_index_u32(0u, 29u)]))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.x, 29u)]), _wgslsmith_f_op_f32(ceil(global2.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -421f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_0.x, 29u)] - 192f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(var_0.x, 29u)], global1[_wgslsmith_index_u32(4558u, 29u)], global1[_wgslsmith_index_u32(104046u, 29u)], -2250f)))))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1202f), -1519f);
    global2 = var_1.zzx;
    var var_3 = ((func_3() >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.x, 0u), var_0) % 32u)) >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 6975u), var_0) % 32u)) != 15522u;
    var var_4 = Struct_1(1f, global2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(~(4294967295u | _wgslsmith_mod_u32(4294967295u, var_0.x)), func_3()), vec3<u32>(_wgslsmith_dot_vec2_u32(select(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, 102324u), var_0), var_0, vec2<bool>(true, true)), ~vec2<u32>(39574u, var_0.x) | vec2<u32>(var_0.x, var_0.x)), 124529u, firstTrailingBit(4294967295u) | (18776u & ~var_0.x)), u_input.a, _wgslsmith_f_op_f32(-var_4.b), -7833i);
}

