struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(2147483647i, 2147483647i, -27795i, 9657i);

var<private> global1: array<vec2<u32>, 29>;

var<private> global2: array<vec4<i32>, 24>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>) -> vec2<bool> {
    let var_0 = Struct_1(global0.x);
    global0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(min(_wgslsmith_div_vec3_u32(reverseBits(select(vec3<u32>(4294967295u, 46067u, u_input.b), u_input.a, vec3<bool>(false, true, arg_0.x))), ~u_input.a), ~vec3<u32>(_wgslsmith_sub_u32(u_input.b, u_input.a.x), 1u, 1u)), ~u_input.a), 24u)];
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1f, 1f, 1f)));
    let var_2 = Struct_1(-min(1i, -(var_0.a >> (4294967295u % 32u))));
    var var_3 = Struct_1(_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(~(-44558i), _wgslsmith_div_i32(var_0.a, 2147483647i))), ~global0.ww));
    return vec2<bool>(!all(!(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))), arg_0.x);
}

fn func_2(arg_0: u32) -> i32 {
    global2 = array<vec4<i32>, 24>();
    var var_0 = -1871f;
    let var_1 = vec3<bool>(any(select(func_3(vec3<bool>(true, true, true)), func_3(vec3<bool>(true, true, true)), any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1086f)) + _wgslsmith_f_op_f32(max(372f, -308f))) + -112f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2585f + 2122f), -1027f, all(vec3<bool>(false, false, true))))), false);
    let var_2 = Struct_1(1i);
    var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(323f, -611f))))), -665f))));
    return -24389i;
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: bool) -> f32 {
    let var_0 = arg_2;
    let var_1 = ~(~vec4<u32>(u_input.a.x, 4294967295u, _wgslsmith_mult_u32(~u_input.a.x, ~u_input.a.x), u_input.b));
    var var_2 = true;
    global0 = vec4<i32>(func_2(var_1.x), min(_wgslsmith_add_i32(-37702i, abs(11478i)), -27380i), -27280i, -1i);
    let var_3 = !select(!(!vec3<bool>(arg_1.x, true, true)), select(vec3<bool>(true, arg_3, arg_1.x), vec3<bool>(arg_3, arg_3, any(vec2<bool>(false, true))), false), arg_3);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(808f, 409f)), _wgslsmith_f_op_f32(min(arg_0, -1140f))))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(-1i, reverseBits(-1i), firstLeadingBit(global0.x), countOneBits(global0.x) | -13216i)), global2[_wgslsmith_index_u32(4294967295u, 24u)]);
    var var_1 = all(!arg_2);
    let var_2 = Struct_1(-22462i);
    let var_3 = vec3<i32>(~(arg_1.a >> (u_input.b % 32u)), reverseBits(-_wgslsmith_mod_i32(_wgslsmith_sub_i32(-2147483647i, 1i), -11285i)), -12360i);
    global1 = array<vec2<u32>, 29>();
    return Struct_1(~(_wgslsmith_mult_i32(~18566i, arg_0.a) ^ (_wgslsmith_sub_i32(global0.x, -15046i) >> (4294967295u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<u32>, 29>();
    var var_0 = vec3<i32>((global0.x ^ -global0.x) >> (u_input.b % 32u), global0.x, _wgslsmith_add_i32(abs(_wgslsmith_clamp_i32(1i, -34606i, _wgslsmith_add_i32(global0.x, -40225i))), global0.x));
    var var_1 = !select(vec4<bool>(false, true, false, true || all(vec3<bool>(true, false, true))), vec4<bool>(false, true, true, true), vec4<bool>(any(vec2<bool>(true, true)), true, -1i >= _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -5501i, -2147483647i, var_0.x), global2[_wgslsmith_index_u32(1u, 24u)]), false));
    let var_2 = Struct_1(global0.x);
    var var_3 = func_4(var_2, var_2, !var_1.wzy, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(130f)))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(2843f, vec3<bool>(var_1.x, var_1.x, var_1.x), var_2, var_1.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1156f) + -842f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1563f))), _wgslsmith_f_op_f32(ceil(-1675f)), 651f));
    let var_4 = 34306u;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.b) << (u_input.a.xx % vec2<u32>(32u)), vec2<u32>(1u, 1u)) & vec2<u32>(u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, 38741u)), vec2<u32>(27575u, abs(26700u))), var_4);
}

