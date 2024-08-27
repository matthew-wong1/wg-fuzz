struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: vec2<bool>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: vec3<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<i32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(316f, -599f), vec2<f32>(1000f, -700f)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-468f, -417f) - vec2<f32>(505f, 701f))))), u_input.a, select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true))), vec3<bool>(false, any(vec2<bool>(false, true)), all(vec2<bool>(false, true))), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)))), Struct_1(reverseBits(u_input.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-706f, 558f, true)), _wgslsmith_f_op_f32(f32(-1f) * -1678f), all(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(f32(-1f) * -703f)), select(abs(~47079u), ~1u, select(true, true, true)), vec2<bool>(true, !any(vec4<bool>(false, false, false, false))), vec4<i32>(_wgslsmith_clamp_i32(2147483647i, u_input.a & u_input.a, u_input.a), _wgslsmith_mod_i32(reverseBits(u_input.a), ~u_input.a), countOneBits(_wgslsmith_mult_i32(7358i, u_input.a)), u_input.a)));
    var var_1 = ~_wgslsmith_div_u32(_wgslsmith_clamp_u32(~(~var_0.d.c), ~(~var_0.d.c), var_0.d.c ^ var_0.d.c), var_0.d.c);
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-var_0.a), 36655i, select(vec3<bool>(var_0.c.x, false, var_0.d.d.x), !select(var_0.c, var_0.c, true), !var_0.d.d.x), Struct_1(28014i, var_0.d.b, 28861u, var_0.d.d, var_0.d.e));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.a.x, var_0.a.x)))))), -9079i, select(vec3<bool>(all(var_0.d.d), all(vec4<bool>(true, var_0.d.d.x, false, false)), true == (u_input.a <= 0i)), vec3<bool>(any(vec4<bool>(var_0.d.d.x, var_0.d.d.x, var_0.c.x, var_0.c.x)), var_0.c.x, true), var_0.c), Struct_1(2147483647i, var_0.a.x, 1u, var_0.d.d, var_0.d.e));
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(var_0.a.x)), var_0.d.b));
    return -(~(-max(vec4<i32>(var_2.b, 50426i, -7347i, -1i), var_2.d.e)));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: u32) -> u32 {
    let var_0 = Struct_1(arg_2.e.x, _wgslsmith_f_op_f32(arg_2.b + 603f), abs(4674u), arg_2.d, _wgslsmith_mult_vec4_i32(firstTrailingBit(arg_2.e), func_3()));
    return arg_3;
}

fn func_1() -> Struct_1 {
    let var_0 = vec2<i32>(-u_input.a, u_input.a);
    let var_1 = true;
    let var_2 = firstLeadingBit(func_2(vec4<u32>(~4294967295u, 54464u, ~4637u, ~1u) ^ abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(71763u, 7201u, 53379u, 55753u), vec4<u32>(0u, 1375u, 23885u, 4294967295u), vec4<u32>(30767u, 77608u, 34533u, 25024u))), vec4<i32>(-48354i, 2147483647i, _wgslsmith_add_i32(var_0.x, firstLeadingBit(u_input.a)), 1i), Struct_1(var_0.x, _wgslsmith_f_op_f32(round(-927f)), ~(~16405u), select(vec2<bool>(var_1, false), !vec2<bool>(var_1, var_1), vec2<bool>(var_1, var_1)), max(-vec4<i32>(2147483647i, u_input.a, 2147483647i, u_input.a), ~vec4<i32>(var_0.x, u_input.a, 0i, u_input.a))), 128084u));
    let var_3 = ~(~var_2);
    return Struct_1(_wgslsmith_div_i32(22121i, select(func_3().x, var_0.x, var_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-2750f + 410f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f - -912f), _wgslsmith_f_op_f32(f32(-1f) * -234f))))), 1u, !vec2<bool>(_wgslsmith_div_u32(var_2, 0u) != _wgslsmith_mod_u32(var_2, 17740u), any(vec3<bool>(var_1, var_1, var_1))), reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(min(-1i, 0i), _wgslsmith_clamp_i32(-1i, var_0.x, u_input.a), u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, var_0.x), vec2<i32>(-2147483647i, u_input.a))), _wgslsmith_add_vec4_i32(vec4<i32>(2643i, var_0.x, u_input.a, u_input.a), vec4<i32>(u_input.a, -1i, 1i, var_0.x)))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>) -> i32 {
    var var_0 = Struct_1(_wgslsmith_sub_i32(2147483647i, arg_0.b) ^ max(0i, _wgslsmith_sub_i32(arg_0.d.a << (arg_0.d.c % 32u), u_input.a >> (arg_0.d.c % 32u))), -966f, abs(arg_0.d.c), select(!vec2<bool>(select(arg_0.c.x, false, arg_0.d.d.x), arg_0.c.x), select(!vec2<bool>(arg_0.c.x, arg_0.d.d.x), !func_1().d, !arg_0.d.d.x), !(!arg_0.d.d.x)), _wgslsmith_clamp_vec4_i32(arg_0.d.e | arg_0.d.e, arg_0.d.e, vec4<i32>(u_input.a << (arg_0.d.c % 32u), -35850i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 0i, arg_0.d.e.x, 2147483647i), vec4<i32>(33727i, 1i, u_input.a, 1i)), reverseBits(-1i)) >> ((vec4<u32>(4294967295u, arg_0.d.c, 9060u, arg_0.d.c) >> (vec4<u32>(arg_0.d.c, arg_0.d.c, 32747u, 35187u) % vec4<u32>(32u))) % vec4<u32>(32u))));
    let var_1 = _wgslsmith_dot_vec3_u32(~(~abs(vec3<u32>(arg_0.d.c, arg_0.d.c, arg_0.d.c))), vec3<u32>(reverseBits(_wgslsmith_div_u32(26337u, 4294967295u)), ~var_0.c, min(5840u, var_0.c))) << (11867u % 32u);
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(abs(-1044f)), _wgslsmith_f_op_f32(ceil(arg_1.x))), _wgslsmith_f_op_vec2_f32(step(arg_0.a, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(845f, arg_0.d.b))))))), var_0.a, arg_0.c, Struct_1(~arg_0.d.e.x, _wgslsmith_f_op_f32(floor(arg_0.d.b)), ~reverseBits(var_1), func_1().d, abs(vec4<i32>(~2147483647i, -1i | var_0.e.x, -arg_0.d.a, _wgslsmith_sub_i32(u_input.a, 25262i)))));
    var_2 = arg_0;
    var_2 = Struct_2(arg_1.wy, var_2.b, !(!select(var_2.c, vec3<bool>(true, false, var_0.d.x), var_0.a > arg_0.d.e.x)), Struct_1(func_1().e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * arg_0.a.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(8829u, reverseBits(var_1), ~var_0.c, ~var_0.c), ~vec4<u32>(1u, 1u, var_0.c, arg_0.d.c)), !select(!vec2<bool>(var_0.d.x, true), !var_2.d.d, !vec2<bool>(true, arg_0.d.d.x)), abs(-vec4<i32>(u_input.a, arg_0.b, 0i, 1i))));
    return -10136i << (var_1 % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<u32>(4294967295u << (min(0u, ~4294967295u) % 32u), 1u, 1u, _wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(21984u, 0u), vec2<u32>(68720u, 3516u)), abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(73269u, 4294967295u), vec2<u32>(1u, 24672u), vec2<u32>(4294967295u, 1u)))));
    let var_1 = Struct_1(func_4(Struct_2(vec2<f32>(_wgslsmith_f_op_f32(abs(-1436f)), _wgslsmith_f_op_f32(ceil(-374f))), ~u_input.a, vec3<bool>(true, true, true), func_1()), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1243f, -1318f, -140f, 2016f)))) * vec4<f32>(_wgslsmith_f_op_f32(abs(-873f)), func_1().b, _wgslsmith_f_op_f32(f32(-1f) * -355f), -131f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-238f - -1238f) + _wgslsmith_f_op_f32(select(-737f, -383f, true))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1226f + 1156f)))), var_0.x, select(func_1().d, select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, any(vec2<bool>(false, false)))), vec2<bool>(true, true)), -vec4<i32>(countOneBits(_wgslsmith_clamp_i32(-2147483647i, u_input.a, 9028i)), _wgslsmith_mult_i32(13033i, u_input.a), 24374i, u_input.a));
    var var_2 = Struct_1(~func_3().x, _wgslsmith_f_op_f32(-973f - 411f), func_2(min(~vec4<u32>(var_0.x, 1u, var_1.c, 6751u), vec4<u32>(var_0.x, countOneBits(var_0.x), _wgslsmith_mult_u32(var_0.x, 1u), var_0.x)), min(~_wgslsmith_mult_vec4_i32(var_1.e, vec4<i32>(0i, 18677i, u_input.a, var_1.a)), ~(-vec4<i32>(var_1.e.x, 1621i, -70322i, -4728i))), Struct_1(-1i, _wgslsmith_f_op_f32(max(var_1.b, 203f)), _wgslsmith_add_u32(var_0.x, var_1.c), !vec2<bool>(var_1.d.x, true), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.e.x, 0i, 22231i, var_1.e.x), vec4<i32>(var_1.a, var_1.a, -36712i, var_1.e.x)), _wgslsmith_mod_vec4_i32(var_1.e, var_1.e))), var_0.x), var_1.d, var_1.e);
    let var_3 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<u32>(_wgslsmith_mod_u32(var_1.c, 58083u), 27934u), var_0.ww, false) ^ _wgslsmith_clamp_vec2_u32(var_0.yz, vec2<u32>(countOneBits(14289u), var_2.c), ~var_0.zy));
}

