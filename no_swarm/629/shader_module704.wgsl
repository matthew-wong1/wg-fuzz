struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3> = array<u32, 3>(1u, 1u, 0u);

var<private> global1: array<vec2<i32>, 18>;

var<private> global2: vec4<i32> = vec4<i32>(i32(-2147483648), 52231i, -17443i, -47150i);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>) -> i32 {
    global0 = array<u32, 3>();
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-479f, -1290f, arg_0.b.x)), _wgslsmith_f_op_f32(-391f + -1023f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1448f, -358f)), _wgslsmith_f_op_f32(floor(-829f)))))));
    let var_1 = vec2<i32>(-2147483647i, _wgslsmith_clamp_i32(global2.x, _wgslsmith_dot_vec2_i32(arg_0.a.wz ^ (arg_0.a.wz << (vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(50881u, 3u)], 3u)], 4294967295u) % vec2<u32>(32u))), arg_1.xz), -2147483647i));
    let var_2 = Struct_2(-1i, _wgslsmith_sub_i32(61161i, var_1.x << (reverseBits(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 3u)], 3u)], 3u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(17363u, 3u)], 3u)], 3u)], 3u)])) % 32u)), Struct_1(arg_0.a, select(vec4<bool>(!arg_0.b.x, any(arg_0.b.xwy), arg_0.b.x, !arg_0.b.x), !vec4<bool>(true, false, arg_0.b.x, arg_0.b.x), select(arg_0.b, !vec4<bool>(false, arg_0.b.x, arg_0.b.x, arg_0.b.x), vec4<bool>(true, false, false, true)))), !arg_0.b.x);
    global2 = -vec4<i32>(firstTrailingBit(arg_0.a.x), select(_wgslsmith_div_i32(-var_1.x, 10075i), -var_1.x, true), var_2.a, i32(-1i) * -(~48592i));
    return u_input.a;
}

fn func_2(arg_0: f32, arg_1: u32) -> vec4<bool> {
    global2 = vec4<i32>(-2147483647i, max(u_input.a, 1i), _wgslsmith_mod_i32(abs(u_input.a) << (firstTrailingBit(arg_1) % 32u), ~global2.x) | 2147483647i, u_input.a >> (abs(1u) % 32u));
    let var_0 = ~arg_1;
    global1 = array<vec2<i32>, 18>();
    let var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(func_3(Struct_1(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<bool>(false, false, false, false)), -vec3<i32>(-1269i, global2.x, u_input.a)), _wgslsmith_sub_i32(min(u_input.a, u_input.a), func_3(Struct_1(vec4<i32>(u_input.a, 1i, -20435i, u_input.a), vec4<bool>(true, true, false, true)), vec3<i32>(global2.x, 22944i, u_input.a))), firstLeadingBit(i32(-1i) * -11560i)), _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_div_i32(global2.x, global2.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, global2.x, -39321i), vec4<i32>(global2.x, -25267i, u_input.a, global2.x)), -37047i | u_input.a), abs(vec3<i32>(3270i, 1i, global2.x)))) == 1i;
    let var_2 = ~global2.x;
    return vec4<bool>(!(!var_1), false, true, var_1);
}

fn func_1(arg_0: Struct_3, arg_1: f32) -> i32 {
    var var_0 = arg_0.a.c.b;
    global1 = array<vec2<i32>, 18>();
    global1 = array<vec2<i32>, 18>();
    let var_1 = Struct_1(arg_0.a.c.a, select(select(!func_2(-657f, global0[_wgslsmith_index_u32(64191u, 3u)]), select(select(vec4<bool>(arg_0.a.d, arg_0.a.d, var_0.x, false), arg_0.a.c.b, arg_0.a.d), vec4<bool>(var_0.x, var_0.x, arg_0.a.c.b.x, arg_0.a.c.b.x), true), true && any(vec3<bool>(var_0.x, var_0.x, var_0.x))), arg_0.a.c.b, arg_0.a.c.b));
    global1 = array<vec2<i32>, 18>();
    return _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(var_1.a.yx, global2.xz), -(~(~(~vec2<i32>(-9932i, -1i)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_mult_vec4_i32(vec4<i32>(global2.x, global2.x, ~func_1(Struct_3(Struct_2(global2.x, global2.x, Struct_1(vec4<i32>(u_input.a, 59775i, u_input.a, u_input.a), vec4<bool>(true, true, false, true)), false)), -309f), _wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11838u, 3u)], 18u)] | vec2<i32>(2757i, u_input.a), _wgslsmith_add_vec2_i32(vec2<i32>(global2.x, 14583i), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(50188u, 3u)], 3u)], 3u)], 3u)], 3u)], 3u)], 18u)]))), _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(min(vec4<i32>(42592i, u_input.a, u_input.a, 0i), vec4<i32>(global2.x, 12597i, global2.x, global2.x)), vec4<i32>(1i, global2.x, -3745i, u_input.a) ^ vec4<i32>(u_input.a, 0i, 52139i, u_input.a)), select(vec4<i32>(global2.x, -51044i, 2147483647i, -51099i) ^ vec4<i32>(global2.x, global2.x, u_input.a, u_input.a), select(vec4<i32>(u_input.a, global2.x, 2147483647i, global2.x), vec4<i32>(global2.x, 4637i, global2.x, 1i), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), false)), vec4<i32>(-31492i, 1i, -u_input.a, i32(-1i) * -112469i))) & vec4<i32>(global2.x, _wgslsmith_sub_i32(_wgslsmith_mult_i32(-global2.x, i32(-1i) * -15194i), u_input.a), _wgslsmith_dot_vec2_i32(firstLeadingBit(global2.xx), global2.wz) ^ -max(4935i, u_input.a), _wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(61785u, 18u)], ~vec2<i32>(u_input.a, 27363i)));
    var var_0 = Struct_1(-select(-vec4<i32>(u_input.a, u_input.a, 26037i, -60153i), vec4<i32>(global2.x, 1i, ~global2.x, global2.x), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, true, true, true), select(func_2(-1000f, 11150u), func_2(856f, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9227u, 3u)], 3u)]), vec4<bool>(true, true, true, true)), true));
    var var_1 = false;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(u_input.a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(184f)), _wgslsmith_f_op_f32(sign(816f)))))));
}

