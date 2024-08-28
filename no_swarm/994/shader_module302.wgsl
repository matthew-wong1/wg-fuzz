struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: Struct_1,
    d: f32,
    e: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<u32>) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-423f, _wgslsmith_f_op_f32(f32(-1f) * -613f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-588f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1585f)))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1010f)) + _wgslsmith_div_f32(-253f, -1871f)), _wgslsmith_f_op_f32(-758f + 948f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -618f), _wgslsmith_f_op_f32(-733f * -363f))))));
    var var_1 = _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(~_wgslsmith_mod_u32(arg_0.x, u_input.a), max(1u, reverseBits(43401u))), reverseBits(u_input.b.x), max(max(arg_0.x | 69565u, arg_0.x), 1u), u_input.b.x), firstTrailingBit(~(~vec4<u32>(arg_0.x, 5602u, 4294967295u, 4294967295u)) | vec4<u32>(7723u, abs(u_input.a), ~1u, arg_0.x)));
    return u_input.b.xy;
}

fn func_2(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_3) -> f32 {
    var var_0 = arg_2.b.c;
    let var_1 = -arg_2.c;
    var var_2 = arg_2.b.a | true;
    let var_3 = Struct_3(arg_2.b.a, Struct_2(!(!(!arg_2.a)), vec2<i32>(firstLeadingBit(1i) | var_0.b, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a, -1i, -13387i), vec3<i32>(1i, var_0.b, 0i)), var_0.a)), arg_2.b.c, _wgslsmith_f_op_f32(-arg_2.b.d), _wgslsmith_mod_vec2_u32(func_3(vec4<u32>(u_input.b.x, 18594u, 1u, arg_2.b.e.x)), ~(arg_2.b.e & u_input.b.yx))), _wgslsmith_clamp_vec2_i32(vec2<i32>(13756i, 1i), ~min(arg_2.b.b, vec2<i32>(var_0.b, 28710i)), vec2<i32>(-arg_2.b.c.b, 29550i & var_1.x)) & vec2<i32>(~var_1.x, _wgslsmith_mult_i32(reverseBits(arg_2.c.x), min(-1i, var_0.b))));
    var var_4 = false;
    return _wgslsmith_f_op_f32(sign(-521f));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: u32) -> i32 {
    let var_0 = Struct_4(Struct_2(!arg_0.a, vec2<i32>(~1i, arg_0.b.c.b), Struct_1(~(-1i), -abs(-81060i)), arg_2.x, arg_1.e ^ _wgslsmith_mod_vec2_u32(~vec2<u32>(1u, 32956u), arg_0.b.e)), _wgslsmith_div_vec4_f32(vec4<f32>(1102f, _wgslsmith_f_op_f32(-arg_1.d), 1000f, 213f), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(u_input.b, -888f, Struct_3(false, Struct_2(arg_0.a, arg_1.b, Struct_1(arg_0.b.b.x, arg_0.b.b.x), 1426f, arg_0.b.e), vec2<i32>(-2147483647i, arg_1.b.x)))) * arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), -1758f, _wgslsmith_f_op_f32(f32(-1f) * -951f))), select(!select(!vec3<bool>(false, arg_0.a, arg_1.a), select(vec3<bool>(arg_1.a, arg_1.a, arg_1.a), vec3<bool>(true, arg_1.a, arg_0.b.a), vec3<bool>(arg_1.a, false, arg_1.a)), vec3<bool>(arg_1.a, true, false)), select(select(!vec3<bool>(arg_1.a, arg_1.a, false), select(vec3<bool>(arg_0.b.a, true, arg_0.b.a), vec3<bool>(arg_1.a, arg_0.b.a, true), vec3<bool>(false, false, true)), !vec3<bool>(true, false, arg_0.b.a)), vec3<bool>(true, arg_0.b.a, arg_1.a), !(arg_1.d <= arg_0.b.d)), true));
    var var_1 = arg_0;
    let var_2 = u_input.b << (select(_wgslsmith_mult_vec4_u32(u_input.b << ((u_input.b << (vec4<u32>(134675u, 4294967295u, var_0.a.e.x, 1u) % vec4<u32>(32u))) % vec4<u32>(32u)), u_input.b), u_input.b << (vec4<u32>(func_3(u_input.b).x, _wgslsmith_sub_u32(var_1.b.e.x, arg_0.b.e.x), var_1.b.e.x, arg_0.b.e.x) % vec4<u32>(32u)), vec4<bool>(-1714f == _wgslsmith_f_op_f32(ceil(var_1.b.d)), true, arg_0.a, true)) % vec4<u32>(32u));
    var_1 = arg_0;
    var var_3 = 0i;
    return _wgslsmith_mod_i32(11629i, -_wgslsmith_dot_vec4_i32(select(vec4<i32>(arg_1.b.x, 2147483647i, -47399i, 31036i), vec4<i32>(var_1.c.x, arg_1.c.a, 1i, var_0.a.c.a), vec4<bool>(false, true, false, false)), firstLeadingBit(vec4<i32>(2147483647i, arg_0.c.x, -1i, 32681i)))) ^ (max(~arg_0.c.x, min(arg_1.b.x ^ -1i, arg_0.b.b.x & arg_0.c.x)) | _wgslsmith_sub_i32(firstTrailingBit(max(93904i, 2147483647i)), firstTrailingBit(var_1.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(true, Struct_2(!any(vec2<bool>(false, true)), vec2<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(-1330i, -2147483647i), func_1(Struct_3(false, Struct_2(true, vec2<i32>(-756i, 24932i), Struct_1(9507i, 30762i), 3263f, vec2<u32>(2305u, 33070u)), vec2<i32>(26261i, 8448i)), Struct_2(false, vec2<i32>(-5908i, -30925i), Struct_1(64800i, 12940i), -358f, u_input.b.zy), vec2<f32>(553f, 1126f), 86505u)), ~(~2434i)), Struct_1(~(~(-3090i)), _wgslsmith_add_i32(-1392i, 1i)), _wgslsmith_f_op_f32(select(-1112f, _wgslsmith_f_op_f32(abs(-1478f)), true)), max(min(~vec2<u32>(u_input.a, 4294967295u), u_input.b.ww), ~vec2<u32>(u_input.a, u_input.a))), countOneBits(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, -9901i) >> (u_input.b.yz % vec2<u32>(32u)), vec2<i32>(-11887i, 0i)) | ~vec2<i32>(7545i, -25759i)));
    var var_1 = select(vec4<bool>(var_0.b.a, true, false, var_0.b.a & false), select(select(vec4<bool>(true, any(vec2<bool>(false, var_0.b.a)), all(vec3<bool>(var_0.b.a, true, false)), true), vec4<bool>(var_0.b.a, false, var_0.a, any(vec4<bool>(var_0.b.a, var_0.b.a, var_0.b.a, false))), select(!vec4<bool>(var_0.b.a, var_0.a, var_0.a, true), select(vec4<bool>(var_0.b.a, var_0.b.a, true, false), vec4<bool>(true, var_0.b.a, true, false), vec4<bool>(var_0.b.a, var_0.a, var_0.b.a, var_0.a)), vec4<bool>(var_0.a, var_0.b.a, true, var_0.a))), vec4<bool>(!(var_0.a == true), true, false, any(vec3<bool>(false, true, true))), select(select(!vec4<bool>(var_0.b.a, false, var_0.b.a, var_0.a), vec4<bool>(var_0.a, var_0.b.a, var_0.b.a, false), all(vec3<bool>(var_0.b.a, var_0.b.a, true))), !select(vec4<bool>(var_0.a, true, var_0.b.a, var_0.a), vec4<bool>(false, var_0.b.a, false, false), false), false)), any(!(!select(vec4<bool>(var_0.a, true, false, true), vec4<bool>(var_0.a, var_0.a, var_0.b.a, false), false))));
    var var_2 = var_0.c.x;
    var var_3 = var_0.b;
    var var_4 = var_3.c;
    var_1 = select(select(!vec4<bool>(false, var_0.a, var_0.b.a, var_3.a), !select(!vec4<bool>(true, true, var_3.a, var_1.x), !vec4<bool>(var_0.b.a, false, true, false), select(vec4<bool>(var_3.a, true, true, true), vec4<bool>(var_3.a, var_1.x, var_0.a, var_3.a), vec4<bool>(false, var_1.x, false, var_3.a))), select(!vec4<bool>(var_3.a, var_3.a, true, false), vec4<bool>(select(var_3.a, var_1.x, var_3.a), var_0.a, var_0.b.e.x == var_0.b.e.x, true), any(vec2<bool>(false, true)))), !(!vec4<bool>(!var_3.a, var_3.d == 708f, all(var_1.xy), true)), var_0.b.a);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, _wgslsmith_sub_u32(u_input.b.x, _wgslsmith_div_u32(_wgslsmith_mod_u32(~var_3.e.x, select(42465u, 5838u, false)), var_0.b.e.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(265f, var_3.d, 494f, var_0.b.d) * vec4<f32>(var_0.b.d, -473f, 108f, var_0.b.d)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0.b.d, var_3.d, var_0.b.d)), select(true, true, false))) - vec4<f32>(_wgslsmith_f_op_f32(sign(-685f)), -115f, _wgslsmith_f_op_f32(-549f * -551f), _wgslsmith_div_f32(var_3.d, 285f)))));
}

