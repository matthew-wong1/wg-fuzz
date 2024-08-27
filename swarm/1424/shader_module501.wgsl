struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 20>;

var<private> global1: array<Struct_2, 27>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: bool, arg_3: vec4<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.c.a.x - arg_1.c.a.x), 945f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -500f))), _wgslsmith_f_op_f32(arg_1.c.a.x + arg_1.c.a.x), 892f));
    var var_1 = Struct_1(arg_2, _wgslsmith_dot_vec4_u32(~select(~vec4<u32>(0u, 12489u, 1u, 21526u), vec4<u32>(18488u, 918u, 0u, 1u), arg_1.a), ~vec4<u32>(_wgslsmith_div_u32(4294967295u, 30220u), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(12073u, 55012u, 4294967295u), vec3<u32>(17939u, 10405u, 12425u)), _wgslsmith_add_u32(1u, 66030u))), false, 1i);
    var var_2 = !vec2<bool>(true, true & (true & (var_1.b >= 4294967295u)));
    var var_3 = Struct_1(!any(select(!vec4<bool>(true, arg_1.a, arg_1.a, arg_1.a), select(vec4<bool>(false, arg_2, var_1.a, true), vec4<bool>(true, true, false, true), true), !vec4<bool>(var_2.x, var_1.c, false, var_1.c))), _wgslsmith_div_u32(1u, 48911u), !(arg_3.x < -53159i), ~(-1i));
    let var_4 = _wgslsmith_sub_i32(arg_0.x, abs(firstTrailingBit(abs(min(arg_0.x, var_3.d)))));
    return _wgslsmith_div_f32(-951f, var_0.x);
}

fn func_2(arg_0: vec4<bool>) -> Struct_4 {
    var var_0 = !(!select(!select(vec4<bool>(arg_0.x, false, arg_0.x, false), arg_0, arg_0), arg_0, vec4<bool>(arg_0.x, false & arg_0.x, true, true)));
    return Struct_4(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-389f, 558f)), -1000f)), _wgslsmith_f_op_f32(sign(-1382f)), any(!arg_0))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-375f - 353f), _wgslsmith_div_f32(245f, 919f))) + _wgslsmith_f_op_f32(1f * 873f))), Struct_3(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1346f), _wgslsmith_f_op_f32(func_3(u_input.b, Struct_4(arg_0.x, 790f, Struct_3(vec2<f32>(-339f, 278f))), var_0.x, _wgslsmith_mod_vec4_i32(global0[_wgslsmith_index_u32(1u, 20u)], vec4<i32>(u_input.a, u_input.b.x, u_input.a, u_input.b.x)))))));
}

fn func_1(arg_0: Struct_2) -> f32 {
    var var_0 = func_2(!select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-275f - 356f) < arg_0.a.x));
    let var_1 = _wgslsmith_div_f32(1885f, -1000f);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(vec4<bool>(var_0.a, true, true, true)).b))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1508f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = false;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(-911f)), _wgslsmith_f_op_f32(f32(-1f) * -387f))));
    var var_3 = ~(-25150i);
    let var_4 = vec2<u32>(~(~(~_wgslsmith_clamp_u32(1u, 0u, 2865u))), 1u);
    let var_5 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(func_1(Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1625f) + vec2<f32>(-1327f, -286f))))), var_2.x));
    let var_6 = var_4 & reverseBits(vec2<u32>(~_wgslsmith_sub_u32(4294967295u, 0u), countOneBits(21431u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(u_input.b.x, -2147483647i), _wgslsmith_f_op_f32(var_5.a.x - 1038f));
}

