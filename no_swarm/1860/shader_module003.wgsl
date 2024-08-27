struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec3<f32>) -> f32 {
    let var_0 = arg_2;
    let var_1 = Struct_1(vec3<u32>(max((u_input.b.x << (33141u % 32u)) >> (arg_0.a.x % 32u), firstLeadingBit(1u)), ~(~15348u) ^ _wgslsmith_sub_u32(69118u, arg_0.a.x), 0u), arg_2, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(max(arg_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -611f))))));
    var var_2 = var_1;
    var var_3 = u_input.c;
    var_3 = min(_wgslsmith_sub_i32(_wgslsmith_sub_i32(select(-2147483647i, -1667i, false), ~countOneBits(1i)), -1i), u_input.c);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -411f)), -451f);
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = -(~u_input.c);
    var var_1 = Struct_1(countOneBits(firstTrailingBit(arg_0)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1005f, -281f))), -340f, _wgslsmith_f_op_f32(-639f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -821f)))), _wgslsmith_f_op_f32(1265f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(293f * _wgslsmith_div_f32(155f, 445f)))));
    var var_2 = Struct_1(abs(vec3<u32>(firstLeadingBit(arg_0.x), u_input.b.x, _wgslsmith_div_u32(31405u, 2693u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(var_1.b))), 405f);
    let var_3 = Struct_1(var_1.a, vec3<f32>(var_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-689f))), _wgslsmith_f_op_f32(func_3(Struct_1(vec3<u32>(u_input.b.x, 42007u, arg_0.x), _wgslsmith_f_op_vec3_f32(var_2.b + vec3<f32>(632f, var_2.c, var_2.b.x)), -574f), vec4<f32>(_wgslsmith_f_op_f32(round(-1369f)), _wgslsmith_f_op_f32(var_1.c + 630f), _wgslsmith_f_op_f32(var_2.c + var_1.b.x), var_2.c), vec3<f32>(var_2.c, -587f, 1229f)))), var_2.b.x);
    var var_4 = var_3;
    return Struct_1(min(var_3.a, _wgslsmith_clamp_vec3_u32(var_2.a, ~reverseBits(vec3<u32>(u_input.b.x, 30570u, var_4.a.x)), arg_0)), vec3<f32>(-971f, _wgslsmith_f_op_f32(-var_4.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.c) + -1309f))), -552f);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = func_2(~(~(~vec3<u32>(88812u, arg_0.a.x, 3415u))));
    var_0 = arg_0;
    let var_1 = _wgslsmith_div_vec2_f32(func_2(~var_0.a).b.xy, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, -1258f))), -346f));
    var var_2 = arg_0;
    var_0 = Struct_1(vec3<u32>(~_wgslsmith_sub_u32(22358u, 1u), 48573u, ~12694u), vec3<f32>(-923f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), 1139f), _wgslsmith_f_op_f32(func_3(arg_0, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -426f), -250f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c, -1956f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(949f, -698f), _wgslsmith_f_op_f32(-var_2.c)))), vec3<f32>(arg_0.c, var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))))));
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec2<f32>) -> vec2<f32> {
    var var_0 = !any(vec4<bool>(any(vec2<bool>(false, true)), ~0u >= ~u_input.b.x, abs(arg_0.a.x) < ~4294967295u, any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)))));
    let var_1 = true;
    let var_2 = ~u_input.b.x >> (_wgslsmith_clamp_u32(35943u, u_input.b.x, _wgslsmith_add_u32(~u_input.b.x, countOneBits(~0u))) % 32u);
    var var_3 = func_1(arg_0);
    var_3 = func_2(_wgslsmith_add_vec3_u32(func_2(arg_0.a).a, countOneBits(var_3.a)));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.b.xz - vec2<f32>(-1960f, 313f)) * vec2<f32>(_wgslsmith_f_op_f32(-var_3.b.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * arg_2.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_4(func_1(Struct_1(vec3<u32>(u_input.b.x, u_input.b.x, 37357u), vec3<f32>(490f, 1000f, -1000f), -999f)), max(vec2<i32>(u_input.c, u_input.a), vec2<i32>(-27543i, u_input.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-776f, 668f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(884f)), _wgslsmith_f_op_f32(f32(-1f) * -204f)) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(938f, -590f) - vec2<f32>(372f, -2469f))))))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(trunc(-447f)), _wgslsmith_f_op_f32(1000f + 1059f)), vec2<f32>(_wgslsmith_f_op_f32(364f * -666f), _wgslsmith_f_op_f32(max(532f, 1535f))))))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_4(func_2(vec3<u32>(4294967295u, u_input.b.x, u_input.b.x) | vec3<u32>(72103u, u_input.b.x, 0u)), vec2<i32>(reverseBits(11333i), firstLeadingBit(u_input.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))))).x), 730f, -190f, 647f);
    let var_2 = -1i;
    let var_3 = Struct_1(reverseBits(~func_2(vec3<u32>(4294967295u, 0u, u_input.b.x)).a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 728f, var_0.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-287f, var_1.x, -1000f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(-522f, _wgslsmith_f_op_f32(func_3(Struct_1(vec3<u32>(15386u, u_input.b.x, 455u), vec3<f32>(var_0.x, -1321f, var_1.x), -214f), var_1, var_1.wzz)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(var_3.a ^ min(var_3.a, vec3<u32>(4294967295u, var_3.a.x, var_3.a.x))));
}

