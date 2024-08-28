struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: Struct_1,
    d: u32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<f32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1>;

var<private> global1: Struct_1 = Struct_1(vec2<f32>(233f, 202f), -4248i, vec2<i32>(-40487i, 0i), false);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: f32, arg_1: f32) -> i32 {
    var var_0 = Struct_3(any(!vec3<bool>(global1.d, global1.d, arg_1 < -313f)), !(!vec3<bool>(false, 0i > global1.c.x, !global1.d)));
    global0 = array<Struct_2, 1>();
    let var_1 = false;
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(-global1.a), 1i, min(global1.c, (vec2<i32>(u_input.b.x, -35666i) | u_input.b.yy) << (firstLeadingBit(u_input.d.xy) % vec2<u32>(32u))), true);
    var var_2 = Struct_3(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(824f)) * _wgslsmith_f_op_f32(round(676f))) != _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(arg_0, arg_1)), _wgslsmith_f_op_f32(min(-1797f, -914f)), all(vec2<bool>(global1.d, var_1))))), vec3<bool>(true, false, _wgslsmith_f_op_f32(arg_0 + 269f) <= _wgslsmith_f_op_f32(420f * _wgslsmith_f_op_f32(max(1384f, arg_0)))));
    return abs(~_wgslsmith_clamp_i32(global1.b, ~(~36316i), -25812i));
}

fn func_2() -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1142f, 543f, 1092f, 472f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.a.x, -2458f, -198f, global1.a.x), vec4<f32>(401f, global1.a.x, global1.a.x, 857f))), true)) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.a.x, global1.a.x, 132f, 941f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1183f, 297f, global1.a.x))), vec4<f32>(-2276f, _wgslsmith_f_op_f32(global1.a.x - global1.a.x), global1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(357f + global1.a.x), -2142f)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_f_op_f32(f32(-1f) * -775f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -566f))) * var_1));
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(global1.a + _wgslsmith_f_op_vec2_f32(global1.a * _wgslsmith_f_op_vec2_f32(select(var_0.yz, _wgslsmith_f_op_vec2_f32(exp2(var_0.wx)), vec2<bool>(global1.d, global1.d))))), _wgslsmith_mult_i32(1i, -func_3(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(select(-1280f, 343f, global1.d)))), abs(global1.c), true);
    var var_3 = reverseBits(~vec4<u32>(4294967295u, firstTrailingBit(_wgslsmith_sub_u32(u_input.c, 24152u)), _wgslsmith_dot_vec2_u32(u_input.d.zy, ~vec2<u32>(48761u, 29290u)), ~(~u_input.a)));
    return firstLeadingBit(var_3.xy);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: Struct_1) -> f32 {
    global1 = arg_2;
    var var_0 = Struct_4(select(-(~(-u_input.b.x)), abs(abs(u_input.b.x)), any(!(!vec4<bool>(false, arg_1.a, true, arg_1.b.x)))), 25173u, _wgslsmith_mod_i32(30990i, _wgslsmith_dot_vec2_i32(~vec2<i32>(1i, 1i) << (func_2() % vec2<u32>(32u)), -vec2<i32>(-2147483647i, -2147483647i))));
    global0 = array<Struct_2, 1>();
    global0 = array<Struct_2, 1>();
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(global1.a, arg_2.a)) * global1.a) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, 2088f))))), var_0.a, arg_2.c, arg_2.d);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.x) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(global1.a.x, global1.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-147f - _wgslsmith_f_op_f32(-119f * arg_2.a.x)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.a.x)))))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: f32) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(~abs(min(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, u_input.a, 0u, u_input.a), vec4<u32>(54661u, u_input.d.x, u_input.a, u_input.a)), vec4<u32>(6532u, u_input.a, u_input.d.x, u_input.d.x) >> (vec4<u32>(u_input.a, 1u, u_input.d.x, u_input.c) % vec4<u32>(32u))), _wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(22371u, 1u), vec2<u32>(u_input.a, 4643u))))), 1u)];
    let var_1 = var_0.c.c;
    global1 = var_0.c;
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_0.c.a)) * _wgslsmith_f_op_vec2_f32(exp2(var_0.c.a)))))), 2147483647i, -vec2<i32>(countOneBits(-var_1.x), min(i32(-1i) * -1i, select(u_input.e, var_1.x, global1.d))), true);
    var var_3 = ~_wgslsmith_mult_vec3_i32(max(-abs(u_input.b), vec3<i32>(_wgslsmith_add_i32(var_0.b.x, arg_0.c.x), -2147483647i, -var_2.c.x)), u_input.b);
    return var_2;
}

fn func_1() -> vec3<bool> {
    global1 = func_5(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, global1.a.x))))), ~(-1i), ~(-(~u_input.b.zy)), true), vec4<bool>(global1.d, all(vec3<bool>(true, global1.d, false || global1.d)), global1.d, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_2(), Struct_3(true, vec3<bool>(true, global1.d, true)), Struct_1(vec2<f32>(global1.a.x, global1.a.x), u_input.b.x, global1.c, true)))) + global1.a.x));
    let var_0 = vec3<bool>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(9239u, u_input.a)), vec2<u32>(u_input.a, ~56467u)) <= u_input.c, !global1.d, !global1.d);
    var var_1 = vec4<bool>(any(select(vec3<bool>(!global1.d, global1.d, all(vec3<bool>(global1.d, true, global1.d))), select(var_0, vec3<bool>(global1.d, false, var_0.x), var_0), -789f == global1.a.x)), global1.d, false, select(true, ~1u < _wgslsmith_add_u32(u_input.d.x & 0u, 0u), all(var_0)));
    var var_2 = Struct_4(-32981i, abs(_wgslsmith_add_u32(_wgslsmith_mult_u32(~4294967295u, u_input.a), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.d.zz, u_input.d.yz), u_input.d.yx >> (u_input.d.xx % vec2<u32>(32u))))), 1i);
    var var_3 = global0[_wgslsmith_index_u32(4294967295u, 1u)];
    return select(!select(!select(vec3<bool>(true, false, var_1.x), var_0, vec3<bool>(true, global1.d, true)), var_1.wyw, vec3<bool>(any(vec3<bool>(false, var_0.x, true)), false, global1.a.x != -1000f)), vec3<bool>(select(false, !all(vec4<bool>(false, false, var_0.x, global1.d)), !var_3.a == false), !(func_5(Struct_1(var_3.c.a, global1.b, global1.c, var_1.x), vec4<bool>(global1.d, var_0.x, var_1.x, false), 234f).d || all(vec4<bool>(global1.d, global1.d, false, true))), var_0.x), 728f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.a.x - 541f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(select(!select(vec3<bool>(false, global1.d, global1.d), !vec3<bool>(false, global1.d, global1.d), vec3<bool>(true, true, global1.d)), func_1(), !vec3<bool>(!global1.d, global1.d, -3902i < global1.c.x)));
    global1 = func_5(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-143f)), global1.a.x)), global1.a.x), 1i, vec2<i32>(u_input.b.x, 2147483647i), global1.d), select(select(select(select(vec4<bool>(true, true, true, global1.d), vec4<bool>(var_0, false, true, false), vec4<bool>(var_0, global1.d, global1.d, false)), vec4<bool>(var_0, var_0, false, var_0), true), select(vec4<bool>(var_0, var_0, global1.d, var_0), select(vec4<bool>(true, true, var_0, false), vec4<bool>(false, global1.d, global1.d, false), global1.d), true | global1.d), vec4<bool>(true, global1.d | false, all(vec2<bool>(true, false)), true)), !select(select(vec4<bool>(false, var_0, true, false), vec4<bool>(var_0, global1.d, false, false), var_0), select(vec4<bool>(false, false, global1.d, global1.d), vec4<bool>(false, var_0, true, true), vec4<bool>(true, false, true, false)), !vec4<bool>(true, global1.d, global1.d, var_0)), var_0), _wgslsmith_f_op_f32(-1087f - _wgslsmith_f_op_f32(trunc(-1045f))));
    let var_1 = reverseBits(30270u);
    let var_2 = var_1;
    let var_3 = Struct_2(!((var_0 || true) | var_0), ~vec2<i32>(-122i, countOneBits(_wgslsmith_sub_i32(global1.b, global1.c.x))), Struct_1(_wgslsmith_f_op_vec2_f32(-global1.a), global1.b, _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.b.xx, vec2<i32>(u_input.e, -1i), global1.c), global1.c & vec2<i32>(global1.c.x, u_input.e)), vec2<i32>(_wgslsmith_clamp_i32(global1.c.x, global1.b, global1.c.x), max(12134i, 0i))), global1.d), var_2, vec4<u32>(abs(53267u), ~var_1, 1u, _wgslsmith_div_u32(15530u | var_1, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1, 4294967295u, var_1), vec3<u32>(1u, var_2, u_input.a)))));
    global1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1658f)) - 1000f), _wgslsmith_f_op_f32(func_4(u_input.d.yx, Struct_3(global1.d, vec3<bool>(true, true, true)), var_3.c))), u_input.b.x, ~vec2<i32>(1i, _wgslsmith_dot_vec2_i32(~var_3.b, -u_input.b.yx)), var_3.c.d);
    var var_4 = !((!func_1().x | !global1.d) & (var_3.a || global1.d));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.zx, -939f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-165f, _wgslsmith_div_f32(-1000f, var_3.c.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(318f))))), ~vec4<u32>(67901u, _wgslsmith_div_u32(1u, ~var_2), func_2().x, 66481u | countOneBits(var_2)), var_3.c.a.x);
}

