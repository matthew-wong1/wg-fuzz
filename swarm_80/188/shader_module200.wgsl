struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-917f, -516f, -950f);

var<private> global1: bool;

var<private> global2: array<i32, 2>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: i32) -> i32 {
    global1 = true;
    let var_0 = Struct_1(arg_2.a);
    var var_1 = global2[_wgslsmith_index_u32(2692u, 2u)];
    var var_2 = var_0.a.x;
    return _wgslsmith_add_i32(-global2[_wgslsmith_index_u32(max(firstLeadingBit(countOneBits(arg_1.x)), countOneBits(_wgslsmith_add_u32(u_input.a.x, 0u))), 2u)], -(~(~(global2[_wgslsmith_index_u32(u_input.a.x, 2u)] | 2147483647i))));
}

fn func_3(arg_0: vec3<u32>) -> Struct_2 {
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~arg_0.x, ~0u, arg_0.x, 1u), vec4<u32>(max(4294967295u, 35892u), abs(u_input.a.x), u_input.a.x, abs(arg_0.x))) & _wgslsmith_sub_u32(_wgslsmith_sub_u32(1190u, 1u), 1u), 2u)] > _wgslsmith_sub_i32(~global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.a.x, ~4294967295u), 2u)], countOneBits(0i));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(473f, global0.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.x))) - global0.x)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.x * 1f))));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), 2u)];
    global1 = true;
    let var_2 = vec2<u32>(abs(~(arg_0.x >> (~61813u % 32u))), max(arg_0.x, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x) << (vec4<u32>(1u, 4294967295u, u_input.a.x, 0u) % vec4<u32>(32u)), ~vec4<u32>(arg_0.x, u_input.a.x, u_input.a.x, 29345u)))));
    return Struct_2(!(!select(true, false, false)) | !any(vec3<bool>(false, true, true)), Struct_1(vec2<bool>(true, true)), _wgslsmith_f_op_f32(exp2(global0.x)), Struct_1(vec2<bool>(true, false)));
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: vec4<f32>) -> vec4<f32> {
    let var_0 = vec2<f32>(global0.x, arg_0);
    var var_1 = func_3(select(countOneBits(max(~vec3<u32>(4294967295u, 5878u, 4294967295u), ~vec3<u32>(u_input.a.x, 1983u, 0u))), vec3<u32>(4294967295u ^ u_input.a.x, u_input.a.x, u_input.a.x), global2[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 2u)] > _wgslsmith_div_i32(func_2(global2[_wgslsmith_index_u32(u_input.a.x, 2u)], vec4<u32>(42583u, u_input.a.x, 0u, u_input.a.x), Struct_1(arg_1.xy), global2[_wgslsmith_index_u32(u_input.a.x, 2u)]), 1i)));
    let var_2 = Struct_2(!(!(!var_1.a)) || true, var_1.d, _wgslsmith_f_op_f32(-844f - _wgslsmith_f_op_f32(abs(var_1.c))), var_1.d);
    var_1 = func_3(select(vec3<u32>(72194u, 11755u, abs(~u_input.a.x)), max(reverseBits(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)), vec3<u32>(1u, _wgslsmith_add_u32(u_input.a.x, u_input.a.x), 22963u)), arg_1));
    let var_3 = arg_2.wzz;
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1699f * var_0.x), _wgslsmith_f_op_f32(max(global0.x, -766f))))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(arg_2.x)), _wgslsmith_f_op_f32(var_0.x + arg_2.x), arg_1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(959f - var_1.c)), _wgslsmith_f_op_f32(floor(-1182f))), _wgslsmith_f_op_f32(-arg_0), var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(!vec2<bool>(true, global0.x > -1000f)) == all(vec4<bool>(false, (u_input.a.x & u_input.a.x) == 32727u, all(vec4<bool>(false, true, true, true)), any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true))));
    var_0 = true;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-328f, _wgslsmith_div_f32(116f, global0.x), _wgslsmith_f_op_f32(global0.x - 1000f), global0.x)) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-958f, -895f, -581f, -288f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 1547f, global0.x, -524f)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - 646f), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true), _wgslsmith_f_op_vec4_f32(vec4<f32>(933f, -508f, var_1.x, 1642f) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(660f, global0.x, 1000f, var_1.x)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1246f, 1401f, var_1.x, -895f)))), _wgslsmith_f_op_vec4_f32(func_1(global0.x, vec3<bool>(false, true, false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -225f, var_1.x, global0.x)))), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true)), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, _wgslsmith_div_i32(-(_wgslsmith_div_i32(global2[_wgslsmith_index_u32(50819u, 2u)], -1647i) | _wgslsmith_mod_i32(-21455i, -18869i)), 2147483647i), u_input.a.x, _wgslsmith_clamp_i32(-2147483647i, abs(_wgslsmith_mult_i32(2147483647i, abs(global2[_wgslsmith_index_u32(1u, 2u)]))), abs(0i)));
}

