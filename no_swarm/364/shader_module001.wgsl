struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14>;

var<private> global1: array<vec2<u32>, 9>;

var<private> global2: array<vec4<f32>, 24>;

var<private> global3: vec2<i32> = vec2<i32>(-19262i, -1i);

var<private> global4: bool;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: bool, arg_1: vec3<f32>, arg_2: bool) -> u32 {
    var var_0 = false;
    var_0 = !(max(max(u_input.b.x, global3.x), global3.x) <= -1i) & true;
    var_0 = !(arg_1.x > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(591f, _wgslsmith_f_op_f32(exp2(arg_1.x)))));
    global4 = arg_2;
    let var_1 = Struct_1(u_input.e, ~1u, abs(~_wgslsmith_sub_vec4_u32(min(vec4<u32>(u_input.a.x, u_input.c, 1u, u_input.c), vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.c)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, 10739u, u_input.c, u_input.c), vec4<u32>(u_input.a.x, u_input.c, 0u, u_input.a.x)))));
    return countOneBits(_wgslsmith_div_u32(u_input.c, ~36888u) ^ 0u);
}

fn func_1(arg_0: Struct_3) -> u32 {
    var var_0 = Struct_2(_wgslsmith_add_vec3_u32(select(vec3<u32>(4294967295u, u_input.c, u_input.a.x) ^ ~vec3<u32>(u_input.c, u_input.a.x, u_input.c), ~firstLeadingBit(vec3<u32>(58478u, u_input.c, 58294u)), true), vec3<u32>(~select(0u, 16791u, global0[_wgslsmith_index_u32(u_input.c, 14u)]), abs(44723u), 1u ^ countOneBits(u_input.a.x))));
    var var_1 = false;
    global0 = array<bool, 14>();
    let var_2 = -127f;
    var var_3 = Struct_2(vec3<u32>(28829u, func_2(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 28192u, 85737u, var_0.a.x), vec4<u32>(var_0.a.x, u_input.c, 0u, 4845u)), _wgslsmith_clamp_u32(u_input.a.x, 0u, 1948u)), 14u)], vec3<f32>(var_2, -1681f, _wgslsmith_f_op_f32(265f - arg_0.a.x)), global0[_wgslsmith_index_u32(~83587u, 14u)]), max(countOneBits(~var_0.a.x), abs(~u_input.c))));
    return _wgslsmith_dot_vec2_u32(vec2<u32>(var_3.a.x, var_3.a.x), (vec2<u32>(4294967295u, var_3.a.x) ^ firstTrailingBit(global1[_wgslsmith_index_u32(4294967295u | u_input.c, 9u)])) & _wgslsmith_add_vec2_u32(select(_wgslsmith_mult_vec2_u32(vec2<u32>(var_3.a.x, 4294967295u), vec2<u32>(var_0.a.x, 1u)), ~var_0.a.yx, !global0[_wgslsmith_index_u32(4294967295u, 14u)]), var_3.a.zz));
}

fn func_3() -> u32 {
    let var_0 = vec4<bool>(true & global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, func_1(Struct_3(global2[_wgslsmith_index_u32(u_input.a.x, 24u)]))), 14u)], true, false, !(func_1(Struct_3(global2[_wgslsmith_index_u32(0u, 24u)])) != _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, 16468u), vec3<u32>(u_input.c, 556u, u_input.c))));
    var var_1 = Struct_2(~select(~firstTrailingBit(vec3<u32>(u_input.a.x, 23945u, u_input.a.x)), vec3<u32>(~u_input.a.x, 1u, abs(u_input.a.x)), true));
    var var_2 = vec2<i32>(_wgslsmith_mult_i32(-1i, 0i), global3.x) >> (var_1.a.zx % vec2<u32>(32u));
    var var_3 = Struct_2(firstLeadingBit(var_1.a));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -303f)))) + _wgslsmith_div_f32(376f, _wgslsmith_f_op_f32(round(-223f))));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<f32>, 24>();
    let var_0 = func_1(Struct_3(_wgslsmith_f_op_vec4_f32(min(global2[_wgslsmith_index_u32(u_input.a.x, 24u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(155f, -713f, 1048f, 1888f) * global2[_wgslsmith_index_u32(4294967295u, 24u)]))))) & 4294967295u;
    global4 = any(!(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 14u)], global0[_wgslsmith_index_u32(1u, 14u)]))) || global0[_wgslsmith_index_u32(~u_input.c, 14u)];
    global0 = array<bool, 14>();
    let var_1 = Struct_2((~_wgslsmith_sub_vec3_u32(vec3<u32>(8954u, var_0, u_input.a.x), vec3<u32>(u_input.c, 4467u, 0u)) << (vec3<u32>(~30009u, func_3(), var_0) % vec3<u32>(32u))) | min(select(~vec3<u32>(var_0, 4294967295u, u_input.a.x), _wgslsmith_mult_vec3_u32(vec3<u32>(18068u, 15426u, u_input.c), vec3<u32>(64836u, u_input.c, var_0)), vec3<bool>(true, true, true)), vec3<u32>(1u, var_0, ~var_0)));
    let var_2 = _wgslsmith_mult_vec2_i32(u_input.b.xz, u_input.e.yw | vec2<i32>(~(u_input.e.x << (var_0 % 32u)), -65597i));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_mod_u32(var_0, select(~7365u, u_input.a.x, global0[_wgslsmith_index_u32(1u, 14u)])), _wgslsmith_clamp_u32(var_0, u_input.c, var_1.a.x) | (var_0 ^ max(var_1.a.x, var_0)), true), _wgslsmith_add_vec4_i32(u_input.e, u_input.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f))));
}

