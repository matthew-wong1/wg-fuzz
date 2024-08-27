struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16>;

var<private> global1: vec3<f32> = vec3<f32>(-427f, 140f, 1000f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec2<f32>) -> f32 {
    let var_0 = firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(u_input.c << (global0[_wgslsmith_index_u32(35112u, 16u)] % 32u)), _wgslsmith_clamp_i32(_wgslsmith_add_i32(-47921i, u_input.c), u_input.c, -61081i), -47863i), vec3<i32>(u_input.c, u_input.c, -32207i << (0u % 32u))));
    var var_1 = -652f >= global1.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-377f, global1.x, arg_0.x, arg_0.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -235f, -539f, arg_0.x) - vec4<f32>(global1.x, -623f, arg_0.x, global1.x))) - vec4<f32>(_wgslsmith_f_op_f32(round(270f)), arg_0.x, global1.x, global1.x)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, global1.x))))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.x, 954f, arg_0.x, global1.x)))))));
    var var_3 = ~var_0;
    let var_4 = false;
    return _wgslsmith_div_f32(1343f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> f32 {
    global0 = array<u32, 16>();
    global0 = array<u32, 16>();
    let var_0 = _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(global1.zz)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(sign(var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.x))), _wgslsmith_f_op_f32(func_2(vec2<f32>(-787f, -249f)))))));
    var var_2 = arg_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + -945f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -1253f) * -1000f)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: u32) -> vec3<f32> {
    let var_0 = vec3<bool>(arg_0, true, arg_2.x | arg_0);
    var var_1 = vec3<bool>(true, ~(~38513i) >= countOneBits(i32(-1i) * -u_input.c), true);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, global1.x) + _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(trunc(-302f)), global1.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(global1.x)), -1588f, _wgslsmith_div_f32(global1.x, global1.x), _wgslsmith_f_op_f32(1453f * -499f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, -568f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 1035f, 1097f, global1.x)))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(global1.xx)), 2359f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.x))))));
    let var_3 = Struct_1(~(-18479i | reverseBits(u_input.b.x)), _wgslsmith_div_i32(-(~u_input.b.x), ~abs(~31604i)), any(!arg_2) & (!arg_2.x && !(-1147f > var_2.x)), arg_1.c);
    let var_4 = 4294967295u;
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -963f), _wgslsmith_f_op_f32(f32(-1f) * -349f)))), _wgslsmith_div_f32(global1.x, var_2.x), global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(countOneBits(54468i), 2147483647i, (u_input.c ^ (u_input.b.x >> ((84145u | u_input.a.x) % 32u))) < u_input.b.x, true);
    global1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.x, _wgslsmith_f_op_f32(func_1(Struct_1(5387i, u_input.c, false, var_0.c), Struct_1(var_0.b, u_input.c, true, var_0.d), var_0.d)), _wgslsmith_f_op_f32(func_2(vec2<f32>(global1.x, -1488f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 1000f, global1.x)), vec3<f32>(global1.x, 1477f, global1.x)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global1.x, global1.x)) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1927f, -714f, global1.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-543f, global1.x, global1.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-402f, global1.x, global1.x), vec3<f32>(-1602f, -252f, 1450f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-372f, global1.x, global1.x)), _wgslsmith_f_op_vec3_f32(func_3(true, Struct_1(u_input.c, -41334i, var_0.c, true), vec2<bool>(true, false), 1u))), !(false || var_0.d))))));
    var var_1 = false;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(any(!select(vec4<bool>(true, var_0.c, var_0.c, true), vec4<bool>(var_0.c, true, var_0.c, var_0.d), false)), Struct_1(select(var_0.a, u_input.b.x, false & var_0.c), _wgslsmith_mod_i32(var_0.b, -1i ^ u_input.b.x), !any(vec3<bool>(var_0.c, var_0.c, true)), false), vec2<bool>(true, !select(false, true, false)), 1u)).x);
    var var_3 = vec2<bool>(all(vec4<bool>(var_0.c, !var_0.c, -37823i > ~u_input.b.x, var_0.c)), true);
    var_2 = _wgslsmith_f_op_f32(-global1.x);
    let var_4 = Struct_1(2147483647i, var_0.a, all(vec4<bool>(var_3.x, false, var_3.x, var_0.c)), ((var_3.x | !var_0.c) && var_3.x) | false);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-4368i, -_wgslsmith_clamp_i32(20168i, -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_4.a, u_input.c, u_input.c), vec3<i32>(var_4.a, var_0.a, -34682i))), ~(~var_4.b)), vec2<i32>(u_input.b.x, _wgslsmith_dot_vec2_i32(u_input.b, u_input.b)), _wgslsmith_f_op_f32(-412f + 432f), 46445u);
}

