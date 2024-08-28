struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
    d: f32,
    e: i32,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, true, false);

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(true, false, true, vec4<u32>(4294967295u, 104075u, 59829u, 0u)), Struct_1(true, false, false, vec4<u32>(20220u, 0u, 4294967295u, 0u)), Struct_1(true, false, false, vec4<u32>(1u, 71195u, 1u, 22130u)), Struct_1(false, false, false, vec4<u32>(25095u, 1u, 4294967295u, 4294967295u)), Struct_1(true, false, false, vec4<u32>(9749u, 0u, 630u, 29529u)), Struct_1(false, true, false, vec4<u32>(0u, 4829u, 0u, 28558u)), Struct_1(false, false, false, vec4<u32>(58195u, 41219u, 7829u, 70381u)), Struct_1(true, false, false, vec4<u32>(40405u, 51588u, 1u, 1u)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: f32) -> vec4<f32> {
    var var_0 = true;
    global1 = array<Struct_1, 8>();
    global1 = array<Struct_1, 8>();
    global1 = array<Struct_1, 8>();
    var_0 = u_input.c.x >= 19532u;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(round(1000f)), arg_0, arg_0, arg_0)))));
}

fn func_3(arg_0: Struct_1) -> vec4<f32> {
    global0 = !select(!select(vec4<bool>(global0.x, false, false, false), select(vec4<bool>(true, global0.x, arg_0.a, false), vec4<bool>(global0.x, arg_0.c, arg_0.c, arg_0.a), true), select(vec4<bool>(arg_0.c, true, global0.x, arg_0.a), vec4<bool>(false, false, arg_0.a, false), global0.x)), select(select(vec4<bool>(global0.x, true, global0.x, arg_0.a), vec4<bool>(arg_0.b, false, true, global0.x), false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(arg_0.b, arg_0.c, false, arg_0.b), vec4<bool>(true, false, global0.x, false), false), vec4<bool>(true, false, true, global0.x)), !(!vec4<bool>(false, false, true, arg_0.a))), select(select(select(vec4<bool>(global0.x, false, global0.x, arg_0.c), vec4<bool>(false, true, global0.x, global0.x), global0.x), !vec4<bool>(false, global0.x, false, true), vec4<bool>(arg_0.c, true, arg_0.b, true)), select(vec4<bool>(true, true, arg_0.c, global0.x), vec4<bool>(false, false, true, true), vec4<bool>(true, arg_0.c, arg_0.a, false)), global0.x));
    let var_0 = select(vec4<bool>(any(select(select(vec4<bool>(true, false, arg_0.a, false), vec4<bool>(true, arg_0.c, global0.x, global0.x), true), vec4<bool>(global0.x, global0.x, arg_0.a, false), all(vec4<bool>(true, false, global0.x, false)))), global0.x, false, true), !(!select(select(vec4<bool>(true, arg_0.b, false, global0.x), vec4<bool>(false, false, false, arg_0.a), vec4<bool>(global0.x, true, arg_0.a, global0.x)), select(vec4<bool>(false, arg_0.a, true, true), vec4<bool>(arg_0.b, false, arg_0.c, false), true), arg_0.b)), all(select(select(!global0.yx, global0.zx, vec2<bool>(true, true)), select(!global0.yw, global0.zz, !global0.xx), global0.xz)));
    global1 = array<Struct_1, 8>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1256f, _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1703f, -863f), _wgslsmith_f_op_f32(-1420f + -183f))))).x));
    var var_2 = vec4<i32>(-u_input.b.x, firstTrailingBit(min(~u_input.b.x, u_input.b.x)), -(2147483647i | u_input.b.x), _wgslsmith_div_i32(u_input.b.x, firstLeadingBit(-u_input.b.x & ~u_input.b.x)));
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-341f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1747f)))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1739f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(526f + 738f))))), 652f, _wgslsmith_f_op_f32(542f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -633f), -1456f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-319f, 197f)))) + 119f)));
}

fn func_1(arg_0: bool) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(-220f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(992f, 487f, -309f, 1650f)))) * _wgslsmith_f_op_vec4_f32(func_3(Struct_1(false, true, arg_0, reverseBits(u_input.c))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1329f, -903f, -313f, -1055f))))))), any(global0.xz)));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_vec4_f32(func_3(global1[_wgslsmith_index_u32(countOneBits(u_input.c.x), 8u)])).x, var_0.x, var_0.x, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -330f), -413f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -670f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x + 1000f), _wgslsmith_f_op_vec4_f32(func_3(global1[_wgslsmith_index_u32(1u, 8u)])).x)), var_0.x) + _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(round(-1212f)))))));
    var var_2 = vec4<i32>(-1i, u_input.b.x, 57185i, _wgslsmith_clamp_i32(1i, u_input.b.x, u_input.b.x)) | countOneBits(vec4<i32>(_wgslsmith_clamp_i32(u_input.b.x, u_input.b.x ^ 2147483647i, _wgslsmith_mult_i32(2147483647i, u_input.b.x)), reverseBits(u_input.b.x | u_input.b.x), _wgslsmith_dot_vec3_i32(-vec3<i32>(-1251i, u_input.b.x, u_input.b.x), -vec3<i32>(u_input.b.x, u_input.b.x, 64602i)), countOneBits(~(-1474i))));
    let var_3 = -468f;
    var var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2003f * _wgslsmith_f_op_f32(-var_1.x))), 761f, _wgslsmith_f_op_f32(trunc(var_3)), var_0.x));
    return Struct_5(Struct_4(abs(~(var_2.x << (u_input.a.x % 32u))), Struct_1(arg_0, false, true, ~max(vec4<u32>(4294967295u, 1u, u_input.a.x, u_input.c.x), u_input.c))), Struct_4(-_wgslsmith_dot_vec2_i32(vec2<i32>(-64187i, 2147483647i), vec2<i32>(2147483647i, 42809i)), global1[_wgslsmith_index_u32(u_input.c.x, 8u)]), select(select(!vec4<bool>(global0.x, true, global0.x, arg_0), vec4<bool>(arg_0, global0.x, u_input.a.x > u_input.a.x, all(vec4<bool>(false, false, arg_0, arg_0))), select(select(vec4<bool>(true, false, false, global0.x), vec4<bool>(arg_0, false, false, true), vec4<bool>(arg_0, true, true, global0.x)), !vec4<bool>(arg_0, arg_0, arg_0, arg_0), select(vec4<bool>(arg_0, global0.x, false, arg_0), vec4<bool>(arg_0, false, false, true), vec4<bool>(arg_0, false, global0.x, true)))), select(vec4<bool>(true, true, !arg_0, all(vec4<bool>(false, false, arg_0, arg_0))), select(select(vec4<bool>(true, arg_0, true, true), vec4<bool>(false, arg_0, true, arg_0), vec4<bool>(global0.x, global0.x, true, arg_0)), !vec4<bool>(arg_0, arg_0, global0.x, global0.x), vec4<bool>(true, arg_0, true, arg_0)), arg_0), vec4<bool>(global0.x, select(var_2.x != var_2.x, true, global0.x), !arg_0, !(u_input.a.x != u_input.a.x))));
}

fn func_4(arg_0: Struct_5) -> Struct_2 {
    let var_0 = Struct_3(Struct_2(func_1(true).c.xyw, global1[_wgslsmith_index_u32(~firstLeadingBit(~35582u), 8u)], -vec3<i32>(1i, 0i, arg_0.b.a)), 1f, Struct_2(!vec3<bool>(true, arg_0.b.b.b, arg_0.b.b.b), Struct_1(true, arg_0.a.b.a, all(!global0.zx), max(_wgslsmith_mod_vec4_u32(arg_0.a.b.d, arg_0.a.b.d), countOneBits(vec4<u32>(arg_0.b.b.d.x, arg_0.a.b.d.x, arg_0.b.b.d.x, 0u)))), _wgslsmith_add_vec3_i32(-firstLeadingBit(vec3<i32>(-27352i, u_input.b.x, -2147483647i)), max(vec3<i32>(arg_0.b.a, arg_0.a.a, -21035i), vec3<i32>(arg_0.b.a, 27502i, u_input.b.x)) | vec3<i32>(45391i, 1i, arg_0.b.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1014f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-322f)), _wgslsmith_f_op_f32(sign(733f)), false))) - -256f), -_wgslsmith_sub_i32(~abs(arg_0.a.a), -1i));
    var var_1 = -15366i;
    var_1 = -select(abs(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(var_0.a.c.zx, vec2<i32>(66074i, -3350i)), min(vec2<i32>(7166i, var_0.a.c.x), var_0.c.c.xy))), u_input.b.x, !(!arg_0.c.x));
    var var_2 = var_0.c.b.d.x;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.d, 1302f)));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(170f, _wgslsmith_f_op_f32(f32(-1f) * -878f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1009f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1277f * -1997f), _wgslsmith_f_op_f32(f32(-1f) * -948f))), any(global0.yyy)))));
    var var_1 = Struct_3(func_4(func_1(false)), -586f, func_4(Struct_5(func_1(any(vec3<bool>(false, global0.x, true))).a, Struct_4(15957i, func_1(true).a.b), !(!vec4<bool>(global0.x, global0.x, global0.x, global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_0.x)))), func_1(global0.x).b.a);
    var_1 = Struct_3(Struct_2(var_1.a.a, global1[_wgslsmith_index_u32(1u, 8u)], min(-var_1.a.c, min(-vec3<i32>(var_1.a.c.x, -40740i, u_input.b.x), ~vec3<i32>(6329i, 1i, var_1.e)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1202f) + _wgslsmith_f_op_f32(-647f + _wgslsmith_f_op_f32(round(-547f)))), Struct_2(select(vec3<bool>(global0.x, var_1.a.b.c, func_4(Struct_5(Struct_4(5168i, var_1.a.b), Struct_4(1i, Struct_1(true, false, global0.x, vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x))), vec4<bool>(var_1.c.a.x, false, true, true))).a.x), global0.xxw, var_1.a.b.c), func_1(!(var_1.c.b.c & false)).a.b, _wgslsmith_mult_vec3_i32(abs(vec3<i32>(2147483647i, -50877i, 40032i)), countOneBits(_wgslsmith_mod_vec3_i32(var_1.c.c, var_1.c.c)))), _wgslsmith_f_op_f32(round(var_0.x)), firstTrailingBit(80034i) >> (20466u % 32u));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.yy));
    var var_3 = func_1(!global0.x).b;
    global0 = select(select(!func_1(global0.x).c, vec4<bool>(select(var_3.b.b || global0.x, var_3.b.d.x < var_3.b.d.x, any(vec2<bool>(global0.x, var_3.b.a))), !var_1.a.a.x != global0.x, func_4(func_1(var_3.b.b)).b.c, var_1.c.b.b), global0.x), vec4<bool>(true, -160f != _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.b))), true, !global0.x), vec4<bool>(false, true, -var_3.a > reverseBits(1i), var_1.c.a.x));
    let var_4 = firstLeadingBit(var_3.a);
    let var_5 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_2.x + -1000f), _wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -1517f))), -12538i, _wgslsmith_div_vec4_i32(select(abs(vec4<i32>(var_4, 2147483647i, -13564i, var_3.a)), select(vec4<i32>(19493i, u_input.b.x, 36416i, var_4), vec4<i32>(1i, -26851i, var_4, -2147483647i), var_3.b.a | var_1.a.b.b), vec4<bool>(any(var_1.a.a), !var_1.c.a.x, var_1.c.a.x & global0.x, !var_3.b.b)), select(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, var_4, var_3.a) & vec4<i32>(19326i, -46846i, 0i, -21871i), -vec4<i32>(var_3.a, var_1.a.c.x, var_3.a, -16515i)), vec4<i32>(_wgslsmith_mult_i32(3093i, u_input.b.x), ~var_3.a, _wgslsmith_add_i32(17937i, var_4), abs(var_1.c.c.x)), select(!vec4<bool>(true, var_3.b.c, var_1.c.a.x, true), vec4<bool>(true, true, true, true), select(vec4<bool>(global0.x, global0.x, false, true), vec4<bool>(true, true, var_1.a.b.c, true), false)))), u_input.b.x, countOneBits(21118i));
}

