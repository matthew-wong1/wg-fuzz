struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: vec4<i32>,
    d: f32,
    e: bool,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_3,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec4<i32>,
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

var<private> global0: array<vec4<bool>, 30>;

var<private> global1: array<Struct_5, 14>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32) -> vec3<i32> {
    let var_0 = ~(-2147483647i);
    let var_1 = 964f;
    global1 = array<Struct_5, 14>();
    global1 = array<Struct_5, 14>();
    var var_2 = Struct_2(Struct_1(~firstLeadingBit(select(u_input.b, u_input.b, vec2<bool>(false, false))), !(!select(global0[_wgslsmith_index_u32(u_input.b.x, 30u)], vec4<bool>(false, true, false, true), false))), _wgslsmith_add_i32(firstTrailingBit(2147483647i), 10893i));
    return (max(countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, var_0, 0i), u_input.d)), firstLeadingBit(countOneBits(vec3<i32>(var_0, 1i, u_input.e.x)))) | reverseBits(u_input.e.xxw)) ^ (abs(vec3<i32>(min(16400i, 1i), arg_0, var_2.b)) << (~(~(vec3<u32>(u_input.b.x, 1u, 4294967295u) | vec3<u32>(1u, var_2.a.a.x, u_input.a))) % vec3<u32>(32u)));
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_2) -> vec4<f32> {
    global0 = array<vec4<bool>, 30>();
    let var_0 = arg_2;
    global0 = array<vec4<bool>, 30>();
    let var_1 = _wgslsmith_sub_vec4_i32(~(vec4<i32>(_wgslsmith_sub_i32(11418i, var_0.b), i32(-1i) * -8653i, firstLeadingBit(21609i), -22081i) & vec4<i32>(_wgslsmith_mult_i32(34090i, u_input.e.x), var_0.b, arg_0, abs(var_0.b))), vec4<i32>(arg_0 & reverseBits(-1i), -(45177i >> (~var_0.a.a.x % 32u)), _wgslsmith_sub_i32(-1i, max(~1i, arg_0)), ~(i32(-1i) * -47066i)));
    var var_2 = Struct_3(var_0.a.b.yzw, Struct_2(Struct_1((u_input.b >> (u_input.b % vec2<u32>(32u))) >> (select(arg_2.a.a, vec2<u32>(37485u, var_0.a.a.x), vec2<bool>(var_0.a.b.x, var_0.a.b.x)) % vec2<u32>(32u)), vec4<bool>(u_input.a >= 4294967295u, any(arg_2.a.b.xy), all(vec3<bool>(true, false, false)), arg_2.a.b.x)), -41825i), vec4<i32>(firstLeadingBit(var_1.x), _wgslsmith_sub_i32(arg_0 & (u_input.e.x & var_0.b), i32(-1i) * -u_input.d.x), -1i, 1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-493f + 860f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - -160f)))), !select(true, !var_0.a.b.x, var_0.b >= firstTrailingBit(-29788i)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1304f, -191f, -1097f, 926f)));
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: bool, arg_3: vec2<u32>) -> bool {
    global1 = array<Struct_5, 14>();
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(func_4(-1i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1754f, arg_0, 1442f))))) * vec3<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(step(arg_0, arg_0)))), Struct_2(Struct_1(~vec2<u32>(arg_3.x, 17619u), !vec4<bool>(arg_2, true, false, false)), _wgslsmith_dot_vec3_i32(vec3<i32>(42058i, 25216i, u_input.d.x) << (vec3<u32>(4309u, arg_3.x, 4294967295u) % vec3<u32>(32u)), func_3(arg_1.b))))));
    global1 = array<Struct_5, 14>();
    var var_1 = Struct_4(var_0.a);
    global1 = array<Struct_5, 14>();
    return !arg_1.a.b.x;
}

fn func_5(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_5, arg_3: u32) -> i32 {
    var var_0 = ~arg_2.b.b.a.a.x;
    let var_1 = arg_0.b.a.b.wzw;
    let var_2 = global1[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec2_u32(~(vec2<u32>(1u, 13820u) ^ u_input.b), vec2<u32>(107u >> (0u % 32u), 88087u))), 14u)];
    global1 = array<Struct_5, 14>();
    global1 = array<Struct_5, 14>();
    return -u_input.e.x ^ 1602i;
}

fn func_1() -> u32 {
    global1 = array<Struct_5, 14>();
    global0 = array<vec4<bool>, 30>();
    let var_0 = min(1i, -1i);
    let var_1 = func_5(Struct_3(vec3<bool>(true, true, !func_2(1000f, Struct_2(Struct_1(u_input.b, global0[_wgslsmith_index_u32(1u, 30u)]), -30450i), false, vec2<u32>(u_input.c, u_input.a))), Struct_2(Struct_1(u_input.b, vec4<bool>(true, true, true, false)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, var_0, var_0), vec3<i32>(-49898i, u_input.e.x, u_input.e.x))), -countOneBits(u_input.e) ^ u_input.e, -928f, u_input.a <= (_wgslsmith_dot_vec2_u32(vec2<u32>(14151u, u_input.a), vec2<u32>(4294967295u, 97704u)) ^ abs(96934u))), vec2<bool>(func_2(_wgslsmith_f_op_f32(f32(-1f) * -1043f), Struct_2(Struct_1(vec2<u32>(u_input.c, u_input.a), global0[_wgslsmith_index_u32(4294967295u, 30u)]), 2147483647i), true, abs(u_input.b)) && true, true), Struct_5(!(!global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(60004u, u_input.a), 30u)]), Struct_3(select(vec3<bool>(false, false, false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), var_0 < 1i), Struct_2(Struct_1(vec2<u32>(u_input.a, 0u), vec4<bool>(true, false, true, true)), -var_0), u_input.e, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-641f - 1755f))), all(!global0[_wgslsmith_index_u32(u_input.b.x, 30u)])), ~1u >= u_input.a, Struct_2(Struct_1(~u_input.b, vec4<bool>(false, false, true, false)), u_input.d.x << (~0u % 32u))), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, ~_wgslsmith_mult_u32(u_input.c, 1u), select(u_input.c, u_input.c, true), select(~8217u, ~4294967295u, var_0 != var_0)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 0u, 0u, u_input.c), ~vec4<u32>(u_input.c, 4294967295u, 2286u, 21971u)) >> (~select(vec4<u32>(u_input.a, u_input.a, u_input.b.x, u_input.a), vec4<u32>(37565u, 0u, 0u, 36517u), true) % vec4<u32>(32u))));
    global0 = array<vec4<bool>, 30>();
    return _wgslsmith_mod_u32(~firstTrailingBit(firstTrailingBit(_wgslsmith_add_u32(0u, 10319u))), _wgslsmith_clamp_u32(~_wgslsmith_mult_u32(16832u, reverseBits(u_input.a)), reverseBits(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(u_input.a, 42429u)), u_input.b)), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(1u, 52770u, 6246u, 63040u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, u_input.c, u_input.c, 24024u), vec4<u32>(u_input.c, u_input.c, u_input.a, 1u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_5, 14>();
    var var_0 = u_input.e.x;
    let var_1 = vec2<i32>(-41020i, u_input.d.x);
    var var_2 = _wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(func_1(), 12152u));
    var var_3 = vec4<u32>(_wgslsmith_dot_vec2_u32(select(u_input.b, abs(u_input.b), true & all(vec3<bool>(true, false, true))), u_input.b), u_input.c, abs(u_input.a), reverseBits(_wgslsmith_mult_u32(~0u, _wgslsmith_add_u32(22056u, u_input.c))));
    let var_4 = select(vec3<bool>(select(false, true, true), _wgslsmith_mult_i32(~(-21919i), -1i) > -var_1.x, !(21074u < u_input.c)), !vec3<bool>(false, true, !select(true, true, false)), all(select(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), func_2(-1131f, Struct_2(Struct_1(u_input.b, vec4<bool>(true, false, false, false)), 83407i), false, vec2<u32>(4294967295u, 0u))), countOneBits(u_input.e.x) < var_1.x)));
    var var_5 = _wgslsmith_sub_vec2_i32(~countOneBits(min(var_1, firstTrailingBit(vec2<i32>(-13883i, -2147483647i)))), countOneBits(vec2<i32>(u_input.e.x, 15397i)));
    var var_6 = Struct_5(select(!global0[_wgslsmith_index_u32(4294967295u, 30u)], select(select(global0[_wgslsmith_index_u32(u_input.a, 30u)], global0[_wgslsmith_index_u32(min(u_input.b.x, 4294967295u), 30u)], vec4<bool>(true, var_4.x, var_4.x, true)), !global0[_wgslsmith_index_u32(var_3.x, 30u)], !global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, 4294967295u), 30u)]), select(global0[_wgslsmith_index_u32(0u, 30u)], !vec4<bool>(var_4.x, false, var_4.x, var_4.x), vec4<bool>(var_4.x, false, u_input.e.x == var_1.x, false))), Struct_3(vec3<bool>(var_4.x, any(vec2<bool>(false, false)), true && all(vec2<bool>(var_4.x, var_4.x))), Struct_2(Struct_1(vec2<u32>(16966u, var_3.x), global0[_wgslsmith_index_u32(~8031u, 30u)]), abs(-1i >> (var_3.x % 32u))), u_input.e, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(227f + 1000f)))), var_4.x), var_4.x, Struct_2(Struct_1(~var_3.yx, !vec4<bool>(var_4.x, true, true, var_4.x)), 3216i));
    var var_7 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let x = u_input.a;
    s_output = StorageBuffer(max(~_wgslsmith_mod_vec4_u32(~vec4<u32>(13960u, var_3.x, 12413u, u_input.b.x), ~vec4<u32>(13033u, var_6.b.b.a.a.x, 1u, var_6.b.b.a.a.x)), vec4<u32>(abs(1u), var_3.x << (var_6.d.a.a.x % 32u), _wgslsmith_mod_u32(11041u, 4294967295u) ^ ~var_3.x, _wgslsmith_clamp_u32(u_input.c, var_3.x << (var_6.b.b.a.a.x % 32u), u_input.c >> (var_6.d.a.a.x % 32u)))));
}

