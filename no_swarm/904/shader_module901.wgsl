struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: i32,
    e: vec2<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<bool>,
    c: f32,
    d: bool,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 4294967295u, 0u, 1u);

var<private> global1: bool;

var<private> global2: array<Struct_5, 5> = array<Struct_5, 5>(Struct_5(Struct_4(1640u, -127f, vec3<u32>(33328u, 97150u, 4294967295u), i32(-2147483648), vec2<bool>(true, true)), vec3<bool>(true, true, false), 592f, false, vec2<i32>(i32(-2147483648), -1i)), Struct_5(Struct_4(74850u, -479f, vec3<u32>(4294967295u, 4294967295u, 0u), 49714i, vec2<bool>(false, true)), vec3<bool>(false, true, false), -1129f, false, vec2<i32>(2147483647i, 41079i)), Struct_5(Struct_4(122749u, -699f, vec3<u32>(4294967295u, 1u, 1u), 22952i, vec2<bool>(false, false)), vec3<bool>(true, false, true), 1853f, false, vec2<i32>(-71716i, -2048i)), Struct_5(Struct_4(0u, -1000f, vec3<u32>(755u, 21456u, 34488u), 45538i, vec2<bool>(false, false)), vec3<bool>(false, false, false), -1032f, false, vec2<i32>(1i, 6946i)), Struct_5(Struct_4(33411u, -336f, vec3<u32>(0u, 0u, 32745u), -3148i, vec2<bool>(false, false)), vec3<bool>(false, false, false), -1000f, false, vec2<i32>(-68945i, 1i)));

var<private> global3: Struct_1;

var<private> global4: Struct_3 = Struct_3(Struct_1(vec3<f32>(1505f, 506f, -1360f), false, vec2<f32>(-1000f, -1347f)), Struct_2(Struct_1(vec3<f32>(-775f, 4199f, 2436f), true, vec2<f32>(527f, 928f))));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: f32, arg_3: Struct_5) -> bool {
    let var_0 = global4.a;
    var var_1 = select(vec2<bool>(any(!arg_3.b) & any(vec3<bool>(var_0.b, arg_3.d, false)), all(vec4<bool>(arg_3.b.x || arg_3.d, true, true, true))), !select(select(vec2<bool>(var_0.b, true), arg_3.a.e, arg_3.a.c.x <= 1u), arg_3.a.e, vec2<bool>(true, var_0.b & arg_3.b.x)), select(all(vec2<bool>(!global3.b, false)), arg_1, all(arg_3.b.xx)));
    let var_2 = all(vec4<bool>(false, any(vec4<bool>(true, true, true, true)) || !(arg_3.a.b >= -1000f), true, global4.b.a.b));
    global3 = global4.b.a;
    let var_3 = 3757u;
    return true;
}

fn func_2(arg_0: u32, arg_1: vec4<i32>) -> bool {
    global1 = select(global4.b.a.b, !((global3.a.x >= -521f) | false), all(vec3<bool>(global4.b.a.b, all(!vec2<bool>(global3.b, false)), select(func_3(-232f, global3.b, -532f, Struct_5(Struct_4(1u, 421f, global0.wyw, arg_1.x, vec2<bool>(global3.b, true)), vec3<bool>(false, global4.b.a.b, false), 1160f, true, arg_1.wy)), global0.x <= u_input.a, any(vec4<bool>(global3.b, global4.b.a.b, global3.b, false))))));
    global1 = !(_wgslsmith_f_op_f32(-global4.a.c.x) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.a.a.x - global4.a.a.x))));
    var var_0 = global4.a.a.x;
    global1 = !global3.b;
    global2 = array<Struct_5, 5>();
    return global3.b != select(all(!select(vec2<bool>(true, global3.b), vec2<bool>(global4.b.a.b, true), global3.b)), !global4.b.a.b, true);
}

fn func_1() -> vec3<i32> {
    let var_0 = !(!vec3<bool>(true, func_2(4294967295u, vec4<i32>(1i, 1i, 1i, 1i)), select(global4.a.b, global4.a.b, true) != !global4.a.b));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.a), global3.a))));
    var var_2 = Struct_4(0u, global3.a.x, vec3<u32>(_wgslsmith_dot_vec2_u32(reverseBits(min(u_input.c.zz, vec2<u32>(24580u, 0u))), global0.xy & vec2<u32>(global0.x, 42654u)), 12239u, abs(global0.x)), -64327i, !vec2<bool>(global4.a.b, true));
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_mult_u32(10163u, 1u), 4294967295u, 1u), ~(vec4<u32>(global0.x, 0u, var_2.a, var_2.c.x) ^ vec4<u32>(1u, 42762u, 51473u, u_input.c.x))), _wgslsmith_div_u32(~var_2.a, _wgslsmith_sub_u32(~37094u, global0.x))) | (max(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 4294967295u, 12070u), global0.xwz), _wgslsmith_clamp_u32(u_input.b, global0.x, 10161u)), u_input.a | _wgslsmith_div_u32(4294967295u, u_input.b)) >> (0u % 32u)), 5u)];
    var_2 = var_3.a;
    return _wgslsmith_clamp_vec3_i32(reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_3.a.d, var_2.d, 1i) | vec3<i32>(var_3.a.d, var_3.e.x, var_3.a.d), vec3<i32>(18112i, var_3.e.x, -2147483647i), abs(vec3<i32>(var_2.d, var_3.a.d, -8411i)))) >> (_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(firstLeadingBit(var_3.a.c), vec3<u32>(global0.x, global0.x, 17508u)), vec3<u32>(_wgslsmith_div_u32(var_2.c.x, var_3.a.c.x), max(18207u, var_3.a.a), ~var_2.a)) % vec3<u32>(32u)), abs(~vec3<i32>(var_3.a.d, -1i, 14036i) >> (vec3<u32>(4294967295u, var_3.a.a, 119579u) % vec3<u32>(32u))) << (vec3<u32>(max(select(u_input.b, var_2.c.x, false), max(4889u, var_2.a)), ~_wgslsmith_mod_u32(33685u, var_3.a.a), max(var_2.a, 0u)) % vec3<u32>(32u)), vec3<i32>(reverseBits(-1i), var_3.e.x, _wgslsmith_clamp_i32(-15765i, _wgslsmith_div_i32(var_3.e.x, var_2.d), _wgslsmith_add_i32(var_3.a.d, 8466i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(_wgslsmith_add_vec3_i32(func_1(), firstTrailingBit(vec3<i32>(_wgslsmith_mod_i32(0i, 8521i), -23888i, ~69447i))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.ww);
}

