struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: i32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<i32, 14>;

var<private> global2: Struct_1 = Struct_1(vec2<bool>(false, true), vec4<bool>(true, true, false, true), 1i, vec3<u32>(0u, 0u, 1u));

var<private> global3: bool = false;

var<private> global4: f32 = 1103f;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: vec4<i32>) -> i32 {
    global1 = array<i32, 14>();
    return -select(-7163i, u_input.b.x, true);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> vec3<u32> {
    var var_0 = Struct_1(arg_1.b.wx, arg_0.b, global1[_wgslsmith_index_u32(~max(arg_1.d.x, max(arg_2, u_input.a)) << (~19371u % 32u), 14u)], global2.d);
    let var_1 = var_0.a;
    var var_2 = Struct_1(global2.a, arg_1.b, max(arg_1.c, -var_0.c), global2.d);
    global1 = array<i32, 14>();
    var var_3 = Struct_1(!(!arg_0.a), !var_0.b, ~(-6319i), ~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_2, 8182u, var_0.d.x), ~vec3<u32>(arg_0.d.x, global2.d.x, arg_2)) ^ reverseBits(~var_0.d));
    return ~select(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.d.x, 51435u, 4294967295u), vec3<u32>(4294967295u, arg_1.d.x, var_3.d.x), var_3.d)), global2.d, var_2.b.xyz);
}

fn func_2(arg_0: vec2<i32>) -> vec2<i32> {
    global0 = _wgslsmith_add_i32(_wgslsmith_mult_i32(~0i, global2.c), global2.c);
    let var_0 = Struct_1(!(!select(select(global2.a, vec2<bool>(true, global2.a.x), false), !global2.b.xy, global2.a.x)), !vec4<bool>(all(!global2.b), !global2.a.x, true, true), global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(func_3(Struct_1(vec2<bool>(global2.b.x, true), vec4<bool>(false, true, global2.a.x, global2.a.x), 1i, global2.d), Struct_1(global2.a, vec4<bool>(global2.b.x, true, false, true), global1[_wgslsmith_index_u32(3619u, 14u)], global2.d), 4294967295u, _wgslsmith_f_op_f32(f32(-1f) * -431f)), global2.d)), 14u)], global2.d);
    global2 = Struct_1(var_0.a, global2.b, u_input.b.x, global2.d);
    var var_1 = _wgslsmith_sub_i32(global2.c, ~global2.c);
    let var_2 = all(select(select(select(select(global2.b, vec4<bool>(false, false, var_0.a.x, global2.b.x), true), vec4<bool>(var_0.b.x, var_0.a.x, var_0.b.x, var_0.b.x), var_0.a.x), select(!vec4<bool>(var_0.b.x, var_0.b.x, global2.a.x, global2.a.x), select(global2.b, vec4<bool>(global2.a.x, var_0.b.x, true, true), var_0.b.x), global2.b), var_0.b), !var_0.b, true));
    return countOneBits(firstTrailingBit(vec2<i32>(_wgslsmith_sub_i32(-19434i, 0i), arg_0.x))) ^ u_input.b.zz;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 14>();
    global3 = global2.d.x < reverseBits(20392u);
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1160f + 1639f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -490f), -677f))), _wgslsmith_f_op_f32(floor(-1313f)))));
    global0 = _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -_wgslsmith_sub_i32(1i >> (u_input.a % 32u), func_1(Struct_1(global2.b.yx, vec4<bool>(global2.a.x, global2.a.x, global2.a.x, true), global1[_wgslsmith_index_u32(u_input.a, 14u)], global2.d), -1094f, Struct_1(global2.b.xx, vec4<bool>(global2.a.x, false, false, true), u_input.b.x, global2.d), vec4<i32>(u_input.b.x, global1[_wgslsmith_index_u32(0u, 14u)], u_input.b.x, u_input.b.x)))), -func_2(_wgslsmith_add_vec2_i32(~vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 14u)], -39821i), u_input.b.zy)));
    let var_1 = _wgslsmith_f_op_f32(abs(344f));
    let var_2 = -global2.c;
    let var_3 = Struct_1(global2.a, !global2.b, 21579i, select(vec3<u32>(_wgslsmith_dot_vec3_u32(global2.d, global2.d), _wgslsmith_add_u32(0u, u_input.a), ~u_input.a) << (global2.d % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(global2.d, ~(vec3<u32>(1u, u_input.a, 14351u) >> (vec3<u32>(75319u, global2.d.x, global2.d.x) % vec3<u32>(32u)))), false));
    var var_4 = Struct_1(!global2.b.zy, var_3.b, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(max(u_input.b.x, var_3.c) & (1i >> (0u % 32u)), 0i), global2.c, var_3.c), vec3<u32>(_wgslsmith_add_u32(firstLeadingBit(~u_input.a), 4294967295u), 4234u, _wgslsmith_sub_u32(u_input.a >> (~u_input.a % 32u), _wgslsmith_dot_vec2_u32(~var_3.d.zx, ~vec2<u32>(u_input.a, 1u)))));
    let x = u_input.a;
    s_output = StorageBuffer(min(firstTrailingBit(firstLeadingBit(u_input.b.x)), ~(-(-9106i ^ u_input.b.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(693f, var_1, var_1, _wgslsmith_f_op_f32(abs(1071f)))), _wgslsmith_add_i32(-2147483647i, ~(11609i & (var_3.c | 19341i))));
}

