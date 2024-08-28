struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec2<f32>,
    c: bool,
    d: vec2<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec3<i32>, 13>;

var<private> global2: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(257f, vec4<f32>(-675f, -677f, -1000f, -370f), 856f, vec4<u32>(37622u, 85578u, 1u, 27693u)), Struct_2(875f, vec4<f32>(-1652f, 972f, 1000f, -419f), 525f, vec4<u32>(0u, 37545u, 18293u, 386u)), Struct_2(-501f, vec4<f32>(-1068f, 339f, -857f, -1458f), 1079f, vec4<u32>(31156u, 1u, 0u, 1u)), Struct_2(-1625f, vec4<f32>(1004f, -529f, 1970f, 367f), -682f, vec4<u32>(21138u, 19968u, 49979u, 1u)), Struct_2(2099f, vec4<f32>(-1149f, 320f, 1437f, 1082f), -1741f, vec4<u32>(82097u, 0u, 0u, 1291u)), Struct_2(163f, vec4<f32>(-243f, 932f, 514f, 264f), 509f, vec4<u32>(4294967295u, 59344u, 5225u, 0u)));

var<private> global3: array<u32, 20>;

var<private> global4: array<u32, 14>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>) -> u32 {
    global4 = array<u32, 14>();
    let var_0 = -_wgslsmith_sub_i32(arg_1.x, 0i);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1029f) - 919f);
    var var_2 = 418f;
    global0 = any(!(!select(select(vec2<bool>(arg_0, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(false, false), vec2<bool>(arg_0, true))));
    return firstTrailingBit(reverseBits(_wgslsmith_clamp_u32(select(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(55782u, 20u)], 20u)], 20u)], true), _wgslsmith_mod_u32(5056u, 24116u), abs(1u))) & reverseBits(~(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(35137u, 20u)], 20u)] & global3[_wgslsmith_index_u32(4294967295u, 20u)])));
}

fn func_2() -> f32 {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~123u, 37639u, global4[_wgslsmith_index_u32(1u, 14u)] << ((select(8988u, global3[_wgslsmith_index_u32(u_input.a, 20u)], false) | (u_input.e.x >> (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 20u)], 20u)] % 32u))) % 32u), func_3(true, ~vec4<i32>(u_input.d.x, u_input.d.x, u_input.b, 2147483647i)) & _wgslsmith_add_u32(global3[_wgslsmith_index_u32(u_input.c.x >> (global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(76785u, 14u)], 20u)] % 32u), 20u)], _wgslsmith_dot_vec2_u32(u_input.e.zy, vec2<u32>(4294967295u, 13694u)))), vec4<u32>(global4[_wgslsmith_index_u32(reverseBits(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(50571u, 20u)] | 4294967295u, 14u)]), 14u)] << (4294967295u % 32u), firstTrailingBit(6644u), global4[_wgslsmith_index_u32(14789u, 14u)], ~26717u)), 6u)];
    var var_1 = (547u ^ (1u << (_wgslsmith_div_u32(21239u, var_0.d.x) % 32u))) < firstLeadingBit(~u_input.c.x);
    let var_2 = Struct_3(i32(-1i) * -744i, Struct_1(_wgslsmith_f_op_vec2_f32(abs(var_0.b.wz)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1713f, var_0.a)))), vec4<i32>(-1i) * -reverseBits(vec4<i32>(u_input.d.x, 20057i, -1i, 22251i)), -1583f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-756f - _wgslsmith_f_op_f32(sign(1000f)))))));
    var var_3 = Struct_4(true, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(step(var_2.b.a.x, _wgslsmith_f_op_f32(sign(1368f)))), _wgslsmith_div_f32(var_0.b.x, -224f)))), any(vec2<bool>(true, all(vec2<bool>(false, true)))), vec2<bool>(true, true), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.d * var_0.b.x)) * var_0.c), vec4<f32>(-2485f, var_0.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b.e), var_2.b.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1083f + -517f) + _wgslsmith_f_op_f32(1408f + var_2.b.d))), 1822f, var_0.d));
    var_1 = false;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.b.e, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_2.b.e, _wgslsmith_div_f32(-946f, var_3.e.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.a.x)), 1f > _wgslsmith_div_f32(323f, var_2.b.e)))));
}

fn func_4(arg_0: vec2<f32>) -> Struct_4 {
    global0 = !((_wgslsmith_f_op_f32(arg_0.x - 615f) > arg_0.x) | all(vec2<bool>(true, true))) & (select(true, any(select(vec2<bool>(true, false), vec2<bool>(true, false), false)), select(all(vec4<bool>(false, false, true, false)), false, -45528i >= u_input.d.x)) && (!all(vec3<bool>(true, false, false)) || true));
    let var_0 = 51403u;
    var var_1 = Struct_3(abs(-27600i), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(sign(arg_0.x)), _wgslsmith_f_op_f32(475f + _wgslsmith_f_op_f32(f32(-1f) * -215f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(-1502f, arg_0.x), arg_0), vec2<f32>(arg_0.x, -170f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0 - arg_0) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-942f, arg_0.x), arg_0)))), vec4<i32>(-1i) * -reverseBits(vec4<i32>(u_input.d.x, u_input.b, u_input.d.x, u_input.b)), arg_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(576f, 353f, true)))), -138f))));
    let var_2 = vec2<f32>(354f, arg_0.x);
    let var_3 = vec2<bool>(true, true);
    return Struct_4(var_3.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(var_2, vec2<f32>(1f, 1f), any(var_3)))))), var_3.x, !vec2<bool>(true, any(select(vec3<bool>(false, true, false), vec3<bool>(var_3.x, false, var_3.x), var_3.x))), Struct_2(1413f, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1682f), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(990f, -1452f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1534f - -1217f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -567f) - _wgslsmith_f_op_f32(abs(-1000f)))), 1000f, abs(vec4<u32>(global3[_wgslsmith_index_u32(24493u, 20u)], 1u, 1u, firstLeadingBit(var_0)))));
}

fn func_1() -> Struct_3 {
    global3 = array<u32, 20>();
    var var_0 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-294f, -1535f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-334f, 3366f))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-672f, 1603f))))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -179f) + 137f), _wgslsmith_div_f32(129f, _wgslsmith_f_op_f32(func_2())))));
    var var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(var_0.e.b.x * var_0.b.x), var_0.a))), var_0.e.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.e.c, -334f))) + var_0.e.b.xx), var_0.e.b.yx) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -352f))))));
    global2 = array<Struct_2, 6>();
    var var_2 = ~_wgslsmith_add_u32(~0u, ~global3[_wgslsmith_index_u32(32077u, 20u)]);
    return Struct_3(42734i, Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.b), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b)))), -vec4<i32>(0i, u_input.d.x, u_input.d.x, 0i) >> (vec4<u32>(countOneBits(u_input.e.x), _wgslsmith_mod_u32(4294967295u, var_0.e.d.x), ~4294967295u, global4[_wgslsmith_index_u32(~u_input.a, 14u)]) % vec4<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -179f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2) -> Struct_4 {
    var var_0 = min(-_wgslsmith_dot_vec2_i32(arg_0.b.c.zx, arg_0.b.c.zx), u_input.b);
    let var_1 = -1i;
    var var_2 = -var_1;
    global2 = array<Struct_2, 6>();
    global2 = array<Struct_2, 6>();
    return func_4(arg_0.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    let var_0 = max(-max(u_input.d.x, u_input.b), u_input.b);
    var var_1 = func_5(func_1(), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(58756u, 20243u), 6u)]);
    global3 = array<u32, 20>();
    global4 = array<u32, 14>();
    var_1 = Struct_4(!var_1.d.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.b.x), var_1.b.x))), true, func_5(Struct_3(-min(1i, u_input.d.x), func_1().b), Struct_2(_wgslsmith_f_op_f32(var_1.e.a * -1000f), vec4<f32>(_wgslsmith_f_op_f32(var_1.b.x + -134f), -1045f, -922f, -517f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-335f - var_1.b.x)), ~func_4(var_1.e.b.xw).e.d)).d, func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1044f, var_1.b.x), vec2<f32>(var_1.e.a, var_1.e.c), !var_1.d)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-355f, 1060f))))).e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(~(u_input.d.xz << (firstLeadingBit(vec2<u32>(51288u, global3[_wgslsmith_index_u32(0u, 20u)])) % vec2<u32>(32u))), abs(vec2<i32>(-u_input.d.x, _wgslsmith_sub_i32(u_input.d.x, u_input.d.x)))), ~firstLeadingBit(firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, -38340i, 40931i), vec3<i32>(var_0, var_0, var_0)))), _wgslsmith_f_op_vec4_f32(-var_1.e.b), ~(((var_1.e.d & vec4<u32>(u_input.c.x, 27623u, global3[_wgslsmith_index_u32(83476u, 20u)], var_1.e.d.x)) | ~vec4<u32>(9854u, 33669u, 0u, 1u)) & (select(var_1.e.d, vec4<u32>(21414u, global3[_wgslsmith_index_u32(u_input.a, 20u)], global3[_wgslsmith_index_u32(u_input.a, 20u)], global3[_wgslsmith_index_u32(0u, 20u)]), var_1.a) | max(var_1.e.d, var_1.e.d))));
}

