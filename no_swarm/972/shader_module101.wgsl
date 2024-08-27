struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29>;

var<private> global1: array<vec3<u32>, 18>;

var<private> global2: Struct_1;

var<private> global3: array<vec2<i32>, 4> = array<vec2<i32>, 4>(vec2<i32>(1i, -1i), vec2<i32>(2147483647i, 22225i), vec2<i32>(i32(-2147483648), 23876i), vec2<i32>(20874i, 39265i));

var<private> global4: vec2<u32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = vec2<bool>(false, all(vec4<bool>(any(vec4<bool>(true, true, true, true)), arg_0.a.x >= abs(1i), true, false)));
    return firstLeadingBit(_wgslsmith_sub_vec3_i32(arg_0.a.wxz, global2.a.wxz));
}

fn func_3() -> bool {
    let var_0 = countOneBits(max(abs(firstLeadingBit(~vec2<u32>(u_input.c, 1u))), ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 35893u), vec2<u32>(global4.x, global4.x)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1113f, global0[_wgslsmith_index_u32(5572u, 29u)], global0[_wgslsmith_index_u32(1u, 29u)]))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-281f, global0[_wgslsmith_index_u32(global4.x, 29u)], global0[_wgslsmith_index_u32(u_input.c, 29u)]) - vec3<f32>(1303f, -181f, 850f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(25311u, 29u)], global0[_wgslsmith_index_u32(u_input.c, 29u)], 1000f)))))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1393f, -200f, global0[_wgslsmith_index_u32(4294967295u, 29u)]))) - vec3<f32>(global0[_wgslsmith_index_u32(var_0.x, 29u)], -113f, global0[_wgslsmith_index_u32(u_input.c, 29u)])) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(global4.x, 29u)], global0[_wgslsmith_index_u32(global4.x, 29u)], 175f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(var_0.x, 29u)], global0[_wgslsmith_index_u32(var_0.x, 29u)], 530f)), vec3<bool>(true, true, true)))))));
    global4 = ~var_0;
    var var_2 = reverseBits(reverseBits(vec4<u32>(_wgslsmith_dot_vec2_u32(var_0, var_0), _wgslsmith_clamp_u32(29248u, 1u, var_0.x), countOneBits(global4.x), 4294967295u) | min(~vec4<u32>(u_input.c, 27237u, u_input.c, global4.x), vec4<u32>(0u, 17551u, global4.x, 0u))));
    return true;
}

fn func_1() -> Struct_1 {
    var var_0 = ~(~func_2(Struct_1(-vec4<i32>(2i, global2.a.x, -52690i, 7699i))));
    var var_1 = func_3();
    global0 = array<f32, 29>();
    var var_2 = u_input.c;
    var_0 = vec3<i32>(_wgslsmith_clamp_i32(2147483647i, -29944i, _wgslsmith_add_i32(i32(-1i) * -22341i, firstTrailingBit(32015i)) & ~(~var_0.x)), u_input.b, ~u_input.a.x);
    return Struct_1(-(~max(vec4<i32>(u_input.a.x, 2147483647i, global2.a.x, 2147483647i), global2.a) | min(global2.a, -global2.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(_wgslsmith_div_i32(global2.a.x | ~u_input.b, 34848i) | -abs(_wgslsmith_mod_i32(9554i, 1i)), _wgslsmith_add_i32(-1i, -38017i), _wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_mod_i32(~(-47341i), _wgslsmith_mult_i32(46047i, 1i)), ~0i), ~abs(-17341i)));
    var var_1 = func_1();
    var var_2 = _wgslsmith_mult_i32(var_0.x, _wgslsmith_dot_vec2_i32(global3[_wgslsmith_index_u32(~4294967295u, 4u)] | global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.c, u_input.c & 37113u), 4u)], reverseBits(-u_input.a) >> (vec2<u32>(~32737u, 22850u) % vec2<u32>(32u))));
    let var_3 = global2.a.zx;
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(firstLeadingBit(32094u), 29u)] - 218f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~global4.x, 29u)]) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1682f - global0[_wgslsmith_index_u32(4957u, 29u)]))), -1996f));
    global2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(min(-1000f, -183f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(15416u, 29u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * global0[_wgslsmith_index_u32(u_input.c, 29u)]) + _wgslsmith_f_op_f32(670f + -745f))))), vec4<u32>(1u, global4.x, ~global4.x, u_input.c), _wgslsmith_dot_vec4_u32(vec4<u32>(29423u, ~reverseBits(u_input.c), 1u, 24825u), max(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 28652u, global4.x, u_input.c), vec4<u32>(u_input.c, 1u, global4.x, global4.x) & vec4<u32>(u_input.c, u_input.c, global4.x, 58342u), vec4<u32>(global4.x, u_input.c, u_input.c, 5092u)), vec4<u32>(4294967295u, min(global4.x, 4294967295u), u_input.c & global4.x, 1u))));
}

