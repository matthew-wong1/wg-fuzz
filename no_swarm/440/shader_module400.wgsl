struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: f32) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-976f * arg_2.x), -1000f));
    global0 = Struct_1(41569i, -_wgslsmith_mod_vec3_i32(-vec3<i32>(-40549i, global0.a, 15583i), global0.b));
    var var_1 = arg_3;
    var var_2 = ~4294967295u;
    var var_3 = arg_0;
    return arg_1.b;
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_1(2147483647i, _wgslsmith_sub_vec3_i32(arg_2.b, ~global0.b));
    global0 = Struct_1(countOneBits(_wgslsmith_dot_vec2_i32(-(~vec2<i32>(u_input.a, var_0.a)), firstLeadingBit(global0.b.yz))), -vec3<i32>(u_input.a, 94040i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -15893i, 41545i), vec3<i32>(-6506i, arg_1, var_0.b.x) & vec3<i32>(arg_1, global0.a, -1i))));
    var var_1 = Struct_1(_wgslsmith_mult_i32(arg_1, _wgslsmith_div_i32(_wgslsmith_add_i32(var_0.a, global0.a), u_input.a >> (10712u % 32u)) ^ -reverseBits(2147483647i)), countOneBits(global0.b));
    var var_2 = arg_2;
    var var_3 = vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(-2147483647i, var_0.b.x), abs(var_2.a), -57307i), arg_1, -1i, arg_1) | vec4<i32>(countOneBits(abs(-49950i)) & (-1385i | global0.a), _wgslsmith_sub_i32(~u_input.a, _wgslsmith_mod_i32(-u_input.a, ~(-1i))), -arg_2.a, -1i);
    return abs(~1u);
}

fn func_4(arg_0: vec3<u32>, arg_1: f32) -> vec3<bool> {
    global0 = Struct_1(firstLeadingBit(1i), ~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a << (arg_0.x % 32u), ~8121i, _wgslsmith_dot_vec2_i32(global0.b.zz, vec2<i32>(-1229i, 17900i))), global0.b));
    var var_0 = Struct_1(2147483647i, func_2((-1i >> (arg_0.x % 32u)) == u_input.a, Struct_1(reverseBits(_wgslsmith_clamp_i32(global0.a, 52291i, u_input.a)), vec3<i32>(-1157i, -u_input.a, 0i)), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(arg_1)))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-182f, arg_1)))), 1812f));
    var_0 = Struct_1(8083i, vec3<i32>(countOneBits(~global0.b.x) | 1i, global0.a, _wgslsmith_div_i32(var_0.b.x, _wgslsmith_mult_i32(var_0.a, -1i))));
    let var_1 = ~(~vec4<u32>(arg_0.x, abs(1560u), _wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_0.x, arg_0.x), 2056u), ~arg_0.x ^ arg_0.x));
    let var_2 = -abs(-vec4<i32>(u_input.a & -1i, 2147483647i, -7000i, global0.b.x >> (2917u % 32u)));
    return !vec3<bool>(true, false, any(vec2<bool>(all(vec2<bool>(false, false)), true)));
}

fn func_1() -> i32 {
    var var_0 = Struct_1(~u_input.a, firstLeadingBit(func_2(true, Struct_1(global0.a, global0.b), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-302f, -732f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-924f, -1804f), vec2<f32>(607f, -2029f), false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1158f)))));
    global0 = Struct_1(global0.a, global0.b);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-978f, -2473f)))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(685f, -174f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1703f, 2182f))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(875f, 883f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1043f, -336f)), true)))));
    let var_2 = func_4(~vec3<u32>(max(abs(4294967295u), ~1u), select(974u, 4294967295u, false) << (func_3(true, 7133i, Struct_1(var_0.a, vec3<i32>(-1i, 1i, global0.a))) % 32u), 95618u), _wgslsmith_f_op_f32(-var_1.x));
    var_1 = vec2<f32>(886f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(floor(var_1.x))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1238f, _wgslsmith_f_op_f32(exp2(var_1.x))), _wgslsmith_div_f32(var_1.x, _wgslsmith_div_f32(-784f, var_1.x))))));
    return 49948i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(func_1(), _wgslsmith_mult_vec3_i32(global0.b, vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(-1i, 59813i, global0.a), -2147483647i), select(-2147483647i, global0.a | u_input.a, true), 1i)));
    let var_0 = 2147483647i;
    let var_1 = Struct_1(-44434i, vec3<i32>(countOneBits(u_input.a), 0i, -1i));
    global0 = var_1;
    var var_2 = _wgslsmith_div_vec2_u32(select(vec2<u32>(5355u, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(14910u, 21468u, 13318u), vec3<u32>(0u, 0u, 1u)), min(4805u, 1u))), ~vec2<u32>(1u, 1u), -700f >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(154f * -1030f), _wgslsmith_f_op_f32(trunc(1058f)))), vec2<u32>(~select(34718u, ~22034u, func_4(vec3<u32>(26135u, 1u, 61337u), -1074f).x), 1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(513f, -117f, -597f), vec3<f32>(1000f, 648f, -1573f)))))), var_2.x);
}

