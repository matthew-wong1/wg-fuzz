struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec4<bool>,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1;

var<private> global2: f32 = -1540f;

var<private> global3: array<vec4<f32>, 7> = array<vec4<f32>, 7>(vec4<f32>(-847f, 1000f, -369f, 596f), vec4<f32>(2244f, 230f, -374f, 151f), vec4<f32>(-1186f, -1893f, -301f, 513f), vec4<f32>(1207f, -1779f, -330f, 927f), vec4<f32>(2039f, 681f, -576f, -175f), vec4<f32>(104f, 2137f, 832f, 333f), vec4<f32>(564f, -1496f, 553f, 1113f));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: Struct_1) -> i32 {
    global2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.b.x, arg_2.b.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(arg_2.b.x, arg_2.b.x)), -1000f, false))));
    global1 = arg_2;
    var var_0 = _wgslsmith_f_op_f32(806f * -736f);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-315f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(445f - global1.b.x), _wgslsmith_f_op_f32(-global1.b.x), arg_2.e)), 289f))) + _wgslsmith_f_op_f32(min(global1.b.x, _wgslsmith_f_op_f32(select(global1.b.x, _wgslsmith_f_op_f32(-367f - _wgslsmith_div_f32(630f, arg_2.b.x)), any(vec2<bool>(global1.c.x, arg_2.c.x)))))));
    global2 = 531f;
    return -select(_wgslsmith_add_i32(_wgslsmith_mod_i32(1i, -46777i), _wgslsmith_div_i32(-10373i, 2147483647i)), arg_1.x, !(!global1.e)) ^ -_wgslsmith_mod_i32(arg_2.a, ~firstTrailingBit(-33489i));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> vec4<f32> {
    let var_0 = _wgslsmith_sub_u32(~56483u, _wgslsmith_dot_vec2_u32(~vec2<u32>(21065u, u_input.a), ~(vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(u_input.a, 9230u) % vec2<u32>(32u))))) >> (0u % 32u);
    var var_1 = global1.d;
    var var_2 = vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(~_wgslsmith_mod_i32(arg_0.a, u_input.b.x), _wgslsmith_div_i32(1i, -arg_0.d), -1i, global1.d), firstLeadingBit(vec4<i32>(u_input.b.x, 0i, u_input.b.x, -2147483647i))), max(-16200i, _wgslsmith_sub_i32(u_input.b.x & _wgslsmith_mult_i32(arg_0.a, global1.d), _wgslsmith_div_i32(_wgslsmith_sub_i32(arg_0.d, u_input.b.x), ~(-2147483647i)))));
    var_1 = _wgslsmith_div_i32(-u_input.b.x, -_wgslsmith_mult_i32(~_wgslsmith_mult_i32(37414i, u_input.b.x), max(2147483647i, arg_0.a)));
    global3 = array<vec4<f32>, 7>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, global1.b.x, -876f, global1.b.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1600f, -498f, 548f, -751f) * global1.b))))));
}

fn func_2() -> i32 {
    let var_0 = Struct_1(global1.d, _wgslsmith_f_op_vec4_f32(func_4(Struct_1(~global1.a, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(global3[_wgslsmith_index_u32(u_input.a, 7u)], vec4<f32>(global1.b.x, global1.b.x, 340f, global1.b.x)), global1.b)), vec4<bool>(true, global1.c.x, !global1.e, global1.c.x), _wgslsmith_div_i32(func_3(u_input.b.yy, u_input.b, Struct_1(global1.d, vec4<f32>(global1.b.x, 1373f, -524f, 290f), global1.c, u_input.b.x, true)), -35576i), true), global1.e, u_input.a)), !select(!(!global1.c), vec4<bool>(false, global1.e, all(vec2<bool>(global1.c.x, global1.e)), u_input.b.x == 29835i), !all(vec4<bool>(false, global1.e, true, false))), -global1.d, global1.e);
    let var_1 = -((i32(-1i) * -2147483647i) ^ func_3(select(vec2<i32>(global1.d, 16094i), vec2<i32>(var_0.d, global1.a), global1.e) ^ (u_input.b.zy & vec2<i32>(-28414i, global1.a)), min(-vec3<i32>(1i, -1706i, u_input.b.x), u_input.b), Struct_1(~(-2147483647i), vec4<f32>(var_0.b.x, 361f, var_0.b.x, var_0.b.x), select(vec4<bool>(var_0.c.x, var_0.c.x, true, global1.e), vec4<bool>(false, var_0.e, var_0.e, false), vec4<bool>(true, false, true, false)), -1i >> (0u % 32u), false)));
    global3 = array<vec4<f32>, 7>();
    global3 = array<vec4<f32>, 7>();
    var var_2 = global1.b.xz;
    return -22409i << (~_wgslsmith_sub_u32(1u, _wgslsmith_clamp_u32(u_input.a, u_input.a << (u_input.a % 32u), u_input.a)) % 32u);
}

fn func_1(arg_0: vec2<f32>, arg_1: u32, arg_2: vec2<u32>, arg_3: i32) -> Struct_1 {
    var var_0 = 897f;
    var_0 = _wgslsmith_f_op_f32(1000f + 2317f);
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -395f);
    let var_1 = 0i;
    var var_2 = select(~vec4<i32>(max(global1.a, _wgslsmith_clamp_i32(25739i, arg_3, -2147483647i)), _wgslsmith_div_i32(abs(-2147483647i), abs(global1.d)), func_2(), 2147483647i), select(firstLeadingBit((vec4<i32>(u_input.b.x, 8695i, -1i, global1.d) ^ vec4<i32>(global1.d, var_1, global1.a, arg_3)) & vec4<i32>(arg_3, u_input.b.x, arg_3, arg_3)), ~(-select(vec4<i32>(arg_3, global1.a, -33971i, arg_3), vec4<i32>(-19733i, arg_3, u_input.b.x, global1.a), vec4<bool>(global1.e, global1.e, global1.c.x, false))), vec4<bool>(global1.e, ~0i == _wgslsmith_clamp_i32(-8485i, global1.a, 6616i), !all(global1.c.ywz), global1.e)), global1.c.x || (select(abs(u_input.b.x), var_1 << (arg_2.x % 32u), false) == ~(-29164i)));
    return Struct_1(var_2.x, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1638f)) - _wgslsmith_f_op_f32(global1.b.x + 1000f))), -368f, 518f, _wgslsmith_div_f32(-684f, global1.b.x)), vec4<bool>(global1.c.x, !global1.e, global1.c.x, global1.e), -47799i, global1.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec2<f32>(_wgslsmith_f_op_f32(exp2(global1.b.x)), _wgslsmith_f_op_f32(global1.b.x - global1.b.x)), 77408u, vec2<u32>(4294967295u, firstTrailingBit(abs(u_input.a) & ~u_input.a)), _wgslsmith_dot_vec2_i32(u_input.b.xy, _wgslsmith_add_vec2_i32(firstLeadingBit(u_input.b.zy << (vec2<u32>(53673u, u_input.a) % vec2<u32>(32u))), vec2<i32>(~1i, u_input.b.x))));
    var var_1 = Struct_1(~1i, _wgslsmith_f_op_vec4_f32(max(global3[_wgslsmith_index_u32(~4294967295u, 7u)], _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b.x, var_0.b.x, global1.b.x, var_0.b.x), vec4<f32>(205f, 1119f, -226f, 944f), false)))))))), vec4<bool>(var_0.c.x, global1.e, global1.e, any(vec2<bool>(true, true))), -u_input.b.x, 1u >= _wgslsmith_div_u32(u_input.a, abs(~u_input.a)));
    var var_2 = Struct_1(abs(~(-global1.a)), global1.b, vec4<bool>(any(vec4<bool>(true, true, true, any(vec3<bool>(global1.c.x, var_0.c.x, false)))), var_0.c.x, var_1.e, select(true, true, _wgslsmith_dot_vec2_i32(u_input.b.zz, u_input.b.yy) < _wgslsmith_mult_i32(10385i, var_0.d))), global1.d, u_input.a > _wgslsmith_sub_u32((u_input.a << (u_input.a % 32u)) >> (3175u % 32u), firstTrailingBit(114809u) ^ ~67829u));
    var var_3 = Struct_1(_wgslsmith_mod_i32(var_1.d, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.b.yy, u_input.b.xy), ~vec2<i32>(global1.d, var_1.a)), func_2())), global1.b, vec4<bool>(true, false, all(func_1(vec2<f32>(613f, -1307f), 7047u, vec2<u32>(59034u, 14197u), u_input.b.x).c) || (_wgslsmith_mult_u32(58507u, u_input.a) > _wgslsmith_add_u32(0u, u_input.a)), !var_2.c.x), min(0i, var_2.d & 6224i), !any(global1.c) || true);
    let var_4 = vec3<bool>(true, true, !(any(func_1(vec2<f32>(var_1.b.x, -1000f), 4294967295u, vec2<u32>(u_input.a, u_input.a), 1695i).c.xx) && true));
    let var_5 = _wgslsmith_div_f32(-1786f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x))) * -1235f));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_0.b.yww))) - var_1.b.xxy)));
}

