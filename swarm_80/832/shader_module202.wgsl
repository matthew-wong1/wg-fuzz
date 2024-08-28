struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: bool,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<bool, 9> = array<bool, 9>(true, false, true, true, true, false, true, false, true);

var<private> global2: vec3<u32> = vec3<u32>(73422u, 4294967295u, 126044u);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32, arg_1: bool) -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(~global2.x, 9u)];
    var var_1 = Struct_2(18840i > u_input.b, countOneBits(u_input.b));
    global2 = (vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.d.x, 0u, global2.x), vec4<u32>(1u, global2.x, u_input.a.x, u_input.a.x)), global2.x, abs(global2.x)) << ((max(vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), vec3<u32>(82194u, global2.x, 47360u) ^ vec3<u32>(102148u, 6019u, global2.x)) & (reverseBits(vec3<u32>(40450u, u_input.c, global0.x)) & select(u_input.d, u_input.d, true))) % vec3<u32>(32u))) | u_input.d;
    let var_2 = select(~vec2<i32>(u_input.b, -1i), -countOneBits(abs(_wgslsmith_add_vec2_i32(vec2<i32>(45044i, u_input.b), vec2<i32>(u_input.b, var_1.b)))), !(_wgslsmith_f_op_f32(1209f - arg_0) <= arg_0) | !(!(global1[_wgslsmith_index_u32(global2.x, 9u)] | var_1.a)));
    var var_3 = Struct_1(vec4<u32>(0u, _wgslsmith_dot_vec2_u32(u_input.d.xy, select(~vec2<u32>(60122u, global0.x), abs(global0.yx), !global1[_wgslsmith_index_u32(u_input.c, 9u)])), u_input.d.x, _wgslsmith_clamp_u32(global2.x, _wgslsmith_dot_vec2_u32(global0.xx, global2.zy) | global0.x, ~(~u_input.a.x))), vec3<i32>(~_wgslsmith_sub_i32(var_2.x, i32(-1i) * -1i), i32(-1i) * -2147483647i, u_input.b & -322i), all(select(!(!vec4<bool>(var_1.a, true, var_1.a, arg_1)), vec4<bool>(true, true, global1[_wgslsmith_index_u32(11992u, 9u)], var_1.a), !any(vec2<bool>(arg_1, true)))), u_input.d.xz, select(~global0.zy, firstTrailingBit(select(vec2<u32>(4294967295u, global0.x), ~vec2<u32>(global2.x, 4294967295u), vec2<bool>(true, false))), select(!(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.c, 9u)], false)), vec2<bool>(191f == arg_0, false), vec2<bool>(true, false))));
    return abs(1u) & firstLeadingBit(~var_3.e.x);
}

fn func_2(arg_0: vec2<u32>, arg_1: i32) -> Struct_1 {
    let var_0 = min(u_input.a.x, reverseBits(firstLeadingBit(func_3(519f, false))) << ((func_3(_wgslsmith_f_op_f32(min(-113f, 539f)), global1[_wgslsmith_index_u32(u_input.c, 9u)]) << (global0.x % 32u)) % 32u));
    let var_1 = ~(~_wgslsmith_sub_vec3_u32(~u_input.d, ~vec3<u32>(global0.x, arg_0.x, global0.x)));
    let var_2 = Struct_3(max(u_input.a, vec2<u32>(561u, u_input.c)) ^ _wgslsmith_sub_vec2_u32(var_1.xx, ~global2.yz), _wgslsmith_add_vec2_u32(~(vec2<u32>(0u, global2.x) | min(vec2<u32>(6058u, var_1.x), arg_0)), global0.yy), 0i, _wgslsmith_dot_vec2_i32(-abs(firstLeadingBit(vec2<i32>(u_input.b, 0i))), (~vec2<i32>(arg_1, arg_1) ^ _wgslsmith_mult_vec2_i32(vec2<i32>(arg_1, arg_1), vec2<i32>(-1i, u_input.b))) | -_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(arg_1, arg_1))));
    var var_3 = false && global1[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(~var_0, min(101351u, 36310u), var_0) << (countOneBits(4294967295u) % 32u)), 9u)];
    var var_4 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-795f))));
    return Struct_1(abs(~vec4<u32>(firstLeadingBit(81545u), 45873u, ~var_2.b.x, ~global2.x)), vec3<i32>(select(17206i, arg_1, global1[_wgslsmith_index_u32(4294967295u, 9u)] == global1[_wgslsmith_index_u32(0u, 9u)]), _wgslsmith_add_i32(countOneBits(u_input.b), _wgslsmith_div_i32(_wgslsmith_mult_i32(27254i, 0i), ~u_input.b)), var_2.c), any(vec3<bool>(all(!vec2<bool>(global1[_wgslsmith_index_u32(38541u, 9u)], false)), global1[_wgslsmith_index_u32(1u, 9u)], global1[_wgslsmith_index_u32(0u & u_input.c, 9u)] && true)), ~(~(~(~vec2<u32>(20044u, global0.x)))), _wgslsmith_mod_vec2_u32(~(~(var_2.b >> (arg_0 % vec2<u32>(32u)))), ~(vec2<u32>(var_0, global2.x) << (global2.yz % vec2<u32>(32u)))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_3(vec2<u32>(reverseBits(~abs(39638u)), _wgslsmith_mult_u32(_wgslsmith_sub_u32(1u, 1u), func_2(u_input.d.zy, -18467i).a.x)), _wgslsmith_sub_vec2_u32(abs(~u_input.a >> (global0.xz % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, global0.x), global2.yy), ~(~vec2<u32>(1u, 2633u)))), u_input.b, -77244i);
    var var_1 = Struct_3(arg_0.d, global0.xz, abs(~u_input.b), firstLeadingBit(arg_0.b.x));
    let var_2 = func_2(_wgslsmith_div_vec2_u32(~var_0.a, arg_0.e), -61261i).c;
    let var_3 = arg_0;
    var var_4 = Struct_2(true, -select(-2147483647i, 1i, arg_0.c) & 19525i);
    return func_2(var_0.a, max(_wgslsmith_clamp_i32(var_1.c, _wgslsmith_add_i32(~var_4.b, var_4.b), i32(-1i) * -38922i), 15564i));
}

fn func_5(arg_0: Struct_1, arg_1: u32) -> i32 {
    var var_0 = vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~(~u_input.c), global0.x), arg_0.d.x), _wgslsmith_dot_vec3_u32(~select(u_input.d, ~arg_0.a.xxy, all(vec3<bool>(true, global1[_wgslsmith_index_u32(global0.x, 9u)], global1[_wgslsmith_index_u32(arg_1, 9u)]))), max(_wgslsmith_clamp_vec3_u32(vec3<u32>(global2.x, 4294967295u, 1u) ^ u_input.d, vec3<u32>(4294967295u, arg_1, arg_1), u_input.d), countOneBits(u_input.d))), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.a.x, global2.x, global2.x, 75885u), arg_0.a), arg_0.a), 1u);
    global2 = var_0.xyz;
    var_0 = ~_wgslsmith_clamp_vec4_u32(vec4<u32>(~func_3(1752f, arg_0.c), _wgslsmith_dot_vec3_u32(vec3<u32>(32716u, var_0.x, global2.x), min(vec3<u32>(arg_1, arg_1, global0.x), u_input.d)), countOneBits(firstLeadingBit(var_0.x)), u_input.a.x), firstLeadingBit(reverseBits(arg_0.a)), _wgslsmith_mult_vec4_u32(select(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1, 409u, global2.x, var_0.x), vec4<u32>(global2.x, 5344u, 0u, arg_1)), arg_0.a, !vec4<bool>(false, global1[_wgslsmith_index_u32(arg_1, 9u)], global1[_wgslsmith_index_u32(4294967295u, 9u)], true)), vec4<u32>(arg_1 | 39395u, 60765u, abs(var_0.x), ~global2.x)));
    global2 = _wgslsmith_mod_vec3_u32(arg_0.a.www, vec3<u32>(20363u ^ func_2(_wgslsmith_div_vec2_u32(global2.zz, vec2<u32>(arg_0.a.x, arg_0.e.x)), func_4(Struct_1(vec4<u32>(0u, arg_0.a.x, global0.x, 85912u), arg_0.b, true, global0.xz, vec2<u32>(11371u, arg_0.a.x))).b.x).d.x, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~u_input.d, var_0.wxw), var_0.x), _wgslsmith_clamp_u32(~23411u >> (abs(global2.x) % 32u), ~(~u_input.a.x), countOneBits(0u))));
    var var_1 = arg_0.e.x;
    return ~func_2(var_0.yy, -2147483647i).b.x;
}

fn func_1() -> StorageBuffer {
    global0 = u_input.d;
    var var_0 = global0.x;
    var var_1 = func_5(func_4(func_2(global2.xz, 12798i)), 4294967295u) | (_wgslsmith_sub_i32(max(~u_input.b, 2147483647i), -u_input.b) << (_wgslsmith_mult_u32(_wgslsmith_add_u32(func_2(vec2<u32>(89119u, u_input.a.x), 4198i).d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.d.x), vec2<u32>(global0.x, 6972u))), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 14917u), global2.xx), _wgslsmith_mod_vec2_u32(vec2<u32>(global2.x, u_input.c), vec2<u32>(4294967295u, 49560u)))) % 32u));
    let var_2 = all(select(vec3<bool>(!(!global1[_wgslsmith_index_u32(u_input.c, 9u)]), true, true), vec3<bool>(false, true & (true & global1[_wgslsmith_index_u32(0u, 9u)]), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, 7353u) | _wgslsmith_add_u32(global0.x, global2.x), 9u)]), !global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, global0.x), 9u)] & (!global1[_wgslsmith_index_u32(34653u, 9u)] || true)));
    var var_3 = Struct_1(~(~(~firstTrailingBit(vec4<u32>(21625u, 4294967295u, u_input.c, 1u)))), _wgslsmith_sub_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(-13647i, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, 16440i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, 2147483647i, -2672i) | vec3<i32>(u_input.b, u_input.b, 2147483647i), max(vec3<i32>(-96900i, -1i, u_input.b), vec3<i32>(u_input.b, u_input.b, 90452i)), vec3<i32>(u_input.b, 1i, -20513i) << (u_input.d % vec3<u32>(32u)))) >> (_wgslsmith_clamp_vec3_u32(~abs(u_input.d), func_2(max(global0.yz, vec2<u32>(7694u, global2.x)), 1i).a.wxw, ~vec3<u32>(15026u, 1u, global0.x)) % vec3<u32>(32u)), true && global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(global0.x, global0.x, 45612u), ~vec3<u32>(u_input.a.x, 12611u, global0.x)), global2.x), 9u)], _wgslsmith_sub_vec2_u32(~(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, global2.x), vec2<u32>(0u, global2.x)) >> (vec2<u32>(43976u, 43518u) % vec2<u32>(32u))), ~_wgslsmith_mult_vec2_u32(vec2<u32>(31921u, global0.x) << (vec2<u32>(0u, 1u) % vec2<u32>(32u)), abs(vec2<u32>(0u, global2.x)))), min(func_4(Struct_1(vec4<u32>(global0.x, 4294967295u, u_input.c, 7341u), vec3<i32>(-1i, u_input.b, u_input.b), true, vec2<u32>(global0.x, global2.x), global2.yx)).e, _wgslsmith_sub_vec2_u32(~vec2<u32>(25939u, u_input.a.x), global2.zx)));
    return StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1862f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-1594f, 834f)), 1f, false))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-508f)), 403f)), _wgslsmith_div_f32(1878f, _wgslsmith_f_op_f32(f32(-1f) * -382f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-300f, -629f)))), var_3.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 9>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -371f))) + _wgslsmith_f_op_f32(round(522f)));
    let var_1 = var_0;
    let var_2 = var_1;
    let var_3 = Struct_1(vec4<u32>(~(0u >> (global0.x % 32u)) & u_input.a.x, _wgslsmith_mod_u32(16528u, firstLeadingBit(global2.x)), ~min(1u, 9386u), u_input.d.x), vec3<i32>(-2147483647i, 18408i, abs(abs(61863i))), !(!(!global1[_wgslsmith_index_u32(1u, 9u)])), global2.yx, _wgslsmith_add_vec2_u32(min(vec2<u32>(77091u, max(0u, u_input.a.x)), global0.yz), min(~(~vec2<u32>(global2.x, global0.x)), ~vec2<u32>(0u, global2.x))));
    var var_4 = _wgslsmith_div_f32(var_1, var_1);
    var var_5 = countOneBits((i32(-1i) * -var_3.b.x) << (_wgslsmith_div_u32(~0u, 22976u << (global2.x % 32u)) % 32u)) >> (countOneBits(4294967295u) % 32u);
    let x = u_input.a;
    s_output = func_1();
}

