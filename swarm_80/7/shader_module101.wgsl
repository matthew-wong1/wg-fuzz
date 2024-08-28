struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: Struct_1,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<f32>, 14>;

var<private> global2: Struct_1 = Struct_1(vec4<bool>(false, true, true, false), vec3<f32>(-845f, -272f, -2098f), 29191u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> i32 {
    var var_0 = ~vec4<i32>(3735i, ~u_input.b, _wgslsmith_sub_i32(u_input.b, _wgslsmith_add_i32(6193i, 0i)), -_wgslsmith_div_i32(u_input.c, u_input.c));
    let var_1 = Struct_3(-_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(var_0.x, -1i, -2147483647i, 7928i) << (u_input.d % vec4<u32>(32u))), vec4<i32>(48377i, _wgslsmith_mult_i32(var_0.x, -1i), u_input.c, u_input.b)));
    var var_2 = Struct_3(-var_1.a >> ((u_input.d & max(select(vec4<u32>(18281u, u_input.a.x, 22019u, global2.c), u_input.d, global2.a), u_input.d)) % vec4<u32>(32u)));
    var var_3 = ~var_1.a;
    var_2 = var_1;
    return 0i;
}

fn func_2() -> u32 {
    var var_0 = select(vec2<bool>(select(any(!global2.a.zy), all(!vec4<bool>(false, global2.a.x, false, global2.a.x)), u_input.b <= -1i), abs(_wgslsmith_mult_u32(u_input.d.x, global2.c)) != min(max(4294967295u, u_input.d.x), 66188u)), vec2<bool>(true, global2.a.x), func_3() < _wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(-2147483647i), max(u_input.b, u_input.b), u_input.b << (27977u % 32u)), -vec3<i32>(u_input.c, u_input.c, 2147483647i) >> (select(vec3<u32>(u_input.a.x, 22441u, global2.c), u_input.d.xxw, global2.a.x) % vec3<u32>(32u))));
    let var_1 = Struct_4(Struct_2(~_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, u_input.b), abs(vec2<i32>(2147483647i, u_input.b))), vec3<u32>(37175u, firstLeadingBit(66410u), firstLeadingBit(_wgslsmith_mod_u32(global2.c, 14742u))), Struct_1(vec4<bool>(true, true, true, var_0.x), vec3<f32>(-1781f, _wgslsmith_f_op_f32(249f * global2.b.x), _wgslsmith_f_op_f32(global2.b.x + global2.b.x)), u_input.d.x), u_input.d, Struct_1(!global2.a, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2.b.x, global2.b.x, -251f))))), ~(~12536u))), !(u_input.b <= 27276i));
    var_0 = var_1.a.e.a.zz;
    let var_2 = var_1.a.d;
    let var_3 = Struct_1(!var_1.a.c.a, vec3<f32>(823f, -1099f, _wgslsmith_f_op_f32(global2.b.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1820f))))), 9545u);
    return ~0u;
}

fn func_1(arg_0: vec3<f32>, arg_1: u32, arg_2: f32) -> vec3<f32> {
    global2 = Struct_1(vec4<bool>((_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.c, u_input.c), vec3<i32>(u_input.c, u_input.b, u_input.c)) >> (global2.c % 32u)) != _wgslsmith_sub_i32(_wgslsmith_sub_i32(-13876i, 0i), abs(20132i)), -select(u_input.c, u_input.b, global2.a.x) >= (countOneBits(u_input.c) ^ _wgslsmith_mod_i32(0i, 11003i)), select(_wgslsmith_div_u32(arg_1, 1u) != ~1u, global2.a.x, (-49569i < u_input.b) | global2.a.x), true), vec3<f32>(arg_2, global2.b.x, -811f), func_2());
    global2 = Struct_1(vec4<bool>(true, false, any(global2.a.yzz), global2.a.x), arg_0, ~abs(~(~arg_1)));
    global0 = select(!any(!global2.a.yww), !global2.a.x, global2.a.x);
    var var_0 = ~0u;
    let var_1 = _wgslsmith_div_i32(u_input.b, select(i32(-1i) * -firstTrailingBit(25322i), countOneBits(max(_wgslsmith_dot_vec2_i32(vec2<i32>(11965i, -36323i), vec2<i32>(u_input.b, u_input.b)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.c, -1i, u_input.b), vec4<i32>(2147483647i, 14410i, u_input.b, 0i)))), global2.a.x | !(true || global2.a.x)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1590f, arg_0.x, arg_2), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, -720f, arg_2))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(1164f)), arg_2, arg_2))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3) -> i32 {
    global1 = array<vec2<f32>, 14>();
    var var_0 = Struct_1(global2.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.x, 403f, 1000f), vec3<f32>(532f, -157f, -789f)))))), abs(global2.c) ^ u_input.d.x);
    global2 = Struct_1(global2.a, vec3<f32>(508f, global2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - 947f))), _wgslsmith_dot_vec3_u32(~select(max(vec3<u32>(var_0.c, 1u, 4294967295u), u_input.d.zww), u_input.d.yyz, false), ~vec3<u32>(~112841u, ~u_input.d.x, 56139u)));
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(11289u, var_0.c), firstLeadingBit(abs(max(1u, 1u))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.x, _wgslsmith_f_op_f32(ceil(global2.b.x)), _wgslsmith_f_op_vec3_f32(func_1(arg_0, var_0.c, var_0.b.x)).x, -255f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-598f, -691f, arg_0.x, arg_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1596f, arg_0.x, arg_0.x, arg_0.x)), false)))));
    return firstLeadingBit(28134i << (~firstTrailingBit(0u) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_vec3_f32(func_1(global2.b, 27940u, global2.b.x)), Struct_3(firstLeadingBit(-(vec4<i32>(u_input.c, u_input.c, -21491i, u_input.c) | vec4<i32>(2147483647i, u_input.b, -30725i, u_input.c)))));
    let var_1 = min(vec2<u32>(_wgslsmith_clamp_u32(~4294967295u << (_wgslsmith_mult_u32(0u, global2.c) % 32u), ~(~4294967295u), u_input.d.x), global2.c), vec2<u32>(u_input.a.x, ~0u));
    let var_2 = Struct_3(~(~vec4<i32>(u_input.b & u_input.c, u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -2147483647i, -1i, u_input.c), vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.c)), u_input.c)));
    global2 = Struct_1(!select(select(select(global2.a, vec4<bool>(global2.a.x, false, global2.a.x, true), global2.a), vec4<bool>(false, true, true, false), select(vec4<bool>(false, false, false, global2.a.x), global2.a, global2.a.x)), !vec4<bool>(true, true, global2.a.x, false), all(select(vec2<bool>(true, global2.a.x), vec2<bool>(global2.a.x, global2.a.x), vec2<bool>(false, global2.a.x)))), global2.b, _wgslsmith_dot_vec2_u32(firstTrailingBit(~var_1) & _wgslsmith_add_vec2_u32(var_1, select(vec2<u32>(49797u, 31684u), vec2<u32>(var_1.x, 1u), global2.a.x)), vec2<u32>(~1u, 1u)));
    global2 = Struct_1(!global2.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(global2.b * global2.b)))))), global2.c);
    let var_3 = Struct_1(select(vec4<bool>(global2.a.x, global2.a.x, global2.a.x != global2.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1558f) <= _wgslsmith_f_op_f32(-global2.b.x)), !vec4<bool>(var_1.x < var_1.x, true, any(vec2<bool>(global2.a.x, global2.a.x)), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.b.x)) + _wgslsmith_f_op_f32(global2.b.x + global2.b.x)) < _wgslsmith_f_op_f32(trunc(560f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b.x, -2104f, global2.b.x)), _wgslsmith_add_u32(_wgslsmith_div_u32(~var_1.x, 63234u), abs(var_1.x)));
    let var_4 = _wgslsmith_f_op_f32(abs(-1536f));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.wzw, var_2.a.zzz, abs(71806u), _wgslsmith_f_op_f32(max(-1000f, var_4)), u_input.b);
}

