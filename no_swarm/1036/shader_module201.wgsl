struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(Struct_1(false), vec4<u32>(1u, 0u, 1u, 41336u), false), Struct_2(Struct_1(true), vec4<u32>(50850u, 1u, 4294967295u, 92299u), true), Struct_2(Struct_1(true), vec4<u32>(4294967295u, 0u, 1u, 4294967295u), true), Struct_2(Struct_1(false), vec4<u32>(63u, 27246u, 23788u, 7757u), false), Struct_2(Struct_1(true), vec4<u32>(4294967295u, 4294967295u, 52271u, 7797u), true), Struct_2(Struct_1(true), vec4<u32>(1u, 4294967295u, 8900u, 32871u), false), Struct_2(Struct_1(false), vec4<u32>(0u, 1u, 21100u, 1u), false), Struct_2(Struct_1(true), vec4<u32>(0u, 39708u, 29065u, 51633u), false), Struct_2(Struct_1(true), vec4<u32>(12406u, 4294967295u, 0u, 0u), false), Struct_2(Struct_1(false), vec4<u32>(26008u, 4294967295u, 75036u, 1u), false), Struct_2(Struct_1(false), vec4<u32>(4294967295u, 1u, 1u, 1u), false), Struct_2(Struct_1(false), vec4<u32>(87619u, 22726u, 0u, 49452u), false), Struct_2(Struct_1(false), vec4<u32>(1u, 0u, 4051u, 0u), false), Struct_2(Struct_1(true), vec4<u32>(32339u, 70902u, 55949u, 5360u), false), Struct_2(Struct_1(false), vec4<u32>(44968u, 27554u, 4294967295u, 9849u), false), Struct_2(Struct_1(true), vec4<u32>(106856u, 4294967295u, 4294967295u, 40445u), true), Struct_2(Struct_1(false), vec4<u32>(4294967295u, 4294967295u, 53400u, 1u), true), Struct_2(Struct_1(true), vec4<u32>(4294967295u, 32094u, 0u, 65726u), false));

var<private> global1: f32 = -1518f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: Struct_3) -> f32 {
    let var_0 = ~arg_0.b.b.xww;
    global1 = arg_0.a.x;
    global0 = array<Struct_2, 18>();
    let var_1 = var_0;
    global1 = _wgslsmith_f_op_f32(-697f - arg_0.a.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -473f)))) - arg_0.a.x);
}

fn func_2() -> vec3<u32> {
    let var_0 = ~(-22233i);
    let var_1 = Struct_1(!any(vec2<bool>(true, true)));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-408f)), _wgslsmith_f_op_f32(247f - _wgslsmith_f_op_f32(-1303f + -931f))));
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(489f, 1608f))), 1f)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -257f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(2148f, -1577f, var_1.a))))))));
    let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_2)))), global0[_wgslsmith_index_u32(4294967295u, 18u)], u_input.a);
    return vec3<u32>(0u | _wgslsmith_mult_u32(_wgslsmith_sub_u32(~53340u, min(var_3.c, 53077u)), 8696u), 1u, ~min(~u_input.a, ~73256u));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: f32, arg_3: vec2<bool>) -> vec3<u32> {
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2))), arg_2);
    global0 = array<Struct_2, 18>();
    global0 = array<Struct_2, 18>();
    let var_0 = Struct_2(Struct_1(true), min(vec4<u32>(~6947u, firstTrailingBit(_wgslsmith_mod_u32(arg_1.b.x, arg_1.b.x)), arg_1.b.x, abs(4294967295u)), countOneBits(vec4<u32>(1u, u_input.a, abs(u_input.a), arg_1.b.x))), !arg_1.a.a);
    let var_1 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(644f, 1127f)))) * -482f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2)))), arg_1, abs(~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.a, 4294967295u, u_input.b.x), ~arg_1.b.x)));
    return select(~(~_wgslsmith_div_vec3_u32(vec3<u32>(var_1.b.b.x, 35161u, 33517u), vec3<u32>(var_0.b.x, 1u, arg_1.b.x)) | ((vec3<u32>(u_input.b.x, u_input.a, var_1.b.b.x) ^ vec3<u32>(68998u, u_input.b.x, arg_1.b.x)) ^ arg_1.b.wyy)), select(~var_0.b.xyy, vec3<u32>(_wgslsmith_div_u32(~arg_1.b.x, var_1.b.b.x), select(9277u, ~13644u, true), _wgslsmith_div_u32(var_1.c, 4294967295u)), arg_3.x), var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(func_1(Struct_3(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(564f, 865f)))), global0[_wgslsmith_index_u32(1u, 18u)], _wgslsmith_clamp_u32(u_input.a, ~u_input.a, abs(0u)) & u_input.a)));
    global0 = array<Struct_2, 18>();
    var var_0 = _wgslsmith_clamp_vec3_i32(-u_input.d.ywz >> (_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(func_2(), abs(vec3<u32>(u_input.b.x, 2133u, u_input.b.x))), ~func_3(false, Struct_2(Struct_1(true), vec4<u32>(u_input.b.x, 17692u, 29788u, u_input.a), false), 376f, vec2<bool>(true, false))) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(firstTrailingBit(firstTrailingBit(~u_input.c)), _wgslsmith_clamp_vec3_i32((u_input.d.wzy & vec3<i32>(1i, 46566i, u_input.c.x)) | firstTrailingBit(u_input.d.yyy), select(u_input.d.yyx, -u_input.d.wyz, 99364u <= u_input.a), u_input.c)), select(u_input.c, countOneBits(u_input.d.zxx), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))));
    var_0 = -vec3<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.c.x, 27102i, 2147483647i), u_input.c), (var_0.x | min(var_0.x, -2147483647i)) ^ ~(var_0.x & var_0.x), max(-52292i, firstTrailingBit(14024i)));
    let var_1 = Struct_4((-select(vec2<i32>(u_input.d.x, u_input.c.x), var_0.yy, vec2<bool>(false, false)) >> (~(~u_input.b) % vec2<u32>(32u))) & min(-vec2<i32>(1i, var_0.x), vec2<i32>(-var_0.x, u_input.d.x)));
    let var_2 = select(select(select(vec2<bool>(any(vec2<bool>(false, true)), all(vec4<bool>(true, false, false, true))), vec2<bool>(false, all(vec2<bool>(false, true))), vec2<bool>(true, true)), select(select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false)), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true)), vec2<bool>(true, 78659u >= u_input.a)), false), vec2<bool>(true, true), !select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true)), vec2<bool>(true, true), true));
    let var_3 = vec3<bool>(!(max(select(u_input.d.x, var_1.a.x, var_2.x), ~var_1.a.x) != _wgslsmith_mod_i32(var_0.x >> (u_input.b.x % 32u), var_1.a.x)), true, false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-409f - _wgslsmith_f_op_f32(round(124f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_3(vec2<f32>(-1184f, -437f), Struct_2(Struct_1(var_3.x), vec4<u32>(u_input.a, 23131u, 4294967295u, 5549u), var_3.x), 48546u))) - 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1354f * 1324f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-364f * 1230f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1943f))))), 27657u);
}

