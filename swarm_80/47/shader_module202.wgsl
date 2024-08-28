struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: vec4<i32> = vec4<i32>(1i, -12i, 1i, -45723i);

var<private> global2: vec2<u32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<i32> {
    var var_0 = Struct_1(_wgslsmith_sub_vec3_i32(select(global1.zyw, ~u_input.a, vec3<bool>(true, true, true)) | _wgslsmith_div_vec3_i32(-u_input.a, vec3<i32>(1i, 20428i, u_input.b.x)), u_input.b), min(~global1.x, _wgslsmith_clamp_i32(-abs(global1.x), u_input.b.x, select(-u_input.b.x, -6104i, all(vec4<bool>(true, false, true, false))))), vec4<i32>(-1i, -(i32(-1i) * -1i), u_input.a.x, _wgslsmith_mult_i32(global1.x, i32(-1i) * -u_input.b.x)), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a.zy, vec2<i32>(1i, 48675i)), ~_wgslsmith_clamp_vec2_i32(u_input.b.xy, vec2<i32>(24924i, u_input.a.x), u_input.a.zx), -(~u_input.b.yz)), select(-(global1.ww & u_input.a.zx), firstTrailingBit(u_input.a.zz), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)))));
    let var_1 = Struct_1(var_0.a, -2147483647i, vec4<i32>(-14500i, u_input.b.x, 0i, var_0.c.x), _wgslsmith_mult_i32(~global1.x, -1i));
    let var_2 = -477f;
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -1052f, var_2) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.x, global0.x))), 2098f, -1000f) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2, var_2, -1681f))), vec3<f32>(global0.x, var_2, global0.x)))))));
    var_0 = var_1;
    return _wgslsmith_mod_vec4_i32(var_0.c, _wgslsmith_clamp_vec4_i32(var_0.c, var_1.c, -_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, var_1.c.x, -14600i, var_0.a.x) | var_1.c, -vec4<i32>(-2147483647i, var_1.c.x, -66233i, u_input.a.x), var_1.c | var_1.c)));
}

fn func_2(arg_0: i32) -> vec4<i32> {
    global1 = vec4<i32>(-1i) * -func_3();
    let var_0 = _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, 4294967295u, 22067u, 67292u), vec4<u32>(global2.x, global2.x, global2.x, global2.x)), ~global2.x)), vec2<u32>(countOneBits(global2.x), global2.x) & ~abs(vec2<u32>(10155u, 41599u))), ~vec2<u32>(1u, 1u) & vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, global2.x), max(57877u, 1u)), global2.x));
    var var_1 = Struct_1(abs(-(_wgslsmith_mult_vec3_i32(u_input.b, vec3<i32>(arg_0, arg_0, -18688i)) ^ ~u_input.b)), _wgslsmith_mod_i32(_wgslsmith_mod_i32(~6645i ^ _wgslsmith_add_i32(arg_0, 9067i), u_input.a.x), _wgslsmith_div_i32(-2147483647i, -global1.x) ^ 1i), vec4<i32>(_wgslsmith_mult_i32(2147483647i ^ (u_input.b.x << (5526u % 32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, 1i, 1i, global1.x), vec4<i32>(u_input.b.x, arg_0, arg_0, 0i) | vec4<i32>(arg_0, arg_0, -1i, -2147483647i))), u_input.b.x, _wgslsmith_add_i32(u_input.b.x, -20294i), firstLeadingBit(_wgslsmith_mult_i32(-1i, global1.x & -1i))), ~21167i);
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_f32(1496f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-881f)))) * _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(select(-1000f, 189f, true)))) + 124f));
    return select(firstLeadingBit(vec4<i32>(-4264i << (~global2.x % 32u), -12551i, countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, var_1.c.x), u_input.a.yy)), -38222i)), -vec4<i32>(_wgslsmith_add_i32(reverseBits(arg_0), 1i), ~(~global1.x), -(~var_1.a.x), abs(abs(2147483647i))), !vec4<bool>(var_2, true, any(select(vec3<bool>(var_2, true, var_2), vec3<bool>(var_2, false, var_2), vec3<bool>(false, true, false))), select(-53i, u_input.a.x, var_2) == _wgslsmith_div_i32(-9152i, u_input.a.x)));
}

fn func_1() -> vec4<i32> {
    global1 = func_2(u_input.a.x);
    global1 = ~vec4<i32>(0i, _wgslsmith_div_i32(func_3().x & 1i, 1i), _wgslsmith_div_i32(-4455i, -46260i), -1i);
    let var_0 = Struct_1(-u_input.a, global1.x, vec4<i32>(-10843i, u_input.b.x, -16906i, global1.x), i32(-1i) * -2147483647i);
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + global0.x))))));
    return func_2(reverseBits(abs(33173i))) << (_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global2.x, 4294967295u, global2.x, 4294967295u) << (vec4<u32>(4294967295u, global2.x, 4294967295u, global2.x) % vec4<u32>(32u)), ~vec4<u32>(0u, global2.x, 1u, global2.x)), vec4<u32>(11472u, ~abs(global2.x), ~firstLeadingBit(global2.x), 1u)) % vec4<u32>(32u));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    global2 = countOneBits((_wgslsmith_clamp_vec2_u32(~vec2<u32>(global2.x, 1u), abs(vec2<u32>(global2.x, 4294967295u)), ~vec2<u32>(global2.x, 4294967295u)) << (abs(vec2<u32>(global2.x, global2.x) >> (vec2<u32>(47755u, global2.x) % vec2<u32>(32u))) % vec2<u32>(32u))) ^ ~_wgslsmith_mult_vec2_u32(vec2<u32>(global2.x, 27596u), ~vec2<u32>(global2.x, global2.x)));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(select(arg_3, 1074f, false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(min(770f, _wgslsmith_f_op_f32(round(143f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, global0.x)) * _wgslsmith_f_op_f32(-225f * 1061f))) + global0.x));
    global1 = _wgslsmith_mult_vec4_i32(arg_2.c, arg_2.c);
    let var_0 = vec4<f32>(arg_3, 656f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(arg_3)))))), 376f);
    global2 = _wgslsmith_mult_vec2_u32(vec2<u32>(global2.x >> (firstLeadingBit(global2.x) % 32u), global2.x), vec2<u32>(~_wgslsmith_dot_vec3_u32(min(vec3<u32>(global2.x, global2.x, 1u), vec3<u32>(89994u, 0u, 1u)), vec3<u32>(0u, 39417u, 27435u) & vec3<u32>(global2.x, global2.x, 0u)), abs(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(global2.x, 0u), _wgslsmith_clamp_u32(global2.x, global2.x, 40393u), ~24356u))));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(!select(vec3<bool>(global1.x >= 1i, u_input.a.x != 14535i, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true)), reverseBits(global2.x) != (global2.x >> (4294967295u % 32u))), Struct_1(countOneBits(reverseBits(_wgslsmith_mult_vec3_i32(global1.xwz, vec3<i32>(-6305i, 13270i, u_input.a.x)))), 71920i, func_1(), -u_input.a.x), Struct_1(select(vec3<i32>(global1.x, u_input.b.x, global1.x), -global1.xyz, select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true)) | vec3<i32>(global1.x, u_input.a.x, _wgslsmith_add_i32(u_input.b.x, -22598i)), global1.x << (_wgslsmith_div_u32(global2.x, ~10340u) % 32u), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, global1.x, global1.x, global1.x), vec4<i32>(-1i, 55173i, u_input.a.x, 1i)) ^ global1.x, global1.x, global1.x, -1i), 43928i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x))));
    var var_1 = var_0;
    global0 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(global0.x - -377f), -1607f)));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -947f, 1405f)), vec3<f32>(global0.x, global0.x, 504f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 449f, global0.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 538f, global0.x))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-global0.x))), -1504f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-463f, global0.x)) + _wgslsmith_f_op_f32(global0.x - global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1330f + global0.x)))));
    var var_3 = i32(-1i) * -2147483647i;
    var var_4 = firstLeadingBit(countOneBits(~vec4<u32>(global2.x, 4294967295u, 1u, global2.x)) >> (_wgslsmith_add_vec4_u32(~(vec4<u32>(0u, 71040u, global2.x, global2.x) >> (vec4<u32>(global2.x, global2.x, 40939u, 1u) % vec4<u32>(32u))), vec4<u32>(19123u, 31073u, 12113u, 44706u) & abs(vec4<u32>(global2.x, 12953u, 4294967295u, 0u))) % vec4<u32>(32u)));
    let var_5 = vec2<u32>(var_4.x, 1u);
    var_4 = _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(var_4.x, _wgslsmith_add_u32(var_5.x, var_5.x), var_5.x, global2.x), (~vec4<u32>(global2.x, var_4.x, 0u, var_4.x) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(var_5.x, 1u, global2.x, var_5.x), vec4<u32>(4294967295u, global2.x, var_4.x, var_4.x))) ^ ~vec4<u32>(0u, var_5.x, var_4.x, 4294967295u)), countOneBits(select(select(vec4<u32>(var_4.x, 11798u, var_4.x, var_4.x) & vec4<u32>(20705u, global2.x, 4294967295u, 72088u), ~vec4<u32>(0u, var_5.x, var_4.x, var_4.x), vec4<bool>(true, false, true, true)), _wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(1u, global2.x, 1u, global2.x)), vec4<u32>(31644u, 50455u, 4294967295u, var_4.x)), ~global2.x >= 24418u)));
    var var_6 = firstLeadingBit(~global2.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_0.a.x, 10337i), abs(54787u), vec3<i32>(max(firstLeadingBit(var_1.c.x), -1i) << ((1u << ((var_4.x | 4294967295u) % 32u)) % 32u), func_2(~(-8862i)).x, abs(~var_0.b)), vec4<f32>(3028f, _wgslsmith_f_op_f32(trunc(var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(170f * var_2.x)))), var_2.x), vec2<u32>(4294967295u, 10045u));
}

