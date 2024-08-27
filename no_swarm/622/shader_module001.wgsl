struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = Struct_1(~(u_input.c & _wgslsmith_add_u32(firstTrailingBit(7670u), _wgslsmith_mod_u32(u_input.a.x, 4294967295u))));
    let var_1 = var_0;
    let var_2 = any(!vec2<bool>(u_input.b.x > u_input.b.x, true));
    let var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1381f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2057f, -1694f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -752f)))))));
    let var_4 = any(!select(select(select(vec3<bool>(true, true, true), vec3<bool>(var_2, var_2, var_2), var_2), select(vec3<bool>(var_2, var_2, var_2), vec3<bool>(true, var_2, true), false), vec3<bool>(var_2, true, var_2)), vec3<bool>(true, all(vec3<bool>(false, false, var_2)), !var_2), false));
    return firstTrailingBit(_wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(var_1.a, u_input.a.x, var_1.a, 4294967295u)), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(4294967295u, var_0.a), u_input.c), var_1.a | _wgslsmith_add_u32(var_0.a, 4294967295u), ~1u, u_input.a.x)));
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.b;
    let var_1 = ~(vec4<u32>(u_input.c, ~(u_input.a.x ^ 121982u), func_3(), ~u_input.a.x << (_wgslsmith_mod_u32(28715u, 4294967295u) % 32u)) >> ((abs(~vec4<u32>(u_input.c, u_input.c, 15032u, u_input.c)) | _wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(26302u, 6567u, u_input.a.x, 3634u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 0u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.c, u_input.a.x, 43107u, 32192u), vec4<u32>(u_input.a.x, u_input.c, u_input.c, u_input.a.x)))) % vec4<u32>(32u)));
    var var_2 = Struct_1(_wgslsmith_clamp_u32(min(u_input.c, ~var_1.x) << (36295u % 32u), _wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_1.x), u_input.a), u_input.a.x ^ ~var_1.x), _wgslsmith_add_u32(4294967295u, u_input.c)));
    let var_3 = firstLeadingBit(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_div_i32(0i, 6094i), var_0.x), select(~u_input.b.xy, vec2<i32>(var_0.x, -1i) >> (var_1.zx % vec2<u32>(32u)), vec2<bool>(true, false)))) >> (var_1.xw % vec2<u32>(32u));
    var_2 = Struct_1(_wgslsmith_mult_u32(0u & _wgslsmith_dot_vec3_u32(~var_1.zxy, var_1.zyz | var_1.xxw), func_3()));
    return Struct_1(4294967295u);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = select(!(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), false)), !(!select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)))), true);
    let var_1 = i32(-1i) * -1i;
    let var_2 = false;
    var_0 = select(vec2<bool>(true, var_0.x), !vec2<bool>(var_2 || var_2, false), !var_0.x);
    var_0 = vec2<bool>(var_2, any(vec4<bool>(var_2, all(select(vec3<bool>(true, var_2, var_0.x), vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, var_2, var_2))), true, select(any(vec4<bool>(true, false, var_2, var_0.x)), any(vec4<bool>(var_2, true, var_2, false)), select(var_0.x, var_0.x, var_0.x)))));
    return Struct_1(firstLeadingBit((arg_1.x | u_input.c) << (0u % 32u)) >> (1u % 32u));
}

fn func_1(arg_0: bool, arg_1: vec2<bool>) -> bool {
    var var_0 = any(select(vec4<bool>(arg_1.x || arg_1.x, arg_0, arg_1.x, all(!arg_1)), select(select(!vec4<bool>(true, arg_0, true, true), select(vec4<bool>(true, true, arg_1.x, false), vec4<bool>(true, arg_0, arg_1.x, true), vec4<bool>(arg_1.x, arg_0, false, true)), select(vec4<bool>(arg_1.x, arg_0, true, arg_1.x), vec4<bool>(false, true, false, arg_1.x), true)), select(select(vec4<bool>(true, arg_0, false, false), vec4<bool>(true, arg_1.x, arg_0, true), arg_1.x), vec4<bool>(true, arg_1.x, true, arg_1.x), !vec4<bool>(arg_0, arg_1.x, arg_0, arg_1.x)), arg_1.x), arg_1.x));
    let var_1 = func_4(func_2(), vec2<u32>(func_2().a, 0u));
    let var_2 = !arg_1.x;
    var_0 = !arg_1.x;
    var_0 = _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.c ^ 49720u), var_1.a) >= ~(~_wgslsmith_mod_u32(u_input.c, _wgslsmith_div_u32(4294967295u, var_1.a)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, true || any(vec3<bool>(true, true, any(vec4<bool>(false, true, true, false)))), all(vec3<bool>(true, any(vec3<bool>(false, true, false)), false)), false);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -565f);
    var_0 = select(!(!(!vec4<bool>(false, true, var_0.x, true))), select(vec4<bool>(~u_input.b.x >= u_input.b.x, any(vec4<bool>(false, var_0.x, true, var_0.x)) | !var_0.x, var_0.x, any(vec4<bool>(var_0.x, true, false, var_0.x))), select(!select(vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(var_0.x, true, false, true), false), vec4<bool>(var_0.x, func_1(var_0.x, var_0.zx), var_0.x, true), select(select(vec4<bool>(true, true, var_0.x, true), vec4<bool>(var_0.x, false, var_0.x, var_0.x), false), !vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))), !select(select(vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(true, var_0.x, true, false), vec4<bool>(false, var_0.x, var_0.x, var_0.x)), !vec4<bool>(true, var_0.x, false, var_0.x), var_0.x)), !(u_input.a.x > ~_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x)));
    let var_2 = firstTrailingBit(~(~countOneBits(u_input.a ^ u_input.a)));
    var var_3 = (u_input.a.x >> (1u % 32u)) | (u_input.c << (49810u % 32u));
    var var_4 = Struct_1(~var_2.x);
    let var_5 = func_2();
    var var_6 = var_5;
    let var_7 = Struct_1(~var_4.a);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(var_6.a >> (4294967295u % 32u), 3832u, 4294967295u, ~(~1720u)), ~vec3<u32>(~0u, var_7.a, var_5.a), _wgslsmith_sub_u32(abs(func_4(var_5, u_input.a).a), ~_wgslsmith_div_u32(~var_2.x, ~1u)));
}

