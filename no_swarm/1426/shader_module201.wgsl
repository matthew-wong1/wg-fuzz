struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> f32 {
    global0 = array<i32, 24>();
    var var_0 = 1i;
    let var_1 = _wgslsmith_mod_i32(u_input.b.x, _wgslsmith_dot_vec4_i32(countOneBits(_wgslsmith_sub_vec4_i32(u_input.b, u_input.b)), _wgslsmith_mod_vec4_i32(u_input.b, u_input.b))) | abs(~(-1987i));
    var var_2 = 1u;
    var var_3 = !(_wgslsmith_mod_i32(-_wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(u_input.c.x, -2147483647i)), ~var_1) == abs(~var_1));
    return 758f;
}

fn func_2() -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-456f, _wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1447f * -727f)) + -1187f))));
    let var_1 = i32(-1i) * -9141i;
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_0.x)))), var_0.x)), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, 560f) * _wgslsmith_f_op_f32(f32(-1f) * -783f)) * -612f), _wgslsmith_f_op_f32(-2547f - _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-758f, 265f))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(730f, var_0.x, _wgslsmith_f_op_f32(1f * var_0.x), _wgslsmith_f_op_f32(floor(var_0.x))) - vec4<f32>(460f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * 540f), _wgslsmith_f_op_f32(round(-1000f))), _wgslsmith_f_op_f32(min(-1386f, _wgslsmith_div_f32(var_0.x, -129f))), _wgslsmith_f_op_f32(-var_0.x))));
    global0 = array<i32, 24>();
    var_0 = vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-558f - _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - -734f), _wgslsmith_div_f32(783f, var_0.x)), var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), -2206f), -539f);
    return !(!vec3<bool>(true, u_input.a < u_input.a, any(vec3<bool>(false, true, true))));
}

fn func_1() -> u32 {
    global0 = array<i32, 24>();
    let var_0 = firstTrailingBit(u_input.c) >> (firstTrailingBit(reverseBits(~(~vec2<u32>(u_input.a, 4294967295u)))) % vec2<u32>(32u));
    global0 = array<i32, 24>();
    let var_1 = 0i;
    let var_2 = Struct_1(u_input.a, select(select(select(func_2(), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), all(vec3<bool>(false, true, false))), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), vec3<bool>(true, true, true), vec3<bool>(_wgslsmith_f_op_f32(select(-1209f, -383f, false)) > _wgslsmith_f_op_f32(363f + 695f), true, true)), ~min(_wgslsmith_div_i32(-19115i, global0[_wgslsmith_index_u32(u_input.a, 24u)]), -15275i));
    return ~4294967295u;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: u32, arg_3: vec3<u32>) -> Struct_1 {
    global0 = array<i32, 24>();
    global0 = array<i32, 24>();
    let var_0 = arg_0.b & any(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(arg_0.b, false, arg_0.b, false), vec4<bool>(false, arg_0.c.b.x, arg_0.b, arg_0.b), vec4<bool>(true, arg_0.c.b.x, arg_0.b, false)), true), select(!vec4<bool>(arg_0.c.b.x, false, true, arg_0.c.b.x), select(vec4<bool>(true, true, arg_0.c.b.x, false), vec4<bool>(arg_0.c.b.x, arg_0.b, false, false), vec4<bool>(false, arg_0.c.b.x, arg_0.c.b.x, arg_0.b)), vec4<bool>(arg_0.b, true, arg_0.c.b.x, arg_0.b)), vec4<bool>(true, any(arg_0.c.b.xx), select(true, arg_0.b, false), true)));
    global0 = array<i32, 24>();
    global0 = array<i32, 24>();
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_4(Struct_2(_wgslsmith_mod_vec3_i32(-vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 24u)], u_input.c.x, -1i), ~u_input.b.zyw), true, Struct_1(~u_input.a, vec3<bool>(true, false, true), 1i)), vec3<u32>(_wgslsmith_sub_u32(4294967295u, u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 1u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 32123u, u_input.a, 1u), vec4<u32>(u_input.a, 4450u, u_input.a, u_input.a))) | vec3<u32>(u_input.a, 4303u, 19530u), ~func_1(), vec3<u32>(36379u, firstLeadingBit(62228u), u_input.a) ^ select(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(u_input.a, 47735u, u_input.a)), vec3<u32>(u_input.a, u_input.a, 1u), true)));
    var var_1 = Struct_3(func_4(Struct_2(vec3<i32>(func_4(Struct_2(vec3<i32>(var_0.a.c, 60850i, global0[_wgslsmith_index_u32(var_0.a.a, 24u)]), var_0.a.b.x, Struct_1(u_input.a, vec3<bool>(var_0.a.b.x, var_0.a.b.x, false), -1i)), vec3<u32>(39887u, var_0.a.a, var_0.a.a), 4294967295u, vec3<u32>(u_input.a, u_input.a, 81963u)).c, -u_input.b.x, ~var_0.a.c), func_2().x, var_0.a), vec3<u32>(u_input.a, 1u, u_input.a), u_input.a, ~firstLeadingBit(~vec3<u32>(5482u, u_input.a, 1708u))));
    let var_2 = Struct_3(Struct_1(~4294967295u, vec3<bool>(func_2().x, true, !(var_1.a.b.x || var_0.a.b.x)), global0[_wgslsmith_index_u32(~(~var_0.a.a), 24u)]));
    let var_3 = Struct_2(u_input.b.zxx, var_2.a.b.x, var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(func_1(), -934f, _wgslsmith_f_op_f32(f32(-1f) * -109f), -270f);
}

