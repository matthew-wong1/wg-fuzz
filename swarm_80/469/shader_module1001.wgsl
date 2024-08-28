struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(26149u, 55410u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: Struct_3) -> vec2<u32> {
    var var_0 = Struct_3(abs(global0.x), vec4<bool>(any(!vec3<bool>(false, arg_2.b.x, arg_2.b.x)), false, !(-27635i > _wgslsmith_clamp_i32(2147483647i, 0i, 37774i)), arg_2.b.x), arg_2.c);
    return ~abs(vec2<u32>(63883u, arg_0));
}

fn func_3(arg_0: vec4<u32>) -> u32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1425f - 281f) * -234f)), Struct_1(_wgslsmith_f_op_f32(sign(-1406f))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1433f, _wgslsmith_f_op_f32(max(456f, 145f)))))));
    let var_1 = Struct_3(u_input.b, !(!vec4<bool>(true, false, all(vec4<bool>(true, true, true, false)), all(vec4<bool>(true, true, false, true)))), vec3<u32>(~0u, global0.x, 102558u));
    let var_2 = var_1;
    let var_3 = var_1.b;
    return global0.x;
}

fn func_2(arg_0: Struct_3) -> u32 {
    let var_0 = Struct_3(arg_0.a, !vec4<bool>(any(vec4<bool>(arg_0.b.x, false, true, arg_0.b.x)), !any(vec2<bool>(arg_0.b.x, arg_0.b.x)), true, arg_0.b.x), arg_0.c);
    global0 = ~(~var_0.c.yy);
    let var_1 = Struct_3(~(~arg_0.c.x), vec4<bool>(true, countOneBits(1u) >= ~abs(arg_0.c.x), true, true), var_0.c >> (abs(var_0.c) % vec3<u32>(32u)));
    global0 = vec2<u32>(~(~var_0.c.x), func_3(~reverseBits(vec4<u32>(34238u, global0.x, u_input.a, arg_0.a) >> (vec4<u32>(var_1.c.x, var_1.c.x, 35268u, var_0.a) % vec4<u32>(32u)))));
    let var_2 = ~firstLeadingBit(vec3<i32>(~(-1i >> (var_1.c.x % 32u)), 27361i, -14864i));
    return ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(reverseBits(0u), ~4294967295u, ~arg_0.c.x, ~0u), ~(vec4<u32>(4294967295u, u_input.b, var_0.a, 4294967295u) & vec4<u32>(global0.x, var_1.c.x, 0u, 0u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = (abs(vec2<u32>(global0.x, 27713u) | func_1(36941u, Struct_2(Struct_1(-1000f), Struct_1(-755f), Struct_1(1000f)), Struct_3(global0.x, vec4<bool>(true, true, false, true), vec3<u32>(1u, 13217u, 12201u)))) >> (vec2<u32>(9835u | select(global0.x, global0.x, true), func_2(Struct_3(u_input.b, vec4<bool>(false, false, true, false), vec3<u32>(global0.x, 12457u, 1u)))) % vec2<u32>(32u))) ^ reverseBits(vec2<u32>(20157u, 0u));
    var var_0 = _wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(1i, _wgslsmith_mod_i32(max(39157i, 46329i), ~1i), firstLeadingBit(-2147483647i))), vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-47402i, 1i), vec2<i32>(-44334i, 15920i), vec2<i32>(-2147483647i, 9122i)), vec2<i32>(12539i, -40370i) >> (vec2<u32>(global0.x, global0.x) % vec2<u32>(32u))), 1i), firstTrailingBit(78074i), ~(countOneBits(2147483647i) >> (u_input.a % 32u))));
    global0 = firstLeadingBit(~(~vec2<u32>(_wgslsmith_mod_u32(1u, u_input.a), _wgslsmith_mult_u32(global0.x, u_input.b))));
    var var_1 = Struct_2(Struct_1(-1175f), Struct_1(788f), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-381f)) - _wgslsmith_div_f32(449f, -1451f)))));
    let var_2 = -var_0.x;
    let var_3 = vec4<u32>(u_input.a, u_input.b, ~4294967295u, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.b, 0u, 1u), vec3<u32>(17462u, u_input.a, 4294967295u)), vec3<u32>(4294967295u, 119113u, global0.x)), firstTrailingBit(global0.x)));
    var_0 = countOneBits(_wgslsmith_mod_vec3_i32(-vec3<i32>(-3467i, var_0.x, 1i), _wgslsmith_clamp_vec3_i32(-vec3<i32>(2147483647i, var_2, var_2), -vec3<i32>(-2147483647i, var_0.x, -64319i), abs(vec3<i32>(var_0.x, -27989i, -6111i))))) ^ ~vec3<i32>(var_0.x, -(~var_2), ~reverseBits(2147483647i));
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-184f, 1025f), _wgslsmith_f_op_f32(var_1.a.a - var_1.a.a)), vec2<f32>(var_1.b.a, -1586f))));
    let var_5 = Struct_3(0u, vec4<bool>(false, false, all(vec2<bool>(true, true)), true), vec3<u32>(_wgslsmith_mod_u32(global0.x, min(func_3(vec4<u32>(32409u, u_input.b, 46457u, u_input.a)), var_3.x)), 4294967295u, ~var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_4.x * 624f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_4.x))))), ~(firstLeadingBit(firstLeadingBit(vec3<u32>(global0.x, 1u, var_3.x))) | var_3.ywy), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.a, -914f, var_1.c.a, 1385f) * vec4<f32>(-357f, var_4.x, -1000f, var_1.c.a)))) * vec4<f32>(var_1.a.a, var_4.x, -1269f, _wgslsmith_f_op_f32(round(-528f)))))), _wgslsmith_sub_vec4_u32(max(select(max(vec4<u32>(var_3.x, 33607u, global0.x, 21550u), var_3), vec4<u32>(var_5.a, global0.x, u_input.b, u_input.b), true), vec4<u32>(var_5.a, _wgslsmith_mult_u32(17492u, var_5.c.x), func_2(Struct_3(1u, vec4<bool>(false, var_5.b.x, var_5.b.x, var_5.b.x), vec3<u32>(4294967295u, 0u, 410u))), global0.x)), reverseBits(~var_3)));
}

