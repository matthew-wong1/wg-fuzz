struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_4 {
    a: bool,
    b: vec3<f32>,
    c: Struct_2,
    d: Struct_2,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: Struct_4;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<u32>) -> bool {
    let var_0 = !select(!vec3<bool>(0i > global1.e.b.x, select(true, true, global1.a), true), select(!select(vec3<bool>(global1.a, true, global1.a), vec3<bool>(global1.a, global1.a, true), global1.a), select(vec3<bool>(false, true, true), select(vec3<bool>(global1.a, false, false), vec3<bool>(true, false, false), global1.a), !global1.a), vec3<bool>(true, !global1.a, true)), !all(vec4<bool>(true, global1.a, global1.a, true)));
    global1 = Struct_4(true, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(global1.b * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(global1.b, global1.b, true))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.b)))))), global1.c, global1.c, Struct_3(max(1i, _wgslsmith_clamp_i32(_wgslsmith_add_i32(31609i, 5690i), firstLeadingBit(global1.e.a), 49829i)), select(-global1.e.b, vec4<i32>(global1.e.a, global1.e.b.x, global1.e.a, global1.e.a) ^ -vec4<i32>(-11821i, global1.e.a, global0.x, global1.e.b.x), global1.a)));
    let var_1 = Struct_4(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.b - global1.b) + _wgslsmith_f_op_vec3_f32(-global1.b)))), global1.d, Struct_2(abs(vec4<u32>(global1.c.b, global1.d.d.x, 77553u, 82508u) | arg_0), select(4294967295u, 48300u, !(!var_0.x)), vec4<u32>(0u, arg_0.x | u_input.a, max(4294967295u, 0u), _wgslsmith_mod_u32(38168u, 46725u)) | vec4<u32>(global1.c.a.x, 1220u, abs(18064u), 0u), vec3<u32>(~u_input.a, ~arg_0.x, u_input.a), reverseBits(arg_0.xw)), Struct_3(22420i, vec4<i32>(firstLeadingBit(~global0.x), ~(-global0.x), -46429i, -36597i)));
    let var_2 = 18560u;
    var var_3 = global1.d;
    return any(!(!vec2<bool>(global1.a, true)));
}

fn func_2() -> Struct_2 {
    var var_0 = any(select(!select(vec2<bool>(false, global1.a), select(vec2<bool>(global1.a, true), vec2<bool>(true, global1.a), vec2<bool>(global1.a, true)), !global1.a), select(vec2<bool>(global1.a, func_3(vec4<u32>(14463u, 73136u, u_input.a, u_input.a))), select(vec2<bool>(true, true), !vec2<bool>(global1.a, false), vec2<bool>(global1.a, true)), global1.a), global1.a));
    var var_1 = u_input.a;
    var_1 = 69820u;
    var var_2 = Struct_1(select(!select(select(vec3<bool>(global1.a, true, global1.a), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), !vec3<bool>(global1.a, false, false), !vec3<bool>(false, true, global1.a)), select(vec3<bool>(true, 1390f > global1.b.x, true), select(select(vec3<bool>(global1.a, false, global1.a), vec3<bool>(global1.a, false, true), true), select(vec3<bool>(true, true, global1.a), vec3<bool>(global1.a, true, global1.a), false), global1.a), select(select(vec3<bool>(global1.a, true, global1.a), vec3<bool>(false, true, global1.a), false), !vec3<bool>(global1.a, global1.a, global1.a), true)), true));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.x - 130f) + -1160f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1070f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(global1.b.x, global1.b.x)), _wgslsmith_f_op_f32(max(734f, global1.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x * -1000f)))), global1.b.x, (global1.a && !global1.a) || false)));
    return Struct_2(_wgslsmith_mult_vec4_u32(~vec4<u32>(global1.d.d.x, _wgslsmith_mod_u32(19574u, 23736u), global1.c.a.x, _wgslsmith_add_u32(0u, global1.d.c.x)), vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 0u), vec2<u32>(global1.c.a.x, u_input.a)), countOneBits(firstLeadingBit(global1.c.e.x)), global1.d.a.x, countOneBits(12681u))), 97693u, abs(max(~_wgslsmith_mult_vec4_u32(global1.d.a, global1.d.a), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, global1.c.b, u_input.a, global1.c.c.x), vec4<u32>(u_input.a, u_input.a, global1.d.a.x, 7101u) & global1.c.a))), select(global1.c.d >> (global1.c.d % vec3<u32>(32u)), global1.c.c.xyx, vec3<bool>(global0.x < _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, 24037i, 39602i), global1.e.b.zyw), global1.a | all(var_2.a.xy), true)), ~vec2<u32>(_wgslsmith_mod_u32(8543u, 89050u), u_input.a));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    global1 = Struct_4(true & global1.a, global1.b, Struct_2(arg_0.a, max(~_wgslsmith_sub_u32(48492u, arg_0.c.x), arg_0.d.x), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, _wgslsmith_clamp_u32(global1.d.e.x, 72608u, 25902u), _wgslsmith_clamp_u32(0u, arg_0.a.x, global1.d.c.x), ~u_input.a), _wgslsmith_mod_vec4_u32(global1.d.c, firstTrailingBit(vec4<u32>(16387u, 0u, arg_0.c.x, 0u)))), vec3<u32>(18595u, 21708u, global1.d.d.x), ~arg_0.a.xw), global1.c, global1.e);
    global1 = Struct_4(false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1240f, -253f, 1000f)) * _wgslsmith_f_op_vec3_f32(global1.b - global1.b)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.b), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global1.b * global1.b), global1.b, vec3<bool>(global1.a, global1.a, true))))), Struct_2(_wgslsmith_add_vec4_u32(vec4<u32>(~2371u, 62533u & u_input.a, 7997u, ~46946u), global1.c.c), arg_0.c.x << (reverseBits(min(global1.d.e.x, 10696u)) % 32u), global1.c.c, abs(min(vec3<u32>(u_input.a, 10663u, arg_0.d.x), arg_0.d)) ^ _wgslsmith_sub_vec3_u32(arg_0.a.yzz, _wgslsmith_clamp_vec3_u32(vec3<u32>(1961u, 0u, 0u), vec3<u32>(0u, 1u, global1.d.b), global1.c.c.wxw)), func_2().c.xy), global1.c, global1.e);
    global1 = Struct_4(func_3(~(~vec4<u32>(34333u, global1.c.c.x, global1.d.c.x, arg_0.c.x))), global1.b, Struct_2(_wgslsmith_div_vec4_u32(~arg_0.a >> (_wgslsmith_mult_vec4_u32(vec4<u32>(26302u, 2980u, global1.d.d.x, 1u), arg_0.c) % vec4<u32>(32u)), vec4<u32>(countOneBits(0u), 1u, 73755u << (arg_0.a.x % 32u), 4294967295u)), ~_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(u_input.a, 4294967295u, 4294967295u)), _wgslsmith_mult_vec3_u32(arg_0.c.xzz, global1.c.c.zyy)), vec4<u32>(_wgslsmith_sub_u32(4294967295u, ~1u), 4294967295u, 11143u, ~u_input.a), vec3<u32>(u_input.a, global1.c.a.x, firstTrailingBit(max(global1.c.a.x, arg_0.e.x))), vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(31975u, 28425u), global1.d.c.yw), arg_0.d.x)), global1.c, global1.e);
    let var_0 = Struct_4(global1.a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.x, global1.b.x, -481f) * vec3<f32>(global1.b.x, 631f, -1085f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.b)), !select(vec3<bool>(global1.a, true, global1.a), select(vec3<bool>(global1.a, global1.a, global1.a), vec3<bool>(false, true, global1.a), global1.a), global1.a))), func_2(), arg_0, global1.e);
    let var_1 = global1.a;
    return Struct_2(~_wgslsmith_add_vec4_u32(func_2().a, vec4<u32>(global1.c.a.x, 35198u >> (var_0.c.e.x % 32u), arg_0.c.x, _wgslsmith_mod_u32(29487u, 1u))), countOneBits(~24109u), _wgslsmith_add_vec4_u32(~(~arg_0.a), firstTrailingBit(countOneBits(vec4<u32>(u_input.a, u_input.a, arg_0.a.x, arg_0.e.x) & arg_0.c))), ~(~(vec3<u32>(u_input.a, global1.d.c.x, global1.c.e.x) << (global1.c.d % vec3<u32>(32u))) & vec3<u32>(_wgslsmith_sub_u32(6450u, 0u), abs(var_0.c.b), select(u_input.a, u_input.a, var_0.a))), arg_0.e);
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: vec4<f32>) -> i32 {
    global1 = Struct_4(global1.a, _wgslsmith_f_op_vec3_f32(round(arg_3.xww)), func_4(func_2()), Struct_2(~(vec4<u32>(arg_2.x, 1u, arg_2.x, 23468u) ^ global1.d.a) & global1.c.c, arg_2.x, select(max(~global1.d.c, global1.d.a), vec4<u32>(u_input.a, 0u, global1.c.a.x, reverseBits(u_input.a)), global1.a), _wgslsmith_mod_vec3_u32(~global1.c.d >> (~global1.d.c.wyy % vec3<u32>(32u)), firstLeadingBit(~global1.c.d)), min(_wgslsmith_clamp_vec2_u32(~vec2<u32>(0u, u_input.a), vec2<u32>(81577u, arg_2.x), vec2<u32>(u_input.a, u_input.a)), ~abs(vec2<u32>(global1.c.c.x, global1.d.b)))), Struct_3(_wgslsmith_clamp_i32(~(-arg_1.b.x), 0i, -global1.e.b.x ^ abs(0i)), vec4<i32>(global0.x, -21187i, -global0.x, 2147483647i) & _wgslsmith_div_vec4_i32(arg_1.b, ~global1.e.b)));
    let var_0 = !vec3<bool>(global1.e.a != ~_wgslsmith_div_i32(global0.x, global0.x), select(false, true, !(arg_0 >= 559f)), global1.a);
    let var_1 = global1.b.x;
    let var_2 = false;
    global1 = Struct_4(var_2, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(398f, arg_0, 980f)))) * vec3<f32>(arg_0, -403f, -1000f)), global1.d, func_2(), Struct_3(_wgslsmith_add_i32(-min(1i, global1.e.b.x), ~(global1.e.b.x >> (arg_2.x % 32u))), vec4<i32>(firstTrailingBit(_wgslsmith_div_i32(4894i, -1i)), i32(-1i) * -global0.x, (global1.e.a ^ global1.e.a) | global0.x, _wgslsmith_dot_vec2_i32(~global1.e.b.wy, global0.yx & vec2<i32>(2147483647i, global0.x)))));
    return _wgslsmith_mod_i32(~_wgslsmith_mod_i32(_wgslsmith_mod_i32(1i, i32(-1i) * -31251i), (global1.e.b.x << (u_input.a % 32u)) | global0.x), max(_wgslsmith_sub_i32(abs(-5955i), _wgslsmith_add_i32(17537i << (arg_2.x % 32u), ~global0.x)), -26269i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(-18131i, -41284i, -41324i), global1.e.b.ywy & vec3<i32>(0i, -1647i, global0.x)), ~(-58718i)), -_wgslsmith_sub_i32(~global1.e.a, 1i), _wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.e.b.x, -5640i, global1.e.a, 1350i), vec4<i32>(global1.e.a, global1.e.b.x, global0.x, global0.x)), -global1.e.a), func_1(_wgslsmith_f_op_f32(712f - 1198f), Struct_3(50960i, vec4<i32>(0i, global0.x, 0i, 47508i)), _wgslsmith_mult_vec2_u32(vec2<u32>(global1.d.d.x, u_input.a), global1.d.d.yy), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, global1.b.x, -493f, global1.b.x) * vec4<f32>(1000f, global1.b.x, global1.b.x, global1.b.x)))));
    global0 = -global1.e.b.zyx;
    let var_0 = all(select(!(!vec4<bool>(global1.a, false, true, global1.a)), select(vec4<bool>(!global1.a, u_input.a > u_input.a, global1.a, !global1.a), select(select(vec4<bool>(global1.a, true, global1.a, global1.a), vec4<bool>(false, global1.a, global1.a, false), true), vec4<bool>(global1.a, true, global1.a, global1.a), !vec4<bool>(true, global1.a, global1.a, global1.a)), global1.a), (~u_input.a == _wgslsmith_mod_u32(u_input.a, global1.c.e.x)) || global1.a));
    let var_1 = Struct_4(~1u != ~u_input.a, global1.b, global1.c, func_4(Struct_2(global1.d.c, 75999u, ~(~vec4<u32>(u_input.a, 0u, global1.d.a.x, 0u)), _wgslsmith_sub_vec3_u32(global1.d.c.wwz, firstTrailingBit(global1.d.d)), global1.d.a.yw)), Struct_3(min(global1.e.b.x, 1i), global1.e.b));
    var var_2 = Struct_1(select(select(!vec3<bool>(var_0, var_1.a, global1.a), select(select(vec3<bool>(var_1.a, global1.a, global1.a), vec3<bool>(true, false, var_0), vec3<bool>(false, false, var_0)), !vec3<bool>(global1.a, true, true), true), !(var_0 & var_1.a)), !select(select(vec3<bool>(true, false, global1.a), vec3<bool>(global1.a, global1.a, false), vec3<bool>(true, var_0, global1.a)), select(vec3<bool>(var_0, true, true), vec3<bool>(global1.a, false, global1.a), vec3<bool>(true, var_0, false)), !vec3<bool>(false, false, var_0)), true));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.zz, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(var_1.b * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.b.x, global1.b.x, 475f))), vec3<f32>(var_1.b.x, 274f, -1000f))))));
}

