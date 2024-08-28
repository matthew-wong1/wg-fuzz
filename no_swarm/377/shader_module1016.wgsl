struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
    c: vec2<f32>,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: i32) -> f32 {
    let var_0 = select(vec3<bool>(true, arg_0.b, reverseBits(~u_input.a) > u_input.b.x), !(!(!(!vec3<bool>(arg_0.b, arg_0.b, true)))), 1u == u_input.a);
    var var_1 = ~_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(-(vec3<i32>(-1i, arg_1, 2147483647i) ^ vec3<i32>(arg_1, 1i, -1i)), vec3<i32>(~arg_1, countOneBits(2147483647i), -38327i)), vec3<i32>(_wgslsmith_sub_i32(arg_1, _wgslsmith_mod_i32(arg_1, 35275i)), -20170i, ~2147483647i));
    var_1 = -(_wgslsmith_sub_i32(2147483647i, countOneBits(arg_1) ^ (i32(-1i) * -2147483647i)) ^ 0i);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x + _wgslsmith_f_op_f32(arg_0.a.x + arg_0.a.x)) * arg_0.a.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -662f))) * _wgslsmith_f_op_f32(step(647f, _wgslsmith_f_op_f32(ceil(1512f))))))), _wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -839f))) + arg_0.a.x)), arg_0.a.x);
    let var_3 = Struct_2(1u, Struct_1(u_input.a, vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 1i, -31348i, -11237i), vec4<i32>(-45931i, arg_1, arg_1, arg_1), vec4<i32>(arg_1, arg_1, -33043i, -1i)), _wgslsmith_div_vec4_i32(vec4<i32>(arg_1, arg_1, -2147483647i, arg_1), vec4<i32>(arg_1, arg_1, arg_1, arg_1))), arg_1 ^ (arg_1 & -14613i), 1i, 2147483647i), vec4<i32>(-1i) * -firstLeadingBit(vec4<i32>(arg_1, arg_1, arg_1, 19665i)), vec3<i32>(-18296i, -arg_1, firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, arg_1), vec2<i32>(2147483647i, arg_1)))), ~_wgslsmith_clamp_i32(~arg_1, -arg_1, -8862i)), 16533u, 11083i, Struct_1(~8045u, vec4<i32>(_wgslsmith_sub_i32(~arg_1, _wgslsmith_mult_i32(arg_1, arg_1)), ~36771i, arg_1, abs(-54900i)), ~(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-48876i, arg_1, arg_1, 2147483647i), vec4<i32>(-2147483647i, arg_1, arg_1, 2147483647i), vec4<i32>(arg_1, -6407i, -5481i, 39333i))), -vec3<i32>(_wgslsmith_mod_i32(-13947i, arg_1), arg_1, -15192i & arg_1), arg_1));
    return -614f;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_4(vec3<f32>(375f, -1778f, 382f), false), 1i)))), -283f) * 570f);
    var var_1 = 783f;
    var var_2 = select(-vec4<i32>(1i, 1i, 1i, 1i) & ~_wgslsmith_clamp_vec4_i32(vec4<i32>(2575i, -5747i, 41064i, 9456i), vec4<i32>(5776i, -49776i, -12088i, -82202i), vec4<i32>(-63027i, -1i, 0i, -17883i)), ~_wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(2147483647i, -52098i, 4190i, 0i)), min(vec4<i32>(-26784i, 14695i, 1i, 189i), vec4<i32>(35328i, 19415i, 36471i, -25246i)), ~vec4<i32>(2147483647i, -9237i, -15226i, -24686i)), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), all(vec3<bool>(true, true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), all(vec2<bool>(true, false)) == true)) & _wgslsmith_mult_vec4_i32(vec4<i32>(min(-1i, _wgslsmith_mod_i32(2147483647i, 2147483647i)), -2147483647i, _wgslsmith_sub_i32(firstTrailingBit(-2147483647i), -33843i), 0i & _wgslsmith_clamp_i32(1i, -29181i, -40723i)), vec4<i32>(~(-38478i << (0u % 32u)), -(i32(-1i) * -15450i), ~(-2147483647i), 1i));
    var var_3 = ~4294967295u;
    let var_4 = Struct_3(reverseBits(~max(min(var_2.x, var_2.x), ~var_2.x)), !(!vec4<bool>(any(vec4<bool>(false, false, true, true)), -1i > var_2.x, true, true)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 448f)), -185f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(574f, -528f), vec2<f32>(-910f, 1412f), true)))) * vec2<f32>(-1412f, -165f)), select(vec2<bool>(true, true), vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))))), _wgslsmith_div_vec2_i32(reverseBits(reverseBits(vec2<i32>(-1i, var_2.x))) & ~(-var_2.yw), var_2.xz));
    return Struct_1(u_input.b.x, _wgslsmith_sub_vec4_i32(vec4<i32>(min(2960i, -2147483647i), ~5607i, countOneBits(var_2.x), var_2.x), -(vec4<i32>(var_4.a, var_4.a, -21742i, var_4.a) | vec4<i32>(-43344i, 30027i, 19788i, 2147483647i))) | max(firstLeadingBit(~vec4<i32>(-920i, -1i, var_2.x, var_4.d.x)), -vec4<i32>(0i, -5053i, var_2.x, 1375i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-var_4.a << (u_input.a % 32u), var_4.d.x, 1i & var_4.a, select(-2147483647i << (u_input.b.x % 32u), i32(-1i) * -1i, any(vec3<bool>(var_4.b.x, false, var_4.b.x)))), min(_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(2147483647i, 2147483647i, var_4.a, -44035i)), -vec4<i32>(var_4.a, var_4.d.x, 1i, -3860i)), vec4<i32>(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, 38687i), var_4.d), -1i, var_4.a))), ~(~select(var_2.yyz, _wgslsmith_sub_vec3_i32(vec3<i32>(var_2.x, -31801i, -1i), var_2.zyy), select(var_4.b.yyw, vec3<bool>(false, false, var_4.b.x), var_4.b.zzz))), countOneBits(reverseBits(-2147483647i)));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_4, arg_3: bool) -> Struct_2 {
    var var_0 = vec2<u32>(~_wgslsmith_sub_u32(1u, ~max(58125u, u_input.b.x)), 4112u);
    var var_1 = arg_2.a.x;
    let var_2 = Struct_3(arg_0.d, !vec4<bool>(arg_2.b, true, !arg_3 && (arg_1.x == 293f), false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1 + arg_1), arg_2.a.xy)), vec2<i32>(-21694i, arg_0.b.d.x));
    var_1 = -1289f;
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    return Struct_2(~_wgslsmith_add_u32(~(u_input.b.x << (1u % 32u)), max(_wgslsmith_div_u32(0u, var_0.x), abs(u_input.a))), func_2(), _wgslsmith_add_u32(1u, max(arg_0.c, 0u)), arg_0.d, arg_0.e);
}

fn func_4(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_2, arg_3: vec4<f32>) -> f32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(Struct_4(_wgslsmith_f_op_vec3_f32(exp2(arg_3.ywy)), true), func_2().c.x)))), _wgslsmith_f_op_f32(step(-760f, _wgslsmith_f_op_f32(-arg_1))));
    var var_1 = select(vec4<bool>(true, !(abs(arg_2.d) == 1i), true, true), select(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), all(vec2<bool>(false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false))), vec4<bool>(true, true, true, true), !vec4<bool>(true, all(vec3<bool>(true, true, false)), true, true)), true);
    let var_2 = _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2377f), _wgslsmith_f_op_f32(-1515f + _wgslsmith_f_op_f32(-var_0.x)))));
    let var_3 = vec2<bool>(var_1.x, any(var_1.yxy));
    var_1 = select(!select(!(!vec4<bool>(var_1.x, var_1.x, false, false)), vec4<bool>(!var_3.x, all(var_1.yz), true, var_3.x), select(vec4<bool>(false, true, false, false), !vec4<bool>(false, var_1.x, var_1.x, false), select(vec4<bool>(true, var_3.x, true, var_3.x), vec4<bool>(var_1.x, var_3.x, true, var_3.x), var_3.x))), select(vec4<bool>(false, true, false, true & (arg_3.x <= 1764f)), vec4<bool>(!(!var_1.x), !(u_input.a > arg_0.x), var_3.x, false), all(!var_1.ywz)), reverseBits(37202u) >= u_input.b.x);
    return 796f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(u_input.b | _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), u_input.b, vec3<u32>(0u, u_input.a, u_input.b.x)), -801f, func_1(Struct_2(u_input.a, Struct_1(u_input.a, vec4<i32>(2147483647i, 0i, 0i, -2147483647i), vec4<i32>(-2147483647i, 1i, 28412i, 18424i), vec3<i32>(1i, -46920i, -2535i), 0i), 41994u, -22350i, Struct_1(1u, vec4<i32>(0i, -1i, 1i, -21986i), vec4<i32>(-1i, 2147483647i, 31413i, -17681i), vec3<i32>(0i, 60766i, -1i), 17979i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(792f, -1735f)), Struct_4(vec3<f32>(-2173f, -810f, 1000f), false), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-881f, -603f, 385f, 555f), vec4<f32>(646f, -1000f, -1119f, 857f)))))));
    let var_1 = u_input.b.x;
    let var_2 = Struct_3(_wgslsmith_dot_vec3_i32(~vec3<i32>(1i >> (var_1 % 32u), _wgslsmith_mult_i32(-28055i, -50415i), i32(-1i) * -64309i), vec3<i32>(-1i) * -vec3<i32>(1i, 1i, 1i)), select(!vec4<bool>(any(vec2<bool>(false, false)), true, false, true), !(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true))), vec4<bool>(!all(vec4<bool>(false, false, false, false)), any(vec4<bool>(true, true, true, true)), true, false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(round(-812f))))), vec2<i32>(1i, ~(~1i)));
    var var_3 = _wgslsmith_f_op_f32(-var_0);
    let var_4 = i32(-1i) * -1i;
    let x = u_input.a;
    s_output = StorageBuffer(var_0);
}

