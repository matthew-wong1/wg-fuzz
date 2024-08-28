struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 10>;

var<private> global1: bool;

var<private> global2: array<Struct_1, 25>;

var<private> global3: array<vec2<i32>, 27> = array<vec2<i32>, 27>(vec2<i32>(-27362i, 1i), vec2<i32>(-1i, 11173i), vec2<i32>(-1i, 35485i), vec2<i32>(-909i, 4925i), vec2<i32>(i32(-2147483648), -12529i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(0i, -44372i), vec2<i32>(-22237i, -41601i), vec2<i32>(-1i, 1i), vec2<i32>(-46275i, 0i), vec2<i32>(30039i, -6252i), vec2<i32>(-1i, 54603i), vec2<i32>(-24722i, 0i), vec2<i32>(1i, -47405i), vec2<i32>(852i, 8814i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(2147483647i, -12194i), vec2<i32>(78554i, 6867i), vec2<i32>(8927i, 11694i), vec2<i32>(15122i, 2147483647i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(62145i, -6648i), vec2<i32>(49222i, -12827i), vec2<i32>(-31443i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(63326i, 2147483647i), vec2<i32>(11387i, 15100i));

var<private> global4: vec2<i32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<i32>) -> bool {
    let var_0 = select(false && all(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)))), false, !all(vec3<bool>(-19660i <= u_input.c.x, true, arg_0.x <= 2147483647i)));
    global2 = array<Struct_1, 25>();
    global1 = select(false, all(vec2<bool>(true, false)), var_0 | true);
    global3 = array<vec2<i32>, 27>();
    global1 = any(vec3<bool>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -580f))) > 481f, true, var_0));
    return false;
}

fn func_2(arg_0: bool, arg_1: u32) -> Struct_1 {
    global3 = array<vec2<i32>, 27>();
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-257f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(363f - _wgslsmith_f_op_f32(-1000f - 1262f)), _wgslsmith_f_op_f32(f32(-1f) * -783f), true)))));
    global3 = array<vec2<i32>, 27>();
    let var_1 = Struct_2(Struct_1(vec4<bool>(arg_0, all(vec3<bool>(true, arg_0, false)), all(select(vec3<bool>(true, arg_0, false), vec3<bool>(true, false, false), vec3<bool>(arg_0, arg_0, arg_0))), !func_3(vec3<i32>(-1i, -18575i, u_input.c.x)))));
    var var_2 = 403f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-471f)) - 1966f) + _wgslsmith_f_op_f32(-var_0.x));
    return var_1.a;
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> vec3<i32> {
    let var_0 = Struct_3(u_input.b >> (((~vec4<u32>(u_input.a, u_input.a, 19057u, 4294967295u) & (vec4<u32>(u_input.d.x, 1u, 0u, u_input.d.x) | u_input.b)) >> (u_input.b % vec4<u32>(32u))) % vec4<u32>(32u)), arg_1);
    var var_1 = func_2(((i32(-1i) * -34368i) | global4.x) <= global4.x, _wgslsmith_dot_vec3_u32(~(~_wgslsmith_div_vec3_u32(vec3<u32>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<u32>(var_0.a.x, 4294967295u, 82372u))), firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(118806u, 4294967295u, 1164u), u_input.b.xwy, u_input.b.zxw & vec3<u32>(21272u, var_0.a.x, 4294967295u)))));
    global1 = false;
    var var_2 = Struct_4(_wgslsmith_dot_vec2_u32(var_0.a.yy, abs(select(var_0.a.ww, _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(47806u, 55081u)), false))), Struct_1(!vec4<bool>(false, true, true, -2147483647i > global4.x)), func_2(any(select(!var_0.b.a.a.xzw, !var_0.b.a.a.wwy, u_input.b.x >= 1u)), var_0.a.x));
    var var_3 = Struct_4(~_wgslsmith_mod_u32(reverseBits(_wgslsmith_mod_u32(51045u, var_2.a)), 1u), Struct_1(select(arg_1.a.a, vec4<bool>(func_2(arg_1.a.a.x, var_0.a.x).a.x, var_0.a.x > 0u, true, true), true)), global2[_wgslsmith_index_u32(1u, 25u)]);
    return u_input.c;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_2) -> Struct_3 {
    global2 = array<Struct_1, 25>();
    global4 = vec2<i32>(u_input.c.x, u_input.c.x);
    let var_0 = vec3<i32>(firstLeadingBit(global4.x), global4.x | u_input.c.x, abs(~select(-2147483647i, _wgslsmith_sub_i32(-28823i, u_input.c.x), u_input.e >= 34610u)));
    let var_1 = global2[_wgslsmith_index_u32(2942u, 25u)];
    let var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -314f), -210f, any(arg_1.a.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-590f, 1325f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-229f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-850f, 2980f, -2762f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(788f, _wgslsmith_f_op_f32(floor(-1647f)), _wgslsmith_f_op_f32(ceil(1019f)))), arg_1.a.a.wxw)));
    return Struct_3(vec4<u32>(~4294967295u, firstLeadingBit(u_input.d.x), u_input.b.x, (~0u | u_input.d.x) | ~reverseBits(0u)), Struct_2(Struct_1(vec4<bool>(select(arg_1.a.a.x, var_1.a.x, arg_1.a.a.x), func_2(arg_1.a.a.x, 42423u).a.x, !var_1.a.x, any(vec2<bool>(arg_1.a.a.x, true))))));
}

fn func_1() -> Struct_3 {
    global2 = array<Struct_1, 25>();
    global3 = array<vec2<i32>, 27>();
    global1 = false;
    global4 = vec2<i32>(_wgslsmith_mod_i32(~max(u_input.c.x, 0i), 13288i) & global4.x, global4.x);
    let var_0 = false;
    return func_5(~func_4(var_0, Struct_2(func_2(var_0, u_input.a))), Struct_2(global2[_wgslsmith_index_u32(select(4294967295u, 0u, var_0) | ~(~u_input.a), 25u)]));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = array<vec2<f32>, 10>();
    global0 = array<vec2<f32>, 10>();
    var var_1 = Struct_1(func_1().b.a.a);
    global4 = ~global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~_wgslsmith_sub_u32(4294967295u, u_input.d.x)), ~30208u, countOneBits(var_0.a.x)), 27u)];
    let var_2 = vec4<bool>(true, var_0.b.a.a.x, select(!all(vec4<bool>(true, var_1.a.x, false, true)), all(var_0.b.a.a.zzw), !var_0.b.a.a.x), var_0.b.a.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, u_input.c.x, global4.x, global4.x), vec4<i32>(5176i, u_input.c.x, global4.x, -1i), vec4<i32>(global4.x, 2147483647i, 25302i, -1i)) & vec4<i32>(-global4.x, func_4(true, var_0.b).x, firstLeadingBit(2147483647i), u_input.c.x)), ~select(~(~vec4<u32>(var_0.a.x, 19479u, u_input.b.x, u_input.b.x)), u_input.b, vec4<bool>(var_1.a.x != var_1.a.x, func_1().b.a.a.x, true, false | var_0.b.a.a.x)), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -687f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1479f * -1000f))), all(vec3<bool>(var_0.b.a.a.x, false, var_2.x)) || (var_0.b.a.a.x & var_1.a.x)))), u_input.d.x);
}

