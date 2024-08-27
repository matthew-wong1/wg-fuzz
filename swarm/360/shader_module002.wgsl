struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<u32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: i32,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec2<bool>,
    d: vec3<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<f32>,
    c: i32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_5 = Struct_5(Struct_2(vec2<bool>(true, false), vec2<u32>(896u, 4294967295u), Struct_1(470f, false, vec2<u32>(4294967295u, 36243u), 30235i)), vec4<f32>(-487f, 915f, 465f, 911f), -1325i, vec4<i32>(-37810i, 27755i, 2147483647i, -5134i));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: Struct_5, arg_2: Struct_3, arg_3: u32) -> f32 {
    let var_0 = Struct_3(arg_2.a, u_input.e, _wgslsmith_mult_i32(_wgslsmith_mult_i32(~u_input.b, -46851i), countOneBits(-(arg_1.c | 2147483647i))), Struct_2(arg_2.d.a, max(global1.a.b & (vec2<u32>(arg_1.a.c.c.x, arg_1.a.c.c.x) | vec2<u32>(4294967295u, 3680u)), ~arg_1.a.c.c), Struct_1(-204f, false, vec2<u32>(53992u << (arg_1.a.c.c.x % 32u), ~arg_1.a.c.c.x), ~max(-13436i, -11289i))), false);
    let var_1 = select(vec4<bool>(false != !all(vec4<bool>(false, true, arg_1.a.a.x, global1.a.c.b)), true, arg_1.a.a.x, true), !select(!vec4<bool>(arg_1.a.c.b, arg_1.a.c.b, false, arg_2.a.c.b), vec4<bool>(true, arg_1.a.c.b, all(vec4<bool>(arg_1.a.c.b, true, true, false)), arg_1.a.a.x), !select(vec4<bool>(false, true, arg_2.a.c.b, false), vec4<bool>(var_0.a.c.b, global1.a.c.b, arg_2.a.c.b, arg_2.a.a.x), var_0.d.a.x)), arg_2.d.a.x);
    var var_2 = global1.a.c;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1324f);
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(global1.b, _wgslsmith_f_op_vec4_f32(-global1.b)))), _wgslsmith_div_vec4_f32(vec4<f32>(-611f, _wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(round(-249f)), -136f), _wgslsmith_f_op_vec4_f32(global1.b * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, -1011f, global1.a.c.a, var_0.a.c.a)))))));
    return 1511f;
}

fn func_4(arg_0: Struct_5, arg_1: vec4<bool>, arg_2: vec3<f32>, arg_3: Struct_4) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(global1.b.wy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_2.yx, arg_3.d.zy, arg_3.c)), vec2<f32>(592f, 249f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.c.a))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(795f, arg_2.x), arg_3.d.zz)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.b.a, 909f)), all(vec3<bool>(true, true, arg_3.c.x))))))));
    var var_1 = vec2<bool>(!arg_1.x && !arg_3.b.b, all(arg_3.c));
    let var_2 = select(vec4<i32>(global1.a.c.d, _wgslsmith_add_i32(_wgslsmith_sub_i32(2147483647i, ~(-36117i)), min(39270i, -1i >> (arg_3.b.c.x % 32u))), ~u_input.a.x, 1i), vec4<i32>(arg_3.b.d, _wgslsmith_clamp_i32(abs(reverseBits(-2147483647i)), _wgslsmith_dot_vec4_i32(-arg_3.a, arg_0.d), -27873i), -9341i, 1i), all(!vec4<bool>(false, any(vec3<bool>(false, false, true)), global1.a.a.x, all(arg_1))));
    var var_3 = ~(~4294967295u);
    let var_4 = u_input.e;
    return _wgslsmith_f_op_f32(abs(var_0.x));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(1068f, global1.a.c.b, global1.a.c.c, -(~max(global1.a.c.d, 23960i) ^ -2378i));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(max(global1.b.x, -998f)), _wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(func_4(Struct_5(global1.a, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.a.c.a, var_0.a, var_0.a, 523f))), _wgslsmith_sub_i32(67411i, 2147483647i), _wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(-1i, 0i, -1i, 0i))), select(select(vec4<bool>(var_0.b, global1.a.a.x, var_0.b, var_0.b), vec4<bool>(false, global1.a.a.x, var_0.b, false), false), vec4<bool>(true, true, true, var_0.b), true), vec3<f32>(global1.b.x, _wgslsmith_f_op_f32(func_3(var_0.a, Struct_5(Struct_2(global1.a.a, u_input.e.zy, Struct_1(-1000f, var_0.b, u_input.e.xx, var_0.d)), global1.b, var_0.d, vec4<i32>(-2147483647i, u_input.b, global1.c, global1.d.x)), Struct_3(global1.a, u_input.e, global1.d.x, global1.a, global1.a.a.x), global1.a.c.c.x)), _wgslsmith_f_op_f32(-global1.b.x)), Struct_4(max(vec4<i32>(global1.a.c.d, u_input.d, 2147483647i, 2147483647i), u_input.a), global1.a.c, vec2<bool>(true, var_0.b), vec3<f32>(-938f, global1.a.c.a, var_0.a))))), -1182f);
    global0 = 0u;
    global1 = Struct_5(Struct_2(!(!select(global1.a.a, vec2<bool>(false, var_0.b), global1.a.a.x)), _wgslsmith_add_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(10796u, 1u), global1.a.c.c), ~(~vec2<u32>(21625u, u_input.e.x))), global1.a.c), _wgslsmith_f_op_vec4_f32(ceil(global1.b)), _wgslsmith_add_i32(-(~(~(-2147483647i))), 0i), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(global1.d, vec4<i32>(u_input.c, firstTrailingBit(-7907i), firstTrailingBit(12010i), -5089i)), _wgslsmith_div_vec4_i32(select(vec4<i32>(global1.c, u_input.c, 52215i, global1.c), vec4<i32>(u_input.d, u_input.b, -25542i, var_0.d), vec4<bool>(var_0.b, global1.a.c.b, false, true)), reverseBits(-vec4<i32>(-2147483647i, 28913i, 2147483647i, global1.a.c.d)))));
    var var_2 = u_input.e.xz;
    return global1.a.c;
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_5(global1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-162f * arg_1.a), -408f, -752f, _wgslsmith_div_f32(arg_0, arg_1.a)) * _wgslsmith_f_op_vec4_f32(trunc(global1.b)))), countOneBits(global1.a.c.d), -global1.d);
    let var_1 = 30861u;
    var var_2 = any(!select(global1.a.a, vec2<bool>(!var_0.a.c.b, false), true));
    let var_3 = Struct_4(firstLeadingBit(global1.d), func_2(), select(!(!vec2<bool>(var_0.a.a.x, true)), select(vec2<bool>(false, arg_1.c.x >= 4294967295u), var_0.a.a, any(vec4<bool>(arg_1.b, arg_1.b, global1.a.c.b, var_0.a.a.x))), true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(314f - 1000f)), 650f, _wgslsmith_div_f32(global1.a.c.a, -690f))));
    let var_4 = var_3.d.x;
    return func_2();
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    global0 = _wgslsmith_mod_u32(global1.a.b.x, 48610u);
    let var_0 = -u_input.c;
    let var_1 = -697f;
    let var_2 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1, global1.a.c.a) - 117f)), func_2());
    var var_3 = ~_wgslsmith_add_vec4_i32(-_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(var_2.d, 29585i, 2147483647i, 0i)), global1.d ^ vec4<i32>(var_2.d, global1.d.x, 2147483647i, 47478i)), firstLeadingBit(-u_input.a) >> (_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global1.a.b.x, 13004u, var_2.c.x, global1.a.c.c.x), vec4<u32>(32122u, var_2.c.x, 1u, 4294967295u)), _wgslsmith_mod_vec4_u32(vec4<u32>(32909u, global1.a.c.c.x, 5286u, 19430u), vec4<u32>(4294967295u, 52519u, 0u, var_2.c.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(74635u, u_input.e.x, 0u, global1.a.b.x), vec4<u32>(0u, u_input.e.x, var_2.c.x, global1.a.c.c.x), vec4<u32>(global1.a.b.x, global1.a.c.c.x, 1u, 20830u))) % vec4<u32>(32u)));
    return func_2().a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1338f, global1.b.x, global1.a.c.b)) - _wgslsmith_f_op_f32(func_1(!vec4<bool>(true, global1.a.c.b, global1.a.a.x, global1.a.a.x))));
    let var_1 = global1.a.a.x;
    global1 = Struct_5(Struct_2(global1.a.a, ~(~global1.a.c.c), global1.a.c), vec4<f32>(func_5(-1113f, global1.a.c).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1533f))), _wgslsmith_f_op_f32(sign(-1064f)), var_0), global1.c, abs(_wgslsmith_clamp_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, -1i, u_input.c, u_input.a.x), global1.d), select(global1.d, vec4<i32>(u_input.d, 2147483647i, global1.c, -1i), false), global1.d << (select(vec4<u32>(u_input.e.x, u_input.e.x, 113954u, 36077u), vec4<u32>(0u, 59919u, 4294967295u, 20578u), global1.a.c.b) % vec4<u32>(32u)))));
    let var_2 = -u_input.a.xyy;
    var var_3 = select(vec2<i32>(-1i) * -abs(vec2<i32>(-15748i, 5055i)), vec2<i32>(_wgslsmith_mod_i32(-36382i, min(-8150i, var_2.x)), -3025i), global1.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(~select(u_input.e, u_input.e, false), u_input.e, u_input.e), countOneBits(~(u_input.e & vec3<u32>(4294967295u, global1.a.c.c.x, u_input.e.x)))), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(18023u, 75626u, 1u)), ~u_input.e), u_input.e) & vec3<u32>(28585u, ~global1.a.c.c.x, 1u), vec2<i32>(21315i, _wgslsmith_sub_i32(2147483647i, _wgslsmith_mod_i32(abs(1i), ~u_input.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(global1.b.wxw, global1.b.zwy)) - vec3<f32>(-1802f, global1.a.c.a, global1.a.c.a)) + vec3<f32>(938f, _wgslsmith_f_op_f32(f32(-1f) * -133f), _wgslsmith_f_op_f32(var_0 - var_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)));
}

