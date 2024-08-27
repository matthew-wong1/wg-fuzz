struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec2<u32>) -> bool {
    var var_0 = vec3<bool>(select(global0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 1u), vec2<u32>(54703u, arg_0.x) | arg_0) != 2183u, 40909u > arg_0.x), true, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(167f - 456f)) >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(floor(-1127f)), any(vec4<bool>(true, true, true, false))))));
    var var_1 = !select(vec4<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(24581i, u_input.a)) != countOneBits(u_input.a), all(vec3<bool>(true, global0.x, false)), true, global0.x), !select(select(vec4<bool>(false, true, true, var_0.x), vec4<bool>(var_0.x, global0.x, false, false), vec4<bool>(false, global0.x, false, global0.x)), vec4<bool>(false, var_0.x, false, global0.x), !var_0.x), (true || global0.x) && false);
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1453f), 1f));
    var_0 = select(var_1.xww, select(vec3<bool>(var_0.x, !all(vec2<bool>(global0.x, global0.x)), all(!vec3<bool>(true, global0.x, true))), !var_1.zwy, all(var_0.yz)), var_0.x);
    let var_3 = Struct_2(vec4<i32>(_wgslsmith_div_i32(u_input.a, (i32(-1i) * -62581i) ^ u_input.a), -4877i, -u_input.a | 0i, 2147483647i), Struct_1(1368f, -46237i, var_0.xy), _wgslsmith_add_vec4_u32(~vec4<u32>(0u, 26630u, arg_0.x, arg_0.x) >> (_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 0u), vec4<u32>(4294967295u, 1u, arg_0.x, arg_0.x)), _wgslsmith_div_vec4_u32(vec4<u32>(arg_0.x, 31037u, 4294967295u, 4294967295u), vec4<u32>(arg_0.x, 28017u, 25417u, arg_0.x))) % vec4<u32>(32u)), abs(~abs(vec4<u32>(arg_0.x, 66073u, arg_0.x, 4294967295u)))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1159f), u_input.a, var_1.zx));
    return select(false, !select(!var_3.b.c.x, var_0.x, true) || !any(select(vec3<bool>(var_0.x, var_3.d.c.x, var_0.x), var_1.xyz, false)), var_3.b.a <= 1008f);
}

fn func_2(arg_0: u32) -> Struct_3 {
    let var_0 = ~_wgslsmith_mult_vec3_u32(~(~(~vec3<u32>(25333u, 61087u, arg_0))), countOneBits((vec3<u32>(42389u, 4294967295u, arg_0) & vec3<u32>(87791u, 0u, 1u)) ^ ~vec3<u32>(0u, arg_0, 0u)));
    global0 = select(select(select(vec2<bool>(global0.x, true), vec2<bool>(func_3(vec2<u32>(14999u, var_0.x)), any(vec3<bool>(true, global0.x, true))), vec2<bool>(true, true)), vec2<bool>(true, true), !select(vec2<bool>(global0.x, true), vec2<bool>(false, false), vec2<bool>(true, true))), select(vec2<bool>(!(var_0.x != 1u), func_3(vec2<u32>(4294967295u, arg_0))), select(select(!vec2<bool>(true, global0.x), vec2<bool>(false, false), !global0.x), !select(vec2<bool>(global0.x, false), vec2<bool>(true, global0.x), vec2<bool>(true, true)), !global0.x || true), select(!select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, global0.x), vec2<bool>(false, global0.x)), select(select(vec2<bool>(false, false), vec2<bool>(false, global0.x), global0.x), vec2<bool>(true, true), true), select(!vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, true)))), select(!select(!vec2<bool>(false, global0.x), !vec2<bool>(global0.x, global0.x), !global0.x), vec2<bool>(global0.x, global0.x), select(select(vec2<bool>(false, false), !vec2<bool>(true, global0.x), true), vec2<bool>(!global0.x, any(vec2<bool>(false, global0.x))), all(select(vec3<bool>(global0.x, false, false), vec3<bool>(global0.x, global0.x, true), vec3<bool>(true, global0.x, global0.x))))));
    let var_1 = ~(select(var_0.yz | vec2<u32>(15052u, var_0.x), ~var_0.zx, select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x), global0.x)) >> (abs(~vec2<u32>(46062u, arg_0)) % vec2<u32>(32u))) ^ _wgslsmith_mult_vec2_u32(var_0.zz, countOneBits(var_0.yy));
    var var_2 = all(select(!(!select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(true, global0.x, global0.x), true)), vec3<bool>(true, true, true), select(select(vec3<bool>(global0.x, false, false), vec3<bool>(global0.x, global0.x, global0.x), global0.x), !(!vec3<bool>(global0.x, true, true)), vec3<bool>(true, false, global0.x))));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1460f, _wgslsmith_f_op_f32(sign(-667f)), _wgslsmith_f_op_f32(round(-811f))))), firstLeadingBit(~u_input.a) ^ -25770i, min(~vec3<u32>(_wgslsmith_div_u32(0u, 4294967295u), var_1.x, ~var_1.x), countOneBits(var_0)));
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1310f - -1211f))), var_3.b, var_3.c, var_0);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: f32) -> Struct_1 {
    var var_0 = func_2(37494u);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(abs(409f)), _wgslsmith_mod_i32(abs(u_input.a), u_input.a), !select(select(select(vec2<bool>(global0.x, true), vec2<bool>(false, false), global0.x), select(vec2<bool>(global0.x, true), vec2<bool>(global0.x, true), vec2<bool>(global0.x, global0.x)), 0u > var_0.d.x), !(!vec2<bool>(global0.x, false)), global0.x));
    var_0 = func_2(~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(arg_1.x, arg_1.x, 4294967295u, 4294967295u), vec4<u32>(13437u, arg_1.x, var_0.d.x, var_0.d.x)), vec4<u32>(~4294967295u, var_0.d.x, ~4294967295u, 4294967295u)));
    let var_2 = Struct_2(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_div_i32(u_input.a, var_1.b), ~1i, var_0.c & -1i, u_input.a) << ((firstLeadingBit(vec4<u32>(1u, arg_1.x, var_0.d.x, 0u)) & vec4<u32>(arg_1.x, var_0.d.x, 29708u, 4294967295u)) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(~(vec4<i32>(3030i, 1i, -2147483647i, 16830i) & vec4<i32>(u_input.a, var_1.b, 2147483647i, u_input.a)), ~vec4<i32>(var_1.b, -22830i, var_0.c, var_0.c) | select(vec4<i32>(u_input.a, -24086i, var_1.b, u_input.a), vec4<i32>(u_input.a, 2147483647i, var_0.c, 2147483647i), vec4<bool>(var_1.c.x, global0.x, false, var_1.c.x)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(arg_2))))), -(~(-var_1.b)), !var_1.c), _wgslsmith_mod_vec4_u32(vec4<u32>(~1u, arg_1.x, var_0.d.x, var_0.d.x) << (reverseBits(vec4<u32>(arg_1.x, arg_1.x, var_0.d.x, var_0.d.x)) % vec4<u32>(32u)), max(_wgslsmith_div_vec4_u32(~vec4<u32>(106560u, 1u, 48429u, 4312u), ~vec4<u32>(16308u, arg_1.x, 4294967295u, arg_1.x)), ~vec4<u32>(6544u, 17198u, 137346u, 39718u) << (~vec4<u32>(1u, var_0.d.x, 1u, 8617u) % vec4<u32>(32u)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.b.x, _wgslsmith_f_op_f32(978f - 1325f)))), -28126i, vec2<bool>(global0.x, select(any(vec3<bool>(var_1.c.x, true, false)), any(vec4<bool>(true, var_1.c.x, true, true)), true || global0.x))));
    let var_3 = var_2.b;
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !vec2<bool>(true, global0.x);
    var var_0 = func_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-700f, -1088f, 1610f) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(250f, 1301f, 761f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(685f, 1000f, -655f), vec3<f32>(181f, -1555f, 1334f)))))), abs(~vec3<u32>(23350u, _wgslsmith_mod_u32(4294967295u, 1u), 1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-429f * 220f))) - -444f));
    var_0 = Struct_1(-1237f, 0i, func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.a, var_0.a)), ~(~(~vec3<u32>(19723u, 1u, 15363u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-765f * 1294f) + func_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.a, var_0.a, var_0.a), vec3<f32>(337f, var_0.a, var_0.a))), ~vec3<u32>(90842u, 40377u, 4294967295u), var_0.a).a)).c);
    var var_1 = _wgslsmith_add_vec4_i32(abs(select(vec4<i32>(var_0.b, u_input.a, _wgslsmith_mult_i32(u_input.a, u_input.a), _wgslsmith_div_i32(-1i, u_input.a)), ~vec4<i32>(-1i, u_input.a, 18551i, 30662i), vec4<bool>(true, true, true, true))), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(-countOneBits(vec4<i32>(-2147483647i, var_0.b, u_input.a, var_0.b)), _wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(var_0.b, u_input.a, var_0.b, var_0.b)), abs(vec4<i32>(u_input.a, 1261i, u_input.a, -1i)))), select(abs(firstTrailingBit(vec4<i32>(59236i, var_0.b, 16701i, -2147483647i))), ~vec4<i32>(u_input.a, u_input.a, var_0.b, u_input.a), vec4<bool>(all(vec3<bool>(global0.x, true, var_0.c.x)), var_0.a < var_0.a, false, true)), vec4<i32>(~var_0.b, u_input.a, (i32(-1i) * -1i) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(11032u, 51048u, 1u)) % 32u), var_0.b)));
    global0 = select(func_1(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1800f + 2789f))), 839f, -1158f), ~(~func_2(43659u).d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a, -1000f) + _wgslsmith_div_f32(224f, -1025f)) * var_0.a)).c, select(!var_0.c, var_0.c, var_0.c), var_0.c);
    global0 = var_0.c;
    let var_2 = _wgslsmith_sub_vec2_u32(vec2<u32>(19309u, 73365u), vec2<u32>(~(~(~1u)), func_2(abs(~39476u)).d.x));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - func_2(var_2.x).a), _wgslsmith_f_op_f32(-1f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-198f, var_0.a))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-func_2(var_2.x).b.zx) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1022f), _wgslsmith_f_op_f32(-var_0.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(max(1u, var_2.x), 4294967295u, 1u, _wgslsmith_clamp_u32(90034u, firstTrailingBit(var_2.x), _wgslsmith_div_u32(24433u, var_2.x) >> (4294967295u % 32u))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.a * 1f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(func_2(1u).d.x).b.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) - _wgslsmith_f_op_f32(-844f + -923f))))), 1087u, ~(~vec3<u32>(115686u, 0u, ~var_2.x)));
}

