struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: u32;

var<private> global2: array<i32, 30> = array<i32, 30>(-24106i, -12172i, 4382i, -34079i, -45426i, 1149i, 0i, 2147483647i, 17900i, -27942i, i32(-2147483648), 0i, 624i, -66602i, 1i, 2147483647i, 3521i, i32(-2147483648), 2147483647i, -1i, -2507i, 35010i, 2147483647i, -31222i, 22026i, 0i, 48512i, -1i, i32(-2147483648), -12821i);

var<private> global3: i32;

var<private> global4: vec4<f32> = vec4<f32>(691f, -1420f, 984f, 734f);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = arg_0;
    let var_1 = arg_0;
    let var_2 = -405f;
    let var_3 = vec4<bool>(any(select(vec2<bool>(true, all(vec2<bool>(false, false))), !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true))), true, true, true);
    var var_4 = var_1;
    return select(!select(select(select(vec4<bool>(true, var_3.x, var_3.x, var_3.x), var_3, false), select(vec4<bool>(var_3.x, true, true, var_3.x), vec4<bool>(var_3.x, false, var_3.x, var_3.x), false), var_3.x), select(select(var_3, vec4<bool>(var_3.x, var_3.x, var_3.x, true), var_3.x), select(var_3, vec4<bool>(var_3.x, var_3.x, var_3.x, false), true), true), var_3), vec4<bool>(max(min(u_input.a.x, 1i), -1i) > _wgslsmith_clamp_i32(-var_1.a, u_input.e.x, 1i), true, var_3.x, any(var_3) && true), vec4<bool>(!((var_4.a > -2147483647i) || (var_0.a == 2147483647i)), true, !(!any(var_3)), !var_3.x));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(abs(global2[_wgslsmith_index_u32(arg_0, 30u)]));
    var var_1 = Struct_1(var_0.a);
    let var_2 = func_3(arg_1);
    let var_3 = reverseBits(~(~min(_wgslsmith_clamp_u32(16025u, 29057u, u_input.c.x), _wgslsmith_mod_u32(9195u, u_input.c.x))));
    var var_4 = _wgslsmith_mult_vec4_i32(-vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_1.a, u_input.e.x, var_0.a), ~vec4<i32>(arg_1.a, -1i, 5277i, arg_1.a)), reverseBits(~var_1.a), countOneBits(-u_input.b), arg_1.a), vec4<i32>(abs(2147483647i), ~reverseBits(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0, 4294967295u), 30u)]), var_1.a, arg_1.a));
    return arg_1;
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> StorageBuffer {
    var var_0 = 329f;
    var var_1 = func_2(~(~_wgslsmith_mod_u32(u_input.c.x, 38298u)) | ~min(~arg_0, ~arg_0), arg_1);
    var var_2 = true;
    global2 = array<i32, 30>();
    let var_3 = _wgslsmith_sub_vec2_i32(u_input.a.xx, _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(~vec2<i32>(arg_1.a, 1i), u_input.e.zy), abs(u_input.e.zy | u_input.e.zx)), _wgslsmith_add_vec2_i32(~vec2<i32>(-1562i, -77976i), -u_input.e.yy) | u_input.a.zz));
    return StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(140f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 30>();
    let x = u_input.a;
    s_output = func_1(max(44189u, 0u), Struct_1(~_wgslsmith_add_i32(max(-2147483647i, u_input.d), _wgslsmith_sub_i32(global2[_wgslsmith_index_u32(u_input.c.x, 30u)], u_input.e.x))));
}

