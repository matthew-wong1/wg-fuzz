struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: vec3<bool>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 15>;

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(1000f), Struct_1(1000f), Struct_1(694f), Struct_1(200f), Struct_1(-720f), Struct_1(-281f), Struct_1(576f), Struct_1(-168f), Struct_1(551f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: Struct_1) -> f32 {
    global1 = array<Struct_1, 9>();
    let var_0 = arg_2;
    let var_1 = ~_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(arg_1.a, u_input.c, 68971u), ~1u), 23802u), vec2<u32>(arg_1.a, countOneBits(arg_1.a)));
    var var_2 = arg_1;
    let var_3 = arg_1;
    return var_2.b.x;
}

fn func_2() -> f32 {
    global1 = array<Struct_1, 9>();
    global0 = array<vec3<u32>, 15>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(767f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(741f + 574f)))), 1320f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(func_3(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true), Struct_3(u_input.c, vec2<f32>(-312f, -413f), vec3<bool>(true, true, true), vec4<f32>(-132f, -2100f, -440f, -843f)), global1[_wgslsmith_index_u32(~1u, 9u)])))), _wgslsmith_f_op_f32(-1f));
    global0 = array<vec3<u32>, 15>();
    global0 = array<vec3<u32>, 15>();
    return -1059f;
}

fn func_1() -> f32 {
    var var_0 = vec2<i32>(~u_input.b.x, 60188i) << (vec2<u32>(u_input.a.x, reverseBits(~u_input.c)) % vec2<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1206f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1238f, -1095f))), _wgslsmith_f_op_f32(func_2())) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(571f, -267f, 612f)))))))));
    let var_2 = !select(select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), false), select(vec2<bool>(false, false), vec2<bool>(true, true), true)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), !select(vec2<bool>(true, true), vec2<bool>(false, true), all(vec2<bool>(true, true))), vec2<bool>(true, true));
    global0 = array<vec3<u32>, 15>();
    global1 = array<Struct_1, 9>();
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-548f - _wgslsmith_f_op_f32(func_1())), 215f));
    var var_1 = true;
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -319f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-271f * -568f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-564f * 1187f)))))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-708f * 1324f))));
    var var_2 = select(-(abs(vec3<i32>(2147483647i, -1i, u_input.d)) << (vec3<u32>(u_input.c, ~14428u, 0u) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(u_input.b.x, _wgslsmith_sub_i32(u_input.e, u_input.b.x), ~u_input.b.x)), vec3<i32>(3419i, select(max(29593i, -2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, 1i, u_input.b.x, 0i), u_input.b), all(vec2<bool>(false, false))), u_input.e), u_input.b.wyx), vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1000f) > _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(step(-250f, -1000f))), (1i == abs(u_input.e)) & any(vec4<bool>(true, true, true, true)), false));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1001f, 1000f, -973f, -1097f) - vec4<f32>(-1000f, -329f, 388f, -396f)), vec4<f32>(-573f, 1118f, -1412f, 426f)))));
    global1 = array<Struct_1, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, _wgslsmith_f_op_vec3_f32(-var_3.wwy), -44169i, ~reverseBits(u_input.a.x));
}

