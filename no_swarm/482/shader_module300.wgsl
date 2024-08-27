struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30> = array<f32, 30>(-1293f, 533f, -1000f, -463f, 1000f, -375f, -640f, 127f, -1157f, 1372f, 296f, -634f, -1238f, -1311f, -639f, -1296f, -1000f, 157f, -1000f, 1000f, 362f, -436f, 455f, -219f, -1263f, -996f, 216f, 294f, 2113f, -2187f);

var<private> global1: array<i32, 24> = array<i32, 24>(20567i, -8899i, i32(-2147483648), 10921i, -20582i, -42508i, 19961i, 2147483647i, 1i, 6104i, i32(-2147483648), 2147483647i, i32(-2147483648), -2227i, 17610i, -1i, -18532i, -34004i, -41101i, 22121i, i32(-2147483648), -10109i, -1i, -1i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_1) -> bool {
    return true;
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: i32) -> u32 {
    let var_0 = -vec3<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.b.x, arg_1.x, 0i), vec3<i32>(arg_2, global1[_wgslsmith_index_u32(10929u, 24u)], arg_1.x)), vec3<i32>(~(-2147483647i), 22226i, 2147483647i)), select(_wgslsmith_mod_i32(_wgslsmith_div_i32(global1[_wgslsmith_index_u32(u_input.a, 24u)], u_input.b.x), -arg_1.x), countOneBits(arg_2 & 9695i), true));
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_clamp_u32(reverseBits(~4294967295u), 35663u, _wgslsmith_mult_u32(u_input.a, 3815u)) << (_wgslsmith_mult_u32(31539u, _wgslsmith_mod_u32(u_input.a << (4294967295u % 32u), 1u)) % 32u), _wgslsmith_sub_u32(~u_input.a, countOneBits(_wgslsmith_add_u32(u_input.a, 64544u)) ^ ~1u));
    let var_2 = vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 24u)], -18105i);
    var var_3 = ~_wgslsmith_clamp_u32(1u, 1u, 24467u) >> (firstLeadingBit(countOneBits(u_input.a)) % 32u);
    var_1 = 0u;
    return _wgslsmith_mod_u32(reverseBits(~(~u_input.a) & u_input.a), 10410u);
}

fn func_2() -> bool {
    global1 = array<i32, 24>();
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 30u)]) * global0[_wgslsmith_index_u32(func_3(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(u_input.b.x, u_input.b.x), global1[_wgslsmith_index_u32(u_input.a, 24u)]), 30u)]), -1205f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(824f)))), _wgslsmith_f_op_f32(f32(-1f) * -681f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(u_input.a, 30u)], global0[_wgslsmith_index_u32(u_input.a, 30u)]))) * vec4<f32>(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(u_input.a, 30u)])), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 30u)] * global0[_wgslsmith_index_u32(0u, 30u)]), global0[_wgslsmith_index_u32(~u_input.a, 30u)], -314f)), reverseBits(~13767i) >= -(~u_input.b.x))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(497f, global0[_wgslsmith_index_u32(1u, 30u)], -487f, 753f))))))));
    var var_1 = vec4<bool>(_wgslsmith_f_op_f32(-784f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(899f)) - global0[_wgslsmith_index_u32(~30560u, 30u)])) >= _wgslsmith_f_op_f32(-670f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 30u)] * global0[_wgslsmith_index_u32(21645u, 30u)])))), !(all(vec2<bool>(true, true)) | false), 1u < reverseBits(4163u ^ func_3(u_input.b, vec2<i32>(2147483647i, 0i), 37067i)), any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), all(vec3<bool>(false, true, false))), vec4<bool>(89900u >= u_input.a, any(vec4<bool>(false, false, false, false)), true, false))));
    let var_2 = u_input.b;
    global1 = array<i32, 24>();
    return countOneBits(~_wgslsmith_mult_i32(1i, 0i)) <= u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(func_1(Struct_1(!all(vec2<bool>(true, false)), ~1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(81888u, 30u)])) - 219f), vec2<u32>(u_input.a, 56827u) | vec2<u32>(u_input.a, u_input.a))), func_2());
    global0 = array<f32, 30>();
    let var_1 = Struct_3(var_0, abs(~global1[_wgslsmith_index_u32(~u_input.a, 24u)] & min(u_input.b.x, -17075i >> (1u % 32u))));
    var var_2 = firstTrailingBit(u_input.a);
    var_2 = min(~(~(~(~u_input.a))), ~u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a & u_input.a, _wgslsmith_f_op_f32(-975f - global0[_wgslsmith_index_u32(u_input.a, 30u)]), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 30u)] + -892f), -1009f)), _wgslsmith_f_op_f32(-844f - _wgslsmith_f_op_f32(680f + global0[_wgslsmith_index_u32(u_input.a, 30u)]))) * global0[_wgslsmith_index_u32(u_input.a ^ _wgslsmith_add_u32(4606u, 0u), 30u)]));
}

