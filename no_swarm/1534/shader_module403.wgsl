struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 15>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> vec2<i32> {
    let var_0 = Struct_3(vec4<u32>(0u & u_input.a, ~u_input.a, u_input.a, 0u), Struct_1(arg_0.a.a), u_input.e.yy, Struct_1(all(select(global0[_wgslsmith_index_u32(14850u, 15u)], global0[_wgslsmith_index_u32(abs(u_input.d.x), 15u)], !global0[_wgslsmith_index_u32(u_input.d.x, 15u)]))));
    let var_1 = any(vec4<bool>((!var_0.b.a & (1i >= var_0.c.x)) || (true | select(arg_0.c, false, var_0.b.a)), true, -arg_0.b.x > 2147483647i, abs(u_input.a | u_input.a) <= abs(firstLeadingBit(var_0.a.x))));
    let var_2 = -1i;
    var var_3 = u_input.d.x | 17130u;
    let var_4 = ~abs(~(~_wgslsmith_mult_u32(0u, var_0.a.x)));
    return ~vec2<i32>(26422i, -_wgslsmith_clamp_i32(2147483647i, abs(u_input.c), var_2));
}

fn func_2() -> Struct_1 {
    global0 = array<vec2<bool>, 15>();
    var var_0 = Struct_2(Struct_1(!all(vec3<bool>(false, true, false))), u_input.e.zwz, all(vec4<bool>(!all(vec4<bool>(true, true, true, true)), -u_input.c == ~18077i, u_input.a > _wgslsmith_div_u32(u_input.a, 66612u), false)));
    var var_1 = u_input.d.ywy << (max(_wgslsmith_mod_vec3_u32(~u_input.d.wxx & _wgslsmith_clamp_vec3_u32(vec3<u32>(16986u, 5415u, 0u), vec3<u32>(u_input.a, u_input.a, u_input.d.x), vec3<u32>(57942u, 39113u, u_input.d.x)), ~vec3<u32>(0u, u_input.a, 0u)), u_input.d.zzz) % vec3<u32>(32u));
    let var_2 = -_wgslsmith_dot_vec2_i32(-vec2<i32>(_wgslsmith_clamp_i32(8302i, var_0.b.x, -1i), firstLeadingBit(0i)), -u_input.b.wx | select(var_0.b.zy >> (vec2<u32>(u_input.d.x, 52134u) % vec2<u32>(32u)), func_3(Struct_2(var_0.a, u_input.e.xxx, var_0.c), -387f), var_0.c || false));
    var_1 = abs(u_input.d.zww);
    return Struct_1(var_0.a.a);
}

fn func_1(arg_0: Struct_5, arg_1: vec2<u32>) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(min(-899f, _wgslsmith_f_op_f32(-250f * _wgslsmith_div_f32(712f, 620f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1586f)))))));
    var var_1 = firstTrailingBit(18683u);
    let var_2 = Struct_3(vec4<u32>(~select(17900u, u_input.a, true), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.d.x), vec2<u32>(u_input.d.x, arg_1.x)), _wgslsmith_add_vec2_u32(~vec2<u32>(arg_1.x, 1u), u_input.d.yy)), 0u, reverseBits(u_input.d.x)), func_2(), vec2<i32>(u_input.c, -1i << (arg_1.x % 32u)), Struct_1(any(!select(vec4<bool>(false, arg_0.a, arg_0.a, true), vec4<bool>(arg_0.a, true, true, true), vec4<bool>(false, arg_0.a, arg_0.a, true)))));
    var_1 = arg_1.x;
    let var_3 = Struct_3(~vec4<u32>(u_input.a, _wgslsmith_clamp_u32(u_input.a, arg_1.x, 0u) >> (arg_1.x % 32u), var_2.a.x, 1u), Struct_1(!select(arg_0.a, arg_0.a, any(vec4<bool>(false, false, var_2.b.a, false)))), countOneBits(vec2<i32>(1i, min(40535i, var_2.c.x))), var_2.d);
    return _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, _wgslsmith_div_f32(var_0.x, var_0.x), -787f) + vec3<f32>(_wgslsmith_f_op_f32(round(-247f)), -899f, 152f)), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))), _wgslsmith_f_op_f32(trunc(-1118f)))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_5) -> Struct_2 {
    let var_0 = global0[_wgslsmith_index_u32(86558u, 15u)];
    var var_1 = select(vec2<bool>(func_2().a, all(vec3<bool>(all(vec3<bool>(true, arg_2.a, arg_2.a)), var_0.x, arg_2.a || var_0.x))), vec2<bool>(var_0.x, var_0.x || false), !select(global0[_wgslsmith_index_u32(u_input.a, 15u)], select(vec2<bool>(true, false), select(global0[_wgslsmith_index_u32(u_input.a, 15u)], global0[_wgslsmith_index_u32(26407u, 15u)], vec2<bool>(var_0.x, arg_2.a)), select(global0[_wgslsmith_index_u32(4294967295u, 15u)], vec2<bool>(false, false), vec2<bool>(arg_2.a, var_0.x))), vec2<bool>(true, select(var_0.x, var_0.x, var_0.x))));
    var var_2 = Struct_3(countOneBits(firstTrailingBit(vec4<u32>(abs(0u), firstLeadingBit(34334u), u_input.a ^ u_input.d.x, _wgslsmith_div_u32(arg_1, u_input.a)))), func_2(), vec2<i32>(-15379i, reverseBits(u_input.c)), Struct_1(!arg_2.a && !(!arg_2.a)));
    let var_3 = Struct_2(Struct_1(true), select(vec3<i32>(var_2.c.x, -10564i, ~(-1i)), vec3<i32>(max(-24445i, -24752i), firstTrailingBit(min(1i, var_2.c.x)), firstTrailingBit(_wgslsmith_mult_i32(-35332i, u_input.b.x))), arg_2.a), any(!select(!vec4<bool>(false, var_2.d.a, var_2.b.a, false), vec4<bool>(false, var_2.b.a, true, true), !vec4<bool>(arg_2.a, false, var_1.x, false))));
    var_1 = vec2<bool>(var_1.x, arg_2.a);
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(func_1(Struct_5(any(vec4<bool>(false, false, false, false))), abs(u_input.d.ww))), 1u, Struct_5(true));
    var var_1 = Struct_1(true);
    let var_2 = Struct_1(var_0.a.a);
    let var_3 = Struct_4(!select(vec4<bool>(var_0.b.x <= var_0.b.x, var_1.a && var_0.a.a, !var_0.a.a, var_0.a.a), select(select(vec4<bool>(var_2.a, var_1.a, var_0.a.a, var_1.a), vec4<bool>(var_2.a, var_2.a, true, var_2.a), var_2.a), vec4<bool>(var_1.a, var_0.a.a, var_0.a.a, true), func_2().a), var_2.a));
    var var_4 = u_input.e.ywy;
    var_1 = Struct_1(all(select(vec3<bool>(true, false, var_1.a), !var_3.a.xwx, var_3.a.wzx)) || true);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_4.x, -1i), func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(247f, -371f), -134f, _wgslsmith_f_op_f32(461f * -480f))), abs(~78905u), Struct_5(true)).b.x, abs(abs((vec2<i32>(u_input.e.x, 38381i) & vec2<i32>(2147483647i, -21031i)) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.d.x), vec2<u32>(0u, u_input.d.x)) % vec2<u32>(32u)))));
}

