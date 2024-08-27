struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29> = array<bool, 29>(true, false, false, true, true, false, true, false, false, false, false, true, true, false, true, false, false, true, false, true, false, false, false, false, true, true, false, false, false);

var<private> global1: bool;

var<private> global2: vec4<bool>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_3) -> vec4<f32> {
    let var_0 = min(vec2<u32>(min(arg_1.a.b, 48286u), 4294967295u), u_input.a.yz);
    let var_1 = Struct_4(select(global2.xy, select(global2.yy, vec2<bool>(select(true, arg_0.x, true), any(vec4<bool>(arg_0.x, global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)], false))), select(vec2<bool>(true, global0[_wgslsmith_index_u32(arg_1.a.b, 29u)]), select(arg_0, arg_0, global0[_wgslsmith_index_u32(arg_1.a.b, 29u)]), global2.yy)), vec2<bool>(global2.x, true)));
    let var_2 = vec3<i32>(-abs((u_input.b | u_input.d.x) >> (~var_0.x % 32u)), abs(~u_input.b) >> (((_wgslsmith_mod_u32(var_0.x, 0u) & 1u) >> (select(u_input.a.x, arg_1.a.b, var_0.x == 4443u) % 32u)) % 32u), -45728i);
    global2 = vec4<bool>(global0[_wgslsmith_index_u32(1u, 29u)], false, 647f < _wgslsmith_f_op_f32(arg_1.b - _wgslsmith_f_op_f32(arg_1.a.a.x * -265f)), any(!var_1.a));
    var var_3 = abs(~vec2<u32>(~u_input.a.x & firstTrailingBit(4294967295u), 22823u));
    return _wgslsmith_f_op_vec4_f32(arg_1.a.a - arg_1.a.a);
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> Struct_1 {
    var var_0 = !any(!vec4<bool>(!global2.x, !global2.x, false, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, u_input.c), 29u)]));
    global1 = true;
    var_0 = true;
    let var_1 = arg_0;
    global1 = true;
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_3(vec2<bool>(true, false), Struct_3(arg_1.a, 1000f)))))), u_input.a.x);
}

fn func_1() -> StorageBuffer {
    var var_0 = -_wgslsmith_div_i32(-_wgslsmith_dot_vec2_i32(firstLeadingBit(u_input.d), vec2<i32>(-1i, u_input.d.x)), u_input.d.x);
    let var_1 = func_2(15625i, Struct_2(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1302f, -1161f, 1000f, 910f) - vec4<f32>(-1793f, -799f, -2173f, 438f)), vec4<f32>(-607f, 282f, -993f, -839f)), _wgslsmith_clamp_u32(u_input.c & 4294967295u, 0u, firstTrailingBit(753u))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-165f - _wgslsmith_f_op_f32(f32(-1f) * -1017f)), _wgslsmith_f_op_f32(f32(-1f) * -851f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(744f, -239f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-347f))))));
    let var_2 = abs(~_wgslsmith_sub_vec3_u32(~vec3<u32>(11203u, u_input.a.x, var_1.b), _wgslsmith_add_vec3_u32(max(u_input.a, vec3<u32>(0u, 5419u, u_input.a.x)), ~vec3<u32>(16015u, u_input.c, u_input.a.x))));
    var var_3 = u_input.c;
    var var_4 = 22044u;
    return StorageBuffer(-_wgslsmith_clamp_i32(29593i & ~u_input.d.x, -39451i, u_input.b), _wgslsmith_mod_i32(3946i, _wgslsmith_sub_i32(-countOneBits(u_input.b), u_input.b)), u_input.d.x, 1632f, -2925i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

