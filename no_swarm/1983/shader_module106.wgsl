struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<vec2<bool>, 15> = array<vec2<bool>, 15>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false));

var<private> global2: vec4<i32> = vec4<i32>(39289i, -15559i, 15590i, 1i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> vec4<f32> {
    var var_0 = -10043i;
    var_0 = abs(0i);
    let var_1 = ~min(~(~min(vec4<u32>(u_input.b, u_input.e.x, 58944u, u_input.b), u_input.e)), u_input.e);
    var var_2 = Struct_1(_wgslsmith_div_f32(global0.x, global0.x) < 2312f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(402f + global0.x) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -754f))), global0.x), ~(~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(6597u, u_input.b), u_input.e.zx), var_1.x, max(var_1.x, var_1.x))), reverseBits(u_input.e), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1281f, global0.x, global0.x, global0.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-453f, global0.x, -1304f, global0.x)), _wgslsmith_div_vec4_f32(vec4<f32>(835f, 1491f, global0.x, -126f), vec4<f32>(global0.x, global0.x, 886f, global0.x))), all(global1[_wgslsmith_index_u32(u_input.e.x | u_input.b, 15u)]))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -803f, 271f, 321f)), vec4<f32>(global0.x, global0.x, global0.x, global0.x))) + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, 807f, global0.x, global0.x), vec4<f32>(global0.x, 609f, global0.x, -364f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 1000f, global0.x, 610f))))));
    var var_3 = u_input.a.x;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_f_op_f32(step(global0.x, 1076f)), _wgslsmith_f_op_f32(-987f + _wgslsmith_f_op_f32(ceil(var_2.e.x))), global0.x)));
}

fn func_2(arg_0: u32, arg_1: vec4<bool>) -> vec2<u32> {
    let var_0 = u_input.e.xxy;
    global0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, 519f)), _wgslsmith_f_op_f32(f32(-1f) * -1246f), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1187f, 1298f, false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x) + vec4<f32>(-1696f, global0.x, global0.x, -218f)) - vec4<f32>(global0.x, global0.x, global0.x, global0.x))))));
    var var_1 = Struct_1(!(!arg_1.x) | (!any(vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x)) != (~u_input.e.x < 12055u)), _wgslsmith_f_op_f32(923f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(920f * global0.x)))), ~(firstTrailingBit(vec3<u32>(0u, u_input.e.x, var_0.x)) & ~firstLeadingBit(vec3<u32>(u_input.b, 4371u, u_input.e.x))), u_input.e, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, -1272f, global0.x, global0.x), vec4<f32>(global0.x, -112f, global0.x, 893f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -812f, global0.x, -529f))))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1738f, _wgslsmith_f_op_f32(step(global0.x, global0.x)), global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1335f))))));
    let var_2 = global1[_wgslsmith_index_u32(~6999u, 15u)];
    let var_3 = arg_1.x;
    return vec2<u32>(firstLeadingBit(1u) >> (arg_0 % 32u), 4294967295u);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_1 {
    global1 = array<vec2<bool>, 15>();
    global0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-806f, _wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(-103f - global0.x), _wgslsmith_f_op_f32(f32(-1f) * -1002f)) - _wgslsmith_f_op_vec4_f32(exp2(arg_1.e))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -961f) * -1360f), arg_1.b, -343f, 679f))));
    var var_0 = Struct_1(true | arg_1.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(global0.x - global0.x)) - -2629f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1293f))))), ~vec3<u32>(_wgslsmith_clamp_u32(arg_0.x, arg_0.x, 7943u), reverseBits(~1u), 1u), select(_wgslsmith_clamp_vec4_u32(u_input.e, vec4<u32>(u_input.e.x, arg_1.d.x, 4294967295u, 4294967295u), arg_1.d) >> (u_input.e % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(arg_1.d, vec4<u32>(arg_1.d.x, 74922u, u_input.e.x, arg_0.x)), select(u_input.e, vec4<u32>(42836u, 0u, 112465u, 1u), arg_1.a)), any(select(vec4<bool>(false, arg_1.a, true, true), vec4<bool>(arg_1.a, arg_1.a, arg_1.a, arg_1.a), vec4<bool>(true, arg_1.a, false, false)))) & arg_1.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(701f, global0.x, 642f, global0.x)), _wgslsmith_div_vec4_f32(arg_1.e, arg_1.e), vec4<bool>(false, false, u_input.d.x < 0i, true))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.e) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1283f, arg_1.b, global0.x, -1088f) + arg_1.e))))));
    var var_1 = u_input.d.x;
    let var_2 = Struct_1((arg_0.x ^ arg_1.c.x) != arg_1.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_vec4_f32(func_3()).x)), _wgslsmith_f_op_f32(351f * _wgslsmith_f_op_f32(f32(-1f) * -861f))), arg_1.d.zwz, (~vec4<u32>(15140u, 4294967295u, 4294967295u, arg_1.c.x) ^ ~vec4<u32>(0u, arg_1.d.x, u_input.b, u_input.e.x)) >> (u_input.e % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1065f), _wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(2138f - global0.x))), global0.x, 1f)));
    return var_2;
}

fn func_1(arg_0: bool, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = func_4(~func_2(u_input.b, !vec4<bool>(false, arg_0, arg_0, arg_0)), Struct_1(u_input.b > _wgslsmith_sub_u32(51778u, u_input.e.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(794f, 278f), 1157f)), -513f), u_input.e.xxz, ~vec4<u32>(u_input.b, u_input.e.x, ~53478u, reverseBits(4294967295u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -1616f, global0.x, global0.x)), vec4<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_vec4_f32(func_3()).x, _wgslsmith_f_op_f32(sign(global0.x))))));
    return func_4(u_input.e.zx, func_4(func_2(~1u, vec4<bool>(all(global1[_wgslsmith_index_u32(4294967295u, 15u)]), true, arg_0, arg_0)), Struct_1(!arg_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, var_0.e.x)), u_input.e.xzx, vec4<u32>(_wgslsmith_mult_u32(u_input.b, 0u), 1u, var_0.d.x, u_input.e.x >> (var_0.c.x % 32u)), var_0.e)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: vec3<i32>) -> vec3<u32> {
    global1 = array<vec2<bool>, 15>();
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(arg_1.e)), _wgslsmith_div_vec4_f32(arg_0.e, _wgslsmith_f_op_vec4_f32(round(arg_0.e))))) * arg_1.e);
    var var_0 = u_input.c;
    let var_1 = Struct_1(true, -274f, vec3<u32>(66703u, _wgslsmith_add_u32(arg_2, 0u), func_2(1u, !select(vec4<bool>(true, false, arg_0.a, false), vec4<bool>(arg_1.a, arg_1.a, arg_0.a, arg_0.a), vec4<bool>(arg_1.a, arg_1.a, false, arg_0.a))).x), vec4<u32>(~16320u, func_2(~1u, select(vec4<bool>(false, arg_0.a, false, arg_1.a), !vec4<bool>(arg_0.a, arg_1.a, arg_0.a, true), select(vec4<bool>(true, true, arg_0.a, false), vec4<bool>(true, false, false, false), arg_0.a))).x, func_4(reverseBits(abs(vec2<u32>(24752u, arg_1.d.x))), Struct_1(any(vec4<bool>(arg_0.a, arg_1.a, true, arg_0.a)), _wgslsmith_f_op_f32(round(arg_0.e.x)), ~vec3<u32>(4294967295u, u_input.e.x, u_input.e.x), vec4<u32>(5034u, 54236u, u_input.b, 0u), func_4(vec2<u32>(arg_0.d.x, 0u), Struct_1(arg_0.a, arg_1.b, vec3<u32>(1u, arg_2, u_input.e.x), arg_0.d, arg_0.e)).e)).d.x, arg_0.c.x), vec4<f32>(1f, arg_0.b, _wgslsmith_f_op_f32(abs(-731f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-2018f)) * global0.x))));
    global1 = array<vec2<bool>, 15>();
    return vec3<u32>(4088u, 35447u, 12653u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(any(vec4<bool>(true, true, true, true)), ~select(u_input.a.x, 0i, false) > global2.x, all(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(382f + global0.x), 472f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1057f * _wgslsmith_f_op_f32(749f + global0.x))))), func_5(Struct_1(false, _wgslsmith_f_op_f32(-246f + 1167f), u_input.e.wxx, u_input.e, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -429f, -347f, -929f))), func_1(true, u_input.d), _wgslsmith_mult_u32(_wgslsmith_mult_u32(0u, u_input.e.x), 68783u), vec3<i32>(_wgslsmith_add_i32(-1i, u_input.c), firstLeadingBit(global2.x), global2.x)) | vec3<u32>(u_input.b, u_input.b >> (u_input.e.x % 32u), _wgslsmith_mult_u32(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(6386u, u_input.b, 1u, 1u), vec4<u32>(4294967295u, 1u, 0u, u_input.e.x)))), _wgslsmith_mod_vec4_u32(firstLeadingBit((u_input.e & u_input.e) >> (u_input.e % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(firstLeadingBit(firstLeadingBit(vec4<u32>(4294967295u, u_input.e.x, 10251u, 0u))), vec4<u32>(u_input.b, func_2(u_input.e.x, vec4<bool>(false, false, true, false)).x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 10730u), u_input.e.zww), 13553u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, func_4(firstLeadingBit(vec2<u32>(u_input.e.x, 4294967295u)), func_4(u_input.e.wz, Struct_1(true, 719f, vec3<u32>(4294967295u, 1u, 4294967295u), u_input.e, vec4<f32>(-193f, 193f, 1292f, -102f)))).e.x, -1000f, _wgslsmith_f_op_f32(-func_4(u_input.e.zx, Struct_1(false, 1310f, vec3<u32>(u_input.b, 1u, 65596u), vec4<u32>(u_input.e.x, u_input.b, u_input.b, 10575u), vec4<f32>(1308f, 1100f, global0.x, global0.x))).b)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, global0.x, -1000f, -1000f)))))));
    var var_1 = func_4(var_0.c.xx, Struct_1(var_0.a, _wgslsmith_f_op_f32(-global0.x), var_0.c, u_input.e, _wgslsmith_f_op_vec4_f32(-var_0.e)));
    var var_2 = func_1(var_1.a, select(countOneBits(u_input.d), (global2.yzy | vec3<i32>(0i, -1i, global2.x)) ^ global2.yxy, any(!vec3<bool>(false, true, var_1.a))) & global2.zzw);
    let var_3 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(var_2.e.zwz + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(global0.wyw, vec3<f32>(global0.x, global0.x, -299f)))))))));
    var_2 = Struct_1(_wgslsmith_f_op_f32(-741f * func_4(firstTrailingBit(vec2<u32>(var_0.c.x, u_input.e.x)), Struct_1(var_1.a, -1032f, vec3<u32>(var_0.d.x, var_2.c.x, 31437u), vec4<u32>(22148u, 0u, var_0.c.x, var_1.c.x), vec4<f32>(1000f, var_2.b, var_3.x, 261f))).e.x) < var_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) + var_3.x), min(_wgslsmith_mult_vec3_u32(u_input.e.wyx, _wgslsmith_clamp_vec3_u32(var_2.c, vec3<u32>(var_0.c.x, var_1.c.x, u_input.e.x), u_input.e.wyz)), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(var_2.d.wxy, vec3<u32>(15247u, var_1.c.x, 35196u)), vec3<u32>(var_1.d.x, u_input.b, 1u))) << (vec3<u32>(u_input.b, 1u, countOneBits(var_2.d.x ^ 0u)) % vec3<u32>(32u)), var_2.d, func_4(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.e.x, 33043u), _wgslsmith_div_vec2_u32(vec2<u32>(var_0.d.x, var_2.c.x), vec2<u32>(u_input.b, var_1.c.x))) & _wgslsmith_add_vec2_u32(vec2<u32>(var_0.c.x, 8175u) << (var_0.d.xw % vec2<u32>(32u)), vec2<u32>(var_1.c.x, var_0.c.x)), Struct_1(false, 520f, vec3<u32>(firstLeadingBit(0u), u_input.e.x >> (4294967295u % 32u), ~var_2.d.x), vec4<u32>(~var_1.d.x, var_2.c.x, ~var_1.c.x, u_input.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1596f, 1012f, 588f, var_3.x)))).e);
    let var_4 = _wgslsmith_f_op_vec4_f32(-var_1.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_0.b - var_0.b));
}

