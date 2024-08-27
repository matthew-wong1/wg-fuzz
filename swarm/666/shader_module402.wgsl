struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<bool>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: vec4<u32>;

var<private> global2: array<f32, 21> = array<f32, 21>(-577f, 1761f, 670f, 422f, -523f, 1454f, -976f, -132f, -470f, 1104f, 217f, -1000f, 629f, -1000f, 1210f, 1000f, -1362f, 1177f, 224f, 1591f, -663f);

var<private> global3: array<i32, 3> = array<i32, 3>(2147483647i, 2147483647i, 4799i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    global1 = ~(~(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.a, 6338u, arg_0.a, global1.x), vec4<u32>(global1.x, u_input.c, 4294967295u, 44930u) << (vec4<u32>(u_input.c, global1.x, global1.x, global1.x) % vec4<u32>(32u))) << (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, arg_0.a, global1.x, 10595u) & vec4<u32>(0u, 56107u, 0u, 41328u), ~vec4<u32>(arg_0.a, 1u, global1.x, 34366u)) % vec4<u32>(32u))));
    var var_0 = Struct_2(~countOneBits(max(_wgslsmith_mult_u32(arg_0.a, u_input.c), firstTrailingBit(1u))), Struct_1(-32445i), 436f);
    global0 = vec4<i32>(-1i) * -max(-vec4<i32>(arg_0.b.a, 12635i, global0.x, arg_0.b.a), ~vec4<i32>(34207i, -32087i, -23979i, 2147483647i) & (vec4<i32>(u_input.a, -2147483647i, global3[_wgslsmith_index_u32(0u, 3u)], u_input.b) & vec4<i32>(global3[_wgslsmith_index_u32(var_0.a, 3u)], -1i, -1i, 1i)));
    let var_1 = reverseBits(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~global1.xzw, global1.xzw), global1.zyz));
    let var_2 = Struct_3(~global0.yyz, vec4<i32>(u_input.a, reverseBits(_wgslsmith_sub_i32(~global0.x, arg_0.b.a)), ~u_input.a, ~(-79828i)), vec2<bool>(true, arg_0.c <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(var_0.c, -808f)), -1896f))), global1.zy);
    return 8376u;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32, arg_3: vec3<i32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(194f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 21u)])), global2[_wgslsmith_index_u32(global1.x, 21u)]))));
    let var_1 = Struct_3(arg_3, vec4<i32>(arg_1.a, -(arg_3.x ^ min(global0.x, global3[_wgslsmith_index_u32(1u, 3u)])), -2147483647i, ~(arg_0.b.a & 1i)), !vec2<bool>(true, !select(false, true, false)), vec2<u32>(arg_0.a, func_3(Struct_2(4294967295u << (global1.x % 32u), Struct_1(-2066i), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_0.a, 21u)] * -933f)))));
    var var_2 = global1.www;
    var var_3 = ~arg_2;
    let var_4 = vec3<i32>(-(arg_1.a >> (min(~56887u, _wgslsmith_mult_u32(arg_2, 51170u)) % 32u)), select(-(~(-101912i)), _wgslsmith_mod_i32(abs(0i), min(arg_0.b.a, ~global0.x)), var_1.c.x), _wgslsmith_dot_vec4_i32(var_1.b, _wgslsmith_div_vec4_i32(vec4<i32>(24749i, _wgslsmith_dot_vec4_i32(vec4<i32>(10667i, 2147483647i, global0.x, global0.x), var_1.b), u_input.b, global0.x), -vec4<i32>(77633i, -33841i, global3[_wgslsmith_index_u32(var_1.d.x, 3u)], global0.x))));
    return vec3<bool>(any(!select(!vec2<bool>(var_1.c.x, var_1.c.x), var_1.c, var_1.c)), true, var_1.c.x);
}

fn func_1(arg_0: i32, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = !select(!(!func_2(Struct_2(1u, Struct_1(-1i), -934f), Struct_1(-1i), global1.x, vec3<i32>(1i, global0.x, -1i))), !vec3<bool>(true, true, all(vec4<bool>(true, false, true, false))), func_2(Struct_2(global1.x, Struct_1(-1i), _wgslsmith_div_f32(arg_1.x, 497f)), Struct_1(-14040i), 1u >> (_wgslsmith_dot_vec2_u32(global1.wx, global1.xy) % 32u), vec3<i32>(~26000i, -15911i, arg_0)));
    global1 = _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(_wgslsmith_add_u32(84613u, u_input.c), reverseBits(24108u), abs(26422u), ~2478u) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(0u, global1.x, 16491u, u_input.c) ^ vec4<u32>(u_input.c, global1.x, global1.x, global1.x), vec4<u32>(u_input.c, global1.x, global1.x, u_input.c))), ~reverseBits(~select(vec4<u32>(u_input.c, 18582u, u_input.c, 1852u), vec4<u32>(4294967295u, u_input.c, u_input.c, 4294967295u), false)));
    var var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2172f, global2[_wgslsmith_index_u32(4294967295u, 21u)])), _wgslsmith_f_op_vec2_f32(arg_1.zy + vec2<f32>(311f, global2[_wgslsmith_index_u32(17271u, 21u)]))))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(4294967295u, 21u)]))), 180f)))));
    var var_2 = 304f;
    let var_3 = any(select(vec2<bool>(var_0.x, false), !var_0.xy, vec2<bool>(var_0.x, true)));
    return Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(-(vec4<i32>(-5201i, global0.x, -59119i, -35353i) << (vec4<u32>(u_input.c, 0u, 25467u, global1.x) % vec4<u32>(32u))), -_wgslsmith_mult_vec4_i32(vec4<i32>(global0.x, global0.x, global3[_wgslsmith_index_u32(4294967295u, 3u)], arg_0), vec4<i32>(global0.x, 30510i, -33005i, 1i))), _wgslsmith_div_vec4_i32(select(~vec4<i32>(u_input.a, global0.x, global0.x, 45691i), vec4<i32>(global0.x, -29246i, -14968i, 36870i) | vec4<i32>(33017i, arg_0, -553i, -1i), var_0.x), max(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, global0.x, 18458i, 22675i), vec4<i32>(11409i, global0.x, arg_0, 37671i)), vec4<i32>(32530i, -16527i, 1i, 24510i) >> (vec4<u32>(u_input.c, global1.x, u_input.c, 1u) % vec4<u32>(32u))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(0i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 21u)]), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(6084u, 21u)], 773f), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global1.x, 21u)] - 293f)) - vec3<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 21u)] - -436f), global2[_wgslsmith_index_u32(global1.x & 23873u, 21u)], global2[_wgslsmith_index_u32(~global1.x, 21u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-2210f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 21u)] * _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(20549u, 21u)], 670f))), 1036f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-115f, -394f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -631f)))), _wgslsmith_f_op_f32(473f - -1000f)), 1i, _wgslsmith_div_vec2_u32(vec2<u32>(reverseBits(abs(0u)), 1u), max(_wgslsmith_mod_vec2_u32(global1.xx, abs(vec2<u32>(0u, global1.x))), ~vec2<u32>(u_input.c, 1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(u_input.c, 21u)], -2402f))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-905f)))))));
}

