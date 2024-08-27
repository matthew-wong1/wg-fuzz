struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: f32,
    d: f32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(false, true, true, true), vec3<f32>(-737f, 1518f, -1000f), 1145f, -735f, vec2<bool>(true, false));

var<private> global1: array<Struct_1, 23>;

var<private> global2: vec4<u32>;

var<private> global3: bool = false;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: bool, arg_3: vec3<i32>) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1808f, global0.b.x) * vec2<f32>(_wgslsmith_f_op_f32(-1121f * -1000f), 1092f)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.d)) + _wgslsmith_f_op_f32(step(global0.d, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(abs(global0.b.x)), arg_0, _wgslsmith_f_op_f32(select(198f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_div_f32(493f, arg_0), _wgslsmith_f_op_f32(floor(-184f))))), true)));
    global3 = !(!all(select(vec3<bool>(arg_2, global0.a.x, false), !global0.a.zwx, true)));
    let var_2 = _wgslsmith_f_op_f32(-var_0.x);
    let var_3 = _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(max(vec2<i32>(u_input.a.x, ~(-1i)), abs(vec2<i32>(-1i, u_input.a.x))), u_input.a), arg_3.yx);
    return arg_3;
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = ~7330u;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -844f);
    var var_2 = -(~(i32(-1i) * -39487i));
    var var_3 = _wgslsmith_mult_vec3_i32(select(func_3(_wgslsmith_f_op_f32(595f - 879f), global1[_wgslsmith_index_u32(var_0, 23u)], true, arg_0), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -14189i), arg_0) << (global2.xwx % vec3<u32>(32u)), global0.a.x), arg_2.wyx) << (min(vec3<u32>(~37312u, 11236u, abs(max(global2.x, var_0))), global2.zwy) % vec3<u32>(32u));
    let var_4 = global1[_wgslsmith_index_u32(~4294967295u & select(global2.x, 0u, all(!vec4<bool>(global0.a.x, false, false, global0.e.x))), 23u)];
    return Struct_1(select(!select(select(vec4<bool>(false, global0.e.x, var_4.a.x, false), vec4<bool>(var_4.e.x, global0.a.x, global0.a.x, true), global0.e.x), !global0.a, !vec4<bool>(var_4.a.x, false, true, global0.e.x)), select(var_4.a, !vec4<bool>(global0.e.x, false, true, true), true), !(!global0.a.x)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, var_4.b.x, 2260f)), _wgslsmith_f_op_vec3_f32(global0.b - global0.b), any(var_4.a.yzy))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_4.b)))))), _wgslsmith_f_op_f32(-var_4.b.x), 579f, vec2<bool>(_wgslsmith_f_op_f32(min(var_4.b.x, -306f)) < _wgslsmith_f_op_f32(var_4.b.x * _wgslsmith_f_op_f32(select(-319f, global0.c, true))), global0.e.x || var_4.e.x));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<bool>) -> bool {
    global2 = vec4<u32>(u_input.b.x, u_input.b.x, firstLeadingBit(~_wgslsmith_clamp_u32(global2.x | 4294967295u, u_input.b.x, 1u)), 1u);
    var var_0 = func_2(vec3<i32>(1i, u_input.a.x, 1i), max(global2.x, 21369u), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(26851i, firstTrailingBit(-1575i)), 29896i), -1i, reverseBits(u_input.a.x & _wgslsmith_add_i32(0i, u_input.a.x)), -(~14740i) << (global2.x % 32u)));
    var var_1 = Struct_1(!select(global0.a, vec4<bool>(true, all(vec2<bool>(true, false)), var_0.e.x, global0.a.x), var_0.a), global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-355f - 1129f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1713f)), _wgslsmith_f_op_f32(arg_0.x - arg_0.x)), vec2<bool>(all(vec4<bool>(-1186i < u_input.a.x, any(vec2<bool>(arg_1.x, arg_1.x)), true, true)), true));
    let var_2 = func_2(vec3<i32>(u_input.a.x, _wgslsmith_mod_i32(min(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), select(u_input.a.x, u_input.a.x, true)), ~(~(-385i))), max(0i, -2147483647i)), ~firstLeadingBit(_wgslsmith_sub_u32(~global2.x, ~u_input.b.x)), ~(~abs(vec4<i32>(-2147483647i, -5750i, u_input.a.x, -11151i) ^ vec4<i32>(-1i, -2147483647i, -1i, 19643i))));
    var var_3 = ~select(~u_input.a, _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(u_input.a.x, -21218i), _wgslsmith_mult_i32(0i, u_input.a.x)), _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(0i, -1i)), _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, u_input.a.x), u_input.a))), true);
    return any(!vec3<bool>(global0.a.x, !var_2.e.x, var_1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0i;
    let var_1 = Struct_1(global0.a, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1031f, global0.d, 369f) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(305f, -261f, global0.c)))))))), _wgslsmith_div_f32(global0.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.c * _wgslsmith_f_op_f32(ceil(global0.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-296f, 1074f)), _wgslsmith_f_op_f32(-global0.c)), global0.e.x))), _wgslsmith_f_op_f32(sign(239f)), global0.e);
    global2 = vec4<u32>(~abs(u_input.b.x), _wgslsmith_div_u32(abs(firstLeadingBit(u_input.b.x)), firstLeadingBit(u_input.b.x)) & u_input.b.x, abs(51001u), global2.x | global2.x);
    var var_2 = 24923u;
    var_2 = 3533u;
    let var_3 = any(vec4<bool>(global0.a.x, (u_input.b.x >> (abs(u_input.b.x) % 32u)) <= 17084u, true, func_1(var_1.b, vec4<bool>(true, var_1.e.x, select(false, false, var_1.a.x), true))));
    var var_4 = global0.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(global2.x);
}

