struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<u32>(7109u, 0u, 29494u, 1u), Struct_1(false, vec4<i32>(-10611i, 13395i, -4610i, -22730i), vec3<u32>(86152u, 83922u, 59646u), vec3<bool>(false, false, false)), vec3<bool>(false, true, false));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1885f, 2177f, _wgslsmith_f_op_f32(select(arg_0.x, 1000f, global0.b.a)), arg_0.x) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1146f), 627f, _wgslsmith_f_op_f32(ceil(514f)), _wgslsmith_f_op_f32(sign(arg_0.x)))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, -397f, arg_0.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(859f, arg_0.x, arg_0.x, 1000f) - vec4<f32>(-923f, -1175f, 2009f, arg_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 1265f, arg_0.x, arg_0.x) + vec4<f32>(arg_0.x, arg_0.x, -178f, -342f)))))));
    let var_1 = global0.b.c;
    var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-456f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-920f, -865f)) + var_0.x), var_0.x)));
    global0 = Struct_2(firstTrailingBit(vec4<u32>(1u, _wgslsmith_clamp_u32(global0.b.c.x, 0u, _wgslsmith_mult_u32(4294967295u, var_1.x)), 1u, firstTrailingBit(abs(global0.b.c.x)))), global0.b, select(select(!(!vec3<bool>(global0.c.x, true, true)), global0.b.d, !select(vec3<bool>(global0.b.d.x, global0.b.d.x, true), vec3<bool>(false, global0.b.d.x, global0.b.d.x), global0.b.d)), global0.b.d, -1i <= (_wgslsmith_dot_vec3_i32(global0.b.b.wxy, global0.b.b.xwz) >> ((51420u & var_1.x) % 32u))));
    let var_2 = Struct_2(~_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(global0.a, global0.a), global0.a), Struct_1((any(vec3<bool>(false, global0.b.d.x, true)) || !global0.b.a) || any(global0.c.xy), global0.b.b, vec3<u32>(reverseBits(global0.a.x), 13791u, var_1.x | _wgslsmith_mult_u32(2422u, 12703u)), global0.c), select(vec3<bool>(false, true, arg_0.x >= -397f), vec3<bool>(true, !global0.c.x | false, false), !((u_input.a < u_input.a) || any(vec3<bool>(false, global0.c.x, global0.c.x)))));
    return abs(select(-(~global0.b.b.zww), global0.b.b.ywy, !vec3<bool>(true, var_2.b.a, var_2.c.x))) | -(vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.b.b.x, 42862i, 2147483647i), var_2.b.b.yxy, global0.b.b.xzx));
}

fn func_2() -> bool {
    var var_0 = vec3<bool>(any(global0.c.xy), (1i | (-10221i ^ (u_input.a ^ global0.b.b.x))) <= abs(_wgslsmith_dot_vec3_i32(func_3(vec2<f32>(634f, 357f), global0.b.b.x), select(vec3<i32>(1i, u_input.a, -2147483647i), global0.b.b.wyy, false))), true);
    let var_1 = Struct_2(_wgslsmith_mult_vec4_u32(firstLeadingBit(global0.a), vec4<u32>(~4294967295u, global0.b.c.x | global0.b.c.x, global0.a.x, _wgslsmith_mult_u32(0u, 0u))) | _wgslsmith_mult_vec4_u32(abs(vec4<u32>(17536u, global0.b.c.x, global0.a.x, global0.a.x)), select(vec4<u32>(global0.a.x, 0u, global0.b.c.x, 4294967295u), countOneBits(vec4<u32>(global0.a.x, global0.a.x, global0.b.c.x, 1u)), vec4<bool>(false, false, var_0.x, false))), Struct_1(global0.b.d.x, vec4<i32>(-5651i, 55795i, countOneBits(u_input.a), 1i), global0.a.zzx, select(!global0.c, select(vec3<bool>(true, var_0.x, true), select(vec3<bool>(true, global0.c.x, false), global0.b.d, global0.b.d.x), any(vec2<bool>(false, global0.c.x))), all(vec4<bool>(false, global0.c.x, false, var_0.x)))), vec3<bool>(true, global0.b.d.x, !any(global0.c)));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-205f, _wgslsmith_f_op_f32(f32(-1f) * -282f), _wgslsmith_f_op_f32(-781f + -230f))))), vec3<f32>(1f, 1f, 1f));
    return true && (!(_wgslsmith_f_op_f32(1380f - var_2.x) >= var_2.x) & select(var_1.c.x && true, all(vec4<bool>(true, false, var_1.b.d.x, global0.b.a)), any(vec2<bool>(false, true))));
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: vec2<u32>) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_add_vec4_u32(global0.a, ~abs(vec4<u32>(arg_2.x, global0.a.x, global0.b.c.x, global0.a.x)) ^ abs(global0.a)), Struct_1(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(global0.a, global0.a), global0.b.c.x) < abs(arg_2.x), _wgslsmith_mult_vec4_i32(vec4<i32>(abs(2609i), -u_input.a, -global0.b.b.x, -arg_1), min(global0.b.b, global0.b.b)), select(min(select(vec3<u32>(4294967295u, global0.b.c.x, 86036u), vec3<u32>(9886u, 13787u, arg_2.x), vec3<bool>(global0.c.x, true, arg_0.x)), select(global0.b.c, vec3<u32>(global0.a.x, 1u, global0.a.x), arg_0.wzy)), ~_wgslsmith_add_vec3_u32(vec3<u32>(0u, arg_2.x, global0.b.c.x), global0.a.xyw), arg_0.x), !(!(!vec3<bool>(false, global0.c.x, false)))), vec3<bool>(true, all(arg_0.xyy), func_2()));
    var var_1 = var_0.b;
    global0 = var_0;
    var var_2 = false;
    let var_3 = var_0;
    return Struct_2(~countOneBits(vec4<u32>(~var_3.a.x, reverseBits(global0.b.c.x), var_3.b.c.x, ~var_0.b.c.x)), Struct_1((max(61465u, 31345u) > _wgslsmith_dot_vec2_u32(var_0.a.wx, vec2<u32>(var_1.c.x, 0u))) & (false & all(arg_0.xy)), _wgslsmith_mod_vec4_i32(~var_0.b.b >> (vec4<u32>(4208u, 1u, global0.b.c.x, global0.a.x) % vec4<u32>(32u)), var_3.b.b), global0.b.c, vec3<bool>(true, any(vec2<bool>(false, true)), var_1.d.x)), !var_3.b.d);
}

fn func_1() -> bool {
    var var_0 = func_4(!vec4<bool>(false, func_2(), all(select(vec4<bool>(global0.c.x, global0.c.x, false, global0.b.d.x), vec4<bool>(global0.b.a, global0.b.a, global0.c.x, true), false)), false), ~(~global0.b.b.x), min(global0.a.zw, (~global0.a.zy << (select(global0.a.yz, global0.b.c.xx, true) % vec2<u32>(32u))) << (abs(vec2<u32>(77366u, 13258u)) % vec2<u32>(32u))));
    var var_1 = var_0.a.x << (25383u % 32u);
    var_1 = 4294967295u;
    global0 = func_4(select(!(!select(vec4<bool>(global0.c.x, true, true, global0.b.d.x), vec4<bool>(var_0.b.a, global0.c.x, false, global0.b.a), vec4<bool>(true, false, true, false))), !(!(!vec4<bool>(global0.c.x, true, true, global0.b.a))), vec4<bool>(all(vec2<bool>(global0.b.a, true)), var_0.b.d.x, (var_0.b.c.x | 4294967295u) >= global0.a.x, var_0.c.x)), u_input.a, vec2<u32>(var_0.b.c.x, firstTrailingBit(_wgslsmith_mult_u32(1u, 66481u))));
    var_0 = Struct_2(global0.a, global0.b, vec3<bool>(false, global0.b.d.x, -970f == _wgslsmith_f_op_f32(ceil(-313f))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = vec3<i32>(~29950i | (_wgslsmith_div_i32(abs(2147483647i), 2147483647i) | global0.b.b.x), -_wgslsmith_mult_i32(0i, -u_input.a) >> (~global0.a.x % 32u), u_input.a);
    let var_2 = global0.b;
    let var_3 = func_4(!select(vec4<bool>(false | var_2.a, true, false, global0.b.d.x), !(!vec4<bool>(global0.b.a, true, var_2.a, global0.b.d.x)), !select(vec4<bool>(true, global0.c.x, false, global0.c.x), vec4<bool>(var_2.d.x, true, global0.c.x, false), vec4<bool>(var_2.d.x, global0.c.x, true, global0.c.x))), _wgslsmith_mod_i32(reverseBits(u_input.a >> (~global0.b.c.x % 32u)), 1i), ~select(_wgslsmith_sub_vec2_u32(vec2<u32>(global0.a.x, 4294967295u), vec2<u32>(29205u, 0u)), abs(var_2.c.xx), true) << (_wgslsmith_clamp_vec2_u32(var_2.c.xz, countOneBits(var_2.c.xz), vec2<u32>(global0.b.c.x, countOneBits(98084u))) % vec2<u32>(32u)));
    let var_4 = var_2.d.x;
    var var_5 = false;
    var var_6 = -global0.b.b;
    let var_7 = ~(-var_1.xy);
    var_1 = var_3.b.b.yzx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(var_2.b.x, global0.b.b.x), ~_wgslsmith_clamp_i32(func_4(vec4<bool>(var_2.d.x, global0.c.x, true, false), abs(var_6.x), var_2.c.yy).b.b.x, u_input.a, func_4(vec4<bool>(true, true, var_2.d.x, var_3.c.x), ~(-2147483647i), _wgslsmith_add_vec2_u32(vec2<u32>(global0.b.c.x, global0.b.c.x), var_2.c.yx)).b.b.x));
}

