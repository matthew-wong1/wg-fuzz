struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec2<bool>) -> f32 {
    let var_0 = ~vec2<i32>(_wgslsmith_div_i32(u_input.a, u_input.d.x), -46744i);
    let var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(select(1000f, arg_1.x, arg_2.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(262f, -211f))))));
    let var_3 = arg_1.x;
    var var_4 = u_input.b.xy;
    return _wgslsmith_f_op_f32(-833f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + -1004f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3)) + -1000f)));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_1(false, vec3<f32>(289f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(u_input.a, vec2<bool>(false, false)), _wgslsmith_div_vec2_f32(arg_0.yx, arg_0.yx), vec2<bool>(true, true)))), arg_0.x));
    var_0 = Struct_1(any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, var_0.a, true, true), vec4<bool>(var_0.a, false, false, var_0.a)), !(!vec4<bool>(var_0.a, var_0.a, false, false)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(var_0.b)))));
    var_0 = Struct_1(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b)));
    let var_1 = !(!select(!vec2<bool>(var_0.a, true), !(!vec2<bool>(var_0.a, var_0.a)), false));
    let var_2 = _wgslsmith_clamp_vec3_i32(max(~vec3<i32>(-31435i, 27817i, u_input.d.x), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, 35852i, u_input.a) ^ u_input.d.ywy, vec3<i32>(-26274i, u_input.d.x, -18221i))) ^ _wgslsmith_sub_vec3_i32(~firstLeadingBit(vec3<i32>(u_input.a, -2147483647i, -2147483647i)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, u_input.d.x, u_input.c), u_input.d.zxx ^ u_input.d.yxx)), vec3<i32>(_wgslsmith_mod_i32(u_input.d.x, 1i), _wgslsmith_mult_i32(~(-u_input.a), u_input.d.x), u_input.c ^ u_input.c), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(u_input.d.zyy, vec3<i32>(_wgslsmith_mult_i32(u_input.a, -1i), _wgslsmith_sub_i32(u_input.d.x, u_input.c), u_input.d.x << (49291u % 32u))), vec3<i32>((0i ^ u_input.c) ^ -26148i, abs(u_input.c), u_input.c)));
    return Struct_1(true, var_0.b);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: f32, arg_3: f32) -> f32 {
    var var_0 = Struct_2(reverseBits(_wgslsmith_add_i32(_wgslsmith_mult_i32(-16826i, _wgslsmith_sub_i32(0i, 21054i)), arg_0.x)), vec2<bool>(true, arg_1.a));
    var_0 = Struct_2(select(_wgslsmith_dot_vec4_i32(~abs(u_input.d), vec4<i32>(0i, ~2147483647i, 7484i, firstLeadingBit(-6219i))), _wgslsmith_dot_vec4_i32(reverseBits(-vec4<i32>(var_0.a, 2147483647i, 19731i, -18857i)), -u_input.d | reverseBits(vec4<i32>(-89i, 1i, u_input.c, arg_0.x))), true), !var_0.b);
    var_0 = Struct_2(arg_0.x, vec2<bool>(!any(vec4<bool>(true, true, true, true)), (-1055f < _wgslsmith_f_op_f32(-arg_2)) && false));
    var var_1 = var_0.b.x;
    var var_2 = _wgslsmith_f_op_f32(-arg_3);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 * 1926f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = false;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-263f))) * _wgslsmith_f_op_f32(func_3(select(~u_input.d.yy, _wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, -77704i), vec2<i32>(u_input.a, u_input.a)), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false))), func_1(vec3<f32>(889f, -170f, -661f), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), vec2<u32>(u_input.b.x, u_input.b.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(1087f)), _wgslsmith_f_op_f32(-1629f - 518f), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1217f - 345f))))) >= _wgslsmith_f_op_f32(round(-132f));
    var var_1 = vec2<i32>(-_wgslsmith_div_i32(max(-12470i, -2147483647i) >> (abs(0u) % 32u), u_input.c), abs(30772i));
    var var_2 = countOneBits(reverseBits(~u_input.b.zy)) << (select(select(_wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(u_input.b.x, u_input.b.x)), ~vec2<u32>(u_input.b.x, 4294967295u)), abs(u_input.b.yw), all(vec2<bool>(true, true)) && true), _wgslsmith_div_vec2_u32(u_input.b.ww, vec2<u32>(0u, _wgslsmith_mult_u32(u_input.b.x, u_input.b.x))), !any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)))) % vec2<u32>(32u));
    var_0 = _wgslsmith_div_u32(u_input.b.x, 4294967295u) > ~var_2.x;
    var_2 = vec2<u32>(var_2.x, var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -702f))));
}

