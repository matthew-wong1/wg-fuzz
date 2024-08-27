struct Struct_1 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 19> = array<vec4<u32>, 19>(vec4<u32>(4774u, 1u, 4294967295u, 4294967295u), vec4<u32>(0u, 15596u, 17232u, 58730u), vec4<u32>(26452u, 0u, 4294967295u, 47393u), vec4<u32>(64706u, 0u, 13664u, 0u), vec4<u32>(0u, 2958u, 4294967295u, 67826u), vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(0u, 46942u, 4294967295u, 1u), vec4<u32>(5245u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(63665u, 0u, 20224u, 4045u), vec4<u32>(1u, 34342u, 0u, 1u), vec4<u32>(1u, 22123u, 21043u, 1u), vec4<u32>(4294967295u, 55455u, 1u, 11360u), vec4<u32>(1u, 6943u, 47903u, 45851u), vec4<u32>(102538u, 11209u, 1u, 40294u), vec4<u32>(4294967295u, 6241u, 79905u, 43414u), vec4<u32>(0u, 21350u, 0u, 36621u), vec4<u32>(4470u, 77516u, 5975u, 12429u), vec4<u32>(1u, 28357u, 0u, 54280u), vec4<u32>(1u, 46246u, 1u, 19599u));

var<private> global1: array<vec3<i32>, 31> = array<vec3<i32>, 31>(vec3<i32>(-1i, -1i, 2147483647i), vec3<i32>(29620i, -1i, 54274i), vec3<i32>(-26915i, -1951i, -27278i), vec3<i32>(1i, 1i, -17124i), vec3<i32>(10898i, 12643i, i32(-2147483648)), vec3<i32>(73517i, 1i, -22940i), vec3<i32>(-2963i, 281i, 64945i), vec3<i32>(0i, -1i, 32799i), vec3<i32>(2147483647i, 0i, i32(-2147483648)), vec3<i32>(1i, 1i, -1i), vec3<i32>(0i, -37643i, -1i), vec3<i32>(2147483647i, 2147483647i, -26569i), vec3<i32>(0i, 1i, 0i), vec3<i32>(-14535i, -32814i, 22310i), vec3<i32>(-1i, -4666i, -1i), vec3<i32>(0i, -2744i, 21739i), vec3<i32>(20528i, 26258i, 4548i), vec3<i32>(5251i, -16800i, 29497i), vec3<i32>(2147483647i, 1i, 0i), vec3<i32>(47934i, -7824i, -21693i), vec3<i32>(1i, 23051i, 1i), vec3<i32>(8634i, 0i, -55946i), vec3<i32>(0i, -27178i, 1i), vec3<i32>(-40010i, 2147483647i, i32(-2147483648)), vec3<i32>(2147483647i, 13878i, i32(-2147483648)), vec3<i32>(-63681i, -7113i, -27385i), vec3<i32>(i32(-2147483648), 1i, -264i), vec3<i32>(11665i, -64813i, -1i), vec3<i32>(i32(-2147483648), 2147483647i, -1i), vec3<i32>(42128i, -30421i, 0i), vec3<i32>(51479i, -11273i, 0i));

var<private> global2: vec2<u32>;

var<private> global3: Struct_4;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: f32) -> f32 {
    global2 = _wgslsmith_sub_vec2_u32(u_input.c.xz, u_input.c.yx);
    let var_0 = Struct_2(2372f, abs(abs(global2.x)) | 1u, Struct_1(true, !vec2<bool>(all(vec4<bool>(global3.d.b.x, true, global3.d.a, global3.d.a)), true)), Struct_1(!all(!vec3<bool>(global3.d.a, false, true)), vec2<bool>(any(vec4<bool>(false, false, true, false)), all(vec4<bool>(false, true, global3.d.a, true)))));
    let var_1 = var_0;
    var var_2 = !select(!(!vec3<bool>(false, false, var_1.d.b.x)), vec3<bool>(true, true, true), any(!(!global3.d.b)));
    global0 = array<vec4<u32>, 19>();
    return 2437f;
}

fn func_2(arg_0: vec2<f32>) -> u32 {
    global3 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(1u, global3.b)) * _wgslsmith_f_op_f32(abs(-641f))) - global3.a), _wgslsmith_f_op_f32(step(global3.a, arg_0.x))), 124f, max(global3.c, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(~0i, min(global3.c, u_input.a)))), global3.d);
    var var_0 = _wgslsmith_mod_u32(max(~firstLeadingBit(global2.x), u_input.c.x >> (~u_input.c.x % 32u)), _wgslsmith_mod_u32(u_input.b ^ 4294967295u, u_input.c.x) & firstTrailingBit(15014u)) ^ global2.x;
    let var_1 = _wgslsmith_div_vec4_i32(~abs(vec4<i32>(1i, 19730i | u_input.a, 1i, -u_input.a)), vec4<i32>(-26349i, ~((u_input.a & 2147483647i) | ~u_input.a), -6961i, 27576i));
    let var_2 = select(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(39916u, 14710u)), vec2<u32>(_wgslsmith_div_u32(u_input.b, global2.x), ~firstTrailingBit(19309u))), 1u, !global3.d.a);
    var_0 = global2.x;
    return u_input.b;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: vec4<u32>, arg_3: Struct_3) -> Struct_2 {
    let var_0 = -2147483647i;
    let var_1 = abs(~(min(vec3<u32>(arg_3.b.b, u_input.b, arg_0.x), vec3<u32>(global2.x, 116869u, arg_0.x) | vec3<u32>(4294967295u, u_input.b, 27887u)) << (~(~u_input.c) % vec3<u32>(32u))));
    let var_2 = Struct_2(1f, _wgslsmith_add_u32(~(~(~var_1.x)), _wgslsmith_clamp_u32(u_input.c.x & reverseBits(18058u), arg_1.x & _wgslsmith_add_u32(0u, global2.x), 1u)), global3.d, Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0, var_0, 8881i) << (u_input.c % vec3<u32>(32u)), vec3<i32>(u_input.a, 1921i, u_input.a)) <= 17115i, select(vec2<bool>(global3.d.a, global3.d.b.x), vec2<bool>(arg_3.b.d.a, global3.d.a), all(vec3<bool>(arg_3.d.x, global3.d.b.x, arg_3.c.d.b.x)) && false)));
    let var_3 = ~4294967295u;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.a * global3.b))) - _wgslsmith_f_op_f32(global3.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(178f * var_2.a))));
    return Struct_2(_wgslsmith_f_op_f32(round(-372f)), _wgslsmith_add_u32(arg_2.x, ~36372u), var_2.d, var_2.c);
}

fn func_5(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: u32) -> Struct_2 {
    let var_0 = _wgslsmith_mult_u32(reverseBits(_wgslsmith_mod_u32(~u_input.b, ~arg_0.b)) | firstTrailingBit(0u), 4294967295u);
    var var_1 = abs(firstLeadingBit(abs(u_input.a << (var_0 % 32u))));
    var var_2 = vec3<bool>(!func_4(u_input.c.xy, global0[_wgslsmith_index_u32(~1u, 19u)], _wgslsmith_add_vec4_u32(vec4<u32>(arg_0.b, 52241u, var_0, 1u), vec4<u32>(arg_2, var_0, 1u, 3765u)), Struct_3(~79863u, arg_0, func_4(u_input.c.zy, vec4<u32>(arg_2, 1u, 60989u, arg_2), global0[_wgslsmith_index_u32(arg_2, 19u)], Struct_3(global2.x, Struct_2(arg_0.a, 17799u, Struct_1(arg_1.x, global3.d.b), Struct_1(arg_1.x, vec2<bool>(global3.d.b.x, global3.d.b.x))), Struct_2(1000f, arg_2, Struct_1(false, vec2<bool>(arg_1.x, false)), global3.d), vec2<bool>(true, arg_0.d.b.x), Struct_1(true, vec2<bool>(true, false)))), vec2<bool>(true, arg_0.d.b.x), Struct_1(false, vec2<bool>(true, true)))).d.b.x, arg_0.d.a, func_4(~vec2<u32>(49890u, 20366u), reverseBits(~vec4<u32>(arg_2, var_0, 1u, 1u)), global0[_wgslsmith_index_u32(0u, 19u)], Struct_3(var_0, func_4(~u_input.c.yz, select(vec4<u32>(global2.x, arg_0.b, global2.x, global2.x), vec4<u32>(13506u, 4294967295u, 1u, 0u), vec4<bool>(global3.d.a, true, global3.d.b.x, true)), global0[_wgslsmith_index_u32(18219u, 19u)], Struct_3(0u, arg_0, Struct_2(global3.a, 1u, global3.d, Struct_1(arg_1.x, arg_1.wx)), vec2<bool>(arg_0.c.b.x, arg_0.c.b.x), Struct_1(arg_1.x, arg_0.d.b))), Struct_2(global3.a, arg_0.b, func_4(u_input.c.yz, vec4<u32>(37844u, arg_2, var_0, 13128u), global0[_wgslsmith_index_u32(u_input.b, 19u)], Struct_3(u_input.b, arg_0, arg_0, vec2<bool>(false, true), Struct_1(arg_0.c.b.x, vec2<bool>(true, global3.d.b.x)))).d, func_4(vec2<u32>(14764u, var_0), vec4<u32>(4294967295u, arg_0.b, 0u, var_0), global0[_wgslsmith_index_u32(global2.x, 19u)], Struct_3(var_0, Struct_2(2027f, 4294967295u, global3.d, arg_0.c), arg_0, global3.d.b, global3.d)).c), !func_4(u_input.c.zz, global0[_wgslsmith_index_u32(2250u, 19u)], vec4<u32>(79999u, 4294967295u, 0u, arg_0.b), Struct_3(global2.x, Struct_2(global3.a, 16433u, Struct_1(false, global3.d.b), Struct_1(false, arg_1.wy)), Struct_2(global3.a, 1u, global3.d, Struct_1(true, vec2<bool>(true, false))), arg_1.ww, Struct_1(true, vec2<bool>(false, global3.d.b.x)))).c.b, func_4(vec2<u32>(4294967295u, u_input.b) << (u_input.c.yx % vec2<u32>(32u)), ~vec4<u32>(0u, arg_0.b, global2.x, arg_0.b), abs(vec4<u32>(var_0, 1u, 37152u, 81095u)), Struct_3(46795u, Struct_2(global3.a, 81030u, arg_0.c, Struct_1(false, vec2<bool>(true, true))), Struct_2(arg_0.a, 1005u, Struct_1(true, arg_1.xy), global3.d), arg_1.wy, global3.d)).d)).c.a);
    return Struct_2(_wgslsmith_f_op_f32(step(-526f, -1355f)), _wgslsmith_dot_vec2_u32(~(select(vec2<u32>(4487u, 1u), vec2<u32>(arg_0.b, 60135u), arg_0.d.a) >> ((u_input.c.yz | vec2<u32>(arg_2, u_input.c.x)) % vec2<u32>(32u))), ~(~reverseBits(vec2<u32>(43040u, arg_2)))), Struct_1(any(select(!arg_1.xxw, vec3<bool>(true, global3.d.b.x, global3.d.a), true)), arg_1.xw), arg_0.c);
}

fn func_1(arg_0: f32) -> StorageBuffer {
    global0 = array<vec4<u32>, 19>();
    global1 = array<vec3<i32>, 31>();
    var var_0 = vec2<i32>(-u_input.a, ~(~_wgslsmith_clamp_i32(1i, u_input.a, -2147483647i) & _wgslsmith_dot_vec3_i32(vec3<i32>(global3.c, u_input.a, 0i), global1[_wgslsmith_index_u32(global2.x, 31u)] >> (vec3<u32>(u_input.c.x, 0u, global2.x) % vec3<u32>(32u)))));
    var var_1 = func_5(func_4(_wgslsmith_div_vec2_u32(vec2<u32>(~4294967295u, firstLeadingBit(global2.x)), vec2<u32>(u_input.c.x, ~22661u)), ~(~abs(vec4<u32>(11940u, u_input.b, 4294967295u, global2.x))), reverseBits(global0[_wgslsmith_index_u32(~4294967295u, 19u)]), Struct_3(_wgslsmith_sub_u32(0u, _wgslsmith_clamp_u32(u_input.b, u_input.c.x, u_input.c.x)), Struct_2(arg_0, func_2(vec2<f32>(arg_0, -505f)), global3.d, Struct_1(global3.d.b.x, vec2<bool>(false, true))), Struct_2(global3.b, global2.x, global3.d, global3.d), select(vec2<bool>(true, true), vec2<bool>(false, global3.d.a), true), global3.d)), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, global3.d.b.x, global3.d.b.x, global3.d.a), vec4<bool>(global3.d.a, true, global3.d.b.x, true))), func_4(~_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.b, u_input.c.x), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, u_input.b), u_input.c.yz), select(vec2<u32>(u_input.c.x, 21885u), u_input.c.xz, global3.d.b)), ~min(~global0[_wgslsmith_index_u32(u_input.b, 19u)], global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, global2.x), 19u)]), select(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(4294967295u, u_input.c.x), 4294967295u), 19u)], vec4<u32>(7156u, global2.x, ~global2.x, _wgslsmith_dot_vec2_u32(u_input.c.xz, u_input.c.yz)), all(vec3<bool>(global3.d.a, global3.d.b.x, global3.d.a))), Struct_3(u_input.b, Struct_2(_wgslsmith_div_f32(global3.b, global3.b), countOneBits(0u), func_4(vec2<u32>(0u, 45430u), global0[_wgslsmith_index_u32(0u, 19u)], vec4<u32>(u_input.b, global2.x, 39505u, 1u), Struct_3(u_input.c.x, Struct_2(1251f, 1823u, global3.d, global3.d), Struct_2(1228f, 0u, global3.d, global3.d), global3.d.b, Struct_1(false, vec2<bool>(global3.d.a, false)))).d, func_4(u_input.c.xz, global0[_wgslsmith_index_u32(u_input.c.x, 19u)], global0[_wgslsmith_index_u32(21155u, 19u)], Struct_3(u_input.b, Struct_2(367f, global2.x, Struct_1(true, global3.d.b), Struct_1(false, global3.d.b)), Struct_2(1132f, u_input.b, global3.d, global3.d), vec2<bool>(true, false), Struct_1(false, vec2<bool>(true, global3.d.a)))).d), Struct_2(_wgslsmith_div_f32(-1000f, global3.b), ~u_input.b, global3.d, global3.d), global3.d.b, Struct_1(var_0.x > u_input.a, !vec2<bool>(global3.d.a, global3.d.b.x)))).b);
    let var_2 = abs(firstLeadingBit(countOneBits(~vec3<u32>(global2.x, 4294967295u, 38799u)))) | _wgslsmith_div_vec3_u32(abs(~vec3<u32>(global2.x, 1u, u_input.c.x)), u_input.c);
    return StorageBuffer(var_0.x, var_2.x, ~vec2<u32>(24679u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.x, var_2.x, u_input.b, u_input.b), global0[_wgslsmith_index_u32(var_2.x, 19u)]), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_2, vec3<u32>(global2.x, 3774u, var_1.b)), 19u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global3.b * _wgslsmith_f_op_f32(min(1000f, arg_0))), _wgslsmith_f_op_f32(ceil(func_5(Struct_2(1467f, 0u, var_1.d, var_1.d), vec4<bool>(false, var_1.c.b.x, global3.d.b.x, true), 33189u).a)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(firstLeadingBit(_wgslsmith_add_i32(-1i, u_input.a)) | -23205i, 2147483647i ^ global3.c), ~_wgslsmith_mult_vec2_i32(abs(_wgslsmith_div_vec2_i32(vec2<i32>(-13229i, 2147483647i), vec2<i32>(15427i, 39474i))), vec2<i32>(~(-26306i), u_input.a >> (0u % 32u))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(828f)))), global3.a);
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 + global3.b) + _wgslsmith_f_op_f32(f32(-1f) * -1380f)))));
}

