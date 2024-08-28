struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: vec3<u32>,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: f32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, false);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec4<bool>) -> vec2<u32> {
    return vec2<u32>(u_input.c, ~0u) | ~(~(abs(vec2<u32>(47u, 39041u)) << (_wgslsmith_add_vec2_u32(vec2<u32>(arg_1, u_input.a), vec2<u32>(arg_1, 64058u)) % vec2<u32>(32u))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> bool {
    var var_0 = vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.c, 55120u), _wgslsmith_div_u32(_wgslsmith_add_u32(~4294967295u, arg_0.x), 7390u)), abs(~(~0u)));
    var_0 = ~arg_0;
    var_0 = arg_0;
    global0 = !(!vec3<bool>(true, arg_2 > _wgslsmith_sub_i32(u_input.d.x, 2147483647i), -arg_1.a >= -u_input.d.x));
    var_0 = arg_0;
    return true;
}

fn func_2(arg_0: bool, arg_1: Struct_5, arg_2: Struct_4) -> f32 {
    global0 = select(select(select(select(!vec3<bool>(false, arg_0, global0.x), select(vec3<bool>(true, true, false), vec3<bool>(global0.x, false, false), true), vec3<bool>(true, arg_0, false)), select(!vec3<bool>(true, false, arg_0), vec3<bool>(true, arg_0, false), global0.x), func_4(func_3(Struct_1(arg_2.a, 1i), 14230u, vec4<bool>(arg_0, true, global0.x, true)), Struct_1(u_input.d.x, u_input.d.x), -8534i | arg_2.a, any(vec2<bool>(arg_0, true)))), select(vec3<bool>(all(vec3<bool>(arg_0, arg_0, false)), true, true), vec3<bool>(true, true, true), false), select(!vec3<bool>(false, arg_0, global0.x), !select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(true, arg_0, true), vec3<bool>(false, false, arg_0)), vec3<bool>(true, func_4(arg_1.b.xz, Struct_1(u_input.d.x, -71157i), -1i, global0.x), arg_0))), select(select(select(vec3<bool>(global0.x, false, global0.x), select(vec3<bool>(true, false, global0.x), vec3<bool>(false, true, false), vec3<bool>(false, false, arg_0)), vec3<bool>(false, false, arg_0)), vec3<bool>(global0.x, false, any(vec4<bool>(true, arg_0, arg_0, true))), vec3<bool>(true == arg_0, global0.x | arg_0, true)), !select(vec3<bool>(global0.x, arg_0, false), select(vec3<bool>(false, true, true), vec3<bool>(true, arg_0, arg_0), vec3<bool>(true, arg_0, arg_0)), select(vec3<bool>(arg_0, global0.x, true), vec3<bool>(true, false, true), vec3<bool>(arg_0, arg_0, global0.x))), (select(global0.x, false, false) != global0.x) && (_wgslsmith_f_op_f32(exp2(arg_1.a)) <= _wgslsmith_f_op_f32(f32(-1f) * -829f))), true);
    var var_0 = 2421u;
    let var_1 = arg_2.a;
    var var_2 = Struct_5(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1257f, arg_1.a)), _wgslsmith_div_f32(940f, 235f))), _wgslsmith_f_op_f32(sign(-1000f))))), ~arg_1.b & max(select(firstTrailingBit(vec3<u32>(28066u, arg_1.b.x, u_input.b)), vec3<u32>(u_input.b, 11625u, arg_1.b.x), arg_0), vec3<u32>(arg_1.b.x ^ 4294967295u, arg_1.b.x, 4294967295u)));
    let var_3 = Struct_2(!(!select(!vec3<bool>(global0.x, true, arg_0), vec3<bool>(true, false, arg_0), !arg_0)), ~1u, var_2.b, -1131f);
    return var_3.d;
}

fn func_1(arg_0: i32) -> Struct_4 {
    global0 = vec3<bool>(true, true, true);
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-568f, 639f, _wgslsmith_div_f32(220f, _wgslsmith_f_op_f32(sign(1295f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(false, Struct_5(407f, vec3<u32>(u_input.b, 51025u, u_input.c)), Struct_4(u_input.d.x)))))));
    let var_1 = Struct_4(-124922i);
    let var_2 = vec2<bool>(any(!global0.xx), global0.x);
    return var_1;
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: Struct_4, arg_3: u32) -> i32 {
    global0 = select(select(vec3<bool>(all(vec4<bool>(global0.x, false, true, true)) && false, true, !(!global0.x)), vec3<bool>(func_4(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.b), vec2<u32>(arg_0, 1u), vec2<u32>(arg_3, arg_0)), Struct_1(arg_2.a, arg_2.a), _wgslsmith_mult_i32(u_input.d.x, 2147483647i), global0.x), false, true || global0.x), !vec3<bool>(global0.x, !global0.x, global0.x)), !(!vec3<bool>(true, 1i > arg_2.a, false)), vec3<bool>(false & all(global0.xx), func_3(Struct_1(arg_2.a, arg_2.a), u_input.a, vec4<bool>(global0.x, global0.x, global0.x, global0.x)).x < abs(_wgslsmith_sub_u32(4294967295u, 0u)), false));
    var var_0 = u_input.d.x;
    let var_1 = arg_1;
    global0 = vec3<bool>(global0.x, func_4(~((vec2<u32>(1u, 0u) & vec2<u32>(arg_0, arg_0)) | max(vec2<u32>(61569u, u_input.a), vec2<u32>(1u, arg_3))), Struct_1(countOneBits(i32(-1i) * -19979i), arg_2.a), arg_2.a, !any(global0.zy)), !global0.x);
    let var_2 = ~(arg_3 & 1u);
    return arg_2.a;
}

fn func_6(arg_0: i32, arg_1: Struct_2) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.d, -106f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(376f - arg_1.d) + -577f)), vec3<f32>(_wgslsmith_f_op_f32(arg_1.d - _wgslsmith_f_op_f32(f32(-1f) * -943f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(326f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-150f + arg_1.d), -947f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(119f, arg_1.d, 1000f)) * _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.d, arg_1.d, -1732f), vec3<f32>(930f, arg_1.d, arg_1.d)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1.d, arg_1.d, 1026f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.d, -781f, arg_1.d), vec3<f32>(1235f, -1835f, -227f)) * vec3<f32>(arg_1.d, -134f, -650f)))));
    global0 = !select(!select(arg_1.a, !vec3<bool>(arg_1.a.x, true, true), select(true, true, arg_1.a.x)), select(select(!vec3<bool>(false, true, global0.x), vec3<bool>(global0.x, false, global0.x), vec3<bool>(true, arg_1.a.x, global0.x)), arg_1.a, !select(arg_1.a, arg_1.a, arg_1.a)), !vec3<bool>(true, any(vec4<bool>(global0.x, arg_1.a.x, true, true)), true));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1525f + -659f))), 789f);
    var var_2 = Struct_3(arg_1);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0));
    return Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-803f, _wgslsmith_f_op_f32(var_1.x * -780f)) - _wgslsmith_f_op_f32(ceil(var_2.a.d)))), vec3<u32>(countOneBits(abs(4294967295u)), 4294967295u, _wgslsmith_div_u32(1u, 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_div_f32(1367f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1038f * -867f)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1058f - 130f) + -1213f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(729f)) + -1000f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-1498f)))), _wgslsmith_f_op_f32(min(171f, -1000f)));
    let var_1 = all(vec3<bool>(_wgslsmith_mult_i32(max(10218i, u_input.d.x), -43462i) < -(u_input.d.x ^ -2147483647i), !global0.x, all(!(!vec4<bool>(false, false, false, global0.x)))));
    let var_2 = min(-((_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x), vec3<i32>(u_input.d.x, u_input.d.x, 2147483647i)) >> (vec3<u32>(u_input.a, u_input.a, 4294967295u) % vec3<u32>(32u))) << (~select(vec3<u32>(0u, u_input.c, u_input.a), vec3<u32>(0u, u_input.b, u_input.a), vec3<bool>(true, true, global0.x)) % vec3<u32>(32u))), vec3<i32>(-_wgslsmith_add_i32(~u_input.d.x, _wgslsmith_sub_i32(-1i, u_input.d.x)), u_input.d.x, _wgslsmith_dot_vec4_i32(countOneBits(-vec4<i32>(u_input.d.x, u_input.d.x, 1i, -2219i)), firstTrailingBit(-vec4<i32>(-1i, u_input.d.x, u_input.d.x, -1i)))));
    global0 = vec3<bool>(!var_1, !(true | !(var_2.x >= u_input.d.x)), !(!var_1));
    let var_3 = func_6(abs(-2147483647i & func_5(u_input.c, _wgslsmith_f_op_f32(var_0.x + var_0.x), func_1(2147483647i), ~4294967295u)), Struct_2(select(!select(vec3<bool>(false, var_1, false), vec3<bool>(global0.x, true, var_1), vec3<bool>(true, false, global0.x)), !(!vec3<bool>(true, true, var_1)), vec3<bool>(true, true, true)), u_input.b, _wgslsmith_mod_vec3_u32(~(~vec3<u32>(u_input.a, 4294967295u, 34900u)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.c), vec3<u32>(45241u, u_input.a, 49064u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -113f) + _wgslsmith_f_op_f32(ceil(-838f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(24298u, u_input.c, _wgslsmith_mult_u32(1u, var_3.b.x >> (1u % 32u)) & var_3.b.x));
}

