struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec3<f32>,
    d: vec3<bool>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(-315f, vec2<bool>(false, false), vec3<f32>(339f, 714f, 125f), vec3<bool>(false, false, false), vec4<u32>(59117u, 0u, 88634u, 74962u)), Struct_1(-1486f, vec2<bool>(false, false), vec3<f32>(254f, -198f, -106f), vec3<bool>(false, true, false), vec4<u32>(0u, 2355u, 44803u, 1u)), Struct_1(-630f, vec2<bool>(true, true), vec3<f32>(1180f, -1000f, 1528f), vec3<bool>(true, false, false), vec4<u32>(4294967295u, 0u, 28341u, 0u)), Struct_1(-908f, vec2<bool>(false, true), vec3<f32>(703f, 517f, -767f), vec3<bool>(false, true, true), vec4<u32>(64526u, 13164u, 5705u, 5826u)), Struct_1(1274f, vec2<bool>(true, true), vec3<f32>(1125f, -723f, 343f), vec3<bool>(true, false, true), vec4<u32>(73344u, 6536u, 27087u, 55689u)), Struct_1(1164f, vec2<bool>(true, false), vec3<f32>(2134f, -650f, 688f), vec3<bool>(true, false, false), vec4<u32>(0u, 1u, 1u, 4294967295u)), Struct_1(-1000f, vec2<bool>(false, false), vec3<f32>(1372f, -885f, -180f), vec3<bool>(false, false, true), vec4<u32>(29240u, 4294967295u, 1u, 1u)), Struct_1(-780f, vec2<bool>(false, false), vec3<f32>(674f, -1258f, 766f), vec3<bool>(false, false, false), vec4<u32>(75092u, 1u, 0u, 44102u)), Struct_1(163f, vec2<bool>(true, true), vec3<f32>(2005f, -691f, 929f), vec3<bool>(true, false, false), vec4<u32>(4294967295u, 0u, 0u, 0u)), Struct_1(1000f, vec2<bool>(true, true), vec3<f32>(-627f, 628f, 596f), vec3<bool>(true, true, true), vec4<u32>(4294967295u, 1u, 4294967295u, 0u)), Struct_1(578f, vec2<bool>(true, false), vec3<f32>(-1000f, -728f, 1145f), vec3<bool>(true, true, true), vec4<u32>(0u, 62334u, 9319u, 26901u)), Struct_1(524f, vec2<bool>(false, true), vec3<f32>(-1247f, 1800f, -958f), vec3<bool>(true, false, false), vec4<u32>(39316u, 47140u, 1u, 78075u)), Struct_1(-952f, vec2<bool>(false, false), vec3<f32>(-407f, 1369f, -180f), vec3<bool>(false, true, false), vec4<u32>(46230u, 36408u, 1u, 79029u)), Struct_1(740f, vec2<bool>(false, false), vec3<f32>(1163f, 1283f, -445f), vec3<bool>(true, true, false), vec4<u32>(26312u, 4294967295u, 69636u, 4294967295u)), Struct_1(-830f, vec2<bool>(true, true), vec3<f32>(-252f, -1626f, 743f), vec3<bool>(false, false, true), vec4<u32>(0u, 1u, 41043u, 20170u)), Struct_1(-1499f, vec2<bool>(false, true), vec3<f32>(-321f, -1063f, 1000f), vec3<bool>(true, false, false), vec4<u32>(1u, 8836u, 51537u, 1u)), Struct_1(338f, vec2<bool>(true, true), vec3<f32>(-548f, -734f, 1041f), vec3<bool>(true, true, false), vec4<u32>(4294967295u, 0u, 4880u, 1u)), Struct_1(131f, vec2<bool>(false, true), vec3<f32>(100f, -359f, 185f), vec3<bool>(false, true, false), vec4<u32>(0u, 45976u, 20159u, 0u)), Struct_1(-697f, vec2<bool>(true, true), vec3<f32>(-624f, -782f, -213f), vec3<bool>(true, true, true), vec4<u32>(53371u, 1u, 4294967295u, 1u)), Struct_1(528f, vec2<bool>(true, true), vec3<f32>(-645f, 1000f, 971f), vec3<bool>(true, false, true), vec4<u32>(23225u, 54335u, 27043u, 21264u)), Struct_1(299f, vec2<bool>(false, true), vec3<f32>(1336f, 101f, 529f), vec3<bool>(true, false, true), vec4<u32>(61363u, 1u, 126163u, 0u)), Struct_1(-1000f, vec2<bool>(false, false), vec3<f32>(-1015f, -1000f, -689f), vec3<bool>(false, false, true), vec4<u32>(4294967295u, 44541u, 0u, 0u)), Struct_1(-1738f, vec2<bool>(true, true), vec3<f32>(234f, 1284f, 431f), vec3<bool>(false, true, false), vec4<u32>(1u, 87336u, 34614u, 4294967295u)));

var<private> global2: array<f32, 20>;

var<private> global3: vec2<i32> = vec2<i32>(-1i, -45557i);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: vec4<u32>) -> bool {
    return true;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(arg_1, vec3<u32>(arg_0.e.x, 4294967295u, 1u)), arg_2.e.xyz), 20u)]), vec2<bool>(!select(all(vec4<bool>(arg_2.d.x, arg_2.b.x, arg_2.d.x, true)), arg_0.b.x || false, true), any(!select(vec4<bool>(false, arg_0.b.x, true, arg_0.d.x), vec4<bool>(arg_2.d.x, arg_2.b.x, true, arg_2.b.x), vec4<bool>(true, arg_0.d.x, arg_0.b.x, true)))), arg_0.c, select(arg_0.d, arg_0.d, true), _wgslsmith_mult_vec4_u32(~vec4<u32>(_wgslsmith_mod_u32(u_input.a, arg_2.e.x), 1u, 14765u << (1u % 32u), ~4294967295u), ~vec4<u32>(~u_input.a, arg_0.e.x, arg_2.e.x, arg_1.x << (4294967295u % 32u))));
    let var_1 = arg_0;
    let var_2 = abs(vec3<i32>(global3.x, -(i32(-1i) * -12711i) >> (countOneBits(_wgslsmith_clamp_u32(arg_2.e.x, arg_0.e.x, 0u)) % 32u), ~global3.x));
    let var_3 = arg_0.c.x;
    var var_4 = ~firstTrailingBit(firstLeadingBit(4294967295u));
    return all(!vec4<bool>(!var_0.b.x, false, 1f < global2[_wgslsmith_index_u32(max(var_0.e.x, arg_0.e.x), 20u)], false));
}

fn func_2(arg_0: u32) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(412f, global2[_wgslsmith_index_u32(4294967295u, 20u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1198f, 1494f)), vec2<bool>(false, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(arg_0, 20u)], global2[_wgslsmith_index_u32(arg_0, 20u)]))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(640f, global2[_wgslsmith_index_u32(u_input.a, 20u)])), vec2<f32>(global2[_wgslsmith_index_u32(arg_0, 20u)], global2[_wgslsmith_index_u32(u_input.a, 20u)]))))), !(!func_1(vec2<bool>(false, false), vec3<bool>(true, true, false), vec4<u32>(4294967295u, u_input.a, 20338u, 1u))) || false));
    let var_1 = all(select(vec3<bool>(!any(vec4<bool>(true, true, false, false)), false, true), vec3<bool>(true, func_3(Struct_1(644f, vec2<bool>(false, false), vec3<f32>(150f, var_0.x, 1888f), vec3<bool>(true, true, true), vec4<u32>(4294967295u, u_input.a, 1u, 113708u)), ~vec3<u32>(1u, u_input.a, arg_0), Struct_1(global2[_wgslsmith_index_u32(arg_0, 20u)], vec2<bool>(true, false), vec3<f32>(var_0.x, 336f, var_0.x), vec3<bool>(false, true, true), vec4<u32>(47098u, u_input.a, 49710u, 4294967295u))), false), all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false), select(vec2<bool>(false, true), vec2<bool>(false, false), false)))));
    let var_2 = global1[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 23u)];
    var var_3 = _wgslsmith_mod_vec4_u32(var_2.e, var_2.e);
    var var_4 = ~firstLeadingBit(_wgslsmith_sub_vec4_i32(~vec4<i32>(4992i, global3.x, global3.x, global3.x), reverseBits(~vec4<i32>(global3.x, global3.x, 2147483647i, -1i))));
    return !all(select(select(vec4<bool>(true, false, true, false), vec4<bool>(var_2.b.x, true, var_2.b.x, var_2.b.x), !vec4<bool>(true, var_2.b.x, false, var_1)), select(!vec4<bool>(false, var_2.b.x, false, var_2.d.x), !vec4<bool>(var_1, var_2.b.x, var_2.b.x, false), select(vec4<bool>(var_1, false, true, var_2.d.x), vec4<bool>(false, true, true, var_1), vec4<bool>(var_1, false, var_1, var_1))), true));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 20>();
    let var_0 = global1[_wgslsmith_index_u32(1u, 23u)];
    var var_1 = Struct_1(global2[_wgslsmith_index_u32(14177u, 20u)], select(select(!select(var_0.d.yz, vec2<bool>(true, var_0.d.x), var_0.d.xy), vec2<bool>(func_1(vec2<bool>(var_0.b.x, true), var_0.d, var_0.e), var_0.d.x | var_0.d.x), !var_0.d.x), var_0.b, var_0.b), var_0.c, select(vec3<bool>(!all(vec4<bool>(true, var_0.d.x, true, false)), false, all(var_0.b)), !vec3<bool>(true, any(var_0.d.xx), var_0.d.x), any(var_0.d)), ~firstTrailingBit(firstTrailingBit(vec4<u32>(0u, u_input.a, 4294967295u, 1u))));
    global0 = all(select(vec4<bool>(true, true, select(var_0.d.x, var_0.b.x, var_1.d.x) & func_2(0u), true), select(vec4<bool>(true, true, true, true), !(!vec4<bool>(true, true, var_1.b.x, var_0.b.x)), vec4<bool>(true, -1i < global3.x, true, func_2(var_0.e.x))), ~10008i <= global3.x));
    let var_2 = true;
    var var_3 = min(-global3.x, _wgslsmith_sub_i32(_wgslsmith_div_i32(-46877i, -1i), ~(~global3.x) & 1i));
    global1 = array<Struct_1, 23>();
    var var_4 = Struct_1(_wgslsmith_f_op_f32(var_0.c.x - _wgslsmith_f_op_f32(abs(var_1.c.x))), select(vec2<bool>(func_2(var_1.e.x), all(var_0.b)), select(var_1.b, !vec2<bool>(false, var_0.d.x), var_1.b), any(!vec4<bool>(true, var_2, var_0.b.x, false))), var_0.c, var_0.d, ~(~max(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 0u, var_0.e.x), vec4<u32>(4294967295u, var_1.e.x, 0u, 4294967295u)), var_0.e << (vec4<u32>(var_0.e.x, var_1.e.x, var_1.e.x, 79980u) % vec4<u32>(32u)))));
    global2 = array<f32, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.e.wzw, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -898f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.c.x)), -383f)));
}

