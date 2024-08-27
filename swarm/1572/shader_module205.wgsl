struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
    c: vec3<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
    c: bool,
}

struct Struct_5 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29>;

var<private> global1: array<Struct_4, 2>;

var<private> global2: Struct_2;

var<private> global3: array<vec3<bool>, 17>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2, arg_3: i32) -> u32 {
    var var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(34752u, arg_1.a, 1u, 32459u), vec4<u32>(arg_1.a, arg_1.a, 1u, global0[_wgslsmith_index_u32(u_input.b, 29u)])) >> (global0[_wgslsmith_index_u32(abs(~11256u), 29u)] % 32u), 29u)], u_input.b), ~(~_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.b, arg_1.a), select(vec2<u32>(82530u, 0u), vec2<u32>(4294967295u, 32224u), vec2<bool>(true, true)), vec2<u32>(30850u, 1u))));
    var var_1 = global1[_wgslsmith_index_u32(~(~4294967295u), 2u)];
    let var_2 = Struct_4(var_1.a, var_1.b, all(!(!var_1.b.a.yx)));
    global0 = array<u32, 29>();
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.c.x * var_2.b.c.x), -210f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_f_op_f32(1485f - arg_0)))));
    return 4294967295u;
}

fn func_2(arg_0: Struct_2) -> vec3<bool> {
    let var_0 = !select(vec4<bool>(true, true, true, true), !(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), false)), func_3(_wgslsmith_f_op_f32(f32(-1f) * -833f), Struct_1(77731u, 10805i, vec3<f32>(1063f, -746f, -1130f), 3159f), Struct_2(arg_0.a), max(global2.a, arg_0.a)) <= 1u);
    let var_1 = Struct_3(vec3<bool>(true, true, true), -187f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(447f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1000f, -748f), _wgslsmith_div_f32(-1168f, 356f))))));
    let var_2 = vec3<i32>(~countOneBits(~2147483647i), 13990i, ~(~_wgslsmith_mult_i32(u_input.a.x, arg_0.a) & -29005i));
    global1 = array<Struct_4, 2>();
    var var_3 = ~17120u;
    return vec3<bool>(false, true, (!(-580f < var_1.b) | false) & var_0.x);
}

fn func_4(arg_0: vec2<bool>) -> Struct_3 {
    global1 = array<Struct_4, 2>();
    let var_0 = ~_wgslsmith_add_vec2_i32(~(vec2<i32>(-1i) * -vec2<i32>(global2.a, 0i)), -u_input.a.zy ^ ~(~u_input.a.xz));
    let var_1 = u_input.a.x;
    let var_2 = 66447u;
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(1235f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(236f * _wgslsmith_f_op_f32(step(-2099f, -381f))));
    return Struct_3(select(select(select(!global3[_wgslsmith_index_u32(u_input.b, 17u)], global3[_wgslsmith_index_u32(~u_input.b, 17u)], global3[_wgslsmith_index_u32(42262u, 17u)]), !vec3<bool>(true, arg_0.x, false), !(!arg_0.x)), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstTrailingBit(11580u), _wgslsmith_sub_u32(4294967295u, _wgslsmith_mult_u32(u_input.b, 27265u))), 17u)], vec3<bool>(!arg_0.x, !any(global3[_wgslsmith_index_u32(var_2, 17u)]), all(vec3<bool>(true, true, arg_0.x)))), -1171f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, 2889f, -300f)));
}

fn func_1() -> Struct_4 {
    let var_0 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(firstTrailingBit(u_input.b), 29u)] & ~global0[_wgslsmith_index_u32(u_input.b, 29u)], global0[_wgslsmith_index_u32(~(global0[_wgslsmith_index_u32(u_input.b, 29u)] << (39464u % 32u)), 29u)]), u_input.b), -u_input.a.x, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1240f), 1014f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(390f))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-258f, 692f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(776f)) + _wgslsmith_f_op_f32(f32(-1f) * -1556f)) + _wgslsmith_f_op_f32(-1268f + 269f))));
    global1 = array<Struct_4, 2>();
    let var_1 = _wgslsmith_add_u32(u_input.b, ~reverseBits(~1u));
    global3 = array<vec3<bool>, 17>();
    let var_2 = u_input.a.zzz;
    return Struct_4(~u_input.a.ywy, func_4(vec2<bool>(_wgslsmith_f_op_f32(floor(-443f)) > -447f, any(func_2(Struct_2(var_0.b))))), _wgslsmith_mod_i32(-6875i, ~var_2.x) < 2147483647i);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3) -> vec4<bool> {
    global3 = array<vec3<bool>, 17>();
    global3 = array<vec3<bool>, 17>();
    var var_0 = Struct_5(true, func_3(_wgslsmith_f_op_f32(abs(arg_0.b.c.x)), Struct_1(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(38165u, 29u)] >> (u_input.b % 32u), ~u_input.b), _wgslsmith_mult_i32(-1i, arg_0.a.x) & global2.a, arg_0.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-403f, arg_1.b)))), Struct_2(_wgslsmith_div_i32(arg_0.a.x, 0i)), arg_0.a.x));
    let var_1 = var_0.a | true;
    let var_2 = !select(vec4<bool>(all(select(vec4<bool>(false, arg_1.a.x, false, arg_1.a.x), vec4<bool>(var_0.a, var_0.a, var_0.a, false), vec4<bool>(var_1, true, arg_1.a.x, false))), true, true, false), select(vec4<bool>(arg_0.a.x <= -2147483647i, false != var_0.a, arg_0.b.a.x || var_1, select(var_1, var_1, true)), !(!vec4<bool>(false, false, var_0.a, arg_1.a.x)), select(select(vec4<bool>(var_0.a, arg_1.a.x, arg_1.a.x, arg_1.a.x), vec4<bool>(var_0.a, false, true, false), false), vec4<bool>(var_0.a, true, false, var_1), false)), select(!vec4<bool>(false, arg_1.a.x, false, true), select(select(vec4<bool>(true, var_0.a, true, false), vec4<bool>(false, true, false, var_0.a), arg_0.b.a.x), !vec4<bool>(arg_0.c, arg_1.a.x, false, var_1), false), select(vec4<bool>(false, true, true, arg_1.a.x), vec4<bool>(arg_0.b.a.x, false, false, true), false)));
    return !select(var_2, vec4<bool>(true, !arg_1.a.x, true, !var_0.a || func_1().c), select(vec4<bool>(!var_1, true, true, all(var_2)), select(!vec4<bool>(var_0.a, false, var_2.x, arg_1.a.x), var_2, true), vec4<bool>(42691i != u_input.a.x, var_0.a, all(vec4<bool>(var_2.x, var_0.a, true, var_2.x)), var_1)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(), func_4(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(func_2(Struct_2(u_input.a.x)).x, u_input.b < 0u))));
    global2 = Struct_2(~firstTrailingBit(firstTrailingBit(-u_input.a.x)));
    var var_1 = Struct_2(countOneBits(-37691i));
    let var_2 = 1u;
    global3 = array<vec3<bool>, 17>();
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1290f))), ~_wgslsmith_sub_u32(1u, 1u));
}

