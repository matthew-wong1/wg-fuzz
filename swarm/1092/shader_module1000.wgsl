struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 17>;

var<private> global1: vec4<i32>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
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

fn func_3(arg_0: Struct_2) -> bool {
    global0 = array<vec4<f32>, 17>();
    global1 = select(~(~(vec4<i32>(global1.x, 83945i, 80205i, global1.x) << (vec4<u32>(u_input.b, u_input.b, u_input.d.x, u_input.e) % vec4<u32>(32u)))), vec4<i32>(abs(global1.x) >> (abs(u_input.e) % 32u), ~_wgslsmith_clamp_i32(global1.x, global1.x, global1.x), -1i, _wgslsmith_clamp_i32(max(global1.x, global1.x), global1.x, 8394i)), !(false && all(vec4<bool>(false, false, false, true)))) >> (u_input.a % vec4<u32>(32u));
    let var_0 = select(vec3<bool>(false, select(any(vec3<bool>(true, true, false)), true, true), any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true))) & select(all(vec2<bool>(true, true)), false, true)), vec3<bool>(true, true, true), any(select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false)), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), false)))));
    var var_1 = abs(_wgslsmith_mult_vec4_u32(u_input.a, ~abs(vec4<u32>(u_input.c.x, 15393u, u_input.d.x, 0u))) ^ u_input.a);
    var_1 = u_input.a;
    return _wgslsmith_add_i32(8226i, -(~global1.x)) != _wgslsmith_add_i32(global1.x, max(global1.x, _wgslsmith_add_i32(global1.x, ~31331i)));
}

fn func_2(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: bool) -> i32 {
    let var_0 = 4294967295u;
    let var_1 = func_3(arg_2);
    global1 = _wgslsmith_mod_vec4_i32(~vec4<i32>(~(-1i) >> (1u % 32u), i32(-1i) * -38012i, i32(-1i) * -1i, arg_1.x | reverseBits(-9691i)), reverseBits(vec4<i32>(-1i) * -vec4<i32>(global1.x, 29372i, 1i, 0i)) | vec4<i32>(global1.x & (arg_1.x ^ 1i), 22775i, -25348i, min(-global1.x, _wgslsmith_mult_i32(-18789i, arg_1.x))));
    global1 = ~(~(~vec4<i32>(28069i, -18007i, -17828i, -25767i)));
    let var_2 = Struct_1(var_0);
    return -11794i;
}

fn func_1() -> Struct_2 {
    global1 = _wgslsmith_mult_vec4_i32(~_wgslsmith_add_vec4_i32(-firstTrailingBit(vec4<i32>(global1.x, global1.x, global1.x, global1.x)), -min(vec4<i32>(-2147483647i, 22351i, 0i, global1.x), vec4<i32>(global1.x, global1.x, global1.x, global1.x))), vec4<i32>(_wgslsmith_sub_i32(reverseBits(reverseBits(2147483647i)), global1.x), func_2(_wgslsmith_div_u32(~u_input.c.x, ~u_input.d.x), -global1.zxz, Struct_2(_wgslsmith_f_op_f32(max(-370f, -1737f))), true), firstLeadingBit(1i), _wgslsmith_mod_i32(2147483647i, _wgslsmith_mult_i32(global1.x, global1.x)) ^ _wgslsmith_mod_i32(-global1.x, ~46525i)));
    let var_0 = true;
    let var_1 = any(!vec2<bool>(var_0, true && any(vec2<bool>(false, var_0))));
    var var_2 = u_input.c.x;
    let var_3 = _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(select(34597u, 65628u, var_1), abs(u_input.a.x))), 17u)]);
    return Struct_2(-1000f);
}

fn func_4(arg_0: Struct_2) -> i32 {
    let var_0 = Struct_1(u_input.d.x);
    var var_1 = ~vec3<i32>(reverseBits(~(-global1.x)), -(global1.x | global1.x) & (global1.x << (1u % 32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(45063i << (0u % 32u), -44453i, -2147483647i, _wgslsmith_mult_i32(-6468i, global1.x)), countOneBits(abs(vec4<i32>(global1.x, 2147483647i, 0i, 11767i)))));
    var var_2 = !select(vec2<bool>(u_input.d.x != _wgslsmith_dot_vec4_u32(u_input.a, u_input.a), (3292i >> (var_0.a % 32u)) < (global1.x & -26816i)), !vec2<bool>(select(true, true, true), true), vec2<bool>(true, true));
    var var_3 = vec3<i32>(var_1.x, max(~_wgslsmith_mod_i32(-399i, global1.x << (16132u % 32u)), abs(var_1.x) ^ 1447i), -(~abs(_wgslsmith_mod_i32(global1.x, -2147483647i))));
    var var_4 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(-918f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.a, -690f))), _wgslsmith_f_op_f32(ceil(arg_0.a)), arg_0.a), _wgslsmith_f_op_vec4_f32(trunc(global0[_wgslsmith_index_u32(1u, 17u)])))));
    return ~var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.b);
    var var_1 = Struct_1(_wgslsmith_mult_u32(var_0.a, 4294967295u) >> (u_input.a.x % 32u));
    let var_2 = 1i;
    global1 = vec4<i32>(var_2, var_2, func_4(func_1()), _wgslsmith_clamp_i32(var_2, var_2, ~(-global1.x))) & vec4<i32>(0i, 2147483647i, -(~_wgslsmith_add_i32(1i, var_2)), -1i);
    var_0 = Struct_1(select(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a, abs(16076u)), vec2<u32>(~8253u, 23386u ^ u_input.d.x)), ~40513u, false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(947f + _wgslsmith_f_op_f32(-404f + 463f)) * 1224f)), -2147483647i, firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(firstLeadingBit(global1.x), i32(-1i) * -23148i, reverseBits(var_2)), _wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(global1.x, -1i, -2248i)), reverseBits(vec3<i32>(var_2, var_2, global1.x))))));
}

