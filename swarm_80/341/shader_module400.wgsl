struct Struct_1 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28> = array<i32, 28>(1i, -73949i, 31708i, 1i, 1i, -4945i, 0i, 2147483647i, 2147483647i, 2147483647i, -4834i, -46583i, 2147483647i, i32(-2147483648), i32(-2147483648), 1i, -21932i, 30306i, 32154i, -21524i, -2478i, 9526i, 1i, -1i, 1i, -1i, i32(-2147483648), 2147483647i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: vec2<i32>, arg_3: u32) -> bool {
    global0 = array<i32, 28>();
    var var_0 = Struct_1(true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2766f)))))));
    var_0 = Struct_1(-532f != _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.b - var_0.b))), -490f);
    let var_1 = max(4294967295u, max(~arg_0, ~(~1u)));
    var_0 = Struct_1(!(!(true && any(vec2<bool>(var_0.a, false)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.b))), _wgslsmith_f_op_f32(select(3520f, _wgslsmith_f_op_f32(-var_0.b), !var_0.a)), !((-1495f < var_0.b) && true))));
    return true;
}

fn func_2(arg_0: f32, arg_1: vec3<i32>) -> bool {
    global0 = array<i32, 28>();
    let var_0 = -20904i >> (~_wgslsmith_mult_u32(u_input.a.x, ~(~34656u)) % 32u);
    var var_1 = Struct_1(any(vec4<bool>(true, select(true, func_3(u_input.a.x, var_0, vec2<i32>(global0[_wgslsmith_index_u32(32064u, 28u)], global0[_wgslsmith_index_u32(u_input.a.x, 28u)]), u_input.a.x), true), all(vec2<bool>(true, false)), any(vec2<bool>(false, false)) & true)), 1000f);
    var_1 = Struct_1(any(!(!select(vec4<bool>(true, var_1.a, false, true), vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a), vec4<bool>(true, true, false, true)))), _wgslsmith_div_f32(var_1.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-1623f, _wgslsmith_f_op_f32(var_1.b - var_1.b))), 347f))));
    var var_2 = ~(reverseBits(u_input.a.x) & ~u_input.a.x);
    return true;
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: vec4<f32>) -> i32 {
    let var_0 = Struct_1(!(arg_0 && true), arg_2.x);
    return ~countOneBits(~abs(select(global0[_wgslsmith_index_u32(arg_1, 28u)], global0[_wgslsmith_index_u32(u_input.a.x, 28u)], true)));
}

fn func_1(arg_0: u32) -> StorageBuffer {
    var var_0 = vec3<i32>(firstTrailingBit(-1i), 26261i, -_wgslsmith_add_i32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~1u, _wgslsmith_sub_u32(arg_0, 0u)), 28u)], func_4(func_2(394f, vec3<i32>(global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(arg_0, 28u)], 11456i)), 1u << (u_input.a.x % 32u), vec4<f32>(1f, 1f, 1f, 1f))));
    var var_1 = Struct_1(!((any(vec2<bool>(false, true)) & all(vec2<bool>(true, true))) & true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    let var_2 = Struct_1(all(!(!vec3<bool>(false, true, var_1.a))), _wgslsmith_f_op_f32(-var_1.b));
    global0 = array<i32, 28>();
    let var_3 = Struct_1(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.b, var_2.b) * 998f)) + 2074f));
    return StorageBuffer(global0[_wgslsmith_index_u32(arg_0, 28u)], min(~select(vec4<u32>(1u, 11898u, arg_0, u_input.a.x), vec4<u32>(4294967295u, arg_0, arg_0, arg_0), vec4<bool>(var_2.a, true, var_1.a, true)), ~(vec4<u32>(3383u, 1u, arg_0, arg_0) >> (vec4<u32>(1980u, arg_0, 8809u, arg_0) % vec4<u32>(32u)))) ^ ((vec4<u32>(70012u, u_input.a.x, u_input.a.x, 40447u) ^ vec4<u32>(9824u, 16990u, arg_0, u_input.a.x)) ^ (vec4<u32>(1u, arg_0, 1u, u_input.a.x) << (firstLeadingBit(vec4<u32>(59078u, 30334u, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(firstTrailingBit(~min(7805u, _wgslsmith_mult_u32(0u, 15680u))));
}

