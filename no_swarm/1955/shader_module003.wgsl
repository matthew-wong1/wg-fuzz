struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12> = array<u32, 12>(4294967295u, 80446u, 44016u, 1u, 56120u, 4294967295u, 59068u, 3892u, 1u, 26835u, 8196u, 4294967295u);

var<private> global1: bool;

var<private> global2: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec4<u32>(0u, 1u, 4294967295u, 0u), -646f, vec2<bool>(true, false)), Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 3296u), -493f, vec2<bool>(true, true)), Struct_1(vec4<u32>(1u, 85513u, 91467u, 1u), -667f, vec2<bool>(true, false)), Struct_1(vec4<u32>(1u, 1u, 75851u, 8530u), -788f, vec2<bool>(true, true)), Struct_1(vec4<u32>(46907u, 72002u, 12934u, 1u), 1247f, vec2<bool>(false, true)), Struct_1(vec4<u32>(4294967295u, 0u, 66247u, 33796u), 1162f, vec2<bool>(false, true)), Struct_1(vec4<u32>(4294967295u, 0u, 101962u, 1u), -1125f, vec2<bool>(false, false)), Struct_1(vec4<u32>(0u, 45092u, 102380u, 48038u), -1200f, vec2<bool>(false, true)), Struct_1(vec4<u32>(1u, 80094u, 17528u, 37151u), -129f, vec2<bool>(true, true)), Struct_1(vec4<u32>(5100u, 2001u, 0u, 4294967295u), 332f, vec2<bool>(false, true)), Struct_1(vec4<u32>(1u, 45576u, 15658u, 68431u), -286f, vec2<bool>(true, false)), Struct_1(vec4<u32>(3163u, 103738u, 35221u, 16987u), -516f, vec2<bool>(true, true)), Struct_1(vec4<u32>(4294967295u, 1u, 1u, 1u), -1157f, vec2<bool>(true, false)), Struct_1(vec4<u32>(15617u, 8761u, 1u, 0u), 363f, vec2<bool>(true, true)), Struct_1(vec4<u32>(119813u, 26639u, 1u, 4294967295u), 353f, vec2<bool>(true, true)), Struct_1(vec4<u32>(0u, 21614u, 63484u, 17663u), -1000f, vec2<bool>(true, false)), Struct_1(vec4<u32>(1u, 11674u, 90616u, 1u), -710f, vec2<bool>(false, false)), Struct_1(vec4<u32>(105958u, 11560u, 27651u, 27755u), 1000f, vec2<bool>(false, false)), Struct_1(vec4<u32>(4294967295u, 1u, 60100u, 0u), 514f, vec2<bool>(true, false)), Struct_1(vec4<u32>(10030u, 1u, 24762u, 48675u), -1580f, vec2<bool>(false, false)), Struct_1(vec4<u32>(1u, 1447u, 4294967295u, 0u), -415f, vec2<bool>(false, true)), Struct_1(vec4<u32>(5838u, 4294967295u, 17648u, 1u), -1299f, vec2<bool>(false, false)), Struct_1(vec4<u32>(36594u, 4294967295u, 16766u, 1u), 600f, vec2<bool>(false, false)), Struct_1(vec4<u32>(15334u, 30953u, 48945u, 7875u), -450f, vec2<bool>(true, false)), Struct_1(vec4<u32>(2494u, 0u, 4294967295u, 31989u), 1000f, vec2<bool>(true, true)), Struct_1(vec4<u32>(17683u, 1u, 34258u, 0u), 505f, vec2<bool>(false, false)), Struct_1(vec4<u32>(53083u, 49794u, 14331u, 11974u), 436f, vec2<bool>(false, true)), Struct_1(vec4<u32>(0u, 67700u, 1u, 65139u), 513f, vec2<bool>(false, false)), Struct_1(vec4<u32>(2512u, 4294967295u, 4918u, 56146u), -1533f, vec2<bool>(false, true)), Struct_1(vec4<u32>(198u, 1u, 0u, 87710u), -1113f, vec2<bool>(false, false)), Struct_1(vec4<u32>(30719u, 4294967295u, 11016u, 58609u), -1281f, vec2<bool>(false, true)));

var<private> global3: array<f32, 7>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> f32 {
    let var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(32086u, _wgslsmith_mult_u32(select(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e.x, 12u)], 12u)], 26156u, false), global0[_wgslsmith_index_u32(u_input.a, 12u)])), _wgslsmith_div_vec2_u32(u_input.e.zz, ~_wgslsmith_div_vec2_u32(u_input.e.zw, vec2<u32>(45187u, 1u)))), 31u)];
    global1 = all(!vec3<bool>(any(select(vec3<bool>(var_0.c.x, var_0.c.x, true), vec3<bool>(var_0.c.x, true, true), true)), !var_0.c.x && var_0.c.x, u_input.c != 0i));
    var var_1 = select(select(!(!select(vec4<bool>(false, false, var_0.c.x, true), vec4<bool>(var_0.c.x, var_0.c.x, true, var_0.c.x), vec4<bool>(false, var_0.c.x, false, var_0.c.x))), vec4<bool>(true != var_0.c.x, all(vec3<bool>(true, false, var_0.c.x)), false, true), !vec4<bool>(var_0.c.x, true, true, true)), vec4<bool>(true, true, true, true), var_0.c.x);
    global1 = !(!(true | (false & !var_1.x)));
    var_1 = !(!(!select(select(vec4<bool>(false, var_0.c.x, var_0.c.x, var_1.x), vec4<bool>(false, true, var_0.c.x, true), vec4<bool>(var_1.x, true, true, var_1.x)), vec4<bool>(true, false, false, var_1.x), var_0.b > global3[_wgslsmith_index_u32(0u, 7u)])));
    return -631f;
}

fn func_2(arg_0: i32) -> Struct_1 {
    global3 = array<f32, 7>();
    var var_0 = _wgslsmith_f_op_f32(func_3());
    var var_1 = -552f;
    let var_2 = false;
    let var_3 = _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.e.yy, vec2<u32>(u_input.a, u_input.d)), max(u_input.d, u_input.e.x)) >> ((~(~14388u) | _wgslsmith_div_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(41384u, 12u)], 12u)], _wgslsmith_div_u32(1u, u_input.a))) % 32u), 12u)], _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(52053u, 12u)], ~abs(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(60394u, 12u)], 12u)])));
    return global2[_wgslsmith_index_u32(firstLeadingBit(~u_input.d) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(7681u, 0u, 65755u), 46103u), 12u)], countOneBits(~4294967295u), 4294967295u), _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.e.zyw >> (u_input.e.xyx % vec3<u32>(32u)), firstTrailingBit(u_input.e.xzz)), ~u_input.e.ywx, select(reverseBits(u_input.e.ywy), vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 12u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(13096u, 12u)], 12u)], u_input.a), true))) % 32u), 31u)];
}

fn func_4(arg_0: vec2<f32>, arg_1: f32, arg_2: u32, arg_3: Struct_1) -> f32 {
    var var_0 = func_2(3470i);
    var var_1 = u_input.a;
    let var_2 = vec3<i32>(~countOneBits(i32(-1i) * -33608i), -35751i, select(firstLeadingBit(_wgslsmith_clamp_i32(0i, u_input.c >> (0u % 32u), u_input.c)), -u_input.c, false));
    var_1 = ~_wgslsmith_sub_u32(~29198u, _wgslsmith_dot_vec2_u32(~u_input.e.yw, vec2<u32>(reverseBits(1u), abs(12413u))));
    global3 = array<f32, 7>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1446f - -405f), _wgslsmith_f_op_f32(-arg_1))))))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(firstTrailingBit(countOneBits(arg_3.a.x)), 12u)], 7u)], _wgslsmith_f_op_f32(f32(-1f) * -989f))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = arg_1;
    let var_1 = Struct_1(~(~vec4<u32>(~arg_1.a.x, _wgslsmith_mod_u32(var_0.a.x, global0[_wgslsmith_index_u32(arg_0.a.x, 12u)]), 4294967295u, 4294967295u)), _wgslsmith_f_op_f32(func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b, 724f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1312f))), _wgslsmith_f_op_f32(-1321f - _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(reverseBits(global0[_wgslsmith_index_u32(1u, 12u)]), 7u)] + _wgslsmith_f_op_f32(sign(arg_1.b)))), 0u, func_2(firstLeadingBit(u_input.c)))), select(arg_1.c, select(!arg_0.c, var_0.c, !arg_1.c), !arg_0.c));
    let var_2 = select(firstLeadingBit(_wgslsmith_mult_vec3_u32(var_0.a.yxx, _wgslsmith_div_vec3_u32(~vec3<u32>(0u, var_0.a.x, global0[_wgslsmith_index_u32(1u, 12u)]), _wgslsmith_sub_vec3_u32(var_1.a.xxx, vec3<u32>(arg_1.a.x, var_1.a.x, 0u))))), ~_wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(var_0.a.x, arg_0.a.x, 24189u)) >> ((u_input.e.wwy & var_1.a.yyw) % vec3<u32>(32u)), arg_1.a.wzz), select(!select(vec3<bool>(false, var_0.c.x, false), select(vec3<bool>(arg_0.c.x, arg_1.c.x, var_1.c.x), vec3<bool>(var_1.c.x, true, var_1.c.x), vec3<bool>(true, true, false)), arg_0.c.x), !(!select(vec3<bool>(true, true, true), vec3<bool>(arg_0.c.x, arg_1.c.x, arg_0.c.x), vec3<bool>(false, false, arg_1.c.x))), u_input.c > (u_input.c ^ _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, -1i, u_input.c, 0i), vec4<i32>(52508i, -1i, u_input.b.x, u_input.c)))));
    let var_3 = -(~(-(u_input.b.x ^ -11424i)) >> ((_wgslsmith_clamp_u32(max(arg_1.a.x, 70386u), 1u, 0u) ^ arg_1.a.x) % 32u));
    let var_4 = select(_wgslsmith_sub_vec3_i32(min(~max(vec3<i32>(var_3, -54484i, -11652i), vec3<i32>(u_input.b.x, var_3, u_input.b.x)), ~vec3<i32>(0i, var_3, 3515i) >> (vec3<u32>(77967u, global0[_wgslsmith_index_u32(73721u, 12u)], 8012u) % vec3<u32>(32u))), ~vec3<i32>(var_3, -1i, var_3) >> (~var_2 % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(vec3<i32>(min(u_input.b.x, var_3), _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.c, 1i), -2147483647i ^ u_input.b.x), ~_wgslsmith_clamp_i32(u_input.c, u_input.c, var_3)), abs(vec3<i32>(-15528i, 47025i, u_input.b.x) & _wgslsmith_div_vec3_i32(vec3<i32>(-56613i, 1i, var_3), vec3<i32>(u_input.c, var_3, 9268i)))), !select(select(select(vec3<bool>(var_0.c.x, arg_0.c.x, arg_1.c.x), vec3<bool>(true, arg_1.c.x, true), vec3<bool>(true, true, var_1.c.x)), vec3<bool>(true, true, false), vec3<bool>(var_1.c.x, var_0.c.x, arg_1.c.x)), !select(vec3<bool>(var_0.c.x, var_1.c.x, arg_1.c.x), vec3<bool>(true, true, true), vec3<bool>(false, true, var_1.c.x)), true));
    return _wgslsmith_f_op_f32(var_1.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-540f, _wgslsmith_f_op_f32(trunc(arg_0.b)), !var_0.c.x)))));
}

fn func_5(arg_0: Struct_1, arg_1: bool) -> i32 {
    global2 = array<Struct_1, 31>();
    var var_0 = !select(select(vec3<bool>(arg_1, true, global3[_wgslsmith_index_u32(u_input.e.x, 7u)] >= arg_0.b), vec3<bool>(arg_1, any(vec3<bool>(false, true, arg_1)), true | arg_1), true), vec3<bool>(!all(arg_0.c), arg_1 == (arg_0.a.x != global0[_wgslsmith_index_u32(60954u, 12u)]), 900f != _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(38868u, 7u)] - -522f)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, arg_1), 698u <= arg_0.a.x));
    let var_1 = func_2(~u_input.b.x);
    global2 = array<Struct_1, 31>();
    var var_2 = ~64103u | (~(~(0u >> (0u % 32u))) >> (u_input.e.x % 32u));
    return 2843i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(~(~(vec3<i32>(u_input.c, -86231i, -17663i) ^ vec3<i32>(u_input.b.x, u_input.c, -1i))), -abs(vec3<i32>(_wgslsmith_mod_i32(u_input.c, u_input.b.x), select(u_input.b.x, u_input.b.x, false), ~u_input.b.x)), select(!(any(vec2<bool>(false, true)) == true), false, true));
    var var_1 = Struct_1(u_input.e, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.e.x, ~global0[_wgslsmith_index_u32(17498u << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34605u, 12u)], 12u)] % 32u), 12u)]), ~(~(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18521u, 12u)], 12u)] | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 12u)], 12u)]))), 7u)], !vec2<bool>(true, all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true)))));
    global0 = array<u32, 12>();
    let var_2 = 53836u;
    global3 = array<f32, 7>();
    let var_3 = _wgslsmith_add_i32(~_wgslsmith_dot_vec3_i32(~var_0, -var_0), func_5(Struct_1(u_input.e, _wgslsmith_f_op_f32(-1238f + _wgslsmith_f_op_f32(func_1(global2[_wgslsmith_index_u32(93307u, 31u)], global2[_wgslsmith_index_u32(var_1.a.x, 31u)]))), func_2(u_input.c).c), var_1.c.x));
    var var_4 = select((u_input.e | (vec4<u32>(0u, 0u, u_input.d, global0[_wgslsmith_index_u32(1u, 12u)]) >> (u_input.e % vec4<u32>(32u)))) ^ _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(var_1.a, var_1.a), var_1.a), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(var_2, u_input.d, 4294967295u, var_1.a.x), ~u_input.e), _wgslsmith_mod_vec4_u32(u_input.e & vec4<u32>(1u, 47671u, global0[_wgslsmith_index_u32(u_input.d, 12u)], var_1.a.x), vec4<u32>(var_2, u_input.a, 122u, 12286u))), false || (false == (var_0.x < u_input.c))) & ~countOneBits(~abs(vec4<u32>(var_2, var_2, 52829u, global0[_wgslsmith_index_u32(21496u, 12u)])));
    var_1 = Struct_1(_wgslsmith_add_vec4_u32(~(~(vec4<u32>(0u, 4294967295u, var_4.x, 2604u) << (vec4<u32>(26649u, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(54586u, 12u)], 12u)], 0u) % vec4<u32>(32u)))), vec4<u32>(1u, ~(~var_2), var_1.a.x, abs(var_1.a.x))), -1159f, var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(min(var_0, vec3<i32>(var_0.x, ~(~(-1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-28265i, -1i, u_input.c, var_0.x), vec4<i32>(u_input.c, var_3, var_3, var_0.x) & vec4<i32>(16579i, var_0.x, -34130i, 0i)))), _wgslsmith_f_op_f32(var_1.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.b, -430f)))), ~vec3<u32>(firstLeadingBit(abs(46774u)), 15425u, 1u), u_input.c);
}

