struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29> = array<bool, 29>(false, true, false, false, false, true, false, false, true, true, true, true, true, false, false, true, false, false, true, false, false, false, true, false, true, true, true, false, true);

var<private> global1: vec4<bool>;

var<private> global2: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(vec3<i32>(1i, -22115i, 19593i), 393f), Struct_2(vec3<i32>(8419i, 1i, 40093i), -1640f), Struct_2(vec3<i32>(0i, -1i, -1i), 236f), Struct_2(vec3<i32>(42699i, 2147483647i, -22059i), -1720f), Struct_2(vec3<i32>(17010i, -38599i, 49416i), 1000f), Struct_2(vec3<i32>(34844i, i32(-2147483648), -19012i), -684f), Struct_2(vec3<i32>(-1i, i32(-2147483648), 36586i), -1539f), Struct_2(vec3<i32>(i32(-2147483648), 4217i, 43087i), 1422f), Struct_2(vec3<i32>(-40539i, 15425i, -40096i), 1000f), Struct_2(vec3<i32>(36243i, 2147483647i, -25995i), 977f), Struct_2(vec3<i32>(i32(-2147483648), 2147483647i, 0i), 957f), Struct_2(vec3<i32>(8840i, 28969i, 0i), -591f), Struct_2(vec3<i32>(1i, -11024i, 2147483647i), -1079f), Struct_2(vec3<i32>(0i, 1i, -7613i), -531f), Struct_2(vec3<i32>(i32(-2147483648), -50268i, 0i), -198f), Struct_2(vec3<i32>(-1549i, -17094i, -14740i), 451f), Struct_2(vec3<i32>(-1i, 2147483647i, 2147483647i), 880f), Struct_2(vec3<i32>(56318i, 1i, -1i), 222f), Struct_2(vec3<i32>(0i, -40012i, 33010i), -860f), Struct_2(vec3<i32>(2147483647i, -38434i, 2632i), -1331f), Struct_2(vec3<i32>(0i, 50691i, -1i), 1000f), Struct_2(vec3<i32>(0i, 0i, 42688i), 957f), Struct_2(vec3<i32>(-6594i, 1i, -10235i), 1699f), Struct_2(vec3<i32>(-1i, 672i, 1931i), 588f), Struct_2(vec3<i32>(-15494i, 6171i, 1i), -1340f), Struct_2(vec3<i32>(-31496i, -3866i, 2147483647i), -364f), Struct_2(vec3<i32>(-62584i, -5597i, 45495i), -892f), Struct_2(vec3<i32>(260i, -1i, 1111i), 1843f), Struct_2(vec3<i32>(i32(-2147483648), -22428i, 2821i), 758f), Struct_2(vec3<i32>(-2569i, -12150i, -1i), 265f), Struct_2(vec3<i32>(-69872i, 2147483647i, -6948i), 1607f));

var<private> global3: array<bool, 31> = array<bool, 31>(true, true, false, false, false, true, true, false, true, true, false, true, true, true, false, false, false, false, false, true, true, true, true, false, false, true, false, false, false, true, false);

var<private> global4: vec3<i32>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool) -> vec4<bool> {
    let var_0 = global1.wxz;
    global0 = array<bool, 29>();
    var var_1 = _wgslsmith_mult_vec4_u32(~_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.a, u_input.d), vec4<u32>(u_input.c, u_input.a, 4294967295u, u_input.a)) << (vec4<u32>(1050u, 1949u, u_input.c, 4294967295u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.c, 1u, 1u), vec4<u32>(89644u, 1u, 1u, 4294967295u), vec4<u32>(34450u, 1u, 37495u, u_input.d)) ^ firstTrailingBit(vec4<u32>(61890u, u_input.a, 34873u, u_input.c)), ~max(vec4<u32>(4044u, 1u, u_input.c, 22023u), vec4<u32>(u_input.c, 1u, u_input.a, u_input.a))), firstTrailingBit(firstTrailingBit(vec4<u32>(4294967295u, u_input.d, u_input.d, u_input.a) & vec4<u32>(u_input.a, 0u, u_input.d, 1u)) << (vec4<u32>(7167u, ~u_input.c, u_input.a, select(1u, u_input.a, false)) % vec4<u32>(32u))));
    var var_2 = ~vec4<u32>(_wgslsmith_sub_u32(var_1.x, var_1.x), 4294967295u, u_input.d, ~(~0u));
    let var_3 = ~(-1i);
    return select(vec4<bool>(global1.x, any(var_0.xz), var_0.x, false), vec4<bool>(true, true, !(!any(vec4<bool>(global1.x, global3[_wgslsmith_index_u32(4294967295u, 31u)], global3[_wgslsmith_index_u32(16971u, 31u)], global3[_wgslsmith_index_u32(4294967295u, 31u)]))), true), global3[_wgslsmith_index_u32(min(var_1.x, 26600u), 31u)]);
}

fn func_2() -> Struct_1 {
    global1 = !vec4<bool>(!(!(!global0[_wgslsmith_index_u32(1u, 29u)])), all(select(global1.xyx, global1.xzw, true)), true, select(true, false, any(global1.yy)) || true);
    global1 = !(!vec4<bool>(true, global3[_wgslsmith_index_u32(4766u, 31u)], true, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~4294967295u, firstTrailingBit(24967u)), 29u)]));
    var var_0 = Struct_1(!any(func_3(vec3<i32>(-53190i, u_input.b.x, u_input.b.x), global0[_wgslsmith_index_u32(u_input.d, 29u)])), ~u_input.b.x);
    global1 = vec4<bool>(var_0.a, var_0.a, true, global0[_wgslsmith_index_u32(~select(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.d, u_input.c, 7307u), vec4<u32>(4294967295u, u_input.d, 1u, 4294967295u)), u_input.c, select(false, global1.x, true)), 29u)]);
    let var_1 = Struct_1(!global3[_wgslsmith_index_u32(~reverseBits(select(8594u, 48384u, true)), 31u)], abs(-var_0.b | min(-7665i, -14981i << (u_input.d % 32u))));
    return Struct_1(!(!(!select(var_0.a, true, true))), _wgslsmith_mod_i32(var_0.b, var_0.b));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    let var_0 = arg_1;
    let var_1 = func_3(arg_1.a, !((false | global1.x) & any(global1.ywz))).wy;
    let var_2 = u_input.a;
    var var_3 = vec4<u32>(1u, u_input.c, u_input.c, min(_wgslsmith_mult_u32(min(1u, var_2), ~(~1u)), ~(~(~1u))));
    var var_4 = Struct_1(arg_2.a, _wgslsmith_add_i32(arg_2.b, u_input.b.x));
    return Struct_2(vec3<i32>(var_0.a.x, -arg_1.a.x, abs(arg_0)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(602f, var_0.b))));
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    global1 = vec4<bool>(arg_2.a, any(vec3<bool>(!(!global3[_wgslsmith_index_u32(0u, 31u)]), countOneBits(arg_1.a.x) >= 26180i, !global1.x)), !global0[_wgslsmith_index_u32(u_input.c, 29u)], arg_2.a);
    global0 = array<bool, 29>();
    var var_0 = arg_1;
    var var_1 = arg_2;
    let var_2 = Struct_2(vec3<i32>(-19362i, i32(-1i) * -65294i, arg_2.b), -1000f);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -547f), var_2.b);
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_2 {
    let var_0 = arg_2;
    var var_1 = true;
    global0 = array<bool, 29>();
    var var_2 = true;
    let var_3 = _wgslsmith_add_u32(~u_input.a, 22854u);
    return Struct_2(u_input.b.xxy, _wgslsmith_f_op_f32(func_5(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(var_3, var_3)), vec2<u32>(~var_3, ~41470u)), func_4(~firstTrailingBit(arg_1.a.x), Struct_2(vec3<i32>(-18263i, 2147483647i, var_0.a.x) ^ vec3<i32>(-50418i, 2147483647i, arg_1.a.x), _wgslsmith_f_op_f32(abs(arg_1.b))), func_2()), Struct_1(false, ~(~var_0.a.x)), func_2())));
}

fn func_6(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    var var_0 = Struct_1(arg_3.a, max(-_wgslsmith_mult_i32(_wgslsmith_add_i32(arg_3.b, -40877i), abs(global4.x)), arg_2.a.x));
    var var_1 = func_2();
    var var_2 = vec2<bool>((abs(arg_0.x << (1u % 32u)) | u_input.c) >= 43882u, !(!(!(u_input.d > 4294967295u))));
    global2 = array<Struct_2, 31>();
    let var_3 = false;
    return ~reverseBits(_wgslsmith_clamp_u32(~0u, arg_0.x, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(27014u, u_input.d, arg_0.x), arg_0), select(arg_0, arg_0, var_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_sub_vec3_i32(u_input.b.xzw >> (vec3<u32>(_wgslsmith_div_u32(0u, 47922u), u_input.a, ~48659u) % vec3<u32>(32u)), u_input.b.xzz), 377f);
    global1 = select(vec4<bool>(false, true, global0[_wgslsmith_index_u32(func_6(_wgslsmith_clamp_vec3_u32(min(vec3<u32>(4294967295u, 4294967295u, u_input.d), vec3<u32>(41376u, 58640u, u_input.c)), vec3<u32>(u_input.d, u_input.d, u_input.c), vec3<u32>(80225u, u_input.a, u_input.d) | vec3<u32>(u_input.d, u_input.a, 4294967295u)), vec4<f32>(2061f, _wgslsmith_f_op_f32(var_0.b * var_0.b), _wgslsmith_f_op_f32(-1317f - 1000f), -1777f), func_1(select(vec4<bool>(false, false, true, global3[_wgslsmith_index_u32(u_input.c, 31u)]), vec4<bool>(global3[_wgslsmith_index_u32(u_input.d, 31u)], true, global3[_wgslsmith_index_u32(u_input.a, 31u)], true), global0[_wgslsmith_index_u32(u_input.d, 29u)]), Struct_2(u_input.b.xyz, -345f), Struct_2(vec3<i32>(42592i, 2147483647i, -1i), 1030f)), func_2()), 29u)], all(func_3(vec3<i32>(global4.x, 0i, u_input.b.x), global3[_wgslsmith_index_u32(u_input.a, 31u)] || true).xw)), vec4<bool>(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_mult_u32(9634u, u_input.a), countOneBits(4294967295u)), 29u)], all(func_3(firstLeadingBit(vec3<i32>(var_0.a.x, global4.x, 14502i)), any(vec2<bool>(global3[_wgslsmith_index_u32(121067u, 31u)], global3[_wgslsmith_index_u32(u_input.c, 31u)])))), false, all(vec3<bool>(select(global0[_wgslsmith_index_u32(u_input.d, 29u)], global1.x, global1.x), true, true))), any(global1.zw));
    let var_1 = func_2();
    global3 = array<bool, 31>();
    var var_2 = Struct_1(!(var_0.b == 248f), var_1.b | _wgslsmith_sub_i32(firstTrailingBit(global4.x), -_wgslsmith_add_i32(0i, 0i)));
    var var_3 = ~_wgslsmith_dot_vec4_u32(min(vec4<u32>(max(22936u, u_input.a), ~60511u, _wgslsmith_mult_u32(4294967295u, u_input.a), u_input.c), select(vec4<u32>(u_input.d, u_input.c, 46362u, u_input.a), vec4<u32>(u_input.d, 1u, 1u, 57113u), global3[_wgslsmith_index_u32(36173u, 31u)]) & vec4<u32>(u_input.a, u_input.a, u_input.d, u_input.a)), _wgslsmith_div_vec4_u32(~vec4<u32>(69270u, u_input.a, 0u, u_input.c), vec4<u32>(u_input.a, _wgslsmith_add_u32(1u, u_input.a), _wgslsmith_add_u32(u_input.a, u_input.d), u_input.d)));
    global4 = -vec3<i32>(global4.x, var_0.a.x, -1i);
    let x = u_input.a;
    s_output = StorageBuffer(func_4(0i, Struct_2(u_input.b.zzw, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, var_0.b))), func_2()).a.yz, ~vec3<u32>(_wgslsmith_sub_u32(90650u, 1u), 1u, countOneBits(1u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, 4294967295u, u_input.a, u_input.a), ~vec4<u32>(50008u, 0u, u_input.a, 49637u)) | _wgslsmith_sub_vec4_u32(~abs(vec4<u32>(17676u, 36313u, u_input.a, u_input.a)), vec4<u32>(u_input.c, u_input.a, 1u, u_input.c) >> (reverseBits(vec4<u32>(4294967295u, 1u, u_input.c, 4294967295u)) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - var_0.b)), var_0.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.b, var_0.b, -942f, 882f))))))));
}

