struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: vec2<bool>,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<i32, 21>;

var<private> global2: i32;

var<private> global3: array<Struct_2, 14>;

var<private> global4: array<i32, 16> = array<i32, 16>(-11477i, 47125i, -64115i, i32(-2147483648), 1i, -16323i, i32(-2147483648), -1i, 1i, 0i, -1i, 0i, -9568i, -37055i, 8533i, 1i);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: Struct_2) -> u32 {
    let var_0 = Struct_1(arg_0.a, countOneBits(vec2<u32>(~abs(u_input.a), global0.b >> (_wgslsmith_dot_vec3_u32(vec3<u32>(global0.d, arg_0.d, 47209u), vec3<u32>(arg_0.b, 0u, 8654u)) % 32u))));
    return ~arg_0.d;
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    let var_0 = select(select(!vec4<bool>(all(vec4<bool>(global0.c.x, true, true, true)), global0.e != arg_0.x, select(false, global0.c.x, false), !global0.c.x), vec4<bool>(false, global0.c.x && true, true, true), select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, global0.c.x, false, global0.c.x), global0.c.x), !vec4<bool>(global0.c.x, false, global0.c.x, global0.c.x), 84748i != global1[_wgslsmith_index_u32(4294967295u, 21u)]), !(!vec4<bool>(true, false, global0.c.x, false)), vec4<bool>(false, true, global0.c.x, false))), !select(vec4<bool>(true, all(vec4<bool>(global0.c.x, false, global0.c.x, false)), false, global0.c.x), select(select(vec4<bool>(global0.c.x, true, global0.c.x, false), vec4<bool>(false, true, false, global0.c.x), true), vec4<bool>(global0.c.x, global0.c.x, false, global0.c.x), select(vec4<bool>(global0.c.x, false, false, global0.c.x), vec4<bool>(global0.c.x, false, global0.c.x, global0.c.x), vec4<bool>(global0.c.x, global0.c.x, false, global0.c.x))), vec4<bool>(any(global0.c), any(global0.c), all(vec3<bool>(false, global0.c.x, global0.c.x)), true)), false);
    global3 = array<Struct_2, 14>();
    let var_1 = select(vec3<bool>(true, any(vec4<bool>(var_0.x, true, false, global0.c.x)) == var_0.x, any(select(!var_0.xww, var_0.zyy, select(var_0.zzx, vec3<bool>(false, false, false), var_0.zwx)))), select(vec3<bool>(true, any(vec3<bool>(var_0.x, var_0.x, true)), any(var_0.xyy)), select(!select(vec3<bool>(false, var_0.x, global0.c.x), var_0.ywy, global0.c.x), vec3<bool>(!var_0.x, global0.c.x, var_0.x), select(var_0.zww, !var_0.yyy, var_0.xzy)), var_0.x), !select(vec3<bool>(false, var_0.x, all(vec2<bool>(true, false))), vec3<bool>(any(var_0.zzw), true, global0.a.x <= global0.a.x), select(select(vec3<bool>(true, true, true), vec3<bool>(true, global0.c.x, true), global0.c.x), !var_0.zyz, var_0.xwz)));
    global3 = array<Struct_2, 14>();
    let var_2 = vec4<i32>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(461u, func_2(Struct_2(_wgslsmith_f_op_vec2_f32(round(global0.a)), u_input.a, vec2<bool>(true, false), abs(4294967295u), _wgslsmith_f_op_f32(round(global0.a.x))))), 21u)], 1i, ~global4[_wgslsmith_index_u32(firstTrailingBit(global0.d), 16u)], 1i);
    return 0u;
}

fn func_1(arg_0: vec3<u32>) -> f32 {
    var var_0 = 28599u;
    var var_1 = countOneBits(arg_0.x) | _wgslsmith_mult_u32(func_2(global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 0u), arg_0.xz), 14u)]), (abs(arg_0.x) << ((arg_0.x | 1u) % 32u)) & global0.d);
    var_1 = func_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.a.x, 344f, global0.e, global0.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-852f, -1607f, global0.e, -1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(544f, global0.a.x, -2001f, global0.a.x) - vec4<f32>(-291f, global0.a.x, -537f, -1017f))), global0.c.x)));
    global2 = global1[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.a.x + -100f), global0.a.x, global0.e, global0.e))), 21u)] ^ (1i ^ min(_wgslsmith_mult_i32(firstTrailingBit(global4[_wgslsmith_index_u32(1u, 16u)]), 23895i), -global4[_wgslsmith_index_u32(43432u, 16u)] << (_wgslsmith_clamp_u32(arg_0.x, 1u, global0.b) % 32u)));
    let var_2 = global3[_wgslsmith_index_u32(4294967295u, 14u)];
    return _wgslsmith_f_op_f32(round(global0.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(select(global0.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(~vec3<u32>(global0.d, 41898u, u_input.b) >> (~vec3<u32>(1u, u_input.a, global0.d) % vec3<u32>(32u)))) + global0.a.x), false));
    global4 = array<i32, 16>();
    var var_1 = any(vec4<bool>(false, true, any(global0.c), global0.c.x));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(-global0.a.x)), global0.a.x)), reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(25846u, global0.b), abs(select(vec2<u32>(u_input.a, global0.d), vec2<u32>(u_input.b, global0.d), global0.c.x)))));
    let var_3 = false;
    let var_4 = global0.d;
    let var_5 = Struct_2(var_2.a, global0.d, select(!(!select(vec2<bool>(var_3, global0.c.x), vec2<bool>(false, false), global0.c.x)), !select(!global0.c, select(global0.c, vec2<bool>(var_3, var_3), var_3), any(vec2<bool>(global0.c.x, false))), select(vec2<bool>(any(global0.c), any(vec4<bool>(true, false, true, global0.c.x))), vec2<bool>(global0.c.x, var_3), !(!vec2<bool>(false, global0.c.x)))), 74658u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global0.a.x)), _wgslsmith_f_op_f32(step(1647f, global0.e))), -751f)));
    global1 = array<i32, 21>();
    var var_6 = select(vec2<bool>(var_5.c.x, any(select(vec2<bool>(true, true), var_5.c, true)) || var_3), global0.c, var_5.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(~2315u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0, 799f, 220f)))), vec3<f32>(-271f, -607f, -2246f))) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(round(var_2.a.x)), _wgslsmith_f_op_f32(ceil(2051f)), 457f)))), ~(~var_2.b));
}

