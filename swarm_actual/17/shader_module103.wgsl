struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<u32, 1> = array<u32, 1>(14799u);

var<private> global2: i32 = 6232i;

var<private> global3: vec4<i32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: u32) -> vec3<bool> {
    let var_0 = -573f;
    global3 = -abs(vec4<i32>(1i, -19021i, -countOneBits(-1i), 1i));
    let var_1 = false;
    var var_2 = arg_1;
    global1 = array<u32, 1>();
    return arg_2.www;
}

fn func_3() -> i32 {
    return u_input.a.x;
}

fn func_2() -> Struct_1 {
    global1 = array<u32, 1>();
    global2 = u_input.a.x;
    var var_0 = Struct_1(~u_input.b, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-1403f, -908f), _wgslsmith_f_op_f32(round(2076f)), 1628f, 380f) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(568f, -1000f, 245f, 1833f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(291f, -1000f, -1060f, 332f))), select(vec4<bool>(true, false, true, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x), true)))), vec4<f32>(-408f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-795f)))), _wgslsmith_f_op_f32(f32(-1f) * -463f), 1565f), true)));
    global2 = func_3() << (_wgslsmith_div_u32((var_0.a ^ _wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(78052u, 1u)], 46281u, 4294967295u), vec3<u32>(34837u, 0u, 0u))) | ~0u, u_input.b) % 32u);
    global2 = abs(-(-3583i | u_input.a.x));
    return Struct_1(~(~(~(~var_0.a))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.b + var_0.b) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(268f, var_0.b.x, var_0.b.x, 253f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(895f, -1463f, -1677f, var_0.b.x))), !(!vec4<bool>(true, global0.x, true, global0.x)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: Struct_2) -> StorageBuffer {
    global2 = ~_wgslsmith_div_i32(firstLeadingBit(_wgslsmith_add_i32(~u_input.a.x, -34765i)), -abs(-63408i));
    global2 = _wgslsmith_sub_i32(-24327i, global3.x);
    let var_0 = arg_0.b.x;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.b.x))) + var_0);
    let var_2 = arg_3;
    return StorageBuffer(arg_2.zx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(1u, vec4<f32>(1264f, -419f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1717f)), -2265f, true & any(vec3<bool>(true, global0.x, global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(271f + _wgslsmith_f_op_f32(sign(-1125f))))));
    let var_1 = false;
    global2 = ~global3.x;
    global1 = array<u32, 1>();
    global0 = !(!(!select(select(vec3<bool>(global0.x, true, false), vec3<bool>(var_1, false, false), true), func_1(Struct_2(1u), Struct_2(26620u), vec4<bool>(global0.x, true, true, true), u_input.b), func_1(Struct_2(global1[_wgslsmith_index_u32(1u, 1u)]), Struct_2(93337u), vec4<bool>(var_1, true, false, false), 1u))));
    global2 = u_input.a.x & global3.x;
    let x = u_input.a;
    s_output = func_4(func_2(), Struct_2(_wgslsmith_mult_u32(select(firstTrailingBit(62409u), global1[_wgslsmith_index_u32(~4294967295u, 1u)], var_1), 1u)), vec4<u32>(countOneBits(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(21811u, u_input.c, 1u, u_input.c), vec4<u32>(firstLeadingBit(u_input.c), min(60956u, 4294967295u), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, u_input.c), 1u)], _wgslsmith_clamp_u32(var_0.a, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(5659u, 1u)], 1u)], 1u)]))), (var_0.a | 29928u) << (~var_0.a % 32u), firstTrailingBit((global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(15195u, 1u)], 1u)] & var_0.a) & 0u)), Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 1u)], 1u)]), _wgslsmith_sub_vec2_u32(~vec2<u32>(1619u, global1[_wgslsmith_index_u32(111134u, 1u)]), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 1u)], 1u)]), vec2<u32>(18054u, u_input.b), vec2<u32>(65044u, 14705u))))));
}

