struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec3<i32>(28500i, 0i, 28429i), -15889i, vec2<u32>(60479u, 54004u)), Struct_1(vec3<i32>(2540i, -4321i, 1i), 1i, vec2<u32>(70638u, 4294967295u)), Struct_1(vec3<i32>(2147483647i, 23808i, -19786i), 34653i, vec2<u32>(21599u, 16262u)), Struct_1(vec3<i32>(26399i, -4498i, -36550i), 34633i, vec2<u32>(0u, 1u)), Struct_1(vec3<i32>(-1i, i32(-2147483648), 68081i), 1i, vec2<u32>(0u, 37028u)), Struct_1(vec3<i32>(39419i, -1i, -1905i), -1i, vec2<u32>(4294967295u, 93319u)), Struct_1(vec3<i32>(-56163i, 2147483647i, i32(-2147483648)), 21581i, vec2<u32>(73408u, 3172u)), Struct_1(vec3<i32>(-16126i, 68293i, 2147483647i), 1i, vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec3<i32>(-84145i, 2147483647i, -155i), -31434i, vec2<u32>(1u, 1u)), Struct_1(vec3<i32>(37922i, 1i, 0i), 0i, vec2<u32>(14989u, 4294967295u)), Struct_1(vec3<i32>(0i, -51440i, 7204i), -52881i, vec2<u32>(53103u, 20257u)), Struct_1(vec3<i32>(2147483647i, 19128i, 3261i), 2147483647i, vec2<u32>(1u, 46470u)), Struct_1(vec3<i32>(1i, 2147483647i, 2147483647i), -34621i, vec2<u32>(4294967295u, 1u)), Struct_1(vec3<i32>(i32(-2147483648), 1954i, -3482i), i32(-2147483648), vec2<u32>(33225u, 4294967295u)), Struct_1(vec3<i32>(-49770i, 2147483647i, 2147483647i), 0i, vec2<u32>(54837u, 1u)), Struct_1(vec3<i32>(-1i, i32(-2147483648), -20924i), -12537i, vec2<u32>(0u, 41916u)), Struct_1(vec3<i32>(-43247i, -25416i, 0i), -1i, vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec3<i32>(2780i, i32(-2147483648), 0i), 0i, vec2<u32>(73085u, 13074u)), Struct_1(vec3<i32>(i32(-2147483648), -12514i, -5006i), -28870i, vec2<u32>(3321u, 0u)), Struct_1(vec3<i32>(-4172i, -1i, -29504i), 34563i, vec2<u32>(126657u, 9429u)), Struct_1(vec3<i32>(i32(-2147483648), -57756i, 53057i), 0i, vec2<u32>(1u, 4294967295u)), Struct_1(vec3<i32>(11907i, -22260i, 1i), -16511i, vec2<u32>(0u, 1u)));

var<private> global1: array<vec2<bool>, 16>;

var<private> global2: array<f32, 9>;

var<private> global3: i32;

var<private> global4: array<bool, 29> = array<bool, 29>(false, true, true, false, false, false, true, false, false, false, false, true, true, true, false, true, false, true, true, true, true, true, false, true, false, false, true, true, false);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>) -> i32 {
    var var_0 = ~55587u;
    let var_1 = vec4<i32>(~(i32(-1i) * -1294i), 2147483647i, -(firstTrailingBit(arg_0.b >> (1u % 32u)) << (reverseBits(_wgslsmith_mod_u32(54104u, 4294967295u)) % 32u)), -_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(arg_0.a.x, u_input.a.x, 1i, 13745i) ^ vec4<i32>(-12777i, 71351i, 1i, u_input.a.x)), max(vec4<i32>(1i, 1078i, u_input.d, -2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(86797i, -2147483647i, -28463i, -29564i), vec4<i32>(1i, u_input.a.x, -12875i, 2147483647i)))));
    global1 = array<vec2<bool>, 16>();
    let var_2 = ~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.b.x, 58190u, u_input.b.x)), vec3<u32>(u_input.b.x, arg_0.c.x, ~6978u));
    var var_3 = vec3<f32>(global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2, 1u, 34879u >> (arg_0.c.x % 32u), arg_0.c.x), vec4<u32>(0u, 31467u, ~0u, _wgslsmith_sub_u32(arg_0.c.x, arg_0.c.x)))), 9u)], _wgslsmith_f_op_f32(select(952f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(94674u, 9u)], -1012f) * -481f), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b.x, 9u)] - -1915f)), select(all(vec3<bool>(true, false, arg_1.x)), !arg_1.x | true, true))), global2[_wgslsmith_index_u32(firstLeadingBit(var_2), 9u)]);
    return arg_0.b;
}

fn func_4(arg_0: i32) -> vec2<u32> {
    global0 = array<Struct_1, 22>();
    global3 = _wgslsmith_dot_vec4_i32(min(_wgslsmith_mult_vec4_i32(-(vec4<i32>(u_input.d, -2147483647i, -1i, -2147483647i) | vec4<i32>(u_input.c.x, arg_0, -2147483647i, arg_0)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, -1i, arg_0, u_input.a.x), vec4<i32>(u_input.d, arg_0, 10842i, arg_0)) ^ abs(vec4<i32>(arg_0, 0i, u_input.d, u_input.c.x))), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(84888i, u_input.d, 0i, 1i), ~(~vec4<i32>(24330i, u_input.c.x, arg_0, -23371i)))), _wgslsmith_div_vec4_i32(select(~firstTrailingBit(vec4<i32>(arg_0, u_input.c.x, 0i, -1i)), -vec4<i32>(arg_0, -11716i, 1i, arg_0), select(vec4<bool>(global4[_wgslsmith_index_u32(u_input.b.x, 29u)], global4[_wgslsmith_index_u32(0u, 29u)], global4[_wgslsmith_index_u32(26932u, 29u)], global4[_wgslsmith_index_u32(u_input.b.x, 29u)]), select(vec4<bool>(true, global4[_wgslsmith_index_u32(u_input.b.x, 29u)], true, global4[_wgslsmith_index_u32(30640u, 29u)]), vec4<bool>(false, global4[_wgslsmith_index_u32(62932u, 29u)], false, true), global4[_wgslsmith_index_u32(u_input.b.x, 29u)]), true & global4[_wgslsmith_index_u32(u_input.b.x, 29u)])), _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(arg_0, 4280i, 59680i, -67337i), select(vec4<i32>(31919i, 31506i, -40736i, -1i), vec4<i32>(0i, 1783i, arg_0, -1i), vec4<bool>(false, global4[_wgslsmith_index_u32(u_input.b.x, 29u)], true, global4[_wgslsmith_index_u32(13098u, 29u)])), -vec4<i32>(u_input.c.x, 2147483647i, 33022i, u_input.c.x)), vec4<i32>(countOneBits(arg_0), -arg_0, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, arg_0, u_input.c.x, u_input.a.x), vec4<i32>(arg_0, arg_0, -2147483647i, u_input.c.x)), _wgslsmith_sub_i32(-16042i, -2147483647i)))));
    let var_0 = any(select(vec4<bool>(false, !any(vec3<bool>(global4[_wgslsmith_index_u32(0u, 29u)], true, true)), global4[_wgslsmith_index_u32(u_input.b.x, 29u)] & global4[_wgslsmith_index_u32(35640u, 29u)], any(vec3<bool>(global4[_wgslsmith_index_u32(16332u, 29u)], global4[_wgslsmith_index_u32(113754u, 29u)], false)) && global4[_wgslsmith_index_u32(countOneBits(23149u), 29u)]), select(select(vec4<bool>(true, global4[_wgslsmith_index_u32(1u, 29u)], global4[_wgslsmith_index_u32(u_input.b.x, 29u)], global4[_wgslsmith_index_u32(u_input.b.x, 29u)]), select(vec4<bool>(global4[_wgslsmith_index_u32(u_input.b.x, 29u)], true, global4[_wgslsmith_index_u32(0u, 29u)], false), vec4<bool>(false, true, global4[_wgslsmith_index_u32(u_input.b.x, 29u)], global4[_wgslsmith_index_u32(u_input.b.x, 29u)]), vec4<bool>(false, false, false, false)), false), vec4<bool>(!global4[_wgslsmith_index_u32(u_input.b.x, 29u)], global4[_wgslsmith_index_u32(~0u, 29u)], -72630i >= arg_0, all(vec4<bool>(global4[_wgslsmith_index_u32(41515u, 29u)], global4[_wgslsmith_index_u32(u_input.b.x, 29u)], global4[_wgslsmith_index_u32(u_input.b.x, 29u)], true))), !vec4<bool>(false, global4[_wgslsmith_index_u32(1u, 29u)], global4[_wgslsmith_index_u32(99943u, 29u)], global4[_wgslsmith_index_u32(9224u, 29u)])), vec4<bool>(true, all(select(vec3<bool>(true, global4[_wgslsmith_index_u32(u_input.b.x, 29u)], global4[_wgslsmith_index_u32(u_input.b.x, 29u)]), vec3<bool>(global4[_wgslsmith_index_u32(u_input.b.x, 29u)], global4[_wgslsmith_index_u32(u_input.b.x, 29u)], true), false)), ~u_input.b.x > u_input.b.x, global4[_wgslsmith_index_u32(u_input.b.x, 29u)])));
    global0 = array<Struct_1, 22>();
    let var_1 = ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, ~(~u_input.b.x)), ~(~(~4294967295u)));
    return u_input.b;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_1 {
    global4 = array<bool, 29>();
    let var_0 = Struct_1(u_input.a, arg_1.a.x, func_4(func_3(arg_1, !global1[_wgslsmith_index_u32(arg_1.c.x, 16u)]) | -6109i));
    var var_1 = -firstTrailingBit(arg_1.a.x);
    var var_2 = global0[_wgslsmith_index_u32(3307u, 22u)];
    let var_3 = max(select(countOneBits(~vec4<i32>(var_0.a.x, 0i, 2147483647i, var_2.a.x)), vec4<i32>(_wgslsmith_add_i32(u_input.c.x, -30802i), func_3(global0[_wgslsmith_index_u32(var_0.c.x, 22u)], global1[_wgslsmith_index_u32(4294967295u, 16u)]), arg_1.a.x, var_2.a.x), select(select(vec4<bool>(false, false, arg_2.x, arg_0), vec4<bool>(true, arg_0, false, false), arg_2.x), !vec4<bool>(global4[_wgslsmith_index_u32(99275u, 29u)], true, false, true), vec4<bool>(arg_0, global4[_wgslsmith_index_u32(4294967295u, 29u)], true, false))) & (~vec4<i32>(-1i, var_0.a.x, 46456i, var_2.b) | vec4<i32>(~(-2147483647i), 4274i >> (var_2.c.x % 32u), arg_1.b, arg_1.a.x ^ u_input.c.x)), (select(vec4<i32>(var_2.b, -29037i, u_input.a.x, -29036i), vec4<i32>(u_input.c.x, 1i, u_input.c.x, 2147483647i), !vec4<bool>(arg_2.x, false, arg_2.x, true)) << (vec4<u32>(~arg_1.c.x, var_0.c.x ^ 4080u, u_input.b.x & 0u, ~7821u) % vec4<u32>(32u))) ^ _wgslsmith_add_vec4_i32(-vec4<i32>(2147483647i, -1i, arg_1.a.x, 2147483647i), reverseBits(vec4<i32>(-20185i, arg_1.b, var_0.b, 1i))));
    return global0[_wgslsmith_index_u32(max(_wgslsmith_add_u32(_wgslsmith_mod_u32(1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.x, var_2.c.x), vec2<u32>(0u, u_input.b.x))), _wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(0u, 12309u, 4294967295u, var_0.c.x)), min(~vec4<u32>(26693u, 9807u, var_0.c.x, 1u), vec4<u32>(19595u, 28494u, 0u, arg_1.c.x)))), _wgslsmith_mod_u32(~max(4294967295u, 36064u), countOneBits(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.x, 32096u, arg_1.c.x), vec3<u32>(44416u, 0u, 4000u)))))), 22u)];
}

fn func_1() -> vec3<bool> {
    let var_0 = _wgslsmith_sub_i32(-32115i, _wgslsmith_dot_vec2_i32(u_input.a.zy, firstTrailingBit(vec2<i32>(u_input.a.x ^ u_input.c.x, min(u_input.d, 15725i)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-521f, 1623f, 203f) + vec3<f32>(global2[_wgslsmith_index_u32(1u, 9u)], -912f, 1645f)) + _wgslsmith_div_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 9u)], 684f, global2[_wgslsmith_index_u32(u_input.b.x, 9u)]), vec3<f32>(global2[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(4294967295u, 9u)], 2061f)))) + vec3<f32>(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, ~u_input.b.x), 9u)], global2[_wgslsmith_index_u32(~(~98277u), 9u)], _wgslsmith_f_op_f32(-1000f - 1443f))));
    let var_2 = func_2(true, global0[_wgslsmith_index_u32(u_input.b.x, 22u)], global1[_wgslsmith_index_u32(u_input.b.x, 16u)]);
    var var_3 = true;
    let var_4 = var_2;
    return vec3<bool>(global4[_wgslsmith_index_u32(~min(u_input.b.x, 1u) >> ((~(~var_4.c.x) & func_2(true, func_2(true, var_4, global1[_wgslsmith_index_u32(0u, 16u)]), vec2<bool>(false, true)).c.x) % 32u), 29u)], !(!global4[_wgslsmith_index_u32(var_4.c.x, 29u)] & (_wgslsmith_f_op_f32(f32(-1f) * -623f) <= _wgslsmith_f_op_f32(select(845f, -125f, global4[_wgslsmith_index_u32(21306u, 29u)])))), global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(abs(33774u), reverseBits(13458u), _wgslsmith_mod_u32(var_4.c.x, u_input.b.x), var_2.c.x), firstTrailingBit(vec4<u32>(u_input.b.x, u_input.b.x, 1u, 4294967295u))), 0u), 29u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!func_1());
    global3 = u_input.d;
    var_0 = vec3<bool>(true, all(!vec3<bool>(any(vec2<bool>(true, global4[_wgslsmith_index_u32(63955u, 29u)])), var_0.x && global4[_wgslsmith_index_u32(36352u, 29u)], !global4[_wgslsmith_index_u32(u_input.b.x, 29u)])), u_input.b.x >= _wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.b.x, 18080u, u_input.b.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 1u, u_input.b.x), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)))));
    let var_1 = i32(-1i) * -1i;
    let var_2 = _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~4294967295u, u_input.b.x), 9u)], -107f));
    let var_3 = global0[_wgslsmith_index_u32(u_input.b.x, 22u)];
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1027f, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(firstLeadingBit(37528u), min(4294967295u, 4294967295u)), 9u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2))))), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_3.c.x, 34591u, var_3.c.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, var_3.c.x, 0u))) >> (~(vec4<u32>(u_input.b.x, var_3.c.x, 0u, 18284u) | _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 48278u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 4294967295u, 0u, 0u))) % vec4<u32>(32u)), ~select(firstTrailingBit(vec2<i32>(var_1, -23951i)) & -var_3.a.xx, ~vec2<i32>(u_input.c.x, var_1), select(func_1().zz, vec2<bool>(false, false), !global4[_wgslsmith_index_u32(u_input.b.x, 29u)])));
}

