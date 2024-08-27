struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: vec3<u32>;

var<private> global2: array<f32, 27> = array<f32, 27>(2219f, -866f, 459f, -350f, -1000f, 1000f, -514f, -372f, -560f, -1000f, -887f, -606f, 1733f, 381f, -532f, 1000f, -798f, 693f, -1707f, 840f, 1441f, -227f, -750f, 552f, 442f, 1942f, 659f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> bool {
    var var_0 = select(vec3<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), u_input.b > 57891u)), all(vec2<bool>(false, u_input.b < 1u)), false), select(select(vec3<bool>(u_input.b < global1.x, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(any(vec2<bool>(true, true)), global2[_wgslsmith_index_u32(5642u, 27u)] == -923f, true)), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false), false), vec3<bool>(any(vec3<bool>(true, false, true)), true, u_input.a.x <= 15099i), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false), true))), any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false))), select(true, all(vec4<bool>(false, true, true, false)), false))));
    var_0 = !select(!(!(!vec3<bool>(var_0.x, var_0.x, var_0.x))), vec3<bool>(true, var_0.x, all(var_0.yx)), false & (global2[_wgslsmith_index_u32(~1u, 27u)] < global2[_wgslsmith_index_u32(reverseBits(4294967295u), 27u)]));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, global2[_wgslsmith_index_u32(global1.x, 27u)], 2549f, global2[_wgslsmith_index_u32(4294967295u, 27u)]))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1550f, global2[_wgslsmith_index_u32(37302u, 27u)], -1000f, global2[_wgslsmith_index_u32(23295u, 27u)]))))), vec4<f32>(-1483f, -107f, _wgslsmith_div_f32(global2[_wgslsmith_index_u32(4294967295u, 27u)], _wgslsmith_f_op_f32(round(156f))), _wgslsmith_f_op_f32(f32(-1f) * -530f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, global1.x, 4294967295u), vec3<u32>(25577u, global1.x, u_input.c.x)), 27u)]) * _wgslsmith_f_op_f32(-2392f - global2[_wgslsmith_index_u32(global1.x, 27u)])), ~4294967295u, _wgslsmith_mult_vec4_i32(abs(select(vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x))), vec4<i32>(u_input.a.x, 2147483647i ^ u_input.a.x, -2147483647i, u_input.a.x)) | -vec4<i32>(_wgslsmith_sub_i32(u_input.a.x, 1521i), select(u_input.a.x, 1i, var_0.x), u_input.a.x, -31255i));
    global1 = _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, _wgslsmith_mult_u32(0u, ~80396u)) & _wgslsmith_clamp_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, global1.x, global1.x), vec3<u32>(4294967295u, 1u, var_1.c)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(64948u, 14648u, 1u), vec3<u32>(25168u, var_1.c, 59341u)), vec3<u32>(1u, 1u, _wgslsmith_mod_u32(49140u, global1.x))), _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(min(vec3<u32>(6227u, var_1.c, 33005u), vec3<u32>(0u, 1u, var_1.c)), select(vec3<u32>(52652u, 4294967295u, 0u), vec3<u32>(var_1.c, u_input.c.x, var_1.c), vec3<bool>(false, false, var_0.x))) & vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, 0u, var_1.c), vec3<u32>(7077u, 98510u, 4964u)), u_input.c.x, _wgslsmith_clamp_u32(global1.x, u_input.b, 39657u)), ~abs(vec3<u32>(global1.x, global1.x, u_input.c.x)) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(0u, var_1.c, 0u), select(vec3<u32>(global1.x, 1u, var_1.c), vec3<u32>(var_1.c, global1.x, global1.x), var_0.x)) % vec3<u32>(32u))));
    var var_2 = var_1;
    return any(var_0.zz);
}

fn func_2() -> Struct_1 {
    var var_0 = 1u;
    let var_1 = all(select(select(vec3<bool>(any(vec2<bool>(false, true)), any(vec2<bool>(false, true)), any(vec3<bool>(true, true, false))), vec3<bool>(true, true, true), true), vec3<bool>(true, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.c.x, 27u)]) >= _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 27u)] + 1658f), true), func_3()));
    let var_2 = !select(!vec3<bool>(all(vec4<bool>(var_1, var_1, true, true)), !var_1, true), !vec3<bool>(var_1, select(var_1, false, var_1), true), true);
    var var_3 = select(_wgslsmith_sub_i32(min(min(-1i, _wgslsmith_div_i32(u_input.a.x, -25613i)), ~select(13529i, u_input.a.x, true)), -abs(u_input.a.x)), -abs(-2147483647i), select(true, all(!vec2<bool>(true, var_2.x)), var_1));
    let var_4 = _wgslsmith_mult_u32(u_input.c.x, u_input.b & u_input.b);
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(60835u, 27u)], 234f)))), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1185f, global2[_wgslsmith_index_u32(u_input.b, 27u)])) * 1271f), 1000f), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1f, global2[_wgslsmith_index_u32(4274u, 27u)]))), ~(~global1.x), _wgslsmith_mod_vec4_i32(select(~(~vec4<i32>(-20942i, u_input.a.x, -1i, 0i)), (vec4<i32>(u_input.a.x, 2147483647i, 0i, u_input.a.x) | vec4<i32>(u_input.a.x, 0i, 2147483647i, u_input.a.x)) | (vec4<i32>(-25319i, 2147483647i, u_input.a.x, u_input.a.x) << (vec4<u32>(1u, u_input.c.x, 106216u, var_4) % vec4<u32>(32u))), vec4<bool>(!var_1, true, true, true)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -12089i, u_input.a.x, u_input.a.x), abs(vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, u_input.a.x))), _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(u_input.a.x, 80316i)), vec2<i32>(-1i, 2147483647i) & vec2<i32>(-1i, u_input.a.x)), ~u_input.a.x, -abs(u_input.a.x))));
}

fn func_1(arg_0: i32) -> Struct_1 {
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!select(!select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(true, true), false));
    var var_1 = func_1(firstTrailingBit(~(i32(-1i) * -u_input.a.x)));
    global2 = array<f32, 27>();
    global1 = vec3<u32>(1u, ~((_wgslsmith_clamp_u32(55432u, var_1.c, 1u) & 9880u) & ~func_2().c), ~(~global1.x));
    let var_2 = ~1u;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

