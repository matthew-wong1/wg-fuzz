struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: i32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec3<i32>,
    c: Struct_2,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1() -> f32 {
    var var_0 = max(u_input.b.x, 0u);
    return _wgslsmith_f_op_f32(-568f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1275f)) * _wgslsmith_f_op_f32(sign(103f))));
}

fn func_3(arg_0: bool) -> vec3<i32> {
    let var_0 = vec3<f32>(412f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1218f, _wgslsmith_f_op_f32(abs(-1614f))) - _wgslsmith_f_op_f32(func_1()))));
    let var_1 = select(_wgslsmith_add_vec3_u32(vec3<u32>(~1u, 4294967295u, u_input.c), ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 54660u, u_input.c), vec3<u32>(4294967295u, u_input.b.x, 28701u))), ~(vec3<u32>(6767u, 4294967295u, 22851u) >> (vec3<u32>(4294967295u, u_input.b.x, u_input.c) % vec3<u32>(32u))) & vec3<u32>(_wgslsmith_div_u32(u_input.b.x, 61782u), 33104u, ~u_input.b.x), true) << (max(vec3<u32>(~(~u_input.b.x), 4294967295u, ~u_input.a.x), vec3<u32>(reverseBits(13659u >> (u_input.a.x % 32u)), abs(u_input.a.x), ~(u_input.a.x | u_input.c))) % vec3<u32>(32u));
    var var_2 = Struct_3(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(-_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d.x, u_input.d.x), vec2<i32>(u_input.d.x, 19822i), vec2<i32>(u_input.d.x, -16209i)), vec2<i32>(u_input.d.x, -u_input.d.x)), ~select(u_input.d, ~u_input.d, any(vec4<bool>(true, false, arg_0, arg_0)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -913f))), var_0.x), Struct_2(false, max(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 9928u, 26460u), ~vec3<u32>(4294967295u, u_input.b.x, 4294967295u)), ~abs(var_1)), 0i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_0.xz)))));
    var var_3 = Struct_5(any(!vec4<bool>(true, var_2.c.a, var_2.c.d.x <= 1592f, false)));
    let var_4 = arg_0;
    return firstTrailingBit(~firstLeadingBit(select(_wgslsmith_div_vec3_i32(vec3<i32>(21352i, var_2.a, 0i), vec3<i32>(2147483647i, 32i, -11707i)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.d.x, var_2.a, u_input.d.x), vec3<i32>(-2147483647i, u_input.d.x, 2147483647i)), vec3<bool>(false, true, false))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_5, arg_2: vec4<i32>, arg_3: Struct_4) -> i32 {
    let var_0 = Struct_4(!(!any(vec4<bool>(arg_1.a, arg_3.a, false, arg_1.a))), arg_3.b, arg_3.c);
    var var_1 = Struct_3(_wgslsmith_dot_vec3_i32(var_0.b, arg_3.b), _wgslsmith_f_op_vec2_f32(select(var_0.c.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.c.d.x, arg_3.c.d.x))), !(!vec2<bool>(arg_3.c.a, false)))), var_0.c);
    var_1 = Struct_3(abs(-1i), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())))), var_0.c.d.x), arg_3.c);
    var var_2 = arg_1;
    let var_3 = Struct_1(vec2<f32>(1f, 1f), countOneBits(vec3<i32>(_wgslsmith_dot_vec4_i32(~arg_2, vec4<i32>(arg_3.b.x, var_0.b.x, var_1.a, var_0.b.x)), -4670i, ~2147483647i)));
    return var_1.a;
}

fn func_2(arg_0: bool) -> f32 {
    var var_0 = Struct_5(false);
    var var_1 = true;
    var_0 = Struct_5(func_4(~(~u_input.a), Struct_5(u_input.c >= u_input.a.x), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, -12665i), u_input.d), 1i, abs(2147483647i), u_input.d.x), Struct_4(var_0.a, func_3(arg_0), Struct_2(arg_0, vec3<u32>(u_input.a.x, u_input.b.x, 3644u), u_input.d.x, vec2<f32>(-823f, 300f)))) == (i32(-1i) * -u_input.d.x));
    let var_2 = Struct_5(false);
    let var_3 = u_input.c;
    return 1573f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(-565f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))) - _wgslsmith_f_op_f32(func_2(true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-522f - 1930f) <= _wgslsmith_f_op_f32(func_1()))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(997f)), -145f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -838f)));
    var var_1 = _wgslsmith_f_op_f32(-var_0.x);
    let var_2 = u_input.d.x;
    let var_3 = Struct_4(!all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true))) & all(vec3<bool>(true, true, true)), _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, var_2, -1i) ^ vec3<i32>(1i, u_input.d.x, var_2), _wgslsmith_sub_vec3_i32(vec3<i32>(var_2, var_2, 39499i), vec3<i32>(1i, -33171i, 225i))), (vec3<i32>(var_2, -2147483647i, var_2) ^ vec3<i32>(33596i, var_2, -12266i)) | vec3<i32>(-1i, u_input.d.x, -1i)), ~(~(~vec3<i32>(15447i, var_2, u_input.d.x))), vec3<i32>(~(i32(-1i) * -8277i), abs(-20831i), reverseBits(var_2))), Struct_2(any(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), select(~(~vec3<u32>(u_input.c, 1u, 25522u)), ~vec3<u32>(4294967295u, u_input.a.x, 4294967295u), true), _wgslsmith_dot_vec2_i32(u_input.d, reverseBits(u_input.d)), var_0.yy));
    var var_4 = i32(-1i) * -func_4(select(u_input.a, select(var_3.c.b.yy, vec2<u32>(1u, var_3.c.b.x), false), !var_3.c.a), Struct_5(var_2 == u_input.d.x), vec4<i32>(u_input.d.x, firstLeadingBit(u_input.d.x), i32(-1i) * -1i, -13569i), Struct_4(!var_3.c.a, min(vec3<i32>(29391i, var_3.c.c, 27091i), var_3.b), var_3.c));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_3.c.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2373f + _wgslsmith_f_op_f32(-1388f + var_0.x)) + _wgslsmith_f_op_f32(-var_3.c.d.x)), false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(!var_3.a)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(451f, -365f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_3.c.d.x, var_3.c.d.x))))), _wgslsmith_f_op_f32(f32(-1f) * -1565f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.c.d.x) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1304f * var_0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec2_i32(u_input.d, vec2<i32>(-1i, _wgslsmith_clamp_i32(43677i, var_2, var_2))));
}

