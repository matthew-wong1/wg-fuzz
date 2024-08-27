struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26>;

var<private> global1: array<f32, 29>;

var<private> global2: array<Struct_3, 18>;

var<private> global3: i32 = -15960i;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = select(vec4<u32>(u_input.e.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(u_input.e, firstTrailingBit(u_input.e)), ~select(0u, 23911u, true)), ~(~u_input.e.x), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(u_input.e << (vec4<u32>(2850u, u_input.e.x, 1u, u_input.e.x) % vec4<u32>(32u)), u_input.e), ~arg_0.a << (_wgslsmith_mod_u32(arg_0.a, arg_0.a) % 32u))), vec4<u32>(0u, _wgslsmith_mult_u32(countOneBits(~79455u), min(0u, u_input.e.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(80315u, arg_0.a), vec2<u32>(40165u, _wgslsmith_mod_u32(arg_0.a, 0u))), _wgslsmith_mod_u32(u_input.e.x, ~(u_input.e.x & 95900u))), vec4<bool>(arg_0.b, arg_0.b, arg_0.b, arg_0.b));
    global1 = array<f32, 29>();
    global1 = array<f32, 29>();
    global3 = max(select(~(-1i), ~firstLeadingBit(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(u_input.e.x, 26u)], 11594i)), !any(vec2<bool>(arg_0.b, false))), ~(~_wgslsmith_dot_vec2_i32(vec2<i32>(21879i, global0[_wgslsmith_index_u32(39952u, 26u)]), u_input.d.zz)));
    global2 = array<Struct_3, 18>();
    return abs(1u);
}

fn func_2() -> Struct_1 {
    let var_0 = reverseBits(func_3(Struct_1(u_input.e.x, true)));
    return Struct_1(0u, true);
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec3_u32(u_input.e.yww, u_input.e.zww);
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1[_wgslsmith_index_u32(1u, 29u)], _wgslsmith_f_op_f32(trunc(-514f)))));
    var var_2 = abs(max(u_input.d.wxw, vec3<i32>(-(~58596i), arg_0.b.x, arg_0.b.x)));
    var_0 = vec3<u32>(58762u, 1u, 1u);
    let var_3 = vec2<i32>(abs(-abs(-2147483647i)), arg_0.b.x);
    return Struct_1(4294967295u, arg_0.a.b);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 29u)], global1[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(22663u, 29u)]), vec3<f32>(1176f, global1[_wgslsmith_index_u32(u_input.e.x, 29u)], global1[_wgslsmith_index_u32(arg_0.a, 29u)]))))))));
    var var_1 = ~36015u == arg_2.x;
    let var_2 = arg_1.a;
    let var_3 = !(firstTrailingBit(arg_0.a) >= arg_2.x);
    var var_4 = func_4(Struct_2(func_2(), var_2 ^ select(u_input.d.zw, vec2<i32>(var_2.x, 30024i), func_2().b), arg_0, Struct_1(~u_input.e.x, func_2().b), !(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)))));
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: Struct_1) -> f32 {
    let var_0 = global2[_wgslsmith_index_u32(~4294967295u, 18u)];
    var var_1 = vec2<i32>(var_0.a.x, 7899i);
    let var_2 = any(vec3<bool>(true, false, all(select(select(vec4<bool>(false, arg_3.b, arg_3.b, arg_3.b), vec4<bool>(arg_3.b, true, false, false), true), select(vec4<bool>(true, arg_0.b, arg_0.b, arg_3.b), vec4<bool>(true, arg_0.b, arg_3.b, arg_3.b), vec4<bool>(arg_3.b, true, arg_3.b, false)), !vec4<bool>(arg_0.b, arg_3.b, arg_3.b, true)))));
    let var_3 = Struct_2(Struct_1(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.a, arg_0.a, 1u), ~u_input.e.zxw), ~_wgslsmith_dot_vec4_u32(u_input.e, u_input.e)), true), select(vec2<i32>(0i, ~0i) & vec2<i32>(arg_2.a.x, ~1i), -min(firstTrailingBit(arg_1.zz), arg_1.zy), vec2<bool>(!var_2, false)), arg_0, Struct_1(1u, 2147483647i < ~(-var_1.x)), !select(!(!vec2<bool>(false, arg_3.b)), !select(vec2<bool>(true, true), vec2<bool>(arg_0.b, true), var_2), vec2<bool>(!var_2, true)));
    let var_4 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-391f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0.a, 29u)]), 953f)))));
    return var_4.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = (u_input.d.x ^ (_wgslsmith_mult_i32(-5056i, ~22490i) << (_wgslsmith_clamp_u32(56792u, 0u, u_input.e.x) % 32u))) << (u_input.e.x % 32u);
    global3 = -18790i;
    let var_0 = vec3<f32>(global1[_wgslsmith_index_u32(firstTrailingBit(u_input.e.x), 29u)], _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 29u)]), _wgslsmith_f_op_f32(max(-850f, _wgslsmith_f_op_f32(f32(-1f) * -316f)))), _wgslsmith_f_op_f32(trunc(1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(func_1(Struct_1(34248u, true), global2[_wgslsmith_index_u32(~30761u, 18u)], ~vec2<u32>(0u, u_input.e.x)), u_input.d.zwz, global2[_wgslsmith_index_u32(u_input.e.x, 18u)], func_4(Struct_2(Struct_1(2646u, true), vec2<i32>(global0[_wgslsmith_index_u32(u_input.e.x, 26u)], u_input.d.x), Struct_1(u_input.e.x, true), Struct_1(32941u, false), vec2<bool>(true, true))))) * -807f));
    var var_1 = 28051u;
    let var_2 = -global0[_wgslsmith_index_u32(~64448u, 26u)] & 1i;
    var_1 = 36826u;
    let var_3 = Struct_1(_wgslsmith_mod_u32(~(~4697u), u_input.e.x), select(true, !(u_input.e.x >= func_4(Struct_2(Struct_1(u_input.e.x, false), u_input.c.xw, Struct_1(u_input.e.x, false), Struct_1(u_input.e.x, true), vec2<bool>(false, true))).a), any(vec3<bool>(true, true, true)) & true));
    let x = u_input.a;
    s_output = StorageBuffer(-reverseBits(vec4<i32>(2147483647i, 9874i, reverseBits(u_input.b), _wgslsmith_div_i32(-25099i, 31305i))), ~(_wgslsmith_mod_i32(var_2, 15968i) | min(reverseBits(-1i), 2147483647i)));
}

