struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_2;

var<private> global2: array<vec2<i32>, 16> = array<vec2<i32>, 16>(vec2<i32>(2147483647i, 1i), vec2<i32>(5842i, -27262i), vec2<i32>(1i, 18019i), vec2<i32>(-1i, -64490i), vec2<i32>(14222i, 37641i), vec2<i32>(-8204i, 31137i), vec2<i32>(13885i, -12931i), vec2<i32>(-57427i, -41143i), vec2<i32>(1i, 1i), vec2<i32>(0i, -1i), vec2<i32>(0i, 39086i), vec2<i32>(-19096i, 6661i), vec2<i32>(-10101i, 1i), vec2<i32>(i32(-2147483648), 48478i), vec2<i32>(41328i, 9121i), vec2<i32>(i32(-2147483648), 37103i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<i32>) -> bool {
    global0 = _wgslsmith_f_op_f32(abs(-1000f));
    global1 = Struct_2(global1.a);
    global2 = array<vec2<i32>, 16>();
    var var_0 = Struct_2(global1.a);
    var var_1 = global1.a;
    return true;
}

fn func_3() -> vec4<bool> {
    var var_0 = vec2<u32>(~0u, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.a, 23472u, global1.a.a, global1.a.a), u_input.d))) >> (u_input.d.ww % vec2<u32>(32u));
    let var_1 = !vec3<bool>(false, var_0.x == 1u, global1.a.b);
    var var_2 = var_1.x;
    var_2 = false || var_1.x;
    let var_3 = select(u_input.b.x, u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-122f - 135f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1109f - 895f))) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1000f)), -1864f));
    return !select(vec4<bool>(!all(var_1), false, var_1.x, true), select(vec4<bool>(var_1.x, true, false, u_input.a.x <= 96866u), select(vec4<bool>(true, false, true, false), vec4<bool>(true, global1.a.b, true, true), !vec4<bool>(false, false, global1.a.b, global1.a.b)), any(select(vec4<bool>(false, false, false, global1.a.b), vec4<bool>(true, false, var_1.x, false), vec4<bool>(false, var_1.x, var_1.x, false)))), !select(vec4<bool>(true, false, var_1.x, var_1.x), !vec4<bool>(true, global1.a.b, var_1.x, global1.a.b), select(vec4<bool>(false, var_1.x, global1.a.b, var_1.x), vec4<bool>(false, var_1.x, false, false), var_1.x)));
}

fn func_1(arg_0: vec3<bool>, arg_1: f32, arg_2: bool) -> Struct_1 {
    global1 = Struct_2(Struct_1(73402u >> (u_input.d.x % 32u), func_2(~abs(vec3<i32>(2147483647i, 1i, u_input.b.x)), -vec2<i32>(u_input.b.x, u_input.b.x))));
    global1 = Struct_2(Struct_1(~global1.a.a, arg_0.x));
    let var_0 = select(!select(func_3(), vec4<bool>(!global1.a.b, true, true, true), false), select(select(vec4<bool>(select(arg_2, true, arg_2), false, arg_2 || true, false), !vec4<bool>(false, arg_2, arg_2, arg_2), !arg_0.x), !vec4<bool>(true, true, arg_0.x, arg_2), u_input.b.x != 0i), arg_0.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(685f - -585f), arg_1, _wgslsmith_f_op_f32(exp2(arg_1))))) * vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1 + 1181f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2255f) - 875f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_f_op_f32(-arg_1))))));
    var var_2 = max(~u_input.b.x, _wgslsmith_sub_i32(-8881i, u_input.b.x));
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !global1.a.b;
    global1 = Struct_2(global1.a);
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1330f);
    var var_1 = Struct_2(global1.a);
    global0 = _wgslsmith_f_op_f32(1802f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1207f, 788f))))))));
    var_1 = Struct_2(func_1(!vec3<bool>(var_1.a.b, global1.a.b, any(vec2<bool>(false, false))), 975f, !var_1.a.b));
    var var_2 = Struct_2(func_1(vec3<bool>(false, _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, u_input.b.x) == (14350i << (u_input.a.x % 32u)), all(select(vec4<bool>(var_1.a.b, true, global1.a.b, global1.a.b), vec4<bool>(false, var_1.a.b, false, global1.a.b), false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -764f) - -1510f) + 849f), !(var_1.a.b | false) != var_1.a.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~(~(~var_2.a.a)), var_2.a.a, 1u), ~_wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(11848i, -1i, -17276i), vec3<i32>(-1i, u_input.b.x, u_input.b.x))), countOneBits(vec3<i32>(u_input.b.x, 0i, -35611i) & vec3<i32>(-29954i, u_input.b.x, 2147483647i))), vec4<i32>(_wgslsmith_add_i32(50202i, _wgslsmith_sub_i32(1i, 2533i)), 25386i, -511i, u_input.b.x) << (~(~vec4<u32>(11764u, 76910u, 1u, 44701u)) % vec4<u32>(32u)), -u_input.b.x, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-2470f, -1534f, -287f)))), vec3<f32>(_wgslsmith_f_op_f32(ceil(1015f)), 600f, _wgslsmith_div_f32(322f, 936f)))))));
}

