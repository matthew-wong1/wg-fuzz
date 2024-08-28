struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<u32>(1u, 6587u)), vec3<f32>(-1233f, 730f, -1950f), false, Struct_1(vec2<u32>(27723u, 7107u)));

var<private> global1: array<vec2<u32>, 5>;

var<private> global2: vec3<u32>;

var<private> global3: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(22961u, -12360i), Struct_3(0u, 0i), Struct_3(0u, -18054i), Struct_3(4294967295u, -1i), Struct_3(23073u, 1i), Struct_3(1u, -4134i), Struct_3(9749u, -24731i), Struct_3(0u, 0i), Struct_3(34863u, 15571i), Struct_3(4294967295u, 2147483647i), Struct_3(0u, i32(-2147483648)), Struct_3(58379u, 2147483647i), Struct_3(13124u, 14084i), Struct_3(7685u, -30788i), Struct_3(1u, -10528i), Struct_3(60693u, -26743i), Struct_3(4294967295u, 29558i), Struct_3(4294967295u, -50525i), Struct_3(104037u, 23239i), Struct_3(1u, -6872i), Struct_3(1u, 1i), Struct_3(1u, 0i), Struct_3(949u, -1i), Struct_3(0u, 0i), Struct_3(40259u, -4910i), Struct_3(1u, -1i), Struct_3(19777u, 0i), Struct_3(1u, -55264i), Struct_3(1u, -11314i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>, arg_1: f32, arg_2: vec3<i32>, arg_3: Struct_3) -> vec3<f32> {
    var var_0 = Struct_2(global0.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-705f, 883f, true)) + -1000f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(819f, arg_1)), _wgslsmith_f_op_f32(-1206f + arg_1))), _wgslsmith_f_op_f32(-arg_1))), true, Struct_1(max(~vec2<u32>(arg_0.x, u_input.d), ~vec2<u32>(global2.x, u_input.d) | select(vec2<u32>(u_input.d, 19155u), arg_0, false))));
    return _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -801f) + -1084f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x * -613f) + _wgslsmith_f_op_f32(-var_0.b.x)) * global0.b.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1573f, var_0.b.x) - vec3<f32>(920f, -167f, 339f)), vec3<f32>(743f, arg_1, var_0.b.x))), _wgslsmith_div_vec3_f32(global0.b, vec3<f32>(-151f, -150f, -1145f)), select(select(select(vec3<bool>(var_0.c, var_0.c, true), vec3<bool>(global0.c, var_0.c, false), vec3<bool>(global0.c, false, true)), select(vec3<bool>(true, true, global0.c), vec3<bool>(true, true, true), vec3<bool>(global0.c, var_0.c, false)), vec3<bool>(true, global0.c, false)), select(select(vec3<bool>(var_0.c, global0.c, var_0.c), vec3<bool>(false, var_0.c, false), true), vec3<bool>(var_0.c, global0.c, true), select(vec3<bool>(false, true, var_0.c), vec3<bool>(true, global0.c, var_0.c), vec3<bool>(global0.c, var_0.c, var_0.c))), !select(vec3<bool>(true, global0.c, false), vec3<bool>(false, global0.c, global0.c), vec3<bool>(true, global0.c, var_0.c)))))));
}

fn func_2(arg_0: f32) -> u32 {
    var var_0 = _wgslsmith_dot_vec3_i32(~(~u_input.b.wyy), ~(~_wgslsmith_mod_vec3_i32(u_input.b.wyx, u_input.b.zwx) & vec3<i32>(0i, ~u_input.c, 34687i)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global0.b.x, global0.b.x))));
    var var_2 = ~5786u;
    var var_3 = Struct_2(global0.a, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_3(vec2<u32>(24835u, global0.a.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(482f, -694f))), vec3<i32>(~0i, u_input.b.x, 59685i), Struct_3(_wgslsmith_div_u32(global0.a.a.x, 1u), u_input.c))))), select(-943f >= _wgslsmith_f_op_f32(exp2(arg_0)), true, global0.c), Struct_1(_wgslsmith_mod_vec2_u32(~abs(vec2<u32>(4294967295u, 0u)), _wgslsmith_mult_vec2_u32(select(vec2<u32>(4294967295u, global2.x), global0.d.a, vec2<bool>(false, false)), firstTrailingBit(global0.a.a)))));
    return _wgslsmith_mod_u32(3216u, 2455u);
}

fn func_1() -> bool {
    global2 = ~vec3<u32>(~func_2(1828f), ~18253u, ~(~global0.d.a.x));
    let var_0 = !global0.c;
    global0 = Struct_2(global0.a, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global0.b * _wgslsmith_f_op_vec3_f32(min(global0.b, global0.b))), vec3<f32>(_wgslsmith_f_op_f32(global0.b.x * -2065f), _wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_div_f32(-342f, -1958f)), vec3<bool>(true, true, !var_0))))), true, Struct_1(abs(global0.d.a)));
    global0 = Struct_2(global0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1197f, 571f, 1277f), vec3<f32>(-423f, global0.b.x, global0.b.x))), _wgslsmith_f_op_vec3_f32(trunc(global0.b)))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(511f, global0.b.x, global0.b.x))), !vec3<bool>(var_0, var_0, global0.c))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(global0.b, _wgslsmith_f_op_vec3_f32(-global0.b), vec3<bool>(false, var_0, true)))))), any(vec3<bool>(false, all(vec2<bool>(true, true)), var_0)), Struct_1(_wgslsmith_mult_vec2_u32(select(global2.zx | global0.d.a, vec2<u32>(global2.x, u_input.d) ^ global1[_wgslsmith_index_u32(global0.a.a.x, 5u)], select(vec2<bool>(true, var_0), vec2<bool>(var_0, false), var_0)), select(_wgslsmith_mod_vec2_u32(global0.a.a, global0.a.a), global0.a.a, all(vec3<bool>(global0.c, var_0, var_0))))));
    let var_1 = Struct_2(Struct_1(global0.d.a), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1512f, _wgslsmith_f_op_f32(step(-1244f, global0.b.x)), _wgslsmith_f_op_f32(global0.b.x - -949f))))), true, Struct_1(global0.a.a));
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(firstTrailingBit(u_input.d) >> (select(countOneBits(u_input.d >> (4294967295u % 32u)), 0u, func_1()) % 32u));
    var var_1 = global0.b.x;
    let var_2 = global0.d;
    var var_3 = Struct_2(Struct_1(~(vec2<u32>(78031u, global0.a.a.x) & _wgslsmith_sub_vec2_u32(global2.xz, var_2.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global0.b, global0.b, global0.c)) - _wgslsmith_f_op_vec3_f32(select(global0.b, vec3<f32>(global0.b.x, global0.b.x, 1475f), true)))))), global0.c, global0.a);
    var var_4 = var_3.b.xx;
    global3 = array<Struct_3, 29>();
    global2 = ~(~_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(21055u, 37365u, var_2.a.x) | vec3<u32>(global0.d.a.x, global2.x, 477u), firstLeadingBit(vec3<u32>(39210u, u_input.d, var_2.a.x))), ~(vec3<u32>(u_input.d, 16174u, global2.x) ^ vec3<u32>(4294967295u, var_0, u_input.d))));
    var var_5 = (_wgslsmith_mult_u32(56714u, 43051u) <= _wgslsmith_dot_vec3_u32(vec3<u32>(27704u, func_2(779f), min(4008u, var_0)), ~vec3<u32>(var_0, 19348u, 0u))) && (_wgslsmith_f_op_f32(sign(-1763f)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-991f, -400f))));
    var_5 = !(!all(vec3<bool>(global0.c, global0.c, false))) & false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(countOneBits(~(vec3<u32>(1u, 1u, 57112u) ^ vec3<u32>(1u, var_3.d.a.x, 88008u))), ~vec3<u32>(~14537u, select(1u, 0u, true), 4294967295u)), _wgslsmith_mult_vec4_i32((~vec4<i32>(u_input.c, u_input.a, 30169i, u_input.b.x) << (vec4<u32>(var_3.d.a.x, 0u, u_input.d, 11273u) % vec4<u32>(32u))) << (vec4<u32>(reverseBits(global0.a.a.x), firstLeadingBit(9590u), global2.x >> (12777u % 32u), global0.a.a.x) % vec4<u32>(32u)), min(abs(min(u_input.b, u_input.b)), select(vec4<i32>(u_input.a, u_input.b.x, u_input.b.x, u_input.c), abs(vec4<i32>(u_input.c, 9711i, u_input.b.x, u_input.a)), !vec4<bool>(var_3.c, var_3.c, var_3.c, true)))), vec3<i32>(~abs(countOneBits(2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.b.x, ~1i, _wgslsmith_mult_i32(u_input.a, u_input.b.x)), _wgslsmith_div_vec4_i32(u_input.b, vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.c))), u_input.c), min(vec3<u32>(_wgslsmith_div_u32(global0.d.a.x, 1951u << (u_input.d % 32u)), _wgslsmith_mod_u32(global2.x, global2.x), _wgslsmith_dot_vec2_u32(var_3.d.a, var_2.a)), firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(71267u, u_input.d, 24841u) & vec3<u32>(29611u, 54359u, u_input.d), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(1u, global0.a.a.x, 21792u), vec3<u32>(5261u, 56676u, global2.x))))));
}

