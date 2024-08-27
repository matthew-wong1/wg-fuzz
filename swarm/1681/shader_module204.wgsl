struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: Struct_1,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: Struct_2 = Struct_2(0u, vec2<f32>(1386f, -328f), Struct_1(true, vec3<i32>(1i, 44105i, 6215i), 1020f), false, 94822u);

var<private> global2: array<vec3<u32>, 5> = array<vec3<u32>, 5>(vec3<u32>(153730u, 44710u, 86597u), vec3<u32>(4294967295u, 13810u, 4166u), vec3<u32>(32507u, 0u, 22152u), vec3<u32>(1u, 1u, 0u), vec3<u32>(21748u, 4294967295u, 86561u));

var<private> global3: array<vec3<bool>, 28> = array<vec3<bool>, 28>(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false));

var<private> global4: vec4<u32> = vec4<u32>(81572u, 4294967295u, 10050u, 1u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: f32, arg_2: i32) -> u32 {
    let var_0 = Struct_1(any(select(vec2<bool>(true, global1.c.a), !(!vec2<bool>(global1.d, global1.c.a)), vec2<bool>(global1.d, true))), select(vec3<i32>(_wgslsmith_mod_i32(global0.x, 2147483647i), _wgslsmith_add_i32(-20473i, arg_0.x), arg_2 << (1u % 32u)), -firstLeadingBit(global1.c.b), select(global3[_wgslsmith_index_u32(~u_input.a, 28u)], global3[_wgslsmith_index_u32(u_input.a, 28u)], vec3<bool>(false, global1.c.a, global1.c.a))) >> (firstTrailingBit(_wgslsmith_div_vec3_u32(global4.wwx, global2[_wgslsmith_index_u32(global1.a, 5u)]) >> (~global2[_wgslsmith_index_u32(4294967295u, 5u)] % vec3<u32>(32u))) % vec3<u32>(32u)), -1285f);
    global4 = vec4<u32>(_wgslsmith_mod_u32(global1.e, ~2644u), 13405u, _wgslsmith_add_u32(_wgslsmith_sub_u32(firstTrailingBit(global1.e), 0u), max(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.e, 4294967295u, global4.x), global4.wyw), ~0u)), u_input.a) ^ vec4<u32>(global1.e, global1.a, global1.a, ~abs(1u | u_input.a));
    let var_1 = min(vec3<u32>(_wgslsmith_div_u32(0u, ~global4.x) ^ _wgslsmith_clamp_u32(~global4.x, _wgslsmith_add_u32(u_input.a, 4294967295u), global4.x ^ global1.e), 0u, 5787u), ~(~global2[_wgslsmith_index_u32(max(20434u, reverseBits(global4.x)), 5u)]));
    global0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(~select(arg_2, 8737i, true), i32(-1i) * -2147483647i, -1i, 0i), (vec4<i32>(-12944i, -1i, var_0.b.x, abs(global1.c.b.x)) & -vec4<i32>(1i, 2147483647i, var_0.b.x, 1i)) | _wgslsmith_mult_vec4_i32(select(vec4<i32>(var_0.b.x, arg_0.x, var_0.b.x, arg_2) ^ vec4<i32>(var_0.b.x, 2147483647i, var_0.b.x, -1i), reverseBits(vec4<i32>(3722i, var_0.b.x, 20682i, global1.c.b.x)), true), ~vec4<i32>(-51274i, arg_0.x, arg_0.x, 0i)), countOneBits(_wgslsmith_mult_vec4_i32(select(firstTrailingBit(vec4<i32>(-2147483647i, global1.c.b.x, arg_0.x, 31966i)), select(vec4<i32>(arg_2, -2147483647i, -1i, var_0.b.x), vec4<i32>(-2147483647i, global1.c.b.x, global0.x, -2147483647i), vec4<bool>(var_0.a, true, global1.c.a, global1.d)), 43359u == var_1.x), ~(~vec4<i32>(var_0.b.x, 7700i, arg_0.x, global0.x)))));
    let var_2 = Struct_2(~(~(~48230u)), global1.b, var_0, true, var_1.x);
    return abs(var_2.a);
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> bool {
    global3 = array<vec3<bool>, 28>();
    global4 = ~vec4<u32>(~65103u, 39641u, func_3(vec3<i32>(~global1.c.b.x, abs(arg_1.b.x), _wgslsmith_div_i32(-2147483647i, global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1719f)) + -219f), global1.c.b.x), u_input.a);
    global3 = array<vec3<bool>, 28>();
    let var_0 = global1.c;
    var var_1 = arg_1;
    return var_0.a;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: Struct_2) -> bool {
    var var_0 = Struct_1(func_2(any(vec4<bool>(any(vec2<bool>(false, true)), false, !arg_2.d, arg_2.c.c == -1314f)), global1.c), _wgslsmith_div_vec3_i32(firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.x, arg_2.c.b.x, arg_2.c.b.x), -arg_2.c.b)), arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.x)))));
    global3 = array<vec3<bool>, 28>();
    let var_1 = _wgslsmith_clamp_u32(global4.x, min(~4294967295u, arg_2.e), 4294967295u) == ~62303u;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(480f)), -700f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c * 117f)))) >= var_0.c, var_0.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.c - global1.b.x) - _wgslsmith_f_op_f32(-var_0.c))), arg_2.b.x)));
    var_0 = arg_2.c;
    return arg_0.x < -10337i;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: u32) -> vec2<bool> {
    global3 = array<vec3<bool>, 28>();
    let var_0 = _wgslsmith_mult_vec3_i32(-(~global1.c.b) | vec3<i32>(-31872i, -1i ^ global1.c.b.x, _wgslsmith_sub_i32(global1.c.b.x, 40065i)), select(~vec3<i32>(global0.x, -14647i, global1.c.b.x), vec3<i32>(global1.c.b.x, _wgslsmith_div_i32(global1.c.b.x, global1.c.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(8884i, 1i, global0.x), global0.wyz)), select(!arg_1, select(vec3<bool>(arg_0.x, false, false), global3[_wgslsmith_index_u32(1u, 28u)], true), all(arg_1)))) >> (_wgslsmith_div_vec3_u32(global4.wyw, vec3<u32>(~max(global1.e, 34198u), _wgslsmith_clamp_u32(firstLeadingBit(global4.x), 4585u, global4.x), abs(func_3(vec3<i32>(1i, 22657i, 13058i), global1.c.c, global1.c.b.x)))) % vec3<u32>(32u));
    global3 = array<vec3<bool>, 28>();
    global0 = (select(-(vec4<i32>(44688i, global1.c.b.x, global1.c.b.x, global1.c.b.x) | vec4<i32>(var_0.x, var_0.x, var_0.x, global1.c.b.x)), -_wgslsmith_mult_vec4_i32(vec4<i32>(36316i, var_0.x, -5219i, global0.x), vec4<i32>(global1.c.b.x, 54180i, global1.c.b.x, -34156i)), arg_1.x) ^ select(vec4<i32>(var_0.x, -25900i, global1.c.b.x, var_0.x) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 47371u, arg_2), vec4<u32>(4294967295u, u_input.a, 4294967295u, 0u)) % vec4<u32>(32u)), ~(vec4<i32>(-35041i, 5529i, 2147483647i, 1i) & vec4<i32>(global1.c.b.x, var_0.x, global0.x, global0.x)), vec4<bool>(false || global1.c.a, global1.c.c < -109f, false, true))) << (_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(_wgslsmith_add_u32(0u, global4.x), global4.x, ~122994u, _wgslsmith_add_u32(arg_2, u_input.a))), _wgslsmith_sub_vec4_u32(vec4<u32>(0u << (global1.e % 32u), u_input.a & global4.x, ~63915u, _wgslsmith_mult_u32(0u, 1616u)), vec4<u32>(global4.x, _wgslsmith_dot_vec3_u32(global4.ywx, vec3<u32>(19243u, u_input.a, global4.x)), u_input.a, global4.x))) % vec4<u32>(32u));
    global4 = vec4<u32>(arg_2, arg_2, ~_wgslsmith_sub_u32(u_input.a, ~_wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(global1.a, 5u)], global2[_wgslsmith_index_u32(u_input.a, 5u)])), _wgslsmith_div_u32(u_input.a, 4294967295u));
    return !select(select(arg_0.zx, select(select(vec2<bool>(global1.c.a, false), arg_0.zz, vec2<bool>(false, false)), vec2<bool>(false, global1.d), select(arg_1.yy, arg_1.zy, arg_1.xy)), true), vec2<bool>(true, true), select(vec2<bool>(arg_1.x, true), arg_1.xx, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global1.c.a, global0.zyy, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -878f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -224f))));
    let var_1 = vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -956f) == _wgslsmith_f_op_f32(round(global1.c.c)), !(!(!global1.c.a) && ((global1.c.a | true) | true)));
    var_0 = Struct_1(true && !(global1.c.c < -3615f), global0.wzy, _wgslsmith_f_op_f32(f32(-1f) * -1166f));
    var var_2 = func_4(!vec3<bool>(var_1.x && true, !(true && var_1.x), func_1(~global0.wzw, firstLeadingBit(global1.c.b), Struct_2(u_input.a, global1.b, global1.c, var_1.x, 307u))), !(!(!select(global3[_wgslsmith_index_u32(global4.x, 28u)], vec3<bool>(var_0.a, true, var_1.x), vec3<bool>(global1.d, var_0.a, false)))), 4294967295u);
    let var_3 = Struct_2(countOneBits(u_input.a), _wgslsmith_f_op_vec2_f32(-global1.b), global1.c, func_4(!select(select(global3[_wgslsmith_index_u32(5977u, 28u)], global3[_wgslsmith_index_u32(4294967295u, 28u)], global3[_wgslsmith_index_u32(global4.x, 28u)]), select(vec3<bool>(false, global1.c.a, var_1.x), vec3<bool>(var_2.x, false, false), global3[_wgslsmith_index_u32(global4.x, 28u)]), false), select(!vec3<bool>(false, false, var_1.x), vec3<bool>(true, any(var_1), func_2(false, Struct_1(var_2.x, global1.c.b, -788f))), !select(vec3<bool>(false, false, true), global3[_wgslsmith_index_u32(u_input.a, 28u)], var_1.x)), ~u_input.a >> (countOneBits(~0u) % 32u)).x, u_input.a);
    var_0 = var_3.c;
    global1 = var_3;
    var var_4 = ~1u;
    var var_5 = 36441u | reverseBits(_wgslsmith_dot_vec2_u32(global4.wx, vec2<u32>(18370u, global4.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(global1.c.c, var_3.c.c, var_3.c.c, var_0.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, 118f, var_0.c, -693f)))))), _wgslsmith_add_i32(var_0.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, abs(0i), var_0.b.x, min(global1.c.b.x, global0.x)), max(max(vec4<i32>(var_0.b.x, 48101i, global0.x, var_3.c.b.x), vec4<i32>(global0.x, var_3.c.b.x, var_0.b.x, -1i)), vec4<i32>(2147483647i, var_3.c.b.x, var_3.c.b.x, global0.x) & vec4<i32>(-24712i, -46670i, global1.c.b.x, var_0.b.x)))), 4294967295u);
}

