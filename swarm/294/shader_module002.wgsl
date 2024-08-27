struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<f32, 15> = array<f32, 15>(287f, -2259f, -1000f, 1419f, 387f, 160f, -453f, 138f, -483f, -380f, 1964f, -988f, 1000f, -1198f, 1023f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: vec4<f32>, arg_3: Struct_1) -> u32 {
    global1 = array<f32, 15>();
    let var_0 = arg_1;
    var var_1 = (_wgslsmith_sub_i32(arg_1, var_0) >> (countOneBits(~global0.a.b) % 32u)) == arg_1;
    var_1 = all(!select(vec3<bool>(all(vec2<bool>(true, false)), true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true))));
    let var_2 = arg_2.x;
    return ~(arg_0 & global0.a.a.x);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    var var_0 = arg_0.a;
    var var_1 = arg_1;
    global0 = Struct_2(var_1.a);
    let var_2 = !(!vec3<bool>(true, false, 782f < _wgslsmith_div_f32(global1[_wgslsmith_index_u32(14u, 15u)], global1[_wgslsmith_index_u32(global0.a.b, 15u)])));
    var_1 = arg_1;
    return _wgslsmith_clamp_u32(global0.a.a.x, arg_0.a.a.x & 69523u, (func_2(_wgslsmith_mult_u32(arg_1.a.a.x, 19091u), reverseBits(-8793i), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-293f, 230f, global1[_wgslsmith_index_u32(global0.a.a.x, 15u)], 1218f), vec4<f32>(global1[_wgslsmith_index_u32(34022u, 15u)], -1140f, -127f, global1[_wgslsmith_index_u32(var_0.a.x, 15u)]))), Struct_1(arg_1.a.a, var_0.a.x)) | global0.a.a.x) << (18858u % 32u));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    var var_0 = 1u >> (arg_0.a.x % 32u);
    var var_1 = Struct_1(countOneBits(arg_1.a.a), _wgslsmith_div_u32(abs(reverseBits(7730u) >> (func_2(u_input.a.x, 0i, vec4<f32>(global1[_wgslsmith_index_u32(1u, 15u)], -793f, global1[_wgslsmith_index_u32(3418u, 15u)], global1[_wgslsmith_index_u32(4294967295u, 15u)]), Struct_1(vec4<u32>(0u, 5758u, 1u, 17947u), global0.a.b)) % 32u)), ~(~arg_0.a.x)));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -683f)));
    let var_3 = global0.a.a.x;
    var_2 = global1[_wgslsmith_index_u32(34898u, 15u)];
    return Struct_1(firstTrailingBit(reverseBits(~min(vec4<u32>(u_input.a.x, arg_1.a.a.x, 72896u, var_1.b), vec4<u32>(u_input.a.x, 4294967295u, arg_0.a.x, 38438u)))), ~func_3(Struct_2(global0.a), Struct_2(Struct_1(arg_1.a.a, 64230u))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>) -> vec3<u32> {
    global1 = array<f32, 15>();
    var var_0 = arg_0;
    var var_1 = global1[_wgslsmith_index_u32(~reverseBits(global0.a.b), 15u)];
    let var_2 = Struct_2(arg_0);
    let var_3 = _wgslsmith_div_f32(global1[_wgslsmith_index_u32(abs(func_1(global0.a, var_2).a.x), 15u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(~29801u, 15u)])), 1825f)))));
    return ~select(vec3<u32>(~0u, func_1(arg_0, Struct_2(var_2.a)).a.x, arg_0.b), firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 0u, var_0.b), min(vec3<u32>(var_0.a.x, arg_0.a.x, var_2.a.b), global0.a.a.yzz), min(vec3<u32>(0u, var_2.a.b, 33219u), vec3<u32>(1u, 4294967295u, 47556u)))), vec3<bool>(false, true, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~reverseBits(func_4(func_1(global0.a, Struct_2(Struct_1(u_input.a, 8404u))), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))));
    var var_1 = func_1(Struct_1(global0.a.a, var_0.x ^ abs(global0.a.b | 12445u)), Struct_2(global0.a));
    var var_2 = global1[_wgslsmith_index_u32(46677u, 15u)];
    let var_3 = Struct_2(func_1(global0.a, Struct_2(func_1(global0.a, Struct_2(Struct_1(var_1.a, 23770u))))));
    global1 = array<f32, 15>();
    let var_4 = select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), var_1.a.x != min(var_1.b, 40784u)), select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true)), select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), all(vec3<bool>(false, true, true))), vec2<bool>(select(true, false, false), u_input.a.x != 35210u))), select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), all(vec4<bool>(false, true, true, true))), true), select(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, false), false)), true), any(vec4<bool>(false, all(vec4<bool>(false, false, true, true)), true, false))), 1i < _wgslsmith_clamp_i32(countOneBits(-1i), 0i, ~71894i));
    let x = u_input.a;
    s_output = StorageBuffer(1970f, abs(_wgslsmith_sub_u32(var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, global0.a.b, var_0.x), ~var_0))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(max(1472f, global1[_wgslsmith_index_u32(4294967295u, 15u)])), _wgslsmith_f_op_f32(floor(-253f)), global1[_wgslsmith_index_u32(min(1u, global0.a.b), 15u)]), vec3<f32>(global1[_wgslsmith_index_u32(func_3(var_3, var_3), 15u)], _wgslsmith_f_op_f32(f32(-1f) * -1558f), global1[_wgslsmith_index_u32(var_1.a.x, 15u)]))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1291f, -580f, global1[_wgslsmith_index_u32(47591u, 15u)])), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-680f, 1240f, global1[_wgslsmith_index_u32(43531u, 15u)]))))))))));
}

