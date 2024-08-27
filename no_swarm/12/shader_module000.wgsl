struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(10643i));

var<private> global1: array<Struct_1, 25>;

var<private> global2: i32 = -10019i;

var<private> global3: array<vec4<u32>, 12> = array<vec4<u32>, 12>(vec4<u32>(0u, 17396u, 76322u, 23765u), vec4<u32>(1u, 20139u, 52366u, 120377u), vec4<u32>(4294967295u, 0u, 0u, 70272u), vec4<u32>(1u, 4294967295u, 0u, 16007u), vec4<u32>(8991u, 48857u, 53258u, 4294967295u), vec4<u32>(67125u, 14346u, 537u, 33192u), vec4<u32>(1u, 19704u, 1u, 4294967295u), vec4<u32>(18617u, 7188u, 40000u, 4294967295u), vec4<u32>(25982u, 36158u, 28506u, 23807u), vec4<u32>(4294967295u, 69081u, 0u, 94990u), vec4<u32>(116023u, 53065u, 60056u, 1u), vec4<u32>(35676u, 4294967295u, 1u, 37167u));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: i32) -> u32 {
    var var_0 = _wgslsmith_mod_i32(~1i, _wgslsmith_add_i32(30403i, abs(-19703i ^ u_input.c.x))) >> (max(~(~_wgslsmith_sub_u32(5427u, u_input.b)), 4294967295u) % 32u);
    let var_1 = min(~vec4<u32>(countOneBits(66933u & u_input.b), min(~4294967295u, u_input.b), ~u_input.b, u_input.b), firstTrailingBit(~(~global3[_wgslsmith_index_u32(u_input.b, 12u)])) ^ ((~global3[_wgslsmith_index_u32(u_input.b, 12u)] ^ (vec4<u32>(1u, 5342u, u_input.b, 58059u) | global3[_wgslsmith_index_u32(u_input.b, 12u)])) ^ ~(global3[_wgslsmith_index_u32(4294967295u, 12u)] ^ global3[_wgslsmith_index_u32(0u, 12u)])));
    global3 = array<vec4<u32>, 12>();
    let var_2 = _wgslsmith_sub_u32(countOneBits(5994u), _wgslsmith_mult_u32(countOneBits(1u) << (var_1.x % 32u), u_input.b));
    let var_3 = global1[_wgslsmith_index_u32(var_1.x, 25u)];
    return 1u;
}

fn func_2() -> vec2<bool> {
    var var_0 = global1[_wgslsmith_index_u32(select(~u_input.b, _wgslsmith_mult_u32(func_3(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.b, _wgslsmith_mult_u32(u_input.b, u_input.b)), 1u)], all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true)), -65550i), min(u_input.b, u_input.b)), false), 25u)];
    var var_1 = !select(!select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(_wgslsmith_clamp_i32(var_0.c.x, 1i, u_input.a) <= -60178i, !all(vec2<bool>(true, false))), true);
    let var_2 = var_1.x;
    let var_3 = 112f;
    var_0 = Struct_1(u_input.c.x | u_input.c.x, 2147483647i, vec4<i32>(reverseBits(10495i), 20969i, -18469i, ~u_input.c.x));
    return !vec2<bool>(all(select(vec3<bool>(var_1.x, false, true), !vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(false, true, var_1.x))), all(!vec2<bool>(var_1.x, var_1.x)));
}

fn func_4(arg_0: u32, arg_1: vec4<bool>) -> Struct_2 {
    global3 = array<vec4<u32>, 12>();
    let var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1f, 1f, 1f))))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(501f, -1623f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(640f - 466f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-149f * 490f))))))));
    global0 = array<Struct_2, 1>();
    var var_1 = vec3<i32>(-2147483647i, -_wgslsmith_sub_i32(_wgslsmith_mult_i32(29684i, u_input.a), _wgslsmith_mod_i32(-1i, ~2147483647i)), -(~(u_input.c.x | abs(u_input.c.x))));
    var var_2 = vec2<u32>(~u_input.b, u_input.b);
    return Struct_2(i32(-1i) * -u_input.c.x);
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = func_4(u_input.b, !vec4<bool>(false, true, all(func_2()), func_2().x));
    let var_1 = arg_2;
    global0 = array<Struct_2, 1>();
    var var_2 = arg_2;
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(2026f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1181f)), -586f)), true)), 1f));
    return u_input.b;
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_2) -> u32 {
    let var_0 = !(4294967295u >= arg_0.x);
    let var_1 = arg_0;
    var var_2 = func_4(0u, select(vec4<bool>(select(select(true, var_0, false), all(vec4<bool>(true, true, var_0, var_0)), var_0), arg_1.a != 1i, true, var_0 != var_0), vec4<bool>(true, true, !select(true, false, true), any(select(vec3<bool>(false, false, true), vec3<bool>(var_0, var_0, var_0), vec3<bool>(false, var_0, false)))), !vec4<bool>(var_0, true, false, true)));
    global3 = array<vec4<u32>, 12>();
    let var_3 = func_4(_wgslsmith_add_u32(func_1(-func_4(arg_0.x, vec4<bool>(var_0, var_0, var_0, var_0)).a, func_4(0u, vec4<bool>(false, var_0, true, false)), global1[_wgslsmith_index_u32(max(~u_input.b, ~u_input.b), 25u)], global1[_wgslsmith_index_u32(~(~u_input.b), 25u)]), ~(~u_input.b)), vec4<bool>(false || var_0, true, true, all(!vec2<bool>(var_0, var_0))));
    return _wgslsmith_div_u32(arg_0.x, ~u_input.b << (~firstTrailingBit(0u << (u_input.b % 32u)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b, u_input.b, func_1(~u_input.a, Struct_2(u_input.c.x), Struct_1(u_input.c.x, u_input.a, u_input.c), global1[_wgslsmith_index_u32(~u_input.b, 25u)]) >> (0u % 32u)), 12u)], Struct_2(u_input.c.x));
    global2 = -(_wgslsmith_clamp_i32(u_input.c.x, 1i, u_input.c.x) << (min(u_input.b, ~(u_input.b | u_input.b)) % 32u));
    global1 = array<Struct_1, 25>();
    let var_1 = ~(-_wgslsmith_dot_vec2_i32(u_input.c.zw, select(_wgslsmith_add_vec2_i32(u_input.c.wz, u_input.c.xx), u_input.c.ww, true)));
    global0 = array<Struct_2, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, u_input.c.xz);
}

