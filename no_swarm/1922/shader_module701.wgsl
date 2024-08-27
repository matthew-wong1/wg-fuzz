struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec4<bool>,
    d: Struct_1,
    e: bool,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<f32, 4> = array<f32, 4>(923f, -504f, -962f, 1012f);

var<private> global2: vec2<bool> = vec2<bool>(true, true);

var<private> global3: array<vec2<i32>, 14>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec3<bool>, arg_3: Struct_4) -> bool {
    let var_0 = arg_3.b;
    global3 = array<vec2<i32>, 14>();
    global2 = !arg_2.xx;
    var var_1 = arg_3.a;
    let var_2 = ~u_input.b.x;
    return !arg_3.e;
}

fn func_2(arg_0: vec4<f32>) -> bool {
    var var_0 = Struct_5(vec2<f32>(382f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(global0.x)), arg_0.x, -996f >= arg_0.x)), -1088f, global2.x))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.x))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.x + -526f))))));
    var var_1 = u_input.a;
    let var_2 = select(!select(vec2<bool>(func_3(Struct_1(var_0.a.x), u_input.b.yxz, vec3<bool>(false, global2.x, global2.x), Struct_4(Struct_1(-1000f), Struct_3(u_input.b, vec3<f32>(-270f, global1[_wgslsmith_index_u32(u_input.a, 4u)], 996f), Struct_1(global0.x), Struct_2(Struct_1(-1342f), -885f)), vec4<bool>(global2.x, global2.x, true, global2.x), Struct_1(1099f), false)), select(global2.x, global2.x, false)), vec2<bool>(true, true), all(vec2<bool>(true, false))), vec2<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + -701f)) == _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-320f, global1[_wgslsmith_index_u32(u_input.c, 4u)]))))), -1i > _wgslsmith_sub_i32(firstTrailingBit(_wgslsmith_mod_i32(-2147483647i, -11i)), ~(~(-7429i))));
    let var_3 = Struct_5(vec2<f32>(var_0.b.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(324f, -863f)), _wgslsmith_f_op_f32(max(669f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 4u)])))))), var_0.b);
    let var_4 = u_input.c;
    return global2.x;
}

fn func_4(arg_0: bool, arg_1: vec4<u32>, arg_2: vec4<bool>) -> Struct_4 {
    var var_0 = vec2<i32>(-_wgslsmith_clamp_i32(-9542i, _wgslsmith_div_i32(-1i, 57494i) << (select(arg_1.x, 16222u, global2.x) % 32u), _wgslsmith_mult_i32(-1i, ~(-1i))), _wgslsmith_sub_i32(-24681i >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, arg_1.x, 1u), u_input.b.wyz | vec3<u32>(4294967295u, 3954u, u_input.b.x)) % 32u), -1i));
    var var_1 = Struct_2(Struct_1(global0.x), _wgslsmith_f_op_f32(trunc(823f)));
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -732f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-244f)) - _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(arg_1.x, 4u)], global1[_wgslsmith_index_u32(4294967295u, 4u)], true))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(f32(-1f) * -1111f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-280f, global1[_wgslsmith_index_u32(min(107215u, u_input.c), 4u)], arg_2.x)) + global0.x)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1[_wgslsmith_index_u32(~1u, 4u)], var_1.b, -1147f, _wgslsmith_div_f32(135f, -1000f)))) - vec4<f32>(414f, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_1.x, 4u)] * 1698f)), _wgslsmith_f_op_f32(f32(-1f) * -2344f), -852f)));
    let var_2 = vec2<u32>(arg_1.x, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_1.x, arg_1.x, 19954u), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, 0u, 1u), vec4<u32>(52505u, u_input.a, u_input.c, arg_1.x)))));
    let var_3 = vec2<bool>(arg_2.x, u_input.b.x != 0u);
    return Struct_4(Struct_1(_wgslsmith_f_op_f32(min(636f, var_1.b))), Struct_3(_wgslsmith_sub_vec4_u32(vec4<u32>(103940u, _wgslsmith_dot_vec2_u32(vec2<u32>(33924u, u_input.a), vec2<u32>(0u, 47891u)), arg_1.x << (49747u % 32u), firstTrailingBit(var_2.x)), u_input.b), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(939f, -1448f, -462f) + vec3<f32>(global0.x, global1[_wgslsmith_index_u32(32659u, 4u)], global1[_wgslsmith_index_u32(1u, 4u)]))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.b, global0.x, 687f))))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(13872u, 4u)])))), Struct_2(var_1.a, _wgslsmith_f_op_f32(f32(-1f) * -547f))), !arg_2, var_1.a, all(!vec2<bool>(arg_0, all(arg_2))));
}

fn func_1(arg_0: i32, arg_1: vec4<bool>) -> Struct_3 {
    let var_0 = -19735i;
    let var_1 = func_4(global2.x, ~firstTrailingBit(u_input.b), vec4<bool>(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.c, 4u)], 1422f, 633f, 222f))), func_2(vec4<f32>(_wgslsmith_f_op_f32(select(2338f, global1[_wgslsmith_index_u32(u_input.b.x, 4u)], arg_1.x)), _wgslsmith_f_op_f32(global0.x + -723f), global1[_wgslsmith_index_u32(53074u & u_input.c, 4u)], global0.x)), global2.x, arg_1.x));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.d.a))))) - _wgslsmith_f_op_f32(max(func_4(func_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(var_1.b.a.x, 4u)], global0.x, -659f, global0.x), vec4<f32>(-1000f, global1[_wgslsmith_index_u32(u_input.b.x, 4u)], -578f, var_1.d.a), var_1.c))), vec4<u32>(var_1.b.a.x >> (u_input.b.x % 32u), u_input.a, var_1.b.a.x >> (var_1.b.a.x % 32u), _wgslsmith_mult_u32(0u, 0u)), !(!vec4<bool>(false, global2.x, arg_1.x, global2.x))).d.a, _wgslsmith_f_op_f32(floor(1836f)))));
    global2 = !arg_1.wy;
    global0 = vec4<f32>(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(u_input.b.x, 4u)], 928f)), 441f, -415f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -896f))));
    return func_4(false, var_1.b.a, !(!vec4<bool>(!arg_1.x, func_4(arg_1.x, var_1.b.a, vec4<bool>(var_1.c.x, arg_1.x, true, false)).e, global2.x, true))).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(990f)) - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), u_input.b.ww), 4u)]))), func_1(-reverseBits(_wgslsmith_clamp_i32(0i, 0i, 2147483647i)), select(vec4<bool>(false || global2.x, global2.x, true, !global2.x), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, global2.x, true, global2.x), vec4<bool>(false, false, false, true)), !vec4<bool>(true, false, global2.x, global2.x), true), !(!vec4<bool>(true, global2.x, global2.x, true)))), vec4<bool>(global2.x, true, global2.x, func_4(true, u_input.b, !vec4<bool>(global2.x, false, true, false)).e), Struct_1(_wgslsmith_f_op_f32(abs(global0.x))), !global2.x);
    global1 = array<f32, 4>();
    var var_1 = vec2<u32>(u_input.a, _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.c, ~33701u), ~var_0.b.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d.a, func_1(1i, var_0.c).b.x)) - 696f), global0.x);
}

