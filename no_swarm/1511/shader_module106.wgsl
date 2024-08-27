struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<u32>(1u, 64173u), -260f, vec2<u32>(1u, 100666u)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<bool>) -> vec4<i32> {
    global0 = Struct_2(global0.a);
    global0 = Struct_2(global0.a);
    global0 = Struct_2(global0.a);
    global0 = Struct_2(Struct_1(~global0.a.c, _wgslsmith_f_op_f32(floor(1216f)), vec2<u32>(global0.a.a.x, _wgslsmith_clamp_u32(0u, global0.a.a.x, 4294967295u) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(6267u, 55196u, global0.a.a.x, 95158u), vec4<u32>(global0.a.c.x, 0u, global0.a.c.x, 15391u)))));
    global0 = Struct_2(global0.a);
    return vec4<i32>(~u_input.b, 30174i, countOneBits(_wgslsmith_div_i32(1i, _wgslsmith_mod_i32(1i, _wgslsmith_sub_i32(u_input.b, u_input.a)))), firstLeadingBit(-u_input.a));
}

fn func_3(arg_0: bool) -> bool {
    var var_0 = all(vec3<bool>(true, true, all(vec3<bool>(true, true, true)))) | true;
    let var_1 = Struct_1(vec2<u32>(_wgslsmith_mult_u32(global0.a.a.x | global0.a.c.x, 13879u), ~(~1u)) >> (max(~vec2<u32>(global0.a.c.x, 0u), _wgslsmith_clamp_vec2_u32(~vec2<u32>(global0.a.a.x, 39444u), vec2<u32>(global0.a.c.x, 0u), ~vec2<u32>(global0.a.a.x, 34030u))) % vec2<u32>(32u)), -1272f, reverseBits(vec2<u32>(24771u, 1u)));
    var var_2 = 38211u;
    let var_3 = select(select(select(select(vec3<bool>(true, arg_0, arg_0), select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, true, true), vec3<bool>(arg_0, arg_0, arg_0)), !arg_0), !select(vec3<bool>(true, arg_0, true), vec3<bool>(true, arg_0, false), arg_0), vec3<bool>(all(vec4<bool>(true, arg_0, arg_0, arg_0)), arg_0, false)), vec3<bool>(arg_0, arg_0, arg_0), !(!select(vec3<bool>(true, false, arg_0), vec3<bool>(arg_0, arg_0, arg_0), arg_0))), !(!vec3<bool>(any(vec4<bool>(false, false, arg_0, true)), false, all(vec4<bool>(false, true, true, arg_0)))), !(!((global0.a.b >= global0.a.b) == (false | arg_0))));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1000f + global0.a.b), var_1.b, _wgslsmith_f_op_f32(step(var_1.b, global0.a.b)), _wgslsmith_f_op_f32(-1429f * _wgslsmith_f_op_f32(global0.a.b - 928f)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-883f))) >= -1000f;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> Struct_2 {
    global0 = arg_0;
    let var_0 = !(false || all(vec3<bool>(true, true, true)));
    var var_1 = ~0u;
    var var_2 = -_wgslsmith_dot_vec4_i32(u_input.c, _wgslsmith_mod_vec4_i32(-func_2(vec2<bool>(var_0, true), vec3<bool>(var_0, true, var_0)), u_input.c));
    var var_3 = select(!vec4<bool>(_wgslsmith_f_op_f32(floor(global0.a.b)) != _wgslsmith_f_op_f32(arg_0.a.b + 2215f), var_0, func_3(all(vec4<bool>(var_0, var_0, var_0, var_0))), var_0 & true), !vec4<bool>(var_0, false, true, true), !vec4<bool>(all(select(vec4<bool>(false, var_0, true, var_0), vec4<bool>(true, var_0, var_0, var_0), vec4<bool>(var_0, false, true, var_0))), all(vec4<bool>(var_0, false, false, true)), var_0, var_0));
    return Struct_2(global0.a);
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1, arg_3: vec4<f32>) -> StorageBuffer {
    var var_0 = arg_0;
    var var_1 = func_1(Struct_2(Struct_1(abs(abs(var_0.a.a)), 1000f, _wgslsmith_sub_vec2_u32(arg_2.c, firstLeadingBit(arg_2.c)))), func_1(arg_0, Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 20044u), _wgslsmith_mult_vec2_u32(global0.a.a, vec2<u32>(1u, arg_2.c.x))), arg_0.a.b, ~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_1, arg_2.c.x), vec2<u32>(arg_2.a.x, 0u))), global0.a, _wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, global0.a.a.x) & global0.a.c, vec2<u32>(arg_1, 1u), select(true, false, false)), abs(~vec2<u32>(38574u, arg_1)))).a, func_1(arg_0, arg_2, global0.a, 24376u).a, reverseBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(17081u, arg_1, global0.a.a.x), vec3<u32>(arg_0.a.a.x, 26552u, 1u)))).a;
    var_0 = func_1(Struct_2(func_1(Struct_2(Struct_1(arg_2.a, -827f, arg_0.a.c)), func_1(Struct_2(Struct_1(vec2<u32>(37878u, 4294967295u), -374f, arg_0.a.a)), Struct_1(global0.a.c, -832f, vec2<u32>(42385u, var_0.a.c.x)), Struct_1(var_0.a.c, -109f, vec2<u32>(arg_2.c.x, global0.a.a.x)), arg_2.a.x).a, Struct_1(~global0.a.a, -149f, _wgslsmith_mult_vec2_u32(vec2<u32>(global0.a.c.x, 22531u), global0.a.a)), ~_wgslsmith_mult_u32(30045u, var_0.a.c.x)).a), func_1(Struct_2(global0.a), Struct_1(vec2<u32>(~31873u, select(arg_0.a.a.x, var_1.a.x, false)), _wgslsmith_div_f32(1054f, arg_3.x), reverseBits(vec2<u32>(var_1.c.x, 23696u))), var_0.a, ~4294967295u).a, arg_2, _wgslsmith_dot_vec3_u32(vec3<u32>(74661u, arg_0.a.c.x, arg_2.c.x), _wgslsmith_clamp_vec3_u32(firstTrailingBit(select(vec3<u32>(1u, arg_0.a.a.x, arg_0.a.a.x), vec3<u32>(4294967295u, 0u, arg_1), true)), _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.a.c.x, arg_2.c.x, 0u), vec3<u32>(var_0.a.c.x, var_1.c.x, 0u)), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.a.a.x, 41269u, var_0.a.a.x), vec3<u32>(arg_1, global0.a.c.x, 1u))), ~countOneBits(vec3<u32>(26388u, 4294967295u, arg_0.a.c.x)))));
    var var_2 = arg_0;
    var var_3 = func_1(Struct_2(arg_0.a), arg_2, func_1(arg_0, Struct_1(var_2.a.a >> (vec2<u32>(var_1.c.x, 27025u) % vec2<u32>(32u)), -1016f, var_0.a.a), func_1(Struct_2(Struct_1(vec2<u32>(1u, arg_2.a.x), 944f, vec2<u32>(1u, 20381u))), Struct_1(var_1.c, -1912f, var_1.c ^ global0.a.c), var_2.a, _wgslsmith_clamp_u32(var_2.a.c.x, _wgslsmith_add_u32(0u, arg_0.a.c.x), ~var_1.c.x)).a, var_2.a.a.x).a, countOneBits(abs(arg_2.c.x)));
    return StorageBuffer(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(var_2.a.c.x, var_0.a.a.x), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_3.a.c.x, 18983u), vec3<u32>(var_0.a.a.x, 1u, var_0.a.a.x)), var_0.a.a.x), abs(abs(1u))), select(~vec3<u32>(1u, var_3.a.a.x, global0.a.c.x), max(vec3<u32>(var_0.a.a.x, arg_0.a.a.x, arg_2.c.x), _wgslsmith_sub_vec3_u32(vec3<u32>(global0.a.a.x, arg_0.a.c.x, 4294967295u), vec3<u32>(1u, 0u, 11653u))), true)), vec4<i32>(-32825i, 0i, _wgslsmith_div_i32(i32(-1i) * -74098i, -1i), u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a.b;
    var_0 = _wgslsmith_f_op_f32(sign(-526f));
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-979f, 422f))), _wgslsmith_f_op_f32(min(-460f, _wgslsmith_f_op_f32(global0.a.b - global0.a.b))), true)), _wgslsmith_f_op_f32(ceil(global0.a.b)), 1401f)));
    var var_2 = global0.a;
    var var_3 = global0.a;
    let x = u_input.a;
    s_output = func_4(func_1(Struct_2(Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(global0.a.c.x, 27647u), vec2<u32>(4294967295u, 46258u)), -1863f, global0.a.a)), Struct_1(vec2<u32>(firstTrailingBit(var_3.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 90156u), var_3.c)), _wgslsmith_f_op_f32(sign(var_3.b)), ~var_3.c), Struct_1(vec2<u32>(~var_3.c.x, abs(var_2.a.x)), var_3.b, min(vec2<u32>(24876u, var_3.a.x), vec2<u32>(0u, 0u))), var_2.a.x), abs(global0.a.c.x), Struct_1(~vec2<u32>(75367u, var_2.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1533f, var_2.b))), _wgslsmith_mult_vec2_u32(vec2<u32>(95029u, ~20447u), min(~vec2<u32>(global0.a.c.x, 45646u), vec2<u32>(global0.a.a.x, var_3.c.x)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(global0.a.b, 1999f), _wgslsmith_f_op_f32(max(var_1.x, -1000f))), global0.a.b, _wgslsmith_f_op_f32(-var_2.b), _wgslsmith_div_f32(global0.a.b, 1367f)))));
}

