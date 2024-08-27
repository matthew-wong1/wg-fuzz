struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: f32,
    d: f32,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<u32>(40669u, 2185u, 74939u), Struct_1(vec2<u32>(37729u, 4294967295u), vec4<u32>(1u, 4294967295u, 1u, 12721u), 20210i), 1113f, 258f);

var<private> global1: array<i32, 18>;

var<private> global2: bool;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: u32) -> vec2<u32> {
    global0 = Struct_3(global0.b.b.wwz, Struct_1(vec2<u32>(global0.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 4294967295u, arg_2.x, arg_0.x), vec4<u32>(arg_3, arg_0.x, 53332u, arg_3))), vec4<u32>(_wgslsmith_clamp_u32(u_input.c, min(global0.b.b.x, arg_2.x), 12284u), _wgslsmith_clamp_u32(~70310u, arg_3, 1u), 1u, ~arg_2.x), firstLeadingBit(u_input.a.x)), 958f, -1000f);
    global2 = any(!vec2<bool>(select(false, true, true), true));
    var var_0 = 98005u;
    global0 = Struct_3(~_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.x, 46574u, 1u), arg_2.xyz), ~arg_2.wwz), global0.a), Struct_1(global0.a.yz, vec4<u32>(_wgslsmith_mult_u32(min(85116u, u_input.c), arg_0.x | arg_3), ~u_input.c, ~arg_2.x, 74768u), -42188i), arg_1.a, 234f);
    let var_1 = global0.b.c;
    return ~vec2<u32>(firstTrailingBit(max(1u, arg_3 >> (61110u % 32u))), _wgslsmith_add_u32(0u, _wgslsmith_sub_u32(~21615u, ~26063u)));
}

fn func_2() -> bool {
    var var_0 = Struct_3(~(~vec3<u32>(4294967295u, ~1u, reverseBits(86163u))), Struct_1(_wgslsmith_mod_vec2_u32(~countOneBits(global0.a.xx), func_3(~vec3<u32>(u_input.c, u_input.c, 6594u), Struct_4(851f), vec4<u32>(92331u, 22843u, 52613u, 0u) ^ global0.b.b, u_input.c | 0u)), ~global0.b.b, -_wgslsmith_add_i32(u_input.a.x, 51141i)), _wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.c, global0.c, false)) * -561f) - 1851f)));
    var var_1 = global0.b.b.ww;
    let var_2 = !vec4<bool>(false, all(vec2<bool>(true, true)), any(vec2<bool>(true, true)), true);
    let var_3 = vec2<i32>(-global0.b.c, global0.b.c);
    global2 = any(select(vec4<bool>(global0.c > -2054f, true, true, !var_2.x), select(select(select(vec4<bool>(var_2.x, true, true, var_2.x), var_2, vec4<bool>(var_2.x, var_2.x, true, false)), !var_2, var_2.x), select(var_2, select(var_2, vec4<bool>(true, var_2.x, false, false), true), true), var_2.x), !vec4<bool>(any(var_2.zwx), true, true, true)));
    return any(!var_2);
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_mult_i32(~global0.b.c, global0.b.c);
    var var_1 = global0.b;
    global2 = all(select(vec4<bool>(true, true, true, true), vec4<bool>(select(any(vec2<bool>(false, false)), all(vec2<bool>(false, false)), true), true, true && func_2(), 398f <= _wgslsmith_f_op_f32(global0.d * -1046f)), _wgslsmith_clamp_i32(_wgslsmith_add_i32(global0.b.c, 15721i), 52195i, global0.b.c | global1[_wgslsmith_index_u32(28707u, 18u)]) != _wgslsmith_div_i32(abs(-2147483647i), u_input.b)));
    let var_2 = !(!(!(true | (global0.d >= global0.d))));
    global2 = var_2;
    return global0.d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(select(global0.b.b.yyw, _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, 63194u, 40641u), global0.b.b.zyw ^ vec3<u32>(global0.a.x, 2599u, u_input.c)) | global0.a, (global0.c != _wgslsmith_f_op_f32(func_1())) || any(vec4<bool>(false, false, true, false))), Struct_1(_wgslsmith_mult_vec2_u32(global0.b.a, ~(~global0.a.zx)), ~abs(~vec4<u32>(17207u, global0.a.x, u_input.c, 57670u)), u_input.b), -1000f, _wgslsmith_f_op_f32(ceil(-2181f)));
    global1 = array<i32, 18>();
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(global0.c, global0.c, -283f, 447f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.d, -647f, -1726f, global0.d), vec4<f32>(global0.c, 1463f, global0.d, global0.c), false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d, -1510f, global0.d, -1672f) - vec4<f32>(1039f, 1306f, -372f, -952f)) * vec4<f32>(-1000f, 835f, global0.d, global0.c)))) - vec4<f32>(_wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(-global0.d), 141f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.d), -253f))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - -414f);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-846f)), -1014f, _wgslsmith_f_op_f32(func_1())) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1, var_1, var_1), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -729f, var_1))))));
    var var_3 = Struct_2(Struct_1(global0.b.b.yw, _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(global0.b.b.x, 27686u, u_input.c, u_input.c), global0.b.b), global0.b.b, abs(~global0.b.b)), i32(-1i) * -13926i), -1950f, all(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), all(vec2<bool>(true, false))), vec3<bool>(false, select(true, false, true), true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), global0.a.xy);
    global2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(step(global0.d, global0.c))), max(firstTrailingBit(~abs(var_3.a.b.ywx)), ~min(abs(vec3<u32>(global0.b.a.x, 51075u, global0.b.a.x)), vec3<u32>(11964u, 0u, 0u))), _wgslsmith_clamp_vec4_i32(vec4<i32>(global0.b.c, -1i << (_wgslsmith_mod_u32(u_input.c, 61797u) % 32u), _wgslsmith_add_i32(~(-16515i), -global0.b.c), 1i | (var_3.a.c ^ u_input.b)), -abs(-vec4<i32>(-1i, 23047i, 58409i, -1i)), ~min(max(vec4<i32>(-33129i, 1i, global1[_wgslsmith_index_u32(27896u, 18u)], 21715i), vec4<i32>(96726i, 1i, 58051i, -1i)), -vec4<i32>(-1i, global1[_wgslsmith_index_u32(var_3.a.a.x, 18u)], global1[_wgslsmith_index_u32(var_3.a.b.x, 18u)], -27164i))), global0.b.b.x);
}

