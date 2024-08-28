struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16>;

var<private> global1: array<vec2<f32>, 24>;

var<private> global2: array<Struct_1, 32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: u32) -> vec3<i32> {
    let var_0 = global1[_wgslsmith_index_u32(~(_wgslsmith_mod_u32(6846u, ~min(0u, 1u)) >> (0u % 32u)), 24u)];
    global0 = array<Struct_1, 16>();
    var var_1 = Struct_1(vec2<i32>(abs(-22615i), -28607i));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-266f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(var_0.x))))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(ceil(-1406f)), -147f), vec2<f32>(_wgslsmith_f_op_f32(min(1035f, 632f)), var_0.x))), vec2<f32>(-1166f, var_0.x), vec2<bool>(false, true))));
    let var_3 = _wgslsmith_div_i32(u_input.a.x, -_wgslsmith_add_i32(arg_2.a.x, arg_2.a.x)) >= _wgslsmith_sub_i32(16849i, _wgslsmith_dot_vec4_i32(firstTrailingBit(~vec4<i32>(-17420i, var_1.a.x, u_input.c, var_1.a.x)), _wgslsmith_add_vec4_i32(vec4<i32>(0i, -1i, arg_2.a.x, 33410i), vec4<i32>(2147483647i, -32300i, 2147483647i, 1i)) ^ ~vec4<i32>(-20103i, 24762i, var_1.a.x, 33636i)));
    return firstTrailingBit(vec3<i32>(-19708i, _wgslsmith_mult_i32(arg_2.a.x, 1i), _wgslsmith_dot_vec2_i32(~(vec2<i32>(u_input.c, -1i) ^ arg_2.a), vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a), u_input.a.x))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: i32, arg_3: vec3<bool>) -> bool {
    let var_0 = -min(~_wgslsmith_add_vec3_i32(func_3(arg_3.x, vec4<u32>(1u, 4294967295u, 0u, 0u), global0[_wgslsmith_index_u32(u_input.b.x, 16u)], arg_1.x), u_input.a), _wgslsmith_mod_vec3_i32(abs(vec3<i32>(arg_2, arg_2, arg_0.a.x)), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(u_input.a, u_input.a), vec3<i32>(-30343i, -12495i, 14079i))));
    let var_1 = global0[_wgslsmith_index_u32(arg_1.x ^ ~(~(~abs(arg_1.x))), 16u)];
    global1 = array<vec2<f32>, 24>();
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_1.zx, abs(~vec2<u32>(_wgslsmith_sub_u32(u_input.b.x, 19155u), abs(4294967295u)))), 32u)];
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(958f))));
    return any(vec4<bool>(any(arg_3), !arg_3.x, true, true));
}

fn func_1() -> u32 {
    let var_0 = select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(all(vec2<bool>(false, true)), true), vec2<bool>(true, true), vec2<bool>(func_2(Struct_1(u_input.a.zz), vec4<u32>(1u, u_input.b.x, 0u, u_input.b.x), u_input.a.x, vec3<bool>(false, true, true)), true)), vec2<bool>(true, true)), vec2<bool>(true, true));
    var var_1 = Struct_1(u_input.a.yx);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(399f))), 250f, 1f, 1281f), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(2387f, 1094f, 1000f, 640f), vec4<f32>(-355f, -1012f, -793f, 1144f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1871f, 853f, -1000f, 175f))))));
    let var_3 = vec4<i32>(_wgslsmith_add_i32(var_1.a.x, min(var_1.a.x << (5372u % 32u), -var_1.a.x)), abs(func_3(!var_0.x && var_0.x, vec4<u32>(~4903u, _wgslsmith_sub_u32(68713u, u_input.b.x), u_input.b.x, max(u_input.b.x, u_input.b.x)), global0[_wgslsmith_index_u32(45493u, 16u)], 1u).x), _wgslsmith_mod_i32(-2147483647i, -1i) & _wgslsmith_sub_i32(~2147483647i, u_input.c), ((u_input.c ^ var_1.a.x) | 22441i) | ~(abs(0i) << (min(u_input.b.x, 0u) % 32u)));
    global1 = array<vec2<f32>, 24>();
    return _wgslsmith_sub_u32(firstTrailingBit(61929u), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~0u, ~u_input.b.x, ~u_input.b.x, 55667u), vec4<u32>(0u, firstLeadingBit(u_input.b.x), u_input.b.x, 1u)), u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(u_input.a.yy, u_input.a.yx, ~vec2<i32>(-1i, -19481i)));
    var_0 = global2[_wgslsmith_index_u32(countOneBits(1u), 32u)];
    let var_1 = _wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, u_input.b.x, u_input.b.x), ~vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.b.x)), func_1()), countOneBits(_wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(u_input.b.x, u_input.b.x)), select(~u_input.b.zx, u_input.b.yx, true))));
    global1 = array<vec2<f32>, 24>();
    var var_2 = Struct_1(u_input.a.zy);
    var var_3 = global0[_wgslsmith_index_u32(11889u >> (0u % 32u), 16u)];
    var var_4 = firstTrailingBit(var_2.a);
    let var_5 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(select(abs(~78843u), ~3163u, true), firstTrailingBit(var_5 & _wgslsmith_dot_vec4_u32(vec4<u32>(var_1, 95062u, 17124u, 54508u), vec4<u32>(1u, u_input.b.x, 4294967295u, var_5))), 4294967295u));
}

