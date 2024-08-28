struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec4<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    let var_0 = vec4<f32>(506f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -759f)))), 1682f), arg_1.b.b, arg_2.b.b);
    let var_1 = arg_1;
    var var_2 = !(!(!vec4<bool>(var_1.b.b >= 610f, arg_0, true, arg_0)));
    var_2 = select(vec4<bool>(arg_2.b.a > ~firstLeadingBit(1u), any(select(var_2.zwx, var_2.zyx, var_2.zyx)), !select(true, false, var_2.x) && false, false), vec4<bool>(all(!(!var_2.yy)), all(select(vec2<bool>(arg_0, var_2.x), select(var_2.zz, vec2<bool>(false, false), false), false)), true, true), true);
    let var_3 = arg_1.b;
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b))), _wgslsmith_f_op_f32(-var_1.b.b), false));
}

fn func_2() -> i32 {
    let var_0 = -(~abs(abs(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)) << (countOneBits(vec3<u32>(u_input.b, u_input.b, u_input.d.x)) % vec3<u32>(32u))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(trunc(-546f)), -964f, -316f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -261f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(false, Struct_2(u_input.a.x, Struct_1(4294967295u, -814f)), Struct_2(-33742i, Struct_1(4294967295u, 498f)), Struct_1(u_input.d.x, -786f)))))));
    var var_2 = Struct_2(_wgslsmith_mult_i32(_wgslsmith_mult_i32(var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(28493i, 8745i, -41162i, -49517i), vec4<i32>(var_0.x, u_input.a.x, u_input.e.x, u_input.a.x) << (vec4<u32>(4294967295u, 4294967295u, 4294967295u, u_input.d.x) % vec4<u32>(32u)))), abs(_wgslsmith_mult_i32(_wgslsmith_mult_i32(1i, var_0.x), 2147483647i))), Struct_1(1u | u_input.c.x, var_1.x));
    var var_3 = select(select(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true)), select(select(vec3<bool>(true, true, false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true)), select(true, var_2.b.a <= u_input.c.x, true)), vec3<bool>(false, true, true)), vec3<bool>(!(!all(vec2<bool>(false, true))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false)))), any(vec3<bool>(true, all(vec3<bool>(false, false, false)), true))), true);
    var var_4 = var_2.a;
    return _wgslsmith_dot_vec2_i32(var_0.xy, firstTrailingBit(firstLeadingBit(select(var_0.xy, vec2<i32>(0i, 2459i), vec2<bool>(var_3.x, true))))) ^ reverseBits(~(~var_2.a));
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.e.x, 0i) | vec2<i32>(u_input.e.x >> (81786u % 32u), 8125i), max(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, u_input.a.x), u_input.e, ~vec2<i32>(u_input.a.x, u_input.a.x)), _wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.e.x, -8453i), -u_input.e))), -func_2());
    let var_1 = abs(u_input.b);
    let var_2 = any(vec4<bool>(true, select(_wgslsmith_div_f32(-414f, arg_0) <= 307f, false, any(vec3<bool>(false, false, true)) | true), any(vec2<bool>(true, true)), false));
    let var_3 = (_wgslsmith_dot_vec3_u32(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(9441u, var_1, var_1), vec3<u32>(u_input.c.x, 0u, 63134u))), ~vec3<u32>(u_input.b, var_1, u_input.b)) >> (_wgslsmith_clamp_u32(_wgslsmith_mod_u32(1u, ~u_input.d.x), u_input.c.x, ~39370u) % 32u)) ^ _wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(select(vec3<u32>(29162u, 1u, var_1), vec3<u32>(13169u, u_input.c.x, var_1), var_2), abs(vec3<u32>(var_1, 17031u, 4294967295u))), (~var_1 << (~0u % 32u)) >> (4294967295u % 32u));
    return Struct_1(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(1u, 6254u)) << (u_input.d % vec2<u32>(32u)), vec2<u32>(_wgslsmith_div_u32(firstTrailingBit(var_1), ~u_input.b), _wgslsmith_add_u32(~var_1, var_3))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(step(-665f, arg_0))) * arg_0), 702f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~(~_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.d.x, 69433u), u_input.c.x)), 780f);
    var var_1 = min(~var_0.a, u_input.c.x);
    var_1 = u_input.b;
    var var_2 = var_0;
    var_2 = func_1(_wgslsmith_f_op_f32(abs(var_0.b)));
    var_2 = Struct_1(_wgslsmith_mod_u32(0u, var_0.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(any(vec2<bool>(true, false)), Struct_2(24231i, var_0), Struct_2(-1i, Struct_1(0u, 1302f)), func_1(var_0.b))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-535f + var_2.b) * _wgslsmith_f_op_f32(152f + -1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1505f + _wgslsmith_f_op_f32(var_0.b + var_0.b)), 486f))));
    var_2 = func_1(var_0.b);
    var var_3 = !(!(!(_wgslsmith_f_op_f32(-var_0.b) > _wgslsmith_f_op_f32(f32(-1f) * -269f))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.b), var_0.b, firstTrailingBit(_wgslsmith_add_i32(60855i, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x))) & 1i, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b, _wgslsmith_f_op_f32(select(868f, var_0.b, false)), _wgslsmith_f_op_f32(748f - var_2.b), _wgslsmith_f_op_f32(var_2.b + -282f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, var_2.b, var_0.b, -453f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, var_2.b, -1474f, var_2.b) + vec4<f32>(-658f, var_0.b, 1000f, var_2.b))))))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - var_2.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, -1187f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.b, _wgslsmith_f_op_f32(-1370f * var_0.b), true)))));
}

