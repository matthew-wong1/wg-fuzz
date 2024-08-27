struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    let var_0 = vec3<u32>(35612u, ~countOneBits(~_wgslsmith_mult_u32(u_input.a, u_input.a)), abs(2187u));
    global0 = Struct_2(Struct_1(4294967295u, global0.a.b, global0.a.c), global0.a.b.x);
    var var_1 = global0.a.b.yx;
    global0 = Struct_2(Struct_1(4294967295u, select(select(vec3<bool>(var_1.x, true, global0.b), vec3<bool>(true, true, true), !global0.a.b), global0.a.b, false), ~vec2<i32>(u_input.b, 2147483647i)), any(select(!(!vec2<bool>(var_1.x, global0.a.b.x)), select(select(vec2<bool>(var_1.x, false), global0.a.b.xx, vec2<bool>(global0.a.b.x, global0.a.b.x)), vec2<bool>(global0.b, true), !global0.b), !global0.a.b.x)));
    var_1 = !global0.a.b.yx;
    return reverseBits(_wgslsmith_dot_vec2_u32(arg_0.xy, ~vec2<u32>(var_0.x, ~0u)));
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    global0 = Struct_2(Struct_1(~_wgslsmith_mult_u32(reverseBits(3363u), u_input.d.x), !global0.a.b, ~(-arg_0 >> (~u_input.d % vec2<u32>(32u)))), !(global0.b && (arg_0.x != ~(-1i))));
    let var_0 = global0.a;
    global0 = Struct_2(global0.a, ((~4294967295u >= func_3(vec3<u32>(global0.a.a, u_input.d.x, 11582u))) || !all(global0.a.b.xz)) && var_0.b.x);
    global0 = Struct_2(global0.a, true);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1956f * 1f)), -624f);
    return Struct_2(Struct_1(u_input.d.x, select(!global0.a.b, vec3<bool>(u_input.d.x < global0.a.a, !global0.b, global0.b), 4294967295u < (global0.a.a >> (65258u % 32u))), _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_0.c.x, 30083i), _wgslsmith_mod_vec2_i32(arg_0, arg_0)), ~firstLeadingBit(arg_0), max(vec2<i32>(arg_0.x, u_input.c), vec2<i32>(global0.a.c.x, u_input.c)) ^ _wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.x, arg_0.x), vec2<i32>(var_0.c.x, u_input.b)))), select(select(select(global0.a.a >= 0u, true, var_0.a <= 0u), !(!global0.a.b.x), false), true, !(u_input.c != var_0.c.x)));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(-660f, 530f)), -566f, _wgslsmith_f_op_f32(2095f - 1000f)), vec3<f32>(_wgslsmith_f_op_f32(trunc(854f)), _wgslsmith_f_op_f32(-272f * -588f), _wgslsmith_f_op_f32(f32(-1f) * -1073f))))));
    let var_1 = 2147483647i;
    var var_2 = select(!select(vec4<bool>(any(vec3<bool>(global0.a.b.x, false, false)), false, global0.a.a > 27970u, true), select(!vec4<bool>(global0.b, global0.a.b.x, global0.b, true), !vec4<bool>(true, arg_2.a.b.x, arg_2.a.b.x, arg_2.a.b.x), select(vec4<bool>(true, arg_2.b, arg_1.a.b.x, false), vec4<bool>(true, true, arg_1.a.b.x, false), arg_2.a.b.x)), true), select(select(!select(vec4<bool>(global0.a.b.x, false, global0.b, true), vec4<bool>(arg_1.b, true, true, true), true), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, arg_2.a.b.x), true), !func_2(vec2<i32>(arg_2.a.c.x, -33068i)).b), vec4<bool>(_wgslsmith_add_i32(global0.a.c.x, -5329i) < reverseBits(2147483647i), !global0.b, !arg_1.a.b.x, true), all(select(vec3<bool>(arg_1.b, global0.a.b.x, arg_1.b), global0.a.b, vec3<bool>(false, false, false)))), select(vec4<bool>(arg_2.a.b.x, global0.a.b.x, true, func_2(global0.a.c).b), select(select(select(vec4<bool>(arg_1.a.b.x, arg_1.b, true, arg_1.b), vec4<bool>(true, false, global0.b, global0.a.b.x), vec4<bool>(true, true, global0.b, true)), select(vec4<bool>(true, arg_2.b, arg_2.a.b.x, arg_2.b), vec4<bool>(false, false, false, false), global0.a.b.x), select(vec4<bool>(true, arg_2.b, arg_2.a.b.x, false), vec4<bool>(false, global0.a.b.x, false, arg_2.a.b.x), vec4<bool>(true, global0.a.b.x, false, global0.b))), select(!vec4<bool>(false, false, arg_1.b, arg_2.a.b.x), vec4<bool>(true, arg_2.a.b.x, arg_1.b, arg_1.b), select(vec4<bool>(arg_2.b, global0.b, false, arg_1.b), vec4<bool>(global0.b, global0.a.b.x, arg_2.b, false), vec4<bool>(false, false, true, false))), select(select(vec4<bool>(global0.a.b.x, arg_2.b, false, true), vec4<bool>(global0.a.b.x, arg_1.b, arg_1.b, arg_2.b), vec4<bool>(arg_1.a.b.x, false, arg_2.a.b.x, true)), vec4<bool>(arg_2.b, arg_2.a.b.x, arg_1.a.b.x, false), !arg_2.b)), !vec4<bool>(!arg_2.b, true, any(global0.a.b), !arg_2.a.b.x)));
    let var_3 = arg_1.b;
    let var_4 = func_2(countOneBits(-arg_1.a.c)).a;
    return any(vec2<bool>(all(vec3<bool>(any(arg_2.a.b), var_3, var_2.x)), true));
}

fn func_1() -> Struct_2 {
    var var_0 = func_4(~vec4<u32>(4294967295u, ~global0.a.a, 0u, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 14527u, 59343u), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 4294967295u, 41953u, 62766u), vec4<u32>(27493u, global0.a.a, 4294967295u, 105813u)))), Struct_2(global0.a, false), func_2(firstLeadingBit(_wgslsmith_clamp_vec2_i32(abs(vec2<i32>(global0.a.c.x, global0.a.c.x)), global0.a.c, -global0.a.c))));
    var_0 = global0.a.b.x;
    let var_1 = Struct_2(func_2(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(global0.a.c, vec2<i32>(global0.a.c.x, global0.a.c.x)), firstLeadingBit(global0.a.c)) & _wgslsmith_mult_vec2_i32(~global0.a.c, global0.a.c)).a, false);
    let var_2 = 1f;
    let var_3 = false;
    return Struct_2(global0.a, !var_1.a.b.x);
}

fn func_5(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec3<f32>) -> Struct_2 {
    global0 = func_1();
    global0 = Struct_2(func_2(-countOneBits(reverseBits(vec2<i32>(51902i, arg_1.x)))).a, false);
    global0 = Struct_2(Struct_1(arg_0.a.a, !global0.a.b, vec2<i32>(-global0.a.c.x, arg_1.x)), !func_2(reverseBits(vec2<i32>(0i, global0.a.c.x) & global0.a.c)).b);
    global0 = arg_0;
    let var_0 = arg_0;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(), -_wgslsmith_mult_vec3_i32(~countOneBits(vec3<i32>(global0.a.c.x, u_input.c, global0.a.c.x)), vec3<i32>(-1i) * -vec3<i32>(-2147483647i, global0.a.c.x, u_input.c)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-807f, -698f, 1182f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1312f, -1000f, -188f)))))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -324f), _wgslsmith_f_op_f32(min(-841f, 176f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(679f, -720f))), 722f)));
    let var_1 = !(-var_0.a.c.x < -62890i);
    let var_2 = ~(~1u);
    var var_3 = func_1().a;
    let var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2231f) + _wgslsmith_f_op_f32(step(1000f, 1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-823f, -1897f)))), _wgslsmith_f_op_f32(f32(-1f) * -705f), 1000f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-400f, -223f, 1000f, -1629f)))) - vec4<f32>(1254f, _wgslsmith_f_op_f32(f32(-1f) * -529f), _wgslsmith_f_op_f32(976f - _wgslsmith_f_op_f32(f32(-1f) * -649f)), 1f)));
    let var_5 = var_0.a;
    var var_6 = var_5.b.zz;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_mod_vec3_i32(max(abs(vec3<i32>(-1i, -38489i, global0.a.c.x)), -vec3<i32>(31641i, -8582i, 2147483647i)), vec3<i32>(var_5.c.x, var_5.c.x, i32(-1i) * -9821i))));
}

