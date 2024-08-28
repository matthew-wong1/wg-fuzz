struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<u32>, 6>;

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(-159f, vec3<bool>(true, false, true)), Struct_1(210f, vec3<bool>(true, false, false)), Struct_1(1000f, vec3<bool>(false, true, true)), Struct_1(-328f, vec3<bool>(true, false, false)), Struct_1(985f, vec3<bool>(true, false, false)), Struct_1(-149f, vec3<bool>(true, true, true)), Struct_1(-514f, vec3<bool>(false, false, true)), Struct_1(-634f, vec3<bool>(false, true, true)), Struct_1(1134f, vec3<bool>(true, false, false)), Struct_1(722f, vec3<bool>(false, true, true)), Struct_1(1000f, vec3<bool>(false, false, true)), Struct_1(-738f, vec3<bool>(false, true, true)), Struct_1(-758f, vec3<bool>(true, true, true)), Struct_1(462f, vec3<bool>(true, true, true)), Struct_1(1902f, vec3<bool>(false, true, true)), Struct_1(1334f, vec3<bool>(false, true, false)), Struct_1(864f, vec3<bool>(true, true, false)), Struct_1(-290f, vec3<bool>(false, false, true)), Struct_1(-933f, vec3<bool>(true, true, false)), Struct_1(-1256f, vec3<bool>(true, true, true)), Struct_1(-192f, vec3<bool>(false, false, false)), Struct_1(-1101f, vec3<bool>(true, true, false)), Struct_1(-359f, vec3<bool>(true, false, true)), Struct_1(1192f, vec3<bool>(false, true, false)), Struct_1(-462f, vec3<bool>(false, false, true)), Struct_1(1410f, vec3<bool>(false, false, false)), Struct_1(-480f, vec3<bool>(false, true, true)), Struct_1(1000f, vec3<bool>(true, true, true)), Struct_1(587f, vec3<bool>(false, false, false)));

var<private> global4: array<Struct_1, 2>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = abs(1i | _wgslsmith_mult_i32(u_input.b.x, -2147483647i));
    var var_1 = _wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(u_input.b.x, ~(-38599i), -15354i)), vec3<i32>(u_input.b.x, ~u_input.b.x, 1i), -((firstTrailingBit(u_input.b) >> ((vec3<u32>(u_input.a.x, u_input.a.x, 56430u) ^ u_input.a) % vec3<u32>(32u))) << (~vec3<u32>(u_input.a.x, 3067u, 8162u) % vec3<u32>(32u))));
    global0 = global3[_wgslsmith_index_u32(~66772u, 29u)];
    var_1 = vec3<i32>(~(-2147483647i & (1i << (u_input.a.x % 32u))) ^ var_1.x, 46734i, var_1.x >> (abs(~firstTrailingBit(u_input.a.x)) % 32u));
    global1 = array<vec3<u32>, 6>();
    return ~vec4<i32>(_wgslsmith_mult_i32(-(var_1.x >> (u_input.a.x % 32u)), abs(-2493i)), countOneBits(~var_1.x ^ ~u_input.b.x), u_input.b.x, 0i);
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global1 = array<vec3<u32>, 6>();
    let var_0 = arg_2;
    var var_1 = _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32((vec4<i32>(u_input.b.x, 21923i, 2147483647i, u_input.b.x) >> (vec4<u32>(1u, u_input.a.x, 2624u, 13178u) % vec4<u32>(32u))) << (reverseBits(vec4<u32>(0u, u_input.a.x, u_input.a.x, 20279u)) % vec4<u32>(32u)), min(func_3(global4[_wgslsmith_index_u32(0u, 2u)]), vec4<i32>(-3187i, u_input.b.x, 2147483647i, 11644i) << (vec4<u32>(u_input.a.x, 33689u, u_input.a.x, 3301u) % vec4<u32>(32u)))) << (~select(vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x) & vec4<u32>(0u, 26131u, u_input.a.x, 1u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), select(true, true, false)) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_clamp_i32(39223i << (u_input.a.x % 32u), ~(-1i), ~u_input.b.x), _wgslsmith_sub_i32(u_input.b.x, -65881i), min(abs(u_input.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 16219i, 1i, u_input.b.x), vec4<i32>(47708i, u_input.b.x, u_input.b.x, u_input.b.x))), _wgslsmith_div_i32(max(u_input.b.x, 0i), -1i)) >> (~select(~vec4<u32>(1u, u_input.a.x, 13388u, 4294967295u), max(vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x), vec4<u32>(1u, 25078u, u_input.a.x, u_input.a.x)), true) % vec4<u32>(32u)));
    let var_2 = global3[_wgslsmith_index_u32(9820u, 29u)];
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-884f * _wgslsmith_f_op_f32(round(-416f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -703f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1135f, arg_1.a))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(581f))) * 862f), global0.a, !any(vec2<bool>(false, global2.b.x)) != select(global0.b.x, false, arg_1.b.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_1.a)), 316f))), _wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(719f * -2246f) + _wgslsmith_f_op_f32(global2.a + 373f))))));
    return reverseBits(u_input.a.x);
}

fn func_1(arg_0: vec4<bool>) -> vec4<i32> {
    let var_0 = ~max(_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(~func_2(478f, global3[_wgslsmith_index_u32(u_input.a.x, 29u)], Struct_1(-345f, arg_0.xwx)), 6u)], ~global1[_wgslsmith_index_u32(1017u, 6u)]), 1u);
    var var_1 = global4[_wgslsmith_index_u32(abs(var_0), 2u)];
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(136f, _wgslsmith_div_f32(global0.a, global0.a)))), select(vec3<bool>(global2.b.x, all(!global0.b.yy), !(false || arg_0.x)), !arg_0.yyx, select(!(!arg_0.wzz), var_1.b, any(var_1.b.xz))));
    let var_2 = ~vec2<u32>(u_input.a.x, _wgslsmith_div_u32(~u_input.a.x & ~u_input.a.x, 1u));
    global4 = array<Struct_1, 2>();
    return -(~(-select(vec4<i32>(-16504i, 0i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, 3012i, u_input.b.x, u_input.b.x), false) >> (min(vec4<u32>(1u, 4294967295u, 1u, var_0), select(vec4<u32>(1u, var_2.x, var_2.x, 64836u), vec4<u32>(var_0, u_input.a.x, u_input.a.x, 13060u), vec4<bool>(false, false, false, false))) % vec4<u32>(32u))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<i32>) -> vec3<f32> {
    global3 = array<Struct_1, 29>();
    var var_0 = ~(~52202u);
    let var_1 = select(select(global2.b.xy, !select(select(vec2<bool>(global2.b.x, global0.b.x), global0.b.xz, global0.b.zz), global2.b.zz, select(false, global0.b.x, true)), global0.b.yz), !select(select(global0.b.zx, vec2<bool>(false, true), false), vec2<bool>(!global0.b.x, any(vec3<bool>(true, false, true))), global0.b.x), -12229i != -_wgslsmith_div_i32(-43243i, u_input.b.x));
    var var_2 = _wgslsmith_clamp_vec3_i32(func_1(!vec4<bool>(!var_1.x, true, !global0.b.x, global2.b.x)).yxx, arg_1.yyz, _wgslsmith_div_vec3_i32(-u_input.b, vec3<i32>(-2147483647i, u_input.b.x, -1i)));
    let var_3 = vec3<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(var_2.x, -4281i), 1i), select(1i, 11464i, false), 0i) & vec3<i32>(0i, 11008i, _wgslsmith_dot_vec3_i32(~vec3<i32>(var_2.x, 0i, 37497i), ~(~vec3<i32>(arg_1.x, -2147483647i, 11557i))));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.yyy), arg_0.yww);
}

fn func_5(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: i32, arg_3: vec3<bool>) -> Struct_1 {
    global0 = global3[_wgslsmith_index_u32(~(u_input.a.x << (_wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.a.x, 48490u), u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, 31168u)) % 32u)) ^ 8800u, 29u)];
    var var_0 = _wgslsmith_mult_i32(-1i, arg_2) ^ -445i;
    var var_1 = arg_0;
    var var_2 = _wgslsmith_mod_i32(u_input.b.x, -_wgslsmith_div_i32(2147483647i, _wgslsmith_mult_i32(arg_2, u_input.b.x) >> (u_input.a.x % 32u)));
    let var_3 = var_1.x;
    return global4[_wgslsmith_index_u32(96228u ^ min(_wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(4294967295u, 4294967295u, u_input.a.x, 4294967295u)), _wgslsmith_dot_vec3_u32(~u_input.a, ~vec3<u32>(u_input.a.x, u_input.a.x, 4271u))), u_input.a.x), 2u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1256f * 1141f)), vec3<bool>(global0.b.x, !(global2.b.x && select(true, false, global2.b.x)), true));
    let var_1 = select(_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-5217i, 20456i), -max(vec2<i32>(-1i, u_input.b.x), vec2<i32>(30168i, u_input.b.x))), vec2<i32>(u_input.b.x, u_input.b.x | (i32(-1i) * -2147483647i))), -firstLeadingBit(_wgslsmith_mult_vec2_i32(-u_input.b.xy, u_input.b.xy | u_input.b.zy)), false);
    global0 = func_5(!global0.b.zx, _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -402f), _wgslsmith_f_op_f32(-972f + 1244f), _wgslsmith_f_op_f32(trunc(global0.a)), 1000f)), -_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.x, u_input.b.x, -2147483647i, u_input.b.x), -vec4<i32>(var_1.x, var_1.x, -4282i, 0i), func_1(vec4<bool>(false, false, true, global0.b.x))))), firstLeadingBit(_wgslsmith_mod_i32(1i, countOneBits(firstLeadingBit(var_1.x)))), var_0.b);
    global4 = array<Struct_1, 2>();
    var var_2 = func_5(!(!vec2<bool>(false, global0.b.x)), vec3<f32>(var_0.a, _wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-1911f, var_0.a))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1536f + _wgslsmith_f_op_f32(max(379f, var_0.a))) - _wgslsmith_f_op_f32(func_5(vec2<bool>(global2.b.x, var_0.b.x), vec3<f32>(154f, global2.a, -1000f), var_1.x, global2.b).a * global2.a))), select(func_1(vec4<bool>(true, any(vec3<bool>(var_0.b.x, global0.b.x, false)), any(vec3<bool>(global0.b.x, false, false)), !global2.b.x)).x, ~_wgslsmith_dot_vec3_i32(vec3<i32>(-7915i, 2147483647i, 20561i), u_input.b), var_0.b.x), global0.b).a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a - _wgslsmith_div_f32(-301f, _wgslsmith_f_op_f32(-global2.a))), var_0.a), vec2<u32>(~6504u, (0u | _wgslsmith_mult_u32(u_input.a.x, u_input.a.x)) << ((_wgslsmith_div_u32(11593u, 1u) | ~u_input.a.x) % 32u)), _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.b.zy, u_input.b.xx, ~var_1), vec2<i32>(countOneBits(-2147483647i), _wgslsmith_mod_i32(-22114i, 1i))), _wgslsmith_div_vec2_i32(max(func_1(vec4<bool>(false, global2.b.x, false, global0.b.x)).xz, ~vec2<i32>(-12683i, -2672i)) ^ max(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, var_1.x), vec2<i32>(var_1.x, u_input.b.x)), var_1 | vec2<i32>(51308i, var_1.x)), vec2<i32>(_wgslsmith_div_i32(-1i, -u_input.b.x), i32(-1i) * -var_1.x)), max(abs(u_input.a.x) & _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.a.x, 77620u), u_input.a.x), 28322u));
}

