struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: Struct_4,
    d: Struct_3,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, -1i, vec3<u32>(73686u, 86533u, 71533u), 1u);

var<private> global1: array<u32, 31>;

var<private> global2: Struct_2 = Struct_2(Struct_1(false, -43907i, vec3<u32>(34417u, 4294967295u, 1u), 38150u), Struct_1(true, 2147483647i, vec3<u32>(25035u, 704u, 51060u), 54138u), vec2<f32>(-1597f, -1000f), Struct_1(false, -22905i, vec3<u32>(62460u, 4294967295u, 0u), 4294967295u), vec2<u32>(77420u, 0u));

var<private> global3: f32 = -1000f;

var<private> global4: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(Struct_2(Struct_1(true, i32(-2147483648), vec3<u32>(1387u, 4294967295u, 53201u), 4294967295u), Struct_1(true, -2303i, vec3<u32>(1u, 1u, 1u), 0u), vec2<f32>(1904f, -287f), Struct_1(false, -39614i, vec3<u32>(0u, 135153u, 42712u), 1u), vec2<u32>(25590u, 1u)), -260f, vec2<i32>(-33709i, 10045i), vec3<u32>(0u, 4294967295u, 1u), vec4<f32>(-1000f, -1873f, 1203f, 1002f)), Struct_3(Struct_2(Struct_1(false, 0i, vec3<u32>(1u, 1u, 1u), 4294967295u), Struct_1(false, -13960i, vec3<u32>(4294967295u, 1396u, 1u), 76403u), vec2<f32>(576f, 368f), Struct_1(false, i32(-2147483648), vec3<u32>(72509u, 43033u, 44333u), 0u), vec2<u32>(1690u, 18924u)), 2608f, vec2<i32>(2147483647i, 1900i), vec3<u32>(40758u, 0u, 0u), vec4<f32>(419f, -1078f, -368f, -2087f)), Struct_3(Struct_2(Struct_1(false, -33809i, vec3<u32>(4294967295u, 0u, 1u), 12320u), Struct_1(true, 0i, vec3<u32>(4294967295u, 0u, 0u), 1u), vec2<f32>(400f, -989f), Struct_1(true, -21644i, vec3<u32>(70913u, 11214u, 4294967295u), 0u), vec2<u32>(4294967295u, 0u)), -1903f, vec2<i32>(i32(-2147483648), -36431i), vec3<u32>(4294967295u, 57859u, 115681u), vec4<f32>(998f, 1083f, -251f, -1126f)));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_5, arg_2: Struct_5, arg_3: vec4<f32>) -> vec2<u32> {
    var var_0 = arg_2.b;
    global3 = arg_0.c.x;
    let var_1 = _wgslsmith_div_u32(~(~arg_0.d.c.x), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(~global2.b.c.x, 1u), arg_2.c.a.c.x, firstLeadingBit(u_input.b.x) ^ arg_1.e.x)) | 49728u;
    let var_2 = arg_1.d.a.c.x;
    global2 = Struct_2(Struct_1(any(select(!vec3<bool>(arg_1.c.a.a, false, true), vec3<bool>(true, global2.d.a, global2.b.a), select(vec3<bool>(arg_0.b.a, global0.a, global0.a), vec3<bool>(arg_2.d.a.a.a, true, true), vec3<bool>(false, true, false)))), ~select(global0.b & u_input.a.x, ~arg_0.a.b, !arg_0.d.a), ~min(global0.c, global0.c), _wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(arg_0.d.c.x), ~74291u), arg_1.c.a.c.yz)), arg_2.d.a.a, arg_1.d.e.xw, global2.b, ~vec2<u32>(arg_1.c.a.c.x, 0u >> (arg_0.b.d % 32u)));
    return firstTrailingBit(arg_0.b.c.xy);
}

fn func_2(arg_0: vec2<u32>, arg_1: u32) -> Struct_3 {
    global1 = array<u32, 31>();
    var var_0 = global0.a;
    global1 = array<u32, 31>();
    var var_1 = Struct_2(global2.b, global2.b, global2.c, global2.d, ~_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(func_3(Struct_2(global2.d, global2.d, vec2<f32>(-884f, global2.c.x), global2.a, u_input.b.yy), Struct_5(global4[_wgslsmith_index_u32(92691u, 3u)], 1255f, Struct_4(global2.d, true), Struct_3(Struct_2(Struct_1(global0.a, u_input.a.x, vec3<u32>(global0.c.x, global0.c.x, arg_1), arg_0.x), Struct_1(global2.b.a, global0.b, u_input.b.xxz, global2.e.x), vec2<f32>(global2.c.x, 711f), Struct_1(true, global2.b.b, global2.b.c, 46765u), vec2<u32>(arg_1, 64731u)), 1431f, u_input.a.yy, u_input.b.ywy, vec4<f32>(374f, 1237f, global2.c.x, -1510f)), vec2<u32>(arg_0.x, 58756u)), Struct_5(Struct_3(Struct_2(Struct_1(global2.a.a, global2.b.b, global2.a.c, 4294967295u), Struct_1(true, 2147483647i, vec3<u32>(1u, global1[_wgslsmith_index_u32(28842u, 31u)], global2.a.c.x), global1[_wgslsmith_index_u32(global0.d, 31u)]), global2.c, Struct_1(false, global0.b, vec3<u32>(global0.c.x, global2.a.c.x, 74121u), 35541u), global2.d.c.xx), 254f, vec2<i32>(-2147483647i, 23739i), vec3<u32>(8981u, global0.d, 3898u), vec4<f32>(-146f, global2.c.x, global2.c.x, 104f)), -1000f, Struct_4(global2.a, false), global4[_wgslsmith_index_u32(arg_1, 3u)], u_input.b.wx), vec4<f32>(global2.c.x, 107f, 665f, -1238f)), ~vec2<u32>(1u, arg_1)), ~(~vec2<u32>(0u, global2.b.d))));
    var var_2 = Struct_4(global2.a, all(vec2<bool>(_wgslsmith_mult_u32(3642u, 1u) < _wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(arg_0.x, global1[_wgslsmith_index_u32(11257u, 31u)])), !global0.a)));
    return Struct_3(Struct_2(Struct_1(true, _wgslsmith_dot_vec4_i32(~vec4<i32>(5928i, u_input.a.x, global0.b, -20869i), vec4<i32>(-12256i, -30802i, global0.b, u_input.a.x)), ~vec3<u32>(u_input.b.x, 4294967295u, 4294967295u), 9918u), var_2.a, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_1.c + vec2<f32>(-1794f, 245f)))), global2.b, var_2.a.c.yz), global2.c.x, vec2<i32>(_wgslsmith_sub_i32(23400i, ~25735i), firstTrailingBit(reverseBits(i32(-1i) * -29131i))), min(_wgslsmith_div_vec3_u32(u_input.b.xzz, global0.c >> (_wgslsmith_div_vec3_u32(u_input.b.yyw, vec3<u32>(global2.e.x, 82911u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.c.x, 31u)], 31u)])) % vec3<u32>(32u))), _wgslsmith_mult_vec3_u32(var_1.a.c, vec3<u32>(4294967295u, countOneBits(global0.d), 1u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(394f, _wgslsmith_f_op_f32(round(876f)), _wgslsmith_f_op_f32(-global2.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1205f)))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_1.c.x)))), global2.c.x, _wgslsmith_f_op_f32(-941f + _wgslsmith_f_op_f32(max(var_1.c.x, -756f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.x + global2.c.x)))));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: u32, arg_3: vec2<i32>) -> Struct_3 {
    var var_0 = global2.b.b;
    global0 = func_2(vec2<u32>(global0.d, ~56157u) >> (_wgslsmith_add_vec2_u32(vec2<u32>(arg_1.d.x, _wgslsmith_div_u32(arg_2, 4294967295u)), global0.c.zz) % vec2<u32>(32u)), _wgslsmith_mult_u32(arg_1.d.x, 0u)).a.b;
    let var_1 = func_2(max(_wgslsmith_mod_vec2_u32(~(vec2<u32>(35719u, 20587u) | global2.e), arg_1.d.xx), max(global0.c.yy, vec2<u32>(select(global2.a.c.x, arg_1.a.d.c.x, global2.a.a), func_3(arg_1.a, Struct_5(Struct_3(Struct_2(Struct_1(true, u_input.a.x, global2.a.c, 0u), Struct_1(false, global0.b, vec3<u32>(7288u, u_input.b.x, arg_2), global1[_wgslsmith_index_u32(23153u, 31u)]), vec2<f32>(arg_1.a.c.x, 1526f), arg_1.a.a, u_input.b.yx), -155f, vec2<i32>(arg_1.c.x, global2.d.b), arg_1.d, arg_1.e), arg_1.e.x, Struct_4(global2.b, arg_1.a.b.a), Struct_3(Struct_2(Struct_1(true, 38259i, vec3<u32>(1u, 0u, 4294967295u), arg_2), Struct_1(false, global2.a.b, u_input.b.yxy, global0.d), vec2<f32>(417f, global2.c.x), Struct_1(global0.a, arg_0, vec3<u32>(4294967295u, global2.b.c.x, 45393u), 32609u), u_input.b.ww), global2.c.x, u_input.a.xx, vec3<u32>(51859u, 13604u, 1u), vec4<f32>(-187f, 1000f, -708f, 268f)), u_input.b.wy), Struct_5(global4[_wgslsmith_index_u32(global2.e.x, 3u)], arg_1.e.x, Struct_4(arg_1.a.b, global2.a.a), global4[_wgslsmith_index_u32(28533u, 3u)], vec2<u32>(1u, global2.a.d)), arg_1.e).x))), global2.d.d >> (arg_2 % 32u)).a.b;
    return func_2(arg_1.a.a.c.yz, firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_add_u32(4294967295u, arg_2), arg_2)) >> (_wgslsmith_add_u32(reverseBits(global2.e.x), ~firstTrailingBit(1u)) % 32u));
}

fn func_1(arg_0: i32) -> u32 {
    let var_0 = func_4(global0.b, func_2(vec2<u32>(_wgslsmith_dot_vec2_u32(~global2.e, reverseBits(vec2<u32>(u_input.b.x, 11350u))), 0u | _wgslsmith_sub_u32(global2.a.c.x, 0u)), global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_mod_u32(global2.a.c.x, 0u) >> (~4294967295u % 32u)), 31u)]), ~_wgslsmith_div_u32(~50259u, 48738u), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.b, -55871i) & u_input.a.xx, u_input.a.yz ^ vec2<i32>(10045i, -7733i)), reverseBits(57296i)) >> (select(firstTrailingBit(~global0.c.xy), _wgslsmith_div_vec2_u32(~global0.c.zx, ~vec2<u32>(global0.c.x, u_input.b.x)), true) % vec2<u32>(32u)));
    global0 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(global2.c.x)))), -1277f)) < _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-509f))))), u_input.a.x, func_2(global2.e, _wgslsmith_mult_u32(~global0.d, reverseBits(81196u))).a.d.c | (global2.b.c >> ((~vec3<u32>(global2.d.c.x, var_0.a.d.c.x, global0.d) >> (~u_input.b.wzx % vec3<u32>(32u))) % vec3<u32>(32u))), 4294967295u);
    global0 = Struct_1(var_0.a.d.a, u_input.a.x, vec3<u32>(firstLeadingBit(_wgslsmith_div_u32(select(1u, global1[_wgslsmith_index_u32(u_input.b.x, 31u)], global2.a.a), _wgslsmith_mult_u32(global0.d, u_input.b.x))), 4294967295u, _wgslsmith_add_u32(~global2.d.c.x, 1u)), reverseBits(21887u));
    global2 = var_0.a;
    let var_1 = false;
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(22228u >= ~(u_input.b.x ^ select(global2.d.c.x, global2.b.c.x, true)), true, !global0.a);
    global3 = _wgslsmith_f_op_f32(158f + _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.c.x))), 1f), _wgslsmith_f_op_f32(abs(global2.c.x))));
    let var_1 = vec2<bool>(global0.a, !var_0 != global0.a);
    global2 = Struct_2(Struct_1(select(global2.c.x > _wgslsmith_div_f32(global2.c.x, global2.c.x), true, var_1.x), _wgslsmith_dot_vec3_i32(vec3<i32>(select(u_input.a.x, 62632i, false), -2147483647i, ~(-8382i)), ~max(vec3<i32>(-17750i, -44059i, global0.b), u_input.a)), u_input.b.yxy, ~_wgslsmith_mult_u32(1u, u_input.b.x)), Struct_1(global0.a, -2147483647i, ~vec3<u32>(func_1(0i), 33131u, ~global2.d.c.x), 4294967295u), global2.c, global2.b, u_input.b.xy);
    let var_2 = firstTrailingBit(vec2<u32>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_3(func_2(vec2<u32>(63933u, 1u), global1[_wgslsmith_index_u32(u_input.b.x, 31u)]).a, Struct_5(global4[_wgslsmith_index_u32(global2.e.x, 3u)], global2.c.x, Struct_4(Struct_1(true, u_input.a.x, vec3<u32>(4294967295u, 37474u, global0.d), global2.e.x), var_1.x), Struct_3(Struct_2(global2.d, Struct_1(var_1.x, global2.d.b, vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), global1[_wgslsmith_index_u32(12565u, 31u)]), global2.c, Struct_1(var_1.x, u_input.a.x, global0.c, global0.d), vec2<u32>(19338u, global1[_wgslsmith_index_u32(global2.d.c.x, 31u)])), global2.c.x, u_input.a.xz, vec3<u32>(25862u, 4294967295u, global1[_wgslsmith_index_u32(32695u, 31u)]), vec4<f32>(-1000f, 267f, global2.c.x, global2.c.x)), global0.c.zz), Struct_5(Struct_3(Struct_2(global2.d, Struct_1(false, 1i, u_input.b.xyz, 0u), vec2<f32>(global2.c.x, global2.c.x), global2.b, vec2<u32>(9157u, global0.c.x)), 784f, vec2<i32>(0i, 38687i), vec3<u32>(4294967295u, 50894u, u_input.b.x), vec4<f32>(global2.c.x, -1000f, global2.c.x, -1281f)), -1295f, Struct_4(Struct_1(global2.b.a, -1i, vec3<u32>(41295u, 1370u, 4294967295u), 50308u), true), Struct_3(Struct_2(global2.d, global2.a, vec2<f32>(global2.c.x, global2.c.x), Struct_1(true, -2147483647i, vec3<u32>(30302u, 0u, 17056u), 11329u), global0.c.yx), -2159f, u_input.a.zy, global2.b.c, vec4<f32>(-1260f, 965f, global2.c.x, global2.c.x)), vec2<u32>(global2.b.c.x, 143594u)), func_2(global0.c.xx, 102040u).e).x, 13363u), 31u)], global2.d.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(select(vec3<i32>(1i, func_4(u_input.a.x, Struct_3(Struct_2(Struct_1(global2.a.a, -44492i, vec3<u32>(39900u, global2.d.d, u_input.b.x), var_2.x), global2.b, vec2<f32>(global2.c.x, global2.c.x), global2.d, vec2<u32>(30285u, 0u)), 293f, vec2<i32>(global0.b, 23185i), global0.c, vec4<f32>(-298f, global2.c.x, global2.c.x, 269f)), 13045u, vec2<i32>(24426i, -40693i)).a.b.b, global0.b), vec3<i32>(abs(global2.b.b), u_input.a.x ^ global2.a.b, -u_input.a.x), vec3<bool>(var_0, true, select(var_0, false, true))), ~(~u_input.a)));
}

