struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 757f;

var<private> global1: array<Struct_1, 12>;

var<private> global2: array<vec4<i32>, 26>;

var<private> global3: array<f32, 29>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec3<u32> {
    global3 = array<f32, 29>();
    var var_0 = arg_1;
    let var_1 = vec3<u32>(~1u, 28885u, 1u);
    var var_2 = -158f;
    global2 = array<vec4<i32>, 26>();
    return ~(var_1 << (_wgslsmith_add_vec3_u32(~vec3<u32>(var_1.x, var_1.x, arg_0) & _wgslsmith_sub_vec3_u32(var_1, vec3<u32>(arg_0, 1u, u_input.c)), var_1 & ~vec3<u32>(u_input.a, 71194u, 1u)) % vec3<u32>(32u)));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec3<bool>, arg_3: Struct_1) -> u32 {
    global1 = array<Struct_1, 12>();
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_clamp_u32(9299u, arg_3.b, ~1u), ~_wgslsmith_mod_u32(arg_3.d.x, 35809u)), _wgslsmith_dot_vec3_u32(func_3(~0u, Struct_1(vec4<u32>(arg_3.d.x, 1u, 46209u, arg_3.b), u_input.c, arg_3.c, arg_3.d)), vec3<u32>(arg_3.b, 0u, u_input.c) ^ arg_3.a.yzx)), vec2<u32>(41515u, 51869u)), 12u)];
    global1 = array<Struct_1, 12>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(~1u, 29u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~arg_3.a.x, 29u)]))))));
    global1 = array<Struct_1, 12>();
    return min(69897u, arg_3.d.x) | (_wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, u_input.a), ~4294967295u) >> (u_input.a % 32u));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: i32, arg_3: Struct_1) -> vec2<u32> {
    let var_0 = Struct_1(_wgslsmith_clamp_vec4_u32(arg_3.a, select(_wgslsmith_mult_vec4_u32(min(arg_3.a, arg_3.a), arg_3.a), countOneBits(firstLeadingBit(vec4<u32>(13646u, arg_3.a.x, u_input.a, u_input.c))), vec4<bool>(false, arg_3.c.x != -80429i, any(vec4<bool>(true, false, arg_0, arg_0)), any(vec3<bool>(arg_0, true, arg_0)))), _wgslsmith_add_vec4_u32(~(~vec4<u32>(29634u, 30493u, 1u, 0u)), countOneBits(vec4<u32>(1u, arg_3.d.x, 1u, 1u)))), select(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, u_input.a, arg_3.d.x), arg_3.a.ywy), abs(vec3<u32>(arg_3.a.x, 0u, 416u))) ^ 1u, ~u_input.a, all(vec2<bool>(arg_0, false)) == any(select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(true, arg_0)))), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(~arg_2, u_input.b.x, i32(-1i) * -31950i), vec3<i32>(select(arg_1, 2147483647i, arg_0), u_input.b.x << (arg_3.a.x % 32u), _wgslsmith_mult_i32(arg_3.c.x, -1i))), 47142i, ~(~(-32535i)), -_wgslsmith_clamp_i32(2147483647i, reverseBits(arg_2), abs(-1i))), vec2<u32>(_wgslsmith_add_u32(~u_input.c, 4294967295u), 24872u));
    global1 = array<Struct_1, 12>();
    let var_1 = _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.a, 37856u), func_2(false, _wgslsmith_f_op_f32(floor(702f)), vec3<bool>(any(select(vec2<bool>(arg_0, false), vec2<bool>(false, false), arg_0)), arg_0, !arg_0), Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.b, 0u, 21792u, 0u), ~var_0.a), arg_3.a.x, -var_0.c, func_3(11757u, arg_3).zy)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(2301u, 29u)] * _wgslsmith_f_op_f32(-1477f - global3[_wgslsmith_index_u32(arg_3.d.x ^ 1u, 29u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-551f))))));
    var var_2 = vec3<i32>(-2147483647i, -2147483647i, ~(i32(-1i) * -41004i));
    return vec2<u32>(func_2(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -867f)), select(select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(true, false, false), true), select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(true, arg_0, false), false), !vec3<bool>(false, arg_0, false)), Struct_1(firstLeadingBit(vec4<u32>(33783u, 5450u, var_1, var_1)), 10598u, firstTrailingBit(var_0.c), arg_3.d)), ~abs(4294967295u)) >> (_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(var_0.a.x, u_input.a), abs(var_0.d >> (vec2<u32>(u_input.a, 101410u) % vec2<u32>(32u)))), vec2<u32>(9759u, ~u_input.c)) % vec2<u32>(32u));
}

fn func_1(arg_0: i32, arg_1: f32) -> f32 {
    let var_0 = Struct_1(select(_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(57047u, u_input.a, 4294967295u, u_input.a)), firstTrailingBit(vec4<u32>(5417u, u_input.a, u_input.a, 0u))) & countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(41346u, u_input.c, 4294967295u, u_input.c), vec4<u32>(92007u, u_input.a, 0u, 1u))), min(~(~vec4<u32>(u_input.c, 0u, u_input.c, 40074u)), vec4<u32>(4294967295u, u_input.a, 21545u, u_input.c) << (_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.c, u_input.c, 13539u), vec4<u32>(u_input.c, u_input.c, u_input.a, u_input.a)) % vec4<u32>(32u))), false), 0u, vec4<i32>(~(~arg_0), arg_0, _wgslsmith_mod_i32(-659i, select(-8043i, arg_0, false)) | reverseBits(~4883i), 19936i), func_4(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 53288u), abs(vec2<u32>(u_input.a, u_input.c))) >= 0u, ~(-_wgslsmith_div_i32(2147483647i, -59634i)), -(reverseBits(u_input.b.x) | -1i), global1[_wgslsmith_index_u32(~func_2(false, -345f, vec3<bool>(true, true, false), global1[_wgslsmith_index_u32(u_input.a, 12u)]) | _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 2071u, 40697u, 1u), vec4<u32>(u_input.a, u_input.c, 16703u, u_input.a)), 12u)]));
    var var_1 = var_0.c.ww | firstTrailingBit(vec2<i32>(-arg_0 >> (_wgslsmith_dot_vec2_u32(var_0.d, var_0.d) % 32u), max(arg_0, 1i << (var_0.d.x % 32u))));
    var var_2 = var_0;
    var_2 = global1[_wgslsmith_index_u32(4294967295u, 12u)];
    var_2 = Struct_1(var_0.a, _wgslsmith_dot_vec3_u32(~abs(abs(vec3<u32>(7937u, 22701u, 0u))), vec3<u32>(u_input.a, 4294967295u, ~(1u ^ u_input.a))), var_2.c, vec2<u32>(var_0.b, _wgslsmith_div_u32(1u, func_3(u_input.a, Struct_1(var_0.a, 39041u, global2[_wgslsmith_index_u32(u_input.a, 26u)], vec2<u32>(1u, u_input.a))).x) & ~(var_2.a.x >> (var_0.d.x % 32u))));
    return 2125f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !all(vec2<bool>(false, select(select(false, true, false), true, all(vec2<bool>(true, true)))));
    global1 = array<Struct_1, 12>();
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(13978i, global3[_wgslsmith_index_u32(94651u, 29u)]))) + 327f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 29u)]), _wgslsmith_f_op_f32(round(-1302f))));
    global0 = _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(u_input.a, 29u)])));
    let var_1 = _wgslsmith_f_op_f32(func_1(-6864i, global3[_wgslsmith_index_u32(13825u, 29u)]));
    let var_2 = global1[_wgslsmith_index_u32(~u_input.a, 12u)];
    global1 = array<Struct_1, 12>();
    let var_3 = Struct_1(_wgslsmith_div_vec4_u32(firstTrailingBit(var_2.a), _wgslsmith_mult_vec4_u32(~abs(vec4<u32>(0u, var_2.d.x, 0u, var_2.a.x)), select(select(var_2.a, var_2.a, false), _wgslsmith_clamp_vec4_u32(vec4<u32>(17465u, u_input.c, 16672u, u_input.a), var_2.a, vec4<u32>(u_input.c, 4294967295u, 48712u, var_2.a.x)), !vec4<bool>(var_0, false, var_0, var_0)))), ~_wgslsmith_dot_vec3_u32(~(vec3<u32>(var_2.d.x, u_input.a, 0u) ^ vec3<u32>(u_input.a, var_2.a.x, var_2.b)), ~vec3<u32>(1u, var_2.d.x, var_2.d.x)), abs(var_2.c), ~(((vec2<u32>(68103u, u_input.a) << (var_2.a.wz % vec2<u32>(32u))) << (var_2.a.ww % vec2<u32>(32u))) >> (select(func_4(true, var_2.c.x, -5623i, global1[_wgslsmith_index_u32(var_2.d.x, 12u)]), var_2.a.zz, all(vec4<bool>(var_0, true, var_0, false))) % vec2<u32>(32u))));
    var var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

