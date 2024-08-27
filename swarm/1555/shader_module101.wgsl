struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    var var_0 = global0.a;
    var_0 = arg_3;
    var var_1 = arg_3;
    var var_2 = Struct_2(Struct_1(select(~vec2<u32>(u_input.b, global0.a.a.x), ~vec2<u32>(31192u, 29555u) & _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.b), arg_3.a), true), vec2<bool>(u_input.c.x < -310i, any(global0.b))), global0.b);
    var var_3 = Struct_1(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(global0.a.a.x, 49701u), var_1.a), arg_2.a), ~reverseBits(vec2<u32>(var_2.a.a.x, var_1.a.x)), ~var_2.a.a), _wgslsmith_mult_vec2_u32(var_0.a, ~vec2<u32>(u_input.a.x, var_0.a.x)) << (~vec2<u32>(33657u, var_2.a.a.x) % vec2<u32>(32u))), select(var_1.b, !arg_0.zy, all(select(!var_2.b.xxx, select(vec3<bool>(true, true, false), vec3<bool>(arg_0.x, arg_3.b.x, global0.a.b.x), var_2.b.xwx), arg_0))));
    return reverseBits(-_wgslsmith_div_i32(u_input.c.x, ~1i));
}

fn func_2(arg_0: u32, arg_1: bool) -> Struct_2 {
    let var_0 = vec2<i32>(2147483647i, ~_wgslsmith_mod_i32(-2147483647i, _wgslsmith_add_i32(func_3(vec3<bool>(arg_1, global0.b.x, true), arg_1, Struct_1(vec2<u32>(arg_0, arg_0), global0.b.wz), Struct_1(global0.a.a, vec2<bool>(true, true))), -1i)));
    global0 = Struct_2(Struct_1(global0.a.a, !vec2<bool>(!arg_1, true)), vec4<bool>(true, any(select(global0.b.yy, select(vec2<bool>(true, true), global0.a.b, global0.b.xz), !global0.a.b)), true, _wgslsmith_div_u32(_wgslsmith_div_u32(1u, 71897u), ~arg_0) >= ~(global0.a.a.x ^ 1u)));
    var var_1 = Struct_2(global0.a, vec4<bool>(!all(vec2<bool>(true, true)), false, global0.a.b.x, abs(var_0.x) != -1i));
    var var_2 = -(~(-(vec4<i32>(25863i, -2147483647i, var_0.x, u_input.c.x) << (vec4<u32>(var_1.a.a.x, 1u, global0.a.a.x, 1u) % vec4<u32>(32u)))));
    let var_3 = Struct_2(Struct_1(vec2<u32>(~firstTrailingBit(u_input.b), _wgslsmith_add_u32(1u, var_1.a.a.x ^ 4294967295u)), global0.a.b), vec4<bool>(((var_1.a.b.x & arg_1) && all(var_1.b)) || true, any(!(!vec2<bool>(arg_1, arg_1))), true, any(select(var_1.b.zyz, global0.b.xww, true))));
    return Struct_2(var_1.a, select(!global0.b, !(!(!vec4<bool>(global0.a.b.x, true, false, true))), global0.b));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_2 {
    global0 = func_2(~(_wgslsmith_add_u32(1u, u_input.a.x) ^ global0.a.a.x), true);
    var var_0 = arg_0;
    var var_1 = -(~(-(vec4<i32>(0i, u_input.c.x, 0i, -34893i) ^ -vec4<i32>(u_input.c.x, -28248i, u_input.c.x, -1i))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(arg_2.x, arg_2.x)), -955f)), arg_2.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-183f - arg_2.x))))), _wgslsmith_f_op_f32(-791f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1783f))))), -1000f, arg_2.x);
    let var_3 = max(vec4<u32>(arg_0.a.a.x, _wgslsmith_div_u32(_wgslsmith_clamp_u32(~0u, _wgslsmith_dot_vec2_u32(arg_1.a, vec2<u32>(u_input.b, u_input.b)), _wgslsmith_mult_u32(66140u, 1u)), 4294967295u << (arg_0.a.a.x % 32u)), ~(~1u), var_0.a.a.x | arg_0.a.a.x), firstLeadingBit(~select(vec4<u32>(global0.a.a.x, u_input.b, arg_0.a.a.x, u_input.b), vec4<u32>(27993u, arg_0.a.a.x, arg_1.a.x, 0u), arg_0.b)) >> (select(_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(u_input.b, 27820u, 48537u, 57796u)), select(vec4<u32>(var_0.a.a.x, var_0.a.a.x, arg_0.a.a.x, 22141u), vec4<u32>(4294967295u, arg_1.a.x, 52334u, global0.a.a.x), true)), _wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(15161u, 97126u, u_input.b, 4212u)), min(vec4<u32>(0u, arg_1.a.x, var_0.a.a.x, global0.a.a.x), vec4<u32>(arg_0.a.a.x, global0.a.a.x, u_input.b, 21277u))), arg_0.b) % vec4<u32>(32u)));
    return Struct_2(Struct_1(firstTrailingBit(~vec2<u32>(17070u, u_input.b)), arg_0.a.b), func_2(_wgslsmith_mult_u32(arg_1.a.x, _wgslsmith_div_u32(arg_0.a.a.x, 0u << (arg_1.a.x % 32u))), var_0.a.b.x).b);
}

fn func_1(arg_0: i32, arg_1: f32) -> Struct_1 {
    var var_0 = func_4(func_2(u_input.b, false), global0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-592f, -928f) * vec2<f32>(arg_1, arg_1)), vec2<f32>(arg_1, 443f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1344f, arg_1) - vec2<f32>(arg_1, -117f)), vec2<f32>(317f, 484f))), vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_1)), 1f))));
    global0 = func_2(u_input.b ^ ~(~(~4294967295u)), global0.b.x);
    var var_1 = !(select(any(var_0.b.ywz), !global0.a.b.x, func_2(0u, global0.a.b.x).b.x) && var_0.b.x) || var_0.b.x;
    var var_2 = vec2<i32>(-(~11973i), arg_0);
    let var_3 = Struct_2(func_2(4294967295u, true).a, vec4<bool>(global0.a.b.x, all(vec4<bool>(true, true, false, !global0.a.b.x)), global0.b.x, false));
    return Struct_1(vec2<u32>(reverseBits(func_2(global0.a.a.x, true).a.a.x), u_input.b), var_0.a.b);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> Struct_2 {
    let var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -396f))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(max(-1000f, 428f)))), _wgslsmith_f_op_f32(-882f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(505f * -897f), _wgslsmith_f_op_f32(trunc(236f))))), _wgslsmith_f_op_f32(978f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -361f)), _wgslsmith_f_op_f32(-466f - _wgslsmith_f_op_f32(-353f - -655f))))));
    global0 = Struct_2(func_2(61373u, true).a, select(!vec4<bool>(true, !arg_0.b.x, true, func_4(Struct_2(arg_1, vec4<bool>(global0.a.b.x, arg_0.a.b.x, arg_0.a.b.x, arg_0.a.b.x)), Struct_1(vec2<u32>(1u, 34567u), vec2<bool>(true, arg_1.b.x)), vec2<f32>(-876f, 1005f)).b.x), vec4<bool>(var_0.x < -1761f, global0.a.b.x, !global0.b.x, !(!arg_0.a.b.x)), true));
    let var_1 = global0.a;
    return Struct_2(arg_1, func_4(func_4(Struct_2(arg_1, select(arg_0.b, global0.b, arg_1.b.x)), arg_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1089f, 941f), vec2<f32>(var_0.x, var_0.x), arg_1.b)) - vec2<f32>(var_0.x, -355f))), Struct_1(arg_0.a.a, func_1(_wgslsmith_dot_vec2_i32(u_input.c.xz, u_input.c.zy), -268f).b), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(var_0)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_0), _wgslsmith_f_op_vec2_f32(-var_0))), vec2<bool>(true, true)))).b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(Struct_2(func_1(2147483647i, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(365f + -1232f)))), vec4<bool>(global0.a.b.x, true, select(true, global0.b.x, all(vec2<bool>(true, global0.b.x))), !select(true, false, false))), func_1(~(-1i), -776f));
    global0 = func_5(func_5(func_4(func_2(43930u, global0.b.x), global0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1715f, 2195f)))), global0.a), global0.a);
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(sign(-584f)), _wgslsmith_f_op_f32(-744f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(481f, _wgslsmith_f_op_f32(1111f * -215f))))));
    global0 = Struct_2(Struct_1(~func_1(_wgslsmith_add_i32(u_input.c.x, u_input.c.x), var_0.x).a, func_4(func_2(~u_input.b, false), Struct_1(func_1(u_input.c.x, -274f).a, func_4(Struct_2(global0.a, vec4<bool>(global0.a.b.x, global0.a.b.x, global0.a.b.x, global0.a.b.x)), global0.a, var_0).b.zw), var_0).b.ww), vec4<bool>(global0.b.x, !all(vec4<bool>(global0.a.b.x, global0.a.b.x, global0.b.x, false)) & (_wgslsmith_f_op_f32(trunc(var_0.x)) < _wgslsmith_f_op_f32(542f - var_0.x)), true, true));
    global0 = Struct_2(global0.a, func_2(42958u, !func_5(Struct_2(global0.a, global0.b), Struct_1(vec2<u32>(global0.a.a.x, 4294967295u), vec2<bool>(true, true))).a.b.x).b);
    global0 = Struct_2(func_4(Struct_2(Struct_1(~global0.a.a, global0.b.xw), select(!vec4<bool>(false, global0.a.b.x, true, global0.a.b.x), func_4(Struct_2(global0.a, global0.b), Struct_1(vec2<u32>(global0.a.a.x, 10661u), global0.a.b), var_0).b, func_2(13880u, false).b)), func_5(func_4(Struct_2(global0.a, global0.b), func_4(Struct_2(global0.a, global0.b), global0.a, vec2<f32>(var_0.x, var_0.x)).a, var_0), global0.a).a, var_0).a, vec4<bool>(global0.b.x, func_4(func_2(~global0.a.a.x, true), func_1(0i, _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_0)), vec2<f32>(281f, -1144f))).a.b.x, true, !(!global0.a.b.x != true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, _wgslsmith_mod_u32(global0.a.a.x, _wgslsmith_mult_u32(global0.a.a.x, firstTrailingBit(8431u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_0.x, var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(trunc(-404f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))));
}

