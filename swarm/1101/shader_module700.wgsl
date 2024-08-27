struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(-211f, _wgslsmith_div_vec4_f32(vec4<f32>(1254f, 352f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-1328f, 715f)))), _wgslsmith_f_op_f32(f32(-1f) * -1765f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -527f)), 182f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-636f)) * _wgslsmith_f_op_f32(f32(-1f) * -148f)), _wgslsmith_f_op_f32(f32(-1f) * -608f))), u_input.d, vec4<i32>(u_input.b, min(2147483647i, 1i), ~(-2062i), abs(0i)) & ~vec4<i32>(-1i, u_input.b & 2147483647i, firstTrailingBit(u_input.d.x), select(u_input.c.x, 0i, true)));
    var_0 = Struct_1(var_0.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.b, vec4<f32>(_wgslsmith_f_op_f32(-var_0.a), -384f, -1453f, _wgslsmith_f_op_f32(ceil(845f))))), vec3<i32>(~39483i, -_wgslsmith_dot_vec2_i32(vec2<i32>(17861i, var_0.c.x), -var_0.c.xy), _wgslsmith_add_i32(select(reverseBits(u_input.b), u_input.d.x ^ 2147483647i, var_0.d.x != var_0.c.x), 0i >> (abs(0u) % 32u))), var_0.d);
    var_0 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, 945f, 1270f, var_0.a) * _wgslsmith_f_op_vec4_f32(var_0.b + vec4<f32>(var_0.a, -797f, 659f, var_0.a)))))), u_input.c, -countOneBits(~(-var_0.d)));
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.a, -1000f, var_0.a, 1428f), vec4<f32>(var_0.a, var_0.b.x, 1233f, 1347f))) + vec4<f32>(-1590f, var_0.b.x, var_0.a, var_0.b.x))))), _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.d, _wgslsmith_mult_vec3_i32(min(vec3<i32>(u_input.c.x, var_0.c.x, -16209i), vec3<i32>(-1i, u_input.c.x, 32119i)), u_input.c ^ vec3<i32>(u_input.b, 41021i, 9643i))), vec3<i32>(~(-1i), min(_wgslsmith_dot_vec4_i32(vec4<i32>(58361i, u_input.b, 345i, u_input.c.x), vec4<i32>(28490i, u_input.a, u_input.b, u_input.a)), -7997i), _wgslsmith_add_i32(var_0.c.x, -1i))), var_0.d);
    var_0 = Struct_1(_wgslsmith_f_op_f32(floor(var_0.b.x)), var_0.b, _wgslsmith_mult_vec3_i32(~(~(u_input.d ^ var_0.c)), countOneBits(vec3<i32>(~(-1398i), -u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.d.x, var_0.d.x, -23532i), vec3<i32>(-67119i, var_0.c.x, var_0.d.x))))), ~_wgslsmith_div_vec4_i32(firstTrailingBit(var_0.d), select(var_0.d, vec4<i32>(var_0.c.x, var_0.c.x, u_input.c.x, -1i), var_0.c.x == u_input.b)));
    return var_0.a;
}

fn func_2(arg_0: u32) -> vec3<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -886f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(443f, -683f)), -167f, select(false, false, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(214f, -817f))), 838f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(821f))) + 735f)), -u_input.d, firstTrailingBit(~(-vec4<i32>(-31629i, 1i, 27101i, u_input.c.x))) ^ firstTrailingBit(vec4<i32>(u_input.c.x & u_input.a, u_input.d.x, countOneBits(u_input.b), 2147483647i)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3()))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -519f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1184f))))), _wgslsmith_f_op_f32(abs(var_0.a)), var_0.a, var_0.b.x), -vec3<i32>(-max(-55259i, u_input.b), _wgslsmith_dot_vec4_i32(var_0.d, ~var_0.d), -(~(-28136i))), vec4<i32>(1i, u_input.c.x, u_input.a, 0i));
    let var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(var_0.b.xww, _wgslsmith_div_vec3_f32(var_1.b.wzx, vec3<f32>(_wgslsmith_f_op_f32(var_0.b.x + -1000f), _wgslsmith_f_op_f32(-175f + -1035f), _wgslsmith_f_op_f32(f32(-1f) * -161f))))));
    var var_3 = Struct_2(true);
    let var_4 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) + _wgslsmith_f_op_f32(floor(1464f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 544f < var_0.b.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -100f) - _wgslsmith_f_op_f32(max(var_0.b.x, var_1.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(262f, _wgslsmith_f_op_f32(exp2(var_2.x))), _wgslsmith_f_op_f32(ceil(-1803f)))), firstTrailingBit(max(var_0.c, vec3<i32>(1i, var_0.d.x, u_input.a >> (1u % 32u)))), vec4<i32>(28744i, _wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.c.x, 1i, -2147483647i, var_0.c.x), -var_1.d) << (arg_0 % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(u_input.a, u_input.c.x), -31298i), _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, -21694i), var_0.c.xy << (vec2<u32>(arg_0, arg_0) % vec2<u32>(32u)))), _wgslsmith_mod_i32(abs(-u_input.c.x), ~select(var_1.c.x, 0i, var_3.a))));
    return firstTrailingBit(-var_4.d.www & var_1.d.ywy);
}

fn func_1() -> Struct_2 {
    var var_0 = u_input.d;
    let var_1 = _wgslsmith_mult_i32(u_input.b, -_wgslsmith_mult_i32(var_0.x, -var_0.x)) >> (40242u % 32u);
    var_0 = countOneBits(max(min(-vec3<i32>(16319i, -1i, 9864i), vec3<i32>(0i, 36146i, -1i) & vec3<i32>(u_input.c.x, var_0.x, -2147483647i)), u_input.d)) ^ -_wgslsmith_sub_vec3_i32(firstLeadingBit(-vec3<i32>(-2147483647i, -1i, -19767i)), u_input.c);
    var_0 = -_wgslsmith_clamp_vec3_i32(func_2(_wgslsmith_div_u32(abs(5676u), 4294967295u)), _wgslsmith_add_vec3_i32(~(u_input.d | u_input.c), _wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(-2147483647i, 11908i, var_1)), -vec3<i32>(0i, u_input.d.x, 41869i), u_input.d)), vec3<i32>(var_0.x, var_0.x, -1i));
    var_0 = func_2(_wgslsmith_dot_vec2_u32(~firstLeadingBit(vec2<u32>(934u, 1u)), ~vec2<u32>(~0u, 1u)));
    return Struct_2(all(vec3<bool>(false, any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true)), false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(true);
    var_0 = func_1();
    let var_1 = countOneBits(~select(_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(1u, 1u, 4329u, 34556u)), _wgslsmith_mod_vec4_u32(vec4<u32>(15504u, 46579u, 1u, 1u), vec4<u32>(1u, 4294967295u, 24630u, 18827u))), ~vec4<u32>(7336u, 9981u, 0u, 4294967295u), !(!var_0.a)));
    var var_2 = any(!(!select(select(vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(var_0.a, var_0.a, false), vec3<bool>(true, var_0.a, false)), select(vec3<bool>(var_0.a, true, var_0.a), vec3<bool>(false, var_0.a, var_0.a), var_0.a), true)));
    var var_3 = func_1();
    var_3 = Struct_2(true);
    var var_4 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-179f, -617f, 1676f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(680f, 300f, -1627f)))))))));
    let var_5 = select(vec2<bool>(true, !func_1().a), !select(select(!vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_0.a, var_0.a), false), !vec2<bool>(false, var_3.a), vec2<bool>(false, true)), select(select(vec2<bool>(var_3.a, var_0.a || true), vec2<bool>(var_3.a, var_3.a), vec2<bool>(u_input.c.x <= -2147483647i, true)), !select(vec2<bool>(var_3.a, true), select(vec2<bool>(true, var_3.a), vec2<bool>(false, true), var_0.a), select(vec2<bool>(var_3.a, var_3.a), vec2<bool>(true, false), true)), select(!(!vec2<bool>(var_0.a, true)), vec2<bool>(!var_3.a, func_1().a), !(!vec2<bool>(var_3.a, true)))));
    var var_6 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -965f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-285f + var_4.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_4.x + -103f), _wgslsmith_f_op_f32(floor(var_4.x)), _wgslsmith_f_op_f32(abs(var_4.x)), var_4.x) - vec4<f32>(919f, _wgslsmith_div_f32(var_4.x, var_4.x), -499f, -962f))), abs(u_input.c), ~_wgslsmith_mod_vec4_i32(vec4<i32>(~u_input.c.x, abs(u_input.a), 0i, u_input.d.x >> (4294967295u % 32u)), vec4<i32>(countOneBits(2147483647i), 2147483647i << (var_1.x % 32u), ~u_input.c.x, -u_input.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~0u) & firstTrailingBit(~4294967295u), -var_6.d.wx, var_1);
}

