struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
    c: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: u32,
    d: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: vec4<bool>,
    c: vec2<bool>,
    d: Struct_3,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 12>;

var<private> global1: u32;

var<private> global2: array<vec3<u32>, 31>;

var<private> global3: Struct_4;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    global1 = _wgslsmith_mod_u32(_wgslsmith_div_u32(abs(abs(1u)), global3.d.c), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~global2[_wgslsmith_index_u32(~4294967295u, 31u)], countOneBits(global2[_wgslsmith_index_u32(u_input.a, 31u)])), 4294967295u));
    let var_0 = Struct_5(!(!all(global3.a.b.a.yzx) && global3.d.b), global3.a.c.a, select(vec2<bool>(global3.a.c.a.x, global3.a.a >= firstLeadingBit(global3.a.a)), vec2<bool>(any(select(vec2<bool>(true, false), vec2<bool>(global3.a.b.a.x, true), global3.a.d.a.x)), global3.a.c.a.x), !select(vec2<bool>(global3.d.b, false), select(global3.a.d.a.yx, global3.a.c.a.zz, global3.d.b), select(vec2<bool>(true, global3.d.b), vec2<bool>(false, true), global3.d.b))), Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.d.a), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-global3.d.a)))), !(!global3.d.b), 1u), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b * global3.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global3.d.a.x)), -1257f), global3.d.a.x))));
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.d.a + var_0.e.zz)), vec2<f32>(1761f, -740f))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.a.x, global3.d.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.e.x, 808f))) - _wgslsmith_f_op_vec2_f32(-global3.d.a))))), true, 87157u);
    var var_2 = countOneBits(global2[_wgslsmith_index_u32(1u, 31u)]);
    let var_3 = global3.a.d;
    return var_1.a.x;
}

fn func_2() -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(1097f - -1159f);
    var var_1 = (11293u ^ (38408u << (global3.c % 32u))) & _wgslsmith_dot_vec2_u32(max(~vec2<u32>(u_input.a, global3.c), _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(54629u, 94003u), vec2<u32>(global3.d.c, global3.c)), ~vec2<u32>(14840u, u_input.a), vec2<u32>(1u, 4294967295u) & vec2<u32>(u_input.a, 4294967295u))), _wgslsmith_sub_vec2_u32(firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(25834u, u_input.a), vec2<u32>(0u, 1u))), ~vec2<u32>(47996u, u_input.a)));
    global2 = array<vec3<u32>, 31>();
    let var_2 = global3.a;
    global3 = Struct_4(Struct_2(abs((var_2.a << (global3.d.c % 32u)) >> (_wgslsmith_add_u32(u_input.a, 0u) % 32u)), Struct_1(global3.a.c.a), global3.a.d, var_2.d), _wgslsmith_f_op_f32(func_3()), 1u, Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b)), -725f), true, _wgslsmith_div_u32(0u, _wgslsmith_mod_u32(global3.d.c, 17128u))));
    return Struct_4(Struct_2(_wgslsmith_div_i32(global3.a.a, ~global3.a.a), Struct_1(global3.a.b.a), Struct_1(global3.a.c.a), Struct_1(vec4<bool>(var_2.b.a.x, global3.d.c <= u_input.a, all(vec3<bool>(global3.a.b.a.x, false, var_2.b.a.x)), true))), -105f, global3.d.c, Struct_3(_wgslsmith_f_op_vec2_f32(global3.d.a * vec2<f32>(global3.d.a.x, _wgslsmith_f_op_f32(-989f * global3.d.a.x))), any(vec4<bool>(true, true, any(var_2.b.a.yy), var_2.b.a.x)), ~20122u));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<f32>) -> Struct_4 {
    var var_0 = Struct_5(false | global3.a.b.a.x, vec4<bool>(arg_0.a.d.a.x, func_2().d.b, true, true), select(vec2<bool>(global3.d.b, arg_0.a.b.a.x), !(!(!arg_0.a.c.a.xy)), global3.a.d.a.yx), Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-990f, global3.d.a.x) - global3.d.a) * _wgslsmith_f_op_vec2_f32(-arg_0.d.a)) + func_2().d.a), global3.b != _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(trunc(-1000f))), 41750u), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -521f, _wgslsmith_f_op_f32(-708f + arg_1.x))))));
    var var_1 = arg_0.a;
    let var_2 = vec3<i32>(-(i32(-1i) * -(-45888i >> (u_input.a % 32u))), func_2().a.a, abs(-(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -2147483647i, 3119i), vec3<i32>(var_1.a, 2147483647i, -1i)) << (u_input.a % 32u))));
    var var_3 = arg_0.a.a;
    var var_4 = Struct_3(arg_0.d.a, var_0.b.x, 35916u);
    return arg_0;
}

fn func_1() -> Struct_4 {
    return func_4(func_2(), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(u_input.a, 12u)]) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.d.a.x, global3.d.a.x, 1672f, global3.d.a.x) + global0[_wgslsmith_index_u32(u_input.a, 12u)])) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(219f, global3.b, global3.d.a.x, global3.d.a.x)))), vec4<f32>(_wgslsmith_f_op_f32(step(227f, func_2().b)), _wgslsmith_f_op_f32(-global3.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b + 701f) - -1013f), global3.d.a.x))));
}

fn func_5(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: vec4<u32>, arg_3: vec4<bool>) -> vec2<f32> {
    var var_0 = Struct_5(func_4(func_1(), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(1377f, -441f), -544f, _wgslsmith_f_op_f32(round(-967f)), _wgslsmith_f_op_f32(func_3())), global0[_wgslsmith_index_u32(1u, 12u)], !arg_3))).d.b, !vec4<bool>(true, global3.a.d.a.x, all(func_2().a.b.a.yw), !(global3.a.b.a.x | true)), func_2().a.b.a.yy, Struct_3(_wgslsmith_f_op_vec2_f32(-arg_0.d.a), false, 0u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(-1000f, -317f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b)), -1720f)));
    let var_1 = !vec2<bool>(true != all(var_0.b.wyz), !arg_0.a.d.a.x | func_2().a.c.a.x);
    let var_2 = arg_0;
    var var_3 = _wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(~var_0.d.c, 31u)], vec3<u32>(42484u, 61177u, _wgslsmith_dot_vec3_u32(~arg_2.zzw, arg_2.yyw))) << (~firstLeadingBit(~_wgslsmith_sub_u32(76828u, 1u)) % 32u);
    global0 = array<vec4<f32>, 12>();
    return vec2<f32>(_wgslsmith_div_f32(func_2().d.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-331f)))) * _wgslsmith_f_op_f32(func_3()))), var_0.d.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<u32>, 31>();
    var var_0 = _wgslsmith_f_op_vec2_f32(func_5(func_1(), -(-_wgslsmith_add_vec4_i32(vec4<i32>(global3.a.a, global3.a.a, global3.a.a, global3.a.a), vec4<i32>(2147483647i, global3.a.a, global3.a.a, -1i)) ^ countOneBits(-vec4<i32>(1i, global3.a.a, -40065i, 5988i))), ~abs(_wgslsmith_mult_vec4_u32(max(vec4<u32>(global3.c, global3.d.c, global3.d.c, global3.d.c), vec4<u32>(45052u, u_input.a, 4294967295u, 4294967295u)), select(vec4<u32>(45280u, 11079u, 1u, u_input.a), vec4<u32>(u_input.a, global3.c, global3.d.c, 69219u), global3.a.d.a.x))), global3.a.b.a));
    var var_1 = ~vec4<u32>(~func_2().d.c, 21351u, ~87569u, max(countOneBits(0u), 0u));
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.d.a) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))), _wgslsmith_f_op_vec2_f32(func_2().d.a + global3.d.a)))), any(global3.a.c.a.xyz) | (-(~(-1i)) >= _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global3.a.a, global3.a.a), vec2<i32>(54990i, global3.a.a)), global3.a.a)), ~var_1.x);
    let var_3 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1326f, -760f, -1192f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-661f, var_2.a.x, global3.d.a.x)), vec3<f32>(var_2.a.x, 1239f, var_2.a.x))))))));
    let var_4 = 0u;
    var var_5 = 1000f;
    let var_6 = Struct_5(func_4(func_2(), _wgslsmith_f_op_vec4_f32(ceil(global0[_wgslsmith_index_u32(var_2.c, 12u)]))).a.c.a.x, select(global3.a.d.a, !(!(!global3.a.d.a)), global3.a.b.a.x), global3.a.b.a.zy, global3.d, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(var_0.x, 375f), global3.d.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1373f)))), vec3<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -932f), _wgslsmith_f_op_f32(max(287f, _wgslsmith_f_op_vec2_f32(func_5(Struct_4(Struct_2(-35648i, Struct_1(global3.a.d.a), Struct_1(vec4<bool>(global3.d.b, var_2.b, false, true)), global3.a.c), global3.b, u_input.a, global3.d), vec4<i32>(-16209i, 50853i, 2661i, 2147483647i), vec4<u32>(51302u, global3.c, u_input.a, global3.d.c), vec4<bool>(var_2.b, var_2.b, false, false))).x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1648f * _wgslsmith_f_op_f32(f32(-1f) * -2762f)), _wgslsmith_f_op_f32(select(var_2.a.x, -1000f, var_6.b.x))), ~vec2<i32>(_wgslsmith_dot_vec4_i32(min(vec4<i32>(global3.a.a, -4142i, global3.a.a, global3.a.a), vec4<i32>(1i, -1i, global3.a.a, global3.a.a)), -vec4<i32>(13925i, global3.a.a, global3.a.a, 1i)), _wgslsmith_sub_i32(52134i, 2147483647i)), _wgslsmith_f_op_vec2_f32(abs(func_4(Struct_4(Struct_2(global3.a.a, global3.a.c, global3.a.b, Struct_1(var_6.b)), -1833f, min(global3.c, global3.c), Struct_3(vec2<f32>(-685f, var_2.a.x), var_2.b, 4294967295u)), vec4<f32>(func_1().b, global3.d.a.x, var_3.x, var_0.x)).d.a)));
}

