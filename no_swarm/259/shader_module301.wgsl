struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec2<u32>,
    d: vec3<u32>,
    e: f32,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1533f;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = abs(4294967295u);
    let var_1 = 0u;
    var_0 = ~select(firstTrailingBit(var_1), _wgslsmith_div_u32(1u, min(firstLeadingBit(8571u), var_1)), false);
    var var_2 = Struct_1(arg_0);
    var var_3 = var_1;
    return Struct_1(vec2<i32>(_wgslsmith_sub_i32(-(~var_2.a.x), arg_0.x), ~(-_wgslsmith_div_i32(var_2.a.x, 0i))));
}

fn func_3(arg_0: Struct_2) -> vec4<f32> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(477f)));
    let var_0 = Struct_3(!arg_0.a);
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1476f, _wgslsmith_f_op_f32(f32(-1f) * -418f), -1133f, _wgslsmith_f_op_f32(1150f * 1000f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-605f * 912f), -1920f, -778f, -1213f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, -436f, -1000f, -157f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(581f, -501f, 2099f, 547f), vec4<f32>(396f, 752f, 1519f, 195f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(151f, 1169f, -748f, -1536f)) - vec4<f32>(-1727f, 1128f, -1819f, 163f)))), var_0.a.x));
}

fn func_1(arg_0: Struct_5, arg_1: vec4<u32>, arg_2: f32) -> f32 {
    let var_0 = func_2(arg_0.a.a.yy, arg_0.a.b, vec3<i32>(-arg_0.a.a.x, u_input.c.x, u_input.c.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(func_3(arg_0.a.b));
    var var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(-578f, var_1.x)), 541f)) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.xy)))))));
    let var_3 = true;
    let var_4 = (vec2<u32>(firstTrailingBit(arg_0.a.d.x), _wgslsmith_mod_u32(~1u, arg_1.x)) << (arg_0.a.c % vec2<u32>(32u))) | firstTrailingBit(select(arg_1.ww, abs(_wgslsmith_mult_vec2_u32(arg_1.zx, vec2<u32>(4294967295u, 4294967295u))), arg_0.a.b.a.yy));
    return _wgslsmith_f_op_vec4_f32(func_3(Struct_2(select(!arg_0.a.b.a, vec4<bool>(any(vec2<bool>(arg_0.a.b.a.x, false)), true, true, any(arg_0.a.b.a)), select(arg_0.a.b.a, vec4<bool>(arg_0.a.b.a.x, arg_0.a.b.a.x, true, true), !vec4<bool>(true, false, arg_0.a.b.a.x, arg_0.a.b.a.x)))))).x;
}

fn func_4(arg_0: vec3<f32>) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * -992f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-515f + 1368f) - 1525f)))));
    let var_1 = Struct_5(Struct_4(_wgslsmith_sub_vec3_i32(u_input.c.wyx, select(_wgslsmith_sub_vec3_i32(u_input.c.yww, u_input.c.wwy), u_input.c.wyy, true)), Struct_2(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), true), select(false, false, true))), min(vec2<u32>(1u, _wgslsmith_mult_u32(4680u, 15546u)), vec2<u32>(14726u, abs(41306u))), vec3<u32>(1u, 1u, 1u), _wgslsmith_f_op_f32(-var_0.x)));
    let var_2 = Struct_3(select(vec4<bool>(var_1.a.b.a.x, any(vec2<bool>(var_1.a.b.a.x, var_1.a.b.a.x)), true || var_1.a.b.a.x, var_1.a.b.a.x), vec4<bool>(var_1.a.b.a.x | var_1.a.b.a.x, true, var_1.a.b.a.x, var_1.a.b.a.x), false));
    var var_3 = func_2(~(~(~var_1.a.a.yz) >> (select(~vec2<u32>(var_1.a.c.x, 1u), select(var_1.a.d.zx, vec2<u32>(var_1.a.c.x, var_1.a.c.x), var_2.a.x), false) % vec2<u32>(32u))), Struct_2(select(select(var_2.a, !vec4<bool>(true, false, var_1.a.b.a.x, var_1.a.b.a.x), select(vec4<bool>(true, true, true, var_1.a.b.a.x), vec4<bool>(false, false, var_1.a.b.a.x, var_2.a.x), vec4<bool>(var_1.a.b.a.x, var_2.a.x, false, true))), var_1.a.b.a, var_1.a.b.a.x)), firstLeadingBit(~var_1.a.a >> (~min(vec3<u32>(var_1.a.c.x, 55979u, 16805u), var_1.a.d) % vec3<u32>(32u))));
    global0 = var_1.a.e;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(sign(arg_0.x))), _wgslsmith_f_op_f32(trunc(-338f)), var_0.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_0, _wgslsmith_div_vec3_f32(vec3<f32>(var_1.a.e, var_0.x, 219f), arg_0)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0 * vec3<f32>(1000f, 663f, var_1.a.e)) - arg_0))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.a.e, var_0.x, var_2.a.x)) * arg_0.x) * arg_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(116f)) * var_0.x), -1377f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1230f + var_1.a.e) + -1249f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(402f, -481f, 1000f), vec3<f32>(-352f, -1209f, -544f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(346f, -1155f, -615f))))) + vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(165f)))), _wgslsmith_f_op_f32(-527f * _wgslsmith_f_op_f32(round(-1282f))), _wgslsmith_f_op_f32(func_1(Struct_5(Struct_4(u_input.c.yxx, Struct_2(vec4<bool>(true, false, false, false)), vec2<u32>(1u, 24752u), vec3<u32>(4294967295u, 4294967295u, 42500u), 1000f)), countOneBits(vec4<u32>(31947u, 0u, 1u, 1u)), -161f))))));
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -175f) + _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(floor(var_0.x))))), _wgslsmith_f_op_f32(func_1(Struct_5(Struct_4(_wgslsmith_clamp_vec3_i32(u_input.c.ywy, vec3<i32>(u_input.c.x, u_input.c.x, -47874i), vec3<i32>(-1i, -2147483647i, u_input.c.x)), Struct_2(vec4<bool>(false, true, false, true)), vec2<u32>(1u, 1u), vec3<u32>(1u, 1u, 1u), _wgslsmith_f_op_f32(abs(1837f)))), vec4<u32>(_wgslsmith_sub_u32(firstTrailingBit(1u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 410u, 12063u), vec3<u32>(46726u, 1u, 9159u))), _wgslsmith_clamp_u32(1u, ~11360u, 48967u), select(abs(4294967295u), ~0u, true), ~4294967295u), var_0.x)), true));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-885f, var_0.x)), _wgslsmith_f_op_f32(-var_0.x)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, var_0.x)) + var_0.x));
    let var_1 = u_input.a;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - 700f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -241f)))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(-290f - var_0.x)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_0.x) + _wgslsmith_div_f32(var_0.x, var_0.x)))));
    global0 = var_0.x;
    let var_2 = Struct_5(Struct_4(vec3<i32>(-2147483647i, 1i, -6247i >> (1u % 32u)), Struct_2(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), true)), vec2<u32>(1u, 1u), _wgslsmith_add_vec3_u32(select(~vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(4294967295u, 0u, 1u), select(true, true, false)), min(min(vec3<u32>(4294967295u, 78690u, 22676u), vec3<u32>(10397u, 4294967295u, 4294967295u)), vec3<u32>(0u, 1u, 60668u))), 257f));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~var_2.a.d, ~var_2.a.d), 0u, ~(~0u)));
}

