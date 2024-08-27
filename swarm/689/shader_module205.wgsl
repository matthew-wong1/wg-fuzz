struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 20>;

var<private> global1: array<bool, 16>;

var<private> global2: Struct_4;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(f32(-1f) * -2527f))), _wgslsmith_mod_u32(global2.a.a.b.b, ~(~(u_input.a | 4294967295u))));
    var var_1 = global2.a.a;
    var var_2 = vec4<bool>(true, !(true | global1[_wgslsmith_index_u32(u_input.a, 16u)]) || any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, global1[_wgslsmith_index_u32(19892u, 16u)], global1[_wgslsmith_index_u32(87582u, 16u)], true), select(vec4<bool>(true, true, true, global1[_wgslsmith_index_u32(var_0.b, 16u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(arg_0.b, 16u)], true, global1[_wgslsmith_index_u32(7865u, 16u)]), false))), false, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2.a.a.b.b, reverseBits(~max(51719u, 0u))), 16u)]);
    let var_3 = Struct_3(global2.a.a, firstLeadingBit(0i));
    global0 = array<Struct_3, 20>();
    return !(!vec4<bool>(global1[_wgslsmith_index_u32(~firstTrailingBit(global2.a.a.a.b), 16u)], true, any(vec3<bool>(false, true, global1[_wgslsmith_index_u32(0u, 16u)])), all(vec2<bool>(var_2.x, true))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: Struct_4) -> Struct_2 {
    var var_0 = reverseBits(vec4<u32>(~60318u, 0u, 45905u, global2.a.a.a.b));
    global2 = arg_2;
    let var_1 = arg_0.x;
    var var_2 = select(!select(select(select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 16u)], true, global1[_wgslsmith_index_u32(global2.a.a.b.b, 16u)], global1[_wgslsmith_index_u32(148265u, 16u)]), vec4<bool>(global1[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(19186u, 16u)], global1[_wgslsmith_index_u32(var_0.x, 16u)], true), global1[_wgslsmith_index_u32(0u, 16u)]), func_3(global2.a.a.a, 528f), !vec4<bool>(false, true, global1[_wgslsmith_index_u32(global2.a.a.a.b, 16u)], global1[_wgslsmith_index_u32(var_0.x, 16u)])), vec4<bool>(false, global1[_wgslsmith_index_u32(~var_0.x, 16u)], true, global1[_wgslsmith_index_u32(~global2.a.a.a.b, 16u)]), select(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 16u)], global1[_wgslsmith_index_u32(0u, 16u)], true, true), vec4<bool>(false, false, true, global1[_wgslsmith_index_u32(0u, 16u)]), vec4<bool>(global1[_wgslsmith_index_u32(arg_2.a.a.a.b, 16u)], false, global1[_wgslsmith_index_u32(4294967295u, 16u)], global1[_wgslsmith_index_u32(59306u, 16u)])), func_3(Struct_1(global2.a.a.b.a, 40079u), 577f), vec4<bool>(false, false, global1[_wgslsmith_index_u32(4294967295u, 16u)], true))), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 16u)], global1[_wgslsmith_index_u32(select(0u, _wgslsmith_mod_u32(50681u, _wgslsmith_sub_u32(1u, global2.a.a.a.b)), any(!vec3<bool>(global1[_wgslsmith_index_u32(0u, 16u)], false, false))), 16u)], (global1[_wgslsmith_index_u32(9404u, 16u)] || (678i > arg_1.x)) & global1[_wgslsmith_index_u32(u_input.a & 12339u, 16u)], global1[_wgslsmith_index_u32(select(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, 1u), vec3<u32>(4294967295u, 39134u, arg_2.a.a.b.b)), _wgslsmith_div_u32(var_0.x, arg_2.a.a.b.b)), global2.a.a.b.b, any(func_3(global2.a.a.a, -1000f).zx)), 16u)]), !(!select(!vec4<bool>(global1[_wgslsmith_index_u32(3413u, 16u)], global1[_wgslsmith_index_u32(1u, 16u)], global1[_wgslsmith_index_u32(global2.a.a.b.b, 16u)], false), select(vec4<bool>(true, global1[_wgslsmith_index_u32(arg_2.a.a.b.b, 16u)], global1[_wgslsmith_index_u32(41966u, 16u)], true), vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 16u)], global1[_wgslsmith_index_u32(39879u, 16u)], global1[_wgslsmith_index_u32(global2.a.a.b.b, 16u)]), global1[_wgslsmith_index_u32(27124u, 16u)]), !vec4<bool>(global1[_wgslsmith_index_u32(40806u, 16u)], global1[_wgslsmith_index_u32(u_input.a, 16u)], true, global1[_wgslsmith_index_u32(arg_2.a.a.a.b, 16u)]))));
    let var_3 = arg_2.a.a;
    return var_3;
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: bool, arg_3: Struct_2) -> u32 {
    global0 = array<Struct_3, 20>();
    global0 = array<Struct_3, 20>();
    var var_0 = min(vec3<u32>(~1122u, arg_3.b.b, _wgslsmith_mod_u32(~1u, 1u)), ~(max(vec3<u32>(global2.a.a.a.b, u_input.a, arg_0.a.a.b.b), ~vec3<u32>(4294967295u, 1u, 22050u)) & _wgslsmith_add_vec3_u32(~vec3<u32>(global2.a.a.b.b, global2.a.a.b.b, 4294967295u), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, arg_0.a.a.b.b, 0u), vec3<u32>(4294967295u, arg_0.a.a.b.b, 0u)))));
    var var_1 = vec4<i32>(~(-9422i), 74452i, ~14229i, 23729i);
    global2 = arg_0;
    return ~1u;
}

fn func_1() -> u32 {
    var var_0 = ~(-1i);
    var var_1 = global0[_wgslsmith_index_u32(select(func_4(Struct_4(Struct_3(func_2(u_input.c, vec2<i32>(2147483647i, global2.b), Struct_4(Struct_3(Struct_2(Struct_1(-394f, 1u), global2.a.a.a, global2.b), global2.b), 1i)), 1i), ~35887i | max(u_input.c.x, u_input.b)), false, global1[_wgslsmith_index_u32(~firstLeadingBit(~u_input.a), 16u)], global2.a.a), global2.a.a.a.b, !all(!vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 16u)]))), 20u)];
    var_0 = global2.a.b;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.b.a * global2.a.a.b.a) + _wgslsmith_f_op_f32(global2.a.a.b.a * global2.a.a.a.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.a.b.a))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a.a.b.a, var_1.a.a.a) * vec2<f32>(-583f, -781f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(163f, global2.a.a.b.a))), vec2<f32>(func_2(u_input.c, vec2<i32>(-73278i, 56972i), Struct_4(Struct_3(Struct_2(global2.a.a.b, Struct_1(1496f, var_1.a.b.b), -11716i), 2147483647i), 2147483647i)).b.a, global2.a.a.a.a))) * vec2<f32>(-117f, 883f)));
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-func_2(vec2<i32>(37309i, var_1.a.c), vec2<i32>(var_1.b, -2147483647i), Struct_4(Struct_3(Struct_2(Struct_1(global2.a.a.b.a, 37544u), var_1.a.a, global2.b), 2147483647i), u_input.c.x)).a.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1376f, global2.a.a.a.a))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.a.a.a) * 937f) * -162f) + _wgslsmith_div_f32(var_1.a.a.a, var_1.a.a.a)));
    return ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(16942u, global2.a.a.b.b), ~vec2<u32>(3085u, 18501u)) & firstLeadingBit(select(vec2<u32>(var_1.a.b.b, global2.a.a.a.b), vec2<u32>(19905u, global2.a.a.a.b), global1[_wgslsmith_index_u32(global2.a.a.a.b, 16u)])), vec2<u32>(1u, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 16>();
    let var_0 = _wgslsmith_div_i32(-(~(-2147483647i)), _wgslsmith_dot_vec4_i32(firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(18466i, global2.b, u_input.b, global2.b), -vec4<i32>(32585i, -2147483647i, 2147483647i, global2.b))), vec4<i32>(-global2.b & global2.a.a.c, global2.a.b, global2.b, firstTrailingBit(global2.b))));
    global2 = Struct_4(global0[_wgslsmith_index_u32(~firstTrailingBit(0u), 20u)], u_input.c.x);
    global0 = array<Struct_3, 20>();
    var var_1 = ~vec2<u32>(reverseBits(~u_input.a), ~func_1());
    var var_2 = Struct_3(Struct_2(func_2(u_input.c, u_input.c, Struct_4(global2.a, -62151i)).b, global2.a.a.b, u_input.b), -2147483647i);
    global2 = Struct_4(global2.a, 1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(var_1.x, global2.a.a.b.b), vec2<u32>(8100u, 1u)) | _wgslsmith_div_vec2_u32(vec2<u32>(34734u, global2.a.a.b.b), vec2<u32>(6465u, u_input.a)), ~(~vec2<u32>(var_2.a.b.b, global2.a.a.a.b))) ^ ~countOneBits(vec2<u32>(74294u, global2.a.a.a.b)));
}

