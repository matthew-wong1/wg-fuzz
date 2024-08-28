struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<u32>(26389u, 111119u), vec3<bool>(true, false, true), vec4<bool>(false, false, true, false));

var<private> global1: array<vec3<i32>, 11> = array<vec3<i32>, 11>(vec3<i32>(330i, 9915i, 1i), vec3<i32>(38356i, 2147483647i, 13578i), vec3<i32>(-18667i, -1i, -71472i), vec3<i32>(0i, -16355i, i32(-2147483648)), vec3<i32>(2147483647i, -90424i, -1i), vec3<i32>(-44100i, 0i, -11259i), vec3<i32>(-77712i, -28285i, -27556i), vec3<i32>(2147483647i, 52312i, 2147483647i), vec3<i32>(1i, -15953i, 39893i), vec3<i32>(-56575i, -25477i, 5700i), vec3<i32>(4553i, i32(-2147483648), -5306i));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: Struct_2) -> bool {
    let var_0 = abs(max(-1i, u_input.c.x));
    var var_1 = Struct_3(arg_2.a, vec4<bool>(arg_3.b.x, !all(vec2<bool>(false, arg_3.b.x)), true, !any(vec3<bool>(arg_3.c.x, arg_1, arg_3.c.x))), Struct_2(_wgslsmith_clamp_vec2_u32(vec2<u32>(firstLeadingBit(global0.a.x), _wgslsmith_add_u32(global0.a.x, 0u)), _wgslsmith_div_vec2_u32(~vec2<u32>(global0.a.x, 0u), ~vec2<u32>(global0.a.x, global0.a.x)), vec2<u32>(71427u, 0u)), select(!vec3<bool>(false, arg_1, true), select(select(arg_2.b.zxy, arg_2.b.yxw, true), select(vec3<bool>(arg_1, global0.c.x, global0.c.x), vec3<bool>(false, false, global0.c.x), arg_2.c.x), arg_1), !select(vec3<bool>(true, false, false), vec3<bool>(true, arg_1, arg_3.b.x), vec3<bool>(true, false, arg_3.b.x))), arg_3.c));
    let var_2 = (arg_3.b.x || false) & any(select(arg_3.b.zy, vec2<bool>(true, arg_3.b.x), global0.c.x));
    var_1 = Struct_3(arg_0, global0.c, Struct_2(vec2<u32>(abs(4294967295u), 16016u), vec3<bool>(any(arg_2.b), all(arg_3.b), select(select(global0.b.x, false, global0.c.x), false, select(true, var_1.c.c.x, false))), !select(vec4<bool>(arg_1, true, false, var_2), global0.c, var_1.b.x)));
    var_1 = Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(368f + arg_0))), !vec4<bool>(false, arg_2.b.x, !arg_3.c.x, !all(vec3<bool>(var_2, global0.b.x, false))), Struct_2(firstLeadingBit(firstTrailingBit(vec2<u32>(arg_3.a.x, 4294967295u))), !arg_2.c, arg_3.c));
    return true;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec2<u32>) -> Struct_2 {
    global1 = array<vec3<i32>, 11>();
    let var_0 = Struct_1(-157f, vec4<bool>(arg_0, !any(global0.b.yy), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -198f) - _wgslsmith_f_op_f32(-257f + 756f)), true, Struct_1(_wgslsmith_f_op_f32(trunc(-1330f)), !vec4<bool>(arg_1, false, arg_0, true), vec3<bool>(false, true, false)), Struct_2(vec2<u32>(u_input.d, global0.a.x), vec3<bool>(false, arg_1, arg_1), global0.c)), any(vec3<bool>(global0.b.x, all(global0.b.xz), all(global0.c.xy)))), global0.c.yxw);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-743f)) * -659f), vec4<bool>(false, arg_0, arg_1, select(arg_0, true, false)), Struct_2(global0.a, global0.c.xww, vec4<bool>(global0.c.x, true, arg_0, !arg_1)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.a)), var_1.a))), vec4<bool>(false, var_0.c.x, any(!(!vec2<bool>(var_1.b.x, false))), arg_0), vec3<bool>(!all(select(var_0.c, vec3<bool>(false, var_1.b.x, false), var_1.b.wxy)), all(global0.c), any(select(select(vec3<bool>(false, global0.c.x, false), vec3<bool>(false, arg_0, false), var_1.b.zzx), vec3<bool>(var_1.b.x, var_1.c.c.x, arg_0), vec3<bool>(false, true, global0.b.x)))));
    var var_3 = ~_wgslsmith_add_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.x, 4294967295u, 4294967295u, global0.a.x) >> (vec4<u32>(var_1.c.a.x, 22142u, var_1.c.a.x, 0u) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(66508u, u_input.d, 46817u, var_1.c.a.x), vec4<u32>(var_1.c.a.x, global0.a.x, global0.a.x, 0u))), ~(~(vec4<u32>(arg_2.x, 93671u, global0.a.x, arg_2.x) | vec4<u32>(46562u, 27731u, 4294967295u, u_input.b))));
    return Struct_2(vec2<u32>(64640u, ~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(6247u, 38606u), ~24104u, var_1.c.a.x & u_input.b)), var_2.b.ywy, var_2.b);
}

fn func_1() -> vec4<bool> {
    global0 = func_2(global0.c.x, any(vec2<bool>(true, true)), global0.a);
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-492f - _wgslsmith_f_op_f32(379f * 354f)), 289f, global0.c.x && true)) * 401f), global0.c, Struct_2(global0.a, !global0.b, !(!vec4<bool>(true, global0.b.x, true, global0.c.x))));
    return !vec4<bool>(false & func_3(779f, true, Struct_1(-1000f, global0.c, vec3<bool>(var_0.b.x, false, true)), Struct_2(vec2<u32>(global0.a.x, u_input.b), var_0.b.xyx, var_0.c.c)), (~var_0.c.a.x < ~0u) || false, all(select(vec2<bool>(global0.b.x, true), !vec2<bool>(global0.b.x, var_0.c.c.x), var_0.b.zy)), global0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(global0.a, vec3<bool>(false, global0.c.x, true), vec4<bool>(global0.c.x, global0.c.x, false, true));
    var var_0 = global0.b;
    var var_1 = global0.c;
    var_0 = vec3<bool>(!(global0.a.x != 26258u), true, var_0.x && var_0.x);
    var_1 = vec4<bool>(true, var_0.x, true, false);
    var var_2 = _wgslsmith_add_vec4_i32(max(vec4<i32>(i32(-1i) * -2147483647i, u_input.e.x, ~abs(u_input.a.x), 7411i), select(vec4<i32>(-1i) * -u_input.c, u_input.c, !(!vec4<bool>(global0.c.x, true, global0.c.x, false)))), u_input.c | ~firstLeadingBit(u_input.c));
    let var_3 = Struct_3(1000f, func_1(), func_2(!((var_2.x | u_input.c.x) > _wgslsmith_sub_i32(-2147483647i, var_2.x)), true, global0.a));
    var var_4 = Struct_1(704f, !var_3.c.c, func_1().wxw);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(-1000f)));
}

