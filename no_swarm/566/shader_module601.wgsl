struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1059f))))) * 1000f), 909f, true));
    return _wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.a ^ 2147483647i, abs(u_input.a) | 0i), _wgslsmith_div_vec2_i32(vec2<i32>(-22207i, u_input.a), select(_wgslsmith_sub_vec2_i32(select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a), vec2<bool>(false, arg_0.a.x)), -vec2<i32>(u_input.a, u_input.a)), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, 38598i), vec2<i32>(2147483647i, u_input.a))), !arg_1.a.x)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-453f, _wgslsmith_f_op_f32(floor(-1227f))), _wgslsmith_f_op_f32(f32(-1f) * -965f)) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -400f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(827f * -792f) - _wgslsmith_f_op_f32(-305f + 762f))));
    var var_1 = Struct_1(!select(!arg_0.a, arg_0.a, select(vec2<bool>(false, false), arg_0.a, 47668u == arg_0.b.x)), ~arg_0.b, vec2<u32>(47027u ^ countOneBits(firstTrailingBit(1u)), 1u));
    var_1 = Struct_1(!arg_0.a, ~(~((vec4<u32>(4294967295u, 4294967295u, 1u, arg_0.c.x) ^ arg_0.b) & _wgslsmith_add_vec4_u32(var_1.b, vec4<u32>(17752u, 1u, var_1.c.x, var_1.b.x)))), firstTrailingBit(~reverseBits(vec2<u32>(1u, var_1.c.x))));
    var_1 = Struct_1(select(vec2<bool>(true, select(false, any(vec2<bool>(var_1.a.x, var_1.a.x)), true)), select(arg_0.a, !select(arg_0.a, arg_0.a, var_1.a), select(select(arg_0.a, var_1.a, arg_0.a.x), vec2<bool>(false, arg_0.a.x), var_0.x >= var_0.x)), false), vec4<u32>(var_1.c.x, 55939u, 1u, countOneBits(~var_1.b.x)), ~firstTrailingBit(~countOneBits(arg_0.b.wy)));
    var_1 = Struct_1(select(var_1.a, !(!var_1.a), arg_0.a.x), arg_0.b, vec2<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(48852u, var_1.b.x), ~firstTrailingBit(arg_0.b.x)), 1u));
    return select(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(1148i, -20169i, -2147483647i), vec3<i32>(u_input.a, arg_1.x, u_input.a)), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, arg_1.x, arg_1.x), vec3<i32>(u_input.a, arg_1.x, 2147483647i))), vec3<i32>(func_3(Struct_1(vec2<bool>(arg_0.a.x, var_1.a.x), var_1.b, vec2<u32>(arg_0.b.x, 57332u)), Struct_1(vec2<bool>(var_1.a.x, true), vec4<u32>(var_1.c.x, 1u, var_1.b.x, 34482u), vec2<u32>(arg_0.c.x, 4294967295u))).x, u_input.a, arg_1.x)), vec3<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a, u_input.a, 2147483647i), vec4<i32>(33378i, -2381i, u_input.a, 1i)), -_wgslsmith_clamp_i32(u_input.a, arg_1.x, arg_1.x), -1i), !(all(vec3<bool>(false, true, var_1.a.x)) & any(vec4<bool>(false, false, false, arg_0.a.x)))) >> ((_wgslsmith_sub_vec3_u32(firstLeadingBit(~var_1.b.yyy), ~_wgslsmith_mod_vec3_u32(arg_0.b.ywy, vec3<u32>(4294967295u, var_1.b.x, var_1.c.x))) << ((_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.b.x, var_1.b.x, 4294967295u), arg_0.b.zyy), select(vec3<u32>(arg_0.b.x, 8882u, arg_0.c.x), var_1.b.yww, vec3<bool>(arg_0.a.x, var_1.a.x, arg_0.a.x))) ^ arg_0.b.zzz) % vec3<u32>(32u))) % vec3<u32>(32u));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: f32) -> vec4<i32> {
    var var_0 = arg_0;
    let var_1 = (arg_0.b.x & arg_0.b.x) >= arg_0.b.x;
    var var_2 = Struct_1(var_0.a, ~(~vec4<u32>(75302u, 15540u & var_0.b.x, 4294967295u, 4431u)), arg_0.c);
    let var_3 = -func_4(arg_0, func_3(arg_0, Struct_1(var_2.a, arg_0.b, min(vec2<u32>(var_0.c.x, var_2.c.x), arg_0.c))));
    var var_4 = var_3;
    return -abs(-vec4<i32>(-var_3.x, abs(-9302i), ~0i, -2147483647i));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = any(!select(!select(vec3<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x), vec3<bool>(false, arg_1.a.x, false), vec3<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x)), vec3<bool>(false, true, true), select(arg_1.a.x, true, arg_1.a.x)));
    var var_1 = all(select(!vec3<bool>(true, var_0, true), select(!vec3<bool>(var_0, true, true), !vec3<bool>(arg_1.a.x, var_0, arg_1.a.x), false), vec3<bool>(true || var_0, any(vec3<bool>(false, false, arg_1.a.x)), true))) && (_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1749f, _wgslsmith_f_op_f32(-176f + -953f)))) == _wgslsmith_f_op_f32(f32(-1f) * -344f));
    let var_2 = arg_1;
    let var_3 = arg_1;
    var_1 = !(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -582f))) < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-502f - 2055f)))));
    return Struct_1(select(vec2<bool>(-1726f < _wgslsmith_f_op_f32(ceil(851f)), true), vec2<bool>(select(arg_1.a.x, all(vec4<bool>(false, var_2.a.x, var_3.a.x, var_2.a.x)), any(var_3.a)), all(vec3<bool>(false, var_0, arg_1.a.x))), false), firstTrailingBit(reverseBits(vec4<u32>(var_3.b.x, var_2.c.x, var_2.b.x, var_2.c.x)) ^ ~var_3.b), ~vec2<u32>(20024u ^ (var_2.b.x ^ 1u), select(arg_1.b.x, ~4294967295u, var_3.a.x)));
}

fn func_1(arg_0: bool, arg_1: i32) -> u32 {
    let var_0 = vec2<u32>(1u, 1u);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -208f);
    var var_2 = func_5((reverseBits(func_2(Struct_1(vec2<bool>(arg_0, arg_0), vec4<u32>(var_0.x, 1u, 63947u, 1u), var_0), arg_0, var_1)) | vec4<i32>(1i, _wgslsmith_div_i32(u_input.a, u_input.a), ~(-13705i), select(u_input.a, u_input.a, arg_0))) & _wgslsmith_sub_vec4_i32(-(~vec4<i32>(u_input.a, arg_1, u_input.a, 1i)), _wgslsmith_mult_vec4_i32(min(vec4<i32>(u_input.a, 0i, u_input.a, 2147483647i), vec4<i32>(16278i, arg_1, arg_1, arg_1)), countOneBits(vec4<i32>(u_input.a, -57479i, -30781i, arg_1)))), Struct_1(vec2<bool>(arg_0, !arg_0), ~select(vec4<u32>(0u, 19513u, var_0.x, var_0.x) | vec4<u32>(var_0.x, var_0.x, 9123u, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, 0u, var_0.x, 0u), vec4<u32>(var_0.x, 57077u, 4294967295u, 2231u)), true), vec2<u32>(var_0.x, _wgslsmith_sub_u32(~0u, 1u ^ var_0.x))));
    var var_3 = func_5(_wgslsmith_add_vec4_i32(vec4<i32>(29954i, 70184i, arg_1, _wgslsmith_mod_i32(func_4(Struct_1(var_2.a, var_2.b, vec2<u32>(var_0.x, 4294967295u)), vec2<i32>(u_input.a, -8087i)).x, u_input.a << (67269u % 32u))), _wgslsmith_mod_vec4_i32(max(func_2(Struct_1(vec2<bool>(false, false), vec4<u32>(var_0.x, var_2.c.x, 1u, var_0.x), var_0), false, 446f), vec4<i32>(-2147483647i, -9832i, arg_1, -1i)), ~vec4<i32>(0i, -1i, arg_1, -47062i))), func_5(~vec4<i32>(23216i, -2147483647i ^ arg_1, arg_1 & u_input.a, _wgslsmith_sub_i32(arg_1, -17489i)), Struct_1(var_2.a, min(~var_2.b, _wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, 32457u, var_0.x, var_0.x), vec4<u32>(26572u, 7091u, var_2.c.x, 4294967295u))), select(select(vec2<u32>(var_2.c.x, 23864u), var_2.c, var_2.a), var_0, !var_2.a))));
    let var_4 = !(!(!(!select(vec4<bool>(true, false, false, true), vec4<bool>(arg_0, false, true, true), vec4<bool>(arg_0, false, false, var_3.a.x)))));
    return firstLeadingBit(~(var_2.c.x ^ ~_wgslsmith_mult_u32(12498u, 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<u32>(1u, 1u, 1u, 1u) ^ min(select(vec4<u32>(4294967295u, 0u, 11103u, 1u), vec4<u32>(1u, 1u, 1u, 1u), any(vec3<bool>(true, true, true))) & ~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, ~33856u, func_1(false, u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(49818u, 0u, 41521u, 82329u), vec4<u32>(1u, 4294967295u, 4294967295u, 0u))) >> (_wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, 0u, 1u, 67816u), vec4<u32>(111657u, 0u, 1u, 1038u) << (vec4<u32>(0u, 1u, 1u, 0u) % vec4<u32>(32u)), select(vec4<u32>(1u, 21500u, 2695u, 1u), vec4<u32>(1u, 17389u, 0u, 82473u), vec4<bool>(true, true, false, true))) % vec4<u32>(32u)));
    let var_1 = firstLeadingBit(vec2<i32>(~(-2147483647i >> (_wgslsmith_mult_u32(var_0.x, 4294967295u) % 32u)), -1i));
    var var_2 = vec2<i32>(0i, i32(-1i) * -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -542f)), _wgslsmith_mult_vec2_u32(~_wgslsmith_mult_vec2_u32(var_0.yz, vec2<u32>(var_0.x, var_0.x)) << (max(~var_0.zw, ~var_0.xx) % vec2<u32>(32u)), abs(~var_0.xx) ^ min(~var_0.zy, vec2<u32>(4294967295u, 1u))), ~var_0.x, _wgslsmith_dot_vec2_i32(-max(min(var_1, var_1), ~var_1), var_1));
}

