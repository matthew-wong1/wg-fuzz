struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec3<u32>, arg_1: f32) -> bool {
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(-969f, arg_1, -686f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-771f, arg_1, -617f)))) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-125f * 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_1 = ~firstLeadingBit(vec2<u32>(2135u, u_input.a.x) >> ((arg_0.yy ^ vec2<u32>(81641u, 23925u)) % vec2<u32>(32u))) & vec2<u32>(4294967295u, abs(abs(_wgslsmith_dot_vec3_u32(arg_0, arg_0))));
    var var_2 = _wgslsmith_sub_u32(62678u, abs(u_input.a.x & 0u)) | _wgslsmith_dot_vec2_u32(vec2<u32>(34463u, ~25134u << (firstTrailingBit(u_input.a.x) % 32u)), ~abs(abs(vec2<u32>(var_1.x, arg_0.x))));
    var_2 = abs(arg_0.x);
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_0.x))))));
    return all(!(!(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)))));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: vec4<f32>) -> Struct_2 {
    let var_0 = ~0i;
    let var_1 = !all(select(vec4<bool>(func_2(vec3<u32>(u_input.a.x, 0u, 11704u), arg_2.x), true, arg_1, true), !vec4<bool>(false, false, false, arg_0), vec4<bool>(!arg_0, true, !arg_1, all(vec4<bool>(arg_0, false, arg_1, true)))));
    let var_2 = select(select(vec3<bool>(true, true, true), vec3<bool>(arg_1, arg_0 && (-901f < arg_2.x), var_1), false), select(!(!(!vec3<bool>(arg_0, arg_1, var_1))), !(!(!vec3<bool>(false, arg_1, true))), select(vec3<bool>(true, any(vec4<bool>(false, false, arg_1, var_1)), false), select(!vec3<bool>(var_1, true, true), select(vec3<bool>(arg_0, true, var_1), vec3<bool>(arg_0, arg_0, true), vec3<bool>(var_1, false, var_1)), vec3<bool>(true, false, false)), !vec3<bool>(arg_0, true, true))), !select(select(!vec3<bool>(false, var_1, arg_0), select(vec3<bool>(arg_1, arg_0, arg_1), vec3<bool>(false, true, var_1), vec3<bool>(true, var_1, false)), select(vec3<bool>(false, true, false), vec3<bool>(var_1, var_1, arg_1), true)), !vec3<bool>(arg_1, false, arg_0), var_1));
    var var_3 = select(true, !arg_1, var_1) && var_2.x;
    var_3 = !(true & !any(vec3<bool>(true, var_2.x, true)));
    return Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, arg_2.x, arg_2.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-698f, arg_2.x, arg_2.x))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(arg_2.wzy, arg_2.zyz)) - vec3<f32>(arg_2.x, arg_2.x, 353f))))), 61521u);
}

fn func_1(arg_0: f32, arg_1: Struct_2) -> Struct_1 {
    var var_0 = func_3(select(true | !func_2(u_input.a, 1100f), false, true), (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.a.x, -353f))) >= arg_0) || (select(true, true, false) || true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-587f, 731f, _wgslsmith_f_op_f32(select(697f, 1686f, true)), _wgslsmith_f_op_f32(-243f - arg_0))))));
    let var_1 = Struct_1(any(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), any(vec2<bool>(false, false)))));
    var_0 = func_3(select(var_1.a, var_1.a, false), false, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-508f + arg_1.a.x), func_3(u_input.b.x < 24382i, var_1.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 1543f, 709f, -232f))).a.x, _wgslsmith_f_op_f32(trunc(-377f)), arg_1.a.x)));
    var_0 = arg_1;
    var_0 = func_3(((_wgslsmith_sub_u32(0u, 0u) == ~u_input.a.x) || true) && all(vec2<bool>(true, true)), var_1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-779f, arg_1.a.x, 839f, var_0.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(498f, 492f, arg_0, arg_1.a.x)))))));
    return Struct_1(!(any(select(vec2<bool>(false, true), vec2<bool>(var_1.a, true), vec2<bool>(false, var_1.a))) && false));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_2 {
    var var_0 = abs(i32(-1i) * -abs(-u_input.b.x));
    let var_1 = -155f;
    let var_2 = arg_0;
    var_0 = reverseBits(_wgslsmith_dot_vec3_i32(u_input.b, select(u_input.b, vec3<i32>(u_input.b.x, select(-2147483647i, -2147483647i, arg_0.a), u_input.b.x), true)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(func_3(false, var_2.a, vec4<f32>(var_1, 432f, var_1, 1085f)).a.x)))));
    return Struct_2(vec3<f32>(_wgslsmith_div_f32(-1762f, _wgslsmith_div_f32(2828f, _wgslsmith_div_f32(var_1, var_1))), _wgslsmith_f_op_f32(trunc(623f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_3)) + var_1))), 3721u);
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2, arg_3: i32) -> Struct_2 {
    let var_0 = _wgslsmith_sub_vec3_u32(u_input.a, select(~_wgslsmith_div_vec3_u32(u_input.a, u_input.a), vec3<u32>(arg_2.b, ~arg_2.b, u_input.a.x), false));
    var var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.a.x), 336f)))), _wgslsmith_f_op_f32(-arg_1.a.x), arg_2.a.x), arg_2.b);
    var var_2 = arg_2;
    let var_3 = Struct_1(all(vec3<bool>(true, true, true)) & true);
    var var_4 = select(select(select(vec4<bool>(false, true, var_3.a, all(vec2<bool>(false, var_3.a))), select(vec4<bool>(var_3.a, var_3.a, var_3.a, var_3.a), vec4<bool>(var_3.a, true, var_3.a, false), true), true), select(!vec4<bool>(var_3.a, true, true, var_3.a), select(vec4<bool>(true, true, var_3.a, false), select(vec4<bool>(var_3.a, true, true, var_3.a), vec4<bool>(true, true, var_3.a, var_3.a), var_3.a), false), vec4<bool>(var_3.a & var_3.a, var_3.a, true, var_3.a)), select(vec4<bool>(var_3.a, true, var_3.a, any(vec3<bool>(var_3.a, var_3.a, true))), vec4<bool>(!var_3.a, var_3.a | true, false, any(vec3<bool>(var_3.a, var_3.a, true))), _wgslsmith_f_op_f32(-var_2.a.x) >= var_2.a.x)), select(select(vec4<bool>(true, !var_3.a, func_2(var_0, -272f), func_2(var_0, 247f)), vec4<bool>(-645f >= var_2.a.x, func_2(vec3<u32>(4294967295u, 4294967295u, var_0.x), arg_1.a.x), !var_3.a, !var_3.a), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), var_3.a)), !(!select(vec4<bool>(false, var_3.a, var_3.a, var_3.a), vec4<bool>(var_3.a, true, false, var_3.a), vec4<bool>(var_3.a, true, var_3.a, true))), !var_3.a), select(select(select(vec4<bool>(var_3.a, false, false, false), !vec4<bool>(var_3.a, var_3.a, false, var_3.a), false), select(vec4<bool>(true, var_3.a, false, false), select(vec4<bool>(true, true, var_3.a, true), vec4<bool>(var_3.a, var_3.a, true, true), vec4<bool>(true, var_3.a, false, var_3.a)), !vec4<bool>(false, false, true, var_3.a)), _wgslsmith_f_op_f32(var_1.a.x * -771f) < var_2.a.x), vec4<bool>(var_3.a, var_3.a, var_3.a, all(select(vec2<bool>(var_3.a, var_3.a), vec2<bool>(true, var_3.a), vec2<bool>(var_3.a, var_3.a)))), select(vec4<bool>(func_2(vec3<u32>(4294967295u, arg_1.b, var_0.x), arg_1.a.x), all(vec4<bool>(var_3.a, false, var_3.a, var_3.a)), var_3.a, false), !(!vec4<bool>(true, false, var_3.a, var_3.a)), select(select(vec4<bool>(false, false, var_3.a, true), vec4<bool>(false, true, true, var_3.a), var_3.a), select(vec4<bool>(var_3.a, var_3.a, var_3.a, var_3.a), vec4<bool>(true, var_3.a, false, false), false), true))));
    return Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -308f), _wgslsmith_f_op_f32(-237f + arg_2.a.x), _wgslsmith_f_op_f32(min(-289f, arg_1.a.x)))) * vec3<f32>(_wgslsmith_div_f32(var_2.a.x, _wgslsmith_f_op_f32(round(1050f))), -1000f, 1703f)), ~var_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(u_input.b.x, func_4(func_1(_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(f32(-1f) * -992f))), Struct_2(vec3<f32>(-1404f, -1000f, -455f), 1u)), countOneBits(vec4<u32>(~166u, ~79452u, ~16978u, 4294967295u))), func_4(func_1(509f, Struct_2(vec3<f32>(1208f, -496f, 1392f), ~u_input.a.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u) >> (~vec4<u32>(u_input.a.x, 46865u, 0u, u_input.a.x) % vec4<u32>(32u)), vec4<u32>(56793u, 1u, ~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 77074u), vec4<u32>(42252u, 18563u, 9779u, 1u))))), max(u_input.b.x, ~2147483647i));
    var var_1 = var_0.a.x;
    var var_2 = select(vec3<bool>(any(vec2<bool>(false, var_0.b != 26018u)), false, all(vec4<bool>(83073u > u_input.a.x, true, false, func_1(var_0.a.x, var_0).a))), select(vec3<bool>(true && any(vec4<bool>(false, true, false, false)), any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), true)), _wgslsmith_div_i32(-26210i, u_input.b.x) > 4421i), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(false, false, false), any(vec3<bool>(true, false, false))), vec3<bool>(true, true, true)), true), true);
    let var_3 = false;
    let var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -719f)));
    var_1 = -804f;
    var var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(~u_input.a.xy, u_input.a.zy), vec3<f32>(_wgslsmith_div_f32(-1830f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-460f - 355f), _wgslsmith_f_op_f32(var_0.a.x + var_0.a.x))), var_0.a.x, func_3(u_input.a.x > _wgslsmith_add_u32(1u, var_0.b), true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4, -236f, var_4, var_0.a.x) + vec4<f32>(-828f, -1356f, -1019f, 1000f)) + vec4<f32>(1641f, var_0.a.x, -1560f, var_0.a.x))).a.x));
}

