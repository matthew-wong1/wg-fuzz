struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: i32) -> vec4<bool> {
    global0 = Struct_1(!vec2<bool>(true, (2147483647i <= arg_2) | !arg_1.x));
    let var_0 = u_input.b != _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(15526u, 1u, arg_0.x), vec3<u32>(arg_0.x, arg_0.x, 4294967295u)), _wgslsmith_mult_vec3_u32(~arg_0, vec3<u32>(arg_0.x, u_input.b, arg_0.x))), arg_0.x);
    return !(!(!(!vec4<bool>(true, true, false, global0.a.x))));
}

fn func_3(arg_0: vec4<bool>) -> bool {
    let var_0 = _wgslsmith_clamp_i32(~(i32(-1i) * -1i), _wgslsmith_div_i32(firstTrailingBit(1i) & 0i, _wgslsmith_sub_i32(-84363i, 17035i)), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(_wgslsmith_mod_i32(-1i, -1i), -4231i)), _wgslsmith_add_vec2_i32(~vec2<i32>(1i, 1i), _wgslsmith_mult_vec2_i32(-vec2<i32>(-2147483647i, -1i), vec2<i32>(1i, 1i)))));
    let var_1 = vec2<f32>(-926f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(f32(-1f) * -229f)))));
    var var_2 = 25707u;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1708f, var_1.x, var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(303f, var_1.x, var_1.x, -1307f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, 837f, var_1.x)), vec4<f32>(var_1.x, -991f, var_1.x, var_1.x), !vec4<bool>(global0.a.x, arg_0.x, false, arg_0.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 502f, var_1.x, var_1.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, -938f))))));
    global0 = Struct_1(arg_0.zw);
    return true;
}

fn func_1(arg_0: u32, arg_1: vec4<u32>) -> vec4<i32> {
    global0 = Struct_1(select(!select(select(vec2<bool>(global0.a.x, global0.a.x), vec2<bool>(true, global0.a.x), vec2<bool>(global0.a.x, false)), !global0.a, any(vec4<bool>(global0.a.x, global0.a.x, true, global0.a.x))), vec2<bool>(_wgslsmith_f_op_f32(step(394f, -268f)) != _wgslsmith_f_op_f32(839f - 336f), true), true));
    var var_0 = global0.a.x;
    let var_1 = select(!select(vec4<bool>(true, true, true, true), !(!vec4<bool>(true, global0.a.x, true, global0.a.x)), func_2(vec3<u32>(arg_1.x, arg_1.x, 1u), select(vec3<bool>(false, global0.a.x, global0.a.x), vec3<bool>(global0.a.x, global0.a.x, false), global0.a.x), ~1i)), vec4<bool>(global0.a.x, false, true, func_3(func_2(~vec3<u32>(1u, arg_1.x, u_input.b), vec3<bool>(true, true, true), 1i))), all(vec4<bool>(true, global0.a.x, all(!vec3<bool>(global0.a.x, global0.a.x, false)), global0.a.x)));
    var var_2 = Struct_1(global0.a);
    let var_3 = Struct_2(Struct_1(var_1.yz));
    return _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(-2147483647i, ~0i), min(0i >> (arg_1.x % 32u), ~4057i)), -86320i, _wgslsmith_mod_i32(~_wgslsmith_add_i32(2147483647i, -33352i), _wgslsmith_clamp_i32(0i, 2147483647i, _wgslsmith_clamp_i32(-1i, -2147483647i, 1i))), _wgslsmith_clamp_i32(-(~(-4792i)), _wgslsmith_add_i32(firstTrailingBit(0i), -2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(6363i, 1i, -1i), vec3<i32>(-3691i, -30028i, 3955i)))), -vec4<i32>(~1i, 1i, -2147483647i, abs(~(-24771i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(reverseBits(-firstLeadingBit(vec4<i32>(1i, 0i, 31514i, -34327i))) ^ -func_1(reverseBits(34028u), vec4<u32>(1u, 14090u, u_input.b, 1u)));
    let var_1 = firstLeadingBit(abs(var_0.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1035f - _wgslsmith_f_op_f32(452f * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(378f, -707f))), 1390f, 439f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1f, 1f, 1f, 1f))))));
    var var_3 = Struct_2(Struct_1(global0.a));
    var var_4 = var_2.wz;
    var var_5 = countOneBits(firstLeadingBit(firstLeadingBit(~vec4<u32>(u_input.b, 63526u, 51719u, 31882u))));
    global0 = Struct_1(!func_2(var_5.xyy, !select(vec3<bool>(true, false, var_3.a.a.x), vec3<bool>(false, var_3.a.a.x, false), global0.a.x), -1i).yy);
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

