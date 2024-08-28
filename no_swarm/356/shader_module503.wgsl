struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13>;

var<private> global1: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(0u), Struct_4(0u), Struct_4(1u), Struct_4(4294967295u), Struct_4(34274u), Struct_4(52271u), Struct_4(49259u), Struct_4(0u), Struct_4(35559u), Struct_4(1u), Struct_4(40147u), Struct_4(719u), Struct_4(27460u), Struct_4(21439u), Struct_4(111105u), Struct_4(20110u), Struct_4(18553u));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -294f)))));
    global0 = array<u32, 13>();
    var var_1 = _wgslsmith_f_op_f32(trunc(180f));
    global0 = array<u32, 13>();
    let var_2 = _wgslsmith_dot_vec4_u32((vec4<u32>(min(global0[_wgslsmith_index_u32(34105u, 13u)], 21104u), global0[_wgslsmith_index_u32(arg_1, 13u)] >> (arg_1 % 32u), ~arg_1, ~1u) & vec4<u32>(firstTrailingBit(global0[_wgslsmith_index_u32(0u, 13u)]), ~0u, 0u, arg_1)) ^ vec4<u32>(firstTrailingBit(_wgslsmith_div_u32(4294967295u, 28910u)), ~_wgslsmith_add_u32(arg_1, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(77380u, 13u)], 13u)]), global0[_wgslsmith_index_u32(max(_wgslsmith_mult_u32(9737u, 0u), arg_1), 13u)], firstTrailingBit(_wgslsmith_div_u32(4294967295u, global0[_wgslsmith_index_u32(arg_1, 13u)]))), ~(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 4294967295u, arg_1, 31380u), ~vec4<u32>(arg_1, 4294967295u, arg_1, 3153u)) & vec4<u32>(_wgslsmith_mod_u32(24579u, global0[_wgslsmith_index_u32(0u, 13u)]), ~56116u, 1u, 0u)));
    return abs(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(min(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(1u, 13u)], arg_1) >> (reverseBits(var_2) % 32u), ~4294967295u << (var_2 % 32u)), ~_wgslsmith_mult_u32(46241u, var_2) << (~(~var_2) % 32u), arg_1), 13u)]);
}

fn func_2(arg_0: Struct_4) -> Struct_5 {
    let var_0 = true;
    var var_1 = Struct_2(Struct_1(firstTrailingBit(~abs(vec2<i32>(u_input.a.x, u_input.a.x))), firstTrailingBit(10855i ^ u_input.a.x), abs(-countOneBits(u_input.a.x))), Struct_1(firstTrailingBit(~(vec2<i32>(u_input.a.x, u_input.a.x) << (vec2<u32>(73949u, 46177u) % vec2<u32>(32u)))), u_input.a.x, _wgslsmith_div_i32(firstLeadingBit(u_input.a.x), -u_input.a.x)), vec4<u32>(49473u, _wgslsmith_div_u32(global0[_wgslsmith_index_u32(arg_0.a, 13u)], _wgslsmith_div_u32(~55909u, 45572u)), 36247u, 45765u), -_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 0i), vec3<i32>(u_input.a.x, u_input.a.x, 0i)), abs(vec3<i32>(u_input.a.x, -1i, u_input.a.x))) << (firstTrailingBit(vec3<u32>(~arg_0.a, ~0u, 68976u)) % vec3<u32>(32u)), min(vec3<i32>(i32(-1i) * -2147483647i, _wgslsmith_add_i32(_wgslsmith_sub_i32(27367i, 0i), 20678i), 1i ^ _wgslsmith_dot_vec2_i32(u_input.a, u_input.a)), min(vec3<i32>(~u_input.a.x, ~u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, ~u_input.a.x, -1i ^ u_input.a.x))));
    var var_2 = 1i;
    let var_3 = Struct_2(var_1.a, Struct_1(var_1.b.a, min(-23199i, 0i), ~0i), vec4<u32>(arg_0.a & ~_wgslsmith_clamp_u32(0u, var_1.c.x, 43861u), func_3(var_1.b, _wgslsmith_add_u32(global0[_wgslsmith_index_u32(var_1.c.x, 13u)], global0[_wgslsmith_index_u32(0u, 13u)]) | reverseBits(11803u), var_0), max(_wgslsmith_mod_u32(_wgslsmith_div_u32(var_1.c.x, 1u), _wgslsmith_mult_u32(var_1.c.x, 58457u)), arg_0.a), var_1.c.x), vec3<i32>(max(var_1.b.b, countOneBits(2147483647i)), var_1.e.x, ~(i32(-1i) * -1i)), _wgslsmith_div_vec3_i32(abs(firstLeadingBit(-vec3<i32>(u_input.a.x, -36570i, 2147483647i))), var_1.e << (max(~vec3<u32>(4294967295u, 12297u, 1u), vec3<u32>(2641u, var_1.c.x, var_1.c.x)) % vec3<u32>(32u))));
    global1 = array<Struct_4, 17>();
    return Struct_5(var_3.b, Struct_4(37462u));
}

fn func_4(arg_0: Struct_5, arg_1: vec4<i32>) -> Struct_2 {
    global0 = array<u32, 13>();
    let var_0 = Struct_5(Struct_1(select(select(firstTrailingBit(vec2<i32>(arg_1.x, -19362i)), ~vec2<i32>(41654i, u_input.a.x), select(vec2<bool>(true, false), vec2<bool>(false, true), false)), select(-arg_0.a.a, vec2<i32>(1i, 1i), true), vec2<bool>(true, true)), func_2(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~global0[_wgslsmith_index_u32(arg_0.b.a, 13u)], select(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 13u)], 13u)], 13u)], global0[_wgslsmith_index_u32(arg_0.b.a, 13u)], false)), 17u)]).a.c, u_input.a.x), func_2(arg_0.b).b);
    var var_1 = Struct_2(func_2(func_2(var_0.b).b).a, arg_0.a, ~vec4<u32>(0u, _wgslsmith_div_u32(countOneBits(arg_0.b.a), 30894u | var_0.b.a), 4294967295u, firstLeadingBit(var_0.b.a)), vec3<i32>(arg_1.x, 1i, _wgslsmith_mult_i32(-1i, _wgslsmith_sub_i32(var_0.a.c, var_0.a.a.x))), arg_1.ywy);
    let var_2 = -725f;
    global1 = array<Struct_4, 17>();
    return Struct_2(arg_0.a, arg_0.a, var_1.c, max(vec3<i32>(arg_1.x, var_0.a.b, var_0.a.c), max(arg_1.zxz, vec3<i32>(-u_input.a.x, func_2(var_0.b).a.b, 1i))), _wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(-1i, -27707i, u_input.a.x) ^ var_1.d), firstTrailingBit(max(var_1.e, vec3<i32>(var_0.a.b, 22140i, arg_1.x)))) ^ vec3<i32>(~arg_0.a.b, reverseBits(1i), -(var_0.a.c >> (4294967295u % 32u))));
}

fn func_1(arg_0: vec2<i32>) -> vec4<u32> {
    global0 = array<u32, 13>();
    var var_0 = func_4(func_2(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22494u, 13u)], 13u)] | ~1u, 13u)], 13u)] ^ (global0[_wgslsmith_index_u32(30952u, 13u)] | _wgslsmith_div_u32(16006u, 42056u)), 17u)]), min(~vec4<i32>(-16316i, 2913i, u_input.a.x << (22438u % 32u), select(1i, -48706i, true)), reverseBits(~vec4<i32>(arg_0.x, -44882i, u_input.a.x, u_input.a.x) & vec4<i32>(u_input.a.x, arg_0.x, arg_0.x, arg_0.x))));
    global0 = array<u32, 13>();
    return _wgslsmith_mult_vec4_u32(vec4<u32>(abs((global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 13u)], 13u)] & var_0.c.x) ^ firstTrailingBit(0u)), ~global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(var_0.c.ywx, vec3<u32>(var_0.c.x, var_0.c.x, 4294967295u))), 13u)], 0u, 43741u), var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(4294967295u);
    var var_1 = _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(func_1(u_input.a | max(vec2<i32>(-2147483647i, u_input.a.x), vec2<i32>(-2147483647i, -39564i))), select(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0, 0u, global0[_wgslsmith_index_u32(14596u, 13u)], 1277u), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 13u)], 4294967295u, 0u, var_0)), vec4<u32>(global0[_wgslsmith_index_u32(13423u, 13u)] & global0[_wgslsmith_index_u32(0u, 13u)], var_0 << (var_0 % 32u), global0[_wgslsmith_index_u32(4294967295u, 13u)], _wgslsmith_sub_u32(4294967295u, var_0)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), true))), abs(~(~(vec4<u32>(var_0, var_0, 19467u, var_0) >> (vec4<u32>(37929u, 0u, var_0, global0[_wgslsmith_index_u32(37594u, 13u)]) % vec4<u32>(32u))))));
    let var_2 = Struct_3(Struct_2(Struct_1(max(u_input.a, vec2<i32>(-2147483647i, u_input.a.x)), -51349i, 27005i), Struct_1(~(~u_input.a), u_input.a.x, (-2147483647i >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34565u, 13u)], 13u)], 13u)], 13u)] % 32u)) ^ -2814i), vec4<u32>(~global0[_wgslsmith_index_u32(abs(var_1.x), 13u)], select(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(1u, 13u)], 0u, 1416u), vec3<u32>(var_0, global0[_wgslsmith_index_u32(23490u, 13u)], 1u)), 0u, true), global0[_wgslsmith_index_u32(func_3(func_4(Struct_5(Struct_1(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.x, -43477i), Struct_4(74677u)), vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x)).b, max(var_1.x, var_0), true), 13u)], ~select(6011u, 9984u, true)), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x), ~vec3<i32>(-1i, 1i, u_input.a.x)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, 55695i, u_input.a.x), vec3<i32>(u_input.a.x, 1384i, 2147483647i))), vec3<i32>(~u_input.a.x, u_input.a.x, -1658i)));
    let var_3 = var_2;
    let var_4 = var_2.a.b.b;
    var var_5 = var_2.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(4294967295u, var_3.a.c.x, _wgslsmith_div_u32(firstLeadingBit(0u), _wgslsmith_dot_vec2_u32(vec2<u32>(66866u, var_1.x), var_3.a.c.xy))) | var_2.a.c.yzz);
}

