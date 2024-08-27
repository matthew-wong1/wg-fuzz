struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: i32,
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

var<private> global0: array<vec2<f32>, 22>;

var<private> global1: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<bool>(true, false)), Struct_1(vec3<bool>(true, true, false), vec2<bool>(true, true)), 232f, -1i), Struct_2(Struct_1(vec3<bool>(false, true, false), vec2<bool>(true, false)), Struct_1(vec3<bool>(true, true, true), vec2<bool>(true, true)), -305f, -1i), Struct_2(Struct_1(vec3<bool>(true, false, true), vec2<bool>(false, true)), Struct_1(vec3<bool>(false, false, false), vec2<bool>(true, false)), -1225f, -1i), Struct_2(Struct_1(vec3<bool>(false, true, false), vec2<bool>(false, true)), Struct_1(vec3<bool>(false, true, false), vec2<bool>(true, true)), 1081f, i32(-2147483648)), Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<bool>(false, true)), Struct_1(vec3<bool>(false, false, false), vec2<bool>(false, true)), 256f, -1i), Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<bool>(true, true)), Struct_1(vec3<bool>(true, true, false), vec2<bool>(true, true)), 1241f, 0i), Struct_2(Struct_1(vec3<bool>(false, true, false), vec2<bool>(true, false)), Struct_1(vec3<bool>(true, true, false), vec2<bool>(false, false)), -909f, -1i), Struct_2(Struct_1(vec3<bool>(true, true, false), vec2<bool>(false, true)), Struct_1(vec3<bool>(true, false, false), vec2<bool>(true, false)), 1168f, 0i), Struct_2(Struct_1(vec3<bool>(false, true, false), vec2<bool>(false, true)), Struct_1(vec3<bool>(true, false, false), vec2<bool>(false, true)), -690f, -9318i), Struct_2(Struct_1(vec3<bool>(false, false, true), vec2<bool>(true, false)), Struct_1(vec3<bool>(false, false, false), vec2<bool>(true, true)), -1099f, 2147483647i), Struct_2(Struct_1(vec3<bool>(false, false, true), vec2<bool>(true, false)), Struct_1(vec3<bool>(false, false, true), vec2<bool>(true, true)), -263f, -28424i), Struct_2(Struct_1(vec3<bool>(false, false, true), vec2<bool>(false, false)), Struct_1(vec3<bool>(true, true, true), vec2<bool>(true, true)), 684f, -1i), Struct_2(Struct_1(vec3<bool>(false, false, false), vec2<bool>(false, true)), Struct_1(vec3<bool>(true, false, false), vec2<bool>(false, false)), -770f, -1i), Struct_2(Struct_1(vec3<bool>(true, false, false), vec2<bool>(true, false)), Struct_1(vec3<bool>(false, true, true), vec2<bool>(false, false)), -934f, -16150i), Struct_2(Struct_1(vec3<bool>(true, false, true), vec2<bool>(false, false)), Struct_1(vec3<bool>(false, true, true), vec2<bool>(false, false)), 1000f, 0i), Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<bool>(false, true)), Struct_1(vec3<bool>(true, false, true), vec2<bool>(true, true)), 785f, -54479i), Struct_2(Struct_1(vec3<bool>(false, false, false), vec2<bool>(false, false)), Struct_1(vec3<bool>(false, false, false), vec2<bool>(false, true)), -1268f, i32(-2147483648)), Struct_2(Struct_1(vec3<bool>(false, false, true), vec2<bool>(true, false)), Struct_1(vec3<bool>(false, true, false), vec2<bool>(false, true)), 161f, 2147483647i), Struct_2(Struct_1(vec3<bool>(true, false, true), vec2<bool>(true, true)), Struct_1(vec3<bool>(false, true, true), vec2<bool>(false, false)), -2202f, i32(-2147483648)), Struct_2(Struct_1(vec3<bool>(true, true, false), vec2<bool>(true, false)), Struct_1(vec3<bool>(true, true, true), vec2<bool>(true, false)), 617f, 0i), Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<bool>(true, true)), Struct_1(vec3<bool>(false, false, false), vec2<bool>(false, false)), -1779f, -1i), Struct_2(Struct_1(vec3<bool>(false, true, false), vec2<bool>(false, true)), Struct_1(vec3<bool>(true, true, true), vec2<bool>(true, true)), -1000f, -1i), Struct_2(Struct_1(vec3<bool>(false, true, true), vec2<bool>(false, false)), Struct_1(vec3<bool>(true, true, true), vec2<bool>(true, true)), 989f, 1i), Struct_2(Struct_1(vec3<bool>(false, false, true), vec2<bool>(false, true)), Struct_1(vec3<bool>(true, false, true), vec2<bool>(false, false)), -1830f, 18774i), Struct_2(Struct_1(vec3<bool>(false, true, false), vec2<bool>(false, false)), Struct_1(vec3<bool>(true, true, false), vec2<bool>(false, true)), -1000f, -41001i), Struct_2(Struct_1(vec3<bool>(true, false, true), vec2<bool>(false, true)), Struct_1(vec3<bool>(true, true, false), vec2<bool>(true, true)), 966f, 0i), Struct_2(Struct_1(vec3<bool>(true, false, false), vec2<bool>(true, true)), Struct_1(vec3<bool>(false, true, true), vec2<bool>(true, false)), -1000f, 5577i), Struct_2(Struct_1(vec3<bool>(true, false, false), vec2<bool>(true, true)), Struct_1(vec3<bool>(true, false, true), vec2<bool>(true, true)), -1192f, -16502i), Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<bool>(true, false)), Struct_1(vec3<bool>(false, false, false), vec2<bool>(true, true)), -1931f, -27306i), Struct_2(Struct_1(vec3<bool>(false, false, false), vec2<bool>(true, false)), Struct_1(vec3<bool>(false, false, false), vec2<bool>(true, true)), 772f, -36691i));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1() -> f32 {
    let var_0 = vec3<u32>(u_input.a, u_input.a | ~(~_wgslsmith_sub_u32(u_input.a, 1u)), 16310u);
    global1 = array<Struct_2, 30>();
    global1 = array<Struct_2, 30>();
    global1 = array<Struct_2, 30>();
    global0 = array<vec2<f32>, 22>();
    return _wgslsmith_f_op_f32(1f + -814f);
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    global1 = array<Struct_2, 30>();
    return 0u;
}

fn func_2(arg_0: u32) -> vec4<bool> {
    let var_0 = vec3<i32>(_wgslsmith_clamp_i32(-1i, u_input.b.x, -u_input.b.x ^ 1i), ~0i, firstTrailingBit(u_input.b.x));
    global1 = array<Struct_2, 30>();
    var var_1 = !vec4<bool>(!(true && any(vec3<bool>(false, true, false))), (97191u == _wgslsmith_add_u32(u_input.a, 1u)) && false, !any(vec3<bool>(false, false, true)) & select(false, true, true), false);
    let var_2 = firstTrailingBit(func_3(select(!select(vec4<bool>(var_1.x, true, false, var_1.x), vec4<bool>(var_1.x, false, var_1.x, true), vec4<bool>(var_1.x, false, false, var_1.x)), vec4<bool>(var_1.x | var_1.x, var_1.x, !var_1.x, any(vec3<bool>(false, false, var_1.x))), vec4<bool>(all(vec2<bool>(true, var_1.x)), true, true, false))));
    global0 = array<vec2<f32>, 22>();
    return select(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, var_1.x), !vec4<bool>(true, true, var_1.x, false)), select(vec4<bool>(var_1.x, false, var_1.x, var_1.x), select(vec4<bool>(var_1.x, var_1.x, false, false), vec4<bool>(true, var_1.x, true, var_1.x), true), select(vec4<bool>(true, true, var_1.x, false), vec4<bool>(var_1.x, false, false, false), var_1.x)), select(!vec4<bool>(false, var_1.x, var_1.x, true), vec4<bool>(var_1.x, true, var_1.x, var_1.x), select(vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(var_1.x, false, var_1.x, false), vec4<bool>(var_1.x, var_1.x, var_1.x, false)))), select(vec4<bool>(true, all(vec2<bool>(true, true)), any(vec4<bool>(var_1.x, true, false, var_1.x)), any(var_1.wz)), select(!vec4<bool>(true, true, var_1.x, false), vec4<bool>(false, true, true, var_1.x), all(vec4<bool>(true, true, var_1.x, false))), !(!vec4<bool>(true, true, var_1.x, var_1.x))), select(vec4<bool>(true, true, true, any(var_1.zxx)), select(!vec4<bool>(var_1.x, var_1.x, false, var_1.x), !vec4<bool>(var_1.x, var_1.x, true, var_1.x), !var_1.x), var_1.x)), !select(select(!vec4<bool>(false, var_1.x, true, true), vec4<bool>(var_1.x, true, var_1.x, var_1.x), -1i < u_input.c), !vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), var_1.x), vec4<bool>(all(vec4<bool>(false, var_1.x, var_1.x, true)), !(var_1.x == var_1.x), any(vec3<bool>(true, true, true)), (!var_1.x == var_1.x) || false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-39265i);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1013f, -382f))) - -634f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-500f + 958f), _wgslsmith_f_op_f32(func_1()))))), 1f);
    var var_2 = select(func_2((12659u | countOneBits(u_input.a)) << ((u_input.a ^ ~75192u) % 32u)), func_2(106986u), vec4<bool>(true, all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false)), !all(vec3<bool>(true, true, true)), _wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.b.x, 2147483647i), _wgslsmith_mod_i32(u_input.b.x, -1i)) >= u_input.c));
    let var_3 = 1u << (firstTrailingBit(~u_input.a) % 32u);
    var var_4 = vec4<i32>(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(max(min(19343i, u_input.c), reverseBits(1925i)), firstTrailingBit(1i)), u_input.b.yw), _wgslsmith_div_i32(-6201i, _wgslsmith_div_i32(u_input.d, ~(~u_input.d))), ~abs(u_input.b.x));
    var var_5 = Struct_2(Struct_1(vec3<bool>(true, true, _wgslsmith_f_op_f32(-var_1) != -905f), vec2<bool>(true, true)), Struct_1(var_2.wzy, vec2<bool>(!all(var_2.zzx), true)), 1060f, var_4.x);
    var_0 = select(1i, 0i ^ var_5.d, func_2(select(~max(120209u, 1u), abs(var_3), true)).x);
    let var_6 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(select(~countOneBits(vec2<u32>(var_3, u_input.a)), _wgslsmith_add_vec2_u32(vec2<u32>(var_3, u_input.a), vec2<u32>(21960u, var_3)) | vec2<u32>(1u, 4294967295u), !select(vec2<bool>(true, true), var_5.b.b, true)) << (vec2<u32>(35844u, u_input.a) % vec2<u32>(32u)));
}

