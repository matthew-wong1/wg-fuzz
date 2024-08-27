struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> u32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-899f - 1548f) + _wgslsmith_f_op_f32(f32(-1f) * -1074f)) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(459f * -1002f) - _wgslsmith_f_op_f32(ceil(-407f))), 889f)) - _wgslsmith_f_op_f32(select(-1796f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(789f + -772f))), false))), -2027f);
    let var_1 = vec4<f32>(-910f, -1091f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-298f * _wgslsmith_f_op_f32(158f - var_0.x)) + -315f), -426f)));
    var var_2 = select(select(vec3<bool>(!(-2147483647i > u_input.e.x), true != (u_input.b != -1i), any(vec4<bool>(true, true, true, true))), vec3<bool>(true, false, false), !(!any(vec2<bool>(true, true)))), !(!vec3<bool>(39255u <= u_input.c.x, true, true)), false);
    return _wgslsmith_mod_u32(0u, u_input.c.x);
}

fn func_2() -> bool {
    var var_0 = firstTrailingBit(i32(-1i) * -(~1i));
    var_0 = 0i;
    var var_1 = vec4<u32>(func_3(), 0u, u_input.d.x, _wgslsmith_div_u32(func_3(), _wgslsmith_add_u32(1u, _wgslsmith_mod_u32(u_input.d.x, 4294967295u) ^ 25118u)));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1022f, 585f, 157f), vec3<f32>(-310f, -3448f, 2023f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(2301f, -1769f, 837f)))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(123f, 1068f, 878f) - vec3<f32>(-1284f, -236f, 455f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2227f, -1056f, 542f)), vec3<bool>(true, false, true))) + vec3<f32>(_wgslsmith_f_op_f32(-397f - -2297f), _wgslsmith_f_op_f32(sign(123f)), _wgslsmith_f_op_f32(min(-282f, -3078f))))));
    let var_3 = u_input.b;
    return true;
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = !select(!all(vec3<bool>(false, true, true)) | (true | arg_0), arg_0 & !func_2(), arg_0);
    var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1418f * -946f), _wgslsmith_f_op_f32(f32(-1f) * -999f), -1194f)))));
    let var_2 = !select(!(!select(vec2<bool>(true, false), vec2<bool>(false, false), arg_0)), !(!select(vec2<bool>(false, true), vec2<bool>(true, arg_0), vec2<bool>(true, true))), arg_0);
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.x, var_1.x, var_1.x)))))))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 1800f, var_1.x)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -391f, var_1.x) * vec3<f32>(535f, -1396f, 1000f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, var_1.x))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -1000f, 683f))))))));
}

fn func_4(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = 5081i;
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-arg_3.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(2237f, _wgslsmith_f_op_f32(1000f + arg_3.a.x)))), _wgslsmith_f_op_f32(-arg_2.a.x)));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x + -992f)) + arg_3.a.x) - _wgslsmith_f_op_f32(func_1(false).a.x + _wgslsmith_f_op_f32(-494f - -529f))), var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-605f - -637f) - _wgslsmith_f_op_f32(-arg_3.a.x)))), _wgslsmith_div_f32(arg_3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(func_1(arg_0.x).a.x, -1000f)))));
    let var_3 = vec3<bool>(arg_0.x, !all(select(vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(arg_0.x, false, false), arg_0.x)) == arg_0.x, false);
    var var_4 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-func_1(!arg_0.x).a)), arg_3);
    return func_1(!any(vec4<bool>(arg_0.x, false, any(vec3<bool>(arg_0.x, true, false)), arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_div_f32(224f, -303f))))), func_4(select(vec2<bool>(false, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), false), true), vec2<bool>(any(vec3<bool>(true, false, true)), true)), 19669u, func_1((4294967295u & u_input.c.x) < ~u_input.d.x), func_1(any(vec3<bool>(true, true, true)))));
    var_0 = Struct_2(var_0.b, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(step(-224f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), var_0.a.a.x, 100f)));
    var var_1 = firstLeadingBit(-abs(firstLeadingBit(vec4<i32>(13081i, -2147483647i, u_input.e.x, u_input.e.x))) << (u_input.c % vec4<u32>(32u)));
    var_1 = ~_wgslsmith_clamp_vec4_i32(~max(~vec4<i32>(5478i, -6785i, var_1.x, u_input.e.x), vec4<i32>(var_1.x, -2147483647i, u_input.e.x, var_1.x)), vec4<i32>(var_1.x, reverseBits(u_input.e.x), u_input.b, 0i), min(_wgslsmith_sub_vec4_i32(vec4<i32>(2928i, var_1.x, 2147483647i, -6820i), max(vec4<i32>(44140i, 2147483647i, var_1.x, u_input.e.x), vec4<i32>(u_input.e.x, u_input.e.x, 1i, var_1.x))), abs(firstLeadingBit(vec4<i32>(-3876i, var_1.x, 1i, u_input.b)))));
    var var_2 = !(!(_wgslsmith_f_op_f32(var_0.b.a.x - -2002f) >= _wgslsmith_f_op_f32(-var_0.a.a.x))) & true;
    var_1 = vec4<i32>(2147483647i, ~_wgslsmith_add_i32(var_1.x, _wgslsmith_mod_i32(30650i, _wgslsmith_clamp_i32(4059i, var_1.x, -2147483647i))), abs(~(-reverseBits(-2120i))), select(var_1.x, -1i, any(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), false))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_0.a.a.x, -388f, var_0.b.a.x), var_0.a.a.x, 1i & var_1.x);
}

