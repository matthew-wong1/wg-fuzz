struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec2<i32>) -> u32 {
    global0 = array<Struct_1, 9>();
    var var_0 = Struct_2(Struct_1(any(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-880f - 406f), _wgslsmith_div_f32(1151f, 2231f)) - vec2<f32>(_wgslsmith_div_f32(1037f, 426f), _wgslsmith_f_op_f32(f32(-1f) * -225f))), u_input.a), Struct_1(true, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(352f, 647f)))), ~reverseBits(-31207i) | _wgslsmith_dot_vec2_i32(firstLeadingBit(u_input.b.yx), vec2<i32>(-43467i, arg_0.x) >> (vec2<u32>(1u, 60526u) % vec2<u32>(32u)))), Struct_1(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, 1912f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(688f, 184f))), 0i), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-212f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, 228f)) + -1050f) - -1193f), any(vec3<bool>(any(vec4<bool>(false, true, true, true)), true, true)))));
    global0 = array<Struct_1, 9>();
    var_0 = Struct_2(global0[_wgslsmith_index_u32(~firstLeadingBit(~(~4294967295u)), 9u)], var_0.c, var_0.c, var_0.a.b.x);
    var var_1 = vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(~select(u_input.b.xzx, vec3<i32>(-2147483647i, var_0.c.c, u_input.a), true), reverseBits(vec3<i32>(u_input.b.x, u_input.a, -2147483647i)), u_input.b.zwy);
    return firstTrailingBit(6641u);
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1, arg_3: f32) -> vec3<f32> {
    global0 = array<Struct_1, 9>();
    var var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-416f, arg_1.b.b.x, arg_1.d, 1103f), vec4<f32>(arg_2.b.x, -595f, 469f, arg_3)))) * _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, arg_3, arg_1.d, 125f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1571f, arg_2.b.x, var_0.b.b.x, var_0.d)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.a.b.x, 327f, -167f, arg_3))))))));
    global0 = array<Struct_1, 9>();
    let var_2 = u_input.b.zx;
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(var_1.xxy, var_1.zyz), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1034f, var_0.b.b.x, var_0.d), var_1.wyz)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(var_1.zxy)))) * var_1.wyy)));
}

fn func_1() -> bool {
    var var_0 = -1152f;
    var var_1 = ~select(max(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(1u, 11899u)), _wgslsmith_div_u32(3750u, 75026u)), ~_wgslsmith_mod_u32(62563u, 45483u), select(all(vec2<bool>(true, false)), 0i >= u_input.a, true)) <= ~_wgslsmith_mod_u32(func_2(~vec2<i32>(-1i, u_input.b.x)), ~reverseBits(4294967295u));
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1358f, 1000f), -599f));
    global0 = array<Struct_1, 9>();
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_3(1u, Struct_2(Struct_1(false, vec2<f32>(-368f, -136f), u_input.b.x), global0[_wgslsmith_index_u32(~67971u, 9u)], global0[_wgslsmith_index_u32(8124u << (1u % 32u), 9u)], 1f), Struct_1(any(vec2<bool>(false, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-308f, 1063f)), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 2147483647i), u_input.b.wy)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-922f)) - _wgslsmith_f_op_f32(-1014f * 1186f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(2909f, 1637f, -1349f) - vec3<f32>(1858f, 296f, -383f)))), vec3<bool>(false, !any(vec3<bool>(true, false, true)), any(vec2<bool>(true, true)))))));
    return all(!vec3<bool>(true, true, true || all(vec3<bool>(true, true, true))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = !select(select(vec4<bool>(!arg_0.x, false, true, any(vec3<bool>(false, false, arg_1.b.a))), select(vec4<bool>(false, arg_1.b.a, true, true), !vec4<bool>(arg_0.x, false, arg_0.x, false), true), any(select(vec3<bool>(arg_0.x, true, arg_1.b.a), vec3<bool>(false, arg_1.c.a, true), arg_1.b.a))), vec4<bool>(!arg_1.b.a, true, arg_0.x, false), select(select(!vec4<bool>(arg_1.b.a, false, false, false), !vec4<bool>(true, arg_0.x, false, true), vec4<bool>(arg_1.a.a, arg_0.x, true, false)), select(!vec4<bool>(arg_1.c.a, true, arg_0.x, false), vec4<bool>(arg_1.b.a, false, false, true), select(vec4<bool>(true, false, arg_0.x, arg_1.c.a), vec4<bool>(arg_0.x, true, false, false), vec4<bool>(arg_0.x, arg_0.x, arg_1.c.a, arg_0.x))), !(!vec4<bool>(arg_0.x, true, arg_1.b.a, true))));
    global0 = array<Struct_1, 9>();
    var_0 = !vec4<bool>(true, arg_1.a.a, arg_1.a.a, 2225f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.a.b.x, -678f, true)) - -503f));
    global0 = array<Struct_1, 9>();
    var var_1 = ~(~vec3<u32>(~(~7974u), countOneBits(72101u), _wgslsmith_mod_u32(~1u, 1u)));
    return global0[_wgslsmith_index_u32(~51616u, 9u)];
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    let var_0 = Struct_1(select(any(vec2<bool>(arg_0.a.a, all(vec4<bool>(arg_0.b.a, false, arg_0.a.a, arg_0.b.a)))), any(!vec3<bool>(arg_0.c.a, true, arg_0.a.a)), false), vec2<f32>(_wgslsmith_f_op_f32(arg_0.b.b.x * _wgslsmith_f_op_f32(round(arg_0.d))), 219f), _wgslsmith_mod_i32(_wgslsmith_sub_i32(arg_0.a.c, _wgslsmith_div_i32(arg_0.c.c, arg_0.a.c)), -1732i));
    let var_1 = _wgslsmith_add_u32(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~(~vec2<u32>(69045u, 0u)))), select(0u, 4294967295u, all(select(vec2<bool>(false, arg_0.b.a), vec2<bool>(var_0.a, var_0.a), !var_0.a))));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1006f);
    var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(574f - -230f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f + 109f)))))));
    var var_3 = Struct_2(arg_0.b, Struct_1(var_0.a, var_0.b, arg_0.b.c), Struct_1(select((arg_0.c.b.x > -1078f) && true, false, true), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_div_f32(-304f, 1557f), _wgslsmith_f_op_vec3_f32(func_3(86955u, Struct_2(global0[_wgslsmith_index_u32(var_1, 9u)], global0[_wgslsmith_index_u32(var_1, 9u)], global0[_wgslsmith_index_u32(4294967295u, 9u)], -1000f), Struct_1(var_0.a, arg_0.a.b, -2147483647i), var_0.b.x)).x))), _wgslsmith_mult_i32(~(-arg_0.a.c), u_input.a)), 349f);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_2(func_4(vec2<bool>(select(false, false, true), func_1()), Struct_2(global0[_wgslsmith_index_u32(firstLeadingBit(68856u), 9u)], Struct_1(true, vec2<f32>(2079f, -831f), -47252i), Struct_1(true, vec2<f32>(-1580f, 981f), u_input.a), -456f)), Struct_1(true, func_4(vec2<bool>(true, true), Struct_2(global0[_wgslsmith_index_u32(4294967295u, 9u)], Struct_1(true, vec2<f32>(-1115f, 1306f), 0i), global0[_wgslsmith_index_u32(30797u, 9u)], 1303f)).b, i32(-1i) * -25957i), Struct_1(true, vec2<f32>(-1466f, -735f), ~u_input.a << (~1u % 32u)), _wgslsmith_f_op_f32(-1f)));
    let var_1 = select(vec2<bool>(all(vec2<bool>(true, true)), var_0.c.a | select(false, func_4(vec2<bool>(false, var_0.c.a), Struct_2(Struct_1(false, var_0.a.b, 0i), Struct_1(var_0.b.a, var_0.a.b, u_input.b.x), global0[_wgslsmith_index_u32(20029u, 9u)], 3076f)).a, true)), vec2<bool>(!var_0.a.a, true), true);
    var var_2 = true;
    var var_3 = u_input.b.x;
    var_0 = Struct_2(func_5(func_5(func_5(func_5(Struct_2(Struct_1(var_0.c.a, vec2<f32>(1637f, var_0.d), -2147483647i), Struct_1(var_1.x, vec2<f32>(var_0.b.b.x, -335f), var_0.a.c), Struct_1(var_0.a.a, vec2<f32>(1786f, var_0.a.b.x), -46788i), var_0.b.b.x))))).c, Struct_1(true, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(func_5(Struct_2(global0[_wgslsmith_index_u32(43205u, 9u)], global0[_wgslsmith_index_u32(1u, 9u)], var_0.c, var_0.a.b.x)).c.b, vec2<f32>(491f, var_0.a.b.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.b.x, -625f))), _wgslsmith_sub_i32(countOneBits(u_input.a), -u_input.a) ^ ~u_input.b.x), Struct_1((all(vec4<bool>(false, var_1.x, var_0.b.a, var_0.c.a)) | true) || !(false & var_0.c.a), var_0.c.b, u_input.a), var_0.d);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_i32(var_0.a.c, -2147483647i), reverseBits(~(~2147483647i)));
}

