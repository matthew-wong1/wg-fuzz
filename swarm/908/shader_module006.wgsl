struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<bool>,
    d: vec2<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: vec3<bool>,
    d: vec4<f32>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: Struct_4;

var<private> global2: bool;

var<private> global3: array<vec2<u32>, 28>;

var<private> global4: array<i32, 20>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_3) -> u32 {
    var var_0 = 2147483647i;
    var var_1 = Struct_4(global0.x, Struct_3(Struct_2(Struct_1(true, u_input.a, !global1.b.a.a.c, vec2<bool>(true, true), vec4<u32>(0u, 4294967295u, global0.x, 1u) >> (vec4<u32>(18644u, 4294967295u, u_input.a, global1.a) % vec4<u32>(32u))), u_input.a), global1.b.b), global1.c, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d.x, 137f, 756f, 1399f) + vec4<f32>(global1.d.x, 1000f, global1.d.x, -1000f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(global1.d, global1.d)), _wgslsmith_div_vec4_f32(global1.d, vec4<f32>(-493f, -1911f, 488f, -1000f)))))));
    var var_2 = Struct_4(~1u, global1.b, vec3<bool>(!(_wgslsmith_f_op_f32(trunc(var_1.d.x)) != _wgslsmith_f_op_f32(max(-1398f, -1060f))), global1.b.b.b <= ~_wgslsmith_div_u32(global1.b.b.b, 4294967295u), all(var_1.b.b.c)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1134f, 925f, 832f, var_1.d.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.x, var_1.d.x, var_1.d.x, -1073f)))), var_1.d)));
    let var_3 = -213f;
    global3 = array<vec2<u32>, 28>();
    return arg_0.b.e.x;
}

fn func_2() -> vec3<u32> {
    global3 = array<vec2<u32>, 28>();
    var var_0 = Struct_3(global1.b.a, Struct_1(true, ~_wgslsmith_mult_u32(45764u, func_3(Struct_3(Struct_2(Struct_1(global1.c.x, u_input.a, global1.b.a.a.c, global1.b.a.a.d, global1.b.a.a.e), global1.b.a.b), Struct_1(global1.b.a.a.c.x, 4294967295u, vec3<bool>(true, global1.c.x, true), global1.b.a.a.c.xz, global1.b.b.e)))), select(vec3<bool>(!global1.c.x, global1.c.x, global1.c.x), !vec3<bool>(false, global1.c.x, global1.c.x), !global1.b.b.c), vec2<bool>(any(vec4<bool>(true, global1.c.x, global1.b.b.a, global1.c.x)) || false, global1.c.x), _wgslsmith_clamp_vec4_u32(firstLeadingBit(global1.b.a.a.e), global1.b.b.e >> (global1.b.a.a.e % vec4<u32>(32u)), global1.b.b.e) ^ vec4<u32>(1u, global0.x, ~global1.b.a.b, 15097u)));
    global4 = array<i32, 20>();
    global2 = true;
    let var_1 = select(vec2<bool>(any(vec3<bool>(true, var_0.b.d.x, global4[_wgslsmith_index_u32(u_input.a, 20u)] == global4[_wgslsmith_index_u32(1u, 20u)])), false), vec2<bool>(false, !var_0.a.a.a), vec2<bool>(true, global1.b.b.c.x));
    return reverseBits(_wgslsmith_div_vec3_u32(var_0.a.a.e.xxz, vec3<u32>(~0u, u_input.a, countOneBits(u_input.a))));
}

fn func_4(arg_0: vec3<u32>) -> Struct_4 {
    global2 = !(!(!(all(global1.b.a.a.c.xy) || all(vec3<bool>(true, global1.c.x, global1.c.x)))));
    var var_0 = ~global3[_wgslsmith_index_u32(global1.b.a.b, 28u)];
    let var_1 = Struct_5(Struct_3(Struct_2(global1.b.b, global0.x & global1.b.b.b), Struct_1(false, _wgslsmith_mult_u32(var_0.x, 1u), vec3<bool>(true, true, true), select(select(vec2<bool>(global1.b.a.a.a, true), vec2<bool>(global1.b.a.a.a, global1.c.x), global1.b.a.a.c.zz), select(global1.b.b.c.yz, vec2<bool>(false, false), global1.c.xy), all(vec4<bool>(true, true, global1.c.x, false))), global1.b.b.e)));
    var var_2 = func_3(Struct_3(global1.b.a, var_1.a.b));
    var var_3 = global1.b.b;
    return Struct_4(0u | global1.b.b.b, global1.b, select(vec3<bool>(!(!var_3.a), any(!vec4<bool>(true, true, var_3.d.x, var_3.a)), true), global1.b.b.c, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.d.x, global1.d.x, global1.d.x, -207f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d.x, 249f, 1016f, global1.d.x) - vec4<f32>(global1.d.x, 853f, global1.d.x, 1000f)))))));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: Struct_5) -> bool {
    var var_0 = global1.d.x;
    global1 = func_4(~func_2());
    global4 = array<i32, 20>();
    var_0 = global1.d.x;
    global4 = array<i32, 20>();
    return ~(~global1.a) != u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(any(select(vec4<bool>(false, true, global1.c.x | true, func_1(global1.c.x, -82585i, Struct_5(global1.b))), select(!vec4<bool>(global1.c.x, true, true, true), select(vec4<bool>(false, false, global1.c.x, false), vec4<bool>(false, false, global1.c.x, false), vec4<bool>(global1.b.a.a.a, global1.b.a.a.d.x, false, global1.b.b.d.x)), global1.b.b.a && true), true)), ~(~u_input.a), vec3<bool>(all(!(!vec3<bool>(false, global1.b.b.c.x, global1.b.b.a))), global1.c.x, global1.b.b.d.x), !vec2<bool>(true, 48785u < ~global1.b.a.a.b), vec4<u32>(1u, 51322u, 26105u, ~global1.a));
    let var_1 = global1.d.x;
    global3 = array<vec2<u32>, 28>();
    global0 = select(vec4<u32>(_wgslsmith_div_u32(u_input.a, _wgslsmith_add_u32(4294967295u, var_0.b)) ^ countOneBits(abs(4294967295u)), global0.x, min(select(1u, var_0.e.x, any(vec3<bool>(global1.c.x, global1.c.x, var_0.c.x))), ~1u), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(61215u, 1u, 57891u)), min(global1.b.a.a.e.zxz, vec3<u32>(u_input.a, global0.x, 34688u))) << (~(var_0.e.x << (4294967295u % 32u)) % 32u)), global1.b.a.a.e, true);
    global4 = array<i32, 20>();
    global3 = array<vec2<u32>, 28>();
    var_0 = Struct_1(func_4(select(_wgslsmith_sub_vec3_u32(var_0.e.zxz, vec3<u32>(u_input.a, var_0.e.x, 3979u)), ~global0.yww, select(select(global1.b.a.a.c, global1.c, vec3<bool>(global1.b.a.a.c.x, true, global1.b.b.c.x)), vec3<bool>(global1.b.a.a.d.x, true, global1.b.b.c.x), 4294967295u > global1.b.a.b))).b.b.d.x, ~abs(~_wgslsmith_div_u32(39196u, 58328u)), global1.b.a.a.c, global1.c.xy, vec4<u32>(21731u, firstLeadingBit(4294967295u), _wgslsmith_mult_u32(~14392u, 0u), ~(~global1.a) | countOneBits(~var_0.b)));
    global0 = global1.b.b.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(global1.d)) - global1.d) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.d)) - vec4<f32>(_wgslsmith_f_op_f32(round(-391f)), _wgslsmith_f_op_f32(-global1.d.x), _wgslsmith_f_op_f32(round(1598f)), _wgslsmith_div_f32(1000f, -1897f)))), global1.d.zy, _wgslsmith_f_op_f32(global1.d.x * _wgslsmith_f_op_f32(global1.d.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -522f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.d.x))), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-757f, global1.d.x)))))));
}

