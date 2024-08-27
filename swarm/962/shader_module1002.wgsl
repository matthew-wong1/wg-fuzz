struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: Struct_1,
    d: i32,
    e: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<bool, 6>;

var<private> global2: vec3<i32> = vec3<i32>(-1i, 9690i, -1i);

var<private> global3: Struct_2;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: u32, arg_1: Struct_3, arg_2: f32) -> vec4<bool> {
    global1 = array<bool, 6>();
    return !vec4<bool>(!global3.a.x, false && global3.a.x, true, false);
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: f32) -> i32 {
    global0 = _wgslsmith_sub_i32(0i, ~_wgslsmith_mult_i32(global3.d, -global2.x)) < firstLeadingBit(_wgslsmith_div_i32(~global2.x, global2.x));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-701f + _wgslsmith_f_op_f32(f32(-1f) * -678f)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(635f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(abs(arg_1.c.a)), _wgslsmith_f_op_f32(-arg_2)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1029f, global3.c.a, 172f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, var_0.a, arg_1.c.a, arg_1.c.a) - vec4<f32>(766f, arg_2, 891f, -3301f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(529f, 1662f, global3.c.a, -1374f))))))));
    let var_2 = Struct_1(2562f);
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(-756f, arg_2, arg_2, -735f), vec4<f32>(494f, -408f, global3.c.a, -888f)))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1105f, -1020f, arg_2, 714f), vec4<f32>(390f, var_2.a, var_0.a, var_2.a)))))));
    return -global3.d;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: Struct_1) -> u32 {
    var var_0 = global3.a;
    var var_1 = ~_wgslsmith_clamp_i32(func_3(!global1[_wgslsmith_index_u32(arg_1.b, 6u)], Struct_2(arg_1.a, arg_1.b, Struct_1(arg_1.c.a), -2147483647i, arg_1.e), _wgslsmith_f_op_f32(728f * 1196f)), -(~arg_1.d), global3.d >> (arg_2.x % 32u)) >> (_wgslsmith_mult_u32(0u, 10009u & _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a, u_input.a, global3.b, arg_1.b), vec4<u32>(u_input.a, u_input.a, u_input.a, 1u), global3.a.x), vec4<u32>(global3.e, 1u, 1u, 0u))) % 32u);
    var var_2 = Struct_3(global2.x, Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(arg_1.c.a, arg_1.c.a)), _wgslsmith_f_op_f32(f32(-1f) * -727f)))))), 4294967295u, arg_1.b, arg_3);
    global0 = select(!(!var_0.x), !(any(arg_1.a.xz) && !(arg_1.c.a < -1867f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.e.a - 1028f), _wgslsmith_f_op_f32(-arg_1.c.a)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1298f), _wgslsmith_f_op_f32(ceil(-1075f))))) <= _wgslsmith_f_op_f32(f32(-1f) * -746f));
    var_0 = !select(func_1(abs(1u), Struct_3(_wgslsmith_div_i32(arg_0.x, 2147483647i), Struct_1(1342f), arg_2.x, u_input.a, arg_1.c), arg_1.c.a), vec4<bool>(select(!global3.a.x, var_2.a <= 0i, arg_1.a.x), select(arg_1.a.x, true, true), global3.a.x, false), arg_1.a.x);
    return ~var_2.d | ~u_input.a;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: vec2<bool>, arg_3: bool) -> Struct_1 {
    let var_0 = select(_wgslsmith_sub_vec4_u32(select(~(vec4<u32>(20823u, 16616u, global3.b, u_input.a) & vec4<u32>(27047u, 0u, 4294967295u, 0u)), vec4<u32>(45863u, ~1u, global3.e, global3.e ^ global3.e), select(vec4<bool>(arg_2.x, true, false, true), vec4<bool>(true, false, true, arg_3), global3.a)), min(_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(51244u, 45123u, 1u, global3.e)), ~vec4<u32>(global3.e, global3.e, 0u, 67361u)), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(11433u, 4294967295u, u_input.a, u_input.a), vec4<u32>(4294967295u, global3.e, 4294967295u, 1u)), ~vec4<u32>(58007u, 15921u, u_input.a, 0u)))), vec4<u32>(u_input.a, 0u, 1u, u_input.a), global3.a);
    return global3.c;
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: vec2<bool>, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = arg_2;
    var var_1 = arg_0.e << (_wgslsmith_sub_u32(_wgslsmith_add_u32(1u, firstTrailingBit(83616u) << (2253u % 32u)), _wgslsmith_dot_vec3_u32((vec3<u32>(51709u, 1u, global3.e) << (vec3<u32>(13844u, 64047u, global3.b) % vec3<u32>(32u))) | (vec3<u32>(0u, arg_0.b, 1u) ^ vec3<u32>(arg_0.e, 4294967295u, 1u)), select(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 18235u, u_input.a), vec3<u32>(arg_0.e, 52292u, 4294967295u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 81539u, u_input.a), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(global3.e, 8912u, 4294967295u)), vec3<bool>(true, true, arg_0.a.x)))) % 32u);
    global0 = true;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(442f, -447f, arg_0.c.a) - vec3<f32>(global3.c.a, 1000f, arg_0.c.a))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1034f, global3.c.a, 1327f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.c.a, -902f, -127f) * vec3<f32>(422f, global3.c.a, 1482f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-776f, arg_0.c.a, -836f) * vec3<f32>(1000f, 1000f, arg_0.c.a)), vec3<f32>(arg_0.c.a, arg_0.c.a, global3.c.a), u_input.a <= global3.b)))));
    var var_3 = abs(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_div_u32(arg_0.e, global3.e), 1u, 114497u, u_input.a), _wgslsmith_mult_vec4_u32(vec4<u32>(~global3.b, u_input.a, 17603u, _wgslsmith_sub_u32(26668u, 1u)), _wgslsmith_add_vec4_u32(~vec4<u32>(15133u, 55203u, 0u, 4294967295u), ~vec4<u32>(global3.e, u_input.a, arg_0.e, arg_0.e)))));
    return func_4(0i, true, vec2<bool>(any(select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), arg_0.a.xx, global3.e < 4294967295u)), global3.e > global3.b), _wgslsmith_sub_u32(60564u, ~4294967295u) <= firstLeadingBit(~_wgslsmith_dot_vec3_u32(var_3.yxy, var_3.xyz)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 6u)], global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~u_input.a, u_input.a, ~19663u), 6u)], global3.a.x, all(!(!vec3<bool>(true, global3.a.x, true)))), u_input.a, func_5(Struct_2(func_1(~u_input.a, Struct_3(global2.x, Struct_1(global3.c.a), global3.e, 4294967295u, Struct_1(487f)), _wgslsmith_f_op_f32(-global3.c.a)), 4294967295u, func_4(global2.x, global1[_wgslsmith_index_u32(func_2(vec3<i32>(6996i, global3.d, 37203i), Struct_2(vec4<bool>(global3.a.x, true, true, true), global3.b, global3.c, 13383i, global3.b), vec3<u32>(global3.b, 1u, 2133u), global3.c), 6u)], vec2<bool>(false, false), global1[_wgslsmith_index_u32(func_2(vec3<i32>(global3.d, -91690i, global3.d), Struct_2(vec4<bool>(global3.a.x, global1[_wgslsmith_index_u32(3592u, 6u)], false, false), u_input.a, Struct_1(-686f), -1i, 7815u), vec3<u32>(33685u, 26856u, 34763u), Struct_1(global3.c.a)), 6u)]), global2.x, abs(1u & u_input.a)), !(!global1[_wgslsmith_index_u32(countOneBits(4294967295u), 6u)]), global3.a.zy, global3.a), -2147483647i, _wgslsmith_dot_vec2_u32(vec2<u32>(select(4294967295u, 1u, true), 38932u), _wgslsmith_clamp_vec2_u32(select(~vec2<u32>(global3.b, 0u), ~vec2<u32>(20945u, global3.e), global3.a.x || false), vec2<u32>(u_input.a, global3.e) | ~vec2<u32>(u_input.a, 1u), countOneBits(vec2<u32>(u_input.a, 21268u)) ^ ~vec2<u32>(u_input.a, global3.b))));
    let var_1 = Struct_3(_wgslsmith_div_i32(global3.d, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(global2.xx, vec2<i32>(global3.d, global3.d)) << (~u_input.a % 32u), -2147483647i)), Struct_1(global3.c.a), u_input.a, _wgslsmith_clamp_u32(abs(_wgslsmith_clamp_u32(4294967295u, 25078u, global3.b)) << (~(global3.b & u_input.a) % 32u), ~0u, global3.b & u_input.a), func_5(var_0, true != (!global3.a.x || true), !global3.a.zy, !select(vec4<bool>(var_0.a.x, false, var_0.a.x, false), !global3.a, !vec4<bool>(global3.a.x, global3.a.x, global1[_wgslsmith_index_u32(12142u, 6u)], global3.a.x))));
    var var_2 = !vec3<bool>(true, var_0.e < 1u, !any(select(var_0.a, vec4<bool>(true, true, global1[_wgslsmith_index_u32(0u, 6u)], var_0.a.x), vec4<bool>(var_0.a.x, false, var_0.a.x, false))));
    global3 = Struct_2(var_0.a, var_1.c, Struct_1(_wgslsmith_div_f32(-1289f, global3.c.a)), select(_wgslsmith_sub_i32(_wgslsmith_mult_i32(-25348i, global2.x), max(_wgslsmith_mod_i32(global2.x, global3.d), 32450i)), i32(-1i) * -4335i, global1[_wgslsmith_index_u32(u_input.a, 6u)]), _wgslsmith_clamp_u32(func_2(vec3<i32>(11919i, 0i, -40746i) | vec3<i32>(56192i, global2.x, var_1.a), Struct_2(global3.a, var_1.c, Struct_1(var_1.e.a), global2.x, var_1.c), firstTrailingBit(vec3<u32>(global3.e, 0u, 1u)), Struct_1(-692f)) | 23725u, u_input.a, ~(0u >> (~4294967295u % 32u))));
    global1 = array<bool, 6>();
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(850f, -740f)) + vec2<f32>(-1592f, var_1.e.a))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.a, var_1.b.a))) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, global3.c.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_clamp_i32(global2.x, ~1i, _wgslsmith_clamp_i32(global3.d, 1i, 0i)) << (max(_wgslsmith_div_u32(u_input.a, 4294967295u), var_1.d) % 32u)), firstTrailingBit(~u_input.a), global3.e, countOneBits(-global2.zx), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(179f, _wgslsmith_div_f32(-1123f, -2710f)), var_0.c.a)));
}

