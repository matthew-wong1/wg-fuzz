struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: f32,
    b: vec4<f32>,
    c: Struct_2,
}

struct Struct_5 {
    a: vec2<f32>,
    b: i32,
    c: vec2<bool>,
    d: vec2<u32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: f32 = -343f;

var<private> global2: array<Struct_5, 6> = array<Struct_5, 6>(Struct_5(vec2<f32>(777f, -2319f), -22029i, vec2<bool>(true, false), vec2<u32>(1u, 0u), 0u), Struct_5(vec2<f32>(419f, 328f), 23089i, vec2<bool>(false, false), vec2<u32>(1u, 36509u), 34233u), Struct_5(vec2<f32>(296f, -453f), 45668i, vec2<bool>(false, true), vec2<u32>(33410u, 1u), 4294967295u), Struct_5(vec2<f32>(-478f, -503f), i32(-2147483648), vec2<bool>(false, false), vec2<u32>(11730u, 0u), 69885u), Struct_5(vec2<f32>(467f, 745f), -48463i, vec2<bool>(true, false), vec2<u32>(1u, 4294967295u), 4294967295u), Struct_5(vec2<f32>(-1291f, -187f), -11441i, vec2<bool>(true, false), vec2<u32>(4294967295u, 4294967295u), 0u));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> bool {
    global1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(1190f))));
    var var_0 = 1u;
    return global0.c.c;
}

fn func_2() -> Struct_5 {
    global0 = Struct_4(_wgslsmith_f_op_f32(global0.c.a.x * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(global0.b.x * -1000f)))), global0.b, global0.c);
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(172f - global0.c.a.x)), global0.a)))));
    var var_1 = vec4<bool>(any(select(select(select(vec4<bool>(true, global0.c.c, global0.c.c, global0.c.c), vec4<bool>(false, false, global0.c.c, global0.c.c), global0.c.c), !vec4<bool>(true, true, global0.c.c, true), true), !select(vec4<bool>(global0.c.c, true, false, global0.c.c), vec4<bool>(false, false, false, false), vec4<bool>(true, false, global0.c.c, false)), !select(vec4<bool>(true, global0.c.c, global0.c.c, true), vec4<bool>(global0.c.c, false, true, true), false))), !(_wgslsmith_f_op_f32(select(117f, _wgslsmith_f_op_f32(-1050f + var_0.x), any(vec4<bool>(true, false, true, global0.c.c)))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), true, !all(!vec3<bool>(global0.c.c, global0.c.c, true)));
    var_1 = vec4<bool>(true & func_3(), all(vec2<bool>(var_0.x < _wgslsmith_f_op_f32(-var_0.x), func_3())), u_input.b != _wgslsmith_dot_vec3_i32((vec3<i32>(u_input.b, -11819i, -15837i) << (global0.c.e.a.xzw % vec3<u32>(32u))) << (global0.c.b.a.yxx % vec3<u32>(32u)), abs(vec3<i32>(u_input.e, u_input.b, -2091i))), !(any(select(var_1.xz, var_1.zx, var_1.wz)) & global0.c.c));
    let var_2 = Struct_5(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(global0.a, global0.c.a.x)), _wgslsmith_f_op_f32(ceil(global0.b.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(global0.a, var_0.x)), _wgslsmith_f_op_f32(step(global0.c.a.x, var_0.x))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global0.c.a.yx), _wgslsmith_f_op_vec2_f32(-global0.c.a.zz))))), -u_input.b, select(select(var_1.yz, var_1.wy, !(!var_1.wy)), !select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, var_1.x), false), var_1.zy), var_1.zz), vec2<u32>(~(~0u), ~_wgslsmith_sub_u32(global0.c.e.a.x, 23972u)) >> (vec2<u32>(_wgslsmith_mod_u32(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, global0.c.d.a.x, 74653u), global0.c.b.a.zww)), _wgslsmith_clamp_u32(min(3621u, u_input.c), global0.c.e.a.x, _wgslsmith_div_u32(4294967295u, global0.c.e.a.x))) % vec2<u32>(32u)), ~_wgslsmith_mult_u32(min(30792u, global0.c.d.a.x) | firstTrailingBit(22501u), 0u));
    return Struct_5(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.x, 261f)), var_0.x)), 1986f), u_input.e, select(vec2<bool>(all(!vec4<bool>(true, var_1.x, var_1.x, global0.c.c)), (var_2.c.x | var_1.x) && (global0.c.c && true)), select(var_2.c, select(var_2.c, !var_2.c, select(var_1.xx, vec2<bool>(global0.c.c, false), false)), vec2<bool>(true, var_2.c.x)), var_2.c), ~(~_wgslsmith_add_vec2_u32(max(global0.c.e.a.wx, var_2.d), vec2<u32>(1u, var_2.e))), u_input.a);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_5, arg_2: Struct_2) -> vec4<f32> {
    let var_0 = vec4<u32>(~_wgslsmith_mod_u32(~arg_1.d.x, ~u_input.a) & 4294967295u, ~min(_wgslsmith_sub_u32(arg_2.d.a.x, u_input.c), ~_wgslsmith_div_u32(arg_1.e, 25286u)), 73078u, ~57201u);
    var var_1 = any(select(vec4<bool>(!func_3(), false, false, func_3()), !(!vec4<bool>(arg_2.c, false, false, false)), !select(select(vec4<bool>(true, arg_2.c, arg_2.c, global0.c.c), vec4<bool>(global0.c.c, arg_1.c.x, arg_2.c, global0.c.c), vec4<bool>(false, global0.c.c, arg_2.c, false)), !vec4<bool>(arg_1.c.x, arg_1.c.x, arg_2.c, arg_2.c), arg_1.c.x)));
    var var_2 = Struct_3(~vec2<i32>(arg_0.x, ~arg_1.b));
    var var_3 = abs(var_2.a);
    global2 = array<Struct_5, 6>();
    return _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x)), arg_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))), _wgslsmith_f_op_f32(arg_1.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1622f)) * arg_1.a.x)), arg_2.a.x)));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2) -> Struct_1 {
    global0 = Struct_4(386f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(vec2<i32>(-1i, -u_input.b), func_2(), Struct_2(global0.c.a, Struct_1(arg_1.d.a), func_2().c.x, arg_1.e, Struct_1(global0.c.d.a))))), global0.c);
    global0 = Struct_4(func_2().a.x, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-global0.b))), arg_1);
    let var_0 = arg_0;
    global1 = arg_1.a.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_1.a, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-627f, global0.c.a.x, 741f)))))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(global0.b.wwx, arg_1.a)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(141f, global0.c.a.x, arg_1.a.x))), arg_1.a) + arg_1.a));
    return Struct_1(_wgslsmith_sub_vec4_u32(arg_1.d.a, global0.c.b.a));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_2) -> Struct_2 {
    let var_0 = select(!(!vec2<bool>(false, !arg_1.c)), !func_2().c, vec2<bool>(true, !(global0.c.c && true)));
    let var_1 = global0.c.c;
    var var_2 = vec2<i32>(u_input.b, _wgslsmith_clamp_i32(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -31865i, -4004i, u_input.e), vec4<i32>(u_input.e, -1i, u_input.e, -21507i))), -(~(-1i)), -u_input.b)) << (arg_0 % vec2<u32>(32u));
    global0 = Struct_4(232f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a))), 988f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-200f - -826f), _wgslsmith_f_op_f32(global0.a - global0.b.x))), _wgslsmith_f_op_f32(step(-225f, func_2().a.x)))), global0.c);
    let var_3 = u_input.e;
    return Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global0.b.wyz)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1085f, -1064f, -2540f))), global0.c.e, false, func_1(Struct_3(~vec2<i32>(var_3, 0i) >> (select(vec2<u32>(2204u, arg_1.e.a.x), vec2<u32>(global0.c.b.a.x, global0.c.b.a.x), var_0) % vec2<u32>(32u))), Struct_2(_wgslsmith_f_op_vec3_f32(-global0.b.yyx), global0.c.e, false, func_1(Struct_3(vec2<i32>(var_2.x, -55500i)), Struct_2(arg_1.a, arg_1.b, true, Struct_1(vec4<u32>(9213u, 4294967295u, 4489u, 78590u)), global0.c.b)), func_1(Struct_3(vec2<i32>(u_input.e, var_3)), Struct_2(vec3<f32>(global0.c.a.x, arg_1.a.x, 973f), Struct_1(global0.c.b.a), false, Struct_1(vec4<u32>(arg_1.d.a.x, 0u, arg_0.x, 0u)), Struct_1(vec4<u32>(arg_1.b.a.x, 78055u, arg_1.b.a.x, 1u)))))), arg_1.b);
}

fn func_6(arg_0: Struct_4, arg_1: i32, arg_2: vec3<i32>) -> i32 {
    var var_0 = global2[_wgslsmith_index_u32(~(~u_input.a), 6u)];
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.a - global0.b.x), _wgslsmith_f_op_f32(-var_0.a.x)));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1));
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~max(4294967295u, u_input.c)) >> (13351u % 32u), u_input.d), 6u)];
    var var_3 = -2147483647i;
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(global0.c.d.a);
    global2 = array<Struct_5, 6>();
    var var_1 = u_input.e;
    var_1 = func_6(Struct_4(-1377f, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(607f + global0.c.a.x) - _wgslsmith_f_op_f32(global0.b.x + 463f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global0.a)), _wgslsmith_f_op_f32(-global0.b.x)), -1686f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(419f)) - _wgslsmith_div_f32(1000f, global0.a))), func_5(_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(var_0.wz, vec2<u32>(26509u, 44747u)), select(global0.c.e.a.yw, global0.c.e.a.yx, false)), Struct_2(_wgslsmith_f_op_vec3_f32(ceil(global0.b.ywz)), global0.c.d, global0.c.c, func_1(Struct_3(vec2<i32>(-2147483647i, u_input.b)), global0.c), func_1(Struct_3(vec2<i32>(-31898i, u_input.b)), global0.c)))), firstLeadingBit(0i), _wgslsmith_mult_vec3_i32(vec3<i32>(select(u_input.b >> (4294967295u % 32u), u_input.e, select(true, false, true)), abs(u_input.b), -551i), vec3<i32>(_wgslsmith_clamp_i32(1i, u_input.b, firstLeadingBit(u_input.b)), _wgslsmith_div_i32(u_input.b, 16164i), ~_wgslsmith_sub_i32(-18887i, u_input.b))));
    var var_2 = Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-900f, global0.a), global0.c.a.zz)) - global0.b.yz) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, -1163f))))), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, u_input.e), vec2<i32>(58411i, u_input.e)), -vec2<i32>(u_input.b, u_input.b)), vec2<i32>(u_input.b, u_input.e)), u_input.e), func_2().c, _wgslsmith_mod_vec2_u32(~firstLeadingBit(abs(global0.c.e.a.wx)), firstLeadingBit(vec2<u32>(select(u_input.c, global0.c.d.a.x, false), _wgslsmith_dot_vec3_u32(var_0.wwy, vec3<u32>(var_0.x, global0.c.e.a.x, global0.c.e.a.x))))), abs(global0.c.b.a.x));
    let var_3 = _wgslsmith_f_op_f32(exp2(global0.b.x));
    let var_4 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)), _wgslsmith_f_op_f32(abs(384f)))), global0.b, global0.c);
    var_2 = Struct_5(global0.b.wx, 1i, var_2.c, countOneBits(countOneBits(vec2<u32>(0u, firstTrailingBit(13817u)))), global0.c.e.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.a, var_4.c.a.x)), ~_wgslsmith_sub_vec4_u32(abs(~global0.c.b.a), ~vec4<u32>(24136u, 15591u, global0.c.b.a.x, 55867u) >> (global0.c.b.a % vec4<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_2.a.x, 399f, var_4.c.c)), func_5(vec2<u32>(1u, 7519u), global0.c).a.x))) * -354f), var_2.b);
}

