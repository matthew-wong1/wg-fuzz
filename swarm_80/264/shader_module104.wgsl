struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 2> = array<vec3<bool>, 2>(vec3<bool>(false, true, false), vec3<bool>(true, false, true));

var<private> global1: vec2<u32> = vec2<u32>(100257u, 1u);

var<private> global2: Struct_2;

var<private> global3: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(vec2<u32>(5790u, 1u), vec3<bool>(false, false, false), vec4<bool>(true, false, false, false)), Struct_3(vec2<u32>(4294967295u, 23806u), vec3<bool>(false, false, false), vec4<bool>(true, false, false, true)), Struct_3(vec2<u32>(42775u, 0u), vec3<bool>(true, false, false), vec4<bool>(true, false, true, true)), Struct_3(vec2<u32>(0u, 42650u), vec3<bool>(false, false, false), vec4<bool>(false, false, true, false)), Struct_3(vec2<u32>(1u, 14784u), vec3<bool>(true, false, false), vec4<bool>(false, false, true, true)), Struct_3(vec2<u32>(0u, 12642u), vec3<bool>(true, false, true), vec4<bool>(false, false, false, true)), Struct_3(vec2<u32>(86923u, 21773u), vec3<bool>(true, true, false), vec4<bool>(false, true, false, false)), Struct_3(vec2<u32>(0u, 66320u), vec3<bool>(true, false, false), vec4<bool>(false, false, true, true)), Struct_3(vec2<u32>(4294967295u, 4294967295u), vec3<bool>(false, true, true), vec4<bool>(true, true, false, false)), Struct_3(vec2<u32>(1u, 0u), vec3<bool>(true, false, false), vec4<bool>(true, true, true, true)), Struct_3(vec2<u32>(4294967295u, 12310u), vec3<bool>(true, false, false), vec4<bool>(true, false, false, true)), Struct_3(vec2<u32>(15758u, 1u), vec3<bool>(false, true, true), vec4<bool>(false, false, true, true)), Struct_3(vec2<u32>(29921u, 0u), vec3<bool>(true, true, true), vec4<bool>(true, false, false, true)), Struct_3(vec2<u32>(4294967295u, 46664u), vec3<bool>(false, true, false), vec4<bool>(true, true, true, true)), Struct_3(vec2<u32>(44697u, 8624u), vec3<bool>(false, false, true), vec4<bool>(false, false, true, false)), Struct_3(vec2<u32>(38507u, 4294967295u), vec3<bool>(false, true, false), vec4<bool>(false, true, true, false)), Struct_3(vec2<u32>(1u, 83460u), vec3<bool>(true, true, false), vec4<bool>(true, true, false, true)), Struct_3(vec2<u32>(41163u, 18739u), vec3<bool>(true, false, false), vec4<bool>(false, false, false, true)), Struct_3(vec2<u32>(4294967295u, 0u), vec3<bool>(true, false, false), vec4<bool>(true, true, false, true)), Struct_3(vec2<u32>(13128u, 1u), vec3<bool>(false, true, true), vec4<bool>(true, true, true, true)), Struct_3(vec2<u32>(0u, 1u), vec3<bool>(true, false, true), vec4<bool>(false, true, true, false)), Struct_3(vec2<u32>(6121u, 0u), vec3<bool>(true, false, true), vec4<bool>(false, false, false, false)), Struct_3(vec2<u32>(20377u, 6325u), vec3<bool>(false, false, true), vec4<bool>(false, true, true, true)), Struct_3(vec2<u32>(4294967295u, 4294967295u), vec3<bool>(false, true, false), vec4<bool>(true, true, true, true)), Struct_3(vec2<u32>(0u, 16214u), vec3<bool>(false, false, false), vec4<bool>(true, false, false, false)), Struct_3(vec2<u32>(0u, 102651u), vec3<bool>(true, true, false), vec4<bool>(false, false, false, false)), Struct_3(vec2<u32>(1u, 1434u), vec3<bool>(true, false, false), vec4<bool>(true, true, true, true)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec2<u32> {
    global2 = Struct_2(_wgslsmith_mult_u32(~u_input.c.x, 4294967295u), _wgslsmith_mult_i32(_wgslsmith_sub_i32(global2.c, -2147483647i), _wgslsmith_mult_i32(5501i, _wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.d.x, -2147483647i), global2.d.b.yz, false), abs(vec2<i32>(0i, -2147483647i))))), -_wgslsmith_mod_i32(~min(1i, -2147483647i), u_input.d.x ^ global2.c), global2.d);
    global3 = array<Struct_3, 27>();
    var var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(~(~0u), min(~global1.x, 1u)), global2.a), vec2<u32>(30042u, u_input.a.x));
    var var_1 = true;
    let var_2 = u_input.d.x;
    return vec2<u32>(global1.x, ~(u_input.a.x & global1.x));
}

fn func_2() -> Struct_1 {
    var var_0 = firstTrailingBit(reverseBits(4294967295u | abs(_wgslsmith_mod_u32(u_input.b, global2.d.a))));
    global1 = countOneBits(vec2<u32>(global2.a, max(abs(~1u), 4294967295u)));
    global1 = _wgslsmith_clamp_vec2_u32(min(vec2<u32>(4294967295u, u_input.a.x), func_3() & ~u_input.c.yz), countOneBits(vec2<u32>(1u, ~u_input.a.x)) ^ countOneBits(vec2<u32>(u_input.b, u_input.a.x) | (u_input.c.yy | vec2<u32>(44755u, 1u))), ~(~firstLeadingBit(~vec2<u32>(21851u, global1.x))));
    let var_1 = Struct_3(max(vec2<u32>(reverseBits(~global1.x), ~select(1u, global2.a, true)), ~select(vec2<u32>(global1.x, u_input.c.x), _wgslsmith_add_vec2_u32(vec2<u32>(global2.d.a, 4033u), u_input.a.zy), true)), global0[_wgslsmith_index_u32(~(~global2.a | _wgslsmith_div_u32(~51990u, global2.a & 1u)), 2u)], vec4<bool>(true, !any(global0[_wgslsmith_index_u32(~1u, 2u)]), true, false));
    var var_2 = global2.d;
    return Struct_1(19969u, var_2.d, global2.d.c, -var_2.d);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: f32, arg_3: Struct_3) -> Struct_1 {
    global1 = vec2<u32>(_wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(~vec3<u32>(5785u, arg_3.a.x, arg_3.a.x), vec3<u32>(6324u, arg_0.x, 0u) >> (vec3<u32>(0u, 6680u, 69915u) % vec3<u32>(32u))), vec3<u32>(5596u, ~(~4294967295u), _wgslsmith_dot_vec4_u32(~vec4<u32>(global1.x, 87647u, 7061u, arg_0.x), ~vec4<u32>(arg_0.x, 1u, 4294967295u, global1.x)))), ~0u);
    global3 = array<Struct_3, 27>();
    var var_0 = func_2();
    global3 = array<Struct_3, 27>();
    let var_1 = Struct_1(func_3().x, -var_0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_1.x, 1707f)))) - global2.d.c), -var_0.d);
    return func_2();
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = any(!vec3<bool>(any(vec4<bool>(false, true, true, true)), true, all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)))));
    global2 = Struct_2(~(~firstLeadingBit(29194u)), arg_1.d.x, firstLeadingBit(_wgslsmith_dot_vec2_i32(firstLeadingBit(u_input.d | vec2<i32>(arg_1.d.x, global2.d.d.x)), -arg_2.b.yx)), func_1(vec3<u32>(~0u >> (arg_1.a % 32u), global2.a, reverseBits(max(10401u, 0u))), vec3<f32>(_wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(abs(arg_1.c.x)), 1532f), _wgslsmith_f_op_f32(sign(func_1(~vec3<u32>(global2.a, global1.x, 56169u), vec3<f32>(-513f, arg_1.c.x, arg_0.x), _wgslsmith_f_op_f32(global2.d.c.x - arg_0.x), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(global2.a, global1.x), 27u)]).c.x)), Struct_3(_wgslsmith_clamp_vec2_u32(u_input.a.zy, vec2<u32>(0u, 33016u), vec2<u32>(58839u, global1.x) ^ vec2<u32>(global2.a, global1.x)), vec3<bool>(!var_0, true, true), !select(vec4<bool>(var_0, false, false, var_0), vec4<bool>(false, var_0, var_0, true), vec4<bool>(true, var_0, var_0, var_0)))));
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.c.x)));
    let var_2 = Struct_2(_wgslsmith_add_u32(_wgslsmith_sub_u32(71328u & arg_2.a, u_input.b), ~(~abs(global1.x))), arg_2.d.x, 2147483647i, func_2());
    var_1 = arg_0.x;
    return ~(global1.x | 4710u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 2>();
    global0 = array<vec3<bool>, 2>();
    global3 = array<Struct_3, 27>();
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.d.c.x, _wgslsmith_f_op_f32(-global2.d.c.x))) * 854f), global2.d.c.x);
    var var_1 = _wgslsmith_mult_i32(u_input.d.x, 2147483647i | u_input.d.x);
    let var_2 = !vec4<bool>(firstTrailingBit(47627u) >= func_4(global2.d.c, func_1(u_input.c, vec3<f32>(global2.d.c.x, global2.d.c.x, 160f), -792f, global3[_wgslsmith_index_u32(1u, 27u)]), global2.d), _wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, 4294967295u), _wgslsmith_mod_u32(u_input.a.x, 4294967295u)) != u_input.b, true, all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false))) && !(global2.d.c.x <= -1763f));
    let var_3 = func_1(firstLeadingBit(~u_input.a), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(780f, -665f, global2.d.c.x), global2.d.c, vec3<bool>(var_2.x, true, true))))) * _wgslsmith_f_op_vec3_f32(-global2.d.c)))), 1889f, Struct_3(~_wgslsmith_mult_vec2_u32(vec2<u32>(global2.d.a, global2.d.a), select(u_input.c.zz, vec2<u32>(1u, 0u), var_2.xz)), vec3<bool>(false, true, true), select(!vec4<bool>(var_2.x, true, false, false), !(!var_2), false)));
    let x = u_input.a;
    s_output = StorageBuffer(global2.d.d.x, _wgslsmith_f_op_f32(-func_1(~select(u_input.c, u_input.c, var_2.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.d.c - var_3.c) * vec3<f32>(global2.d.c.x, global2.d.c.x, global2.d.c.x)), 246f, Struct_3(_wgslsmith_mod_vec2_u32(u_input.a.zx, vec2<u32>(1u, 44668u)), select(vec3<bool>(false, false, var_2.x), var_2.xxy, vec3<bool>(var_2.x, var_2.x, var_2.x)), !vec4<bool>(true, false, var_2.x, false))).c.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_3.c.x, 216f, -298f, -1084f), vec4<f32>(var_3.c.x, global2.d.c.x, -1866f, -1000f)) + vec4<f32>(872f, var_3.c.x, -136f, 1626f)), vec4<f32>(global2.d.c.x, _wgslsmith_f_op_f32(step(global2.d.c.x, var_3.c.x)), _wgslsmith_f_op_f32(-913f * var_3.c.x), _wgslsmith_f_op_f32(abs(408f))), select(var_2.x | true, any(vec4<bool>(var_2.x, true, false, var_2.x)), true)))));
}

