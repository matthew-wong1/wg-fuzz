struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2() -> u32 {
    global0 = array<bool, 5>();
    global0 = array<bool, 5>();
    global0 = array<bool, 5>();
    let var_0 = u_input.b;
    let var_1 = 0u;
    return ~reverseBits(u_input.a.x | (_wgslsmith_add_u32(u_input.a.x, 15735u) ^ (u_input.a.x ^ u_input.a.x)));
}

fn func_1() -> f32 {
    global0 = array<bool, 5>();
    var var_0 = max(4889u, _wgslsmith_mult_u32(func_2(), ~50996u));
    var_0 = firstLeadingBit(u_input.a.x);
    var var_1 = 0u;
    let var_2 = 37077u;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1360f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-574f, _wgslsmith_f_op_f32(357f - -1000f))))))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = vec3<bool>(global0[_wgslsmith_index_u32(min(~reverseBits(arg_1.a.x << (0u % 32u)), arg_0.a.x), 5u)], false, true);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(arg_0.c.x, arg_1.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, true);
    global0 = array<bool, 5>();
    var var_1 = vec4<bool>(881f != _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -877f), _wgslsmith_f_op_f32(-1830f * _wgslsmith_f_op_f32(func_1()))), !global0[_wgslsmith_index_u32(4294967295u, 5u)], -1000f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_1(vec2<u32>(u_input.a.x, 21204u), 1i, vec3<f32>(459f, -1000f, 965f)), Struct_1(u_input.a.xz, u_input.b, vec3<f32>(1822f, -1209f, 1798f)))), _wgslsmith_f_op_f32(-594f - -763f))), global0[_wgslsmith_index_u32((func_2() ^ min(~u_input.a.x, u_input.a.x)) >> (~((1u ^ u_input.a.x) << ((4294967295u << (u_input.a.x % 32u)) % 32u)) % 32u), 5u)]);
    var_0 = var_1.yz;
    var var_2 = countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(-u_input.b, _wgslsmith_sub_i32(u_input.b, 1i), _wgslsmith_add_i32(1i, 0i)), max(vec3<i32>(i32(-1i) * -2247i, u_input.b, -36391i), ~(~vec3<i32>(10571i, 2147483647i, 0i)))));
    let var_3 = vec2<bool>(true, true);
    let var_4 = vec3<f32>(415f, -998f, _wgslsmith_f_op_f32(func_3(Struct_1(firstTrailingBit(vec2<u32>(u_input.a.x, u_input.a.x)) | firstTrailingBit(u_input.a.yy), var_2.x, vec3<f32>(_wgslsmith_f_op_f32(140f - 1605f), -1000f, -1613f)), Struct_1(countOneBits(vec2<u32>(u_input.a.x, 4294967295u)), -5447i, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-396f, -2405f, 1000f), vec3<f32>(-459f, -511f, -351f)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-109f, 688f, 484f))))))));
    let var_5 = ~abs(~(~(~vec4<u32>(0u, 0u, u_input.a.x, u_input.a.x))));
    var_1 = vec4<bool>(all(select(select(select(vec4<bool>(false, var_1.x, false, true), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], var_0.x, false), vec4<bool>(false, var_3.x, global0[_wgslsmith_index_u32(var_5.x, 5u)], true)), vec4<bool>(true, true, var_0.x, var_3.x), vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(var_5.x, 5u)], var_3.x)), vec4<bool>(true, true, true, true), (var_0.x & var_0.x) && global0[_wgslsmith_index_u32(u_input.a.x, 5u)])), true, true, var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(~var_5.x & 1u, _wgslsmith_mult_u32(0u, var_5.x), 4294967295u), 6400u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2529f, var_4.x, -1492f, 877f))))));
}

