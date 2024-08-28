struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: u32, arg_1: vec2<f32>, arg_2: vec3<bool>) -> vec3<i32> {
    var var_0 = -vec4<i32>(1i, u_input.c, abs(~(~(-23720i))), -1334i);
    let var_1 = arg_2.x;
    var_0 = _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(47515i, -2147483647i, u_input.c, 2147483647i), vec4<i32>(-1i) * -vec4<i32>(var_0.x, var_0.x, u_input.b.x, 2147483647i)), firstLeadingBit((vec4<i32>(u_input.d.x, -8840i, u_input.c, -2147483647i) << (vec4<u32>(0u, u_input.a.x, arg_0, 1u) % vec4<u32>(32u))) | -vec4<i32>(var_0.x, var_0.x, -2147483647i, -2147483647i))) ^ (abs(vec4<i32>(-1i) * -vec4<i32>(-13320i, u_input.d.x, -56190i, var_0.x)) << (~(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.a.x, 1u), vec4<u32>(u_input.a.x, 36751u, u_input.a.x, arg_0)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.a.x, arg_0, u_input.a.x), vec4<u32>(arg_0, 0u, u_input.a.x, u_input.a.x)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.x))), _wgslsmith_f_op_f32(231f + _wgslsmith_div_f32(arg_1.x, 649f)), _wgslsmith_f_op_f32(f32(-1f) * -758f)));
    var_0 = ~(~(-firstLeadingBit(vec4<i32>(-2147483647i, u_input.d.x, 26649i, -2620i)))) << (reverseBits(reverseBits(_wgslsmith_add_vec4_u32(~vec4<u32>(34692u, arg_0, 120185u, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0, 88854u, arg_0, 30842u), vec4<u32>(arg_0, 0u, u_input.a.x, 1u), vec4<u32>(1246u, arg_0, u_input.a.x, 62113u))))) % vec4<u32>(32u));
    return vec3<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(var_0.x, min(min(-1i, -1i), -2147483647i)), 1i), u_input.b.x, -2147483647i);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<u32>) -> i32 {
    let var_0 = Struct_3(Struct_2(vec2<u32>(_wgslsmith_div_u32(arg_1.x >> (u_input.a.x % 32u), _wgslsmith_sub_u32(9838u, 0u)), u_input.a.x)), vec4<u32>(select(_wgslsmith_dot_vec2_u32(~u_input.a.yx, arg_1.yy), u_input.a.x, false), u_input.a.x, _wgslsmith_dot_vec2_u32(~(vec2<u32>(arg_1.x, 4294967295u) << (vec2<u32>(4294967295u, 29390u) % vec2<u32>(32u))), select(vec2<u32>(u_input.a.x, 24811u), ~u_input.a.yx, true)), ~(~u_input.a.x & 1u)));
    let var_1 = !select(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true)), vec3<bool>(all(vec3<bool>(false, false, false)), true, u_input.c >= abs(u_input.b.x)));
    let var_2 = Struct_1(all(var_1.xx) | true);
    let var_3 = 230f;
    var var_4 = func_3(14480u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(arg_0.yy * vec2<f32>(-191f, var_3)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0.x, arg_0.x))))))), var_1);
    return u_input.c;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: f32) -> vec4<i32> {
    var var_0 = vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.b.x << (63317u % 32u), u_input.c), 31609i) | ~func_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-158f, arg_2, arg_0.x), arg_0.yxx, true)), ~vec4<u32>(u_input.a.x, 0u, u_input.a.x, arg_1.x)), u_input.b.x, u_input.b.x, 1734i);
    var_0 = vec4<i32>(u_input.b.x, -42591i, var_0.x, -28123i);
    var var_1 = Struct_1(true);
    let var_2 = _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(670f + arg_2));
    let var_3 = ~(~(~arg_1.x));
    return (vec4<i32>(var_0.x, firstLeadingBit(u_input.b.x >> (1u % 32u)), -61940i, ~_wgslsmith_add_i32(2147483647i, u_input.b.x)) & vec4<i32>(~u_input.b.x, 1i, reverseBits(-2147483647i), u_input.b.x)) & (_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, -23827i, u_input.d.x, -2147483647i), ~vec4<i32>(37390i, 2147483647i, u_input.b.x, var_0.x)), vec4<i32>(1i, ~u_input.b.x, u_input.b.x ^ -2147483647i, var_0.x << (1473u % 32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, var_0.x, -40442i, -2147483647i), vec4<i32>(u_input.c, u_input.b.x, 1i, -1i) >> (vec4<u32>(4294967295u, u_input.a.x, 62872u, 4294967295u) % vec4<u32>(32u)))) >> (vec4<u32>(u_input.a.x, ~max(1u, arg_1.x), 1u, 1u) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a.x, 4294967295u), u_input.a.xy), ~(select(u_input.a.x, u_input.a.x, true) | 4294967295u)));
    let var_1 = u_input.a.x;
    let var_2 = _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-756f, 183f, -1608f, -212f))), u_input.a.xx, -1099f), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -1i, u_input.b.x, u_input.c) ^ vec4<i32>(-2147483647i, -17929i, u_input.b.x, u_input.d.x), firstTrailingBit(vec4<i32>(-5720i, u_input.d.x, u_input.b.x, -55668i)), vec4<i32>(-2147483647i, 50879i, u_input.c, 60116i)) >> (firstTrailingBit(countOneBits(vec4<u32>(4294967295u, 0u, var_1, var_0.a.x))) % vec4<u32>(32u)), select(countOneBits(vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, u_input.c) & vec4<i32>(-25788i, -2147483647i, u_input.c, 73484i)), ~vec4<i32>(-1i, 14712i, u_input.c, u_input.d.x), select(u_input.b.x <= -1i, true, true))), vec4<i32>(1i, select(u_input.b.x, -16091i, all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)))), u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(2147483647i, u_input.c), -1i), ~u_input.d.yy)));
    var_0 = Struct_2(_wgslsmith_add_vec2_u32(var_0.a, ~_wgslsmith_mod_vec2_u32(var_0.a, u_input.a.xz)));
    let var_3 = u_input.b;
    var var_4 = all(select(select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true))), vec2<bool>(select(true, true, false) | true, (4294967295u | var_0.a.x) < var_1), select(vec2<bool>(true, var_2.x < -2147483647i), select(vec2<bool>(true, false), vec2<bool>(true, true), all(vec3<bool>(false, false, true))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true))))));
    var_0 = Struct_2(~(~(~vec2<u32>(u_input.a.x, var_1))));
    let var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(917f)), _wgslsmith_div_f32(-639f, -568f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -423f), _wgslsmith_f_op_f32(f32(-1f) * -191f))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.x, 55736i, select(firstLeadingBit(~vec2<u32>(u_input.a.x, 4294967295u) >> (var_0.a % vec2<u32>(32u))), ~var_0.a, select(min(2147483647i, -1492i), func_1(vec4<f32>(-1000f, -1150f, 505f, -480f), vec2<u32>(var_1, u_input.a.x), var_5.x).x, true) <= var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1232f))));
}

