struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec2<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: f32;

var<private> global2: bool;

var<private> global3: u32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: i32) -> u32 {
    let var_0 = Struct_4(any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true)) & !any(vec4<bool>(true, true, true, true)), -1009f, ~max(u_input.a.wxw, vec3<u32>(~u_input.a.x, _wgslsmith_clamp_u32(23720u, 1u, u_input.a.x), u_input.a.x)));
    let var_1 = Struct_2(vec2<u32>(u_input.a.x, _wgslsmith_sub_u32(1u, reverseBits(u_input.a.x) << (var_0.c.x % 32u))));
    var var_2 = ~vec4<u32>(~(~(8040u << (var_1.a.x % 32u))), u_input.a.x, 4294967295u, ~u_input.a.x);
    let var_3 = var_1.a.x;
    var var_4 = _wgslsmith_clamp_u32(_wgslsmith_sub_u32(firstTrailingBit(var_3), var_3), _wgslsmith_clamp_u32(~(~84893u) | ~firstTrailingBit(12651u), var_1.a.x, countOneBits(var_0.c.x) ^ 118135u), _wgslsmith_mod_u32(~abs(~var_2.x), reverseBits(firstLeadingBit(_wgslsmith_add_u32(47911u, var_1.a.x)))));
    return _wgslsmith_mod_u32(var_3, ~select(u_input.a.x, u_input.a.x, any(!vec3<bool>(var_0.a, var_0.a, false))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(vec2<u32>(_wgslsmith_sub_u32(~func_3(2147483647i, 0i), ~func_3(0i, 0i)), ~min(_wgslsmith_div_u32(13976u, u_input.a.x), ~1u)), u_input.a.x, 14312i, vec2<bool>(all(vec3<bool>(true, true, true)), true), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(true, false, true))), vec2<bool>(true, true), true));
    global3 = ~1u;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(192f, -2237f, var_0.e.x))))))) * -128f);
    var var_1 = ~u_input.a.wx;
    var_1 = vec2<u32>(u_input.a.x, u_input.a.x);
    return Struct_1(vec2<u32>(firstLeadingBit(~12293u), ~reverseBits(~39078u)), u_input.a.x, 50232i, !select(vec2<bool>(true, all(vec3<bool>(var_0.e.x, var_0.d.x, var_0.e.x))), select(select(var_0.e, vec2<bool>(var_0.d.x, var_0.e.x), var_0.e), !vec2<bool>(false, var_0.d.x), u_input.a.x > var_0.a.x), select(var_0.d, select(vec2<bool>(false, false), var_0.e, false), select(var_0.e, vec2<bool>(var_0.d.x, true), var_0.e))), !var_0.e);
}

fn func_1(arg_0: vec2<i32>) -> vec2<u32> {
    var var_0 = arg_0;
    let var_1 = ~u_input.a;
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -1025f);
    let var_2 = func_2();
    var_0 = vec2<i32>(-21776i, 0i);
    return ~_wgslsmith_clamp_vec2_u32(~u_input.a.xy, var_2.a, ~(~u_input.a.xw));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.zx ^ select(func_1(vec2<i32>(13573i, _wgslsmith_add_i32(2147483647i, 0i))), max(min(~vec2<u32>(u_input.a.x, u_input.a.x), ~u_input.a.wz), countOneBits(vec2<u32>(0u, u_input.a.x))), !(!func_2().e.x));
    var var_1 = ~_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(-30539i, 1i, -1i)), -vec3<i32>(-22443i, 1i, -2147483647i)) ^ 1i;
    let var_2 = any(func_2().e);
    global2 = !(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1063f)) + _wgslsmith_f_op_f32(min(777f, 172f)))) < -467f);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2741f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1113f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(2272f))))));
    var var_3 = select(vec2<bool>(select(true, true, all(vec2<bool>(true, true))), var_2), select(vec2<bool>(var_0.x < _wgslsmith_mult_u32(66702u, 32890u), !any(vec2<bool>(false, false))), vec2<bool>(_wgslsmith_mod_i32(0i, -1i) > select(3061i, -12840i, true), var_2), !var_2), func_2().e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(838f, -631f, 150f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -127f, -1282f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-767f, -253f, -278f) * vec3<f32>(849f, 1796f, -2146f))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-844f, -2363f, -409f))))))))));
}

