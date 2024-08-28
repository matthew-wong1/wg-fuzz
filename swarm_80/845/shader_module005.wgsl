struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<f32>,
    d: vec3<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-668f, 162f), _wgslsmith_f_op_f32(1543f * -775f)))), -1311f, _wgslsmith_f_op_f32(abs(988f)), 518f) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-879f, -227f, -1246f, 296f) + vec4<f32>(-1449f, 152f, -902f, -872f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(195f, -2242f, -2251f, 391f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1266f, 1585f, -455f, 752f) + vec4<f32>(1000f, -235f, 148f, -1225f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-198f, -625f, 272f, 1816f), vec4<f32>(-206f, 672f, -156f, -1000f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1271f, -294f, -1000f, -699f), vec4<f32>(-1840f, -130f, 489f, 518f))))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-283f, -665f, 1591f, -1907f))))));
    let var_1 = u_input.c.wxx;
    let var_2 = ~(~vec4<u32>(~_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.c.x, u_input.b.x, u_input.c.x)), 0u ^ var_1.x, ~1u, 4294967295u));
    let var_3 = Struct_1(firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, abs(var_1.x), var_1.x), ~(var_1 >> (vec3<u32>(u_input.c.x, var_1.x, 39365u) % vec3<u32>(32u))))), 2206f);
    let var_4 = -_wgslsmith_div_i32(-55480i, -u_input.d.x);
    return -(var_4 ^ var_4) ^ (~_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, var_4, 11791i, u_input.a), vec4<i32>(-14632i, 53761i, u_input.d.x, var_4)), firstLeadingBit(vec4<i32>(2974i, 46828i, u_input.a, -2147483647i))) | reverseBits(_wgslsmith_mod_i32(0i, _wgslsmith_sub_i32(var_4, 3507i))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: vec3<f32>) -> bool {
    var var_0 = vec2<bool>(_wgslsmith_f_op_f32(354f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(554f, -153f, true)))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(364f - _wgslsmith_f_op_f32(arg_2.x + arg_2.x)) * arg_0.x), !(true || all(vec4<bool>(true, true, true, true))));
    var var_1 = ~abs(_wgslsmith_mod_vec2_u32(u_input.b.yx, vec2<u32>(1u ^ u_input.c.x, u_input.b.x)));
    var var_2 = Struct_2(u_input.a, _wgslsmith_mult_i32(u_input.d.x << ((countOneBits(4294967295u) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(24343u, 35587u), u_input.c.wx) % 32u)) % 32u), 0i), -1000f, Struct_1(~select(vec3<u32>(var_1.x, 64002u, u_input.c.x) | u_input.b, u_input.b, false & var_0.x), _wgslsmith_div_f32(arg_1.x, arg_0.x)), Struct_1(vec3<u32>(57974u, reverseBits(var_1.x >> (var_1.x % 32u)), var_1.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - arg_1.x))))));
    let var_3 = Struct_2(2147483647i, -21202i, 460f, var_2.d, var_2.d);
    let var_4 = select(!select(vec4<bool>(var_0.x, !var_0.x, all(vec2<bool>(var_0.x, var_0.x)), true), select(!vec4<bool>(true, var_0.x, true, false), !vec4<bool>(false, var_0.x, var_0.x, true), select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, false, var_0.x, true), var_0.x)), !select(vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(true, false, true, true), true)), select(vec4<bool>(!(!var_0.x), _wgslsmith_f_op_f32(round(arg_2.x)) < -620f, var_3.a != (var_2.a & var_2.a), all(!vec2<bool>(var_0.x, var_0.x))), vec4<bool>(var_0.x, var_0.x, !var_0.x, true), !all(!vec2<bool>(var_0.x, var_0.x))), !(!select(vec4<bool>(var_0.x, true, var_0.x, false), select(vec4<bool>(var_0.x, true, false, false), vec4<bool>(var_0.x, true, var_0.x, false), var_0.x), !vec4<bool>(true, var_0.x, false, true))));
    return !var_0.x;
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> bool {
    var var_0 = vec4<bool>(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-2092f, arg_0.b)), _wgslsmith_f_op_f32(734f * arg_0.b), arg_0.b, _wgslsmith_f_op_f32(-arg_0.b))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, 1455f, -194f, arg_0.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.b, arg_0.b, -967f, arg_0.b), vec4<f32>(arg_0.b, 411f, -214f, 1110f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.b, 815f, -1731f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(545f, arg_0.b, arg_0.b)))))), !arg_1, false, !(!(_wgslsmith_mod_u32(37027u, u_input.b.x) <= 0u)));
    let var_1 = -73471i;
    return all(select(!vec3<bool>(true, true, var_0.x), select(vec3<bool>(arg_1, arg_1, arg_1), select(var_0.wxz, vec3<bool>(true, var_0.x, false), vec3<bool>(var_0.x, false, var_0.x)), !vec3<bool>(var_0.x, var_0.x, var_0.x)), select(vec3<bool>(false, true, arg_1), select(vec3<bool>(var_0.x, arg_1, true), var_0.xwx, false), vec3<bool>(var_0.x, false, var_0.x)))) & arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.x;
    var_0 = 61091u;
    let var_1 = vec3<i32>(i32(-1i) * -3039i, u_input.a, u_input.d.x);
    var var_2 = vec2<bool>(!any(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), !any(vec2<bool>(true, true)));
    var var_3 = func_1();
    let var_4 = u_input.b.x;
    let var_5 = !select(vec3<bool>(true, all(select(vec4<bool>(false, var_2.x, false, var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, false), vec4<bool>(var_2.x, false, var_2.x, var_2.x))), all(select(vec3<bool>(false, true, true), vec3<bool>(var_2.x, var_2.x, var_2.x), var_2.x))), !(!(!vec3<bool>(false, false, var_2.x))), func_2(Struct_1(vec3<u32>(u_input.c.x, u_input.c.x, var_4), -1211f), all(select(vec3<bool>(var_2.x, var_2.x, true), vec3<bool>(true, var_2.x, var_2.x), vec3<bool>(var_2.x, false, var_2.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-2147483647i, firstTrailingBit(abs(0i))), _wgslsmith_clamp_u32(1u, 4294967295u, ~(~u_input.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-548f, -109f)) * -511f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1316f, -179f, var_5.x)))), 210f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-389f * _wgslsmith_f_op_f32(sign(-552f))), -1000f, _wgslsmith_f_op_f32(sign(-1000f)))), select(vec2<i32>(reverseBits(abs(2147483647i)), u_input.a), u_input.d >> (vec2<u32>(~24278u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, var_4, 4294967295u), u_input.c)) % vec2<u32>(32u)), vec2<bool>(!var_5.x, !var_2.x)));
}

