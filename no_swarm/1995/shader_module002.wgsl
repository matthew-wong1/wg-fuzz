struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 22>;

var<private> global1: i32;

var<private> global2: array<i32, 9> = array<i32, 9>(i32(-2147483648), 2147483647i, 2147483647i, 34167i, 0i, -41938i, -3610i, 0i, 34749i);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec3<bool>, arg_1: f32) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_1 - arg_1), arg_1, 625f, 908f) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(268f, 2616f, -224f, arg_1), vec4<f32>(-1102f, arg_1, 815f, arg_1))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1, -2429f, arg_1, arg_1)))))));
    let var_1 = firstTrailingBit(u_input.a);
    global0 = array<vec2<i32>, 22>();
    global2 = array<i32, 9>();
    var var_2 = Struct_2(Struct_1(0u, u_input.a.x, true, !(!(!arg_0.xz)), vec3<i32>(~32794i, _wgslsmith_dot_vec2_i32(vec2<i32>(13600i, u_input.b), vec2<i32>(-1i, -1589i)), 4002i) << (reverseBits(u_input.a << (vec3<u32>(var_1.x, u_input.a.x, var_1.x) % vec3<u32>(32u))) % vec3<u32>(32u))));
    return !(!(!vec2<bool>(arg_1 >= -2209f, false | var_2.a.d.x)));
}

fn func_2() -> bool {
    let var_0 = !(u_input.a.x >= (_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 17936u, 1u))) << (4294967295u % 32u)));
    let var_1 = vec2<u32>(max(u_input.a.x, u_input.a.x ^ 97448u) ^ _wgslsmith_add_u32(firstLeadingBit(12467u) << (select(u_input.a.x, 1u, var_0) % 32u), 1u), 0u);
    var var_2 = u_input.a;
    var var_3 = Struct_2(Struct_1(_wgslsmith_add_u32(_wgslsmith_clamp_u32(~u_input.a.x, abs(u_input.a.x), _wgslsmith_div_u32(1u, 12328u)), var_1.x), _wgslsmith_mod_u32(var_1.x, 30304u), var_0, select(select(!vec2<bool>(true, var_0), select(vec2<bool>(var_0, var_0), vec2<bool>(true, true), var_0), !var_0), select(func_3(vec3<bool>(true, false, var_0), 1000f), func_3(vec3<bool>(var_0, true, var_0), 652f), !vec2<bool>(var_0, true)), true), vec3<i32>(1i | u_input.b, ~(~u_input.b), abs(global2[_wgslsmith_index_u32(u_input.a.x, 9u)]))));
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -589f)), _wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1132f)), 887f)));
    return false;
}

fn func_1() -> Struct_1 {
    let var_0 = -u_input.b;
    var var_1 = func_2();
    global2 = array<i32, 9>();
    global1 = -1i;
    var var_2 = _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(select(u_input.a.zx, ~vec2<u32>(22026u, 1u), vec2<bool>(true, true)), vec2<u32>(54239u, u_input.a.x), ~u_input.a.xz), _wgslsmith_mult_vec2_u32(abs(~vec2<u32>(u_input.a.x, 0u)), select(select(u_input.a.xx, u_input.a.xx, vec2<bool>(false, true)), u_input.a.yz, vec2<bool>(true, true)))));
    return Struct_1(u_input.a.x, 16683u, false, select(select(!select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true), vec2<bool>(true, true)), func_3(vec3<bool>(true, true, true), -1279f), any(vec4<bool>(true, true, true, true))), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(-58489i, -18923i), countOneBits(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 9u)], 0i, 1i, u_input.b), vec4<i32>(var_0, u_input.b, u_input.b, u_input.b))) ^ abs(firstLeadingBit(vec3<i32>(-30734i, u_input.b, global2[_wgslsmith_index_u32(4294967295u, 9u)]))), ~abs(~vec3<i32>(u_input.b, var_0, -11349i)), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i << (u_input.a.x % 32u), u_input.b ^ var_0, 0i), ~vec3<i32>(2147483647i, u_input.b, 2147483647i))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> u32 {
    let var_0 = func_1();
    global2 = array<i32, 9>();
    let var_1 = arg_1;
    let var_2 = select(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_div_i32(global2[_wgslsmith_index_u32(var_0.a, 9u)], var_1.a.e.x), _wgslsmith_sub_i32(2147483647i, var_0.e.x), ~(-2147483647i)), -var_1.a.e >> (~vec3<u32>(26096u, 0u, arg_1.a.a) % vec3<u32>(32u)), abs(var_0.e & var_0.e)), select(arg_0.e, ~vec3<i32>(14079i, -39331i, -43349i), var_1.a.d.x && arg_1.a.d.x) | (~var_1.a.e | vec3<i32>(-19813i, global2[_wgslsmith_index_u32(var_1.a.a, 9u)], -30094i))), vec3<i32>(-57303i, -2147483647i, i32(-1i) * -37647i), select(select(select(select(vec3<bool>(true, true, true), vec3<bool>(var_0.d.x, false, var_1.a.d.x), true), select(vec3<bool>(false, arg_1.a.d.x, true), vec3<bool>(var_1.a.d.x, arg_1.a.d.x, true), true), arg_1.a.c), vec3<bool>(!var_1.a.c, !var_1.a.d.x, true), arg_0.e.x > -1i), !select(vec3<bool>(true, false, arg_1.a.c), !vec3<bool>(arg_0.c, arg_1.a.d.x, false), !vec3<bool>(var_1.a.c, true, true)), select(select(!vec3<bool>(true, true, arg_0.d.x), select(vec3<bool>(var_0.c, arg_1.a.c, arg_1.a.d.x), vec3<bool>(true, var_0.d.x, false), vec3<bool>(true, arg_0.c, var_0.c)), true), select(select(vec3<bool>(false, arg_0.c, var_0.c), vec3<bool>(true, arg_1.a.c, false), true), vec3<bool>(var_0.c, var_1.a.d.x, var_1.a.c), true), vec3<bool>(true, arg_0.c, false))));
    var var_3 = !func_3(vec3<bool>(true, false, !var_0.c), _wgslsmith_f_op_f32(min(-648f, 355f)));
    return _wgslsmith_add_u32(6966u, ~(arg_1.a.b >> ((1u & arg_0.b) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 9>();
    global2 = array<i32, 9>();
    var var_0 = _wgslsmith_clamp_u32(func_4(func_1(), Struct_2(func_1())), u_input.a.x, ~u_input.a.x);
    let var_1 = ~(~(~(-vec3<i32>(1i, 1i, 1i))));
    let var_2 = ~(~(~_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(0u, u_input.a.x, u_input.a.x)), ~vec3<u32>(4294967295u, u_input.a.x, u_input.a.x))));
    var_0 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(vec4<u32>(abs(var_2.x), min(u_input.a.x, 58986u), var_2.x, ~33110u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-105f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(849f + 1475f)), !all(vec2<bool>(true, true))))), vec4<i32>(41023i, 2147483647i, _wgslsmith_div_i32(-38281i, 1i | u_input.b), u_input.b), -(~2147483647i));
}

