struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(591f, -1634f, -792f);

var<private> global1: array<vec4<u32>, 13> = array<vec4<u32>, 13>(vec4<u32>(1u, 27062u, 1u, 4294967295u), vec4<u32>(21066u, 27373u, 0u, 4294967295u), vec4<u32>(57568u, 14866u, 1u, 6278u), vec4<u32>(4294967295u, 13470u, 47830u, 41884u), vec4<u32>(0u, 108286u, 0u, 81085u), vec4<u32>(50705u, 65517u, 0u, 25304u), vec4<u32>(1u, 68496u, 6769u, 16144u), vec4<u32>(4294967295u, 1u, 32333u, 1u), vec4<u32>(94731u, 1u, 92651u, 4294967295u), vec4<u32>(33561u, 13402u, 8760u, 28373u), vec4<u32>(0u, 70994u, 1u, 0u), vec4<u32>(8644u, 5838u, 0u, 66519u), vec4<u32>(0u, 0u, 4294967295u, 1u));

var<private> global2: array<vec2<i32>, 19>;

var<private> global3: array<Struct_1, 14>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3) -> vec3<u32> {
    var var_0 = Struct_3(global3[_wgslsmith_index_u32(min(arg_0.a.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b.a.x, 1u, arg_0.a.a.x), ~arg_1.b.a)) ^ _wgslsmith_mult_u32(reverseBits(u_input.c.x) ^ abs(arg_1.b.b.x), 45361u), 14u)], arg_0.a);
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.zz - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1906f), global0.x))), global0.xx);
    let var_2 = arg_1.a;
    var var_3 = abs(~(4294967295u & (~arg_0.a.a.x >> (max(40534u, 39918u) % 32u))));
    let var_4 = global0.x;
    return _wgslsmith_div_vec3_u32(vec3<u32>(~abs(16826u) | _wgslsmith_dot_vec2_u32(~arg_1.b.a.zz, var_0.b.b.xz << (var_0.b.b.zx % vec2<u32>(32u))), arg_0.a.b.x, ~_wgslsmith_dot_vec3_u32(arg_0.a.b, vec3<u32>(var_0.b.b.x, var_0.b.a.x, 1u)) | (1u >> (~u_input.c.x % 32u))), ~var_0.b.b);
}

fn func_2(arg_0: u32) -> vec3<bool> {
    var var_0 = Struct_3(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(~1u), countOneBits(abs(reverseBits(arg_0)))), 14u)], Struct_2(u_input.c.ywy, _wgslsmith_sub_vec3_u32(~u_input.c.yxx | u_input.c.xzw, _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, arg_0, 0u), func_3(Struct_4(Struct_2(vec3<u32>(arg_0, 27430u, 1u), u_input.c.xyy)), Struct_3(Struct_1(-63881i), Struct_2(vec3<u32>(1u, 20710u, 1u), u_input.c.wwz)))))));
    global1 = array<vec4<u32>, 13>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, -584f) * vec4<f32>(global0.x, -203f, 931f, global0.x)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(200f, global0.x, global0.x, 716f), vec4<f32>(global0.x, -1198f, -1110f, -1043f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1669f, global0.x, 474f, global0.x)), _wgslsmith_div_vec4_f32(vec4<f32>(1222f, global0.x, global0.x, 342f), vec4<f32>(global0.x, global0.x, 936f, global0.x)))))));
    global2 = array<vec2<i32>, 19>();
    var var_2 = Struct_3(var_0.a, Struct_2(var_0.b.a, ~(~vec3<u32>(13337u, arg_0, u_input.c.x))));
    return vec3<bool>(all(!select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)))), !all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), true)), var_0.b.b.x <= u_input.c.x);
}

fn func_1(arg_0: Struct_3, arg_1: i32) -> f32 {
    global1 = array<vec4<u32>, 13>();
    let var_0 = select(select(vec2<bool>(false, arg_0.a.a >= ~arg_0.a.a), vec2<bool>(1u >= u_input.c.x, false), !any(vec4<bool>(true, false, true, false))), vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(true, any(vec4<bool>(true, true, true, true)))), false));
    let var_1 = func_2(firstLeadingBit(~abs(~arg_0.b.a.x)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(1180f, global0.x)), global0.x)), global0.x))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(select(global0.x, 1177f, var_0.x))) * _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(trunc(global0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-361f, global0.x, global0.x)), vec3<f32>(_wgslsmith_f_op_f32(exp2(global0.x)), -1024f, _wgslsmith_f_op_f32(-1073f * global0.x)))) - vec3<f32>(-263f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(-global0.x)), -247f)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_3(global3[_wgslsmith_index_u32(34369u, 14u)], Struct_2(u_input.c.xyw, vec3<u32>(1u, u_input.c.x, 4294967295u))), max(u_input.a.x, u_input.d.x))), global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -225f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(221f * global0.x)))))));
    global3 = array<Struct_1, 14>();
    global1 = array<vec4<u32>, 13>();
    let var_0 = Struct_4(Struct_2(vec3<u32>(u_input.c.x, 1124u, _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(12703u, u_input.c.x, 1u)), u_input.c.wzx)), u_input.c.zyw));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.x))), _wgslsmith_f_op_f32(global0.x * global0.x), _wgslsmith_f_op_f32(floor(global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(~vec4<i32>(-40157i, u_input.a.x | u_input.a.x, _wgslsmith_add_i32(-32498i, u_input.a.x), -1i), abs((vec4<i32>(u_input.a.x, 18355i, -12662i, 2147483647i) ^ vec4<i32>(1i, 8200i, 12124i, 0i)) ^ vec4<i32>(40583i, 1i, u_input.a.x, u_input.a.x))));
}

