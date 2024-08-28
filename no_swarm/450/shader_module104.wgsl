struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1350f;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<u32>) -> u32 {
    var var_0 = vec2<u32>(abs(~_wgslsmith_div_u32(0u, 7736u)) & ~firstTrailingBit(42042u), _wgslsmith_sub_u32(firstTrailingBit(23696u), arg_1.x));
    let var_1 = Struct_2(!select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    var var_2 = vec3<f32>(-523f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * 179f), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(306f + _wgslsmith_f_op_f32(sign(arg_0.x))), _wgslsmith_f_op_f32(-arg_0.x)))));
    let var_3 = vec3<i32>(-55488i, _wgslsmith_div_i32(~u_input.a, u_input.b.x), ~(-1i));
    let var_4 = 1u;
    return var_0.x;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: Struct_2) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(-arg_1.x);
    global0 = -259f;
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1523f)))) * -2079f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-arg_1.x))));
    var var_0 = Struct_2(arg_2.a);
    var var_1 = 7764u;
    return Struct_1(u_input.c, _wgslsmith_mod_i32(~_wgslsmith_mult_i32(u_input.b.x, -26405i), 40127i) <= -reverseBits(0i), func_3(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1200f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1013f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(-arg_0.x)), u_input.c));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_2) -> Struct_1 {
    var var_0 = vec3<bool>(_wgslsmith_f_op_f32(ceil(-375f)) >= -1854f, true, arg_3.a.x);
    let var_1 = Struct_1(vec3<u32>(17207u, u_input.c.x, abs(arg_1.a.x)), all(select(arg_3.a, vec4<bool>(var_0.x, !arg_1.b, arg_0.x <= arg_0.x, true), vec4<bool>(false, any(vec2<bool>(false, var_0.x)), true, arg_1.b))), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, 5919u, arg_1.c, arg_0.x), vec4<u32>(~0u, arg_1.c, ~arg_0.x, _wgslsmith_mod_u32(1u, u_input.c.x))) ^ 4294967295u);
    let var_2 = arg_3;
    let var_3 = vec2<u32>(u_input.c.x, select(arg_1.c, func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(144f, 192f, -962f, 387f)), max(vec3<u32>(4294967295u, 38647u, 53219u), var_1.a)), true != (var_2.a.x || false)) << ((~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c, 4294967295u, var_1.c, 0u), vec4<u32>(arg_1.c, 4294967295u, 0u, arg_1.c)) & ~abs(4294967295u)) % 32u));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(684f, -501f, -110f, -162f) + vec4<f32>(-248f, 350f, -793f, 663f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1000f - 470f), -417f, 749f, _wgslsmith_f_op_f32(f32(-1f) * -615f))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1251f, -276f, 873f, 969f) + vec4<f32>(599f, 1207f, -216f, 227f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1145f, -1157f, -1526f, -620f), vec4<f32>(586f, 2188f, 324f, -1985f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-853f, -2434f, 1179f, 1000f) * vec4<f32>(477f, 663f, 1000f, -495f))))))));
    return Struct_1(vec3<u32>(abs(1u), 4294967295u, ~(~func_3(var_4, var_1.a))), any(select(!(!vec2<bool>(arg_1.b, true)), arg_3.a.wy, arg_1.b == all(arg_3.a.yzw))), firstLeadingBit(0u));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec3<i32>) -> f32 {
    let var_0 = _wgslsmith_add_i32(21731i, arg_3.x | ((-5140i & arg_3.x) ^ _wgslsmith_dot_vec3_i32(arg_3, select(arg_3, vec3<i32>(1i, arg_3.x, 1i), vec3<bool>(true, arg_1.x, true)))));
    var var_1 = Struct_2(vec4<bool>(true, countOneBits(1i | arg_3.x) <= abs(_wgslsmith_clamp_i32(14282i, u_input.a, arg_3.x)), all(vec3<bool>(all(arg_1), arg_1.x, all(vec4<bool>(true, true, false, arg_1.x)))), !(arg_0.b || arg_2.b)));
    return -1221f;
}

fn func_1(arg_0: vec4<u32>) -> f32 {
    global0 = _wgslsmith_f_op_f32(ceil(880f));
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-743f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1187f + -1000f), 719f)) + _wgslsmith_f_op_f32(f32(-1f) * -270f)))));
    global0 = _wgslsmith_f_op_f32(select(-436f, _wgslsmith_f_op_f32(func_5(func_4(u_input.c.yz, func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1212f, -786f)), vec3<f32>(794f, -1056f, -633f), Struct_2(vec4<bool>(true, false, true, false))), -1i, Struct_2(vec4<bool>(false, false, false, true))), select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), any(vec2<bool>(true, true))), func_4(firstLeadingBit(~vec2<u32>(arg_0.x, u_input.c.x)), func_2(_wgslsmith_div_vec2_f32(vec2<f32>(-1509f, -748f), vec2<f32>(140f, -841f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-993f, 1818f, 1410f)), Struct_2(vec4<bool>(false, false, true, true))), -26364i, Struct_2(vec4<bool>(true, true, true, true))), abs(~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, 15448i, 32180i), vec3<i32>(u_input.b.x, -35691i, -70570i))))), false));
    var var_0 = u_input.b;
    let var_1 = Struct_2(vec4<bool>(true, true, !func_2(vec2<f32>(1271f, -676f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1937f, 1038f, 937f) - vec3<f32>(282f, 359f, 1005f)), Struct_2(vec4<bool>(true, true, true, true))).b, true));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_5(func_4(~vec2<u32>(arg_0.x, u_input.c.x), func_4(arg_0.xw, Struct_1(u_input.c, var_1.a.x, 24083u), var_0.x, var_1), -1i, Struct_2(var_1.a)), var_1.a.yz, func_2(vec2<f32>(869f, 306f), vec3<f32>(1014f, -1000f, -289f), Struct_2(var_1.a)), _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, var_0.x, u_input.b.x), vec3<i32>(u_input.b.x, var_0.x, u_input.b.x)), -vec3<i32>(var_0.x, -32629i, -33132i), vec3<i32>(-73528i, u_input.b.x, 1i) | vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -497f) - -1022f)), func_2(vec2<f32>(_wgslsmith_f_op_f32(floor(-811f)), _wgslsmith_f_op_f32(func_5(Struct_1(arg_0.xyw, var_1.a.x, 81067u), var_1.a.yx, Struct_1(arg_0.wxz, true, 0u), vec3<i32>(var_0.x, -12580i, -27817i)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1297f, -408f, 204f)))), Struct_2(var_1.a)).b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-592f)))) <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -440f))), -2147483647i >= u_input.a), !select(!select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true), vec2<bool>(true, all(vec2<bool>(true, false)))), _wgslsmith_mod_u32(_wgslsmith_add_u32(~u_input.c.x, 11252u), 40959u >> (min(7809u, u_input.c.x) % 32u)) >= min(0u, ~u_input.c.x));
    var var_1 = u_input.a;
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-316f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<u32>(u_input.c.x, 27653u, u_input.c.x, 49566u)))) * -331f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -722f), _wgslsmith_f_op_f32(1260f + -713f), var_0.x)), -825f)))));
    var_1 = 1i;
    let var_2 = func_4(~vec2<u32>(~1u, _wgslsmith_dot_vec2_u32(u_input.c.xx, vec2<u32>(24367u, u_input.c.x))), Struct_1(vec3<u32>(abs(_wgslsmith_sub_u32(u_input.c.x, 39798u)), ~_wgslsmith_mod_u32(1u, u_input.c.x), 1u), func_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(471f, 1287f), vec2<f32>(1000f, -882f), vec2<bool>(true, true))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-853f, 1000f, -1721f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 982f, -1076f) - vec3<f32>(-436f, 1948f, -1305f)))), Struct_2(!vec4<bool>(var_0.x, true, var_0.x, false))).b, u_input.c.x), -firstLeadingBit(2147483647i), Struct_2(vec4<bool>(all(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, var_0.x, false), true)), !(var_0.x || var_0.x), false, true)));
    var_0 = vec2<bool>(false, var_0.x);
    let var_3 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(-1i, 29659i >> ((u_input.c.x << (u_input.c.x % 32u)) % 32u)), firstTrailingBit(-u_input.a), select(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 35045i, u_input.a) | vec3<i32>(u_input.a, 16872i, -2147483647i), select(vec3<i32>(-1i, var_3, -23114i), vec3<i32>(var_3, var_3, var_3), var_0.x)), u_input.b.x, -(u_input.a & var_3)), _wgslsmith_sub_vec3_i32(~vec3<i32>(1i, u_input.a, 51931i), -vec3<i32>(23650i, var_3, var_3)), vec3<bool>(false, false, var_2.b)));
}

