struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20> = array<f32, 20>(-338f, -719f, 394f, -885f, 951f, -367f, -575f, -1221f, -1333f, 1486f, 856f, 1126f, -1132f, 923f, 722f, -268f, 586f, -1384f, 1697f, 1121f);

var<private> global1: bool;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: vec2<u32>) -> vec2<f32> {
    global0 = array<f32, 20>();
    let var_0 = firstLeadingBit(0u);
    let var_1 = u_input.c.yy;
    global1 = true;
    global0 = array<f32, 20>();
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-243f + -1496f) - -2053f)))));
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    var var_0 = !vec3<bool>(any(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), true);
    let var_1 = Struct_1(vec4<u32>(76615u, ~(~u_input.a.x), ~min(_wgslsmith_sub_u32(u_input.a.x, 1u), u_input.a.x << (58174u % 32u)), 107268u), _wgslsmith_add_i32(abs(u_input.b.x), u_input.b.x), u_input.d, select(select(!select(vec3<bool>(var_0.x, false, true), vec3<bool>(var_0.x, var_0.x, false), true), !vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.x | var_0.x), vec3<bool>(var_0.x, any(vec3<bool>(true, var_0.x, var_0.x)) != true, true), true));
    global1 = true;
    var_0 = !select(!vec3<bool>(var_1.d.x, !var_0.x, all(vec2<bool>(var_1.d.x, true))), !select(!vec3<bool>(false, true, var_0.x), var_1.d, true), any(vec4<bool>(false == var_1.d.x, true, var_1.d.x && var_1.d.x, false | var_1.d.x)));
    let var_2 = -231f;
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(31796u), 76086u, 0u << (var_1.a.x % 32u)), ~var_1.a.wwz), 20u)];
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: vec2<f32>, arg_3: f32) -> Struct_1 {
    global0 = array<f32, 20>();
    let var_0 = u_input.a.x;
    global1 = false;
    let var_1 = Struct_1(select(abs(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, 29838u, var_0, 2563u), vec4<u32>(4294967295u, u_input.d, 0u, var_0))), reverseBits(reverseBits(select(vec4<u32>(4294967295u, u_input.a.x, 65938u, var_0), vec4<u32>(var_0, 4294967295u, u_input.a.x, var_0), false))), vec4<bool>(arg_1.x != global0[_wgslsmith_index_u32(46009u, 20u)], false, any(vec4<bool>(false, true, true, false)) || true, all(vec4<bool>(false, false, true, false)))), -2147483647i, 4294967295u, select(vec3<bool>(true, any(vec4<bool>(false, true, true, true)), true), vec3<bool>(true, true, true), select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), vec3<bool>(false, true, true), all(vec3<bool>(false, true, false))), vec3<bool>(false, true, true), true)));
    global1 = _wgslsmith_add_i32((firstLeadingBit(u_input.c.x) | _wgslsmith_div_i32(-32087i, var_1.b)) | u_input.c.x, min(select(i32(-1i) * -2147483647i, -u_input.c.x, var_1.d.x), u_input.c.x)) < _wgslsmith_dot_vec4_i32(reverseBits(-u_input.c), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(-u_input.c, u_input.c), -(vec4<i32>(1i, u_input.b.x, var_1.b, arg_0) >> (var_1.a % vec4<u32>(32u)))));
    return Struct_1(var_1.a, -1i, _wgslsmith_mod_u32(u_input.d, var_0) << (16304u % 32u), vec3<bool>(var_1.d.x, select(true, !var_1.d.x, false), any(!select(vec3<bool>(var_1.d.x, true, var_1.d.x), vec3<bool>(var_1.d.x, false, false), vec3<bool>(true, var_1.d.x, var_1.d.x)))));
}

fn func_1() -> Struct_1 {
    global0 = array<f32, 20>();
    let var_0 = vec3<u32>(u_input.a.x, ~_wgslsmith_add_u32(~abs(u_input.a.x), _wgslsmith_mult_u32(_wgslsmith_mult_u32(26461u, u_input.d), _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(4807u, 10266u)))), u_input.d);
    global0 = array<f32, 20>();
    var var_1 = 46816u;
    global1 = !(global0[_wgslsmith_index_u32(0u, 20u)] >= -391f);
    return func_4(i32(-1i) * -1i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1399f, -1993f)))))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(var_0.x, 20u)])), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(var_0.x, 20u)], global0[_wgslsmith_index_u32(1u, 20u)]))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, var_0.x), _wgslsmith_div_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, var_0.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(686f * _wgslsmith_f_op_f32(func_3(vec4<f32>(1417f, global0[_wgslsmith_index_u32(var_0.x, 20u)], global0[_wgslsmith_index_u32(56840u, 20u)], -338f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 20>();
    var var_0 = func_1();
    let var_1 = abs((vec4<i32>(1i, u_input.b.x, var_0.b, _wgslsmith_sub_i32(-39000i, u_input.b.x)) | vec4<i32>(u_input.c.x >> (21978u % 32u), 22445i, ~(-1i), _wgslsmith_mod_i32(1i, 2147483647i))) | _wgslsmith_mod_vec4_i32(min(u_input.c, max(u_input.c, vec4<i32>(-2147483647i, u_input.c.x, -1i, var_0.b))), abs(vec4<i32>(1i, var_0.b, -15173i, var_0.b))));
    var var_2 = func_4(reverseBits(-32285i), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, 956f), vec2<f32>(global0[_wgslsmith_index_u32(19953u, 20u)], global0[_wgslsmith_index_u32(0u, 20u)])), vec2<f32>(-2665f, 155f))))), vec2<f32>(341f, global0[_wgslsmith_index_u32(0u, 20u)]))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(9236u, 20u)], global0[_wgslsmith_index_u32(0u, 20u)])), _wgslsmith_div_vec2_f32(vec2<f32>(554f, global0[_wgslsmith_index_u32(var_0.c, 20u)]), vec2<f32>(global0[_wgslsmith_index_u32(45088u, 20u)], -367f)), select(var_0.d.x, false, var_0.d.x)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 20u)] + global0[_wgslsmith_index_u32(~var_0.c, 20u)]) * _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(50085u, 20u)]))), _wgslsmith_f_op_f32(f32(-1f) * -2137f))));
    var_2 = Struct_1(var_0.a, _wgslsmith_div_i32(-28512i, var_2.b) ^ -16242i, var_0.a.x, !var_0.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(1189f)), ~(~u_input.a.x), reverseBits(u_input.a >> (vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u))));
}

