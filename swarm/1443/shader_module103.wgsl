struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec2<f32>,
    d: bool,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
    c: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: f32,
    d: i32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 26> = array<vec2<u32>, 26>(vec2<u32>(4294967295u, 27453u), vec2<u32>(0u, 104937u), vec2<u32>(0u, 0u), vec2<u32>(1u, 36093u), vec2<u32>(4294967295u, 113166u), vec2<u32>(22897u, 4294967295u), vec2<u32>(64823u, 105610u), vec2<u32>(8842u, 4294967295u), vec2<u32>(1646u, 0u), vec2<u32>(4294967295u, 58480u), vec2<u32>(1167u, 85637u), vec2<u32>(28015u, 3723u), vec2<u32>(2069u, 0u), vec2<u32>(56006u, 25289u), vec2<u32>(15269u, 39296u), vec2<u32>(27720u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(50182u, 40911u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(34718u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 56901u), vec2<u32>(1u, 1u), vec2<u32>(9220u, 4294967295u), vec2<u32>(0u, 1u));

var<private> global1: Struct_3;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<u32>) -> f32 {
    let var_0 = true;
    global1 = Struct_3(Struct_2(global0[_wgslsmith_index_u32(arg_0.a, 26u)], global1.a.b, -global1.a.c, global1.a.d), reverseBits(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(~u_input.a.xz, _wgslsmith_clamp_vec2_u32(vec2<u32>(global1.b.x, u_input.a.x), arg_1, arg_1)), ~vec2<u32>(global1.a.d.e.x, 1u))));
    var var_1 = firstLeadingBit(firstTrailingBit(countOneBits(_wgslsmith_dot_vec2_i32(global1.a.c.xx, global1.a.c.yy)))) >= _wgslsmith_dot_vec2_i32(~global1.a.c.xy, -_wgslsmith_sub_vec2_i32(~global1.a.c.yx, global1.a.c.zy));
    var_1 = var_0 && true;
    var var_2 = Struct_5(Struct_3(global1.a, ~(~u_input.a.xx)), arg_1.x, _wgslsmith_div_f32(-236f, _wgslsmith_f_op_f32(abs(421f))), global1.a.c.x, global1.a.d.a);
    return _wgslsmith_f_op_f32(-1143f * 851f);
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.a.d.c - global1.a.d.c) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.d.c.x, -687f) - global1.a.d.c)), _wgslsmith_f_op_vec2_f32(max(global1.a.d.c, global1.a.d.c))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.a.d.c.x, -904f))))));
    let var_1 = Struct_4(1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(660f, -481f), _wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(541f * 1616f)), vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_4(global1.b.x, vec3<f32>(-507f, -157f, var_0.x), 46244u), global0[_wgslsmith_index_u32(global1.a.a.x, 26u)])), var_0.x, global1.a.d.c.x))), firstLeadingBit(~u_input.a.x));
    let var_2 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(1000f, var_0.x), _wgslsmith_f_op_f32(1622f * 603f), 1310f, var_0.x)));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(640f - 1093f))), _wgslsmith_f_op_f32(global1.a.d.c.x - _wgslsmith_f_op_f32(func_3(Struct_4(59837u, var_1.b, u_input.a.x), global0[_wgslsmith_index_u32(u_input.a.x, 26u)]))), 634f, _wgslsmith_f_op_f32(f32(-1f) * -1662f)));
    var var_4 = 34267u;
    return Struct_3(global1.a, global1.b | global1.b);
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: vec4<bool>, arg_3: i32) -> vec3<i32> {
    global1 = func_2();
    var var_0 = Struct_3(Struct_2(vec2<u32>(arg_0.a.x, global1.b.x), arg_0.b, -select(select(arg_0.c, vec3<i32>(arg_0.b, arg_0.b, -2147483647i), arg_1), vec3<i32>(-1583i, 2147483647i, -1871i), false | arg_0.d.d), func_2().a.d), abs(vec2<u32>(global1.b.x, ~(~0u))));
    global0 = array<vec2<u32>, 26>();
    var var_1 = !global1.a.d.a.wz;
    let var_2 = Struct_1(vec4<bool>(true, true, false, global1.a.d.b.x), vec4<bool>(!(all(var_0.a.d.a.zzw) | (var_0.a.c.x >= 9025i)), _wgslsmith_dot_vec3_u32(vec3<u32>(3447u, var_0.a.d.e.x, arg_0.d.e.x), _wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(global1.b.x, 4294967295u, 4294967295u))) >= ~func_2().a.d.e.x, all(vec4<bool>(global1.a.d.c.x > global1.a.d.c.x, false, 7171u >= var_0.b.x, true)), !var_1.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(func_2().a.d.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2167f, -539f)) + vec2<f32>(-718f, arg_0.d.c.x)), arg_2.zz)) + var_0.a.d.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.d.c.x)) < global1.a.d.c.x, ~vec2<u32>(var_0.a.a.x, func_2().b.x));
    return global1.a.c;
}

fn func_4(arg_0: i32, arg_1: Struct_5, arg_2: Struct_3, arg_3: vec3<bool>) -> Struct_4 {
    let var_0 = arg_1.a.a.d;
    var var_1 = var_0.c;
    let var_2 = arg_1.a;
    var var_3 = _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(~u_input.a.x, 35616u, 0u), vec3<u32>(arg_1.b, global1.a.d.e.x, 1u) >> (~vec3<u32>(0u, var_0.e.x, arg_2.b.x) % vec3<u32>(32u))), firstLeadingBit(_wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(1u, 6376u, arg_1.b)), ~vec3<u32>(26612u, arg_1.b, 46415u), ~vec3<u32>(97844u, 4294967295u, arg_1.b)))) | vec3<u32>(abs(_wgslsmith_sub_u32(~arg_2.a.d.e.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, global1.b.x, 0u), vec4<u32>(4294967295u, global1.a.d.e.x, 54084u, u_input.a.x)))), arg_2.b.x, 31259u);
    var_1 = arg_2.a.d.c;
    return Struct_4(0u, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1762f, arg_2.a.d.c.x) * _wgslsmith_f_op_f32(var_2.a.d.c.x * arg_2.a.d.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x - global1.a.d.c.x), _wgslsmith_f_op_f32(global1.a.d.c.x + -1753f)), global1.a.d.c.x), vec3<f32>(468f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.a.d.c.x, 1247f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(var_2.a.d.c.x, global1.a.d.c.x))))), all(vec3<bool>(all(vec4<bool>(var_2.a.d.b.x, var_0.d, true, true)), false, arg_2.a.d.d && true)))), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 26>();
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(global1.a.d.c.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -461f), global1.a.d.c.x)), global1.a.d.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(145f)) + _wgslsmith_f_op_f32(-368f * 1274f)) - global1.a.d.c.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(190f, 380f, global1.a.d.c.x, global1.a.d.c.x))), vec4<f32>(_wgslsmith_f_op_f32(436f * _wgslsmith_f_op_f32(-global1.a.d.c.x)), _wgslsmith_f_op_f32(global1.a.d.c.x * _wgslsmith_div_f32(122f, -354f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.a.d.c.x))), _wgslsmith_f_op_f32(-284f * -1746f))));
    var var_1 = Struct_4(_wgslsmith_mod_u32(0u, max(_wgslsmith_add_u32(global1.a.a.x & 1u, _wgslsmith_add_u32(global1.a.a.x, global1.b.x)), global1.b.x)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(309f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(f32(-1f) * -117f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -474f))))), 1u);
    global0 = array<vec2<u32>, 26>();
    var_1 = Struct_4(global1.b.x ^ ~1u, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(var_1.b - vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-global1.a.d.c.x), global1.a.d.c.x)))), u_input.a.x);
    var var_2 = func_4(global1.a.c.x, Struct_5(Struct_3(global1.a, ~(~vec2<u32>(u_input.a.x, 4294967295u))), ~var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-195f + _wgslsmith_f_op_f32(sign(-140f)))), _wgslsmith_mult_i32(global1.a.b, global1.a.c.x), vec4<bool>(true, false, false, true)), Struct_3(Struct_2(vec2<u32>(var_1.c, _wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(3829u, 26u)], vec2<u32>(var_1.c, 30841u))), max(~global1.a.c.x, global1.a.c.x), func_1(global1.a, global1.a.d.a.x, global1.a.d.a, 2147483647i) & _wgslsmith_add_vec3_i32(global1.a.c, global1.a.c), global1.a.d), vec2<u32>(global1.b.x, 1u)), global1.a.d.b.zwx);
    var var_3 = func_2();
    var var_4 = _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~0u, _wgslsmith_mod_u32(var_1.a, 4294967295u), min(12579u, 0u)), _wgslsmith_mod_vec3_u32(vec3<u32>(global1.b.x, global1.a.d.e.x, var_1.a), vec3<u32>(6573u, 96884u, 64982u) & u_input.a)), ~global1.b.x, reverseBits(_wgslsmith_div_u32(var_1.a, global1.b.x) & u_input.a.x), var_1.a), _wgslsmith_clamp_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(14912u, var_1.a, global1.a.a.x, u_input.a.x) >> (vec4<u32>(var_2.c, var_1.c, 4294967295u, 41070u) % vec4<u32>(32u)), vec4<u32>(90566u, global1.b.x, var_2.c, 4294967295u)), vec4<u32>(func_4(~global1.a.c.x, Struct_5(Struct_3(var_3.a, vec2<u32>(4294967295u, 22272u)), u_input.a.x, var_3.a.d.c.x, global1.a.c.x, var_3.a.d.a), func_2(), !global1.a.d.b.xwx).c, ~(var_2.c << (var_2.a % 32u)), var_1.a, var_1.c), max(~(vec4<u32>(1u, 40861u, var_3.b.x, 0u) >> (vec4<u32>(var_1.c, var_1.a, 19430u, var_1.c) % vec4<u32>(32u))), select(vec4<u32>(1u, var_1.a, 13797u, 4294967295u) >> (vec4<u32>(u_input.a.x, var_1.c, u_input.a.x, 0u) % vec4<u32>(32u)), abs(vec4<u32>(20988u, 10711u, var_3.b.x, 55190u)), !global1.a.d.a))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, func_2().a.d.e.x);
}

