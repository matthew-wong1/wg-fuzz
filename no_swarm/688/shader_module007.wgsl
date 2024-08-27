struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: vec3<f32>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: bool;

var<private> global2: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_4) -> vec3<f32> {
    let var_0 = Struct_2(select(vec3<bool>(global2.a < _wgslsmith_f_op_f32(-arg_2.a.a), !(2147483647i >= u_input.c.x), !arg_1), vec3<bool>(false, arg_1, false), arg_1), ~(~25693u), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.a) * -710f), global2.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1000f, 364f)))))), select(vec2<bool>(true, !any(vec3<bool>(arg_1, arg_1, false))), select(vec2<bool>(all(vec4<bool>(arg_1, false, false, true)), all(vec3<bool>(true, arg_1, false))), vec2<bool>(arg_1 && arg_1, true), !vec2<bool>(arg_1, false)), vec2<bool>(arg_1, arg_1)));
    global2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.a.a)))) + arg_2.a.a));
    var var_1 = vec3<i32>(_wgslsmith_clamp_i32(i32(-1i) * -2147483647i, _wgslsmith_dot_vec4_i32(abs(u_input.c), -u_input.c), -(_wgslsmith_div_i32(-52799i, -32810i) | _wgslsmith_dot_vec2_i32(u_input.c.xz, vec2<i32>(2147483647i, u_input.c.x)))), ~u_input.b.x, firstLeadingBit(~(reverseBits(u_input.c.x) << (abs(4294967295u) % 32u))));
    var_1 = vec3<i32>(~firstLeadingBit(u_input.c.x), countOneBits(-u_input.c.x), var_1.x & -(~(~u_input.c.x)));
    var var_2 = var_0.b;
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.a.a))), _wgslsmith_f_op_f32(-1000f * arg_2.a.a), _wgslsmith_f_op_f32(step(955f, _wgslsmith_f_op_f32(exp2(global2.a))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1163f, -162f, -2415f), vec3<f32>(1916f, -1351f, -543f)) + var_0.c)), var_0.c, !var_0.a));
}

fn func_2(arg_0: vec3<u32>, arg_1: bool) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(abs(min(0u, u_input.a.x)), true, Struct_4(Struct_1(1069f))))));
    let var_1 = Struct_4(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.a))), _wgslsmith_f_op_f32(-global2.a)))));
    let var_2 = u_input.b.x;
    global0 = var_1.a.a;
    let var_3 = global2.a;
    return Struct_2(select(select(vec3<bool>(arg_1, true, !arg_1), !select(vec3<bool>(true, false, arg_1), vec3<bool>(false, arg_1, arg_1), arg_1), false), !select(select(vec3<bool>(false, false, true), vec3<bool>(arg_1, false, arg_1), true), select(vec3<bool>(true, arg_1, false), vec3<bool>(arg_1, arg_1, arg_1), arg_1), vec3<bool>(arg_1, true, arg_1)), select(select(select(vec3<bool>(arg_1, false, false), vec3<bool>(arg_1, false, arg_1), arg_1), !vec3<bool>(false, arg_1, arg_1), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, true, true), vec3<bool>(arg_1, true, false), arg_1), select(vec3<bool>(arg_1, true, arg_1), vec3<bool>(false, arg_1, false), true), vec3<bool>(arg_1, arg_1, arg_1)), all(!vec3<bool>(arg_1, false, arg_1)))), 1u, vec3<f32>(_wgslsmith_f_op_f32(select(global2.a, 1024f, arg_1)), global2.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(494f, 1f))), !select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), arg_1), vec2<bool>(true, arg_1), arg_1), vec2<bool>(arg_1, 4294967295u < u_input.a.x), !vec2<bool>(true, arg_1)));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: i32, arg_3: vec2<bool>) -> Struct_4 {
    global2 = Struct_1(_wgslsmith_f_op_f32(545f - -401f));
    global2 = Struct_1(473f);
    let var_0 = arg_0.a.yz;
    var var_1 = Struct_4(Struct_1(_wgslsmith_f_op_f32(-arg_0.c.x)));
    var_1 = Struct_4(var_1.a);
    return Struct_4(var_1.a);
}

fn func_5(arg_0: i32, arg_1: Struct_4, arg_2: Struct_3) -> Struct_4 {
    global2 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(285f))))))));
    let var_0 = vec3<f32>(func_2(firstLeadingBit(_wgslsmith_mod_vec3_u32(u_input.a, u_input.a)), _wgslsmith_dot_vec3_i32(-vec3<i32>(arg_0, arg_0, 32149i), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, 1i, u_input.b.x), vec3<i32>(43987i, 29488i, -2147483647i))) > arg_2.a.x).c.x, global2.a, arg_1.a.a);
    var var_1 = func_2(u_input.a, any(select(vec4<bool>(func_2(u_input.a, true).a.x, select(false, false, true), true, select(true, true, false)), vec4<bool>(true, true, true, 386f != var_0.x), select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true))))));
    var var_2 = arg_1.a;
    var_2 = func_4(Struct_2(var_1.a, ~40249u, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(882f, global2.a, _wgslsmith_f_op_f32(1489f * 1810f)), var_0)), !vec2<bool>(var_1.b <= 18557u, true)), !(!select(!vec4<bool>(true, var_1.a.x, var_1.a.x, var_1.a.x), !vec4<bool>(var_1.a.x, false, true, var_1.a.x), vec4<bool>(false, false, var_1.a.x, true))), -1i, vec2<bool>(true, true)).a;
    return arg_1;
}

fn func_6(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec3<f32>) -> Struct_1 {
    global2 = Struct_1(_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(arg_2.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), 628f)))));
    var var_0 = vec3<u32>(u_input.a.x, abs(arg_1.b.x) >> (2241u % 32u), 1u);
    var var_1 = -28302i;
    var var_2 = max(-11541i, u_input.b.x);
    var var_3 = vec2<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), true);
    return arg_0.a;
}

fn func_1() -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(-global2.a), -410f))));
    global2 = func_6(func_5(u_input.b.x, func_4(func_2(u_input.a >> (vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x) % vec3<u32>(32u)), -106f >= global2.a), vec4<bool>(true, u_input.b.x >= 3147i, true, all(vec3<bool>(false, true, false))), _wgslsmith_mod_i32(-32507i, 33729i), vec2<bool>(true, true)), Struct_3(u_input.c, ~u_input.d)), Struct_3(~_wgslsmith_sub_vec4_i32(u_input.c, _wgslsmith_mult_vec4_i32(vec4<i32>(15481i, u_input.b.x, u_input.b.x, -57222i), vec4<i32>(-2147483647i, u_input.b.x, u_input.c.x, u_input.b.x))), ~vec2<u32>(u_input.a.x >> (31531u % 32u), 1u)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(var_0 * vec3<f32>(-1000f, 1011f, var_0.x)))) * var_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_0)))))));
    let var_1 = select(!vec3<bool>(false, true, select(any(vec2<bool>(true, false)), all(vec2<bool>(true, false)), true)), func_2(select(~(vec3<u32>(54198u, u_input.d.x, 9274u) | vec3<u32>(4294967295u, u_input.a.x, 1766u)), vec3<u32>(_wgslsmith_mod_u32(u_input.a.x, 4294967295u), 1u, u_input.d.x), !func_2(u_input.a, true).a), all(func_2(u_input.a, all(vec4<bool>(true, true, false, true))).a)).a, func_2(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 1u, u_input.d.x)), u_input.a), vec3<u32>(u_input.d.x, func_2(u_input.a, false).b, firstLeadingBit(1u))), true).a);
    let var_2 = u_input.c.x;
    var var_3 = Struct_3(-min(u_input.c, u_input.c), ~select(u_input.a.zz, ~vec2<u32>(64104u, u_input.d.x), true));
    return func_4(func_2(abs(vec3<u32>(0u, ~u_input.a.x, 28081u)), !select(true, !var_1.x, var_1.x)), vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-678f - global2.a) * global2.a) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + 181f), all(vec4<bool>(true, 74353i > u_input.b.x, true, false)), true, false), 2147483647i, select(!(!var_1.yz), vec2<bool>(_wgslsmith_f_op_f32(step(global2.a, var_0.x)) < _wgslsmith_f_op_f32(-global2.a), false), !var_1.xx));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(1u);
    let var_1 = 1i;
    let var_2 = func_1();
    var var_3 = func_4(func_2(u_input.a, !any(vec3<bool>(true, false, true))), select(!vec4<bool>(true, true, false, all(vec2<bool>(true, true))), vec4<bool>(true, true, true, true), select(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), true), vec4<bool>(true, any(vec4<bool>(false, false, false, false)), true, true), vec4<bool>(any(vec4<bool>(false, false, true, false)), true, true, true))), -1i, vec2<bool>(true, (4294967295u > countOneBits(u_input.d.x)) | select(false, true, var_1 >= u_input.b.x)));
    var var_4 = u_input.b;
    var var_5 = !vec3<bool>(!(!any(vec2<bool>(false, false))), true, all(vec4<bool>(func_2(u_input.a, true).d.x, all(vec2<bool>(true, true)), all(vec3<bool>(true, false, false)), true)));
    global1 = any(select(vec4<bool>(u_input.d.x < 27832u, false, false, global2.a == var_2.a.a), vec4<bool>(all(vec4<bool>(var_5.x, var_5.x, var_5.x, var_5.x)), true, var_5.x, select(true, false, true)), any(!vec3<bool>(var_5.x, var_5.x, var_5.x)))) && true;
    var_5 = !(!(!(!(!vec3<bool>(var_5.x, false, false)))));
    var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2063f, -1259f, -1000f, -687f) - vec4<f32>(1017f, 145f, 1051f, -438f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.a, -160f, 1049f, 2604f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(545f, var_3.a.a, 1500f, var_2.a.a), vec4<f32>(global2.a, var_2.a.a, -2570f, var_3.a.a)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.a.a, 355f, 595f, global2.a), vec4<f32>(var_2.a.a, var_2.a.a, var_3.a.a, var_2.a.a), var_5.x)), true)))));
}

