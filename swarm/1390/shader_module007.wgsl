struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 6> = array<vec4<f32>, 6>(vec4<f32>(1491f, -1418f, 123f, 1626f), vec4<f32>(-444f, -1809f, 621f, -2745f), vec4<f32>(1489f, 1168f, -204f, 422f), vec4<f32>(-1000f, 399f, 274f, -938f), vec4<f32>(1710f, -318f, -2633f, 226f), vec4<f32>(664f, 939f, 1000f, -646f));

var<private> global1: array<f32, 11>;

var<private> global2: vec4<f32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> u32 {
    global2 = global0[_wgslsmith_index_u32(u_input.a.x, 6u)];
    global0 = array<vec4<f32>, 6>();
    global1 = array<f32, 11>();
    return 4294967295u;
}

fn func_3() -> f32 {
    let var_0 = -21237i;
    var var_1 = _wgslsmith_clamp_vec3_u32(u_input.a, u_input.a, vec3<u32>(u_input.b.x, u_input.a.x, 0u));
    var var_2 = false;
    var_2 = all(!(!(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), true))));
    var var_3 = vec2<u32>(firstTrailingBit(~(_wgslsmith_mod_u32(u_input.b.x, 36504u) << (0u % 32u))), 1u);
    return -654f;
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: u32) -> Struct_1 {
    var var_0 = func_2();
    let var_1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(global2.x - 375f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + arg_1))), firstTrailingBit(arg_2), firstTrailingBit(u_input.a.x), vec4<i32>(~_wgslsmith_sub_i32(_wgslsmith_mult_i32(arg_0, arg_0), u_input.c), -24629i, -1i, reverseBits(-2147483647i)));
    return Struct_1(_wgslsmith_dot_vec3_i32(var_1.d.zwy | abs(vec3<i32>(-16313i, 33252i, arg_0)), ~(-abs(vec3<i32>(u_input.c, arg_0, -16628i)))), countOneBits(var_1.d.zz), !select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), false), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), true), vec4<bool>(any(vec3<bool>(true, false, false)), true, any(vec3<bool>(false, false, false)), true)), _wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -10502i, var_1.d.x, 74567i), var_1.d ^ vec4<i32>(arg_0, 11117i, var_1.d.x, 2147483647i)), u_input.c), -select(-25725i, ~var_1.d.x, true)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec4<u32> {
    global0 = array<vec4<f32>, 6>();
    global2 = global0[_wgslsmith_index_u32(~23576u, 6u)];
    let var_0 = true;
    let var_1 = !(!var_0);
    let var_2 = u_input.b.x;
    return vec4<u32>(var_2, u_input.a.x | var_2, var_2, u_input.a.x);
}

fn func_5(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_2) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2.x)) - -1015f), arg_2.a) + global2.yy) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(abs(arg_2.c), 11u)], arg_0.a))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1f * 725f))));
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 11u)]), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1957f + arg_0.a), _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(arg_0.c, 11u)], global1[_wgslsmith_index_u32(arg_1.x, 11u)])))))));
    var var_3 = func_1(~1i, _wgslsmith_f_op_f32(min(global2.x, global2.x)), ~arg_0.c).c.xw;
    var var_4 = arg_1;
    return arg_2.d;
}

fn func_6(arg_0: Struct_2) -> i32 {
    var var_0 = ~(~0u);
    var var_1 = vec2<i32>(2147483647i, ~(45935i | _wgslsmith_add_i32(-u_input.c, 1i)));
    let var_2 = arg_0.d.yyy;
    var var_3 = Struct_1(~(-39082i), max(arg_0.d.wx, countOneBits(select(var_2.yz, vec2<i32>(-1i, 1810i), vec2<bool>(true, false)))), func_1(2147483647i, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(arg_0.c, 11u)], global2.x) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-arg_0.a)))), ~arg_0.c).c, 16066i);
    global2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(982f, -519f, global2.x, -1041f) * global0[_wgslsmith_index_u32(u_input.b.x, 6u)]))))));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(~u_input.a.x, 11u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(536f - 196f) - _wgslsmith_div_f32(1331f, -242f))))), _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(countOneBits(firstLeadingBit(_wgslsmith_mod_u32(121752u, u_input.b.x))), 11u)])));
    let var_1 = func_6(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f), abs(48307u) ^ ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.b.x), vec2<u32>(u_input.b.x, u_input.b.x)), 1u, func_5(Struct_2(_wgslsmith_f_op_f32(floor(global2.x)), reverseBits(0u), 1u, vec4<i32>(u_input.c, u_input.c, -11613i, u_input.c) << (vec4<u32>(0u, 76983u, u_input.b.x, 4294967295u) % vec4<u32>(32u))), func_4(Struct_1(-4181i, vec2<i32>(u_input.c, u_input.c), vec4<bool>(true, true, true, true), 52636i), func_1(u_input.c, -1874f, 72978u), func_1(u_input.c, global2.x, u_input.a.x)), Struct_2(_wgslsmith_f_op_f32(-138f - global1[_wgslsmith_index_u32(7729u, 11u)]), _wgslsmith_sub_u32(u_input.a.x, 4294967295u), u_input.b.x, vec4<i32>(u_input.c, 0i, -12689i, -2147483647i)))));
    global0 = array<vec4<f32>, 6>();
    let var_2 = Struct_2(global2.x, u_input.b.x, ~min(u_input.a.x, _wgslsmith_clamp_u32(1u, firstLeadingBit(u_input.b.x), _wgslsmith_mod_u32(99776u, 1u))), ~vec4<i32>(-2147483647i, _wgslsmith_div_i32(28553i, firstLeadingBit(-1i)), 1i, u_input.c));
    let var_3 = false;
    let var_4 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-590f))))), u_input.b.x, u_input.b.x, -(~(-var_2.d)));
    global1 = array<f32, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(12294u, 8673u, var_2.c, 12028u)), func_4(Struct_1(0i, vec2<i32>(var_4.d.x, var_4.d.x), vec4<bool>(false, var_3, true, var_3), var_2.d.x), Struct_1(var_1, vec2<i32>(u_input.c, -13290i), vec4<bool>(false, var_3, var_3, false), var_2.d.x), Struct_1(21215i, var_4.d.zz, vec4<bool>(true, true, var_3, var_3), -27686i))) >> ((_wgslsmith_mod_vec4_u32(~vec4<u32>(43386u, 16346u, 0u, var_2.c), vec4<u32>(var_2.b, 50122u, var_2.c, 4294967295u) & vec4<u32>(u_input.a.x, u_input.b.x, 0u, 58592u)) ^ vec4<u32>(firstLeadingBit(u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(51216u, var_2.c, 36321u, 36580u), vec4<u32>(52608u, u_input.b.x, 50374u, 1764u)), 9678u, var_4.c)) % vec4<u32>(32u)), -27011i);
}

