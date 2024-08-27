struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec2<bool>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: i32,
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

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_4, arg_3: vec4<f32>) -> vec2<bool> {
    var var_0 = vec2<u32>(_wgslsmith_dot_vec4_u32(abs(firstLeadingBit(min(u_input.c, vec4<u32>(u_input.c.x, 51619u, 0u, arg_2.b.b)))), max(~u_input.c, u_input.c)), abs(~0u));
    let var_1 = false;
    var var_2 = false;
    let var_3 = var_1 && arg_2.a.x;
    let var_4 = !select(select(arg_2.b.a, ~(-59927i), arg_2.a.x) != _wgslsmith_dot_vec2_i32(vec2<i32>(-40606i, arg_0) & u_input.a, vec2<i32>(u_input.b, u_input.a.x)), any(select(!arg_2.a.xzz, vec3<bool>(false, false, false), !arg_2.a.x)), !(_wgslsmith_f_op_f32(min(arg_3.x, arg_3.x)) >= _wgslsmith_f_op_f32(-arg_3.x)));
    return select(!arg_2.a.wy, !vec2<bool>(var_4, all(select(arg_2.a, vec4<bool>(arg_2.a.x, var_1, false, true), arg_2.a))), true);
}

fn func_2() -> Struct_2 {
    return Struct_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-583f, _wgslsmith_f_op_f32(964f * -196f), _wgslsmith_f_op_f32(393f - -1006f), _wgslsmith_f_op_f32(f32(-1f) * -694f))))), Struct_1(abs(0i), ~_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.c.x, u_input.c.x)), ~u_input.c.yw), vec2<u32>(~u_input.c.x >> (u_input.c.x % 32u), 35626u)), select(select(select(func_3(-15369i, u_input.c.zzx, Struct_4(vec4<bool>(true, false, true, true), Struct_1(u_input.d, 24933u, u_input.c.xw)), vec4<f32>(599f, -891f, 166f, -1000f)), vec2<bool>(true, true), u_input.d <= u_input.a.x), func_3(-5726i, ~u_input.c.wwz, Struct_4(vec4<bool>(false, false, false, true), Struct_1(u_input.e, 44806u, u_input.c.zy)), vec4<f32>(-901f, -629f, -1513f, 1043f)), vec2<bool>(true, true)), vec2<bool>(false, (u_input.c.x != u_input.c.x) | (-21457i <= u_input.a.x)), false), ~vec2<i32>(2147483647i, -1i));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4) -> Struct_4 {
    var var_0 = vec2<i32>(arg_0.a.b.a, arg_0.a.b.a);
    var_0 = vec2<i32>(1i, -1i << (arg_0.a.b.c.x % 32u));
    var_0 = vec2<i32>(-42472i, arg_1.b.a);
    var_0 = arg_0.c.d;
    var var_1 = Struct_4(vec4<bool>((false | !arg_0.a.c.x) && true, false, any(vec3<bool>(!arg_1.a.x, true, arg_1.a.x)), true), arg_1.b);
    return arg_1;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: i32, arg_3: Struct_3) -> vec2<bool> {
    let var_0 = arg_3;
    var var_1 = !(!(!vec4<bool>(!arg_3.c.c.x, select(true, arg_3.a.c.x, arg_3.c.c.x), arg_3.c.c.x, false)));
    let var_2 = true;
    let var_3 = func_4(Struct_3(func_2(), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(757f, var_0.b.x) * vec2<f32>(arg_3.a.a.x, 353f)) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(796f, arg_3.c.a.x)))), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a.a)), func_2().b, arg_3.a.c, firstTrailingBit(~vec2<i32>(arg_0.a, -2147483647i))), -21131i), Struct_4(select(select(!vec4<bool>(arg_3.c.c.x, var_2, var_0.a.c.x, false), !vec4<bool>(var_0.a.c.x, var_2, var_0.a.c.x, true), all(vec3<bool>(var_1.x, false, var_2))), select(select(vec4<bool>(arg_3.c.c.x, var_2, true, true), vec4<bool>(var_2, false, false, var_0.c.c.x), true), vec4<bool>(false, var_2, arg_3.c.c.x, arg_3.a.c.x), select(vec4<bool>(arg_3.c.c.x, var_2, true, false), vec4<bool>(var_1.x, false, var_1.x, false), true)), !select(vec4<bool>(var_1.x, var_2, var_0.c.c.x, var_1.x), vec4<bool>(false, false, var_1.x, var_2), vec4<bool>(arg_3.a.c.x, true, var_1.x, true))), Struct_1(u_input.e, 58561u, arg_0.c)));
    var var_4 = ~vec4<u32>(arg_1.x, var_0.a.b.b, ~35579u, (~1u << ((var_3.b.c.x >> (4294967295u % 32u)) % 32u)) << (_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, arg_1.x), select(var_0.a.b.c, arg_3.c.b.c, arg_3.c.c.x)) % 32u));
    return func_4(var_0, Struct_4(var_3.a, Struct_1(1i, ~arg_3.a.b.b, ~arg_3.c.b.c))).a.ww;
}

fn func_5(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: Struct_4, arg_3: Struct_3) -> f32 {
    let var_0 = arg_2.b.c.x;
    let var_1 = Struct_2(_wgslsmith_div_vec4_f32(arg_3.c.a, _wgslsmith_f_op_vec4_f32(-arg_3.c.a)), arg_2.b, !vec2<bool>(func_1(func_2().b, _wgslsmith_add_vec3_u32(vec3<u32>(4317u, arg_3.c.b.c.x, u_input.c.x), vec3<u32>(24258u, arg_3.c.b.c.x, var_0)), ~arg_3.a.d.x, Struct_3(arg_3.c, vec2<f32>(-303f, -2755f), Struct_2(arg_3.c.a, Struct_1(16291i, 0u, u_input.c.zw), vec2<bool>(arg_3.c.c.x, arg_2.a.x), vec2<i32>(arg_3.a.d.x, -1i)), u_input.a.x)).x, true), ~u_input.a);
    let var_2 = arg_2.a;
    var var_3 = Struct_1(53515i, ~22639u, ~select(~_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.b.b, arg_3.a.b.c.x), var_1.b.c), ~u_input.c.yy | _wgslsmith_div_vec2_u32(vec2<u32>(var_1.b.c.x, 0u), vec2<u32>(31287u, 12705u)), func_4(arg_3, Struct_4(arg_2.a, Struct_1(u_input.d, arg_2.b.c.x, vec2<u32>(arg_3.c.b.b, var_0)))).a.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1302f - -1000f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(887f * -729f) - _wgslsmith_f_op_f32(select(507f, -1691f, false)))), _wgslsmith_f_op_f32(func_5(select(vec2<bool>(true, true), func_1(Struct_1(u_input.e, u_input.c.x, vec2<u32>(u_input.c.x, u_input.c.x)), u_input.c.zxx, u_input.e, Struct_3(Struct_2(vec4<f32>(376f, -2174f, -681f, 1006f), Struct_1(u_input.b, u_input.c.x, u_input.c.wy), vec2<bool>(true, false), vec2<i32>(u_input.b, u_input.b)), vec2<f32>(1608f, -995f), Struct_2(vec4<f32>(-464f, -967f, 443f, 1147f), Struct_1(u_input.b, 15664u, u_input.c.wy), vec2<bool>(true, true), vec2<i32>(-1i, 7140i)), u_input.d)), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-298f, 596f) + vec2<f32>(1807f, -196f)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(108f, -162f)))), func_4(Struct_3(Struct_2(vec4<f32>(209f, 542f, 342f, -183f), Struct_1(u_input.b, 0u, u_input.c.xz), vec2<bool>(true, false), vec2<i32>(1i, 22755i)), vec2<f32>(2835f, -993f), Struct_2(vec4<f32>(-197f, -751f, 674f, -390f), Struct_1(u_input.a.x, u_input.c.x, u_input.c.xz), vec2<bool>(true, false), vec2<i32>(u_input.d, -25137i)), u_input.a.x), func_4(Struct_3(Struct_2(vec4<f32>(-292f, 104f, 1000f, -264f), Struct_1(-1i, 4294967295u, vec2<u32>(u_input.c.x, u_input.c.x)), vec2<bool>(true, false), vec2<i32>(u_input.a.x, u_input.d)), vec2<f32>(712f, -1000f), Struct_2(vec4<f32>(-734f, -1038f, -1297f, 1318f), Struct_1(u_input.b, 4294967295u, vec2<u32>(u_input.c.x, u_input.c.x)), vec2<bool>(false, false), vec2<i32>(u_input.a.x, u_input.e)), u_input.e), Struct_4(vec4<bool>(true, true, true, false), Struct_1(u_input.d, u_input.c.x, u_input.c.zz)))), Struct_3(func_2(), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(586f, -1923f))), func_2(), 2147483647i))), _wgslsmith_f_op_f32(min(-474f, _wgslsmith_f_op_f32(ceil(-2127f))))));
    var var_1 = u_input.c;
    var_1 = ~_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(13432u, 1u, 4294967295u, 34111u), u_input.c), u_input.c), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 40044u, u_input.c.x, u_input.c.x), ~u_input.c)), _wgslsmith_clamp_vec4_u32(u_input.c, ~vec4<u32>(4294967295u, 51753u, 71442u, 4833u), _wgslsmith_mod_vec4_u32(u_input.c, u_input.c) & vec4<u32>(var_1.x, u_input.c.x, 0u, 14592u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 0i, 22392i, u_input.e), vec4<i32>(u_input.a.x, -12732i, 2147483647i, u_input.d)), min(2147483647i, u_input.e)), _wgslsmith_mod_vec3_i32(vec3<i32>(35420i, u_input.e, 1i), ~vec3<i32>(u_input.d, 0i, u_input.a.x))), ~(~vec3<i32>(-2147483647i, 2147483647i, u_input.a.x))));
}

