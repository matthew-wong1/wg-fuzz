struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: f32,
    d: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: bool,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 16>;

var<private> global1: Struct_5 = Struct_5(-1i, Struct_2(Struct_1(vec3<u32>(0u, 1u, 16932u), vec3<i32>(0i, 0i, 48381i), vec3<i32>(i32(-2147483648), 18959i, 0i)), Struct_1(vec3<u32>(23135u, 1u, 1u), vec3<i32>(-1i, 2147483647i, 30445i), vec3<i32>(0i, 1i, -2045i)), Struct_1(vec3<u32>(0u, 48680u, 1215u), vec3<i32>(i32(-2147483648), -12931i, 13915i), vec3<i32>(14792i, i32(-2147483648), -9155i))), true, Struct_4(Struct_3(194f, 2147483647i, Struct_1(vec3<u32>(1169u, 1u, 1u), vec3<i32>(-38987i, 0i, 2147483647i), vec3<i32>(-35194i, 24951i, 4067i)), Struct_1(vec3<u32>(0u, 1u, 43507u), vec3<i32>(26061i, -50639i, 23594i), vec3<i32>(-1i, 21642i, 0i)), Struct_2(Struct_1(vec3<u32>(34993u, 8678u, 1u), vec3<i32>(2147483647i, 0i, -19684i), vec3<i32>(0i, -7172i, -822i)), Struct_1(vec3<u32>(16302u, 4294967295u, 12970u), vec3<i32>(-25388i, i32(-2147483648), 16529i), vec3<i32>(-1i, -1i, 2147483647i)), Struct_1(vec3<u32>(71088u, 1u, 4294967295u), vec3<i32>(2147483647i, -99619i, 1i), vec3<i32>(1i, i32(-2147483648), 18704i)))), Struct_3(298f, 23042i, Struct_1(vec3<u32>(12661u, 52780u, 4294967295u), vec3<i32>(-9341i, -1i, -1i), vec3<i32>(-38173i, 37115i, i32(-2147483648))), Struct_1(vec3<u32>(72485u, 42963u, 42077u), vec3<i32>(-1i, 0i, 34436i), vec3<i32>(2147483647i, -1i, 7865i)), Struct_2(Struct_1(vec3<u32>(4294967295u, 1u, 4294967295u), vec3<i32>(0i, -1i, 2147483647i), vec3<i32>(12861i, 0i, 35965i)), Struct_1(vec3<u32>(2331u, 84758u, 1u), vec3<i32>(-43405i, -1i, -2323i), vec3<i32>(13917i, 1i, 31728i)), Struct_1(vec3<u32>(1u, 739u, 23330u), vec3<i32>(-1i, -14723i, 0i), vec3<i32>(-1i, -40784i, -21492i)))), -983f, Struct_1(vec3<u32>(106858u, 4294967295u, 1u), vec3<i32>(1i, 28880i, -1i), vec3<i32>(i32(-2147483648), -17084i, 1i))));

var<private> global2: Struct_3 = Struct_3(-594f, 14161i, Struct_1(vec3<u32>(1u, 0u, 0u), vec3<i32>(2147483647i, i32(-2147483648), 0i), vec3<i32>(-15384i, -23081i, -15615i)), Struct_1(vec3<u32>(0u, 70220u, 0u), vec3<i32>(26869i, 0i, 1i), vec3<i32>(-34654i, -2287i, 16030i)), Struct_2(Struct_1(vec3<u32>(30769u, 32177u, 5372u), vec3<i32>(1i, 1i, 11287i), vec3<i32>(-1i, -10554i, -17328i)), Struct_1(vec3<u32>(4294967295u, 39036u, 45145u), vec3<i32>(-22878i, 1i, -3294i), vec3<i32>(-66900i, 47329i, -47578i)), Struct_1(vec3<u32>(0u, 1u, 32488u), vec3<i32>(1i, 18417i, -88507i), vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i))));

var<private> global3: bool;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    let var_0 = -(countOneBits(-global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1.b.b.a.x, global2.d.a.x), 16u)]) | ~_wgslsmith_add_vec3_i32(global1.d.b.d.b, global1.d.d.c));
    global0 = array<vec3<i32>, 16>();
    global3 = all(select(vec2<bool>(!(!global1.c), global1.c), select(select(!vec2<bool>(false, global1.c), !vec2<bool>(global1.c, global1.c), select(vec2<bool>(true, false), vec2<bool>(global1.c, false), vec2<bool>(global1.c, global1.c))), !select(vec2<bool>(global1.c, global1.c), vec2<bool>(global1.c, false), vec2<bool>(global1.c, global1.c)), !(!vec2<bool>(global1.c, global1.c))), select(any(vec3<bool>(global1.c, true, true)), false, (global1.c || global1.c) || (global1.c && true))));
    let var_1 = Struct_5((u_input.a ^ -u_input.c) | firstLeadingBit(global1.a), global1.d.a.e, true, global1.d);
    let var_2 = 862f;
    return countOneBits(~(87620u ^ ~_wgslsmith_mult_u32(global1.b.b.a.x, 28398u)));
}

fn func_2(arg_0: Struct_4, arg_1: i32, arg_2: bool) -> Struct_5 {
    global0 = array<vec3<i32>, 16>();
    global3 = !((arg_0.d.a.x ^ _wgslsmith_sub_u32(0u, global1.d.a.d.a.x)) != func_3());
    var var_0 = arg_0;
    let var_1 = global1.d;
    let var_2 = _wgslsmith_add_u32(global2.d.a.x, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(~35570u, 0u), firstLeadingBit(4294967295u) | var_1.d.a.x, ~(_wgslsmith_dot_vec2_u32(var_0.b.c.a.zy, arg_0.b.d.a.yz) >> (arg_0.b.d.a.x % 32u))));
    return Struct_5(global1.a, Struct_2(Struct_1(select(~vec3<u32>(26762u, 22258u, u_input.b.x), u_input.b, arg_2 || global1.c), -var_0.a.e.a.c, _wgslsmith_div_vec3_i32(vec3<i32>(var_1.a.d.c.x, -1i, -1i), global2.c.c)), arg_0.b.d, Struct_1(vec3<u32>(4294967295u, abs(var_0.b.d.a.x), 0u), (vec3<i32>(var_0.d.b.x, var_0.d.b.x, u_input.a) & vec3<i32>(arg_1, var_1.a.b, 1i)) ^ vec3<i32>(u_input.a, 2147483647i, arg_1), -(~var_1.b.c.c))), false, Struct_4(global1.d.b, global1.d.a, 506f, Struct_1(global1.b.a.a, vec3<i32>(var_0.a.e.a.c.x << (4294967295u % 32u), max(var_1.d.b.x, -2147483647i), global1.d.d.c.x ^ 31832i), -global2.e.a.b)));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: Struct_5, arg_3: i32) -> vec3<i32> {
    global3 = all(select(select(vec3<bool>(true, arg_2.c, !global1.c), !(!vec3<bool>(arg_2.c, arg_0.x, global1.c)), !select(vec3<bool>(false, true, arg_2.c), vec3<bool>(arg_2.c, false, arg_0.x), true)), !vec3<bool>(false, any(vec4<bool>(global1.c, false, false, false)), select(arg_2.c, true, false)), ~0i != -arg_2.a));
    var var_0 = !vec3<bool>(global1.c, true, true);
    let var_1 = Struct_1(abs(select(global1.b.b.a, global2.d.a, _wgslsmith_f_op_f32(arg_2.d.c * global1.d.b.a) >= -259f)), arg_2.b.b.c, _wgslsmith_sub_vec3_i32(firstTrailingBit(global0[_wgslsmith_index_u32(4294967295u, 16u)]), -global1.b.b.b) << (global1.b.a.a % vec3<u32>(32u)));
    global0 = array<vec3<i32>, 16>();
    var var_2 = arg_2.d;
    return var_1.c;
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = global2.a;
    global2 = Struct_3(-587f, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, _wgslsmith_mod_i32(-u_input.a, -1i), global2.c.b.x, firstTrailingBit(_wgslsmith_mult_i32(u_input.a, 13191i))), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, 56634i, global1.a, u_input.d) & vec4<i32>(-31777i, -2147483647i, 198i, 1i), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, global1.a, 1i, -1i), vec4<i32>(27110i, 68615i, global2.e.c.b.x, u_input.c))) & (-vec4<i32>(-20929i, global1.d.a.b, u_input.d, -53399i) ^ (vec4<i32>(u_input.a, global2.b, 0i, global1.a) | vec4<i32>(u_input.c, -5115i, -11087i, global1.b.c.c.x)))), Struct_1(~countOneBits(u_input.b), min(select(global2.d.b, vec3<i32>(41393i, -18213i, u_input.d), arg_2.xxz) >> (u_input.b % vec3<u32>(32u)), firstTrailingBit(vec3<i32>(33480i, u_input.c, 0i)) ^ select(global1.b.c.b, global2.c.c, vec3<bool>(arg_2.x, false, true))), vec3<i32>(0i, _wgslsmith_div_i32(global2.b & global2.b, ~global1.d.d.b.x), 17407i)), Struct_1(vec3<u32>(_wgslsmith_div_u32(max(8643u, 1u), global2.c.a.x), u_input.b.x, countOneBits(global1.b.b.a.x)), global0[_wgslsmith_index_u32(arg_0.x, 16u)], reverseBits(_wgslsmith_div_vec3_i32(-global2.e.c.b, global2.d.b))), global2.e);
    var var_1 = _wgslsmith_clamp_vec3_i32(vec3<i32>(51139i, _wgslsmith_dot_vec2_i32(global1.d.d.b.xz, ~_wgslsmith_clamp_vec2_i32(global1.b.c.c.zy, global2.e.c.b.yx, vec2<i32>(2147483647i, global1.b.a.c.x))), global2.d.c.x), ~min(-(global1.d.b.e.c.b | global0[_wgslsmith_index_u32(global2.c.a.x, 16u)]), abs(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, global1.a, -1i), vec3<i32>(u_input.a, u_input.d, global2.d.b.x)))), -_wgslsmith_sub_vec3_i32(global0[_wgslsmith_index_u32(4294967295u, 16u)], global1.b.b.c) ^ ~func_4(!arg_2.yy, vec2<i32>(-22280i, global2.c.c.x) & vec2<i32>(1i, global2.b), func_2(Struct_4(global1.d.a, Struct_3(global1.d.a.a, -1i, Struct_1(u_input.b, global2.d.b, global0[_wgslsmith_index_u32(arg_0.x, 16u)]), Struct_1(vec3<u32>(arg_0.x, global2.e.c.a.x, 0u), global0[_wgslsmith_index_u32(35783u, 16u)], global0[_wgslsmith_index_u32(global1.d.b.c.a.x, 16u)]), Struct_2(global2.d, Struct_1(vec3<u32>(arg_0.x, global1.b.b.a.x, 54805u), global0[_wgslsmith_index_u32(global2.d.a.x, 16u)], vec3<i32>(u_input.d, u_input.a, u_input.c)), global2.d)), global1.d.b.a, Struct_1(global1.b.c.a, vec3<i32>(-63966i, 15627i, -14136i), vec3<i32>(-16504i, u_input.c, 1074i))), global1.b.a.c.x, false), 14370i));
    var var_2 = -11271i;
    let var_3 = func_2(Struct_4(Struct_3(3080f, global1.b.c.c.x, Struct_1(global2.c.a >> (vec3<u32>(u_input.e, 4294967295u, global2.d.a.x) % vec3<u32>(32u)), -global0[_wgslsmith_index_u32(global1.b.a.a.x, 16u)], _wgslsmith_sub_vec3_i32(global0[_wgslsmith_index_u32(39656u, 16u)], vec3<i32>(global1.b.c.c.x, global2.e.b.b.x, u_input.a))), global2.d, Struct_2(global2.e.c, func_2(Struct_4(Struct_3(-1000f, global2.c.c.x, global1.b.c, Struct_1(vec3<u32>(990u, global2.c.a.x, arg_0.x), vec3<i32>(u_input.c, global1.b.a.b.x, -30432i), global2.c.c), global2.e), Struct_3(global1.d.a.a, 2147483647i, global2.e.b, Struct_1(global1.d.b.e.b.a, global2.d.c, vec3<i32>(u_input.c, var_1.x, global2.b)), global2.e), 1813f, Struct_1(vec3<u32>(0u, 1u, 0u), vec3<i32>(global1.a, 92650i, 0i), vec3<i32>(global2.b, var_1.x, var_1.x))), -1i, global1.c).d.d, func_2(Struct_4(Struct_3(-465f, -3820i, global1.d.a.e.a, global1.d.d, Struct_2(global1.b.c, global1.b.c, Struct_1(vec3<u32>(6123u, global1.b.b.a.x, 0u), global1.d.a.e.c.c, vec3<i32>(-2147483647i, u_input.c, global2.c.c.x)))), Struct_3(global2.a, var_1.x, global1.b.a, Struct_1(u_input.b, vec3<i32>(1i, global2.c.b.x, 2982i), global2.d.c), Struct_2(Struct_1(global1.d.a.e.c.a, vec3<i32>(1i, global1.a, var_1.x), vec3<i32>(19917i, u_input.a, 0i)), global2.c, global1.b.b)), global2.a, Struct_1(u_input.b, vec3<i32>(2147483647i, u_input.c, global2.e.a.b.x), vec3<i32>(var_1.x, -1i, global1.a))), -1i, true).d.a.e.b)), global1.d.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -791f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d.c) - -447f))), global1.d.a.c), -14066i, _wgslsmith_div_u32(_wgslsmith_mult_u32(global2.d.a.x, ~4294967295u), 1u) < 4294967295u).d.a;
    return func_2(global1.d, -var_1.x, global1.c & arg_2.x).b.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(reverseBits(abs(~vec2<u32>(global1.d.a.e.c.a.x, u_input.e))), global1.c, select(select(!(!vec4<bool>(false, global1.c, false, true)), select(select(vec4<bool>(false, global1.c, true, true), vec4<bool>(true, global1.c, global1.c, true), vec4<bool>(false, global1.c, global1.c, global1.c)), vec4<bool>(true, false, global1.c, true), global1.c), global1.c), !select(select(vec4<bool>(global1.c, global1.c, true, global1.c), vec4<bool>(global1.c, global1.c, false, false), true), vec4<bool>(global1.c, global1.c, global1.c, false), global1.c), vec4<bool>(false, !(global1.c | true), true != select(global1.c, true, true), all(select(vec3<bool>(true, global1.c, true), vec3<bool>(false, global1.c, global1.c), global1.c)))));
    let var_1 = ~firstLeadingBit(~u_input.b);
    let var_2 = _wgslsmith_mult_u32(u_input.e, global1.b.c.a.x ^ _wgslsmith_sub_u32(~46766u, 9565u >> ((global2.e.b.a.x >> (24570u % 32u)) % 32u)));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a, -211f, -153f))))), vec3<f32>(-207f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.d.a.a))), _wgslsmith_f_op_f32(global2.a - -1600f)))) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(516f, global1.d.b.a, -623f))));
    var var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-670f - global1.d.b.a)), 445f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 1f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 682f))), 1246f), vec2<f32>(_wgslsmith_f_op_f32(max(-870f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) + _wgslsmith_f_op_f32(sign(-778f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d.b.a - var_3.x)))), _wgslsmith_div_u32(~global2.e.c.a.x, u_input.e));
}

