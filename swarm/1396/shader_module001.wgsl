struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_2) -> i32 {
    var var_0 = Struct_2(arg_0.a, ~arg_0.b, arg_0.c);
    var_0 = arg_0;
    var_0 = Struct_2(vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(abs(var_0.a.x)))))), var_0.c.a.x, var_0.c);
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2168f, _wgslsmith_f_op_f32(min(948f, arg_0.a.x))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1714f, arg_0.a.x), var_0.a)), select(vec2<bool>(true, true), vec2<bool>(true, true), true))), vec2<f32>(-1232f, var_0.a.x))), vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(-1010f * _wgslsmith_f_op_f32(min(426f, 1776f)))));
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1, vec2<f32>(var_0.a.x, var_0.a.x)) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-133f, var_1.x)))))), arg_0.b, var_0.c);
    return var_0.c.c.x;
}

fn func_2() -> Struct_2 {
    var var_0 = ~(-_wgslsmith_mult_vec4_i32(vec4<i32>(-1i | u_input.b, abs(2147483647i), func_3(Struct_2(vec2<f32>(287f, -240f), u_input.a, Struct_1(vec2<u32>(u_input.a, 14942u), u_input.a, vec3<i32>(u_input.b, u_input.b, u_input.b)))), u_input.b), _wgslsmith_mult_vec4_i32(-vec4<i32>(2147483647i, -1i, u_input.b, u_input.b), reverseBits(vec4<i32>(11184i, u_input.b, u_input.b, 33746i)))));
    var_0 = vec4<i32>(u_input.b, abs(_wgslsmith_mult_i32(23907i, -50208i) | var_0.x), var_0.x, _wgslsmith_mod_i32(-(~min(u_input.b, var_0.x)), firstLeadingBit(i32(-1i) * -20256i)));
    var var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1193f))) - _wgslsmith_f_op_f32(exp2(1f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-418f)), _wgslsmith_f_op_f32(209f - _wgslsmith_f_op_f32(trunc(891f))))), _wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(1u, 16788u), u_input.a), u_input.a), Struct_1(vec2<u32>(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 31507u, u_input.a), vec4<u32>(u_input.a, 4294967295u, 17732u, u_input.a))), _wgslsmith_mult_u32(u_input.a, u_input.a) | ~u_input.a), ~min(min(u_input.a, u_input.a), u_input.a), vec3<i32>(-5687i, select(u_input.b, 0i, true), -41204i)));
    var var_2 = -(select(var_0.zwy, _wgslsmith_add_vec3_i32(var_0.zxw, vec3<i32>(var_0.x, var_1.c.c.x, var_1.c.c.x) & vec3<i32>(2147483647i, -2147483647i, u_input.b)), false) & ~(vec3<i32>(-1i) * -var_0.yzx));
    let var_3 = var_1.c;
    return Struct_2(vec2<f32>(_wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(floor(var_1.a.x))), 1u, var_1.c);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32) -> vec3<u32> {
    var var_0 = arg_1;
    let var_1 = func_2();
    var var_2 = func_2();
    let var_3 = arg_0.c;
    var var_4 = true;
    return firstTrailingBit(vec3<u32>(~abs(4294967295u), var_1.b, _wgslsmith_div_u32(arg_0.c.a.x, ~70906u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(798f, _wgslsmith_f_op_f32(select(1000f, -1000f, select(true, (u_input.b << (u_input.a % 32u)) < -24582i, any(vec2<bool>(true, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1934f * -1104f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-438f)), _wgslsmith_f_op_f32(round(1150f)))))));
    let var_1 = _wgslsmith_sub_vec3_u32(~(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)) ^ ~(~vec3<u32>(8420u, 1u, u_input.a))), ~func_1(Struct_2(var_0.yy, u_input.a, Struct_1(vec2<u32>(u_input.a, u_input.a), 0u, vec3<i32>(u_input.b, -12899i, u_input.b))), Struct_1(~vec2<u32>(u_input.a, 0u), ~u_input.a, vec3<i32>(u_input.b, -6394i, -1i) | vec3<i32>(u_input.b, u_input.b, -40625i)), 4294967295u >> (1u % 32u)));
    var var_2 = select(vec2<bool>(true, any(vec2<bool>(true, true))), !(!select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), false))), select(!select(vec2<bool>(true, false), vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, false), true)), !select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true))), any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false)))));
    var_2 = vec2<bool>(u_input.b <= -1i, true);
    let var_3 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(var_0.x - -310f), var_0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, var_2.x)), _wgslsmith_f_op_f32(960f - var_0.x))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2032f, var_0.x) * var_0.yz), _wgslsmith_div_vec2_f32(vec2<f32>(584f, var_0.x), var_0.yx))))))));
    var var_4 = u_input.b;
    let var_5 = Struct_1(countOneBits(_wgslsmith_add_vec2_u32(max(~var_1.yz, vec2<u32>(u_input.a, 0u)), vec2<u32>(var_1.x, 0u) << (var_1.zy % vec2<u32>(32u)))), ~_wgslsmith_mod_u32(70427u, ~max(43335u, 28230u)), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(u_input.b, 66670i)), -vec2<i32>(u_input.b, u_input.b)), u_input.b, firstLeadingBit(6314i)), vec3<i32>(min(-35771i, 0i | u_input.b), 1i, u_input.b)));
    var var_6 = countOneBits(min(_wgslsmith_dot_vec4_u32(~vec4<u32>(52908u, var_1.x, 26905u, var_1.x) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(var_5.b, var_1.x, 0u, 4294967295u), vec4<u32>(1u, var_5.a.x, u_input.a, 0u)), ~vec4<u32>(0u, var_1.x, 4294967295u, u_input.a)), min(4294967295u, firstTrailingBit(var_5.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, select(_wgslsmith_clamp_vec2_i32(~var_5.c.zy, var_5.c.zy, ~(vec2<i32>(var_5.c.x, var_5.c.x) >> (vec2<u32>(var_5.b, 17029u) % vec2<u32>(32u)))), vec2<i32>(-1i, _wgslsmith_add_i32(var_5.c.x, var_5.c.x)) ^ ~_wgslsmith_add_vec2_i32(vec2<i32>(1i, var_5.c.x), vec2<i32>(var_5.c.x, 1i)), vec2<bool>(true, true)), reverseBits(~(~var_5.a.x)), ~var_1, vec3<u32>(_wgslsmith_add_u32(var_5.a.x, var_1.x), var_5.a.x, ~var_1.x));
}

