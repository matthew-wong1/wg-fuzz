struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5> = array<u32, 5>(89529u, 30850u, 25728u, 0u, 6196u);

var<private> global1: i32;

var<private> global2: vec2<f32> = vec2<f32>(-1047f, 705f);

var<private> global3: array<Struct_1, 9>;

var<private> global4: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec2<f32>(-195f, 1518f), vec4<f32>(-209f, 666f, -1094f, 516f)), Struct_1(vec2<f32>(-1210f, 792f), vec4<f32>(864f, -1262f, -1635f, 1280f)), Struct_1(vec2<f32>(246f, -2507f), vec4<f32>(-1000f, -456f, -261f, -1126f)), Struct_1(vec2<f32>(1501f, -200f), vec4<f32>(1172f, 120f, -494f, -555f)), Struct_1(vec2<f32>(453f, -412f), vec4<f32>(352f, -199f, 1779f, -1614f)), Struct_1(vec2<f32>(-218f, 1301f), vec4<f32>(1108f, 1957f, 634f, 1982f)), Struct_1(vec2<f32>(1000f, 115f), vec4<f32>(108f, 628f, -471f, 1356f)), Struct_1(vec2<f32>(-366f, 1745f), vec4<f32>(1250f, 1000f, 1001f, -617f)), Struct_1(vec2<f32>(1000f, -516f), vec4<f32>(-312f, 1283f, 526f, -437f)), Struct_1(vec2<f32>(751f, -1316f), vec4<f32>(1998f, 2031f, -2485f, -1014f)), Struct_1(vec2<f32>(249f, -1000f), vec4<f32>(-825f, -135f, 538f, 464f)), Struct_1(vec2<f32>(443f, 1070f), vec4<f32>(911f, -1020f, -178f, -1001f)), Struct_1(vec2<f32>(-241f, 1000f), vec4<f32>(1000f, -1727f, -1000f, -1129f)), Struct_1(vec2<f32>(640f, -827f), vec4<f32>(-2009f, -1147f, 1383f, -1584f)), Struct_1(vec2<f32>(-1733f, 1388f), vec4<f32>(-151f, -423f, 275f, 637f)), Struct_1(vec2<f32>(1188f, 1000f), vec4<f32>(-982f, -735f, -126f, 1347f)), Struct_1(vec2<f32>(-1468f, 1055f), vec4<f32>(1668f, -351f, -370f, 176f)), Struct_1(vec2<f32>(-1096f, -1156f), vec4<f32>(-1430f, -1000f, 2672f, -659f)), Struct_1(vec2<f32>(-835f, -542f), vec4<f32>(2543f, 1000f, 676f, -1250f)), Struct_1(vec2<f32>(2237f, -190f), vec4<f32>(375f, -778f, 248f, -418f)), Struct_1(vec2<f32>(448f, -485f), vec4<f32>(-382f, -2387f, 856f, 241f)), Struct_1(vec2<f32>(-2172f, -647f), vec4<f32>(-180f, 771f, -1000f, -1778f)), Struct_1(vec2<f32>(-2169f, -738f), vec4<f32>(-1606f, 399f, 1000f, 2446f)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec4<i32>) -> i32 {
    let var_0 = (vec3<u32>(~select(global0[_wgslsmith_index_u32(10185u, 5u)], 0u, arg_1), ~(~0u), _wgslsmith_mult_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(50920u, 5u)], 5u)], 22038u)) >> (_wgslsmith_mult_vec3_u32(u_input.a, ~vec3<u32>(27380u, 4294967295u, u_input.a.x)) % vec3<u32>(32u))) ^ vec3<u32>(global0[_wgslsmith_index_u32(min(~1u, abs(0u)) ^ global0[_wgslsmith_index_u32(96509u, 5u)], 5u)], 25721u, select(global0[_wgslsmith_index_u32(~min(u_input.a.x, 10450u), 5u)], _wgslsmith_mod_u32(countOneBits(u_input.a.x), u_input.a.x & 95u), arg_1));
    global0 = array<u32, 5>();
    global0 = array<u32, 5>();
    global3 = array<Struct_1, 9>();
    var var_1 = arg_1;
    return -45455i;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(4294967295u, 5u)];
    var_0 = ~35980u;
    let var_1 = vec4<i32>(-(65858i | firstTrailingBit(-60711i)) & abs(-24634i), abs(6602i), 1i, _wgslsmith_mod_i32(-1i, reverseBits(-57966i)));
    var var_2 = Struct_1(arg_0.b.wy, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, -1148f, arg_1.a.x, -1853f))))));
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_1.b.wz))) + _wgslsmith_f_op_vec2_f32(-arg_1.a));
    return max(countOneBits(var_1.x), _wgslsmith_add_i32(var_1.x, var_1.x));
}

fn func_1(arg_0: i32) -> u32 {
    var var_0 = -(_wgslsmith_sub_vec4_i32(vec4<i32>(func_2(global4[_wgslsmith_index_u32(4294967295u, 23u)], false, vec4<i32>(-2147483647i, arg_0, 2147483647i, arg_0)), _wgslsmith_mult_i32(-1i, arg_0), func_3(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], 23u)], global4[_wgslsmith_index_u32(0u, 23u)]), arg_0), select(vec4<i32>(arg_0, arg_0, arg_0, arg_0), vec4<i32>(0i, arg_0, arg_0, -37243i), vec4<bool>(false, false, false, false)) << (~vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], u_input.a.x, 65687u, u_input.a.x) % vec4<u32>(32u))) >> (vec4<u32>(~(~1u), _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 5u)], 12755u, 4294967295u), vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 5u)], 5610u)) & _wgslsmith_clamp_u32(0u, 4294967295u, 1u), reverseBits(_wgslsmith_mod_u32(0u, 4294967295u)), 8314u) % vec4<u32>(32u)));
    let var_1 = vec2<i32>(abs(_wgslsmith_add_i32(0i, ~(-13687i) << (0u % 32u))), -(select(var_0.x << (38910u % 32u), ~(-1i), all(vec4<bool>(true, false, false, true))) ^ ((2147483647i >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6389u, 5u)], 5u)] % 32u)) ^ arg_0)));
    var var_2 = arg_0 >> (~_wgslsmith_add_u32(~(global0[_wgslsmith_index_u32(u_input.a.x, 5u)] << (u_input.a.x % 32u)), ~2335u) % 32u);
    var_0 = _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0, var_0.x, var_0.x, -32122i), vec4<i32>(-29574i, 1i, arg_0, var_1.x)) & reverseBits(vec4<i32>(arg_0, var_1.x, arg_0, 32418i)), select(firstTrailingBit(vec4<i32>(arg_0, var_1.x, -27809i, 1i)), ~vec4<i32>(var_0.x, 0i, 7164i, arg_0), global2.x < -1000f)), vec4<i32>(var_1.x, arg_0, -reverseBits(-2147483647i), ~var_0.x)), ~vec4<i32>(~(1i ^ var_0.x), _wgslsmith_dot_vec4_i32(select(vec4<i32>(0i, arg_0, var_1.x, -7223i), vec4<i32>(28804i, arg_0, var_1.x, arg_0), true), _wgslsmith_mult_vec4_i32(vec4<i32>(15980i, var_1.x, var_0.x, var_1.x), vec4<i32>(7834i, var_1.x, -2147483647i, var_0.x))), var_0.x, _wgslsmith_add_i32(0i, arg_0) << (_wgslsmith_sub_u32(1u, u_input.a.x) % 32u)));
    global1 = -40888i;
    return 104278u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(~min(17334u, 29179u), 5u)];
    var_0 = _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(~(_wgslsmith_mod_u32(65463u, ~u_input.a.x) >> (1u % 32u)), 5u)], 10151u);
    var var_1 = ~func_1(6000i);
    global2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(floor(1406f)), global2.x)))));
    var var_2 = global4[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(u_input.a.x, ~global0[_wgslsmith_index_u32(u_input.a.x, 5u)])), 23u)];
    let var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(~reverseBits(-2147483647i), 2147483647i), select(~(-9264i >> (u_input.a.x % 32u)), _wgslsmith_mod_i32(2147483647i, _wgslsmith_mult_i32(9618i, -5207i)), false), 1i), _wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(1i, 61876i, _wgslsmith_add_i32(0i, -33460i))), vec3<i32>(-1i, 1i, 1i), _wgslsmith_mod_vec3_i32(~vec3<i32>(1i, 1i, 1i), -_wgslsmith_clamp_vec3_i32(vec3<i32>(-1526i, -18477i, 2147483647i), vec3<i32>(-2147483647i, -87022i, 2654i), vec3<i32>(0i, -3846i, 938i)))));
    let var_4 = select(~vec4<i32>(-2147483647i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(5891i, -1i, -2147483647i), vec3<i32>(var_3, -1i, 70933i)), -13402i, -var_3, var_3 << (3949u % 32u)), -firstTrailingBit(-vec4<i32>(-2147483647i, var_3, var_3, var_3) ^ abs(vec4<i32>(var_3, var_3, -1i, 10115i))), !(!(_wgslsmith_f_op_f32(max(-854f, global2.x)) <= 1045f)));
    var_1 = ~0u;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(global0[_wgslsmith_index_u32(0u, 5u)]));
}

