struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: u32,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: i32, arg_3: f32) -> f32 {
    var var_0 = _wgslsmith_sub_i32(29214i, abs(-23421i));
    var var_1 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_0.yy, vec2<f32>(arg_0.x, 1000f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_3, 1041f), arg_0.xy)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, 2360f)))), _wgslsmith_f_op_vec3_f32(trunc(arg_0)), Struct_2(_wgslsmith_add_vec2_i32(arg_1.xz, u_input.c.zw), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.zy), vec2<f32>(arg_0.x, 1263f))), _wgslsmith_dot_vec4_u32(firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(1553u, 4294967295u, 31079u, 31711u), vec4<u32>(u_input.b.x, u_input.a.x, u_input.a.x, u_input.b.x))), select(vec4<u32>(91174u, u_input.b.x, u_input.a.x, u_input.b.x), vec4<u32>(4294967295u, 1u, 45966u, 1u) >> (vec4<u32>(69408u, 4705u, u_input.a.x, u_input.b.x) % vec4<u32>(32u)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true))), Struct_1(-577f), arg_0.yz));
    let var_2 = Struct_2(_wgslsmith_div_vec2_i32(~(-_wgslsmith_add_vec2_i32(var_1.c.a, u_input.c.ww)), abs(-_wgslsmith_mult_vec2_i32(vec2<i32>(arg_2, -2147483647i), arg_1.xx))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.c.b) - arg_0.zz), countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(47436u, u_input.a.x), u_input.a.x, ~4294967295u, ~4294967295u), abs(vec4<u32>(var_1.c.c, 0u, var_1.c.c, 42298u)))), var_1.c.d, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(arg_3 * var_1.c.e.x), _wgslsmith_f_op_f32(trunc(1000f))), vec2<f32>(-1721f, -770f))))));
    var var_3 = !select(vec4<bool>(all(vec3<bool>(false, true, true)), all(vec2<bool>(false, false)), all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true))), !any(vec3<bool>(true, true, false))), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), false)), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true)), any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.c.b.x))) + 1000f);
}

fn func_2(arg_0: vec2<bool>) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1175f);
    var var_1 = (0i >> (u_input.b.x % 32u)) > firstTrailingBit(u_input.c.x & u_input.c.x);
    var var_2 = Struct_2(u_input.c.wx, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_div_f32(1210f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<f32>(189f, 191f, -696f), vec3<i32>(u_input.c.x, u_input.c.x, 2147483647i), u_input.c.x, 346f))))), ~(~firstTrailingBit(~u_input.a.x)), Struct_1(-1000f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(ceil(505f)), _wgslsmith_f_op_f32(trunc(-421f)))))));
    var var_3 = _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, var_2.c), ~vec2<u32>(u_input.b.x, 1u & var_2.c));
    var_3 = ~(~min(4294967295u, u_input.b.x));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(var_2.d.a, _wgslsmith_f_op_f32(min(1552f, var_2.b.x)), true)), var_2.e.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.e.x, var_2.d.a)))));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_add_i32(~(i32(-1i) * -u_input.c.x), u_input.c.x) << (24260u % 32u);
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(vec2<bool>(true, true))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1122f, 384f, -175f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-987f, -1690f, -1289f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1140f + 609f), _wgslsmith_f_op_f32(f32(-1f) * -852f))), _wgslsmith_f_op_f32(max(724f, _wgslsmith_f_op_f32(2479f - 508f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -898f))))));
    var var_2 = Struct_2(firstLeadingBit(_wgslsmith_mod_vec2_i32(select(vec2<i32>(var_0, -15664i), u_input.c.ww, vec2<bool>(false, false)) | vec2<i32>(12212i, 1i), _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.c.zw, vec2<i32>(u_input.c.x, u_input.c.x)), u_input.c.ww))), var_1.yz, abs(0u & _wgslsmith_add_u32(~u_input.b.x, 0u)), Struct_1(1148f), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_1.xx - vec2<f32>(var_1.x, -540f)), vec2<f32>(var_1.x, -1014f), vec2<bool>(true, false))) * var_1.zz))));
    var var_3 = 65102u;
    var_2 = Struct_2(-reverseBits(vec2<i32>(-1i, -1i) | countOneBits(u_input.c.xw)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -153f)), u_input.a.x, var_2.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_2.b)))))));
    return var_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = select((all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true))) & true) | any(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true)), true, true);
    let var_2 = u_input.c.x;
    var var_3 = -49042i;
    var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(594f, u_input.c);
}

