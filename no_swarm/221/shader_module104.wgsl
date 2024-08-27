struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 10> = array<vec3<f32>, 10>(vec3<f32>(-570f, -1393f, -663f), vec3<f32>(-1608f, -882f, -141f), vec3<f32>(362f, 665f, -2187f), vec3<f32>(1214f, 360f, -2240f), vec3<f32>(-2234f, 721f, -610f), vec3<f32>(-687f, 323f, -688f), vec3<f32>(-1932f, -597f, -426f), vec3<f32>(662f, -1000f, -858f), vec3<f32>(740f, -387f, 1022f), vec3<f32>(114f, -831f, 1106f));

var<private> global1: vec4<u32> = vec4<u32>(4294967295u, 39090u, 0u, 4294967295u);

var<private> global2: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(10917u, vec3<f32>(-326f, -329f, -886f), 6661u, true));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec3<bool>) -> vec3<f32> {
    let var_0 = Struct_1(~(~(~firstLeadingBit(global1.x))), global0[_wgslsmith_index_u32(~global1.x, 10u)], _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.d >> (~u_input.e.xxw % vec3<u32>(32u)), ~(vec3<u32>(4294967295u, global1.x, 6213u) | u_input.d)), ~(~(~vec3<u32>(4294967295u, global1.x, 27549u)))), all(arg_0));
    global0 = array<vec3<f32>, 10>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-var_0.b.zz);
    let var_2 = global0[_wgslsmith_index_u32(1u, 10u)];
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, 1207f, -119f, var_2.x)))) + vec4<f32>(var_2.x, var_1.x, 226f, _wgslsmith_f_op_f32(ceil(-1679f))))) + vec4<f32>(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.x)) + 717f) * -807f), var_2.x, _wgslsmith_f_op_f32(var_2.x - var_2.x)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3.wxz - vec3<f32>(var_0.b.x, var_3.x, var_0.b.x)), var_3.yzx))))));
}

fn func_3(arg_0: bool) -> vec4<u32> {
    let var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(max(global1.x, 62019u), 0u), 1u)];
    let var_1 = u_input.d;
    let var_2 = _wgslsmith_f_op_f32(var_0.b.x + -965f);
    var var_3 = u_input.a;
    var var_4 = vec2<u32>(~(~min(17686u, _wgslsmith_add_u32(var_0.a, 1u))), var_1.x);
    return vec4<u32>(~1u, var_4.x >> (var_4.x % 32u), 4294967295u, 0u);
}

fn func_2() -> vec4<u32> {
    var var_0 = func_3(select(any(vec4<bool>(true, true, true, true)), true, true)) & countOneBits(u_input.e);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -713f);
    var var_2 = vec2<bool>((u_input.b.x < countOneBits(-2147483647i)) & (22663i == abs(u_input.b.x & u_input.c)), 72444u < _wgslsmith_dot_vec4_u32(reverseBits(u_input.e), func_3(true)));
    let var_3 = u_input.e.x ^ (_wgslsmith_sub_u32(~(var_0.x | global1.x), u_input.d.x) ^ ~(~_wgslsmith_dot_vec2_u32(var_0.xz, var_0.yz)));
    global2 = array<Struct_1, 1>();
    return ~(~countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 66502u, var_0.x, u_input.e.x), vec4<u32>(46029u, u_input.d.x, 20516u, 4294967295u), vec4<u32>(u_input.d.x, u_input.e.x, var_3, var_3))) >> (u_input.e % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(35685u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-718f, 1000f, -945f) - global0[_wgslsmith_index_u32(0u, 10u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-218f, -2325f, -1044f))))), global1.x, true || any(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true))));
    global0 = array<vec3<f32>, 10>();
    var_0 = global2[_wgslsmith_index_u32(4294967295u, 1u)];
    var var_1 = Struct_1(global1.x & ~13738u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, -1460f, -2247f) + _wgslsmith_f_op_vec3_f32(func_1(vec3<bool>(var_0.d, var_0.d, false))))))), u_input.e.x, !(var_0.a != (global1.x >> (1u % 32u))));
    global1 = _wgslsmith_add_vec4_u32(u_input.e, func_2());
    let var_2 = global2[_wgslsmith_index_u32(global1.x, 1u)];
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1.x, select(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a, 60379u, 40025u), global1.zyx), var_0.c, true)), 1u)];
    let var_4 = i32(-1i) * -1i;
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.b, ~(-(~(-1i))), vec4<u32>(var_3.c, ~1u, var_0.a, ~_wgslsmith_add_u32(~1u, ~u_input.e.x)), abs(max(vec3<u32>(var_2.c, global1.x, _wgslsmith_sub_u32(var_0.a, var_0.a)), global1.xww)));
}

