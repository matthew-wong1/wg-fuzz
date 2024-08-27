struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 18>;

var<private> global2: vec2<i32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec4<u32> {
    global2 = _wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(18958i, 18182i), vec2<i32>(1i, global0.c)), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global2.x, 0i, global2.x), vec4<i32>(0i, global0.c, 2147483647i, global2.x))) ^ vec2<i32>(select(global2.x, global2.x, false), global2.x)), -firstTrailingBit(reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, global0.c), vec2<i32>(global2.x, -2147483647i)))));
    var var_0 = global0.a.x;
    return _wgslsmith_clamp_vec4_u32(~(global0.a ^ abs(firstTrailingBit(vec4<u32>(1u, global0.a.x, 663u, 1u)))), _wgslsmith_add_vec4_u32(global0.a, vec4<u32>(global0.a.x, _wgslsmith_mod_u32(_wgslsmith_add_u32(0u, u_input.a), u_input.a | 78310u), global0.a.x, ~max(global0.a.x, 1u))), _wgslsmith_mult_vec4_u32(max(firstTrailingBit(max(global0.a, vec4<u32>(1u, 1u, 0u, 53139u))), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(global0.a, vec4<u32>(1u, u_input.a, 0u, 61886u), global0.a), global0.a)), global0.a));
}

fn func_2(arg_0: vec3<bool>, arg_1: u32, arg_2: bool, arg_3: vec4<i32>) -> i32 {
    global0 = Struct_1(global0.a, !global0.b, 27379i);
    global0 = Struct_1(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(global0.a, global0.a ^ vec4<u32>(u_input.a, 0u, 4294967295u, u_input.a)), ~global0.a ^ max(vec4<u32>(1u, u_input.a, arg_1, global0.a.x), global0.a)) & _wgslsmith_clamp_vec4_u32(func_3(), ~(~vec4<u32>(80169u, arg_1, 1u, arg_1)), vec4<u32>(abs(arg_1), 41361u, ~global0.a.x, countOneBits(15045u))), !(!select(arg_0.zx, arg_0.yz, arg_0.yy)), global0.c);
    global2 = vec2<i32>(-1i, 2147483647i);
    global2 = (firstTrailingBit(select(arg_3.yz, arg_3.xx, false) ^ arg_3.wx) & (vec2<i32>(global2.x & -2147483647i, global0.c) | arg_3.yy)) & arg_3.wx;
    let var_0 = vec3<bool>(!any(select(vec4<bool>(false, false, true, arg_2), vec4<bool>(global0.b.x, false, true, false), true)) == all(!select(vec4<bool>(false, true, false, arg_2), vec4<bool>(false, true, true, arg_2), vec4<bool>(arg_2, false, global0.b.x, false))), any(!vec2<bool>(arg_0.x, all(vec2<bool>(true, arg_0.x)))), all(global0.b) || all(!arg_0));
    return -2147483647i;
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = true;
    global2 = vec2<i32>(select(func_2(!(!vec3<bool>(true, var_0, var_0)), _wgslsmith_add_u32(u_input.a, _wgslsmith_mod_u32(u_input.a, u_input.a)), all(!global0.b), _wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(global0.c, arg_0, -18798i, 7202i)), vec4<i32>(-12889i, global2.x, arg_0, global2.x))), -2147483647i, false), i32(-1i) * -arg_0);
    var var_1 = Struct_1(vec4<u32>(10128u, max(~u_input.a, _wgslsmith_mod_u32(1924u, _wgslsmith_div_u32(1u, u_input.a))), u_input.a, ~u_input.a), global0.b, -2147483647i);
    var var_2 = !(1u != ~_wgslsmith_div_u32(global0.a.x, _wgslsmith_clamp_u32(88093u, u_input.a, 1526u)));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -857f)) * 2321f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(641f + 560f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(236f, -135f))))) + -328f));
    return global1[_wgslsmith_index_u32(var_1.a.x ^ _wgslsmith_dot_vec2_u32(global0.a.yx, _wgslsmith_clamp_vec2_u32(reverseBits(global0.a.xw), vec2<u32>(1u, var_1.a.x), var_1.a.xx)), 18u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!select(!vec3<bool>(global0.b.x, true, global0.b.x), select(!vec3<bool>(global0.b.x, true, false), !vec3<bool>(true, global0.b.x, true), vec3<bool>(false, global0.b.x, false)), vec3<bool>(true, true, any(vec3<bool>(true, true, true)))), vec3<bool>(global0.b.x, !(u_input.a <= 4294967295u) && (true == global0.b.x), false), !global0.b.x);
    var var_1 = global1[_wgslsmith_index_u32(global0.a.x, 18u)];
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1367f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-394f, -1465f, global0.b.x)))))), _wgslsmith_f_op_f32(max(800f, -633f)));
    var_1 = func_1(_wgslsmith_mult_i32(-((var_1.c.x | global2.x) >> (countOneBits(0u) % 32u)), 1i));
    var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 4294967295u), 18u)];
    global0 = func_1(_wgslsmith_clamp_i32(-max(_wgslsmith_clamp_i32(1i, var_1.c.x, global0.c), -52723i), max(1i, -1i), _wgslsmith_add_i32(-2147483647i, ~(-22688i | global2.x)))).b;
    var var_3 = var_1.b;
    let var_4 = _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(firstTrailingBit(_wgslsmith_mod_vec2_u32(~vec2<u32>(1u, u_input.a), ~var_1.b.a.wz)), countOneBits(~(~vec2<u32>(var_3.a.x, 15602u))), abs(vec2<u32>(_wgslsmith_mult_u32(5266u, 1u), ~global0.a.x))), var_3.a.yx, vec2<u32>(global0.a.x, ~select(global0.a.x, 34906u, false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-779f, 654f, var_2.x)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1570f, 1493f, 183f), vec3<f32>(var_2.x, 1473f, var_2.x)))))));
}

