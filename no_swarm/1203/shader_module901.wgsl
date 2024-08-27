struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1 = Struct_1(15033u, vec3<f32>(371f, -215f, 1973f));

var<private> global2: array<bool, 26>;

var<private> global3: f32 = 1393f;

var<private> global4: bool = true;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: i32) -> f32 {
    let var_0 = vec2<i32>(0i, 0i) >> (firstTrailingBit(u_input.a | firstLeadingBit(u_input.a)) % vec2<u32>(32u));
    var var_1 = Struct_1(global1.a, _wgslsmith_f_op_vec3_f32(max(global1.b, vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0 - -2174f), _wgslsmith_f_op_f32(min(310f, global1.b.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.b.x * arg_0), 162f), global1.b.x))));
    var var_2 = ~var_1.a;
    let var_3 = !select(vec4<bool>(any(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 26u)], global2[_wgslsmith_index_u32(1u, 26u)])), all(vec4<bool>(true, true, true, global2[_wgslsmith_index_u32(var_1.a, 26u)])), false, global2[_wgslsmith_index_u32(u_input.a.x, 26u)]), !select(!vec4<bool>(global2[_wgslsmith_index_u32(global1.a, 26u)], global2[_wgslsmith_index_u32(var_1.a, 26u)], false, true), vec4<bool>(global2[_wgslsmith_index_u32(var_1.a, 26u)], true, false, global2[_wgslsmith_index_u32(29784u, 26u)]), global2[_wgslsmith_index_u32(global1.a, 26u)]), all(select(vec2<bool>(false, true), vec2<bool>(false, false), select(vec2<bool>(global2[_wgslsmith_index_u32(var_1.a, 26u)], true), vec2<bool>(global2[_wgslsmith_index_u32(0u, 26u)], global2[_wgslsmith_index_u32(global1.a, 26u)]), vec2<bool>(true, true)))));
    let var_4 = Struct_1(var_1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.x, global1.b.x, 1969f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -778f, 131f)))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-346f, 289f, 1000f), var_1.b))))));
    return arg_0;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = Struct_1(u_input.a.x, vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.b.x), -746f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(sign(859f)), true)))), arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.b.x, arg_0.b.x))))));
    global0 = u_input.b.x;
    let var_2 = arg_0;
    global4 = all(!vec2<bool>(_wgslsmith_div_i32(u_input.b.x, u_input.b.x) > _wgslsmith_sub_i32(38826i, u_input.b.x), true));
    return Struct_1(firstTrailingBit(~var_0.a), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1766f - -348f)) * arg_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-683f, 6898i))), arg_1.x));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = func_2(Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 21822u, 4294967295u, u_input.a.x ^ global1.a), vec4<u32>(~3331u, min(global1.a, 4294967295u), ~106813u, ~u_input.a.x)), arg_1.b), global1.b.zz);
    var var_1 = Struct_1(u_input.a.x, global1.b);
    let var_2 = !select(vec2<bool>(select(true, true, global2[_wgslsmith_index_u32(1u, 26u)]) | false, false), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 26u)], false), !(!all(vec4<bool>(false, global2[_wgslsmith_index_u32(16231u, 26u)], global2[_wgslsmith_index_u32(u_input.a.x, 26u)], global2[_wgslsmith_index_u32(4294967295u, 26u)]))));
    let var_3 = Struct_1(~countOneBits(~firstTrailingBit(4294967295u)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), var_0.b.x, arg_1.b.x))));
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) + _wgslsmith_f_op_f32(max(var_0.b.x, _wgslsmith_f_op_f32(trunc(-1000f))))))));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(u_input.a);
    var var_1 = Struct_1(1u, global1.b);
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1426f, var_1.b.x)) + _wgslsmith_div_f32(global1.b.x, var_1.b.x)), global1.b.x, _wgslsmith_div_f32(1199f, var_1.b.x), 914f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_div_f32(-579f, -795f), -1404f, _wgslsmith_f_op_f32(abs(global1.b.x))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, var_1.b.x, 1000f, 919f))))))));
    var var_4 = Struct_1(_wgslsmith_mult_u32(55275u << (0u % 32u), 1u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global1.b, vec3<f32>(432f, var_1.b.x, _wgslsmith_f_op_f32(round(var_1.b.x))))));
    let var_5 = func_1(vec4<i32>(abs(reverseBits(u_input.b.x) & (37245i << (var_1.a % 32u))), 2147483647i, u_input.b.x, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.b.zx, ~u_input.b.zx), -u_input.b.yx)), Struct_1(~var_1.a, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -513f), 468f, var_4.b.x)))), _wgslsmith_add_vec3_u32(~(~firstTrailingBit(vec3<u32>(13830u, u_input.a.x, 4294967295u))), ~countOneBits(~vec3<u32>(var_4.a, 0u, 4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~9223u, ~(~21369u), _wgslsmith_clamp_u32(~20891u, ~var_0.x, var_5.a)) & _wgslsmith_add_vec3_u32(abs(vec3<u32>(var_4.a, 17443u, var_4.a)), ~(~vec3<u32>(0u, var_1.a, var_4.a))));
}

