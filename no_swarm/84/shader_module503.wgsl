struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: vec3<f32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 19> = array<Struct_4, 19>(Struct_4(false, 33020i, vec3<f32>(-1180f, -566f, 166f), vec2<bool>(false, true)), Struct_4(false, 1i, vec3<f32>(512f, 1331f, -743f), vec2<bool>(false, true)), Struct_4(false, 1i, vec3<f32>(-1348f, -1036f, 1000f), vec2<bool>(false, false)), Struct_4(true, -45101i, vec3<f32>(-1221f, 914f, -991f), vec2<bool>(false, true)), Struct_4(true, 1i, vec3<f32>(1336f, -322f, -555f), vec2<bool>(false, true)), Struct_4(false, -1i, vec3<f32>(-328f, 928f, 1116f), vec2<bool>(true, true)), Struct_4(true, 0i, vec3<f32>(-944f, -1046f, 1380f), vec2<bool>(false, true)), Struct_4(false, 0i, vec3<f32>(591f, 1278f, 2001f), vec2<bool>(false, false)), Struct_4(false, -31340i, vec3<f32>(-1258f, -150f, 1000f), vec2<bool>(true, true)), Struct_4(false, 4703i, vec3<f32>(1092f, -560f, 457f), vec2<bool>(true, true)), Struct_4(true, 2147483647i, vec3<f32>(668f, 1031f, 2985f), vec2<bool>(false, false)), Struct_4(false, -21922i, vec3<f32>(219f, -1562f, 138f), vec2<bool>(true, false)), Struct_4(true, 0i, vec3<f32>(-893f, -1000f, -1186f), vec2<bool>(false, true)), Struct_4(true, -1i, vec3<f32>(1964f, -1130f, 1232f), vec2<bool>(false, false)), Struct_4(false, 27737i, vec3<f32>(276f, -989f, -144f), vec2<bool>(false, false)), Struct_4(true, -1i, vec3<f32>(-307f, 1922f, 1659f), vec2<bool>(false, false)), Struct_4(false, 13256i, vec3<f32>(661f, -119f, -481f), vec2<bool>(false, false)), Struct_4(true, 2147483647i, vec3<f32>(-1344f, 322f, 1000f), vec2<bool>(true, true)), Struct_4(true, -1i, vec3<f32>(-1145f, -1679f, -275f), vec2<bool>(true, true)));

var<private> global1: vec3<i32>;

var<private> global2: array<vec2<bool>, 22>;

var<private> global3: array<u32, 15>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<f32>, arg_1: f32) -> vec4<i32> {
    global2 = array<vec2<bool>, 22>();
    global3 = array<u32, 15>();
    var var_0 = select(vec3<bool>(all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), all(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(40602u, 15u)], 15u)], 22u)]))), true, _wgslsmith_f_op_f32(step(arg_1, 742f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), vec3<bool>(true, true, true), !(true == (~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 15u)], 15u)], 15u)] != global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 27720u, 33003u), 15u)])));
    var var_1 = global1.x;
    global3 = array<u32, 15>();
    return vec4<i32>(-847i, -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -695i) << (min(vec2<u32>(3682u, u_input.b), vec2<u32>(115857u, global3[_wgslsmith_index_u32(82340u, 15u)])) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(global1.zx, _wgslsmith_add_vec2_i32(vec2<i32>(global1.x, 1i), global1.zy), global1.zz)), global1.x) | -vec4<i32>(-1i, _wgslsmith_mod_i32(~0i, reverseBits(global1.x)), select(abs(-2147483647i), _wgslsmith_clamp_i32(global1.x, global1.x, global1.x), arg_0.x == -686f), global1.x);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<f32>) -> f32 {
    var var_0 = Struct_2(~(~vec4<u32>(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 74419u, global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, u_input.a), 15u)], ~u_input.a)), Struct_1(_wgslsmith_mod_vec4_i32(~vec4<i32>(global1.x, global1.x, -10026i, global1.x), func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_1.x, arg_0.x, arg_0.x) + vec4<f32>(-1144f, arg_0.x, 414f, 216f)), _wgslsmith_f_op_f32(select(-513f, 603f, false))))), ~vec3<u32>(abs(global3[_wgslsmith_index_u32(u_input.b, 15u)]), ~4294967295u, 1u));
    global3 = array<u32, 15>();
    var var_1 = true || ((select(min(35878i, global1.x), 1i, all(vec2<bool>(false, false))) >= _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(var_0.b.a.wwz, vec3<i32>(global1.x, 1236i, 42153i)), _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, -7182i, var_0.b.a.x), vec3<i32>(global1.x, 0i, 1i)))) || !(!(global3[_wgslsmith_index_u32(0u, 15u)] > var_0.c.x)));
    var var_2 = vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.b, 0u), 15u)], ~_wgslsmith_div_u32(u_input.a, 0u)), var_0.c), _wgslsmith_mod_u32(abs(min(u_input.a, _wgslsmith_mod_u32(var_0.c.x, 5015u))), firstTrailingBit(0u)), var_0.c.x, 30974u);
    var_0 = Struct_2(vec4<u32>(abs(var_0.c.x), global3[_wgslsmith_index_u32(max(var_2.x, ~var_0.c.x ^ var_2.x), 15u)], firstLeadingBit(~global3[_wgslsmith_index_u32(4294967295u, 15u)] << (0u % 32u)), ~(~_wgslsmith_mod_u32(1u, 81190u))), var_0.b, vec3<u32>(var_2.x, 3362u, ~(~_wgslsmith_dot_vec3_u32(var_2.xxz, var_2.yyx))));
    return arg_0.x;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec3<bool>) -> f32 {
    let var_0 = global1.xx;
    let var_1 = Struct_3(arg_2.x);
    global1 = vec3<i32>(_wgslsmith_mod_i32(~(i32(-1i) * -15849i) >> ((countOneBits(0u) & min(global3[_wgslsmith_index_u32(u_input.b, 15u)], u_input.b)) % 32u), _wgslsmith_mult_i32(global1.x, _wgslsmith_add_i32(_wgslsmith_mod_i32(var_0.x, arg_0.a.x), ~3147i))), global1.x, ~54014i);
    var var_2 = -1390f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.x + 1487f)))))));
}

fn func_1(arg_0: u32, arg_1: vec4<i32>, arg_2: vec2<u32>, arg_3: vec4<u32>) -> Struct_3 {
    global2 = array<vec2<bool>, 22>();
    let var_0 = _wgslsmith_f_op_f32(func_4(Struct_1(arg_1), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(408f - 823f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(vec3<f32>(512f, 955f, 1000f), vec3<f32>(963f, 1976f, -1038f))))), 1000f)), select(vec3<bool>(_wgslsmith_f_op_f32(step(2217f, -1296f)) <= 1f, all(vec3<bool>(true, true, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), true)));
    global3 = array<u32, 15>();
    let var_1 = Struct_1(arg_1);
    global2 = array<vec2<bool>, 22>();
    return Struct_3(all(vec4<bool>(_wgslsmith_add_i32(arg_1.x, arg_1.x) < max(var_1.a.x, global1.x), true, false, true)));
}

fn func_5(arg_0: Struct_3) -> Struct_2 {
    return Struct_2(vec4<u32>(1u, 0u, ~max(select(13940u, u_input.b, arg_0.a), ~global3[_wgslsmith_index_u32(13214u, 15u)]), 1u), Struct_1(vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(vec4<i32>(global1.x, -51159i, 13712i, 1i), vec4<i32>(-74664i, global1.x, global1.x, 45837i))), vec3<u32>(abs(u_input.b), ~_wgslsmith_mod_u32(~11750u, ~global3[_wgslsmith_index_u32(4294967295u, 15u)]), global3[_wgslsmith_index_u32(abs(4294967295u), 15u)]));
}

fn func_6(arg_0: Struct_2) -> Struct_1 {
    let var_0 = !func_1(~(~25318u) | _wgslsmith_clamp_u32(u_input.a, 20828u, 30119u | arg_0.a.x), func_5(func_1(~arg_0.a.x, -arg_0.b.a, _wgslsmith_sub_vec2_u32(vec2<u32>(110369u, global3[_wgslsmith_index_u32(arg_0.a.x, 15u)]), arg_0.c.zx), arg_0.a >> (arg_0.a % vec4<u32>(32u)))).b.a, arg_0.a.yw << (arg_0.c.zy % vec2<u32>(32u)), ~arg_0.a & ~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 4294967295u, 3988u, 0u), arg_0.a)).a;
    let var_1 = var_0;
    let var_2 = true;
    global0 = array<Struct_4, 19>();
    let var_3 = Struct_3(!(true && all(global2[_wgslsmith_index_u32(1u, 22u)])));
    return func_5(func_1(18462u, _wgslsmith_add_vec4_i32(-vec4<i32>(global1.x, 2147483647i, arg_0.b.a.x, -21568i), _wgslsmith_clamp_vec4_i32(arg_0.b.a, vec4<i32>(global1.x, 0i, global1.x, arg_0.b.a.x), -vec4<i32>(arg_0.b.a.x, 80996i, arg_0.b.a.x, arg_0.b.a.x))), _wgslsmith_div_vec2_u32(~vec2<u32>(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 15u)], 15u)]) << (vec2<u32>(18154u, 20661u) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, arg_0.a.x), vec2<u32>(48429u, 87414u)), vec2<u32>(u_input.a, arg_0.a.x))), vec4<u32>(_wgslsmith_div_u32(max(u_input.b, arg_0.c.x), ~1u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(25101u, u_input.a, 43566u), vec3<u32>(0u, global3[_wgslsmith_index_u32(u_input.b, 15u)], 19480u)), abs(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(1u, 15u)], 15u)]), ~global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 0u, 1u), 15u)]))).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.x;
    let var_1 = func_6(func_5(func_1(abs(~4294967295u), _wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(global1.x, global1.x, global1.x, 1i)), _wgslsmith_mod_vec4_i32(vec4<i32>(15601i, 614i, -1i, global1.x), vec4<i32>(global1.x, -12573i, global1.x, -1i))), abs(vec2<u32>(4294967295u, global3[_wgslsmith_index_u32(1u, 15u)])), ~(~vec4<u32>(global3[_wgslsmith_index_u32(u_input.a, 15u)], 5283u, global3[_wgslsmith_index_u32(13812u, 15u)], u_input.a)))));
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(global1.x, 0i, -2147483647i, var_1.a.x), _wgslsmith_add_vec4_i32(vec4<i32>(0i, -1i, global1.x, global1.x), var_1.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(473f, -1179f, -697f) - vec3<f32>(-2328f, -539f, 1000f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(335f, -1354f, -1000f), vec3<f32>(837f, -1501f, 1192f)))))), vec3<bool>(true, true, true)))));
    var var_3 = Struct_2(vec4<u32>(_wgslsmith_div_u32(select(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, u_input.a), 15u)], u_input.a, all(vec3<bool>(true, true, true))), _wgslsmith_add_u32(~global3[_wgslsmith_index_u32(84937u, 15u)], ~4294967295u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, u_input.a, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(42932u, 15u)], 15u)], 15u)], 4294967295u), ~vec4<u32>(4294967295u, u_input.b, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(10905u, 15u)], 15u)], 1u) << ((vec4<u32>(global3[_wgslsmith_index_u32(u_input.b, 15u)], u_input.b, 0u, global3[_wgslsmith_index_u32(0u, 15u)]) | vec4<u32>(1u, 32786u, u_input.a, u_input.b)) % vec4<u32>(32u))), 29796u, firstTrailingBit(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(32557u, 91524u), 15u)])), var_1, countOneBits(firstTrailingBit(func_5(Struct_3(true)).a.wzw)));
    let var_4 = vec3<i32>(51352i, ((~1i ^ firstTrailingBit(19634i)) >> (1u % 32u)) | (firstTrailingBit(-14865i) | _wgslsmith_clamp_i32(-2147483647i, abs(var_1.a.x), ~global1.x)), var_1.a.x);
    let var_5 = func_1(abs(func_5(func_1(38248u, var_1.a, var_3.a.zz, vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 15u)], global3[_wgslsmith_index_u32(u_input.a, 15u)], 4294967295u, 26007u))).c.x >> (_wgslsmith_mod_u32(~1u, ~1u) % 32u)), vec4<i32>(-firstLeadingBit(-41632i), reverseBits(countOneBits(-var_4.x)), func_5(func_1(u_input.b, vec4<i32>(var_1.a.x, global1.x, var_4.x, -9736i), ~vec2<u32>(16369u, 0u), max(var_3.a, var_3.a))).b.a.x, ~func_6(func_5(Struct_3(true))).a.x), ~min(~vec2<u32>(4294967295u, 29807u), var_3.a.zy) ^ _wgslsmith_sub_vec2_u32(~(vec2<u32>(4204u, global3[_wgslsmith_index_u32(var_3.a.x, 15u)]) ^ vec2<u32>(0u, 1u)), vec2<u32>(_wgslsmith_dot_vec3_u32(var_3.a.xww, var_3.a.wwy), max(1u, var_3.c.x))), var_3.a);
    let var_6 = _wgslsmith_div_u32(~1u, ~(~15580u));
    let x = u_input.a;
    s_output = StorageBuffer(~var_6, vec3<f32>(-1923f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(178f, -1657f))), _wgslsmith_f_op_f32(f32(-1f) * -540f)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec3<f32>(1572f, -195f, -817f), vec3<f32>(2462f, -2085f, 1000f))), -161f), _wgslsmith_f_op_f32(f32(-1f) * -392f))), _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(17247u, 0u, var_6), ~u_input.a), vec2<u32>(0u >> (global3[_wgslsmith_index_u32(1u, 15u)] % 32u), 4294967295u)), _wgslsmith_sub_vec2_u32(firstLeadingBit(select(var_3.c.xy, var_3.c.yx, global2[_wgslsmith_index_u32(61309u, 22u)])), ~var_3.a.xw)));
}

