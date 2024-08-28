struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: u32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 11>;

var<private> global1: vec3<f32> = vec3<f32>(167f, -1244f, 689f);

var<private> global2: bool = true;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_2) -> i32 {
    return u_input.c;
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: vec4<u32>) -> vec3<f32> {
    global0 = array<Struct_3, 11>();
    global1 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1161f - _wgslsmith_f_op_f32(sign(global1.x))) * global1.x), _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(global1.x * 1107f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-arg_1.ywz)))));
    global2 = all(!(!(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true))));
    var var_0 = Struct_2(vec4<u32>(~arg_2.x, countOneBits(~48800u & _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, 75223u, 24336u, 0u), vec4<u32>(1u, arg_2.x, 4294967295u, arg_2.x))), firstLeadingBit(1706u), _wgslsmith_clamp_u32(arg_2.x, ~abs(69278u), _wgslsmith_div_u32(52465u, 70815u))), Struct_1(vec3<i32>(countOneBits(-u_input.b.x), func_2(Struct_2(vec4<u32>(21609u, 91883u, 56567u, 0u), Struct_1(u_input.b, 1000f), arg_2.x, vec4<u32>(arg_2.x, arg_2.x, arg_2.x, 29119u))), u_input.b.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(global1.x)), global1.x, true))), arg_2.x >> (~arg_2.x % 32u), max(arg_2, ~vec4<u32>(4294967295u, 6254u, ~arg_2.x, 1u & arg_2.x)));
    var var_1 = !select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, select(false, false, false)), true), all(select(vec3<bool>(false, false, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)))));
    return _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(arg_1.yzz)))))));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>) -> vec2<bool> {
    global1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x) * vec3<f32>(global1.x, -1000f, global1.x))) * _wgslsmith_f_op_vec3_f32(func_3(func_2(Struct_2(vec4<u32>(arg_0, arg_0, 4294967295u, arg_0), Struct_1(vec3<i32>(20012i, -61622i, u_input.a), 461f), 0u, vec4<u32>(arg_0, arg_0, 4294967295u, 27572u))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.x, global1.x, global1.x, -1774f))), vec4<u32>(arg_0, arg_0, 4294967295u, arg_0)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(348f, -618f, global1.x)))));
    global0 = array<Struct_3, 11>();
    var var_0 = select(vec3<bool>(true, arg_1.x, ((arg_0 > 10515u) | all(arg_1)) == false), vec3<bool>(false, !all(vec4<bool>(false, arg_1.x, false, arg_1.x)), arg_1.x), arg_1.x);
    var_0 = vec3<bool>(!(30222u != arg_0), !(!(!(false & var_0.x))), var_0.x | (!var_0.x & arg_1.x));
    let var_1 = _wgslsmith_mod_vec4_i32((vec4<i32>(0i, -1i, ~u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.b.x), vec2<i32>(u_input.c, 1i))) << (~vec4<u32>(1u, arg_0, arg_0, arg_0) % vec4<u32>(32u))) | vec4<i32>(-reverseBits(-1i), -max(40987i, u_input.a), -1i, 0i), vec4<i32>(-u_input.c, 66349i, -_wgslsmith_sub_i32(abs(u_input.a), -26944i), -35198i));
    return !var_0.yy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec2<bool>(true, true), select(!select(vec2<bool>(true, true), vec2<bool>(false, true), false), select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, false), any(vec2<bool>(false, false))), select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, true), false), func_1(6193u, vec2<bool>(false, false)))), !select(vec2<bool>(true, true), vec2<bool>(true, true), true)), !select(vec2<bool>(true, true), func_1(1u, vec2<bool>(true, true)), vec2<bool>(true, any(vec4<bool>(true, false, true, false)))), false | (min(14555i, min(u_input.a, u_input.b.x)) > min(u_input.a | u_input.a, u_input.c)));
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.x, -961f, 520f), vec3<f32>(-495f, 807f, -1654f))))))));
    var var_1 = countOneBits(vec4<i32>(u_input.c, -10328i, ~reverseBits(1i), ~_wgslsmith_div_i32(u_input.b.x, -1i)));
    let var_2 = select(vec4<bool>(var_0.x == true, false, var_0.x, true && any(select(vec3<bool>(var_0.x, true, true), vec3<bool>(var_0.x, false, true), vec3<bool>(false, var_0.x, false)))), select(!(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), vec4<bool>(var_0.x, select(false, var_0.x && var_0.x, true), any(!vec4<bool>(var_0.x, var_0.x, true, var_0.x)), _wgslsmith_mod_i32(-2147483647i, u_input.a) <= _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 62191i, -1i, u_input.a), vec4<i32>(var_1.x, -2147483647i, u_input.b.x, var_1.x))), !(!select(vec4<bool>(true, false, true, false), vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(false, true, var_0.x, false)))), select(select(vec4<bool>(true, var_0.x, true, var_1.x == 2147483647i), !select(vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(var_0.x, var_0.x, var_0.x, true), var_0.x), !select(vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(var_0.x, false, false, var_0.x), false)), select(!(!vec4<bool>(true, true, var_0.x, var_0.x)), !select(vec4<bool>(false, false, var_0.x, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true)), !(1487f > global1.x)), false));
    var var_3 = Struct_4(vec4<u32>(~18235u, _wgslsmith_add_u32(1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 24544u), vec2<u32>(73632u, 1u))), 1u, ~(~(~0u))), vec2<bool>(false, var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -615f) + -1000f), global1.x, -1698f), ~select(_wgslsmith_clamp_vec4_i32(~vec4<i32>(2147483647i, u_input.a, var_1.x, -1i), abs(vec4<i32>(-1i, var_1.x, u_input.c, 1i)), vec4<i32>(var_1.x, 7616i, var_1.x, var_1.x) >> (vec4<u32>(46353u, 0u, var_3.a.x, var_3.a.x) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(~vec4<i32>(1i, u_input.b.x, 1i, -28022i), select(vec4<i32>(-1i, -2147483647i, 58259i, 23929i), vec4<i32>(-40326i, -9260i, var_1.x, u_input.c), false)), true));
}

