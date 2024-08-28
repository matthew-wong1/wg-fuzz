struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec2<i32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(503f, 2438f, -1199f);

var<private> global1: array<Struct_2, 24>;

var<private> global2: array<vec3<bool>, 17>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_1(arg_0: vec3<u32>) -> vec4<bool> {
    let var_0 = Struct_1(false, vec3<u32>(1u, 9235u, u_input.a.x), abs(_wgslsmith_sub_vec2_i32(~(~vec2<i32>(1i, 13270i)), _wgslsmith_mod_vec2_i32(~vec2<i32>(-1491i, u_input.b), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, 26481i), vec2<i32>(u_input.b, u_input.b))))), false, -1000f <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + global0.x)))));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - -1238f)))), global0.x, global0.x);
    global1 = array<Struct_2, 24>();
    global0 = vec3<f32>(global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.x - 707f)))), global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(114f, global0.x)))) + 1000f));
    let var_1 = _wgslsmith_f_op_f32(-global0.x);
    return !vec4<bool>(all(!vec4<bool>(var_0.a, var_0.d, false, false)), all(!select(vec4<bool>(true, var_0.a, var_0.d, false), vec4<bool>(var_0.d, false, true, var_0.e), var_0.a)), _wgslsmith_f_op_f32(var_1 * -1000f) >= -237f, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    var var_1 = false;
    var var_2 = 65958i;
    global1 = array<Struct_2, 24>();
    let var_3 = select(vec4<bool>(all(vec4<bool>(false, true, any(vec2<bool>(true, false)), any(global2[_wgslsmith_index_u32(1u, 17u)]))), false, false, any(select(global2[_wgslsmith_index_u32(u_input.a.x, 17u)], select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), global2[_wgslsmith_index_u32(u_input.a.x, 17u)]), select(vec3<bool>(false, true, true), global2[_wgslsmith_index_u32(u_input.a.x, 17u)], false)))), !select(vec4<bool>(true, true, false, all(global2[_wgslsmith_index_u32(u_input.a.x, 17u)])), vec4<bool>(true, true, true, true), true), select(func_1(u_input.a), !vec4<bool>(false, true, true, all(vec2<bool>(false, true))), true));
    var var_4 = var_0;
    global2 = array<vec3<bool>, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(u_input.a.x, u_input.a.x, 56030u, 65946u) << ((vec4<u32>(4294967295u, u_input.a.x, 70513u, u_input.a.x) | vec4<u32>(59735u, 62837u, 0u, u_input.a.x)) % vec4<u32>(32u))) & vec4<u32>(_wgslsmith_div_u32(~u_input.a.x, u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(0u, 4294967295u, 0u, u_input.a.x)) << (1u % 32u), ~61352u, abs(0u)), u_input.a.xy << (vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a.x), vec2<u32>(u_input.a.x, 1u)), 1u) % vec2<u32>(32u)), _wgslsmith_mult_u32(~0u, 0u), ~vec4<u32>(min(_wgslsmith_mult_u32(0u, 1u), u_input.a.x), u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.a.x, u_input.a.x), vec3<u32>(56358u, u_input.a.x, 1u)), firstLeadingBit(u_input.a)), u_input.a), (_wgslsmith_mod_u32(u_input.a.x, u_input.a.x) | u_input.a.x) << (4294967295u % 32u), _wgslsmith_sub_u32(_wgslsmith_mult_u32(~u_input.a.x, abs(4294967295u)), u_input.a.x)));
}

