struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: vec2<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 13>;

var<private> global1: f32;

var<private> global2: array<Struct_3, 4>;

var<private> global3: Struct_3;

var<private> global4: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(44109u, vec4<f32>(744f, 1297f, -469f, -345f), 189f, vec4<f32>(1453f, 593f, 800f, 2340f), vec3<i32>(859i, 1i, 0i)), Struct_1(13674u, vec4<f32>(-2477f, 1287f, 481f, 1081f), 520f, vec4<f32>(118f, -303f, -486f, -1639f), vec3<i32>(2147483647i, 0i, 19938i)), Struct_1(120237u, vec4<f32>(1000f, 1369f, 853f, -771f), -1894f, vec4<f32>(689f, -1000f, 253f, -2022f), vec3<i32>(-1i, -29990i, 0i)), Struct_1(43776u, vec4<f32>(-1022f, -1455f, 346f, -1495f), -1000f, vec4<f32>(191f, 319f, 2095f, -280f), vec3<i32>(78190i, i32(-2147483648), 0i)), Struct_1(4294967295u, vec4<f32>(-1882f, 998f, 357f, -1000f), 344f, vec4<f32>(-254f, 560f, 1000f, -1096f), vec3<i32>(28927i, 2310i, 1i)), Struct_1(2083u, vec4<f32>(-1000f, 532f, 768f, 1130f), -584f, vec4<f32>(-640f, 1316f, 1225f, 1143f), vec3<i32>(0i, -22313i, 2032i)), Struct_1(0u, vec4<f32>(990f, -476f, -957f, -141f), 491f, vec4<f32>(526f, 1132f, -1207f, -378f), vec3<i32>(-19714i, 0i, 19189i)), Struct_1(0u, vec4<f32>(-1163f, -873f, 1000f, -126f), -292f, vec4<f32>(-1034f, 1021f, -1077f, -1444f), vec3<i32>(5369i, -4984i, -31097i)), Struct_1(4294967295u, vec4<f32>(-878f, 450f, 2179f, -518f), 1052f, vec4<f32>(261f, -942f, 844f, 1501f), vec3<i32>(42919i, -1i, 2147483647i)), Struct_1(39381u, vec4<f32>(1838f, 867f, 964f, 1000f), 737f, vec4<f32>(-737f, -653f, 670f, 179f), vec3<i32>(2147483647i, 0i, 16986i)), Struct_1(0u, vec4<f32>(-1000f, -445f, -225f, 228f), -580f, vec4<f32>(1113f, 827f, -149f, 423f), vec3<i32>(13502i, 1i, 13902i)), Struct_1(12150u, vec4<f32>(-709f, 124f, 783f, -101f), -316f, vec4<f32>(1000f, 1420f, -885f, -1000f), vec3<i32>(i32(-2147483648), 29663i, 2147483647i)), Struct_1(20226u, vec4<f32>(-1176f, 171f, 438f, -375f), -1672f, vec4<f32>(-244f, 258f, 859f, -691f), vec3<i32>(1i, 10489i, 4962i)), Struct_1(4294967295u, vec4<f32>(-508f, 195f, -785f, -123f), 1000f, vec4<f32>(-1000f, -2389f, 948f, -243f), vec3<i32>(-33350i, 16095i, 1i)), Struct_1(21435u, vec4<f32>(-338f, -188f, -547f, -660f), -827f, vec4<f32>(1000f, 291f, -548f, 971f), vec3<i32>(i32(-2147483648), 6395i, 1i)));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> vec4<f32> {
    var var_0 = Struct_3(arg_0.a, ~global3.c.a.e.x, Struct_2(Struct_1(_wgslsmith_mult_u32(u_input.a.x, abs(23337u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.a.b)), _wgslsmith_f_op_f32(-2006f + 771f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-189f, -428f, global3.a.c, arg_0.a.d.x), vec4<f32>(691f, global3.a.b.x, arg_0.a.d.x, arg_0.a.b.x)))), arg_0.a.e)));
    var var_1 = ~_wgslsmith_add_u32(max(reverseBits(global3.a.a), u_input.a.x << (arg_0.a.a % 32u)), _wgslsmith_clamp_u32(arg_0.a.a, max(0u, arg_0.a.a), _wgslsmith_sub_u32(47153u, 1u))) <= _wgslsmith_sub_u32(abs(0u), global3.a.a);
    let var_2 = !(!vec3<bool>(true, !all(vec3<bool>(true, false, true)), true));
    var var_3 = global4[_wgslsmith_index_u32(3656u, 15u)];
    var var_4 = Struct_1(global3.c.a.a, _wgslsmith_f_op_vec4_f32(arg_0.a.d * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.a.d - _wgslsmith_f_op_vec4_f32(-arg_0.a.b)) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-692f, 863f, -391f, var_0.c.a.b.x) + var_0.c.a.d))))), _wgslsmith_f_op_f32(trunc(138f)), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1490f))))), _wgslsmith_f_op_f32(-arg_0.a.d.x), _wgslsmith_f_op_f32(-arg_0.a.d.x), -740f), -vec3<i32>(~1i, var_0.b, 2147483647i));
    return var_0.c.a.b;
}

fn func_2() -> Struct_4 {
    global2 = array<Struct_3, 4>();
    var var_0 = _wgslsmith_add_u32(countOneBits(~u_input.a.x), 1u);
    let var_1 = Struct_4(global3.c.a, global3.c.a, Struct_2(Struct_1(~4294967295u & ~global3.a.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c.a.c, global3.a.d.x, 689f, 718f)) - vec4<f32>(global3.c.a.d.x, global3.a.b.x, -497f, global3.a.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-369f - -1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c.a.b.x, -328f, global3.a.b.x, -1212f)), -vec3<i32>(-2147483647i, -4001i, global3.b))), global3.c.a.a, Struct_2(Struct_1(max(firstLeadingBit(global3.a.a), _wgslsmith_sub_u32(580u, global3.c.a.a)), vec4<f32>(_wgslsmith_f_op_f32(-1275f - -906f), _wgslsmith_f_op_f32(-global3.a.b.x), global3.a.c, _wgslsmith_f_op_f32(select(global3.a.c, global3.c.a.c, true))), global3.a.b.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.b.x, -780f, 2231f, global3.c.a.d.x)), _wgslsmith_f_op_vec4_f32(func_3(global3.c, 1i))), vec3<i32>(-1i) * -global3.c.a.e)));
    let var_2 = select(vec2<bool>(!all(vec2<bool>(true, true)), all(vec3<bool>(false, false, true)) & all(vec2<bool>(true, true))), vec2<bool>(all(vec4<bool>(any(vec2<bool>(true, true)), false, false, global3.a.b.x != -1302f)), !(42742u < ~var_1.b.a)), true && (abs(max(global3.c.a.e.x, 2147483647i)) == -(~global3.c.a.e.x)));
    global0 = array<vec2<u32>, 13>();
    return var_1;
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_4, arg_3: Struct_4) -> f32 {
    global4 = array<Struct_1, 15>();
    global4 = array<Struct_1, 15>();
    let var_0 = Struct_2(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(u_input.a.wy, _wgslsmith_mod_vec2_u32(vec2<u32>(arg_3.b.a, arg_2.b.a), vec2<u32>(u_input.a.x, arg_0.x))), 4294967295u, (0u | arg_3.e.a.a) & ~arg_2.a.a), min(~arg_0.x, ~arg_3.b.a) | u_input.a.x), 15u)]);
    let var_1 = func_2();
    let var_2 = (~firstTrailingBit(vec3<u32>(8166u, arg_3.c.a.a, arg_3.a.a) ^ u_input.a.yzy) >> (_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(u_input.a.xzz, _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 1u, var_1.d), vec3<u32>(var_1.a.a, 0u, arg_2.b.a))), u_input.a.wzx >> (u_input.a.wzx % vec3<u32>(32u))) % vec3<u32>(32u))) >> (firstLeadingBit(_wgslsmith_mult_vec3_u32(~(~vec3<u32>(global3.a.a, 43358u, var_1.b.a)), u_input.a.yxz)) % vec3<u32>(32u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3.c.a.c * var_0.a.c))))) + _wgslsmith_f_op_f32(-130f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_1, global3.c.a.b.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, all(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false)) || true);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(global3.c.a.b, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.d.x, global3.c.a.d.x, 1000f, global3.a.d.x)))))) + vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(global3.a.a, 13u)], global3.a.b.x, Struct_4(Struct_1(u_input.a.x, global3.c.a.b, -1000f, vec4<f32>(global3.c.a.b.x, -963f, global3.c.a.b.x, global3.a.c), global3.c.a.e), global4[_wgslsmith_index_u32(global3.a.a, 15u)], Struct_2(global4[_wgslsmith_index_u32(1u, 15u)]), global3.a.a, Struct_2(global3.c.a)), Struct_4(global3.a, Struct_1(global3.c.a.a, vec4<f32>(531f, global3.a.d.x, global3.c.a.c, 1207f), 1000f, vec4<f32>(-1247f, 946f, global3.a.d.x, -413f), vec3<i32>(global3.a.e.x, -1i, 14656i)), Struct_2(global4[_wgslsmith_index_u32(global3.a.a, 15u)]), u_input.a.x, Struct_2(global4[_wgslsmith_index_u32(u_input.a.x, 15u)]))))))), global3.c.a.c, global3.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-189f, 625f)) - 923f))));
    var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global3.c.a.b - global3.a.d), global3.a.d, !vec4<bool>(var_0.x, var_0.x, true, var_0.x)))))), vec4<f32>(_wgslsmith_f_op_f32(global3.a.b.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1030f) - -111f)), _wgslsmith_f_op_f32(func_2().e.a.b.x - global3.a.d.x), _wgslsmith_f_op_f32(floor(-1288f)), var_1.x));
    global3 = global2[_wgslsmith_index_u32(global3.c.a.a, 4u)];
    global1 = _wgslsmith_f_op_f32(ceil(global3.a.d.x));
    global1 = _wgslsmith_f_op_f32(-global3.c.a.d.x);
    var_0 = vec2<bool>(true, true);
    global0 = array<vec2<u32>, 13>();
    let var_2 = global3.a.d.zxz;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec3<i32>(global3.c.a.e.x, max(global3.a.e.x, global3.a.e.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, global3.c.a.e.x, global3.c.a.e.x), vec4<i32>(global3.c.a.e.x, -32803i, -76919i, 10373i)) | ~global3.a.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(-1864f, global3.a.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.x, var_2.x)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1((u_input.a.xx & vec2<u32>(76188u, u_input.a.x)) << (global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, global3.c.a.a), 13u)] % vec2<u32>(32u)), var_2.x, func_2(), Struct_4(func_2().a, global3.c.a, Struct_2(global3.c.a), firstLeadingBit(global3.a.a), global3.c))))), _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(abs(vec2<i32>(global3.b, 0i)), firstLeadingBit(vec2<i32>(global3.c.a.e.x, global3.a.e.x)), -global3.c.a.e.zz) & (_wgslsmith_clamp_vec2_i32(vec2<i32>(-27617i, global3.c.a.e.x), vec2<i32>(2147483647i, -2147483647i), vec2<i32>(global3.c.a.e.x, global3.c.a.e.x)) | vec2<i32>(global3.b, global3.b)), abs(firstLeadingBit(global3.a.e.yy) & vec2<i32>(global3.c.a.e.x, global3.c.a.e.x))), vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1081f))), var_1.x));
}

