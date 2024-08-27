struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: i32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(0u, 11657u, 4294967295u, 1u), vec4<f32>(1945f, 1000f, 359f, 445f), 1i, vec3<u32>(1156u, 0u, 28660u), vec2<i32>(-1i, -1i));

var<private> global1: array<Struct_1, 11>;

var<private> global2: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec4<u32>(1u, 0u, 4712u, 8926u), vec4<f32>(2230f, 238f, -2142f, 737f), -54234i, vec3<u32>(0u, 0u, 4294967295u), vec2<i32>(11467i, -44079i)), Struct_1(vec4<u32>(14262u, 1u, 1u, 80419u), vec4<f32>(464f, 226f, -1000f, 126f), 56486i, vec3<u32>(42708u, 4294967295u, 59700u), vec2<i32>(1i, -3157i)), Struct_1(vec4<u32>(0u, 1u, 4294967295u, 0u), vec4<f32>(885f, -182f, 688f, 1181f), 15577i, vec3<u32>(2228u, 3149u, 158734u), vec2<i32>(40645i, 0i)), Struct_1(vec4<u32>(1u, 0u, 4082u, 46120u), vec4<f32>(307f, 1000f, -504f, -1198f), 31748i, vec3<u32>(16597u, 0u, 14098u), vec2<i32>(2147483647i, -4240i)), Struct_1(vec4<u32>(1u, 42353u, 4294967295u, 1u), vec4<f32>(-1000f, 694f, -267f, -1520f), 0i, vec3<u32>(4294967295u, 38892u, 4294967295u), vec2<i32>(1i, 1014i)), Struct_1(vec4<u32>(12945u, 1u, 33400u, 1u), vec4<f32>(-302f, 112f, 537f, 718f), i32(-2147483648), vec3<u32>(19594u, 12780u, 4294967295u), vec2<i32>(-11010i, 47198i)), Struct_1(vec4<u32>(4010u, 1u, 0u, 31201u), vec4<f32>(-1000f, -1175f, 550f, 742f), 1i, vec3<u32>(0u, 29589u, 38755u), vec2<i32>(36353i, 2147483647i)), Struct_1(vec4<u32>(15808u, 0u, 26469u, 22070u), vec4<f32>(-439f, 568f, -1349f, 251f), 0i, vec3<u32>(1u, 0u, 4294967295u), vec2<i32>(-19204i, -1i)), Struct_1(vec4<u32>(54912u, 1u, 28636u, 71971u), vec4<f32>(126f, 1700f, 1000f, 993f), 12328i, vec3<u32>(51029u, 57936u, 24372u), vec2<i32>(i32(-2147483648), 37198i)), Struct_1(vec4<u32>(4294967295u, 1u, 4294967295u, 1u), vec4<f32>(830f, 910f, 337f, -1000f), 0i, vec3<u32>(25928u, 1u, 1u), vec2<i32>(-35943i, -20576i)), Struct_1(vec4<u32>(0u, 4294967295u, 2836u, 67381u), vec4<f32>(-1080f, 968f, 1122f, 1604f), 1i, vec3<u32>(67096u, 31372u, 75244u), vec2<i32>(-14939i, 0i)), Struct_1(vec4<u32>(4294967295u, 16181u, 41600u, 47479u), vec4<f32>(367f, 1199f, 625f, 103f), -22359i, vec3<u32>(1u, 4294967295u, 11263u), vec2<i32>(1i, -3062i)), Struct_1(vec4<u32>(15699u, 0u, 52825u, 0u), vec4<f32>(-612f, -1337f, -440f, -421f), 2147483647i, vec3<u32>(46900u, 1u, 66889u), vec2<i32>(105698i, 2147483647i)), Struct_1(vec4<u32>(4294967295u, 94421u, 0u, 1u), vec4<f32>(1276f, -1000f, 896f, 917f), 11447i, vec3<u32>(2852u, 12369u, 0u), vec2<i32>(2147483647i, -1i)), Struct_1(vec4<u32>(11972u, 22510u, 4294967295u, 4294967295u), vec4<f32>(1163f, -1020f, 733f, -828f), -4358i, vec3<u32>(0u, 70514u, 34993u), vec2<i32>(33243i, -47313i)), Struct_1(vec4<u32>(1u, 41868u, 0u, 4294967295u), vec4<f32>(-1000f, -828f, 375f, -1192f), 1i, vec3<u32>(16423u, 5799u, 12527u), vec2<i32>(-1466i, i32(-2147483648))), Struct_1(vec4<u32>(49946u, 0u, 41917u, 0u), vec4<f32>(1766f, 884f, -128f, 2311f), -1i, vec3<u32>(0u, 82630u, 8017u), vec2<i32>(-19397i, 2147483647i)), Struct_1(vec4<u32>(52885u, 43251u, 4294967295u, 9385u), vec4<f32>(-2032f, 370f, 256f, -758f), -37167i, vec3<u32>(4294967295u, 1u, 4929u), vec2<i32>(1i, -1i)), Struct_1(vec4<u32>(44444u, 13576u, 49435u, 34234u), vec4<f32>(-623f, 891f, -428f, -286f), 697i, vec3<u32>(0u, 4294967295u, 41226u), vec2<i32>(-270i, 28611i)), Struct_1(vec4<u32>(1u, 0u, 1u, 0u), vec4<f32>(461f, 326f, 459f, 739f), 13960i, vec3<u32>(9591u, 1u, 1u), vec2<i32>(1587i, -2888i)), Struct_1(vec4<u32>(0u, 0u, 31224u, 44100u), vec4<f32>(295f, 1601f, -646f, 1021f), 0i, vec3<u32>(1u, 100104u, 35872u), vec2<i32>(-22009i, 39521i)), Struct_1(vec4<u32>(21117u, 70739u, 25203u, 0u), vec4<f32>(-1000f, -467f, 107f, -1000f), -10214i, vec3<u32>(67164u, 72360u, 455u), vec2<i32>(0i, 68236i)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 86100u, 1u), vec4<f32>(-1000f, 336f, -1035f, -692f), 0i, vec3<u32>(4294967295u, 0u, 12418u), vec2<i32>(34696i, -30793i)), Struct_1(vec4<u32>(4294967295u, 18780u, 0u, 6554u), vec4<f32>(1169f, -1000f, -2726f, -779f), -1i, vec3<u32>(4294967295u, 1u, 0u), vec2<i32>(2147483647i, -94602i)), Struct_1(vec4<u32>(52591u, 1u, 4294967295u, 0u), vec4<f32>(-1000f, -190f, -1051f, -1320f), 41501i, vec3<u32>(1u, 0u, 1u), vec2<i32>(13844i, i32(-2147483648))), Struct_1(vec4<u32>(1u, 5761u, 79029u, 1u), vec4<f32>(690f, 546f, -1000f, -1712f), 1885i, vec3<u32>(1u, 19245u, 4294967295u), vec2<i32>(0i, 0i)), Struct_1(vec4<u32>(5768u, 15608u, 1u, 0u), vec4<f32>(-250f, -1000f, -2343f, 240f), -20043i, vec3<u32>(29189u, 26103u, 51707u), vec2<i32>(24138i, 1i)), Struct_1(vec4<u32>(79364u, 13856u, 0u, 23790u), vec4<f32>(2002f, -502f, 1838f, -2225f), 9117i, vec3<u32>(46620u, 61783u, 23u), vec2<i32>(-51584i, -28995i)));

var<private> global3: array<bool, 15>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = vec4<u32>(arg_2.a.x & 4823u, abs(4294967295u) << (global0.a.x % 32u), reverseBits(arg_0.x) << (arg_2.d.x % 32u), abs(_wgslsmith_clamp_u32(20166u, ~34236u, 4294967295u << (0u % 32u)))) & ~arg_2.a;
    global1 = array<Struct_1, 11>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.b.xz));
    let var_2 = 15812i > min(-_wgslsmith_dot_vec4_i32(vec4<i32>(global0.e.x, 1i, arg_1.e.x, global0.e.x), -vec4<i32>(-49238i, global0.c, -72357i, global0.c)), reverseBits(-_wgslsmith_add_i32(arg_2.e.x, arg_1.c)));
    var var_3 = max(abs(min(var_0.wz, global0.d.xz)), ~(~vec2<u32>(arg_0.x, var_0.x)));
    return 1u;
}

fn func_2() -> Struct_1 {
    global3 = array<bool, 15>();
    let var_0 = vec2<u32>(func_3(global0.a.wy, Struct_1(~vec4<u32>(4851u, global0.d.x, global0.d.x, global0.a.x), _wgslsmith_f_op_vec4_f32(-global0.b), abs(u_input.a.x), _wgslsmith_sub_vec3_u32(global0.a.zzw, global0.a.zzx), vec2<i32>(global0.c, u_input.a.x)), Struct_1(reverseBits(global0.a), global0.b, u_input.a.x | -1i, global0.a.wxz ^ global0.a.wxy, global0.e)), ~global0.a.x) << (~min(~_wgslsmith_div_vec2_u32(vec2<u32>(global0.d.x, global0.d.x), global0.a.wy), global0.d.zz) % vec2<u32>(32u));
    let var_1 = Struct_1(max(vec4<u32>(59335u, var_0.x, global0.d.x, max(~0u, var_0.x & 0u)), ~vec4<u32>(global0.a.x | 4294967295u, 42329u, 0u, ~var_0.x)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b.x, global0.b.x)), -842f, _wgslsmith_div_f32(global0.b.x, _wgslsmith_f_op_f32(trunc(-914f))), -309f), -31842i, abs(global0.a.zzw & vec3<u32>(global0.d.x | global0.a.x, global0.a.x, reverseBits(global0.d.x))), _wgslsmith_mult_vec2_i32(vec2<i32>(6250i, ~abs(global0.c)), ~u_input.a.yy));
    global3 = array<bool, 15>();
    var var_2 = global2[_wgslsmith_index_u32(global0.d.x, 28u)];
    return global1[_wgslsmith_index_u32(~firstTrailingBit(~_wgslsmith_dot_vec4_u32(firstLeadingBit(global0.a), select(var_1.a, var_2.a, global3[_wgslsmith_index_u32(var_1.a.x, 15u)]))), 11u)];
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = firstTrailingBit(global0.e.x);
    var var_1 = vec2<f32>(arg_3.x, _wgslsmith_f_op_f32(-226f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1211f)))));
    global3 = array<bool, 15>();
    let var_2 = func_2();
    global3 = array<bool, 15>();
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: bool, arg_3: vec2<bool>) -> bool {
    let var_0 = select(!all(vec3<bool>(true, true, true)) && arg_2, true, arg_2);
    var var_1 = min(func_1(Struct_1(abs(arg_0.a | global0.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global0.b, vec4<f32>(arg_0.b.x, global0.b.x, -559f, global0.b.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, 1000f, 1000f, global0.b.x))), abs(-31845i), select(~vec3<u32>(arg_0.a.x, 3569u, 4294967295u), global0.a.zxz, false), max(max(global0.e, vec2<i32>(global0.c, arg_1.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.c, global0.e.x), vec2<i32>(global0.e.x, 1i)))), global0.d.x, arg_3.x, _wgslsmith_f_op_vec3_f32(arg_0.b.zwz + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(global0.b.zxx - vec3<f32>(-724f, 635f, -817f)))))).e.x, -2147483647i);
    let var_2 = ~1u;
    var var_3 = global2[_wgslsmith_index_u32(66383u, 28u)];
    var var_4 = Struct_1(func_1(global1[_wgslsmith_index_u32(5866u, 11u)], func_3(~global0.d.zx, func_2(), Struct_1(arg_0.a, vec4<f32>(538f, 2021f, 1000f, global0.b.x), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, arg_1.x), vec2<i32>(arg_1.x, 4206i)), global0.a.wzy, vec2<i32>(u_input.a.x, 38403i))), arg_2, _wgslsmith_div_vec3_f32(func_2().b.xxy, vec3<f32>(-1908f, 628f, func_1(Struct_1(global0.a, vec4<f32>(240f, var_3.b.x, var_3.b.x, -744f), global0.c, global0.d, vec2<i32>(12643i, 28029i)), var_3.a.x, false, global0.b.yzx).b.x))).a, arg_0.b, u_input.a.x >> (0u % 32u), global0.d, -(~(vec2<i32>(-1i, -754i) >> (vec2<u32>(10103u, var_2) % vec2<u32>(32u)))) | arg_0.e);
    return global3[_wgslsmith_index_u32(func_3(global0.d.xz, func_2(), Struct_1(~_wgslsmith_add_vec4_u32(vec4<u32>(25627u, 0u, arg_0.d.x, 64588u), global0.a), _wgslsmith_div_vec4_f32(var_3.b, _wgslsmith_f_op_vec4_f32(-var_4.b)), var_4.c, vec3<u32>(var_3.d.x, var_2, 43926u) | vec3<u32>(var_2, 0u, 40651u), arg_1.yz)), 15u)] || var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global0.a, vec4<u32>(~max(0u, global0.d.x), 1u, global0.d.x, global0.a.x)) << (4294967295u % 32u), 11u)];
    var var_1 = -21289i;
    let var_2 = var_0.b.xw;
    var var_3 = select(!vec3<bool>(false, func_4(func_1(global1[_wgslsmith_index_u32(var_0.a.x, 11u)], var_0.a.x, global3[_wgslsmith_index_u32(global0.a.x, 15u)], vec3<f32>(var_2.x, -1538f, global0.b.x)), min(vec3<i32>(0i, global0.c, 2147483647i), u_input.a), !global3[_wgslsmith_index_u32(1u, 15u)], !vec2<bool>(global3[_wgslsmith_index_u32(27456u, 15u)], global3[_wgslsmith_index_u32(4294967295u, 15u)])), false), vec3<bool>(false, global3[_wgslsmith_index_u32(var_0.d.x, 15u)], ~(-41594i) == global0.c), vec3<bool>(!any(vec3<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 15u)], global3[_wgslsmith_index_u32(33508u, 15u)])), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(~77944u), select(4294967295u, 2732u, !global3[_wgslsmith_index_u32(global0.a.x, 15u)])), 15u)], all(vec3<bool>(all(vec4<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 15u)], global3[_wgslsmith_index_u32(var_0.a.x, 15u)], false)), true, true))));
    var var_4 = min(func_2().d.xx, global0.d.xx);
    let var_5 = !select(!vec4<bool>(global3[_wgslsmith_index_u32(11854u, 15u)] | false, !var_3.x, 1012f <= var_0.b.x, true), select(vec4<bool>(all(var_3.zz), any(vec4<bool>(true, var_3.x, global3[_wgslsmith_index_u32(global0.a.x, 15u)], true)), var_3.x, var_3.x), !(!vec4<bool>(false, var_3.x, true, true)), (2227u <= global0.a.x) || global3[_wgslsmith_index_u32(var_4.x, 15u)]), !all(select(vec4<bool>(global3[_wgslsmith_index_u32(global0.d.x, 15u)], var_3.x, var_3.x, true), vec4<bool>(false, var_3.x, var_3.x, true), false)));
    let x = u_input.a;
    s_output = StorageBuffer(global0.c << (1u % 32u), _wgslsmith_f_op_vec2_f32(var_0.b.xy * _wgslsmith_f_op_vec2_f32(vec2<f32>(363f, _wgslsmith_f_op_f32(-var_2.x)) + global0.b.yw)), vec4<i32>(27971i, -(~var_0.c), abs(-39269i), -u_input.a.x) | vec4<i32>(u_input.a.x, _wgslsmith_mod_i32(-u_input.a.x, _wgslsmith_sub_i32(1i, var_0.e.x)), _wgslsmith_mod_i32(11273i, _wgslsmith_mod_i32(1i, 2147483647i)), -func_2().c), _wgslsmith_mult_vec2_i32(func_2().e | _wgslsmith_mult_vec2_i32(u_input.a.zz, var_0.e), vec2<i32>(global0.c, _wgslsmith_mod_i32(1i, -1i))));
}

