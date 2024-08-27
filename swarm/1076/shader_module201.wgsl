struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec2<bool>,
    d: u32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: Struct_2,
    d: i32,
    e: vec3<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_1 = Struct_1(vec4<bool>(false, false, true, true), vec3<u32>(1u, 4294967295u, 1u), vec2<bool>(false, true), 43473u, vec4<i32>(-6468i, 51552i, -1i, i32(-2147483648)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_2) -> bool {
    return all(vec3<bool>(any(!vec3<bool>(true, false, arg_1.c.a.c.x)) && all(vec2<bool>(arg_1.d.a.a.x, arg_0.a.c.x)), -select(arg_0.a.e.x, arg_0.a.e.x, true) != _wgslsmith_sub_i32(arg_0.a.e.x >> (4294967295u % 32u), _wgslsmith_mult_i32(global1.e.x, -2147483647i)), true));
}

fn func_2() -> u32 {
    global1 = Struct_1(vec4<bool>(any(vec2<bool>(true, true)) || (_wgslsmith_f_op_f32(1789f + 351f) > _wgslsmith_f_op_f32(floor(-339f))), global1.a.x, global1.a.x, !func_3(Struct_2(Struct_1(vec4<bool>(false, false, global1.a.x, global1.c.x), global1.b, global1.a.xz, global0.x, vec4<i32>(global1.e.x, global1.e.x, 0i, 62975i))), Struct_3(-2530f, -909f, Struct_2(Struct_1(vec4<bool>(global1.a.x, false, false, false), global1.b, vec2<bool>(false, true), 1u, global1.e)), Struct_2(Struct_1(vec4<bool>(true, true, false, global1.a.x), vec3<u32>(global1.d, global0.x, global1.b.x), global1.a.wx, global0.x, vec4<i32>(global1.e.x, 1191i, 22579i, -34014i)))), Struct_2(Struct_1(vec4<bool>(global1.c.x, global1.c.x, global1.a.x, global1.c.x), vec3<u32>(4294967295u, 74571u, global1.b.x), vec2<bool>(global1.c.x, global1.a.x), global0.x, vec4<i32>(global1.e.x, global1.e.x, -43417i, global1.e.x))))), global1.b, select(!vec2<bool>(!global1.a.x, global1.a.x), !(!vec2<bool>(false, global1.a.x)), true), global0.x, ~(~min(firstLeadingBit(vec4<i32>(18927i, -1i, 18379i, global1.e.x)), global1.e)));
    global0 = ~_wgslsmith_mult_vec3_u32(global1.b, ~abs(_wgslsmith_add_vec3_u32(vec3<u32>(global0.x, u_input.a.x, 52237u), global1.b)));
    global1 = Struct_1(!global1.a, vec3<u32>(global1.d, ~(~global0.x), 0u), select(!global1.c, vec2<bool>(!any(global1.a.zxy), any(global1.a.yw)), vec2<bool>(true | global1.a.x, _wgslsmith_mod_i32(global1.e.x, 0i) < (global1.e.x & 0i))), 4294967295u, min(global1.e, vec4<i32>(35881i, (global1.e.x >> (54190u % 32u)) & firstTrailingBit(2147483647i), firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.e.x, global1.e.x), global1.e.zx)), ~_wgslsmith_sub_i32(-40460i, 14615i))));
    let var_0 = false;
    let var_1 = 1000f;
    return ~(~0u);
}

fn func_1() -> Struct_2 {
    global1 = Struct_1(vec4<bool>(true, false, 3032i > _wgslsmith_dot_vec4_i32(-global1.e, vec4<i32>(global1.e.x, global1.e.x, global1.e.x, -2147483647i)), global1.c.x), vec3<u32>(~_wgslsmith_clamp_u32(1u, firstLeadingBit(global0.x), _wgslsmith_mod_u32(global1.b.x, 4294967295u)), 4632u, ~reverseBits(global0.x) | global1.d), vec2<bool>(true, true), ~(~global1.b.x), global1.e);
    let var_0 = vec4<u32>(func_2(), ~_wgslsmith_sub_u32(~min(global1.d, global1.d), ~firstLeadingBit(global0.x)), global0.x, 4294967295u);
    let var_1 = !select(select(!(!global1.c), select(!global1.c, global1.c, false), !global1.a.x), vec2<bool>(any(!vec4<bool>(global1.c.x, false, false, global1.a.x)), true), vec2<bool>(func_3(Struct_2(Struct_1(global1.a, vec3<u32>(var_0.x, u_input.a.x, 41172u), global1.c, u_input.a.x, global1.e)), Struct_3(1212f, -1063f, Struct_2(Struct_1(vec4<bool>(global1.a.x, true, global1.c.x, global1.a.x), global1.b, global1.a.yw, 1u, vec4<i32>(0i, 30731i, -57098i, global1.e.x))), Struct_2(Struct_1(global1.a, var_0.xzz, global1.c, global0.x, vec4<i32>(global1.e.x, global1.e.x, global1.e.x, global1.e.x)))), Struct_2(Struct_1(global1.a, global1.b, vec2<bool>(false, true), var_0.x, vec4<i32>(global1.e.x, 1i, global1.e.x, -25145i)))), true));
    global1 = Struct_1(!vec4<bool>(!(true || global1.a.x), !global1.c.x, var_1.x, true), ~global1.b, select(!(!vec2<bool>(global1.c.x, true)), vec2<bool>(_wgslsmith_mod_u32(u_input.a.x, global0.x) != _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global0.x, u_input.a.x, 35810u), vec4<u32>(u_input.a.x, var_0.x, global0.x, 55496u)), true), !select(select(var_1, vec2<bool>(false, true), var_1.x), vec2<bool>(true, global1.c.x), !vec2<bool>(global1.c.x, global1.c.x))), u_input.a.x, -global1.e);
    let var_2 = 315f;
    return Struct_2(Struct_1(vec4<bool>(var_1.x, true, global1.a.x, any(!global1.a.zxz)), ~vec3<u32>(~1u, _wgslsmith_sub_u32(7283u, global1.d), ~23630u), var_1, ~global1.d, vec4<i32>(_wgslsmith_sub_i32(global1.e.x, abs(-12386i)), _wgslsmith_clamp_i32(2147483647i, max(6218i, global1.e.x), global1.e.x), 3936i, global1.e.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(max(global1.e, vec4<i32>(max(_wgslsmith_sub_i32(global1.e.x, global1.e.x), 60043i), global1.e.x, firstLeadingBit(_wgslsmith_clamp_i32(-2147483647i, 0i, global1.e.x)), global1.e.x)), _wgslsmith_add_vec4_i32(reverseBits(select(vec4<i32>(-50195i, -2147483647i, global1.e.x, -26042i) >> (vec4<u32>(global0.x, 10376u, 4294967295u, global1.b.x) % vec4<u32>(32u)), reverseBits(vec4<i32>(51254i, -6198i, global1.e.x, -18162i)), global1.a)), global1.e), true);
    let var_1 = Struct_5(func_1(), true);
    global1 = var_1.a.a;
    var var_2 = _wgslsmith_mod_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.a.d, global0.x, 11176u, u_input.a.x), ~vec4<u32>(1u, global0.x, 10060u, 4294967295u)), _wgslsmith_div_u32(countOneBits(_wgslsmith_div_u32(4294967295u, var_1.a.a.d)), ~(~u_input.a.x)), ~1u, 0u), _wgslsmith_mult_vec4_u32(select(vec4<u32>(reverseBits(global1.b.x), var_1.a.a.b.x, var_1.a.a.b.x, 4294967295u), select(vec4<u32>(global0.x, 62769u, 56391u, u_input.a.x), vec4<u32>(u_input.a.x, 28176u, 13366u, 120267u), true), !(!var_1.a.a.a)), abs(vec4<u32>(67652u, _wgslsmith_dot_vec3_u32(var_1.a.a.b, vec3<u32>(1u, global1.d, 3836u)), var_1.a.a.b.x, abs(var_1.a.a.b.x)))));
    global1 = var_1.a.a;
    var var_3 = Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1321f - -706f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -250f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(ceil(-426f))), true)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-831f, -804f) + _wgslsmith_div_f32(2016f, -1000f))))), func_1(), Struct_2(Struct_1(global1.a, countOneBits(vec3<u32>(4294967295u, 66432u, u_input.a.x)) | ~var_1.a.a.b, select(!vec2<bool>(global1.a.x, global1.a.x), func_1().a.a.zx, true), ~_wgslsmith_mod_u32(0u, 18435u), (vec4<i32>(var_1.a.a.e.x, 2147483647i, -38619i, 38335i) ^ global1.e) << (vec4<u32>(var_2.x, 4294967295u, 37308u, 4294967295u) % vec4<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(108146u, ~abs(~(~97479u)));
}

