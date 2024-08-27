struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: u32,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec2<f32>(-1000f, -373f)), Struct_1(vec2<f32>(-723f, 322f)), Struct_1(vec2<f32>(-1350f, -716f)), Struct_1(vec2<f32>(-351f, 991f)), Struct_1(vec2<f32>(129f, 243f)), Struct_1(vec2<f32>(407f, -927f)), Struct_1(vec2<f32>(827f, 170f)), Struct_1(vec2<f32>(-1012f, 609f)), Struct_1(vec2<f32>(274f, 477f)), Struct_1(vec2<f32>(703f, 845f)), Struct_1(vec2<f32>(-401f, -746f)), Struct_1(vec2<f32>(-103f, 626f)), Struct_1(vec2<f32>(1092f, 486f)), Struct_1(vec2<f32>(1102f, -2068f)), Struct_1(vec2<f32>(926f, 326f)), Struct_1(vec2<f32>(-575f, -265f)), Struct_1(vec2<f32>(610f, -697f)), Struct_1(vec2<f32>(-153f, 322f)), Struct_1(vec2<f32>(-854f, 468f)), Struct_1(vec2<f32>(347f, 224f)), Struct_1(vec2<f32>(1690f, 375f)), Struct_1(vec2<f32>(-1386f, -529f)), Struct_1(vec2<f32>(595f, 312f)), Struct_1(vec2<f32>(391f, 1520f)), Struct_1(vec2<f32>(912f, 237f)), Struct_1(vec2<f32>(439f, 352f)), Struct_1(vec2<f32>(852f, 1671f)), Struct_1(vec2<f32>(-782f, -759f)), Struct_1(vec2<f32>(1093f, -1000f)), Struct_1(vec2<f32>(125f, -745f)), Struct_1(vec2<f32>(-2563f, -1000f)));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> u32 {
    let var_0 = -26455i;
    var var_1 = Struct_2(select(vec2<bool>(all(vec3<bool>(true, true, true)), false), !select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true))), !all(vec2<bool>(true, true))), _wgslsmith_mod_vec3_i32(~(-vec3<i32>(7637i, 1i, -1i)), vec3<i32>(-1i, _wgslsmith_clamp_i32(0i, var_0, -2147483647i), -1i)) & (max(vec3<i32>(-15292i, var_0, u_input.a), vec3<i32>(u_input.a, -2147483647i, var_0)) >> (~vec3<u32>(4294967295u, 1u, 10858u) % vec3<u32>(32u))), 33015u, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.a - vec2<f32>(arg_0.a.x, -950f)) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-110f, 943f), vec2<f32>(1603f, 1000f)))) - vec2<f32>(arg_1.a.x, _wgslsmith_f_op_f32(arg_2 * arg_1.a.x)))), countOneBits(1u));
    global0 = array<Struct_1, 31>();
    var var_2 = select(select(vec3<i32>(-2147483647i, -var_0, min(-2147483647i << (var_1.e % 32u), -31542i)), var_1.b, vec3<bool>(true, var_1.a.x, any(select(vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x), vec3<bool>(true, false, false), vec3<bool>(false, var_1.a.x, var_1.a.x))))), var_1.b, !(!var_1.a.x));
    var var_3 = true;
    return 59117u | firstTrailingBit(var_1.c);
}

fn func_2() -> vec2<f32> {
    global0 = array<Struct_1, 31>();
    global0 = array<Struct_1, 31>();
    let var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_mod_u32(func_3(Struct_1(vec2<f32>(981f, -1574f)), Struct_1(vec2<f32>(-633f, -969f)), _wgslsmith_f_op_f32(f32(-1f) * -533f)), 1u), ~4294967295u), 31u)];
    global0 = array<Struct_1, 31>();
    let var_1 = all(vec3<bool>(true, true, true));
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-613f, 878f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.a.x, var_0.a.x), vec2<f32>(var_0.a.x, var_0.a.x))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_0.a)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, _wgslsmith_div_f32(-1964f, var_0.a.x))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> vec2<f32> {
    global0 = array<Struct_1, 31>();
    let var_0 = Struct_2(select(select(arg_0.a, !arg_0.a, vec2<bool>(true, false | arg_0.a.x)), arg_0.a, arg_0.a), arg_0.b, 6141u, global0[_wgslsmith_index_u32(reverseBits(~(~1u)) >> (arg_0.c % 32u), 31u)], 1u);
    var var_1 = vec2<i32>(var_0.b.x | -2147483647i, arg_0.b.x) >> (reverseBits(vec2<u32>(1u << (func_3(Struct_1(arg_2.a), Struct_1(vec2<f32>(arg_2.a.x, arg_1.a.x)), -539f) % 32u), countOneBits(arg_0.c))) % vec2<u32>(32u));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(1093f, 388f, arg_2.a.x, arg_0.d.a.x), vec4<f32>(arg_2.a.x, arg_2.a.x, var_0.d.a.x, 542f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.x, 162f, arg_2.a.x, 476f)))))));
    global0 = array<Struct_1, 31>();
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(1082f - -270f), _wgslsmith_f_op_f32(floor(var_0.d.a.x))))), _wgslsmith_f_op_vec2_f32(-arg_2.a)) * vec2<f32>(arg_0.d.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1509f, _wgslsmith_f_op_f32(min(717f, arg_1.a.x))) * _wgslsmith_f_op_f32(-410f + -126f))));
}

fn func_1(arg_0: vec2<i32>) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-281f, -1154f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-402f, 539f)))) * _wgslsmith_f_op_vec2_f32(func_4(Struct_2(vec2<bool>(true, true), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, arg_0.x), vec3<i32>(0i, u_input.a, 1i)), _wgslsmith_clamp_u32(38489u, 4294967295u, 22026u), Struct_1(vec2<f32>(-1628f, -1540f)), ~1u), Struct_1(_wgslsmith_f_op_vec2_f32(func_2())), global0[_wgslsmith_index_u32(abs(func_3(Struct_1(vec2<f32>(-636f, -783f)), global0[_wgslsmith_index_u32(44486u, 31u)], 593f)), 31u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-1075f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1183f)))));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(func_1(~select(vec2<i32>(u_input.a, 0i), vec2<i32>(-2147483647i, -17i), true) << (~(~vec2<u32>(8520u, 0u)) % vec2<u32>(32u)))));
    let var_1 = select(vec3<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -10634i, -17234i, 75580i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)) << (2356u % 32u), abs(96690i), -2147483647i), vec3<i32>(-1i) * -(~(vec3<i32>(u_input.a, u_input.a, 1i) ^ vec3<i32>(39i, u_input.a, u_input.a))), false);
    var var_2 = vec4<bool>(true, !any(!select(vec2<bool>(true, false), vec2<bool>(false, true), false)), false, false);
    global0 = array<Struct_1, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(vec3<u32>(countOneBits(~0u), ~4294967295u, 1u), vec3<u32>(~24523u, countOneBits(1u), ~(~80092u))), _wgslsmith_div_f32(var_0.a.x, 126f), ~(~(-21026i)));
}

