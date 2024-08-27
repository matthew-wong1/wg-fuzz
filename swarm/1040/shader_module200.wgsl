struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
    d: vec2<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: vec4<i32>,
}

struct Struct_4 {
    a: bool,
    b: f32,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 11>;

var<private> global1: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(vec4<bool>(true, false, true, false), Struct_1(-1269f, i32(-2147483648), false, vec2<u32>(4417u, 4294967295u), vec4<f32>(-109f, 326f, 313f, 815f)), vec2<u32>(0u, 24846u)), Struct_2(vec4<bool>(true, true, false, true), Struct_1(-1208f, 21438i, true, vec2<u32>(1u, 56244u), vec4<f32>(-536f, -337f, 2098f, -303f)), vec2<u32>(4294967295u, 4294967295u)), Struct_2(vec4<bool>(false, false, true, false), Struct_1(1338f, -18504i, false, vec2<u32>(4294967295u, 1u), vec4<f32>(-1144f, 1747f, 888f, 438f)), vec2<u32>(12670u, 4294967295u)), Struct_2(vec4<bool>(true, true, true, true), Struct_1(-492f, -24361i, true, vec2<u32>(85498u, 4294967295u), vec4<f32>(155f, -1261f, 1000f, -878f)), vec2<u32>(26516u, 4294967295u)), Struct_2(vec4<bool>(true, true, true, false), Struct_1(-1188f, 1i, true, vec2<u32>(25573u, 0u), vec4<f32>(2040f, 1652f, -394f, 2666f)), vec2<u32>(68879u, 1u)), Struct_2(vec4<bool>(false, true, true, true), Struct_1(-1204f, 40969i, true, vec2<u32>(28117u, 4294967295u), vec4<f32>(-792f, -1377f, 1182f, 138f)), vec2<u32>(20679u, 47598u)), Struct_2(vec4<bool>(true, false, false, false), Struct_1(1584f, 2147483647i, false, vec2<u32>(26044u, 1u), vec4<f32>(789f, -307f, 1819f, 328f)), vec2<u32>(68466u, 21580u)), Struct_2(vec4<bool>(true, false, true, false), Struct_1(-819f, 66938i, false, vec2<u32>(1u, 0u), vec4<f32>(285f, -563f, 1429f, -1878f)), vec2<u32>(0u, 0u)), Struct_2(vec4<bool>(true, true, true, true), Struct_1(-2345f, i32(-2147483648), true, vec2<u32>(53716u, 108803u), vec4<f32>(1697f, 379f, -2017f, -720f)), vec2<u32>(375u, 0u)), Struct_2(vec4<bool>(true, true, false, false), Struct_1(-205f, -1i, true, vec2<u32>(1u, 39276u), vec4<f32>(1000f, -1665f, -1160f, -358f)), vec2<u32>(23265u, 29292u)), Struct_2(vec4<bool>(true, false, false, true), Struct_1(1161f, 1i, true, vec2<u32>(1u, 1u), vec4<f32>(-2861f, -1385f, -309f, 1674f)), vec2<u32>(4294967295u, 4294967295u)), Struct_2(vec4<bool>(true, true, true, false), Struct_1(276f, -92050i, false, vec2<u32>(5420u, 1u), vec4<f32>(-882f, -1257f, -1072f, -616f)), vec2<u32>(0u, 40705u)), Struct_2(vec4<bool>(true, false, true, false), Struct_1(-1119f, -1i, false, vec2<u32>(22027u, 0u), vec4<f32>(-1020f, -1267f, 1056f, -356f)), vec2<u32>(56799u, 2685u)), Struct_2(vec4<bool>(false, false, true, true), Struct_1(816f, i32(-2147483648), true, vec2<u32>(0u, 4294967295u), vec4<f32>(1947f, -1126f, 119f, 421f)), vec2<u32>(0u, 4294967295u)), Struct_2(vec4<bool>(true, false, true, true), Struct_1(1411f, 2147483647i, true, vec2<u32>(25386u, 0u), vec4<f32>(-1727f, -343f, -1119f, -1831f)), vec2<u32>(0u, 4294967295u)), Struct_2(vec4<bool>(false, false, false, false), Struct_1(766f, 93941i, false, vec2<u32>(4294967295u, 8478u), vec4<f32>(-799f, -1040f, -1631f, 459f)), vec2<u32>(4294967295u, 4294967295u)), Struct_2(vec4<bool>(true, true, false, true), Struct_1(-777f, -6917i, true, vec2<u32>(20879u, 30239u), vec4<f32>(532f, -808f, 1903f, -252f)), vec2<u32>(4294967295u, 36354u)), Struct_2(vec4<bool>(false, false, true, true), Struct_1(-1038f, -11250i, true, vec2<u32>(10279u, 4294967295u), vec4<f32>(128f, -672f, -712f, -545f)), vec2<u32>(5802u, 7158u)), Struct_2(vec4<bool>(false, true, false, true), Struct_1(1624f, 1i, false, vec2<u32>(1u, 0u), vec4<f32>(196f, 441f, -1406f, -2959f)), vec2<u32>(53143u, 69110u)), Struct_2(vec4<bool>(true, true, true, true), Struct_1(671f, 0i, true, vec2<u32>(8890u, 1u), vec4<f32>(542f, -729f, -504f, -1420f)), vec2<u32>(4294967295u, 0u)), Struct_2(vec4<bool>(true, true, true, true), Struct_1(-573f, 0i, true, vec2<u32>(0u, 4294967295u), vec4<f32>(-437f, 924f, 1878f, 133f)), vec2<u32>(52217u, 1u)), Struct_2(vec4<bool>(false, false, true, false), Struct_1(-1153f, 0i, true, vec2<u32>(83092u, 53461u), vec4<f32>(-1192f, -326f, -196f, -891f)), vec2<u32>(1u, 4294967295u)), Struct_2(vec4<bool>(false, false, false, true), Struct_1(-376f, 1i, true, vec2<u32>(1u, 39551u), vec4<f32>(2357f, -1129f, -2058f, 1565f)), vec2<u32>(0u, 0u)), Struct_2(vec4<bool>(true, false, false, true), Struct_1(269f, -24088i, true, vec2<u32>(4294967295u, 1u), vec4<f32>(-1165f, 178f, -466f, -465f)), vec2<u32>(33070u, 0u)), Struct_2(vec4<bool>(false, false, false, true), Struct_1(207f, 12364i, true, vec2<u32>(1u, 4294967295u), vec4<f32>(1000f, 336f, -2559f, -1238f)), vec2<u32>(28275u, 4294967295u)), Struct_2(vec4<bool>(true, true, false, false), Struct_1(-1000f, 9468i, true, vec2<u32>(4294967295u, 1u), vec4<f32>(894f, 1663f, 199f, -637f)), vec2<u32>(11012u, 1u)), Struct_2(vec4<bool>(false, true, true, true), Struct_1(-805f, 14550i, false, vec2<u32>(4294967295u, 9314u), vec4<f32>(2576f, 1100f, -254f, -238f)), vec2<u32>(58745u, 1u)), Struct_2(vec4<bool>(false, false, false, false), Struct_1(-379f, 30325i, true, vec2<u32>(38645u, 0u), vec4<f32>(-1000f, -1033f, 642f, 1000f)), vec2<u32>(0u, 13382u)), Struct_2(vec4<bool>(false, false, false, false), Struct_1(-1047f, 25215i, true, vec2<u32>(1u, 0u), vec4<f32>(-730f, 1000f, 1359f, -604f)), vec2<u32>(40463u, 4294967295u)), Struct_2(vec4<bool>(true, true, true, false), Struct_1(-765f, 0i, false, vec2<u32>(0u, 0u), vec4<f32>(-1486f, 638f, 544f, -119f)), vec2<u32>(21722u, 0u)));

var<private> global2: Struct_4 = Struct_4(false, -1995f);

var<private> global3: vec4<f32> = vec4<f32>(-343f, -2399f, 407f, 3000f);

var<private> global4: array<f32, 21> = array<f32, 21>(111f, -1211f, 445f, 1000f, -158f, -1291f, 641f, 1081f, 1275f, -1710f, -409f, 893f, 1200f, -919f, -740f, -1000f, -1000f, -296f, 401f, -1000f, -1375f);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: bool) -> vec3<i32> {
    global2 = Struct_4(arg_2, arg_0.x);
    var var_0 = global1[_wgslsmith_index_u32(arg_1.c.x, 30u)];
    global3 = vec4<f32>(arg_1.b.e.x, _wgslsmith_f_op_f32(min(683f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1061f + 1000f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(var_0.b.e.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1277f * _wgslsmith_f_op_f32(ceil(2709f))), arg_0.x)))), 646f);
    let var_1 = select(!select(var_0.a.zzw, select(arg_1.a.wwy, select(vec3<bool>(false, global2.a, true), var_0.a.zzx, true), !var_0.a.xyz), any(vec3<bool>(false, false, var_0.a.x)) & all(vec3<bool>(true, true, true))), vec3<bool>(!any(!vec2<bool>(var_0.a.x, arg_2)), select(all(!vec3<bool>(true, arg_1.a.x, var_0.a.x)), any(!var_0.a), true), arg_1.b.c), any(!vec2<bool>(all(vec3<bool>(false, true, true)), any(vec4<bool>(arg_1.b.c, arg_2, arg_1.a.x, true)))));
    let var_2 = !select(arg_1.a.yxw, !(!vec3<bool>(true, var_1.x, var_1.x)), !(!select(var_1, var_0.a.xww, var_1.x)));
    return -(~u_input.b >> (vec3<u32>(var_0.c.x, arg_1.c.x, 15514u) % vec3<u32>(32u)));
}

fn func_2(arg_0: vec3<u32>) -> i32 {
    let var_0 = u_input.e.yy;
    let var_1 = Struct_5(-(~func_3(_wgslsmith_f_op_vec3_f32(-global3.zxx), Struct_2(vec4<bool>(false, global2.a, false, false), Struct_1(global4[_wgslsmith_index_u32(8791u, 21u)], 7998i, global2.a, arg_0.zx, vec4<f32>(global4[_wgslsmith_index_u32(arg_0.x, 21u)], global4[_wgslsmith_index_u32(15339u, 21u)], global3.x, global4[_wgslsmith_index_u32(arg_0.x, 21u)])), vec2<u32>(arg_0.x, 18188u)), true)));
    let var_2 = ~vec4<u32>(49851u, _wgslsmith_dot_vec4_u32(~u_input.e, u_input.e), 0u, _wgslsmith_add_u32(var_0.x, ~0u)) << (abs(~vec4<u32>(~35237u, 29410u, ~arg_0.x, ~22839u)) % vec4<u32>(32u));
    let var_3 = _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e.x, ~_wgslsmith_mult_u32(4294967295u, ~var_0.x), ~(~max(var_0.x, 0u)), 1u), ~vec4<u32>(27812u, 1u << (select(var_2.x, arg_0.x, global2.a) % 32u), reverseBits(~var_2.x), ~4294967295u));
    global0 = array<Struct_3, 11>();
    return -var_1.a.x;
}

fn func_1() -> Struct_4 {
    let var_0 = global3.xzz;
    let var_1 = vec4<i32>(u_input.b.x, 17483i, func_2(vec3<u32>(_wgslsmith_sub_u32(u_input.e.x, _wgslsmith_div_u32(u_input.e.x, 41091u)), 1u, u_input.e.x)), -34588i);
    return Struct_4((true || !all(vec2<bool>(false, true))) || global2.a, _wgslsmith_f_op_f32(-global2.b));
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: Struct_3, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = ~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, 17147u, arg_3.d.x, arg_2.a)), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 1u, arg_2.a, arg_2.a), u_input.e), u_input.e, countOneBits(u_input.e))) != 1u;
    global1 = array<Struct_2, 30>();
    global0 = array<Struct_3, 11>();
    global0 = array<Struct_3, 11>();
    global1 = array<Struct_2, 30>();
    return vec2<bool>(all(!(!vec2<bool>(false, var_0))), ((true & func_1().a) != ((arg_2.a == arg_3.d.x) & arg_3.c)) | (select(arg_3.c, !global2.a, arg_0) & true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(-903f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(607f, global4[_wgslsmith_index_u32(57540u, 21u)])) - _wgslsmith_f_op_f32(-2372f * global2.b)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(global3.zxw));
    global0 = array<Struct_3, 11>();
    let var_3 = func_4(true, func_1(), Struct_3(~_wgslsmith_sub_u32(1u, min(u_input.e.x, 9255u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, -406f))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(var_2.zy))))), countOneBits(vec4<i32>(2580i, u_input.c.x, func_2(vec3<u32>(u_input.e.x, 63153u, 0u)), u_input.a.x))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(max(-830f, -533f)))), var_0.x << ((15027u ^ _wgslsmith_sub_u32(u_input.e.x, u_input.e.x)) % 32u), global2.a, max(~select(vec2<u32>(1u, 0u), vec2<u32>(47319u, u_input.e.x), global2.a), _wgslsmith_sub_vec2_u32(u_input.e.zx, vec2<u32>(u_input.e.x, 52848u))), _wgslsmith_div_vec4_f32(vec4<f32>(-314f, func_1().b, -380f, _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.e.x, 21u)] * var_1)), vec4<f32>(404f, var_2.x, _wgslsmith_f_op_f32(448f + 1175f), var_1))));
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-158f, _wgslsmith_f_op_f32(f32(-1f) * -2230f), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(step(-155f, -494f))), vec4<f32>(1025f, _wgslsmith_f_op_f32(exp2(global3.x)), var_1, var_2.x)))));
    var var_4 = Struct_5(u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_mod_i32(26559i, -reverseBits(u_input.a.x)), -u_input.c.x, u_input.c.x), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-713f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -296f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -192f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))))));
}

