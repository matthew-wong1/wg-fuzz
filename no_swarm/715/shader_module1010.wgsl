struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, false, false);

var<private> global1: array<Struct_2, 20>;

var<private> global2: Struct_3 = Struct_3(Struct_1(vec2<f32>(363f, 139f), vec4<bool>(false, true, false, true)));

var<private> global3: u32 = 39629u;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_4, arg_1: Struct_2, arg_2: i32, arg_3: i32) -> vec2<bool> {
    return !select(!global0.yz, arg_0.a.a.b.yz, arg_1.b);
}

fn func_2(arg_0: bool, arg_1: vec2<bool>) -> Struct_3 {
    global2 = Struct_3(global2.a);
    let var_0 = u_input.e;
    global2 = Struct_3(global2.a);
    let var_1 = -vec3<i32>(min(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, u_input.a.x, -11463i, -21743i), vec4<i32>(43335i, -1i, u_input.a.x, 0i)), vec4<i32>(u_input.a.x, u_input.c.x, u_input.b.x, u_input.b.x)), -(u_input.a.x << (47567u % 32u))), -_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.d, u_input.b.x, -1i, -823i), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, u_input.b.x, 17496i), vec4<i32>(26825i, -1i, 2147483647i, u_input.c.x))), u_input.c.x);
    var var_2 = -38136i;
    return Struct_3(Struct_1(global2.a.a, !select(vec4<bool>(false, arg_0, global0.x, global0.x), global2.a.b, select(global2.a.b, vec4<bool>(false, global2.a.b.x, arg_1.x, false), true))));
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    var var_0 = 1i;
    var var_1 = !(!global2.a.b);
    var var_2 = u_input.b.xx;
    var var_3 = func_2(~_wgslsmith_mod_u32(1u ^ u_input.e.x, 1u) <= u_input.e.x, select(var_1.xz, func_2(true, select(global2.a.b.yy, global0.wy, global0.x)).a.b.ww, var_1.wy));
    var_0 = -1i;
    return -1031f;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = abs(~u_input.e.x);
    global2 = func_2(global0.x, !select(!func_1(Struct_4(Struct_3(global2.a), Struct_3(global2.a), u_input.c.x), global1[_wgslsmith_index_u32(14080u, 20u)], u_input.d, 3318i), func_1(Struct_4(Struct_3(global2.a), Struct_3(global2.a), 1i), global1[_wgslsmith_index_u32(~1u, 20u)], -17023i, -43035i), false));
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(749f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.a.x + global2.a.a.x) - _wgslsmith_f_op_f32(round(306f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(847f - _wgslsmith_f_op_f32(global2.a.a.x + 556f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -538f)), _wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(664f, global2.a.a.x, global2.a.a.x) * vec3<f32>(942f, 538f, 716f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(549f, global2.a.a.x, -788f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-308f))))), vec4<f32>(-219f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2.a.a.x + _wgslsmith_f_op_f32(max(global2.a.a.x, 295f))), -1021f)), _wgslsmith_f_op_f32(global2.a.a.x - _wgslsmith_f_op_f32(-global2.a.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-656f))) + global2.a.a.x)));
    global1 = array<Struct_2, 20>();
    var var_1 = _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(13525u, 1u, u_input.e.x), ~vec3<u32>(1u, u_input.e.x, 36905u) ^ vec3<u32>(47434u, 64297u, 17354u)), ~_wgslsmith_sub_vec3_u32(max(vec3<u32>(12495u, u_input.e.x, 60797u), vec3<u32>(26071u, u_input.e.x, 0u)), ~vec3<u32>(4294967295u, u_input.e.x, 128471u))), reverseBits(countOneBits(vec3<u32>(u_input.e.x, 46689u, 4294967295u)) ^ ~_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.e.x, u_input.e.x), vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x))));
    let var_2 = Struct_4(Struct_3(global2.a), Struct_3(global2.a), -2529i);
    let var_3 = Struct_2(-26781i, var_2.a.a.b.x || var_2.a.a.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-893f, -238f, var_2.b.a.a.x)))))), firstLeadingBit(1u), u_input.e.x, _wgslsmith_f_op_f32(703f * -739f));
}

