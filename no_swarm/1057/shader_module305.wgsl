struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-924f, -1423f, -372f, -111f);

var<private> global1: vec2<i32> = vec2<i32>(-20923i, -39957i);

var<private> global2: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(1u, Struct_1(vec4<u32>(12007u, 4294967295u, 0u, 1u), false), false), Struct_2(4294967295u, Struct_1(vec4<u32>(50302u, 39165u, 7712u, 70222u), false), false), Struct_2(1u, Struct_1(vec4<u32>(0u, 33967u, 24574u, 0u), true), true), Struct_2(25201u, Struct_1(vec4<u32>(15578u, 35500u, 4956u, 4294967295u), false), false), Struct_2(4294967295u, Struct_1(vec4<u32>(0u, 0u, 1u, 28812u), false), true), Struct_2(4294967295u, Struct_1(vec4<u32>(14323u, 1u, 1u, 1u), true), false), Struct_2(26200u, Struct_1(vec4<u32>(0u, 30155u, 10707u, 15609u), false), false), Struct_2(21408u, Struct_1(vec4<u32>(51525u, 4294967295u, 1u, 1414u), false), true), Struct_2(1u, Struct_1(vec4<u32>(0u, 0u, 4294967295u, 2215u), false), true), Struct_2(25311u, Struct_1(vec4<u32>(17128u, 4294967295u, 1u, 20579u), false), true), Struct_2(4294967295u, Struct_1(vec4<u32>(22808u, 21576u, 4294967295u, 11676u), false), true), Struct_2(0u, Struct_1(vec4<u32>(4294967295u, 1u, 32851u, 4294967295u), false), true), Struct_2(32704u, Struct_1(vec4<u32>(1u, 0u, 0u, 18349u), true), false), Struct_2(1u, Struct_1(vec4<u32>(71475u, 0u, 1u, 4294967295u), true), true), Struct_2(4294967295u, Struct_1(vec4<u32>(12595u, 1u, 1u, 64052u), false), false), Struct_2(0u, Struct_1(vec4<u32>(13678u, 0u, 31655u, 32516u), true), false), Struct_2(1u, Struct_1(vec4<u32>(1975u, 25442u, 4294967295u, 1u), true), true), Struct_2(4294967295u, Struct_1(vec4<u32>(0u, 4294967295u, 0u, 4294967295u), true), false), Struct_2(44596u, Struct_1(vec4<u32>(1u, 0u, 0u, 92399u), true), true), Struct_2(4294967295u, Struct_1(vec4<u32>(0u, 6845u, 4294967295u, 4294967295u), false), false), Struct_2(733u, Struct_1(vec4<u32>(23485u, 111863u, 4294967295u, 9197u), true), false), Struct_2(63465u, Struct_1(vec4<u32>(293u, 1u, 2704u, 0u), true), false), Struct_2(0u, Struct_1(vec4<u32>(1565u, 98202u, 27376u, 8796u), true), true), Struct_2(0u, Struct_1(vec4<u32>(5600u, 74225u, 4294967295u, 66193u), false), false), Struct_2(4294967295u, Struct_1(vec4<u32>(0u, 4294967295u, 7108u, 1u), true), false), Struct_2(4294967295u, Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 0u), true), true), Struct_2(0u, Struct_1(vec4<u32>(0u, 58818u, 3015u, 4294967295u), false), true), Struct_2(4294967295u, Struct_1(vec4<u32>(0u, 7489u, 63962u, 54016u), true), false), Struct_2(4294967295u, Struct_1(vec4<u32>(4294967295u, 7455u, 9470u, 41431u), true), false), Struct_2(0u, Struct_1(vec4<u32>(1u, 1u, 11869u, 0u), false), true), Struct_2(24854u, Struct_1(vec4<u32>(1u, 72943u, 13761u, 0u), true), true), Struct_2(45228u, Struct_1(vec4<u32>(30359u, 49754u, 78870u, 4294967295u), true), false));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec4<i32>) -> vec4<bool> {
    var var_0 = reverseBits(max(arg_1.x | _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 18112u, 1u, 1u), u_input.b), arg_0.a));
    var var_1 = select(vec3<bool>(true, all(vec3<bool>(arg_0.c, arg_0.b.b, arg_0.c)), arg_0.c), vec3<bool>(!select(arg_0.c, arg_0.c, true), !all(vec4<bool>(arg_0.b.b, false, true, arg_0.b.b)) | !(global0.x == -429f), false && arg_0.c), !vec3<bool>(arg_0.c, true, arg_0.b.b));
    global1 = _wgslsmith_div_vec2_i32(arg_2.yx, arg_2.wx);
    var var_2 = Struct_2(arg_0.b.a.x, Struct_1(~arg_0.b.a ^ vec4<u32>(0u, ~0u, firstLeadingBit(arg_0.a), _wgslsmith_dot_vec3_u32(arg_0.b.a.xyz, vec3<u32>(20461u, 1u, 1u))), all(vec3<bool>(var_1.x, arg_0.c, var_1.x)) && arg_0.c), 0u != u_input.a);
    let var_3 = arg_0.b;
    return vec4<bool>(true, false, true, false);
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: i32) -> u32 {
    let var_0 = !(!func_3(global2[_wgslsmith_index_u32(u_input.a, 32u)], vec3<u32>(arg_0.a.x, arg_0.a.x, min(0u, u_input.a)), vec4<i32>(~0i, _wgslsmith_mult_i32(-10315i, -1i), u_input.c, arg_2)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-global0.yxz);
    var var_2 = Struct_1(vec4<u32>(~u_input.b.x, u_input.a, ~_wgslsmith_sub_u32(u_input.a, ~arg_0.a.x), abs(_wgslsmith_div_u32(1u, u_input.b.x) ^ _wgslsmith_mod_u32(u_input.a, 0u))), u_input.a > 5635u);
    var_2 = Struct_1((select(arg_0.a, var_2.a << (vec4<u32>(arg_0.a.x, 18077u, arg_0.a.x, var_2.a.x) % vec4<u32>(32u)), var_0.x) << (~var_2.a % vec4<u32>(32u))) | (~u_input.b >> (vec4<u32>(4294967295u, ~arg_0.a.x, ~arg_0.a.x, reverseBits(4294967295u)) % vec4<u32>(32u))), true);
    var var_3 = Struct_1(vec4<u32>(_wgslsmith_dot_vec2_u32(~firstLeadingBit(vec2<u32>(u_input.a, 1u)), _wgslsmith_clamp_vec2_u32(~u_input.b.yy, abs(var_2.a.yx), ~vec2<u32>(12906u, 15304u))), max(_wgslsmith_dot_vec3_u32(u_input.b.yxy << (vec3<u32>(arg_0.a.x, var_2.a.x, var_2.a.x) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.a.x, 1u, 65281u), vec3<u32>(11828u, 88912u, arg_0.a.x))), var_2.a.x), ~4294967295u, 0u), abs(_wgslsmith_mod_u32(select(var_2.a.x, arg_0.a.x, false), 25991u)) <= ~52049u);
    return 31914u;
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: vec2<u32>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = select(select(!func_3(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(49786u, arg_2.x, 1u, u_input.a), u_input.b), 32u)], ~arg_3.b.a.xyy, ~vec4<i32>(-2147483647i, -2147483647i, 0i, global1.x)).wxw, !select(!vec3<bool>(false, false, arg_3.c), vec3<bool>(arg_3.c, true, true), all(vec4<bool>(arg_3.b.b, false, true, false))), true), vec3<bool>(true, any(!vec2<bool>(arg_3.c, arg_3.b.b)) || !all(vec4<bool>(true, true, false, false)), false), true);
    let var_1 = vec2<i32>(abs(global1.x), -70613i);
    var var_2 = vec3<i32>(-1i) * -countOneBits(~(~vec3<i32>(32771i, u_input.c, global1.x)));
    let var_3 = vec4<f32>(1237f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1)))))), arg_1, 707f);
    global0 = var_3;
    return Struct_1(select(u_input.b, ~vec4<u32>(~arg_0, u_input.b.x, abs(arg_0), min(25865u, 0u)), var_0.x), true);
}

fn func_1(arg_0: f32, arg_1: f32) -> vec2<bool> {
    let var_0 = Struct_2(~65599u, func_4(countOneBits(_wgslsmith_mult_u32(~u_input.a, 27510u | u_input.a)), global0.x, u_input.b.ww, global2[_wgslsmith_index_u32(func_2(Struct_1(~vec4<u32>(u_input.a, u_input.b.x, 86855u, u_input.a), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * -150f) - _wgslsmith_f_op_f32(-arg_0)), ~max(-1i, -23527i)), 32u)]), false);
    global0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-578f, global0.x, -1000f, global0.x)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0, arg_0, -1124f, arg_1)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(2771f, 1146f, arg_0, arg_0))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1, arg_0, 1094f, -1074f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, global0.x, arg_1, 329f))), !select(vec4<bool>(true, false, false, false), vec4<bool>(var_0.b.b, var_0.c, true, var_0.b.b), vec4<bool>(var_0.c, var_0.b.b, true, false)))))));
    global1 = vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -44145i, u_input.c, u_input.c) << (vec4<u32>(u_input.b.x, u_input.a, var_0.a, 4294967295u) % vec4<u32>(32u)), ~vec4<i32>(-34791i, global1.x, u_input.c, global1.x)), 29379i) & _wgslsmith_mult_vec2_i32((~vec2<i32>(global1.x, 0i) & vec2<i32>(-1i, 1i)) >> (vec2<u32>(~var_0.a, ~0u) % vec2<u32>(32u)), min(vec2<i32>(u_input.c, 2147483647i ^ u_input.c), countOneBits(vec2<i32>(global1.x, global1.x)) & reverseBits(vec2<i32>(global1.x, global1.x))));
    let var_1 = vec4<bool>(var_0.b.b, all(func_3(Struct_2(~320u, func_4(u_input.a, 425f, var_0.b.a.xx, Struct_2(var_0.b.a.x, Struct_1(var_0.b.a, false), false)), all(vec2<bool>(true, var_0.c))), reverseBits(abs(vec3<u32>(var_0.a, 4294967295u, 18077u))), -(vec4<i32>(28234i, global1.x, u_input.c, u_input.c) << (vec4<u32>(41291u, u_input.a, 26234u, u_input.b.x) % vec4<u32>(32u))))), true, true);
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-1097f, arg_1, arg_1, -1000f), vec4<f32>(global0.x, global0.x, 1016f, arg_0)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(137f, global0.x, -267f, arg_0)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.x), arg_1, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-421f - 1000f))), 1514f)));
    return vec2<bool>(var_0.b.b, !(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(arg_1)))) <= 785f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(select(vec2<i32>(-7595i, -2147483647i), vec2<i32>(-2147483647i, u_input.c), true), vec2<i32>(-1i, 46650i)), vec2<i32>(u_input.c, 1i)), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(min(vec2<i32>(global1.x, global1.x), vec2<i32>(global1.x, global1.x)), reverseBits(vec2<i32>(-47729i, 38202i))), vec2<i32>(global1.x >> (u_input.b.x % 32u), -19407i))), max(_wgslsmith_clamp_vec2_i32(abs(vec2<i32>(-2147483647i, global1.x)), _wgslsmith_add_vec2_i32(-vec2<i32>(u_input.c, -1i), vec2<i32>(-2147483647i, 1i)), max(abs(vec2<i32>(1i, u_input.c)), -vec2<i32>(global1.x, u_input.c))), _wgslsmith_mult_vec2_i32(vec2<i32>(abs(0i), -4589i), vec2<i32>(-22142i, ~u_input.c))), select(vec2<bool>(true, true), func_1(_wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(global0.x + -766f), select(true, false, false))), _wgslsmith_div_f32(global0.x, _wgslsmith_div_f32(global0.x, 1932f))), vec2<bool>(true, !(-35733i > u_input.c))));
    let var_0 = func_3(Struct_2(0u, Struct_1(vec4<u32>(_wgslsmith_mod_u32(0u, 54167u), func_2(Struct_1(u_input.b, false), global0.x, u_input.c), _wgslsmith_div_u32(24323u, 35890u), u_input.b.x), any(vec4<bool>(true, true, false, true))), !any(func_1(global0.x, global0.x))), _wgslsmith_mod_vec3_u32(~u_input.b.yyy, u_input.b.xxw), _wgslsmith_mod_vec4_i32(countOneBits(firstTrailingBit(vec4<i32>(global1.x, global1.x, 2147483647i, -81537i))), vec4<i32>(-35122i, abs(_wgslsmith_add_i32(u_input.c, global1.x)), ~global1.x, 0i))).xx;
    let var_1 = func_4(_wgslsmith_dot_vec2_u32(u_input.b.zx, max(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.zy)), 1286f, ~u_input.b.xy, global2[_wgslsmith_index_u32(abs(4294967295u), 32u)]);
    let var_2 = var_0;
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(global0.x))))), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - global0.x)), _wgslsmith_f_op_f32(min(720f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x))))));
    var var_3 = global2[_wgslsmith_index_u32(0u, 32u)];
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_3.b.a.xwy), _wgslsmith_sub_vec4_u32(vec4<u32>(var_3.a, _wgslsmith_mod_u32(firstLeadingBit(var_1.a.x), _wgslsmith_sub_u32(4294967295u, 1u)), var_1.a.x, u_input.b.x), ((u_input.b & vec4<u32>(0u, u_input.b.x, var_3.a, 20943u)) & func_4(var_3.a, 150f, u_input.b.ww, Struct_2(0u, Struct_1(vec4<u32>(53605u, u_input.b.x, var_3.a, var_1.a.x), true), var_3.c)).a) << (vec4<u32>(_wgslsmith_mod_u32(var_1.a.x, var_1.a.x), _wgslsmith_clamp_u32(var_1.a.x, 15294u, var_1.a.x), _wgslsmith_add_u32(51389u, 1u), var_1.a.x & 4294967295u) % vec4<u32>(32u))), u_input.a, u_input.c);
}

