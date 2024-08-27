struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(false, vec4<bool>(false, false, false, false), 831f), Struct_1(false, vec4<bool>(false, true, true, true), 459f), Struct_1(false, vec4<bool>(true, true, true, true), -2440f), Struct_1(false, vec4<bool>(true, true, false, true), -757f), Struct_1(false, vec4<bool>(true, false, true, true), 106f), Struct_1(true, vec4<bool>(false, false, false, true), 1013f), Struct_1(true, vec4<bool>(false, true, false, true), 1223f), Struct_1(true, vec4<bool>(false, true, false, false), -762f), Struct_1(true, vec4<bool>(false, true, false, true), 516f), Struct_1(true, vec4<bool>(true, true, false, false), -995f), Struct_1(true, vec4<bool>(true, false, false, true), -461f), Struct_1(false, vec4<bool>(true, true, false, true), 861f), Struct_1(false, vec4<bool>(true, true, true, false), -1555f), Struct_1(true, vec4<bool>(false, false, false, false), -159f), Struct_1(true, vec4<bool>(true, true, false, true), 723f), Struct_1(false, vec4<bool>(true, true, false, false), -1875f), Struct_1(true, vec4<bool>(true, false, false, false), 931f), Struct_1(false, vec4<bool>(true, false, true, true), -1148f), Struct_1(true, vec4<bool>(true, false, true, false), 742f), Struct_1(false, vec4<bool>(false, false, false, true), 2142f), Struct_1(false, vec4<bool>(true, false, false, false), -1318f), Struct_1(true, vec4<bool>(false, true, true, false), 1305f), Struct_1(true, vec4<bool>(false, false, true, false), -1563f), Struct_1(true, vec4<bool>(true, false, true, false), 326f), Struct_1(false, vec4<bool>(true, false, false, false), 1125f), Struct_1(false, vec4<bool>(true, true, false, true), 373f), Struct_1(true, vec4<bool>(false, false, true, true), 168f));

var<private> global2: array<f32, 24> = array<f32, 24>(1530f, 948f, 757f, -749f, -1000f, 972f, -754f, -1000f, 360f, -125f, 1104f, -928f, 1602f, 179f, 1564f, 1000f, 1186f, -312f, 399f, 1675f, 1687f, 107f, -254f, -539f);

var<private> global3: array<bool, 22>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec3<bool>) -> vec2<bool> {
    var var_0 = global1[_wgslsmith_index_u32(6740u, 27u)];
    var var_1 = global1[_wgslsmith_index_u32(global0.x, 27u)];
    global3 = array<bool, 22>();
    var_1 = global1[_wgslsmith_index_u32(global0.x, 27u)];
    var var_2 = true;
    return select(var_1.b.yx, select(vec2<bool>(true, (u_input.a > 11925u) & select(arg_3.x, true, arg_0.x)), var_1.b.zw, vec2<bool>(true, true)), arg_3.yz);
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    global0 = ~vec2<u32>(~global0.x << ((arg_1 | u_input.a) % 32u), ~u_input.a);
    let var_0 = vec4<u32>(_wgslsmith_add_u32(min(0u, _wgslsmith_add_u32(u_input.a, _wgslsmith_div_u32(4294967295u, arg_1))), select(_wgslsmith_dot_vec4_u32(~vec4<u32>(17996u, arg_1, 4294967295u, global0.x), vec4<u32>(47324u, global0.x, 0u, u_input.a)), _wgslsmith_mult_u32(4294967295u, 1u), false)), arg_1, firstLeadingBit(~0u), ~(~7489u));
    global2 = array<f32, 24>();
    let var_1 = var_0.wx;
    var var_2 = arg_0.c;
    return global1[_wgslsmith_index_u32(arg_1, 27u)];
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = arg_0.wwz;
    let var_1 = func_3(Struct_1(all(func_2(vec4<bool>(true, true, true, true), arg_0, global1[_wgslsmith_index_u32(abs(52907u), 27u)], select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 22u)], global3[_wgslsmith_index_u32(13348u, 22u)], global3[_wgslsmith_index_u32(145814u, 22u)]), vec3<bool>(true, true, global3[_wgslsmith_index_u32(4294967295u, 22u)]), vec3<bool>(global3[_wgslsmith_index_u32(0u, 22u)], true, true)))), vec4<bool>(all(vec3<bool>(true, true, true)), any(!vec2<bool>(global3[_wgslsmith_index_u32(38152u, 22u)], false)), func_2(vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 22u)], false, false, false), _wgslsmith_f_op_vec4_f32(sign(arg_0)), global1[_wgslsmith_index_u32(min(87383u, u_input.a), 27u)], !vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 22u)], global3[_wgslsmith_index_u32(28866u, 22u)], global3[_wgslsmith_index_u32(global0.x, 22u)])).x, !(global0.x < 4294967295u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 24u)] * -321f) - -2501f), _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(49529u, 24u)]))))), ~countOneBits(1u));
    var var_2 = var_1;
    let var_3 = var_1;
    var var_4 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(arg_0))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -518f), global2[_wgslsmith_index_u32(u_input.a >> (36159u % 32u), 24u)])), var_3.c, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1396f) - arg_0.x)))));
    return Struct_1(true, var_2.b, 678f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-340f, _wgslsmith_f_op_f32(abs(-770f)), 372f, 476f)))));
    var var_1 = _wgslsmith_clamp_u32(u_input.a, 18118u, ~reverseBits(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(62652u, global0.x)), vec2<u32>(u_input.a, global0.x))));
    global0 = firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(64113u, u_input.a & (0u << (global0.x % 32u))), ~_wgslsmith_div_vec2_u32(abs(vec2<u32>(global0.x, 35104u)), firstLeadingBit(vec2<u32>(4294967295u, 4294967295u)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(abs(u_input.a), 24u)] + _wgslsmith_f_op_f32(-var_2)), global2[_wgslsmith_index_u32(global0.x, 24u)]), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(518f, -1111f)))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-256f, global2[_wgslsmith_index_u32(1u, 24u)]))));
    global3 = array<bool, 22>();
    global2 = array<f32, 24>();
    var var_4 = global1[_wgslsmith_index_u32(abs(global0.x), 27u)];
    var_0 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(~global0.x), 1507u ^ _wgslsmith_div_u32(select(0u >> (u_input.a % 32u), global0.x, true), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0.x, global0.x) ^ vec3<u32>(1u, global0.x, global0.x), vec3<u32>(u_input.a, 4294967295u, 4294967295u))), ~(~(~1u))), 27u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-20672i, -16762i, _wgslsmith_mod_i32(0i, _wgslsmith_div_i32(1i, -1i))), u_input.a, 0i, 1i, firstTrailingBit(vec2<i32>(i32(-1i) * -27974i, -2147483647i) << (~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, global0.x), vec2<u32>(global0.x, 61390u)) % vec2<u32>(32u))));
}

