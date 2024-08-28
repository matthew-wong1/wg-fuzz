struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 12> = array<vec3<f32>, 12>(vec3<f32>(-978f, -1000f, 844f), vec3<f32>(-352f, 1147f, 901f), vec3<f32>(1499f, 1169f, -357f), vec3<f32>(-2052f, -896f, -392f), vec3<f32>(-489f, -1705f, -197f), vec3<f32>(510f, 581f, -195f), vec3<f32>(-278f, 259f, 418f), vec3<f32>(1000f, 1000f, 691f), vec3<f32>(-734f, 581f, -762f), vec3<f32>(876f, 808f, 1501f), vec3<f32>(794f, -543f, 128f), vec3<f32>(1000f, 222f, 1000f));

var<private> global1: Struct_1 = Struct_1(vec2<bool>(true, false));

var<private> global2: u32 = 22838u;

var<private> global3: bool;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> Struct_1 {
    global2 = 26374u;
    var var_0 = Struct_1(global1.a);
    let var_1 = vec4<i32>(countOneBits(1i), min(-1i, 2147483647i), min(u_input.a, _wgslsmith_add_i32(u_input.a, 53555i)), -7469i);
    var var_2 = 1f;
    let var_3 = abs(var_1.x ^ _wgslsmith_dot_vec4_i32(var_1, vec4<i32>(abs(u_input.a), 24425i, -23247i, _wgslsmith_mult_i32(-2147483647i, -1i))));
    return Struct_1(vec2<bool>(true, true || any(!vec4<bool>(false, global1.a.x, true, var_0.a.x))));
}

fn func_3(arg_0: i32, arg_1: vec2<bool>) -> f32 {
    global0 = array<vec3<f32>, 12>();
    var var_0 = ~firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(2932i, 1i, countOneBits(-2884i)), vec3<i32>(arg_0, u_input.a, u_input.a) >> (~vec3<u32>(4294967295u, 51341u, 42385u) % vec3<u32>(32u))));
    let var_1 = vec2<bool>(true, global1.a.x);
    var var_2 = Struct_1(var_1);
    global3 = true;
    return -544f;
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: bool) -> bool {
    global1 = func_2();
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.b, vec2<bool>(true, global1.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(313f - 767f), _wgslsmith_f_op_f32(sign(-1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -2522f)) + _wgslsmith_f_op_f32(round(-1305f))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-782f, -1000f)), -2078f)))));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2036f), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -701f), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(min(107f, var_0.x))))))));
    var var_2 = Struct_1(vec2<bool>(!(-1000f <= var_0.x), u_input.b > select(_wgslsmith_mod_i32(u_input.b, u_input.b), max(u_input.a, -32598i), true)));
    var_2 = Struct_1(var_2.a);
    return var_2.a.x;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: bool) -> Struct_1 {
    let var_0 = ~abs(abs(~(~vec2<u32>(18144u, 1u))));
    global2 = _wgslsmith_div_u32(firstTrailingBit(~0u), 24491u);
    let var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -376f), -234f) + vec2<f32>(1766f, 1494f)))));
    let var_2 = any(!(!(!(!vec4<bool>(false, global1.a.x, arg_0.a.x, global1.a.x)))));
    global0 = array<vec3<f32>, 12>();
    return Struct_1(select(vec2<bool>(!(arg_0.a.x | false), true || all(global1.a)), global1.a, !select(vec2<bool>(var_2, global1.a.x), global1.a, var_0.x <= var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-vec3<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 0i, u_input.b), vec3<i32>(u_input.b, 1i, 0i)), -18170i, 6234i));
    let var_1 = countOneBits(-(~(-vec2<i32>(-2147483647i, 2147483647i))));
    global3 = true;
    global2 = ~(countOneBits(~1u) & ~(~select(4294967295u, 11812u, global1.a.x)));
    global1 = Struct_1(global1.a);
    var var_2 = func_4(Struct_1(select(vec2<bool>(true, any(vec3<bool>(false, false, false))), select(vec2<bool>(global1.a.x, global1.a.x), select(global1.a, global1.a, global1.a.x), global1.a.x), !select(global1.a, vec2<bool>(global1.a.x, false), vec2<bool>(false, true)))), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), func_1(1u, abs(~(~1u)), false));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-546f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(374f, -1321f)), -1340f)) * 683f);
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_clamp_i32(min(var_1.x >> (0u % 32u), max(u_input.a, u_input.a)), -1i, countOneBits(var_0.x)), var_1.x), 22536u);
}

