struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: bool,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_4,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, true);

var<private> global1: f32 = 1059f;

var<private> global2: vec4<bool>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2() -> f32 {
    let var_0 = ~u_input.c.x;
    let var_1 = firstTrailingBit(u_input.d);
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1309f, 130f)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-241f, -750f, 140f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1535f, 1653f, -831f)))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-652f, -1643f, 1026f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2676f, -751f, -310f) - vec3<f32>(876f, -803f, 705f))))))), -287f, !any(vec4<bool>(global0.x, select(false, global0.x, global0.x), any(vec2<bool>(false, global2.x)), any(vec4<bool>(false, global2.x, global0.x, false)))), ~u_input.b.yyw);
    var var_3 = false;
    var_3 = !all(!vec4<bool>(global2.x, !var_2.c, global2.x, global2.x));
    return -1605f;
}

fn func_3(arg_0: Struct_3) -> f32 {
    var var_0 = Struct_4(-min(~u_input.e & ~u_input.a, u_input.e), 4960i, countOneBits(~(~vec2<i32>(0i, u_input.e))) >> (vec2<u32>(u_input.c.x, 1u) % vec2<u32>(32u)), -countOneBits(~u_input.a ^ select(u_input.e, u_input.e, arg_0.b.c)), arg_0.a.b);
    var var_1 = ~arg_0.c;
    let var_2 = Struct_5(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.a.x, var_0.e, -404f))), arg_0.a.a.x, false, u_input.c), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(-2147483647i, -2147483647i), _wgslsmith_dot_vec2_i32(var_0.c, var_0.c)), u_input.a, countOneBits(u_input.e)), ~_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.b, var_0.b, -19830i), vec3<i32>(u_input.a, var_0.a, u_input.a)) & ~(-vec3<i32>(var_0.d, -1i, u_input.a))), arg_0.a, Struct_4(_wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_add_i32(19367i, -1500i), -1i), u_input.e), firstTrailingBit(firstTrailingBit(-1i)) ^ 2147483647i, vec2<i32>(u_input.e, -23124i), max(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -58266i), vec2<i32>(u_input.e, var_0.d) ^ var_0.c), var_0.a), _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.e, -837f), _wgslsmith_f_op_f32(-1221f - var_0.e))), _wgslsmith_sub_u32(u_input.c.x, 54114u) ^ ~var_1.x);
    global0 = select(!(!(!global2.yyz)), !vec3<bool>(true, any(!vec4<bool>(true, true, arg_0.b.c, false)), all(!vec2<bool>(arg_0.a.c, false))), false);
    var_0 = Struct_4(var_2.d.c.x, ~_wgslsmith_sub_i32(15006i, -1i), vec2<i32>(_wgslsmith_add_i32(2147483647i, ~(-var_0.c.x)), ~abs(-3585i)), var_0.b | ~var_0.c.x, 757f);
    return _wgslsmith_f_op_f32(f32(-1f) * -365f);
}

fn func_1(arg_0: f32, arg_1: Struct_4) -> u32 {
    var var_0 = Struct_5(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1.e, 919f, arg_1.e))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -1134f, arg_0) - vec3<f32>(-2096f, arg_0, 2092f)), true)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(475f, -690f, arg_0), vec3<f32>(258f, arg_1.e, -352f))))), _wgslsmith_f_op_f32(func_2()), any(!vec4<bool>(global2.x, false, false, global2.x)), reverseBits(~u_input.b.wxz)), ~arg_1.c.x, Struct_1(vec3<f32>(1736f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(vec3<f32>(-1649f, -1314f, arg_0), 1005f, global2.x, u_input.b.xzy), Struct_1(vec3<f32>(arg_1.e, arg_0, arg_1.e), arg_0, global0.x, vec3<u32>(28969u, 75297u, u_input.c.x)), u_input.b))) - _wgslsmith_f_op_f32(arg_1.e * arg_0)), arg_1.e), -1330f, true, abs(u_input.b.zwz)), arg_1, u_input.d);
    global0 = vec3<bool>(global0.x, var_0.a.c, true);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.e) - 1166f);
    global1 = arg_0;
    var var_1 = var_0.d;
    return _wgslsmith_mod_u32(~(~(~33234u)), var_0.a.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(u_input.b.x, ~func_1(902f, Struct_4(-u_input.e, abs(u_input.a), reverseBits(vec2<i32>(u_input.e, 35074i)), _wgslsmith_mult_i32(u_input.e, u_input.a), 143f)));
    let var_1 = select(!select(select(vec4<bool>(global0.x, true, false, true), select(vec4<bool>(false, global0.x, false, true), vec4<bool>(true, true, global2.x, global2.x), vec4<bool>(true, false, true, global0.x)), vec4<bool>(global2.x, global2.x, false, global2.x)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, global0.x, true, global2.x), vec4<bool>(global2.x, true, true, global2.x), vec4<bool>(false, false, false, false)), true), global2.x), vec4<bool>(!any(vec4<bool>(false, global0.x, global0.x, false)), true, !global0.x, any(select(!vec3<bool>(false, false, global2.x), vec3<bool>(false, global0.x, true), all(global2.wxy)))), any(vec3<bool>(global2.x, false, global2.x)));
    global0 = select(select(global2.wzz, vec3<bool>(global2.x, true, all(!vec3<bool>(true, false, global2.x))), ~(~4294967295u) > select(~u_input.c.x, _wgslsmith_add_u32(u_input.b.x, u_input.d), var_1.x)), select(global2.yxz, global2.xyz, false), true | global2.x);
    let var_2 = vec2<i32>(reverseBits(_wgslsmith_dot_vec3_i32(max(~vec3<i32>(u_input.a, u_input.a, 20344i), vec3<i32>(-26836i, u_input.a, u_input.e) & vec3<i32>(u_input.a, -5346i, -2147483647i)), firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 45904i, 1i), vec3<i32>(u_input.e, u_input.a, -2147483647i))))), 29379i);
    let var_3 = abs(abs(vec2<i32>(~62911i, u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-_wgslsmith_mod_i32(1i, -1i >> (var_0.x % 32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1093f, -1774f, -415f, -327f)))) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-943f)), _wgslsmith_f_op_f32(max(-806f, 1364f))), _wgslsmith_div_f32(-1000f, 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(492f - -1443f)), -1000f)), 2147483647i);
}

