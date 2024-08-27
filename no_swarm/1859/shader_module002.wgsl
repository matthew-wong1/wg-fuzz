struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
    c: bool,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6> = array<bool, 6>(true, false, false, false, true, true);

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(true, false, vec4<bool>(true, true, false, false), 189f), Struct_1(true, false, vec4<bool>(true, true, true, true), 696f), Struct_1(false, true, vec4<bool>(true, true, true, true), -1000f), Struct_1(false, true, vec4<bool>(false, true, true, false), -385f), Struct_1(true, false, vec4<bool>(true, true, true, false), 3436f), Struct_1(false, false, vec4<bool>(false, false, true, false), 385f), Struct_1(false, true, vec4<bool>(false, true, true, false), -1287f), Struct_1(false, false, vec4<bool>(true, false, true, true), -1000f), Struct_1(true, true, vec4<bool>(false, true, true, false), 120f), Struct_1(false, false, vec4<bool>(false, true, true, true), 202f), Struct_1(true, true, vec4<bool>(false, true, true, true), 788f), Struct_1(false, true, vec4<bool>(true, true, true, false), -1617f), Struct_1(true, false, vec4<bool>(false, true, false, true), 1120f));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool) -> vec4<bool> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1137f, -199f, -391f) + vec4<f32>(-828f, -353f, -1382f, 278f)), _wgslsmith_div_vec4_f32(vec4<f32>(661f, -291f, -377f, -933f), vec4<f32>(357f, -1838f, 291f, 521f))))))), _wgslsmith_sub_u32(min(~4294967295u, u_input.c), ~select(u_input.c, ~u_input.c, true)), arg_0, max(vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(8154u, u_input.c, 0u), vec3<u32>(u_input.c, u_input.c, u_input.c)), u_input.c, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, u_input.c, 2184u), vec3<u32>(100822u, 1u, u_input.c)), select(vec3<u32>(76500u, 0u, u_input.c), vec3<u32>(0u, 0u, u_input.c), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 6u)], global0[_wgslsmith_index_u32(u_input.c, 6u)], true))), ~0u & ~u_input.c), vec4<u32>(4294967295u, firstTrailingBit(min(47745u, u_input.c)), ~4294967295u ^ _wgslsmith_add_u32(u_input.c, u_input.c), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, 4294967295u), vec3<u32>(u_input.c, 879u, u_input.c)))));
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-var_0.a)))), abs(0u) ^ select(~45988u, u_input.c, _wgslsmith_f_op_f32(step(-667f, var_0.a.x)) >= _wgslsmith_f_op_f32(f32(-1f) * -283f)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(var_0.d, ~vec4<u32>(u_input.c, 34693u, var_0.d.x, 1u)), 6u)] && true, var_0.d);
    var var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -911f), 830f, 658f, 356f), reverseBits(~u_input.c), all(select(vec2<bool>(!arg_0, !global0[_wgslsmith_index_u32(80184u, 6u)]), vec2<bool>(!arg_0, all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 6u)], true))), true)), ~_wgslsmith_clamp_vec4_u32(~_wgslsmith_div_vec4_u32(var_0.d, var_0.d), var_0.d, vec4<u32>(_wgslsmith_mult_u32(var_0.d.x, var_0.b), 2264u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d.x, 25145u, u_input.c), var_0.d.zwx))));
    var var_2 = _wgslsmith_f_op_vec4_f32(min(var_1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(952f, _wgslsmith_f_op_f32(-211f - -369f), 1f, _wgslsmith_f_op_f32(step(1219f, -1901f)))))));
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), -660f), -1098f, var_0.c)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_1.a.x)))), var_0.c));
    return !select(!(!(!vec4<bool>(true, true, var_1.c, global0[_wgslsmith_index_u32(16622u, 6u)]))), select(vec4<bool>(true && var_0.c, var_0.c, !global0[_wgslsmith_index_u32(4294967295u, 6u)], true), !vec4<bool>(true, false, var_1.c, false), all(vec4<bool>(true, arg_0, global0[_wgslsmith_index_u32(u_input.c, 6u)], global0[_wgslsmith_index_u32(var_1.b, 6u)]))), any(vec4<bool>(!arg_0, false, true, true)));
}

fn func_2() -> f32 {
    global1 = array<Struct_1, 13>();
    var var_0 = select(!(!select(select(vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(25186u, 6u)]), vec4<bool>(true, false, true, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 6u)], true, true, global0[_wgslsmith_index_u32(7692u, 6u)])), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 6u)], true, global0[_wgslsmith_index_u32(31502u, 6u)]), vec4<bool>(global0[_wgslsmith_index_u32(1u, 6u)], true, true, true))), func_3(false), !select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 6u)], true, global0[_wgslsmith_index_u32(u_input.c, 6u)], true), vec4<bool>(true, global0[_wgslsmith_index_u32(~0u, 6u)], true, !global0[_wgslsmith_index_u32(u_input.c, 6u)]), _wgslsmith_mult_u32(u_input.c, 1u) >= (u_input.c | u_input.c)));
    global1 = array<Struct_1, 13>();
    var var_1 = abs(0u);
    var_1 = u_input.c;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(246f * _wgslsmith_f_op_f32(-2797f + -2484f)))));
}

fn func_1() -> vec3<u32> {
    let var_0 = Struct_1(global0[_wgslsmith_index_u32(47591u, 6u)] && global0[_wgslsmith_index_u32(58378u, 6u)], false, select(select(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 6u)], false, global0[_wgslsmith_index_u32(u_input.c, 6u)], global0[_wgslsmith_index_u32(41u, 6u)]), !vec4<bool>(global0[_wgslsmith_index_u32(29553u, 6u)], global0[_wgslsmith_index_u32(u_input.c, 6u)], true, false), select(vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(u_input.c, 6u)]), vec4<bool>(global0[_wgslsmith_index_u32(0u, 6u)], true, false, false), global0[_wgslsmith_index_u32(0u, 6u)])), !vec4<bool>(global0[_wgslsmith_index_u32(962u, 6u)], true, global0[_wgslsmith_index_u32(u_input.c, 6u)], global0[_wgslsmith_index_u32(0u, 6u)]), vec4<bool>(!global0[_wgslsmith_index_u32(u_input.c, 6u)], true, !global0[_wgslsmith_index_u32(u_input.c, 6u)], !global0[_wgslsmith_index_u32(66957u, 6u)])), vec4<bool>(global0[_wgslsmith_index_u32(abs(25125u), 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)], true, global0[_wgslsmith_index_u32(~u_input.c, 6u)]), vec4<bool>(_wgslsmith_dot_vec2_i32(u_input.a.xz, u_input.b.yx) < max(21029i, -1i), global0[_wgslsmith_index_u32(~reverseBits(32642u), 6u)], !all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 6u)], true)), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c, firstLeadingBit(35098u)), 6u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, 1187f, 516f, var_0.d)), vec4<f32>(var_0.d, 431f, 259f, 2518f)))), vec4<f32>(var_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - var_0.d) - _wgslsmith_f_op_f32(649f * var_0.d)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(961f)), -252f, true)), _wgslsmith_f_op_f32(sign(var_0.d))))), firstLeadingBit(u_input.c), var_0.d < _wgslsmith_f_op_f32(var_0.d + 885f), vec4<u32>(1u, u_input.c, u_input.c, ~u_input.c));
    let var_2 = var_1;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()));
    return vec3<u32>(min(~0u, var_2.d.x & countOneBits(0u)), min(1u, 15877u), 104099u);
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: vec3<u32>, arg_3: bool) -> Struct_2 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_div_f32(1542f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(814f, arg_1))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(776f - _wgslsmith_f_op_f32(-1695f - _wgslsmith_f_op_f32(max(arg_1, -1329f)))) - _wgslsmith_f_op_f32(f32(-1f) * -293f)), 630f, -158f);
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-732f, _wgslsmith_f_op_f32(max(arg_1, var_0.x)), _wgslsmith_f_op_f32(arg_1 - 1000f), var_0.x)))), _wgslsmith_dot_vec2_u32(select(arg_2.xy, vec2<u32>(_wgslsmith_sub_u32(120043u, arg_2.x), _wgslsmith_mult_u32(u_input.c, 1u)), vec2<bool>(true, select(true, global0[_wgslsmith_index_u32(arg_2.x, 6u)], false))), (~vec2<u32>(31480u, u_input.c) | vec2<u32>(14290u, 0u)) ^ (vec2<u32>(u_input.c, u_input.c) & arg_2.zx)), select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32((vec4<u32>(0u, u_input.c, 0u, 55830u) ^ vec4<u32>(1u, arg_0, arg_2.x, u_input.c)) << (vec4<u32>(37865u, arg_0, 57929u, arg_2.x) % vec4<u32>(32u)), select(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.x, 75635u, arg_0, 84290u), vec4<u32>(u_input.c, 49173u, arg_2.x, 0u)), vec4<u32>(42093u, u_input.c, 8517u, u_input.c), select(vec4<bool>(false, true, global0[_wgslsmith_index_u32(30836u, 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)]), vec4<bool>(true, arg_3, arg_3, false), true))), 6u)], global0[_wgslsmith_index_u32(max(4294967295u, _wgslsmith_mod_u32(82135u, arg_0)) << (1u % 32u), 6u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-265f)) * 609f) > var_0.x), vec4<u32>(arg_0, _wgslsmith_mod_u32(_wgslsmith_sub_u32(arg_2.x, arg_0), _wgslsmith_mult_u32(countOneBits(4294967295u), ~arg_2.x)), 1u, ~abs(_wgslsmith_mult_u32(arg_0, arg_2.x))));
    global1 = array<Struct_1, 13>();
    global1 = array<Struct_1, 13>();
    global1 = array<Struct_1, 13>();
    return Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(var_0.x)), var_1.a.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-597f * -1093f))) * var_1.a), ~select(~_wgslsmith_add_u32(42525u, u_input.c), _wgslsmith_div_u32(min(u_input.c, 0u), _wgslsmith_mult_u32(var_1.b, var_1.b)), select(!global0[_wgslsmith_index_u32(33761u, 6u)], -50909i > u_input.b.x, false & var_1.c)), var_1.c, abs(_wgslsmith_mod_vec4_u32(~var_1.d, min(firstLeadingBit(vec4<u32>(arg_0, arg_2.x, var_1.b, 4294967295u)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 4642u, var_1.d.x, 4294967295u), var_1.d)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(~(~abs(_wgslsmith_mod_u32(4294967295u, u_input.c))), 1672f, func_1(), global0[_wgslsmith_index_u32(u_input.c, 6u)]);
    let var_1 = Struct_1(global0[_wgslsmith_index_u32(4294967295u, 6u)], var_0.c, !(!(!func_3(global0[_wgslsmith_index_u32(var_0.b, 6u)]))), var_0.a.x);
    var var_2 = true;
    global0 = array<bool, 6>();
    global1 = array<Struct_1, 13>();
    let var_3 = vec2<f32>(-347f, _wgslsmith_f_op_f32(max(870f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -189f) + func_4(~u_input.c, _wgslsmith_f_op_f32(-var_0.a.x), var_0.d.xxx | vec3<u32>(1u, 61642u, var_0.b), true).a.x))));
    global1 = array<Struct_1, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a.wy, ~vec2<i32>(u_input.b.x, -2147483647i)), _wgslsmith_mod_vec2_i32(-u_input.d, -vec2<i32>(-61830i, u_input.b.x))), var_3.x, _wgslsmith_mod_u32(0u, 4294967295u), _wgslsmith_f_op_f32(-func_4(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), var_0.d.yy)), _wgslsmith_f_op_f32(210f + -893f), firstLeadingBit(vec3<u32>(var_0.d.x, u_input.c, u_input.c)), select(!global0[_wgslsmith_index_u32(var_0.b, 6u)], true, false)).a.x));
}

