struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: vec4<i32>,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: Struct_2;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1() -> Struct_1 {
    return Struct_1(u_input.c.wxx, _wgslsmith_mod_u32(abs(global1.d.b), ~_wgslsmith_clamp_u32(~u_input.b.x, global1.a.x, _wgslsmith_div_u32(u_input.b.x, u_input.e.x))));
}

fn func_3(arg_0: f32) -> bool {
    return true;
}

fn func_2() -> vec2<bool> {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(463f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -565f)) * _wgslsmith_f_op_f32(select(-1156f, 1810f, any(vec3<bool>(true, true, global1.b))))))), Struct_1(~select(_wgslsmith_add_vec3_i32(vec3<i32>(global0.x, u_input.d.x, global0.x), global0.yxz), global0.wzz ^ u_input.c.wwy, any(vec2<bool>(false, false))), 32002u), !vec2<bool>(func_3(1914f), global1.b));
    var var_1 = _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(~(~vec2<u32>(4294967295u, 0u)), ~min(global1.a, global1.a)), abs(firstTrailingBit(vec2<u32>(var_0.b.b, 22335u) << (u_input.e.xx % vec2<u32>(32u))))), u_input.b.yz);
    var var_2 = global1.b;
    var var_3 = 30152u;
    var var_4 = Struct_1(_wgslsmith_sub_vec3_i32(-(~vec3<i32>(-26041i, u_input.d.x, global0.x) >> (~u_input.e.xyx % vec3<u32>(32u))), u_input.c.zyw), 4294967295u);
    return select(vec2<bool>(true, true), var_0.c, var_0.c);
}

fn func_4(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: Struct_3) -> Struct_2 {
    global1 = arg_2;
    global0 = select(u_input.c, reverseBits(select(vec4<i32>(u_input.c.x, _wgslsmith_add_i32(arg_3.b.a.x, 11600i), _wgslsmith_div_i32(arg_3.b.a.x, arg_2.d.a.x), _wgslsmith_div_i32(-34243i, global0.x)), vec4<i32>(-arg_2.c.x, ~8222i, u_input.c.x, ~(-2147483647i)), func_3(_wgslsmith_f_op_f32(select(arg_3.a, arg_3.a, arg_3.c.x))))), any(!vec3<bool>(any(vec2<bool>(arg_0, global1.b)), select(false, true, true), true || global1.b)));
    global1 = Struct_2(countOneBits(vec2<u32>((global1.d.b << (arg_3.b.b % 32u)) | ~global1.a.x, ~_wgslsmith_div_u32(arg_1.x, 872u))), true, vec4<i32>(45890i, global0.x, _wgslsmith_add_i32(global0.x, abs(countOneBits(-25168i))), firstTrailingBit(~(63816i >> (u_input.e.x % 32u)))), global1.d, u_input.d);
    global0 = global1.c;
    global0 = _wgslsmith_div_vec4_i32(global1.e << (vec4<u32>(0u, 16815u, ~0u, ~arg_1.x) % vec4<u32>(32u)), vec4<i32>(8871i, (~u_input.c.x & 1i) >> (1u % 32u), ~_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(arg_2.d.a.xy, arg_2.c.wx), arg_2.d.a.xz), ~reverseBits(_wgslsmith_clamp_i32(u_input.d.x, global0.x, global0.x))));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(~_wgslsmith_mod_u32(global1.d.b, reverseBits(~18592u)), (_wgslsmith_sub_u32(global1.a.x, firstLeadingBit(4294967295u)) ^ 1u) & u_input.e.x, 4294967295u);
    var var_1 = -vec4<i32>(2147483647i, u_input.c.x << (4294967295u % 32u), -1i, -_wgslsmith_div_i32(~global1.e.x, _wgslsmith_mod_i32(-1i, -2147483647i)));
    var_1 = firstTrailingBit(select(global1.c, global1.c, global1.b));
    global1 = func_4(false, vec2<u32>(17587u, global1.a.x), Struct_2((vec2<u32>(var_0.x, 4294967295u) & (var_0.yz & global1.a)) ^ vec2<u32>(var_0.x, 21684u), true, global1.e << (u_input.e % vec4<u32>(32u)), Struct_1(_wgslsmith_add_vec3_i32(global0.wxw, _wgslsmith_clamp_vec3_i32(global1.e.ywz, global1.c.zyx, vec3<i32>(1i, global1.c.x, global0.x))), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.e.yw, vec2<u32>(1u, 4294967295u)), 0u >> (u_input.e.x % 32u))), vec4<i32>(select(global1.d.a.x, _wgslsmith_mod_i32(var_1.x, -18548i), !global1.b), 9187i, var_1.x, -(-29022i | u_input.d.x))), Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(164f, 1077f) - -216f), -1000f)), func_1(), select(select(select(vec2<bool>(true, global1.b), vec2<bool>(false, global1.b), true), vec2<bool>(true, true), !vec2<bool>(global1.b, true)), func_2(), !global1.b)));
    global1 = func_4(true, global1.a, func_4(true, select(vec2<u32>(firstLeadingBit(25068u), 6003u), u_input.b.yx, false), Struct_2(firstLeadingBit(~vec2<u32>(global1.d.b, 1u)), true && !global1.b, select(_wgslsmith_mult_vec4_i32(global1.c, u_input.c), vec4<i32>(global0.x, u_input.c.x, -5921i, global0.x), select(vec4<bool>(false, global1.b, global1.b, true), vec4<bool>(false, true, true, global1.b), true)), func_4(global1.b || true, firstTrailingBit(vec2<u32>(u_input.e.x, 64590u)), Struct_2(vec2<u32>(var_0.x, var_0.x), false, vec4<i32>(-2147483647i, 17667i, 28938i, global0.x), global1.d, vec4<i32>(global0.x, -1i, global1.e.x, global0.x)), Struct_3(787f, global1.d, vec2<bool>(global1.b, true))).d, countOneBits(vec4<i32>(33194i, 54416i, u_input.c.x, 2147483647i))), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2388f) + _wgslsmith_f_op_f32(step(-1232f, -1206f))), Struct_1(vec3<i32>(var_1.x, u_input.c.x, -2147483647i), u_input.e.x), !vec2<bool>(true, global1.b))), Struct_3(-716f, func_4(true, select(vec2<u32>(u_input.b.x, 4294967295u), vec2<u32>(1u, u_input.e.x), true), func_4(var_1.x == var_1.x, countOneBits(vec2<u32>(u_input.a, global1.d.b)), Struct_2(global1.a, global1.b, u_input.c, Struct_1(vec3<i32>(var_1.x, global0.x, u_input.c.x), 1u), u_input.c), Struct_3(-839f, Struct_1(vec3<i32>(global1.d.a.x, global0.x, var_1.x), 27231u), vec2<bool>(true, global1.b))), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -645f), func_1(), !vec2<bool>(global1.b, false))).d, vec2<bool>(select(global1.b, true, !global1.b), firstLeadingBit(23526i) <= global1.d.a.x)));
    var var_2 = false;
    global1 = func_4(true, _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(~abs(var_0.yx), ~(~vec2<u32>(1u, 1u))), vec2<u32>(global1.a.x, global1.d.b >> (global1.a.x % 32u))), func_4(_wgslsmith_f_op_f32(sign(258f)) != -1099f, vec2<u32>(4294967295u, 29694u), Struct_2(select(vec2<u32>(var_0.x, 133448u), global1.a, any(vec3<bool>(global1.b, false, global1.b))), global1.b, ~vec4<i32>(-39285i, global0.x, u_input.c.x, u_input.d.x) ^ u_input.d, func_1(), countOneBits(abs(vec4<i32>(var_1.x, global1.c.x, global0.x, -1i)))), Struct_3(-1046f, global1.d, vec2<bool>(global1.b, global1.b || global1.b))), Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(543f - 117f) + 1000f))), func_1(), select(vec2<bool>(global1.a.x != u_input.b.x, !global1.b), vec2<bool>(true, true), !(global1.b | global1.b))));
    var_2 = global1.b;
    var var_3 = -37536i;
    let x = u_input.a;
    s_output = StorageBuffer(-(~(~53967i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1054f, -277f, 430f, 377f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(847f, -608f, 1080f, 328f))))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(238f, 414f, 404f, -660f))))))), _wgslsmith_f_op_f32(abs(-1000f)));
}

