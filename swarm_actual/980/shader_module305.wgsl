struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 1>;

var<private> global1: f32;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1383f, 1670f), vec2<f32>(-2241f, 1000f), vec2<bool>(true, false)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-515f, 272f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(1985f, 1036f) - vec2<f32>(1205f, -852f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(218f, -2405f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(151f, 1164f)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-551f, -775f))))), false)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1308f + _wgslsmith_f_op_f32(max(1025f, var_0.x))))), ~vec2<u32>(42181u, abs(4294967295u << (u_input.b % 32u))), vec4<bool>(any(!select(vec2<bool>(false, true), vec2<bool>(false, true), false)), !(var_0.x > -516f), any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true)), any(vec2<bool>(-346f > var_0.x, any(vec3<bool>(false, false, false))))), 356f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-165f, var_0.x)), _wgslsmith_f_op_f32(round(var_0.x)))) + _wgslsmith_div_f32(-1018f, _wgslsmith_f_op_f32(-1162f - -1000f))));
    global0 = array<vec3<u32>, 1>();
    global0 = array<vec3<u32>, 1>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(-var_1.a)));
    return select(~var_1.b, vec2<u32>(~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 4294967295u, var_1.b.x, 0u), vec4<u32>(1u, u_input.b, u_input.c, var_1.b.x)), ~vec4<u32>(var_1.b.x, u_input.b, u_input.b, u_input.c)), 22973u), !var_1.c.xz);
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: Struct_2, arg_3: vec4<i32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(arg_1)), _wgslsmith_f_op_f32(751f - 1450f))))) >= 527f;
    var_0 = any(arg_2.a.c) | !arg_2.a.c.x;
    var var_1 = vec2<u32>(~_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(1u, 1u)], _wgslsmith_add_vec3_u32(global0[_wgslsmith_index_u32(arg_2.d.x, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)] ^ arg_2.d.zyy)), u_input.a);
    let var_2 = Struct_3(~arg_2.d.yw, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2040f, arg_1)), func_3(), !(!vec4<bool>(arg_2.a.c.x, arg_2.a.c.x, true, true)), arg_2.a.d), arg_2, !arg_2.a.c.x);
    global1 = 141f;
    return var_2;
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    global0 = array<vec3<u32>, 1>();
    global1 = _wgslsmith_f_op_f32(-arg_0.c.b.x);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.a - 882f)))) - _wgslsmith_f_op_f32(min(arg_0.c.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.c.a.a))))));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.c.e.x, arg_0.b.a)) + _wgslsmith_f_op_f32(-1133f * -1330f)), arg_0.b.b, !select(arg_0.b.c, vec4<bool>(true, true, true, true), select(!arg_0.b.c, !vec4<bool>(arg_0.c.a.d, true, arg_0.c.a.d, true), arg_0.d == true)), true);
    let var_1 = -_wgslsmith_clamp_vec3_i32(-func_2(59898i, -362f, arg_0.c, vec4<i32>(u_input.d, arg_0.c.c.x, arg_0.c.c.x, 2147483647i)).c.c.xzz ^ (~vec3<i32>(arg_0.c.c.x, 4539i, u_input.d) >> (~arg_0.c.d.zxz % vec3<u32>(32u))), arg_0.c.c.zwy, _wgslsmith_mod_vec3_i32(-vec3<i32>(-2147483647i, 4482i, 2147483647i), ~_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 1i, -32658i), arg_0.c.c.xwz)));
    return func_2(arg_0.c.c.x, _wgslsmith_f_op_f32(exp2(func_2(_wgslsmith_div_i32(-1667i, 29512i), func_2(1i << (arg_0.a.x % 32u), _wgslsmith_f_op_f32(round(203f)), func_2(arg_0.c.c.x, var_0.a, arg_0.c, vec4<i32>(2147483647i, u_input.d, -65177i, u_input.e)).c, arg_0.c.c).c.b.x, Struct_2(arg_0.c.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.e.x, arg_0.c.b.x, arg_0.c.e.x)), _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.c.c.x, -11926i, -27227i, u_input.e), arg_0.c.c), _wgslsmith_sub_vec4_u32(arg_0.c.d, arg_0.c.d), vec3<f32>(var_0.a, 2921f, 526f)), max(~vec4<i32>(u_input.d, var_1.x, -26734i, arg_0.c.c.x), vec4<i32>(var_1.x, u_input.e, var_1.x, u_input.d))).c.b.x)), Struct_2(func_2(abs(arg_0.c.c.x), 1000f, func_2(~(-36888i), _wgslsmith_f_op_f32(-arg_0.c.a.a), arg_0.c, arg_0.c.c).c, _wgslsmith_clamp_vec4_i32(~arg_0.c.c, vec4<i32>(arg_0.c.c.x, var_1.x, 13728i, arg_0.c.c.x), func_2(u_input.d, -441f, Struct_2(Struct_1(var_0.a, var_0.b, arg_0.c.a.c, var_0.d), arg_0.c.b, vec4<i32>(-2147483647i, 5053i, var_1.x, 5703i), arg_0.c.d, vec3<f32>(arg_0.b.a, arg_0.c.b.x, 623f)), arg_0.c.c).c.c)).b, vec3<f32>(arg_0.c.e.x, 240f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.c.b.x, arg_0.c.b.x) - arg_0.b.a)), ~vec4<i32>(countOneBits(-1i), ~(-61876i), select(9710i, -2147483647i, true), u_input.e), vec4<u32>(var_0.b.x << (~var_0.b.x % 32u), var_0.b.x, 4294967295u, min(u_input.b, var_0.b.x)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1f, 1f, 1f)))))), arg_0.c.c).c.a;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec4<i32>, arg_3: f32) -> Struct_3 {
    let var_0 = func_2(-20819i, _wgslsmith_f_op_f32(f32(-1f) * -738f), func_2(abs(2147483647i ^ arg_2.x), _wgslsmith_f_op_f32(arg_3 - arg_1.x), func_2(-u_input.e, _wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(abs(arg_0.a))), Struct_2(Struct_1(arg_1.x, vec2<u32>(1u, 165u), arg_0.c, arg_0.c.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, arg_3) * vec3<f32>(arg_3, arg_0.a, arg_0.a)), _wgslsmith_add_vec4_i32(arg_2, vec4<i32>(0i, arg_2.x, arg_2.x, arg_2.x)), ~vec4<u32>(u_input.b, arg_0.b.x, 28689u, arg_0.b.x), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-267f, arg_1.x, arg_1.x), vec3<f32>(900f, arg_0.a, arg_1.x)))), vec4<i32>(2147483647i, 0i, ~0i, arg_2.x)).c, abs(vec4<i32>(firstTrailingBit(arg_2.x), arg_2.x, 2147483647i >> (arg_0.b.x % 32u), 2147483647i))).c, _wgslsmith_mult_vec4_i32(countOneBits(~vec4<i32>(1i, u_input.e, arg_2.x, u_input.d)), arg_2 | _wgslsmith_div_vec4_i32(select(vec4<i32>(8008i, -2147483647i, 2147483647i, u_input.d), vec4<i32>(u_input.e, arg_2.x, -14356i, -1i), arg_0.c), ~arg_2))).c;
    let var_1 = Struct_3(~(((var_0.d.zw | vec2<u32>(var_0.d.x, 1u)) >> (_wgslsmith_add_vec2_u32(arg_0.b, vec2<u32>(1u, 78372u)) % vec2<u32>(32u))) | (func_2(var_0.c.x, arg_3, Struct_2(Struct_1(-446f, var_0.d.zw, vec4<bool>(true, true, arg_0.d, var_0.a.d), arg_0.c.x), var_0.e, vec4<i32>(var_0.c.x, u_input.d, -1i, u_input.e), vec4<u32>(59529u, var_0.d.x, u_input.a, 4294967295u), var_0.e), arg_2).c.a.b ^ arg_0.b)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.a)) - -892f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1024f, var_0.a.a, arg_0.c.x)))), var_0.d.wz, !(!(!arg_0.c)), arg_0.d), Struct_2(func_2(_wgslsmith_dot_vec4_i32(arg_2, arg_2) << (arg_0.b.x % 32u), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.b.x))), var_0, firstTrailingBit(vec4<i32>(-23315i, -1i, 2147483647i, -2147483647i))).c.a, vec3<f32>(_wgslsmith_div_f32(func_4(Struct_3(var_0.a.b, Struct_1(arg_0.a, arg_0.b, vec4<bool>(var_0.a.d, var_0.a.c.x, var_0.a.c.x, true), arg_0.c.x), var_0, false)).a, 186f), -574f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(arg_3, 784f, var_0.a.d)), arg_3))), _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(arg_2.x, var_0.c.x, 22408i, u_input.e)), select(vec4<i32>(arg_2.x, 2147483647i, 52066i, u_input.d), -arg_2, select(arg_0.c, vec4<bool>(var_0.a.c.x, var_0.a.c.x, true, false), vec4<bool>(true, true, var_0.a.d, true)))), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, ~arg_0.b.x, var_0.d.x, 16551u), ~var_0.d), var_0.b), any(var_0.a.c.xy));
    let var_2 = var_0;
    let var_3 = arg_0;
    let var_4 = var_2.d.zx;
    return func_2(_wgslsmith_mult_i32(arg_2.x, var_2.c.x), var_3.a, func_2(arg_2.x << (~_wgslsmith_mult_u32(var_3.b.x, arg_0.b.x) % 32u), arg_0.a, func_2(_wgslsmith_add_i32(var_1.c.c.x, 11128i) ^ max(-8057i, u_input.e), 139f, func_2(13664i << (1u % 32u), arg_1.x, Struct_2(Struct_1(var_3.a, vec2<u32>(4294967295u, 48246u), var_0.a.c, true), vec3<f32>(arg_1.x, arg_3, var_1.b.a), vec4<i32>(u_input.e, var_2.c.x, arg_2.x, var_0.c.x), var_0.d, vec3<f32>(653f, -294f, arg_3)), var_1.c.c).c, func_2(var_1.c.c.x, -903f, Struct_2(Struct_1(-426f, var_1.c.a.b, var_1.b.c, var_3.d), var_0.e, vec4<i32>(arg_2.x, u_input.e, arg_2.x, var_0.c.x), var_2.d, vec3<f32>(156f, 1000f, -1803f)), vec4<i32>(arg_2.x, -11475i, 10590i, 17550i)).c.c ^ vec4<i32>(-33537i, 2147483647i, var_0.c.x, arg_2.x)).c, vec4<i32>(-409i, firstLeadingBit(2147483647i), _wgslsmith_mult_i32(10793i, -13982i), _wgslsmith_dot_vec2_i32(var_0.c.wx, var_1.c.c.yw)) | -firstLeadingBit(vec4<i32>(0i, u_input.d, 1i, 2147483647i))).c, vec4<i32>(firstTrailingBit(_wgslsmith_mult_i32(var_0.c.x, -1i)), -_wgslsmith_dot_vec4_i32(var_1.c.c, var_2.c), _wgslsmith_clamp_i32(min(var_2.c.x << (1u % 32u), -2147483647i), 2147483647i, _wgslsmith_add_i32(countOneBits(24123i), _wgslsmith_add_i32(var_0.c.x, var_2.c.x))), -17177i));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_2) -> Struct_3 {
    global0 = array<vec3<u32>, 1>();
    global0 = array<vec3<u32>, 1>();
    let var_0 = -(~_wgslsmith_mod_i32(-arg_1.c.x | arg_0.c.c.x, 16369i));
    var var_1 = 1586f;
    global0 = array<vec3<u32>, 1>();
    return Struct_3(vec2<u32>(firstLeadingBit(max(1u, arg_2.a.x)), _wgslsmith_add_u32(~(arg_1.a.b.x & 4294967295u), abs(_wgslsmith_mod_u32(4294967295u, u_input.b)))), Struct_1(-734f, arg_1.d.wy, vec4<bool>(any(arg_1.a.c), false, func_2(1i, arg_1.e.x, arg_0.c, firstLeadingBit(arg_0.c.c)).d, func_2(var_0, -201f, Struct_2(Struct_1(-1212f, arg_2.a, arg_1.a.c, arg_1.a.c.x), vec3<f32>(1000f, arg_0.b.a, arg_3.a.a), arg_2.c.c, arg_0.c.d, arg_0.c.b), vec4<i32>(0i, -3530i, 0i, var_0)).c.a.c.x | true), !(arg_3.a.c.x != !arg_2.c.a.d)), arg_3, !(!any(!arg_3.a.c.xw)));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: f32) -> vec2<u32> {
    let var_0 = func_6(func_5(func_4(func_2(abs(-16648i), -1008f, arg_0, _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -13890i, -1i, 2147483647i), vec4<i32>(2147483647i, arg_0.c.x, arg_0.c.x, 0i), arg_0.c))), _wgslsmith_f_op_vec2_f32(arg_0.e.xz + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.e.x, 548f)))), ~arg_0.c, arg_3), arg_0, func_5(func_5(arg_0.a, vec2<f32>(-674f, 1f), -vec4<i32>(2147483647i, u_input.e, 2147483647i, arg_0.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.e.x, 1825f)) - 420f)).b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(2129f + arg_2.a), _wgslsmith_f_op_f32(arg_2.a * -2108f))), vec4<i32>(u_input.d, -4148i, arg_0.c.x, -arg_0.c.x >> (_wgslsmith_sub_u32(4294967295u, 0u) % 32u)), func_2(23293i, arg_0.a.a, Struct_2(Struct_1(arg_0.a.a, vec2<u32>(arg_0.a.b.x, 0u), arg_2.c, arg_2.d), _wgslsmith_f_op_vec3_f32(vec3<f32>(440f, 549f, 1513f) - vec3<f32>(arg_0.e.x, -167f, 172f)), -arg_0.c, max(arg_0.d, vec4<u32>(u_input.c, 0u, 0u, u_input.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, arg_0.b.x, -159f) - arg_0.e)), ~(~arg_0.c)).c.e.x), func_5(arg_2, vec2<f32>(1838f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(788f - 147f) * _wgslsmith_f_op_f32(sign(arg_3)))), -(~vec4<i32>(-1i, arg_0.c.x, -1i, u_input.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a))).c);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.c.e.x)) * 687f);
    let var_1 = vec2<i32>(-1i) * -func_6(func_6(var_0, arg_0, func_2(2147483647i, arg_3, Struct_2(Struct_1(244f, arg_0.d.xy, arg_0.a.c, var_0.b.d), arg_0.b, arg_0.c, vec4<u32>(1u, 53822u, 4294967295u, 98317u), vec3<f32>(-442f, 199f, arg_2.a)), vec4<i32>(var_0.c.c.x, arg_0.c.x, u_input.e, u_input.e)), Struct_2(Struct_1(-139f, vec2<u32>(0u, arg_1.x), vec4<bool>(arg_2.d, arg_2.c.x, false, false), var_0.d), var_0.c.e, vec4<i32>(1i, 33358i, var_0.c.c.x, arg_0.c.x), vec4<u32>(51553u, 1u, arg_0.d.x, 0u), vec3<f32>(-175f, arg_3, arg_2.a))), Struct_2(arg_2, func_5(Struct_1(arg_0.e.x, arg_2.b, vec4<bool>(true, false, false, false), var_0.d), arg_0.e.yy, var_0.c.c, arg_0.e.x).c.e, _wgslsmith_sub_vec4_i32(arg_0.c, arg_0.c), firstLeadingBit(var_0.c.d), vec3<f32>(var_0.c.a.a, var_0.c.a.a, arg_2.a)), func_5(arg_2, var_0.c.e.yy, ~arg_0.c, -922f), arg_0).c.c.xz;
    var var_2 = true;
    global1 = arg_0.e.x;
    return arg_0.d.yx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-215f + _wgslsmith_div_f32(-1390f, 1288f)) - _wgslsmith_f_op_f32(round(-278f)));
    var var_1 = ~vec2<u32>(~(~u_input.c), ~(0u | (u_input.b << (4294967295u % 32u))));
    global0 = array<vec3<u32>, 1>();
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1215f) + var_0), ~(~(~vec2<u32>(1u, var_1.x))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), false), all(vec2<bool>(false, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0 - -421f), 716f, 1409f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(exp2(var_0))))), ~_wgslsmith_clamp_vec4_i32(select(~vec4<i32>(2147483647i, -53226i, 2147483647i, -2147483647i), _wgslsmith_clamp_vec4_i32(vec4<i32>(21512i, -4315i, u_input.e, -57383i), vec4<i32>(7658i, u_input.e, -1i, u_input.e), vec4<i32>(u_input.e, 8467i, u_input.d, -46426i)), any(vec4<bool>(true, true, false, false))), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), ~vec4<i32>(u_input.d, 2147483647i, u_input.d, u_input.e)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-19218i, -1i, u_input.d, -2147483647i), vec4<i32>(u_input.d, -1i, 1i, u_input.e) ^ vec4<i32>(u_input.e, -11527i, u_input.e, u_input.e), vec4<i32>(u_input.d, 37990i, 2147483647i, 0i))), vec4<u32>(0u, u_input.b, max(_wgslsmith_div_u32(~u_input.b, u_input.a), u_input.b), var_1.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0 + -202f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), true)), -1485f, var_0) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0), 931f, _wgslsmith_f_op_f32(round(var_0))))));
    var var_3 = max(_wgslsmith_mod_vec3_i32(vec3<i32>(-47999i, var_2.c.x, 2147483647i), _wgslsmith_mod_vec3_i32(-_wgslsmith_sub_vec3_i32(var_2.c.wxw, vec3<i32>(12731i, 12650i, 0i)), var_2.c.wxy)), ~var_2.c.yxy);
    let var_4 = _wgslsmith_mult_u32(var_1.x, u_input.b);
    var_1 = _wgslsmith_mult_vec2_u32(~(~var_2.a.b), var_2.a.b);
    var var_5 = var_2.a.d;
    var_1 = select(_wgslsmith_mult_vec2_u32(firstLeadingBit(var_2.a.b | var_2.a.b) | min(func_1(Struct_2(Struct_1(-702f, var_2.d.zx, var_2.a.c, true), vec3<f32>(var_0, var_0, -580f), vec4<i32>(u_input.d, var_2.c.x, 0i, 2147483647i), vec4<u32>(var_2.d.x, var_4, var_1.x, 0u), vec3<f32>(var_2.a.a, var_2.b.x, var_0)), var_2.d.zw, Struct_1(-1014f, vec2<u32>(var_1.x, 102274u), var_2.a.c, var_2.a.d), -647f), var_2.a.b | vec2<u32>(u_input.b, u_input.a)), ~(~vec2<u32>(var_1.x, 0u))), vec2<u32>(_wgslsmith_mult_u32(0u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_2.d.x, 20612u, 0u, var_1.x), vec4<u32>(4294967295u, 1u, 8814u, 37205u)), var_2.d)), u_input.c), vec2<bool>(!var_2.a.c.x, var_2.a.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(var_2.b.xz * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(func_2(u_input.d, var_2.e.x, Struct_2(var_2.a, var_2.e, var_2.c, var_2.d, var_2.e), var_2.c).c.a.a, var_0)))));
}

