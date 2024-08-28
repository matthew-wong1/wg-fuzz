struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec3<u32>, 28> = array<vec3<u32>, 28>(vec3<u32>(2262u, 4294967295u, 16345u), vec3<u32>(70879u, 9585u, 0u), vec3<u32>(154537u, 0u, 18071u), vec3<u32>(1u, 26683u, 108217u), vec3<u32>(11997u, 0u, 1u), vec3<u32>(8057u, 30452u, 4294967295u), vec3<u32>(0u, 0u, 0u), vec3<u32>(11933u, 1u, 0u), vec3<u32>(4294967295u, 62068u, 28581u), vec3<u32>(21961u, 0u, 0u), vec3<u32>(0u, 65500u, 4294967295u), vec3<u32>(5830u, 1u, 19809u), vec3<u32>(4294967295u, 1u, 6295u), vec3<u32>(35051u, 1u, 4294967295u), vec3<u32>(37073u, 1u, 1u), vec3<u32>(4294967295u, 4294967295u, 48761u), vec3<u32>(35449u, 0u, 171u), vec3<u32>(113624u, 1u, 1u), vec3<u32>(34163u, 55820u, 0u), vec3<u32>(14711u, 24320u, 3318u), vec3<u32>(1u, 1u, 1u), vec3<u32>(0u, 4294967295u, 57685u), vec3<u32>(18097u, 72904u, 1u), vec3<u32>(4701u, 1u, 48835u), vec3<u32>(97945u, 23974u, 0u), vec3<u32>(1u, 1u, 1u), vec3<u32>(4294967295u, 106735u, 4294967295u), vec3<u32>(30415u, 0u, 2514u));

var<private> global2: Struct_1;

var<private> global3: array<f32, 32> = array<f32, 32>(-1607f, 1074f, -360f, 880f, -752f, 340f, -1559f, -3078f, 880f, 281f, 1211f, 2660f, 901f, -795f, -698f, 523f, 2071f, -252f, -212f, 488f, -1134f, 1077f, 1000f, 1309f, 1000f, 247f, -1411f, 807f, -227f, -1258f, -936f, 373f);

var<private> global4: vec2<u32> = vec2<u32>(20034u, 4294967295u);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_2, arg_3: f32) -> vec2<bool> {
    var var_0 = Struct_1(vec3<i32>(_wgslsmith_div_i32(-48896i, global2.a.x), min(abs(-u_input.b.x), arg_1), ~1i), arg_2.c.d, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_add_u32(arg_2.d.d, _wgslsmith_div_u32(global2.d, ~_wgslsmith_mult_u32(global2.b, arg_2.d.d))), _wgslsmith_dot_vec3_u32(min(~vec3<u32>(1u, 66447u, global4.x), max(vec3<u32>(arg_2.d.b, global2.d, 18044u), global1[_wgslsmith_index_u32(79625u, 28u)])), max(global1[_wgslsmith_index_u32(~global4.x, 28u)], _wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.d, 0u), global1[_wgslsmith_index_u32(global2.b, 28u)]))) >= (48511u ^ countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, global4.x), vec2<u32>(70291u, 2816u)))));
    let var_1 = Struct_2(all(vec4<bool>(524f < arg_0.x, true, true, false)) | !all(select(vec2<bool>(arg_2.b, global2.e), vec2<bool>(true, true), false)), true, Struct_1(~abs(~arg_2.d.a), ~(8892u | ~u_input.d), _wgslsmith_f_op_f32(sign(global2.c)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, global2.d, var_0.d, 4294967295u)), ~reverseBits(vec4<u32>(15170u, 33535u, 4294967295u, var_0.b))), true), Struct_1(vec3<i32>(~_wgslsmith_clamp_i32(-2147483647i, -1i, 2147483647i), 11356i, -(~u_input.b.x)), global2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1462f)) * _wgslsmith_div_f32(1000f, -132f)), 10632u << (_wgslsmith_mod_u32(u_input.d, ~global4.x) % 32u), !(!(true & arg_2.b))));
    var var_2 = var_1.d;
    let var_3 = vec4<i32>(11719i, ~2968i, firstLeadingBit(abs(-2147483647i)), 25091i);
    let var_4 = Struct_2(var_0.e, select(!(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_1.d.d, 32u)] * arg_0.x) == _wgslsmith_f_op_f32(exp2(global2.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c)) == global3[_wgslsmith_index_u32(global4.x, 32u)], false), var_1.d, var_1.c);
    return select(select(!(!select(vec2<bool>(false, false), vec2<bool>(var_0.e, false), var_2.e)), select(vec2<bool>(var_2.e && var_0.e, var_1.d.c >= 983f), !(!vec2<bool>(var_4.d.e, true)), true), var_2.e), vec2<bool>(global2.e, true), select(!vec2<bool>(true, var_1.b), !(!select(vec2<bool>(var_1.b, false), vec2<bool>(arg_2.a, false), true)), select(!(!vec2<bool>(true, var_2.e)), !vec2<bool>(true, arg_2.b), true)));
}

fn func_2() -> Struct_2 {
    var var_0 = u_input.a.x;
    var var_1 = abs(-2147483647i);
    var var_2 = !(!select(!func_3(vec2<f32>(545f, 155f), -2147483647i, Struct_2(true, false, Struct_1(u_input.b.xyw, global2.b, global3[_wgslsmith_index_u32(4294967295u, 32u)], global2.b, global2.e), Struct_1(u_input.b.xxx, 76777u, global3[_wgslsmith_index_u32(15369u, 32u)], 24923u, global2.e)), -1280f), func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(global4.x, 32u)], -1351f) * vec2<f32>(-284f, global2.c)), 23699i, Struct_2(global2.e, global2.e, Struct_1(global2.a, global4.x, -239f, u_input.d, global2.e), Struct_1(u_input.b.zzw, u_input.d, -1807f, u_input.d, global2.e)), _wgslsmith_f_op_f32(f32(-1f) * -254f)), !vec2<bool>(global2.e, global2.e)));
    var var_3 = Struct_1(vec3<i32>(_wgslsmith_add_i32(~global2.a.x, 44063i), 24540i, u_input.b.x), 27951u, -223f, reverseBits(1u), global2.e);
    let var_4 = 49604i;
    return Struct_2(!any(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(805f, global2.c) - vec2<f32>(global2.c, var_3.c)), -1116i ^ var_3.a.x, Struct_2(true, global2.e, Struct_1(vec3<i32>(-6772i, u_input.e, u_input.a.x), global2.d, 235f, 12542u, var_3.e), Struct_1(u_input.b.wxz, var_3.b, -1000f, 4294967295u, var_3.e)), _wgslsmith_f_op_f32(abs(-351f)))), var_4 > reverseBits(i32(-1i) * -10893i), Struct_1(vec3<i32>(var_4, _wgslsmith_mult_i32(2147483647i, global2.a.x) & ~u_input.c.x, var_3.a.x), _wgslsmith_mult_u32(77298u, 12588u), 1000f, firstTrailingBit(~var_3.b ^ 53834u), !select(var_2.x, var_3.d == u_input.d, false)), Struct_1(_wgslsmith_mod_vec3_i32(var_3.a, firstTrailingBit(vec3<i32>(43923i, 61657i, -51580i))), u_input.d | (4294967295u & max(var_3.b, u_input.d)), global3[_wgslsmith_index_u32(global4.x, 32u)], var_3.d, true));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool, arg_3: vec4<i32>) -> u32 {
    let var_0 = arg_1.d.a.x;
    global1 = array<vec3<u32>, 28>();
    let var_1 = Struct_1(-vec3<i32>(abs(~6306i), i32(-1i) * -arg_1.c.a.x, (i32(-1i) * -47577i) & arg_1.c.a.x), ~(4294967295u << (~_wgslsmith_div_u32(1529u, arg_0.c.d) % 32u)), global2.c, 0u, true);
    let var_2 = 1u;
    let var_3 = (vec3<u32>(arg_0.d.d, firstTrailingBit(~arg_0.c.d), 0u) >> (select(vec3<u32>(~2478u, ~arg_1.d.d, u_input.d), abs(~global1[_wgslsmith_index_u32(69693u, 28u)]), !select(vec3<bool>(var_1.e, true, global2.e), vec3<bool>(true, true, true), false)) % vec3<u32>(32u))) | abs(_wgslsmith_sub_vec3_u32(select(vec3<u32>(1u, var_2, var_2), global1[_wgslsmith_index_u32(~20979u, 28u)], arg_0.c.e), vec3<u32>(_wgslsmith_div_u32(var_1.d, 40588u), _wgslsmith_add_u32(41377u, u_input.d), arg_0.c.b | arg_0.d.b)));
    return ~global2.b;
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: vec4<i32>) -> Struct_2 {
    let var_0 = !(!arg_1.e);
    let var_1 = false;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1403f));
    var var_3 = global2.a.x;
    global4 = vec2<u32>(~(~countOneBits(4294967295u)), global4.x) & ~vec2<u32>(~0u, ~arg_1.b);
    return func_2();
}

fn func_6(arg_0: Struct_2) -> Struct_2 {
    let var_0 = Struct_1(-(-u_input.b.yxz >> (~vec3<u32>(global4.x, 15448u, 0u) % vec3<u32>(32u))) ^ (_wgslsmith_add_vec3_i32(global2.a, firstLeadingBit(vec3<i32>(global2.a.x, -22879i, global2.a.x))) >> (~min(vec3<u32>(global4.x, global2.b, 37730u), global1[_wgslsmith_index_u32(23304u, 28u)]) % vec3<u32>(32u))), _wgslsmith_sub_u32(func_2().d.b, 4294967295u), -1000f, countOneBits(4294967295u), true);
    global1 = array<vec3<u32>, 28>();
    var var_1 = -52897i ^ _wgslsmith_sub_i32(-var_0.a.x, ~_wgslsmith_dot_vec3_i32(arg_0.d.a ^ vec3<i32>(global2.a.x, -72819i, 30616i), _wgslsmith_mod_vec3_i32(global2.a, vec3<i32>(1i, 2147483647i, arg_0.d.a.x))));
    return arg_0;
}

fn func_1() -> Struct_2 {
    let var_0 = func_6(func_5(-firstLeadingBit(2147483647i), Struct_1(vec3<i32>(~u_input.c.x, max(0i, u_input.e), -global2.a.x), func_4(Struct_2(false, true, Struct_1(vec3<i32>(global2.a.x, -11313i, u_input.a.x), 10763u, -235f, u_input.d, global2.e), Struct_1(global2.a, u_input.d, global2.c, global4.x, global2.e)), func_2(), func_2().d.e, _wgslsmith_sub_vec4_i32(u_input.b, u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c) - _wgslsmith_f_op_f32(-global2.c)), _wgslsmith_clamp_u32(global2.b, global2.d, 0u) | ~global2.b, global2.e), !any(select(vec2<bool>(global2.e, true), vec2<bool>(false, global2.e), global2.e)), u_input.b));
    global4 = _wgslsmith_div_vec2_u32(reverseBits(_wgslsmith_add_vec2_u32(~vec2<u32>(global2.b, 1643u), ~vec2<u32>(u_input.d, global4.x))) >> (min(~(~vec2<u32>(8814u, global4.x)), max(select(vec2<u32>(23616u, global4.x), vec2<u32>(global2.d, 4294967295u), vec2<bool>(global2.e, false)), ~vec2<u32>(19002u, 4294967295u))) % vec2<u32>(32u)), ~(~max(vec2<u32>(global4.x, 17634u), vec2<u32>(4294967295u, var_0.d.d) & vec2<u32>(global2.d, global4.x))));
    let var_1 = ~vec4<u32>(_wgslsmith_div_u32(min(_wgslsmith_mod_u32(34093u, 4294967295u), 1755u), var_0.c.d), 29866u, 1u, var_0.d.d | ~1u);
    global1 = array<vec3<u32>, 28>();
    let var_2 = 20521i;
    return Struct_2(var_0.b, true, func_5(-u_input.b.x, var_0.d, _wgslsmith_dot_vec2_i32(var_0.c.a.xx, _wgslsmith_clamp_vec2_i32(u_input.b.yz, vec2<i32>(22564i, var_2), vec2<i32>(var_2, global2.a.x))) <= 33123i, vec4<i32>(abs(global2.a.x) & _wgslsmith_mult_i32(-1i, 9261i), abs(var_0.d.a.x), 1i, global2.a.x)).c, var_0.d);
}

fn func_7(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> i32 {
    global3 = array<f32, 32>();
    global3 = array<f32, 32>();
    global2 = Struct_1(vec3<i32>(-2147483647i, _wgslsmith_add_i32(func_2().d.a.x, 0i), 1i), func_1().d.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -782f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-820f + arg_0.c)) + arg_1.c.c)), ~max(~arg_1.c.d, global4.x), func_3(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.c, arg_0.c) * vec2<f32>(-299f, arg_2.c)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global3[_wgslsmith_index_u32(0u, 32u)], arg_0.c), vec2<f32>(-1505f, 1073f))), false)))), -func_1().d.a.x, Struct_2(!(arg_2.e && arg_0.e), !arg_1.a, arg_1.c, func_2().d), 1000f).x);
    global3 = array<f32, 32>();
    global1 = array<vec3<u32>, 28>();
    return u_input.e;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 28>();
    var var_0 = reverseBits(abs(vec4<i32>(u_input.b.x, min(u_input.c.x, -1i ^ u_input.a.x), func_7(Struct_1(vec3<i32>(-23942i, 27637i, global2.a.x), u_input.d, global2.c, global2.d, false), func_1(), Struct_1(global2.a, global2.d, -1733f, 88426u, true)), _wgslsmith_mult_i32(12090i, u_input.c.x))));
    var var_1 = vec3<bool>(select(global2.e, func_6(Struct_2(!global2.e, true, func_5(global2.a.x, Struct_1(var_0.xzy, global4.x, 278f, 49694u, global2.e), false, vec4<i32>(1i, global2.a.x, var_0.x, global2.a.x)).c, func_6(Struct_2(false, false, Struct_1(vec3<i32>(var_0.x, global2.a.x, -16924i), 0u, -441f, global2.d, true), Struct_1(u_input.b.wxx, global4.x, 626f, 45587u, true))).c)).d.e, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3[_wgslsmith_index_u32(global2.d, 32u)], global2.c)) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(212f + global2.c), func_1().c.c)), !global2.e, global2.e);
    let var_2 = global2.c;
    global2 = Struct_1(_wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(var_0.x, var_0.x, u_input.b.x)) & (-u_input.b.zzy << (vec3<u32>(4294967295u, 28287u, u_input.d) % vec3<u32>(32u))), min(vec3<i32>(func_2().d.a.x, ~global2.a.x, var_0.x), vec3<i32>(-2108i, 0i, ~u_input.e))), ~(_wgslsmith_div_u32(u_input.d, ~0u) | 4294967295u), _wgslsmith_f_op_f32(max(-1279f, -1552f)), global4.x, var_1.x);
    let var_3 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global3[_wgslsmith_index_u32(4294967295u, 32u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1354f))) * 479f))));
    var var_4 = vec4<u32>(max(~_wgslsmith_mod_u32(~4294967295u, global2.d), ~_wgslsmith_div_u32(90505u, ~56097u)), 16529u, global2.b, ~267u);
    var_1 = vec3<bool>(select(func_1().c.c < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1253f) * _wgslsmith_f_op_f32(select(global2.c, -1281f, var_1.x))), global2.e, any(!vec3<bool>(global2.e, false, false)) || true), true, func_1().a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(reverseBits(abs(abs(vec4<u32>(var_4.x, global2.b, global4.x, 13094u)))), select(~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 8178u, 4294967295u, global2.d), vec4<u32>(4294967295u, var_4.x, 0u, 4294967295u), vec4<u32>(4294967295u, 1u, var_4.x, 5889u)), vec4<u32>(~4294967295u, 0u | u_input.d, _wgslsmith_mult_u32(u_input.d, 0u), func_4(Struct_2(global2.e, var_1.x, Struct_1(vec3<i32>(var_0.x, var_0.x, -21244i), global4.x, -755f, global4.x, global2.e), Struct_1(vec3<i32>(u_input.a.x, -2147483647i, global2.a.x), global4.x, global2.c, 0u, var_1.x)), Struct_2(global2.e, global2.e, Struct_1(var_0.yyw, 1u, var_3.x, 12446u, global2.e), Struct_1(vec3<i32>(u_input.c.x, 2147483647i, 23104i), global4.x, -1088f, 0u, true)), false, vec4<i32>(var_0.x, -3112i, u_input.c.x, u_input.b.x))), !(!vec4<bool>(false, global2.e, true, false)))));
}

