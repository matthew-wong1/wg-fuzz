struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: bool,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<u32> {
    var var_0 = 680f;
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -2063f);
    var var_1 = vec4<i32>(1i, 0i, -countOneBits(max(-2147483647i, -1i) >> (u_input.a.x % 32u)), 26218i);
    var_0 = _wgslsmith_f_op_f32(1000f * 1007f);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-521f, _wgslsmith_f_op_f32(abs(518f)), 982f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1587f, -583f, -179f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1556f, 1f, 424f), vec3<f32>(-387f, _wgslsmith_f_op_f32(step(247f, -1000f)), _wgslsmith_div_f32(478f, -486f)))))));
    return select(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), 0u, u_input.a.x, 4294967295u), ~select(vec4<u32>(u_input.a.x, 71453u, u_input.a.x, u_input.a.x), vec4<u32>(1u, u_input.a.x, 1u, u_input.a.x), false)), vec4<u32>(~_wgslsmith_clamp_u32(42924u, u_input.a.x, u_input.a.x), abs(~u_input.a.x), _wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 19965u, 1u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x)), reverseBits(4294967295u)), u_input.a.x), !vec4<bool>(false, all(vec3<bool>(true, false, true)), true, var_1.x < var_1.x)) >> (vec4<u32>(~1u, ~(countOneBits(u_input.a.x) & _wgslsmith_div_u32(u_input.a.x, u_input.a.x)), ~min(0u, u_input.a.x) << (1u % 32u), ~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(802u, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, 994u), vec3<u32>(4294967295u, u_input.a.x, 0u)))) % vec4<u32>(32u));
}

fn func_2(arg_0: bool) -> i32 {
    let var_0 = reverseBits(vec2<i32>(1i, 1i));
    let var_1 = _wgslsmith_sub_vec4_u32(~_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 32284u), vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x)), select(vec4<u32>(15226u, 38077u, 67463u, u_input.a.x), vec4<u32>(8340u, 0u, 123542u, 1u), true)), ~(~(~vec4<u32>(1443u, 60417u, u_input.a.x, 12923u)))) << (func_3() % vec4<u32>(32u));
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -711f), 216f, arg_0))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2086f - -769f))))), _wgslsmith_div_f32(-931f, -1197f)));
    var var_3 = Struct_4(vec3<bool>(all(vec4<bool>(true, all(vec3<bool>(arg_0, arg_0, true)), true, var_2 != var_2)), arg_0, ~_wgslsmith_mult_u32(85477u, u_input.a.x) == ~(u_input.a.x | 4294967295u)));
    var var_4 = ~u_input.a.x;
    return ~var_0.x;
}

fn func_1(arg_0: vec3<i32>) -> f32 {
    var var_0 = u_input.a.x;
    let var_1 = vec4<i32>(arg_0.x, arg_0.x | _wgslsmith_add_i32(_wgslsmith_add_i32(~(-8592i), _wgslsmith_sub_i32(arg_0.x, arg_0.x)), (17375i | arg_0.x) >> (u_input.a.x % 32u)), reverseBits(8714i), func_2((_wgslsmith_div_u32(u_input.a.x, 4294967295u) == 0u) == true));
    var_0 = ~u_input.a.x;
    var var_2 = u_input.a.x;
    var_0 = firstTrailingBit(u_input.a.x);
    return -355f;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0.b;
    var_0 = arg_0.b;
    var_0 = -1000f;
    let var_1 = Struct_4(!arg_0.a);
    let var_2 = Struct_5(false, abs(abs(~firstTrailingBit(u_input.a.x))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(false, Struct_1(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1458f))), true, ~(~(~vec3<u32>(u_input.a.x, 6935u, 4294967295u))), vec4<u32>(abs(u_input.a.x), u_input.a.x, ~1u, 4294967295u)), func_4(Struct_1(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(func_1(vec3<i32>(39323i, 26571i, -15820i))), any(vec3<bool>(true, true, false)), vec3<u32>(1u, u_input.a.x, ~u_input.a.x), ~vec4<u32>(4294967295u, 1u, 37277u, u_input.a.x))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1524f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.b.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.b))), var_0.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.b.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.b) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(select(vec3<i32>(69987i, -2147483647i, 25271i), vec3<i32>(0i, 1i, 25465i), var_0.c.a))))), vec4<i32>(1i, 16720i, _wgslsmith_sub_i32(i32(-1i) * -2147483647i, abs(1i)), _wgslsmith_mult_i32(19211i << (u_input.a.x % 32u), _wgslsmith_dot_vec2_i32(select(vec2<i32>(-1865i, -22232i), vec2<i32>(-10443i, 10368i), var_0.b.a.yz), firstTrailingBit(vec2<i32>(0i, -23931i))))));
}

