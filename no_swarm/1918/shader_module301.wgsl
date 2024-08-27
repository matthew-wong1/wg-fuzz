struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: Struct_2,
    d: vec3<i32>,
    e: vec2<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: vec2<i32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1954f;

var<private> global1: vec3<u32> = vec3<u32>(0u, 1u, 4294967295u);

var<private> global2: array<Struct_4, 14>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: bool, arg_2: vec2<bool>, arg_3: Struct_5) -> vec2<i32> {
    var var_0 = _wgslsmith_clamp_vec2_i32(~reverseBits(_wgslsmith_mult_vec2_i32(arg_3.c, countOneBits(vec2<i32>(-9576i, u_input.c)))), arg_3.c, vec2<i32>(-abs(arg_3.c.x), -u_input.c));
    let var_1 = _wgslsmith_f_op_f32(925f - _wgslsmith_f_op_f32(-1263f * arg_3.b.c.a));
    global0 = _wgslsmith_f_op_f32(456f + _wgslsmith_f_op_f32(ceil(191f)));
    var var_2 = arg_3;
    let var_3 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1, -225f, _wgslsmith_div_f32(-255f, arg_0.x))));
    return -var_2.c ^ var_2.c;
}

fn func_2(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_1) -> bool {
    global1 = vec3<u32>(8777u, ~(~4294967295u), _wgslsmith_dot_vec3_u32(u_input.a.yyx, countOneBits(u_input.a.wxy) & arg_0) ^ u_input.a.x);
    var var_0 = !vec3<bool>(arg_2.a > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), all(select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true)))), select(_wgslsmith_f_op_f32(-1572f + arg_2.a) > _wgslsmith_f_op_f32(f32(-1f) * -975f), false, true));
    global2 = array<Struct_4, 14>();
    let var_1 = Struct_5(!var_0.x | var_0.x, Struct_2(arg_2, vec3<f32>(_wgslsmith_f_op_f32(-arg_2.a), arg_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(420f, -136f)))), arg_2), _wgslsmith_div_vec2_i32(~(abs(vec2<i32>(u_input.c, u_input.b)) | ~vec2<i32>(u_input.c, -2147483647i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, 2147483647i), func_3(vec4<f32>(-973f, 1200f, -1628f, 703f), false, var_0.zy, Struct_5(var_0.x, Struct_2(Struct_1(arg_1, arg_2.b), vec3<f32>(arg_1, -1929f, 1788f), arg_2), vec2<i32>(1i, u_input.c), vec3<bool>(true, true, true))), vec2<i32>(u_input.b, u_input.b)) & reverseBits(vec2<i32>(u_input.c, u_input.c))), select(vec3<bool>(!(!var_0.x), var_0.x || any(vec2<bool>(false, true)), var_0.x), select(select(select(vec3<bool>(true, true, var_0.x), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), vec3<bool>(false, true, true), all(vec3<bool>(false, false, true))), select(!vec3<bool>(var_0.x, false, false), select(vec3<bool>(true, false, true), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, false, var_0.x)), select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(false, var_0.x, false), vec3<bool>(var_0.x, false, false))), var_0.x | (arg_2.a != arg_1)), !(!(!vec3<bool>(var_0.x, var_0.x, var_0.x)))));
    global0 = _wgslsmith_f_op_f32(step(1157f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(935f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(arg_2.a, arg_1))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -408f) - -661f)))))));
    return !(!all(select(!var_1.d, var_1.d, var_1.a)));
}

fn func_4(arg_0: bool) -> Struct_1 {
    let var_0 = Struct_5(true, Struct_2(Struct_1(_wgslsmith_f_op_f32(1000f * _wgslsmith_div_f32(-848f, 311f)), _wgslsmith_add_u32(u_input.a.x, _wgslsmith_add_u32(36718u, global1.x))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(-1568f, -1000f, 357f), vec3<f32>(-672f, 838f, 716f)))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-556f)) + _wgslsmith_f_op_f32(round(-576f))), global1.x)), _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 1i, 1i), vec3<i32>(85091i, u_input.c, -2147483647i))), vec2<i32>(u_input.b, 1i)), !(!select(!vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, arg_0, arg_0), true)));
    var var_1 = all(vec4<bool>(false, true, false, arg_0));
    let var_2 = -2147483647i;
    var var_3 = var_0.b.a;
    var_1 = arg_0;
    return var_0.b.a;
}

fn func_1() -> Struct_3 {
    return Struct_3(u_input.a.x, select(~abs(min(u_input.a.wyy, vec3<u32>(19871u, global1.x, 0u))), ~_wgslsmith_mult_vec3_u32(u_input.a.xxy, ~vec3<u32>(u_input.a.x, u_input.a.x, global1.x)), false), Struct_2(func_4(!func_2(vec3<u32>(u_input.a.x, 8993u, 0u), 1006f, Struct_1(-1000f, 0u))), vec3<f32>(426f, _wgslsmith_f_op_f32(select(170f, _wgslsmith_f_op_f32(min(-1000f, -1444f)), true)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(616f, 238f)), _wgslsmith_f_op_f32(f32(-1f) * -1043f)))), func_4(_wgslsmith_mod_i32(u_input.c, -45769i) <= (-47641i | u_input.c))), vec3<i32>(-(~u_input.b), 3489i, _wgslsmith_clamp_i32(~u_input.b, -u_input.b, u_input.c | u_input.b) >> (u_input.a.x % 32u)), vec2<bool>(any(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), all(vec2<bool>(true, false)))), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec2<i32>(30680i, -1i);
    global2 = array<Struct_4, 14>();
    var var_1 = vec3<i32>(var_0.x, -2147483647i, -(~(-54477i)));
    var var_2 = func_1();
    var_2 = func_1();
    var_1 = var_2.d;
    let var_3 = Struct_5(!(!var_2.e.x), func_1().c, vec2<i32>(_wgslsmith_mult_i32(~func_1().d.x, 10607i), _wgslsmith_sub_i32(var_2.d.x, var_1.x)), !select(select(vec3<bool>(var_2.e.x, var_2.e.x, true), vec3<bool>(var_2.e.x, var_2.e.x, true), select(vec3<bool>(var_2.e.x, var_2.e.x, true), vec3<bool>(var_2.e.x, false, var_2.e.x), vec3<bool>(false, var_2.e.x, false))), select(vec3<bool>(var_2.e.x, true, var_2.e.x), select(vec3<bool>(false, var_2.e.x, var_2.e.x), vec3<bool>(false, var_2.e.x, var_2.e.x), vec3<bool>(var_2.e.x, var_2.e.x, true)), !vec3<bool>(var_2.e.x, var_2.e.x, var_2.e.x)), true));
    let var_4 = var_3.b.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.a.a, vec4<i32>(1i, 39885i, 2093i, var_2.d.x), -(~(_wgslsmith_div_vec3_i32(vec3<i32>(-295i, 13935i, -1i), vec3<i32>(27962i, u_input.b, 2147483647i)) | _wgslsmith_mod_vec3_i32(var_2.d, var_2.d))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(745f, var_4.a))), func_1().c.c.a)));
}

