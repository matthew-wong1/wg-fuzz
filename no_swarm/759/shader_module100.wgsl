struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: bool,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7> = array<f32, 7>(-125f, -666f, 868f, 1000f, -1371f, -458f, 924f);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_1(arg_0: Struct_1) -> u32 {
    global0 = array<f32, 7>();
    return 62519u << (1u % 32u);
}

fn func_3() -> u32 {
    var var_0 = Struct_2(33523u >> (countOneBits(min(36536u, firstTrailingBit(81739u))) % 32u), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d.x, 7u)]))), false, select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false))), vec3<bool>(any(vec3<bool>(false, true, true)), true, any(vec3<bool>(true, false, false))), vec3<bool>(true, true, true)), !vec3<bool>(u_input.c.x >= u_input.c.x, all(vec4<bool>(true, true, true, true)), 1u != u_input.a), !select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), global0[_wgslsmith_index_u32(u_input.d.x, 7u)] >= global0[_wgslsmith_index_u32(1u, 7u)])));
    var var_1 = Struct_2(firstLeadingBit(~(~(var_0.a ^ 0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(79386u, 7u)])) - global0[_wgslsmith_index_u32(13168u, 7u)])), var_0.d.x, var_0.d);
    let var_2 = Struct_2(~var_1.a, var_0.b, true, vec3<bool>(!select(false, true, any(vec2<bool>(false, var_1.c))), any(vec4<bool>(select(var_1.d.x, var_1.d.x, true), !var_1.c, u_input.d.x == u_input.a, all(vec3<bool>(true, false, false)))), _wgslsmith_clamp_u32(var_0.a ^ 13907u, 4294967295u << (var_1.a % 32u), _wgslsmith_dot_vec2_u32(u_input.d.wz, vec2<u32>(var_0.a, u_input.d.x))) < _wgslsmith_mod_u32(11711u, ~var_0.a)));
    var var_3 = Struct_2(var_1.a, 425f, var_1.c || true, select(select(select(var_2.d, var_2.d, false), vec3<bool>(false | var_1.c, true, any(var_2.d)), vec3<bool>(true, true, !var_1.d.x)), vec3<bool>(false, select(all(var_1.d.zz), true, false), false), vec3<bool>(!var_0.c, !var_0.d.x, any(vec2<bool>(true, true)))));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, var_3.b, var_1.b, global0[_wgslsmith_index_u32(44007u, 7u)])))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.b, 877f, var_2.b, -1089f), vec4<f32>(1879f, 1322f, 916f, 718f)))))));
    return _wgslsmith_div_u32(~var_2.a, ~(~_wgslsmith_add_u32(~1u, 1u)));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<bool>) -> bool {
    var var_0 = _wgslsmith_mult_vec4_u32(u_input.d, firstTrailingBit(vec4<u32>(~1u, u_input.a, u_input.a, abs(u_input.a))));
    let var_1 = Struct_1(u_input.c.x >> ((_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0.x, 1u) | var_0.xzz, reverseBits(u_input.d.wzy)) | u_input.d.x) % 32u), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -556f))), vec2<u32>(~var_0.x, ~(~_wgslsmith_div_u32(var_0.x, var_0.x))));
    let var_2 = vec2<u32>(func_3(), firstTrailingBit(_wgslsmith_mod_u32(1u, 1u)));
    var var_3 = var_1;
    var var_4 = var_0.zzw;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-353f * global0[_wgslsmith_index_u32(1u, 7u)]) + global0[_wgslsmith_index_u32(99214u, 7u)]), global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(max(u_input.d.x, 4294967295u), func_1(Struct_1(1i, -1488f, u_input.d.zx))), 7u)]), _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), u_input.d.yz ^ vec2<u32>(u_input.d.x, 34162u)), u_input.d.zz, vec2<u32>(~74308u, ~u_input.a)), u_input.d.ww));
    global0 = array<f32, 7>();
    var var_1 = !any(select(vec3<bool>(func_2(vec3<f32>(-858f, -1220f, 1203f), vec3<bool>(true, false, false)), all(vec2<bool>(false, true)), true), vec3<bool>(u_input.d.x != 4294967295u, false, var_0.c.x > 22391u), true));
    var var_2 = Struct_2(~u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)))), !all(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true), true)), !select(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), var_0.b == var_0.b), false));
    var_2 = Struct_2(1u, global0[_wgslsmith_index_u32(abs(func_1(var_0)), 7u)], true, select(!select(!var_2.d, vec3<bool>(true, true, var_2.d.x), vec3<bool>(false, var_2.c, var_2.d.x)), !select(var_2.d, select(vec3<bool>(false, false, var_2.c), vec3<bool>(var_2.d.x, var_2.d.x, var_2.c), false), false), var_2.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, var_0.b)))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1065f, -1293f) * vec2<f32>(var_0.b, var_0.b))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b, 141f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(612f, 796f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1650f, 671f))), var_2.c)))));
}

