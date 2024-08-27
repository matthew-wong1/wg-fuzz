struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: Struct_3,
    d: vec3<u32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: u32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_1(0i);
    let var_1 = Struct_3(var_0, _wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(var_0.a | var_0.a, ~0i)), vec2<i32>(var_0.a, abs(~(-23174i)))), Struct_2(Struct_1(_wgslsmith_clamp_i32(u_input.a.x ^ -12641i, abs(-6621i), -35119i)), var_0, 724f, var_0, var_0));
    var var_2 = ~firstTrailingBit(firstLeadingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(6978u, 4294967295u, 85028u, 1u), vec4<u32>(17322u, 4294967295u, 1u, 0u))));
    var_2 = min(~firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(75958u, 13764u, 5617u), vec3<u32>(4294967295u, 0u, 4294967295u)) | ~1u), _wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(1u, 1u, 1u, 1u)), ~vec4<u32>(19679u, 4294967295u, 4294967295u, ~0u)));
    let var_3 = var_1.a.a;
    return !select(!(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), true);
}

fn func_2(arg_0: Struct_4) -> Struct_2 {
    var var_0 = vec2<bool>(true, !(!(arg_0.c.a.a <= u_input.a.x) & (~4294967295u <= ~arg_0.d.x)));
    var_0 = !(!func_3());
    var var_1 = 23370i;
    var_0 = vec2<bool>(any(select(vec4<bool>(true, 21999i < arg_0.b.b.x, !var_0.x, arg_0.b.b.x <= -56607i), !(!vec4<bool>(var_0.x, false, var_0.x, true)), !var_0.x)), !any(select(vec3<bool>(true, false, var_0.x), !vec3<bool>(true, var_0.x, false), any(vec2<bool>(true, var_0.x)))));
    var var_2 = !vec4<bool>(all(!select(vec4<bool>(var_0.x, true, true, false), vec4<bool>(var_0.x, true, true, true), vec4<bool>(var_0.x, false, true, true))), any(vec3<bool>(var_0.x, true, arg_0.b.c.a.a < arg_0.b.c.d.a)), 37589u == ~(1u ^ arg_0.a), all(!vec3<bool>(var_0.x, true, var_0.x)));
    return Struct_2(arg_0.c.a, arg_0.c.a, 1400f, Struct_1(_wgslsmith_sub_i32(0i, firstTrailingBit(6740i) & ~arg_0.b.b.x)), arg_0.c.c.d);
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: vec3<bool>, arg_3: Struct_2) -> u32 {
    var var_0 = 931f;
    let var_1 = arg_2;
    var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2300f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(arg_0, arg_0, arg_2.x)), _wgslsmith_f_op_f32(-392f - arg_0))))) + _wgslsmith_f_op_f32(step(-929f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0, arg_3.c)) * arg_0))))));
    var_0 = -1195f;
    let var_2 = ~(countOneBits(7443i >> (_wgslsmith_clamp_u32(45742u, 4294967295u, 0u) % 32u)) & 104581i);
    return _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(1u, reverseBits(1u), _wgslsmith_div_u32(0u, 38097u), _wgslsmith_mod_u32(0u, 10896u)), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(1071u, 31765u, 1u, 71765u)), vec4<u32>(1u, 0u, 1u, 102259u), vec4<u32>(125183u, 48494u, 1u, 4294967295u)))), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(49183u, _wgslsmith_clamp_u32(33149u, 4294967295u, 4294967295u), max(1u, 1u), ~4294967295u)), vec4<u32>(firstTrailingBit(~0u), 24235u, ~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(73159u, 30156u, 0u)))), _wgslsmith_dot_vec4_u32(firstTrailingBit(~reverseBits(vec4<u32>(31392u, 12412u, 1u, 1u))), ~vec4<u32>(1u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(9895u, 1u), vec2<u32>(4294967295u, 47830u)), 1u)));
}

fn func_1(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_3) -> Struct_1 {
    var var_0 = false;
    let var_1 = _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, firstLeadingBit(~4294967295u), abs(firstTrailingBit(4294967295u)), func_4(arg_0, 1i | arg_1.x, select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), func_2(Struct_4(1u, Struct_3(Struct_1(17095i), vec2<i32>(-17829i, 2147483647i), Struct_2(arg_2.a, Struct_1(-8774i), arg_2.c.c, Struct_1(arg_2.a.a), arg_2.a)), arg_2, vec3<u32>(1u, 20093u, 30161u), vec2<f32>(-478f, -1759f))))), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(1u, 1u, 22618u, 97727u)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 1u, 61221u), vec4<u32>(8826u, 1u, 4294967295u, 4294967295u)), 4294967295u, _wgslsmith_add_u32(16231u, 24546u), firstLeadingBit(1u)))), ~vec4<u32>(_wgslsmith_mult_u32(4294967295u, firstTrailingBit(0u)), 20697u, 1u, _wgslsmith_clamp_u32(42856u, _wgslsmith_dot_vec4_u32(vec4<u32>(2217u, 4294967295u, 22560u, 0u), vec4<u32>(1u, 0u, 1u, 4294967295u)), ~86370u)));
    let var_2 = (_wgslsmith_dot_vec4_u32(~var_1, ~var_1) >> (4294967295u % 32u)) < var_1.x;
    var var_3 = 33087u;
    var var_4 = arg_2;
    return var_4.a;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> Struct_3 {
    let var_0 = vec4<i32>(472i, _wgslsmith_mod_i32(func_2(Struct_4(arg_2, Struct_3(Struct_1(15678i), u_input.a.xx, Struct_2(arg_1, Struct_1(arg_1.a), 657f, arg_1, arg_1)), Struct_3(Struct_1(u_input.a.x), vec2<i32>(u_input.a.x, -1i), Struct_2(Struct_1(-62367i), Struct_1(61195i), arg_0, Struct_1(-77695i), arg_1)), vec3<u32>(64609u, 956u, arg_2), vec2<f32>(-532f, arg_0))).a.a, _wgslsmith_mod_i32(-1i, arg_1.a)) << (~countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, arg_2, arg_2), vec3<u32>(59497u, arg_2, arg_2))) % 32u), arg_1.a, -3568i);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) * 1262f), 105f, _wgslsmith_f_op_f32(floor(278f)), arg_0);
    let var_2 = ~(firstLeadingBit(vec3<u32>(arg_2, 0u, arg_2)) << (~max(vec3<u32>(32444u, 4294967295u, arg_2), vec3<u32>(arg_2, 0u, arg_2)) % vec3<u32>(32u))) ^ ~(~_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 0u, arg_2), vec3<u32>(46673u, 61529u, arg_2)), ~vec3<u32>(arg_2, 0u, arg_2)));
    var var_3 = any(select(vec2<bool>(any(vec2<bool>(true, false)) | all(vec3<bool>(false, true, false)), false), select(vec2<bool>(true, any(vec3<bool>(true, true, false))), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), all(func_3())), !(-371f <= _wgslsmith_f_op_f32(-arg_0))));
    var var_4 = _wgslsmith_mult_u32(max(var_2.x, abs(arg_2) | _wgslsmith_mod_u32(1u, var_2.x)), 0u);
    return Struct_3(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-107f, -840f)))), var_0.yw, Struct_3(func_1(342f, vec2<i32>(u_input.a.x, 47456i), Struct_3(Struct_1(-31831i), u_input.a.yy, Struct_2(arg_1, arg_1, arg_0, Struct_1(0i), arg_1))), u_input.a.yz, func_2(Struct_4(3701u, Struct_3(arg_1, vec2<i32>(u_input.a.x, 1i), Struct_2(arg_1, arg_1, arg_0, arg_1, arg_1)), Struct_3(Struct_1(var_0.x), var_0.yy, Struct_2(Struct_1(var_0.x), Struct_1(var_0.x), -446f, arg_1, arg_1)), vec3<u32>(arg_2, 4294967295u, arg_2), vec2<f32>(arg_0, var_1.x))))), (firstLeadingBit(~vec2<i32>(u_input.a.x, u_input.a.x)) ^ vec2<i32>(30302i, firstLeadingBit(5030i))) << (~max(var_2.zx, ~var_2.yz) % vec2<u32>(32u)), Struct_2(arg_1, Struct_1(~select(var_0.x, 5755i, false)), _wgslsmith_f_op_f32(-var_1.x), Struct_1(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.a.xz, var_0.zx), ~(-23707i))), func_2(Struct_4(0u, Struct_3(arg_1, u_input.a.xy, Struct_2(Struct_1(-1i), arg_1, 767f, arg_1, Struct_1(0i))), Struct_3(Struct_1(-2147483647i), vec2<i32>(1i, 2147483647i), Struct_2(arg_1, Struct_1(35595i), 1128f, arg_1, Struct_1(-2147483647i))), vec3<u32>(22139u, 38270u, 18252u), _wgslsmith_f_op_vec2_f32(vec2<f32>(146f, -2092f) + var_1.zx))).b));
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_4) -> Struct_1 {
    var var_0 = u_input.a.x;
    let var_1 = arg_1.c.c.e;
    var var_2 = -vec2<i32>(_wgslsmith_mod_i32(abs(u_input.a.x), ~(-26280i) << (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a, 85383u, 32844u), vec3<u32>(arg_1.d.x, arg_1.a, 4294967295u)) % 32u)), -(~arg_1.c.b.x));
    var_0 = firstLeadingBit(abs(arg_1.b.b.x));
    var_2 = vec2<i32>(~0i, ~(-37662i));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(u_input.a.x), func_6(vec2<f32>(1f, 1f), Struct_4(1u, func_5(_wgslsmith_f_op_f32(-824f - 501f), func_1(-311f, u_input.a.xz, Struct_3(Struct_1(u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x), Struct_2(Struct_1(2147483647i), Struct_1(-1i), 351f, Struct_1(u_input.a.x), Struct_1(1i)))), ~4294967295u), Struct_3(func_1(-1547f, u_input.a.zy, Struct_3(Struct_1(u_input.a.x), u_input.a.yy, Struct_2(Struct_1(u_input.a.x), Struct_1(30435i), 1550f, Struct_1(u_input.a.x), Struct_1(u_input.a.x)))), u_input.a.yx, func_2(Struct_4(1300u, Struct_3(Struct_1(-1i), u_input.a.zz, Struct_2(Struct_1(-58934i), Struct_1(u_input.a.x), -417f, Struct_1(u_input.a.x), Struct_1(u_input.a.x))), Struct_3(Struct_1(u_input.a.x), vec2<i32>(-30845i, 21157i), Struct_2(Struct_1(u_input.a.x), Struct_1(19365i), -879f, Struct_1(u_input.a.x), Struct_1(2147483647i))), vec3<u32>(7635u, 0u, 0u), vec2<f32>(420f, -2067f)))), vec3<u32>(1u, 1u, 1u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(438f, -653f) + vec2<f32>(1000f, 461f)) + _wgslsmith_div_vec2_f32(vec2<f32>(963f, 1019f), vec2<f32>(1597f, 2157f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), Struct_1(abs(firstTrailingBit(-2147483647i))), func_6(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(-917f, -713f), vec2<f32>(893f, -1250f)))) + vec2<f32>(1f, _wgslsmith_f_op_f32(-442f - -201f))), Struct_4(min(1u, reverseBits(1u)), Struct_3(Struct_1(u_input.a.x), u_input.a.yy, Struct_2(Struct_1(u_input.a.x), Struct_1(1i), -296f, Struct_1(2147483647i), Struct_1(u_input.a.x))), Struct_3(func_5(-220f, Struct_1(21730i), 88288u).a, ~vec2<i32>(u_input.a.x, 0i), func_2(Struct_4(80996u, Struct_3(Struct_1(u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x), Struct_2(Struct_1(0i), Struct_1(1i), 586f, Struct_1(u_input.a.x), Struct_1(4896i))), Struct_3(Struct_1(-80953i), u_input.a.xz, Struct_2(Struct_1(-37859i), Struct_1(u_input.a.x), -250f, Struct_1(-18007i), Struct_1(-47829i))), vec3<u32>(11959u, 21562u, 974u), vec2<f32>(-893f, 139f)))), vec3<u32>(reverseBits(4294967295u), 4294967295u, 346u), vec2<f32>(_wgslsmith_f_op_f32(round(-2142f)), _wgslsmith_f_op_f32(round(1000f))))));
    var var_1 = Struct_4(~countOneBits(1u << (_wgslsmith_dot_vec2_u32(vec2<u32>(21654u, 83730u), vec2<u32>(0u, 9916u)) % 32u)), Struct_3(Struct_1(9262i), select(u_input.a.zy, u_input.a.zy, vec2<bool>(true, true)), func_2(Struct_4(_wgslsmith_div_u32(60068u, 1u), Struct_3(Struct_1(u_input.a.x), u_input.a.xy, Struct_2(Struct_1(-41924i), var_0.b, var_0.c, Struct_1(-2147483647i), var_0.b)), func_5(var_0.c, Struct_1(26391i), 4294967295u), _wgslsmith_mult_vec3_u32(vec3<u32>(86660u, 9173u, 4294967295u), vec3<u32>(24943u, 0u, 1u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1606f, var_0.c))))), Struct_3(var_0.b, _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(~u_input.a.zx, ~vec2<i32>(1i, 41635i), vec2<i32>(1i, -1i)), _wgslsmith_clamp_vec2_i32(firstTrailingBit(u_input.a.xz), -vec2<i32>(23381i, 2147483647i), func_5(-673f, var_0.a, 1u).b)), func_2(Struct_4(min(22601u, 1u), func_5(-1188f, Struct_1(u_input.a.x), 36900u), Struct_3(var_0.e, u_input.a.yx, Struct_2(Struct_1(var_0.d.a), var_0.d, -1000f, var_0.a, Struct_1(25538i))), ~vec3<u32>(12413u, 42954u, 85427u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, 215f))))), ~max(max(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(24371u, 1u, 0u)), vec3<u32>(_wgslsmith_mult_u32(26248u, 1u), 74815u, _wgslsmith_div_u32(4294967295u, 25251u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0.c - -960f), _wgslsmith_div_f32(-865f, _wgslsmith_f_op_f32(var_0.c * 595f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -23485i, var_1.c.b.x) >> (vec3<u32>(var_1.a, 89344u, 11341u) % vec3<u32>(32u)), vec3<i32>(var_1.c.a.a, 1i, u_input.a.x) >> (vec3<u32>(0u, var_1.a, var_1.a) % vec3<u32>(32u))), ~_wgslsmith_dot_vec3_i32(u_input.a, u_input.a)), vec3<f32>(var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -511f), var_1.b.c.c)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))), 1f), func_4(var_0.c, i32(-1i) * -_wgslsmith_div_i32(2147483647i, u_input.a.x), vec3<bool>(func_3().x, true, true), var_1.b.c), _wgslsmith_add_i32(var_0.d.a, reverseBits(var_0.b.a)), countOneBits(countOneBits(1u) ^ _wgslsmith_dot_vec3_u32(var_1.d, var_1.d)));
}

