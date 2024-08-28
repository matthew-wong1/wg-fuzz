struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
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

var<private> global0: array<Struct_3, 12>;

var<private> global1: u32;

var<private> global2: array<bool, 18> = array<bool, 18>(false, false, true, false, true, true, true, true, false, false, true, true, true, true, true, true, false, true);

var<private> global3: i32;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> i32 {
    let var_0 = vec2<u32>(0u, _wgslsmith_dot_vec4_u32(max(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(8816u, 1u, 37682u, 4294967295u), vec4<u32>(5961u, 118559u, 0u, 1u)), firstTrailingBit(vec4<u32>(1u, 0u, 64256u, 77460u))), vec4<u32>(1u, 1u, 1u, 1u)), ~vec4<u32>(1u, 1u, 1u, 1u)));
    global1 = var_0.x;
    var var_1 = 484f;
    var var_2 = arg_1;
    let var_3 = all(!(!select(!vec3<bool>(global2[_wgslsmith_index_u32(var_0.x, 18u)], global2[_wgslsmith_index_u32(var_0.x, 18u)], var_2.a.b), vec3<bool>(global2[_wgslsmith_index_u32(var_0.x, 18u)], var_2.a.b, true), vec3<bool>(arg_1.a.b, true, false))));
    return -1i;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec2<i32>, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a));
    var var_1 = arg_3;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + -311f)), -53902i);
    let var_3 = _wgslsmith_f_op_f32(ceil(1000f));
    let var_4 = vec4<bool>(arg_3.b < func_3(arg_3.a, global0[_wgslsmith_index_u32(arg_1.x, 12u)]), arg_0.c, false, true);
    return vec4<u32>(_wgslsmith_add_u32(arg_1.x, _wgslsmith_sub_u32(countOneBits(_wgslsmith_clamp_u32(4294967295u, 127543u, 1u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(49327u, 39555u), vec2<u32>(arg_1.x, arg_1.x)))), arg_1.x, select((_wgslsmith_add_u32(69082u, arg_1.x) & firstLeadingBit(0u)) & 23987u, max(~_wgslsmith_dot_vec2_u32(arg_1, vec2<u32>(0u, arg_1.x)), arg_1.x), false), arg_1.x);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec4<u32>, arg_3: bool) -> u32 {
    let var_0 = Struct_2(-_wgslsmith_div_vec2_i32(firstLeadingBit(-vec2<i32>(32844i, u_input.b)), min(~u_input.a.xy, _wgslsmith_div_vec2_i32(arg_0.a, vec2<i32>(2147483647i, 33113i)))), true, !arg_0.b);
    let var_1 = arg_2.x;
    let var_2 = arg_1;
    var var_3 = !all(select(vec2<bool>(arg_1.x == -640f, global2[_wgslsmith_index_u32(0u, 18u)] & true), vec2<bool>(any(vec4<bool>(true, true, false, arg_0.b)), false & var_0.c), true));
    let var_4 = Struct_2(firstTrailingBit(arg_0.a), _wgslsmith_f_op_f32(f32(-1f) * -1941f) < var_2.x, firstTrailingBit(var_0.a.x) > func_3(1f, Struct_3(var_0, Struct_1(-932f, var_0.a.x))));
    return 23412u;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2) -> u32 {
    let var_0 = arg_1.c;
    var var_1 = ~arg_1.a.x ^ _wgslsmith_dot_vec3_i32(u_input.a, ~_wgslsmith_add_vec3_i32(vec3<i32>(-1i, u_input.b, arg_1.a.x), vec3<i32>(arg_1.a.x, 1i, arg_1.a.x)));
    return ~(~_wgslsmith_mod_u32(func_4(arg_1, arg_0.xw, func_2(Struct_2(vec2<i32>(0i, -1i), true, true), vec2<u32>(49810u, 0u), u_input.a.yx, Struct_1(511f, u_input.a.x)), var_0), ~1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(4294967295u, 12u)];
    let var_1 = -32315i;
    let var_2 = vec3<bool>(false, func_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(410f, 1215f, var_0.b.a, -1440f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.b.a, 1000f, 292f, -584f))))), var_0.a) < firstLeadingBit(44034u), any(!vec2<bool>(true, 0i == var_0.a.a.x)));
    var var_3 = vec2<bool>(any(vec4<bool>(_wgslsmith_mod_i32(var_1, u_input.b) >= 2147483647i, true, !var_0.a.b, true)), var_0.a.b);
    var_3 = !var_2.yx;
    global0 = array<Struct_3, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(~(vec3<u32>(1u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(56195u, 52217u), vec2<u32>(3071u, 23659u))) << (vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 21481u, 1u), vec3<u32>(4294967295u, 0u, 0u)), firstLeadingBit(8582u)) % vec3<u32>(32u))));
}

