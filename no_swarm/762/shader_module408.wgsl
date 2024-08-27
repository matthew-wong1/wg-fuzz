struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<bool>,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, 4294967295u, 1987f, vec2<u32>(103202u, 0u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec3<f32>) -> bool {
    var var_0 = 1u;
    let var_1 = arg_0.b;
    var_0 = u_input.c.x;
    var var_2 = arg_0;
    var var_3 = arg_0.d.b < reverseBits(_wgslsmith_dot_vec2_u32(var_1.c.d, vec2<u32>(_wgslsmith_clamp_u32(arg_1.d.x, 4294967295u, arg_0.d.b), var_2.a.b)));
    return true;
}

fn func_4(arg_0: vec3<bool>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-259f + -1019f) - -581f));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-global0.c))) + _wgslsmith_f_op_f32(997f + global0.c))));
    var_0 = global0.c;
    var var_1 = 1i;
    var_1 = _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(u_input.a.xyy, ~vec3<i32>(_wgslsmith_clamp_i32(u_input.b, u_input.a.x, 53334i), ~u_input.b, -u_input.a.x)), -_wgslsmith_mod_i32(u_input.a.x, u_input.a.x));
    return vec3<bool>(!select(func_3(Struct_4(Struct_1(true, u_input.c.x, 2709f, u_input.c), Struct_2(vec3<i32>(u_input.a.x, 0i, 63209i), vec4<bool>(arg_0.x, false, false, global0.a), Struct_1(arg_0.x, u_input.c.x, -135f, vec2<u32>(u_input.c.x, global0.b))), vec3<bool>(arg_0.x, global0.a, global0.a), Struct_1(true, global0.d.x, global0.c, vec2<u32>(global0.d.x, u_input.c.x)), -1390f), Struct_1(true, 4294967295u, -948f, u_input.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c, global0.c, global0.c))), global0.a, global0.a), !(!global0.a), true);
}

fn func_2() -> vec3<bool> {
    var var_0 = global0.c;
    var_0 = _wgslsmith_f_op_f32(-983f * _wgslsmith_f_op_f32(-815f * global0.c));
    let var_1 = Struct_4(Struct_1(global0.c < -1207f, ~(~select(55784u, 4294967295u, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2544f + -1000f)), u_input.c), Struct_2(u_input.a.xwx, vec4<bool>(true, global0.a & !global0.a, true, true), Struct_1(any(vec2<bool>(true, false)), global0.d.x, global0.c, vec2<u32>(u_input.c.x & global0.d.x, ~u_input.c.x))), select(vec3<bool>(false != !global0.a, false, true), vec3<bool>(global0.a, true, (global0.a & global0.a) != all(vec2<bool>(global0.a, false))), global0.a), Struct_1(all(vec3<bool>(true, global0.a, global0.a | global0.a)), reverseBits(u_input.c.x) >> (global0.d.x % 32u), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(global0.c)), -733f, -1807f != global0.c)))), vec2<u32>(1u, 25611u)), _wgslsmith_f_op_f32(max(-876f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var_0 = var_1.d.c;
    let var_2 = var_1.b;
    return func_4(vec3<bool>(!func_3(var_1, Struct_1(global0.a, var_1.a.d.x, var_2.c.c, global0.d), vec3<f32>(var_1.e, var_2.c.c, 665f)), any(vec2<bool>(false | var_1.a.a, var_2.c.a)), !(var_2.c.c != 784f)));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec4<i32>, arg_3: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(124f, -686f, _wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(arg_3 - 631f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-986f, global0.c), 528f, 1f, _wgslsmith_f_op_f32(global0.c * arg_1.d.c))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 - -1907f) + _wgslsmith_f_op_f32(-arg_1.b.c.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_3, -373f)), -2145f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.c)) * -1691f), arg_3)));
    let var_1 = Struct_4(Struct_1(global0.a, ~(~arg_1.d.b), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-1522f)), arg_1.b.c.c)), ~arg_1.d.d), arg_1.b, !(!arg_1.c), arg_1.a, -346f);
    let var_2 = Struct_1(any(vec4<bool>(func_2().x, func_3(arg_1, Struct_1(global0.a, 0u, arg_3, u_input.c), _wgslsmith_f_op_vec3_f32(select(var_0.yxw, var_0.wxx, true))), func_3(var_1, arg_1.b.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(-481f, arg_1.e, var_1.a.c) * vec3<f32>(arg_3, var_0.x, global0.c))), 51332u >= var_1.a.d.x)), reverseBits(reverseBits(abs(var_1.a.d.x))), var_1.b.c.c, global0.d);
    var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(arg_3)), _wgslsmith_f_op_f32(-var_1.b.c.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-380f, global0.c, global0.a)), _wgslsmith_f_op_f32(floor(1845f)))) + arg_3), var_1.e, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_3)))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-2026f)))), 994f, var_1.a.c, _wgslsmith_f_op_f32(round(arg_3))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2139f, 1000f, var_2.c, global0.c)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_3, 162f, var_0.x, arg_3), vec4<f32>(-1627f, var_2.c, arg_1.d.c, var_2.c))))) + vec4<f32>(1077f, _wgslsmith_f_op_f32(2096f - var_2.c), -1000f, _wgslsmith_f_op_f32(arg_1.a.c + var_0.x)))));
    var var_3 = true;
    return Struct_2(_wgslsmith_add_vec3_i32(vec3<i32>(1i, _wgslsmith_sub_i32(arg_1.b.a.x, 10287i) >> (u_input.c.x % 32u), ~_wgslsmith_mod_i32(-1i, 1i)), -vec3<i32>(max(-22933i, arg_0.a.x), reverseBits(arg_2.x), 3859i | arg_1.b.a.x)), vec4<bool>(true, global0.a, arg_1.a.a, 61975u > _wgslsmith_sub_u32(~13499u, ~var_2.b)), Struct_1(!any(vec2<bool>(global0.a, var_2.a)) || func_3(Struct_4(Struct_1(arg_1.a.a, var_2.b, var_1.b.c.c, vec2<u32>(21050u, 0u)), Struct_2(vec3<i32>(u_input.b, 2147483647i, 2147483647i), vec4<bool>(global0.a, arg_1.d.a, false, true), arg_1.d), var_1.c, Struct_1(arg_1.a.a, 0u, var_0.x, arg_1.a.d), 723f), var_1.b.c, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1.e, 1047f, global0.c)))), _wgslsmith_mod_u32(reverseBits(1u), ~(~u_input.c.x)), _wgslsmith_div_f32(-1330f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) * _wgslsmith_f_op_f32(select(768f, 1361f, arg_1.b.c.a)))), ~vec2<u32>(global0.b, _wgslsmith_add_u32(38107u, u_input.c.x))));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1) -> vec2<i32> {
    let var_0 = func_5(Struct_3(u_input.a.www, 14227i), Struct_4(Struct_1(global0.a, firstTrailingBit(u_input.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c - arg_1.c)), countOneBits(global0.d)), Struct_2(_wgslsmith_mult_vec3_i32(u_input.a.wwx, select(vec3<i32>(u_input.b, u_input.b, u_input.a.x), u_input.a.wwz, vec3<bool>(arg_1.a, arg_1.a, global0.a))), select(!vec4<bool>(true, true, arg_1.a, false), vec4<bool>(arg_1.a, arg_1.a, global0.a, false), true), Struct_1(all(vec2<bool>(global0.a, arg_1.a)), arg_1.b, _wgslsmith_f_op_f32(-arg_1.c), u_input.c)), select(select(!vec3<bool>(true, global0.a, true), func_2(), !vec3<bool>(arg_1.a, true, true)), func_2(), vec3<bool>(false, global0.a, any(vec2<bool>(arg_1.a, arg_1.a)))), arg_1, global0.c), select(u_input.a | u_input.a, vec4<i32>(max(-2147483647i, -1i), -19741i, 1i, _wgslsmith_mult_i32(-1i, -2147483647i)) << (_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(arg_0.x, arg_0.x, arg_1.d.x, u_input.c.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.x, arg_1.d.x, arg_1.b, 28826u), vec4<u32>(global0.b, 4294967295u, 39877u, global0.b)), vec4<u32>(u_input.c.x, arg_0.x, u_input.c.x, 36291u)) % vec4<u32>(32u)), !(!vec4<bool>(global0.a, global0.a, false, false))), 219f);
    global0 = Struct_1(!global0.a, arg_1.b, _wgslsmith_f_op_f32(select(-1318f, 2019f, -1120f > _wgslsmith_f_op_f32(ceil(-682f)))), var_0.c.d & select(vec2<u32>(~1u, 72330u), abs(arg_1.d), vec2<bool>(global0.a, true)));
    var var_1 = _wgslsmith_sub_i32(u_input.b, -(-2147483647i << (u_input.c.x % 32u)));
    var_1 = var_0.a.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -310f)), -599f, arg_1.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1337f, 771f, var_0.c.c, 632f), vec4<f32>(arg_1.c, arg_1.c, var_0.c.c, global0.c), var_0.b)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.c, 1000f, -322f, -533f))), global0.c < -1080f)))))));
    return u_input.a.yz;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(false | global0.a, 0u, -1950f, _wgslsmith_mod_vec2_u32(u_input.c, global0.d));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(~reverseBits(global0.d), Struct_1(global0.a, ~firstLeadingBit(u_input.c.x), global0.c, ~(~vec2<u32>(4294967295u, 412u)))));
}

