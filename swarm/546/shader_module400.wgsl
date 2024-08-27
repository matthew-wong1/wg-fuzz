struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18> = array<bool, 18>(false, false, false, false, true, false, false, true, true, true, false, false, false, false, false, true, false, true);

var<private> global1: vec3<i32>;

var<private> global2: Struct_5 = Struct_5(Struct_1(-1i, 40764i, vec3<i32>(-20298i, 2147483647i, 1i), false), vec4<bool>(true, true, false, false));

var<private> global3: array<bool, 5>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_5) -> i32 {
    global2 = arg_0;
    var var_0 = arg_0.a.b;
    let var_1 = Struct_4(1f, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(max(677f, -1000f)), _wgslsmith_f_op_f32(1231f - 1603f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-960f, 831f), vec2<f32>(2159f, -592f))) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(528f, -952f), vec2<f32>(1348f, -715f)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-210f, 288f) + vec2<f32>(1239f, -544f)))))), true)));
    let var_2 = -_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_add_i32(9451i, global2.a.b), _wgslsmith_sub_i32(-1i, -1i), global1.x, ~24522i), vec4<i32>(_wgslsmith_div_i32(2147483647i, 54134i), global1.x, max(global2.a.a, arg_0.a.c.x), 2147483647i)), ~(-_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.a.a, 2147483647i, arg_0.a.b, 1i), vec4<i32>(42649i, arg_0.a.a, 1i, arg_0.a.b))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.b.x, -733f, global2.a.d)));
    return var_2.x;
}

fn func_2(arg_0: u32, arg_1: i32) -> i32 {
    global1 = min(vec3<i32>(global2.a.a, abs(countOneBits(func_3(Struct_5(Struct_1(1i, global2.a.c.x, global2.a.c, global2.b.x), global2.b)))), _wgslsmith_add_i32(-41637i, ~firstTrailingBit(-8432i))), vec3<i32>(~1i, -_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global1.x), vec2<i32>(global1.x, global1.x)), _wgslsmith_add_i32(~arg_1, global2.a.c.x)) | select(global2.a.c, countOneBits(~global2.a.c), !global2.b.wxy));
    var var_0 = _wgslsmith_div_vec2_i32(~(~vec2<i32>(global2.a.a, global2.a.a) ^ abs(global1.xz)), vec2<i32>(global1.x, arg_1));
    var_0 = _wgslsmith_sub_vec2_i32(global2.a.c.zz, vec2<i32>(global1.x, var_0.x));
    var_0 = global1.yz;
    global2 = Struct_5(Struct_1(arg_1, ~(~1i), global2.a.c, global0[_wgslsmith_index_u32(1u, 18u)]), vec4<bool>(true, global3[_wgslsmith_index_u32(64806u, 5u)], global2.a.d, true));
    return 1i;
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: u32, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = vec4<i32>(arg_3.x, 1i, ~arg_3.x, global2.a.a);
    global1 = -vec3<i32>(global1.x, -2147483647i, max(global1.x, func_2(15312u, 22136i)) >> (firstLeadingBit(u_input.b.x) % 32u));
    return Struct_1(reverseBits(_wgslsmith_dot_vec2_i32(~select(global1.xy, vec2<i32>(arg_3.x, -1i), global2.b.x), ~vec2<i32>(-2147483647i, -22074i) ^ firstTrailingBit(vec2<i32>(-1i, 2147483647i)))), -2147483647i, select(min(min(~vec3<i32>(-2147483647i, 73065i, global2.a.b), -vec3<i32>(-2147483647i, 39115i, -19437i)), ~arg_3), -vec3<i32>(var_0.x, ~global2.a.a, arg_3.x ^ global2.a.b), !(select(global2.a.b, 14102i, true) < -var_0.x)), !select(global3[_wgslsmith_index_u32(4294967295u, 5u)], !(global0[_wgslsmith_index_u32(4294967295u, 18u)] && global3[_wgslsmith_index_u32(4294967295u, 5u)]), true));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 5>();
    var var_0 = Struct_5(func_1(~u_input.b.x, ~u_input.a.x, u_input.a.x, global2.a.c), select(select(select(global2.b, !global2.b, global2.b), select(global2.b, !vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 18u)], true, global2.b.x, true), true), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 0u) ^ vec2<u32>(u_input.b.x, 0u), ~u_input.a.zy), 5u)]), global2.b, global2.b));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(190f, _wgslsmith_f_op_f32(sign(-376f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1941f, 2335f, global3[_wgslsmith_index_u32(u_input.a.x, 5u)])) - _wgslsmith_f_op_f32(127f * 596f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-2204f, 400f)) * _wgslsmith_f_op_f32(f32(-1f) * -527f)))), vec3<f32>(_wgslsmith_f_op_f32(min(-1000f, -943f)), 604f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(478f)) + -1000f))), !select(var_0.b.wxx, vec3<bool>(!global2.a.d, true, all(vec3<bool>(true, false, global2.b.x))), vec3<bool>(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(7936u, 18164u), 5u)], global3[_wgslsmith_index_u32(4294967295u, 5u)] & false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(21865u, vec3<u32>(u_input.a.x, u_input.a.x, min(u_input.b.x, _wgslsmith_clamp_u32(u_input.a.x, 10247u, u_input.b.x))) & u_input.a, ~(~(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 29999u), vec4<u32>(u_input.a.x, 1u, u_input.a.x, 0u)))), var_1.zy, _wgslsmith_sub_i32(global1.x, ~(var_0.a.a >> (u_input.a.x % 32u))));
}

