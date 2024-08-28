struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 26> = array<vec3<bool>, 26>(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: i32) -> f32 {
    let var_0 = _wgslsmith_sub_i32(arg_0, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(1i, arg_0, arg_0)), vec3<i32>(-arg_0, 85698i, arg_0), abs(~vec3<i32>(-1i, -2147483647i, -10322i))), ~(~vec3<i32>(-26836i, arg_0, 11329i))));
    return _wgslsmith_f_op_f32(f32(-1f) * -881f);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(0i, select(min(-1i, -1i), 2147483647i, all(vec2<bool>(true, true))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1691f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-121f, 1000f) - _wgslsmith_f_op_f32(f32(-1f) * -724f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(-43615i)), _wgslsmith_f_op_f32(f32(-1f) * -519f), false)))), false, 1u);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.c.x, _wgslsmith_f_op_f32(max(-1000f, -1978f)), var_0.c.x), var_0.c)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.c.x, var_0.c.x))), -103f, var_0.c.x)));
    let var_2 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(743f * _wgslsmith_f_op_f32(f32(-1f) * -1853f)) - var_1.x), 345f)));
    var var_3 = vec2<bool>(true, all(!select(!vec4<bool>(false, var_0.d, var_0.d, false), !vec4<bool>(var_0.d, false, var_0.d, true), true)));
    var var_4 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.x * var_2.x), _wgslsmith_f_op_f32(sign(var_2.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(632f, var_1.x)))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(var_0.a)), var_1.x))), _wgslsmith_f_op_vec2_f32(-var_0.c.yz), Struct_1(max(_wgslsmith_mult_i32(var_0.a, _wgslsmith_clamp_i32(var_0.b, var_0.a, -18791i)), abs(0i | var_0.b)), 1i, vec3<f32>(var_1.x, var_2.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1278f), var_1.x))), true, ~(~countOneBits(var_0.e))), Struct_1(30044i, _wgslsmith_mod_i32(65582i, _wgslsmith_div_i32(var_0.a << (11163u % 32u), var_0.a)), var_0.c, false, min(0u, 4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)));
    return Struct_2(_wgslsmith_f_op_f32(func_3(firstLeadingBit(var_0.b >> (9698u % 32u)))), vec2<f32>(_wgslsmith_f_op_f32(var_4.e - -776f), _wgslsmith_f_op_f32(func_3(_wgslsmith_dot_vec3_i32(-vec3<i32>(var_0.a, 0i, -20757i), vec3<i32>(2147483647i, var_0.a, var_4.c.a))))), Struct_1(2147483647i, ~(-_wgslsmith_mod_i32(var_0.b, 26938i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1422f - -534f), _wgslsmith_f_op_f32(ceil(var_2.x)), var_2.x)), true, 4294967295u), Struct_1(-2147483647i, reverseBits(firstTrailingBit(_wgslsmith_div_i32(1i, 42814i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_4.c.c) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_4.c.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1515f, var_0.c.x, -1000f) * vec3<f32>(832f, 825f, -268f)), global0[_wgslsmith_index_u32(abs(u_input.b), 26u)]))), true, firstLeadingBit(~_wgslsmith_mod_u32(var_0.e, 61813u))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -611f), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_4.c.c.x, var_1.x))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> Struct_2 {
    var var_0 = all(!vec4<bool>(any(vec2<bool>(arg_0.d.d, false)), arg_1.d && arg_1.d, arg_0.d.d, true)) && any(!(!select(vec4<bool>(false, arg_1.d, arg_0.c.d, true), vec4<bool>(arg_0.c.d, arg_1.d, false, arg_0.d.d), vec4<bool>(arg_1.d, false, arg_1.d, true))));
    var var_1 = arg_0.c.c;
    var var_2 = _wgslsmith_mod_vec2_u32(u_input.c.zw, ~u_input.c.yx);
    var var_3 = arg_0;
    let var_4 = arg_1.c.zy;
    return arg_0;
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> u32 {
    global0 = array<vec3<bool>, 26>();
    var var_0 = func_4(func_2(), arg_0);
    var_0 = Struct_2(-581f, vec2<f32>(-511f, _wgslsmith_f_op_f32(var_0.c.c.x + arg_0.c.x)), func_4(Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.c.x * var_0.a), _wgslsmith_f_op_f32(step(arg_0.c.x, 1000f)), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.d.c.zy)), Struct_1(~var_0.c.a, -arg_1, _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -1453f, 535f), vec3<f32>(-239f, -478f, 1325f)), arg_0.d, ~0u), Struct_1(_wgslsmith_add_i32(1i, 10460i), _wgslsmith_clamp_i32(arg_1, 0i, var_0.c.b), var_0.c.c, var_0.c.d, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 2964u, var_0.d.e), u_input.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.c.x, var_0.e)) + _wgslsmith_f_op_f32(-var_0.d.c.x))), func_2().c).d, Struct_1(1i, ~firstLeadingBit(-2364i), vec3<f32>(-1692f, 1153f, 1624f), var_0.d.d, max(30346u, arg_0.e) >> (var_0.d.e % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1373f, arg_0.c.x), _wgslsmith_f_op_f32(ceil(1702f)))))));
    var var_1 = ~abs(~_wgslsmith_mod_u32(~var_0.c.e, func_2().d.e));
    var var_2 = !var_0.c.d;
    return _wgslsmith_add_u32(~(~_wgslsmith_sub_u32(arg_0.e, _wgslsmith_div_u32(arg_0.e, u_input.b))), arg_0.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, true, true);
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1206f, -187f, -535f, _wgslsmith_f_op_f32(round(708f)))))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -867f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(131f)))), 426f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1901f - 1349f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-923f, 777f, 190f, 507f), vec4<f32>(856f, -1585f, 226f, 1000f), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1232f, 526f, 1077f, 1365f) - vec4<f32>(990f, 520f, -345f, 543f))))));
    global0 = array<vec3<bool>, 26>();
    var var_2 = select(vec3<u32>(_wgslsmith_mod_u32(0u, func_1(Struct_1(-11974i, 6749i, var_1.zyy, var_0.x, 12210u), 61180i)), 31943u, 4294967295u), countOneBits(u_input.c.zww), select(vec3<bool>(var_0.x, all(vec2<bool>(true, var_0.x)), !var_0.x), !var_0, vec3<bool>(true, true, false))) & ~(~(vec3<u32>(4294967295u, u_input.a, 75172u) >> (~vec3<u32>(60146u, 22898u, u_input.a) % vec3<u32>(32u))));
    let var_3 = ~(_wgslsmith_div_u32(0u, ~var_2.x) & u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(abs(max(1i, 39354i)), -abs(vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(var_1.xxw, _wgslsmith_f_op_vec3_f32(var_1.zyz + vec3<f32>(-1051f, -330f, var_1.x))))))), -func_2().c.a, _wgslsmith_add_vec2_i32(vec2<i32>(-27227i, 1i), ~vec2<i32>(-30231i, 0i) << ((vec2<u32>(var_3, var_2.x) << (var_2.zx % vec2<u32>(32u))) % vec2<u32>(32u))) >> (vec2<u32>(_wgslsmith_div_u32(u_input.c.x, 4294967295u), ~(~u_input.b)) % vec2<u32>(32u)));
}

