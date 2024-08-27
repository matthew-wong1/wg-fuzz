struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_3,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4>;

var<private> global1: array<bool, 17> = array<bool, 17>(true, false, false, true, true, true, true, false, false, false, true, false, false, false, false, false, true);

var<private> global2: array<f32, 19>;

var<private> global3: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec2<bool>(false, false), -19385i, 0i, vec4<u32>(0u, 71157u, 16240u, 15903u)), Struct_1(vec2<bool>(false, false), 19094i, -1i, vec4<u32>(19071u, 4294967295u, 15781u, 8903u)), Struct_1(vec2<bool>(false, true), 1i, 37930i, vec4<u32>(23238u, 0u, 4294967295u, 4294967295u)), Struct_1(vec2<bool>(true, false), 7590i, 1i, vec4<u32>(4294967295u, 21184u, 4294967295u, 0u)), Struct_1(vec2<bool>(true, true), -21443i, 0i, vec4<u32>(1u, 15409u, 4879u, 32259u)), Struct_1(vec2<bool>(true, false), 38079i, -42047i, vec4<u32>(1u, 4294967295u, 4294967295u, 41672u)), Struct_1(vec2<bool>(false, false), -17766i, 2147483647i, vec4<u32>(25187u, 13317u, 50395u, 1u)), Struct_1(vec2<bool>(true, false), 2147483647i, 44250i, vec4<u32>(1u, 19464u, 50682u, 0u)), Struct_1(vec2<bool>(false, true), -1i, 7834i, vec4<u32>(2855u, 47751u, 1u, 0u)), Struct_1(vec2<bool>(true, true), -1i, -33421i, vec4<u32>(4294967295u, 0u, 0u, 38425u)), Struct_1(vec2<bool>(true, false), 18956i, -179i, vec4<u32>(1u, 91406u, 30577u, 0u)), Struct_1(vec2<bool>(true, true), -1i, 2147483647i, vec4<u32>(0u, 4294967295u, 0u, 30589u)), Struct_1(vec2<bool>(true, true), 2147483647i, 1i, vec4<u32>(1u, 62148u, 886u, 55487u)), Struct_1(vec2<bool>(false, false), -1i, -1i, vec4<u32>(1774u, 4294967295u, 1329u, 0u)), Struct_1(vec2<bool>(false, true), 0i, 34958i, vec4<u32>(15996u, 4294967295u, 1u, 1u)), Struct_1(vec2<bool>(false, true), 4992i, 41047i, vec4<u32>(18166u, 0u, 54455u, 4294967295u)), Struct_1(vec2<bool>(false, true), 0i, 1i, vec4<u32>(0u, 1u, 4294967295u, 20523u)), Struct_1(vec2<bool>(false, true), 2147483647i, 1i, vec4<u32>(4294967295u, 0u, 4294967295u, 0u)), Struct_1(vec2<bool>(true, false), 11857i, -1i, vec4<u32>(1u, 40127u, 4294967295u, 77739u)));

var<private> global4: Struct_5 = Struct_5(vec3<bool>(true, true, false), Struct_3(9195u, Struct_2(-38947i, 2147483647i), vec4<f32>(-1149f, -1281f, 363f, -819f), Struct_1(vec2<bool>(true, false), 78404i, 11058i, vec4<u32>(1u, 19700u, 4294967295u, 4294967295u))), Struct_1(vec2<bool>(false, false), i32(-2147483648), 83646i, vec4<u32>(33840u, 0u, 86006u, 48079u)), 4294967295u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: vec3<f32>) -> vec3<bool> {
    let var_0 = _wgslsmith_add_u32(global0[_wgslsmith_index_u32(1u, 4u)], global4.d);
    let var_1 = abs(_wgslsmith_add_vec4_i32(~vec4<i32>(~global4.c.c, 5689i, global4.c.b, 0i), _wgslsmith_div_vec4_i32(vec4<i32>(abs(-50886i), global4.c.c, global4.b.b.b, 0i), vec4<i32>(countOneBits(-1i), global4.c.b, 0i, global4.b.b.b | -95457i))));
    global0 = array<u32, 4>();
    var var_2 = global4.b;
    global3 = array<Struct_1, 19>();
    return select(global4.a, !global4.a, select(vec3<bool>(var_2.d.a.x, global1[_wgslsmith_index_u32(50292u, 17u)], all(vec3<bool>(var_2.d.a.x, global4.a.x, true))), global4.a, !global1[_wgslsmith_index_u32(var_0, 17u)]));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_4, arg_3: u32) -> Struct_3 {
    global4 = Struct_5(vec3<bool>(global4.c.b <= global4.b.d.b, true, all(arg_1)), Struct_3(33325u, global4.b.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.b.c.x, 294f, global2[_wgslsmith_index_u32(global4.d, 19u)], 1000f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global4.b.c) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, 863f, -281f, global2[_wgslsmith_index_u32(1u, 19u)]), vec4<f32>(global2[_wgslsmith_index_u32(0u, 19u)], -1000f, 817f, global2[_wgslsmith_index_u32(u_input.b.x, 19u)]))))), Struct_1(!select(global4.b.d.a, vec2<bool>(true, arg_1.x), arg_1.x), global4.b.d.b, -1i, vec4<u32>(38252u, 32825u, firstLeadingBit(18141u), 0u))), Struct_1(global4.b.d.a, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, -7091i, 0i, global4.c.b), vec4<i32>(arg_2.a, 1496i, arg_2.a, global4.b.b.a)), ~vec4<i32>(1i, 0i, -1i, -33946i)), ~vec4<i32>(1117i, 35873i, arg_2.a, 8421i) >> ((global4.c.d >> (global4.c.d % vec4<u32>(32u))) % vec4<u32>(32u))), -20875i, global4.c.d), 1u);
    let var_0 = ~arg_0;
    global2 = array<f32, 19>();
    global3 = array<Struct_1, 19>();
    let var_1 = global4.b.c.xy;
    return Struct_3(40693u, Struct_2(reverseBits(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(-4903i, global4.c.b), min(0i, 8610i), -global4.c.c)), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global4.b.b.b, -37216i, global4.c.c), vec3<i32>(-17768i, global4.c.b, 0i)), vec3<i32>(~arg_2.a, 12268i, 16110i ^ global4.c.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global4.b.c)), global4.b.d);
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec4<i32>, arg_3: Struct_4) -> Struct_3 {
    let var_0 = Struct_5(select(select(global4.a, select(!global4.a, global4.a, !vec3<bool>(false, true, global1[_wgslsmith_index_u32(20965u, 17u)])), vec3<bool>(!global1[_wgslsmith_index_u32(u_input.a, 17u)], true, -1i == arg_2.x)), global4.a, true), func_3(~max(~u_input.b.x, 33545u), func_2(vec3<f32>(_wgslsmith_f_op_f32(step(-1577f, -623f)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 4u)], 4u)], 19u)] * global2[_wgslsmith_index_u32(u_input.a, 19u)]), _wgslsmith_f_op_f32(-global4.b.c.x))), arg_3, 0u & global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(77442u, 85602u), ~vec2<u32>(61125u, global0[_wgslsmith_index_u32(global4.d, 4u)])), 4u)]), Struct_1(!func_3(4294967295u, !global4.a, arg_3, ~4181u).d.a, arg_3.a, ~arg_2.x, _wgslsmith_mult_vec4_u32(~global4.c.d, global4.b.d.d)), global4.c.d.x);
    let var_1 = var_0.a;
    var var_2 = _wgslsmith_f_op_f32(global4.b.c.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-327f + 479f)));
    global4 = var_0;
    var var_3 = func_3(_wgslsmith_mult_u32(select(var_0.b.a, var_0.c.d.x, arg_1), u_input.a), !vec3<bool>(true, true, var_0.b.d.a.x), Struct_4(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(arg_2, _wgslsmith_add_vec4_i32(arg_2, arg_2)), arg_2)), firstLeadingBit(abs(5186u)));
    return Struct_3(0u, Struct_2(~9174i, 2147483647i), _wgslsmith_f_op_vec4_f32(var_0.b.c - vec4<f32>(_wgslsmith_f_op_f32(480f * _wgslsmith_f_op_f32(abs(-615f))), var_0.b.c.x, var_0.b.c.x, var_0.b.c.x)), Struct_1(func_3(var_0.d >> (~global0[_wgslsmith_index_u32(var_0.d, 4u)] % 32u), !var_1, arg_3, global4.d).d.a, -2147483647i, firstLeadingBit(func_3(_wgslsmith_mod_u32(20431u, 35954u), select(vec3<bool>(var_3.d.a.x, arg_0, false), global4.a, var_1), arg_3, ~var_3.a).b.b), _wgslsmith_mod_vec4_u32(~vec4<u32>(0u, 3792u, var_3.a, global4.b.d.d.x), _wgslsmith_clamp_vec4_u32(var_3.d.d, _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 0u, var_0.d, 4294967295u), vec4<u32>(28076u, 21987u, 9713u, var_3.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_3.a, 51252u, 26535u, 58256u), vec4<u32>(global0[_wgslsmith_index_u32(1u, 4u)], var_3.d.d.x, 1u, var_3.a))))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: i32) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(arg_0.c.zy * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.c.wx + vec2<f32>(arg_0.c.x, arg_0.c.x)) + _wgslsmith_f_op_vec2_f32(select(arg_0.c.yw, vec2<f32>(1080f, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(25689u, 4u)], 19u)]), vec2<bool>(arg_0.d.a.x, global4.a.x))))))));
    let var_1 = _wgslsmith_mod_i32(min(-18800i, -arg_0.b.a << (1u % 32u)), ~(-1i));
    var var_2 = func_1(true, true, vec4<i32>(-1i) * -abs(vec4<i32>(global4.b.d.b, -1i, var_1, arg_0.d.c)), Struct_4(i32(-1i) * -arg_0.b.a)).d.d.x << (0u % 32u);
    var var_3 = func_1((arg_0.d.a.x | arg_0.d.a.x) & func_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(global4.b.c.xxx)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global4.b.c.x, arg_0.c.x, 585f), vec3<f32>(-156f, -326f, -335f), arg_0.d.a.x)), global4.a.x))).x, !global1[_wgslsmith_index_u32(func_1(false, true, max(vec4<i32>(global4.b.b.b, var_1, -2147483647i, 7270i), vec4<i32>(arg_2, var_1, arg_0.d.b, 0i)) << (vec4<u32>(56220u, u_input.a, 30508u, 52577u) % vec4<u32>(32u)), Struct_4(-1i)).a, 17u)], _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.b.b, _wgslsmith_mult_i32(-27897i, 17651i), _wgslsmith_mult_i32(2147483647i, arg_0.b.a | arg_1.a), ~arg_1.a << ((1u | global0[_wgslsmith_index_u32(arg_0.a, 4u)]) % 32u)), _wgslsmith_clamp_vec4_i32(-abs(vec4<i32>(arg_2, 1i, 1i, arg_2)), vec4<i32>(_wgslsmith_div_i32(var_1, var_1), -global4.b.d.b, arg_1.a, -42564i & var_1), select(vec4<i32>(-2147483647i, arg_1.b, 10403i, arg_1.b), -vec4<i32>(arg_1.a, -30685i, 32731i, -1i), !arg_0.d.a.x))), Struct_4(-35384i));
    return Struct_5(!(!global4.a), Struct_3(func_3(countOneBits(var_3.a), !global4.a, Struct_4(arg_1.b), u_input.b.x).a, Struct_2(arg_1.b, var_3.d.b & _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.d.c, 1i, -2147483647i), vec3<i32>(17713i, global4.b.b.a, arg_1.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.b.c.x, arg_0.c.x, -272f, -863f))))), func_3(_wgslsmith_add_u32(90278u, 0u), !global4.a, Struct_4(~global4.c.c), var_3.a).d), global4.b.d, 77055u);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_4(func_1(global4.b.d.c <= (~global4.b.b.b & (1i | global4.c.c)), false, ~firstLeadingBit(vec4<i32>(global4.b.d.c, global4.c.c, -65332i, global4.c.b)), Struct_4(global4.b.d.c)), Struct_2(global4.c.c, ~(~2147483647i) & ~global4.b.b.a), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(-global4.b.d.c, func_1(true, global1[_wgslsmith_index_u32(u_input.b.x, 17u)], vec4<i32>(-14279i, -2147483647i, 1i, 25572i), Struct_4(global4.b.b.a)).b.a), _wgslsmith_mult_i32(firstLeadingBit(9215i), 25943i & global4.c.b), global4.c.b), (min(vec3<i32>(-1i, 0i, global4.b.d.c), vec3<i32>(-37076i, -1i, 7297i)) >> (vec3<u32>(0u, u_input.b.x, 4294967295u) % vec3<u32>(32u))) << (_wgslsmith_add_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 4u)], global0[_wgslsmith_index_u32(global4.c.d.x, 4u)], 15646u), global4.b.d.d.xzy >> (global4.b.d.d.xzy % vec3<u32>(32u))) % vec3<u32>(32u))));
    let var_0 = vec2<u32>(~u_input.a, 4294967295u);
    var var_1 = vec2<bool>(func_4(Struct_3(global4.b.d.d.x, func_1(true, all(global4.a.zy), ~vec4<i32>(-2147483647i, global4.c.c, 1i, 1i), Struct_4(global4.b.b.a)).b, vec4<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 4u)], 19u)] * global2[_wgslsmith_index_u32(24321u, 19u)]), _wgslsmith_f_op_f32(max(-719f, global2[_wgslsmith_index_u32(var_0.x, 19u)])), _wgslsmith_f_op_f32(global4.b.c.x + global2[_wgslsmith_index_u32(1u, 19u)]), _wgslsmith_div_f32(1246f, -1000f)), Struct_1(global4.a.yx, -771i, -global4.b.d.b, global4.b.d.d)), global4.b.b, _wgslsmith_sub_i32(~_wgslsmith_sub_i32(14241i, global4.c.b), abs(24108i))).c.a.x, global4.a.x);
    let var_2 = global4.c.c == global4.b.d.c;
    var var_3 = -581f;
    global2 = array<f32, 19>();
    let var_4 = vec2<u32>(firstTrailingBit(~abs(8287u)), _wgslsmith_mod_u32(~countOneBits(46579u) >> ((~12365u & global4.c.d.x) % 32u), _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global4.c.d.x, 4u)], 13644u)));
    let var_5 = Struct_3(~_wgslsmith_mult_u32(global4.c.d.x, _wgslsmith_sub_u32(global4.d, ~45245u)), global4.b.b, global4.b.c, global4.c);
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(0u, 4u)], reverseBits(2147483647i), -(~_wgslsmith_div_vec4_i32(max(vec4<i32>(18586i, 19126i, global4.b.b.a, 1i), vec4<i32>(-1i, var_5.d.b, global4.c.b, -2147483647i)), _wgslsmith_div_vec4_i32(vec4<i32>(11911i, global4.b.b.a, -1i, var_5.d.c), vec4<i32>(41403i, 9872i, global4.b.d.c, -9060i)))));
}

