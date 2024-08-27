struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26>;

var<private> global1: array<Struct_1, 19>;

var<private> global2: vec4<i32>;

var<private> global3: array<vec4<i32>, 19>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: vec3<i32>) -> bool {
    global2 = reverseBits(global3[_wgslsmith_index_u32(0u, 19u)]);
    var var_0 = ~(vec3<i32>(select(_wgslsmith_div_i32(33403i, global2.x), _wgslsmith_dot_vec3_i32(global2.zwz, vec3<i32>(arg_0.x, global2.x, arg_0.x)), global0[_wgslsmith_index_u32(min(u_input.a.x, u_input.a.x), 26u)]), arg_0.x, 0i) ^ vec3<i32>(0i, 1i, 50094i));
    let var_1 = vec4<i32>(select(arg_0.x, 1i, false), _wgslsmith_clamp_i32(arg_0.x, arg_0.x, abs(_wgslsmith_mod_i32(arg_0.x, countOneBits(-1i)))), -40302i | var_0.x, _wgslsmith_dot_vec3_i32(min(vec3<i32>(var_0.x >> (28310u % 32u), var_0.x, global2.x), _wgslsmith_sub_vec3_i32(arg_0 & vec3<i32>(-2147483647i, -1i, arg_0.x), arg_0)), -(vec3<i32>(-1i) * -global2.zwy)));
    let var_2 = global1[_wgslsmith_index_u32(select(0u, u_input.a.x, (true | (-675f > _wgslsmith_f_op_f32(round(175f)))) || global0[_wgslsmith_index_u32(u_input.a.x << (~_wgslsmith_add_u32(u_input.a.x, 14841u) % 32u), 26u)]), 19u)];
    var var_3 = var_2.c;
    return global0[_wgslsmith_index_u32(~var_2.b.x, 26u)];
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: vec3<i32>, arg_3: f32) -> f32 {
    let var_0 = countOneBits(~arg_0);
    var var_1 = _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(~arg_1.zy, arg_1.yy), _wgslsmith_mod_vec2_u32(select(arg_1.zz, ~vec2<u32>(4294967295u, arg_0), func_2(global2.xww)), select(_wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(69478u, u_input.a.x)), _wgslsmith_add_vec2_u32(vec2<u32>(0u, arg_0), vec2<u32>(arg_0, u_input.a.x)), vec2<bool>(true, true)))) ^ vec2<u32>(0u, 4294967295u);
    global3 = array<vec4<i32>, 19>();
    global2 = _wgslsmith_clamp_vec4_i32(vec4<i32>(~429i >> (arg_1.x % 32u), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, global2.x, 2147483647i), arg_2), -global2.x, arg_2.x | global2.x), -max(8915i, 26051i), _wgslsmith_mod_i32(~global2.x, global2.x)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(global2.x, 11324i, arg_2.x, 20793i), vec4<i32>(arg_2.x, arg_2.x, arg_2.x, -13329i)), -vec4<i32>(-6614i, global2.x, global2.x, -2147483647i) ^ firstTrailingBit(vec4<i32>(global2.x, global2.x, -43754i, global2.x) | global3[_wgslsmith_index_u32(var_0, 19u)])) << (vec4<u32>(~(~arg_1.x), var_1.x, 4294967295u, _wgslsmith_mod_u32(1u, 1u)) % vec4<u32>(32u));
    var_1 = arg_1.yz;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-742f)) * arg_3);
}

fn func_3() -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(43269u, 19u)];
    var_0 = global1[_wgslsmith_index_u32(~(9565u >> (reverseBits(min(~0u, 4294967295u & u_input.a.x)) % 32u)), 19u)];
    let var_1 = ~vec4<u32>(var_0.b.x, var_0.b.x, max(_wgslsmith_sub_u32(u_input.a.x, 72196u), u_input.a.x) | u_input.a.x, _wgslsmith_mod_u32(94101u, ~u_input.a.x));
    var_0 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32((42458u >> (u_input.a.x % 32u)) & ~var_1.x, ~u_input.a.x), var_1.x) ^ var_1.x, 19u)];
    let var_2 = 1i;
    return max(0u, u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2261f, -162f) * _wgslsmith_f_op_f32(126f - -379f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(u_input.a.x, vec3<u32>(u_input.a.x, u_input.a.x, 1u), vec3<i32>(global2.x, -9699i, -2147483647i), 210f)), 222f)))), ~(~vec4<u32>(57157u, max(u_input.a.x, 12870u), func_3(), select(4294967295u, 68898u, true))), _wgslsmith_div_vec4_f32(vec4<f32>(-833f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -202f))), 859f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-792f, 1985f, 690f, 763f)))))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(468f + 1000f)), _wgslsmith_f_op_f32(-var_0.a));
    let var_2 = var_0;
    var var_3 = _wgslsmith_f_op_vec3_f32(select(var_2.c.wwx, _wgslsmith_f_op_vec3_f32(-var_2.c.xyy), vec3<bool>(!all(!vec4<bool>(global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(77657u, 26u)], global0[_wgslsmith_index_u32(u_input.a.x, 26u)], global0[_wgslsmith_index_u32(u_input.a.x, 26u)])), true, global0[_wgslsmith_index_u32(min(17584u ^ var_2.b.x, var_2.b.x >> (4294967295u % 32u)), 26u)])));
    global1 = array<Struct_1, 19>();
    var var_4 = var_0;
    var var_5 = ~var_4.b.x ^ ~min(~1u, 0u);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.x, 70392u, _wgslsmith_f_op_vec2_f32(-var_0.c.wx));
}

