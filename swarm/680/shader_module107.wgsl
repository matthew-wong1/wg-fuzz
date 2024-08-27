struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = Struct_1(1455f, arg_0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, 396f, 840f, -682f) + vec4<f32>(arg_0.c.x, arg_0.a, arg_0.c.x, arg_0.b)), _wgslsmith_f_op_vec4_f32(-arg_0.c), vec4<bool>(false, true, false, true))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.c * arg_0.c), _wgslsmith_f_op_vec4_f32(-arg_0.c)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.c.x - arg_0.c.x), arg_0.b, _wgslsmith_f_op_f32(-108f - arg_0.c.x), _wgslsmith_f_op_f32(-arg_0.a)))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(2686f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x - 889f))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(444f))), -1321f, true))), var_0.c);
    let var_1 = arg_0;
    var var_2 = select(~reverseBits(_wgslsmith_mult_vec2_u32(abs(vec2<u32>(u_input.b.x, 81637u)), u_input.b.xy << (vec2<u32>(33565u, 4294967295u) % vec2<u32>(32u)))), ~min(u_input.b.zx, ~u_input.b.xz), all(vec3<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false))), !all(vec3<bool>(false, false, true)), any(vec4<bool>(false, true, true, true)))));
    let var_3 = arg_0;
    return abs(7201i);
}

fn func_2(arg_0: vec2<u32>) -> f32 {
    var var_0 = ~(-u_input.a.x << (u_input.b.x % 32u));
    var_0 = -(51711i & func_3(Struct_1(-524f, -1134f, vec4<f32>(-835f, 884f, 1343f, 690f))));
    var_0 = 15034i;
    var var_1 = false && (any(vec3<bool>(true, all(vec2<bool>(true, false)), any(vec2<bool>(false, false)))) | all(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false))));
    var_1 = false;
    return 1f;
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(f32(-1f) * -185f), false))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(368f + 126f) + _wgslsmith_f_op_f32(func_2(u_input.b.ww)))))));
    var var_1 = _wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.b.x, abs(15791u & ~u_input.b.x), firstLeadingBit(~u_input.b.x)), min(abs(1u), 0u));
    let var_2 = 52141u;
    var_1 = var_2;
    let var_3 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -114f))), 1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1073f), _wgslsmith_f_op_f32(268f + 1690f)))), 1f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2162f, -428f, -1175f, -556f) + vec4<f32>(-323f, -1632f, 2030f, -1114f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(128f, 309f, -1480f, -1379f)))), select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), false), true))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(522f, 1000f, 2153f, 1512f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(717f, 652f, -1207f, -176f), vec4<f32>(856f, -902f, -639f, -821f), vec4<bool>(true, true, true, false))) - vec4<f32>(-1096f, -1742f, -1000f, 319f)))));
    return 1808f;
}

fn func_4(arg_0: f32) -> vec2<bool> {
    var var_0 = !vec2<bool>(!any(vec2<bool>(true, true)), any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)));
    return select(!(!vec2<bool>(!var_0.x, !var_0.x)), vec2<bool>(firstTrailingBit(1u) >= 3770u, true), select(select(select(vec2<bool>(true, true), !vec2<bool>(var_0.x, true), !vec2<bool>(true, var_0.x)), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x), var_0.x | var_0.x), all(vec3<bool>(var_0.x, var_0.x, var_0.x))), select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(4294967295u >= u_input.b.x, var_0.x), true), select(select(!vec2<bool>(var_0.x, true), !vec2<bool>(false, var_0.x), false), vec2<bool>(all(vec4<bool>(false, var_0.x, var_0.x, var_0.x)), !var_0.x), !vec2<bool>(var_0.x, var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1()))));
    let var_1 = 313f;
    let var_2 = Struct_1(var_1, 138f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-653f, 1084f, -3048f, var_1), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-135f, 1116f, var_1, var_1)), select(vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(var_0.x, false, var_0.x, true), var_0.x))))));
    let var_3 = Struct_1(1863f, _wgslsmith_f_op_f32(-var_2.c.x), _wgslsmith_f_op_vec4_f32(var_2.c + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(var_2.c, var_2.c))))));
    let var_4 = 18860u;
    let x = u_input.a;
    s_output = StorageBuffer(~(-_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.a.x, 8730i, 99645i, -1i), -vec4<i32>(u_input.a.x, -1i, 2147483647i, u_input.a.x))));
}

