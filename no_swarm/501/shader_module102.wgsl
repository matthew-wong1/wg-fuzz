struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1392f);

var<private> global1: Struct_1 = Struct_1(-1323f);

var<private> global2: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(-2541f), Struct_1(-1158f), Struct_1(-296f), Struct_1(-210f), Struct_1(-816f), Struct_1(1507f), Struct_1(-1359f), Struct_1(-491f), Struct_1(-266f), Struct_1(-1000f), Struct_1(449f), Struct_1(-120f), Struct_1(-1083f), Struct_1(644f), Struct_1(-1523f), Struct_1(210f), Struct_1(1041f), Struct_1(1000f), Struct_1(-360f), Struct_1(-1256f), Struct_1(-1004f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -2542f));
    global1 = Struct_1(arg_1.a);
    global1 = arg_1;
    global2 = array<Struct_1, 21>();
    let var_1 = !vec4<bool>(!(var_0.a < _wgslsmith_f_op_f32(f32(-1f) * -461f)), true, !(~u_input.a != reverseBits(u_input.a)), _wgslsmith_f_op_f32(arg_1.a - 844f) > _wgslsmith_f_op_f32(f32(-1f) * -284f));
    return max(~0u ^ (countOneBits(u_input.a) << (u_input.a % 32u)), _wgslsmith_div_u32(14195u, abs(~31616u)));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<u32>) -> u32 {
    global1 = global2[_wgslsmith_index_u32(u_input.a, 21u)];
    let var_0 = global1.a > 881f;
    var var_1 = global2[_wgslsmith_index_u32(func_3(~_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, 14816i), _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(u_input.b, 2147483647i))) & abs(abs(vec2<i32>(57646i, 2147483647i))), Struct_1(global0.a)), 21u)];
    let var_2 = select(vec2<bool>(!var_0, true), vec2<bool>(true, all(vec3<bool>(true, any(vec2<bool>(var_0, false)), false))), select(vec2<bool>(false, any(vec2<bool>(var_0, var_0)) | all(vec2<bool>(true, var_0))), vec2<bool>(false, false), false));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1488f - _wgslsmith_f_op_f32(var_1.a - global0.a))) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    return select(~_wgslsmith_sub_u32(firstTrailingBit(1u), arg_1.x), 1u, !((~2147483647i & u_input.b) > _wgslsmith_add_i32(1i, u_input.b)));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: bool) -> Struct_1 {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(~((u_input.a | 40983u) & abs(0u))), max(_wgslsmith_clamp_u32(3738u, ~arg_1.x, u_input.a), _wgslsmith_mult_u32(abs(u_input.a >> (0u % 32u)), max(4294967295u, arg_1.x) >> (arg_1.x % 32u)))), 21u)];
    let var_1 = select(select(vec2<bool>(arg_2, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), !vec2<bool>(false, arg_2), select(vec2<bool>(arg_2, arg_2), vec2<bool>(false, false), vec2<bool>(false, false))), vec2<bool>(any(vec2<bool>(arg_2, arg_2)), arg_2 || false)), !(~arg_1.x > arg_1.x)), select(!(!(!vec2<bool>(true, arg_2))), vec2<bool>(!(!arg_2), true), !(!select(vec2<bool>(true, true), vec2<bool>(false, arg_2), arg_2))), vec2<bool>(true, all(select(!vec4<bool>(arg_2, true, false, arg_2), !vec4<bool>(arg_2, arg_2, arg_2, true), arg_2))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-global1.a));
    var var_3 = ~reverseBits(~(~1u));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec3<u32>, arg_3: Struct_1) -> f32 {
    let var_0 = 4294967295u;
    let var_1 = max(vec4<i32>(u_input.b, 1i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.b, u_input.b) | min(u_input.b, u_input.b), u_input.b), min(-1i << (~arg_2.x % 32u), reverseBits(reverseBits(u_input.b)))), min(vec4<i32>(-1i) * -(~vec4<i32>(u_input.b, u_input.b, u_input.b, 16587i)), -vec4<i32>(-72243i >> (u_input.a % 32u), u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, -1i, -17856i)), -22913i)));
    var var_2 = arg_0.a;
    let var_3 = vec4<u32>(u_input.a, ~u_input.a, 0u, ~u_input.a);
    var var_4 = func_4(var_1.xw, _wgslsmith_clamp_vec4_u32(var_3, var_3, firstLeadingBit(vec4<u32>(0u, _wgslsmith_mult_u32(var_3.x, arg_2.x), 11816u, arg_2.x))), select(false, select(all(select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(false, false, arg_1), vec3<bool>(true, arg_1, arg_1))), 0u >= func_2(vec3<f32>(arg_3.a, -1000f, 190f), vec2<u32>(4294967295u, arg_2.x)), true), ~u_input.b <= -(u_input.b | var_1.x)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-353f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_4.a)), global1.a))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1089f, -640f)) * _wgslsmith_f_op_f32(round(arg_3.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(global0.a);
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)), global0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(812f, global1.a)), _wgslsmith_f_op_f32(max(global0.a, global1.a))), global1.a))));
    global2 = array<Struct_1, 21>();
    var var_1 = select(vec3<bool>(any(vec2<bool>(true, true)), true, any(vec4<bool>(true, true, true, any(vec2<bool>(true, false))))), select(vec3<bool>(false, false, !all(vec3<bool>(true, true, true))), select(vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(true, true)), true, -42735i >= u_input.b), _wgslsmith_f_op_f32(func_1(global2[_wgslsmith_index_u32(1u, 21u)], true, vec3<u32>(81310u, u_input.a, 16292u), Struct_1(-716f))) > _wgslsmith_f_op_f32(sign(-1340f))), any(vec2<bool>(any(vec4<bool>(false, true, false, false)), true))), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    var var_2 = _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(~38074u, abs(u_input.a)), ~countOneBits(30205u), ~(u_input.a >> (4294967295u % 32u))), vec3<u32>(_wgslsmith_sub_u32(13126u, ~u_input.a), ~countOneBits(0u), ~firstTrailingBit(1u))) | ~_wgslsmith_mod_vec3_u32(~(~vec3<u32>(4294967295u, u_input.a, 25236u)), _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(u_input.a, 0u, 4294967295u), vec3<u32>(58492u, 1u, u_input.a)), max(vec3<u32>(49206u, u_input.a, 4294967295u), vec3<u32>(u_input.a, 4294967295u, u_input.a)), vec3<u32>(u_input.a, 4446u, 1u) | vec3<u32>(u_input.a, u_input.a, 25141u)));
    let var_3 = _wgslsmith_mod_vec3_u32(vec3<u32>(reverseBits(u_input.a), 36050u, 21883u), vec3<u32>(~func_3(vec2<i32>(-2147483647i, u_input.b), Struct_1(-1202f)), countOneBits(10381u), _wgslsmith_div_u32(u_input.a, 1u)) ^ ~vec3<u32>(20334u, abs(1u), 4294967295u));
    global1 = Struct_1(var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(11311i, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_div_i32(u_input.b, -1i), _wgslsmith_div_i32(18962i, u_input.b)), vec2<i32>(u_input.b >> (1u % 32u), select(u_input.b, -31839i, true)))), 1u, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(func_1(Struct_1(global1.a), false, var_3, global2[_wgslsmith_index_u32(64809u, 21u)]))), global0.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), global1.a) * vec2<f32>(-1378f, global0.a)))), reverseBits(vec2<u32>(u_input.a, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, 29736u, 1u, var_2.x), vec4<u32>(var_3.x, u_input.a, u_input.a, var_2.x)))), ~_wgslsmith_mult_vec3_i32(max(select(vec3<i32>(u_input.b, u_input.b, 2147483647i), vec3<i32>(29010i, 32993i, 30191i), vec3<bool>(var_1.x, var_1.x, var_1.x)), -vec3<i32>(2147483647i, u_input.b, u_input.b)), max(_wgslsmith_clamp_vec3_i32(vec3<i32>(45364i, u_input.b, -27648i), vec3<i32>(-44911i, u_input.b, u_input.b), vec3<i32>(-2147483647i, u_input.b, u_input.b)), -vec3<i32>(1i, 0i, u_input.b))));
}

