struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: Struct_1,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22>;

var<private> global1: vec2<i32> = vec2<i32>(47773i, -1i);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2() -> vec3<u32> {
    let var_0 = _wgslsmith_dot_vec3_i32((u_input.a & abs(vec3<i32>(-19846i, -1i, global1.x) | vec3<i32>(-28856i, global1.x, global1.x))) | reverseBits(-_wgslsmith_mod_vec3_i32(vec3<i32>(0i, u_input.c, 1i), u_input.a)), ~abs(~_wgslsmith_clamp_vec3_i32(u_input.a, u_input.a, u_input.a)));
    var var_1 = ~u_input.d.x;
    let var_2 = ~0i;
    global0 = array<Struct_2, 22>();
    var var_3 = -2147483647i;
    return vec3<u32>(75817u, 0u, u_input.d.x);
}

fn func_3(arg_0: Struct_4) -> vec3<bool> {
    var var_0 = _wgslsmith_dot_vec4_i32(max(_wgslsmith_mod_vec4_i32(select(vec4<i32>(global1.x, global1.x, arg_0.d.c.x, 2147483647i), vec4<i32>(global1.x, -36448i, -59485i, arg_0.d.c.x), vec4<bool>(arg_0.e, arg_0.e, arg_0.e, arg_0.c.d)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-15686i, -1i, arg_0.c.a.x, u_input.c), vec4<i32>(global1.x, global1.x, -1i, u_input.b), vec4<i32>(26186i, 19575i, global1.x, arg_0.a))) ^ -_wgslsmith_clamp_vec4_i32(vec4<i32>(global1.x, 2147483647i, global1.x, u_input.b), vec4<i32>(-17617i, 1i, global1.x, global1.x), vec4<i32>(-2147483647i, global1.x, u_input.a.x, -1i)), -_wgslsmith_add_vec4_i32(min(vec4<i32>(u_input.b, arg_0.d.c.x, u_input.c, 39339i), vec4<i32>(16481i, 604i, 1i, arg_0.c.a.x)), vec4<i32>(-2147483647i, arg_0.d.c.x, 1i, -11994i))), ~(-(vec4<i32>(global1.x, u_input.b, 43364i, global1.x) | vec4<i32>(u_input.c, -1i, -17140i, 2147483647i))));
    global0 = array<Struct_2, 22>();
    var_0 = u_input.c;
    var_0 = ~1i;
    let var_1 = arg_0.c.d & select(any(vec4<bool>(select(true, arg_0.c.d, arg_0.c.d), true, true, all(vec2<bool>(arg_0.e, true)))), true, false);
    return !vec3<bool>(select(all(!vec2<bool>(arg_0.c.d, arg_0.c.d)), false, true), true, true);
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: vec2<i32>) -> i32 {
    var var_0 = ~min(_wgslsmith_dot_vec3_u32(func_2(), u_input.d.yzx), ~(u_input.d.x >> (~30108u % 32u)));
    global1 = ~(-arg_2);
    var var_1 = u_input.d.yzy;
    var var_2 = arg_2.x;
    var var_3 = Struct_4(arg_0.x, Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-914f)) - -1492f))), Struct_1(u_input.a, ~(_wgslsmith_dot_vec4_u32(u_input.d, u_input.d) & func_2().x), _wgslsmith_dot_vec3_u32(u_input.d.yzw, min(u_input.d.xxz, u_input.d.zxz | u_input.d.zwx)), !all(vec2<bool>(true, true))), Struct_2(-258f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1361f, 187f, -1000f) - vec3<f32>(2253f, -600f, 499f)))), u_input.a.yz), (firstTrailingBit(_wgslsmith_mult_i32(global1.x, 0i)) > arg_0.x) || any(select(vec3<bool>(true, true, true), func_3(Struct_4(global1.x, Struct_3(-510f), Struct_1(u_input.a, u_input.d.x, 19501u, true), Struct_2(1000f, vec3<f32>(931f, 944f, -1000f), vec2<i32>(global1.x, -16358i)), false)), any(vec3<bool>(true, true, true)))));
    return ~(~abs(~(-1i | arg_2.x)));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: i32) -> vec3<bool> {
    global0 = array<Struct_2, 22>();
    var var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + 581f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + arg_0.x) + _wgslsmith_f_op_f32(arg_0.x - arg_0.x)), -855f, 0i >= u_input.a.x))));
    global1 = _wgslsmith_mod_vec2_i32(-(~(-vec2<i32>(43124i, global1.x))), vec2<i32>(global1.x, arg_2));
    let var_1 = !select(select(vec4<bool>(any(vec4<bool>(true, false, false, true)), any(vec3<bool>(true, false, true)), true, any(vec4<bool>(true, false, false, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false)), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), arg_0.x < _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a), 1637f)));
    global0 = array<Struct_2, 22>();
    return !var_1.yyw;
}

fn func_5(arg_0: u32, arg_1: vec3<bool>) -> i32 {
    var var_0 = u_input.d;
    var_0 = vec4<u32>(arg_0, _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.d.x, 4752u) & var_0.x, _wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, arg_0) & u_input.d.x, 1u)), var_0.x, ~func_2().x);
    let var_1 = Struct_1(~firstLeadingBit(u_input.a), ~u_input.d.x, countOneBits(1u & _wgslsmith_mod_u32(arg_0 ^ 4294967295u, 37510u)), func_3(Struct_4(_wgslsmith_dot_vec3_i32(u_input.a >> (u_input.d.zwz % vec3<u32>(32u)), reverseBits(vec3<i32>(global1.x, u_input.c, -2147483647i))), Struct_3(_wgslsmith_f_op_f32(select(406f, 597f, arg_1.x))), Struct_1(vec3<i32>(u_input.a.x, -17877i, 2147483647i), _wgslsmith_div_u32(u_input.d.x, 1u), ~4294967295u, arg_1.x), Struct_2(-205f, vec3<f32>(376f, 2401f, -1085f), vec2<i32>(-24376i, global1.x)), false)).x);
    let var_2 = _wgslsmith_clamp_vec3_i32(var_1.a, select(~vec3<i32>(-global1.x, -1i, 0i << (arg_0 % 32u)), u_input.a | -vec3<i32>(-60211i, 55764i, var_1.a.x), !vec3<bool>(all(vec4<bool>(false, true, false, true)), true | var_1.d, arg_1.x || arg_1.x)), ~vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, 0i, -2147483647i, 4658i), vec4<i32>(-2147483647i, global1.x, 24996i, var_1.a.x)), vec4<i32>(global1.x, var_1.a.x, -1i, 54060i)), func_1(abs(var_1.a.xx), 11420i & global1.x, u_input.a.xy), func_1(vec2<i32>(0i, -1i), 8339i << (var_1.c % 32u), -u_input.a.yx)));
    let var_3 = vec4<f32>(-2164f, 665f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1143f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1074f + -169f))) * _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(min(-325f, 1583f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-565f, -879f) * _wgslsmith_f_op_f32(select(-1162f, 2937f, var_1.d)))))));
    return -1i;
}

fn func_6(arg_0: vec4<f32>, arg_1: i32, arg_2: vec4<u32>, arg_3: vec4<u32>) -> vec4<i32> {
    global1 = countOneBits(abs(vec2<i32>(~(-15765i), reverseBits(-6501i))) >> (_wgslsmith_add_vec2_u32(func_2().zy, vec2<u32>(u_input.d.x, _wgslsmith_mod_u32(arg_3.x, arg_3.x))) % vec2<u32>(32u)));
    let var_0 = global0[_wgslsmith_index_u32(63988u, 22u)];
    let var_1 = Struct_3(-1311f);
    let var_2 = !(!func_3(Struct_4(global1.x, var_1, Struct_1(u_input.a, 0u, arg_3.x, true), global0[_wgslsmith_index_u32(~39277u, 22u)], true)).x);
    global0 = array<Struct_2, 22>();
    return ~select(~(~vec4<i32>(arg_1, arg_1, arg_1, u_input.b)), abs(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(7555i, 662i, global1.x, var_0.c.x), vec4<i32>(2147483647i, arg_1, arg_1, 7265i)), _wgslsmith_div_vec4_i32(vec4<i32>(1i, 8678i, global1.x, 1191i), vec4<i32>(2147483647i, 2147483647i, -7884i, 46342i)))), var_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~(-1174i));
    var var_1 = u_input.d.x;
    var var_2 = -2147483647i <= var_0;
    var var_3 = func_6(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-929f - _wgslsmith_f_op_f32(f32(-1f) * -2161f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1112f)), -359f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-738f)), _wgslsmith_f_op_f32(f32(-1f) * -890f)) * -1000f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -842f))), _wgslsmith_div_f32(1000f, -684f)), func_5(54254u, select(vec3<bool>(false, true, true), func_4(vec2<f32>(-1209f, 1770f), vec4<i32>(u_input.c, 719i, var_0, -2147483647i), func_1(u_input.a.zz, -7926i, u_input.a.zz)), vec3<bool>(true, any(vec2<bool>(true, true)), true))), u_input.d, u_input.d);
    var_3 = vec4<i32>(0i, -firstLeadingBit(_wgslsmith_sub_i32(global1.x, 14755i) << ((u_input.d.x | u_input.d.x) % 32u)), 26934i, _wgslsmith_div_i32(var_3.x, reverseBits(global1.x)));
    let var_4 = u_input.d.wy;
    var_3 = _wgslsmith_clamp_vec4_i32(-vec4<i32>(2147483647i, func_5(~38079u, vec3<bool>(true, true, true)), u_input.c, -var_0), vec4<i32>(var_3.x >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(var_4.x, 0u), ~vec2<u32>(var_4.x, u_input.d.x)) % 32u), -(_wgslsmith_dot_vec3_i32(u_input.a, var_3.wzz) | _wgslsmith_div_i32(u_input.a.x, var_3.x)), _wgslsmith_dot_vec3_i32(~(vec3<i32>(-2147483647i, var_3.x, var_3.x) ^ u_input.a), ~select(vec3<i32>(global1.x, -11586i, -1i), vec3<i32>(-2147483647i, -36328i, global1.x), vec3<bool>(false, false, false))), 42945i), vec4<i32>(-global1.x, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 2147483647i, 21246i, 2147483647i), vec4<i32>(global1.x, 2147483647i, 37883i, u_input.b)) & _wgslsmith_dot_vec3_i32(var_3.wwz, u_input.a), countOneBits(func_5(29796u, vec3<bool>(false, false, false)))), u_input.b, ~(~_wgslsmith_clamp_i32(-1i, -2147483647i, 0i))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(countOneBits(global1.x), max(21650i, 1i), i32(-1i) * -2147483647i, _wgslsmith_add_i32(global1.x, 12924i)) ^ vec4<i32>(firstLeadingBit(var_3.x), ~var_3.x, -23859i, u_input.a.x), _wgslsmith_div_vec3_i32(countOneBits(select(vec3<i32>(var_0, u_input.b, global1.x) | u_input.a, _wgslsmith_clamp_vec3_i32(vec3<i32>(global1.x, -6655i, 1i), vec3<i32>(var_0, global1.x, u_input.b), var_3.yxw), vec3<bool>(false, false, false))), reverseBits(_wgslsmith_div_vec3_i32(var_3.xww, vec3<i32>(u_input.c, var_0, 2147483647i)))), max(countOneBits(vec3<i32>(-u_input.c, u_input.b ^ 0i, global1.x)), var_3.wzy), 2147483647i, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-293f * _wgslsmith_f_op_f32(select(-1285f, 575f, false))), 1237f)));
}

