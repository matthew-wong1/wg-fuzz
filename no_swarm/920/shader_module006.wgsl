struct Struct_1 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, true);

var<private> global1: vec4<bool> = vec4<bool>(false, true, true, true);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    global1 = vec4<bool>(any(global1.yzw), !all(select(select(vec2<bool>(false, false), global1.yy, true), vec2<bool>(true, global0.x), !global1.x)), false, true);
    let var_0 = Struct_1(~u_input.c.x, u_input.c.x);
    let var_1 = Struct_1(_wgslsmith_mod_u32(4294967295u, u_input.e.x), u_input.e.x);
    var var_2 = u_input.d;
    var_2 = vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(min(var_2.ywx, var_2.zwz), var_2.xwz), _wgslsmith_div_i32(1i, ~u_input.b.x)), vec2<i32>(_wgslsmith_mod_i32(~1i, -1i), 1i)), u_input.a.x, select(0i, _wgslsmith_mod_i32(var_2.x, var_2.x) ^ var_2.x, !(false & global1.x)), _wgslsmith_mult_i32(_wgslsmith_mult_i32(-14392i, _wgslsmith_sub_i32(0i, _wgslsmith_mod_i32(var_2.x, u_input.d.x))), -((2825i & var_2.x) ^ u_input.a.x)));
    return u_input.c.x;
}

fn func_2(arg_0: i32) -> bool {
    var var_0 = Struct_1(4294967295u, _wgslsmith_mult_u32(_wgslsmith_mod_u32((8980u | u_input.c.x) >> (u_input.c.x % 32u), func_3()), ~(~4294967295u)));
    global0 = select(vec3<bool>(true, false, true), !vec3<bool>(!(!global0.x), !global0.x, !all(vec4<bool>(global1.x, true, global1.x, global0.x))), global1.zyx);
    let var_1 = vec2<i32>(reverseBits(-min(-u_input.a.x, -16667i)), 1i);
    let var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(max(func_3(), u_input.e.x >> (0u % 32u)), ~var_0.b, select(~u_input.e.x, var_0.b, true)), countOneBits(vec3<u32>(_wgslsmith_mult_u32(1u, u_input.c.x), ~u_input.e.x, var_0.b))) | max(0u, ~(~_wgslsmith_mod_u32(var_0.a, var_0.b)));
    var_0 = Struct_1(_wgslsmith_dot_vec4_u32(u_input.c, ~(u_input.c >> (u_input.c % vec4<u32>(32u))) | abs(firstTrailingBit(u_input.c))), 12993u);
    return !global0.x || !(!(false | global0.x));
}

fn func_1() -> vec4<bool> {
    let var_0 = vec4<bool>(func_2(~_wgslsmith_div_i32(u_input.a.x >> (u_input.c.x % 32u), -31727i)), false, true, all(select(!vec2<bool>(true, global0.x), select(!vec2<bool>(global0.x, global0.x), global0.zy, select(vec2<bool>(true, false), global0.zx, true)), !(!vec2<bool>(global1.x, global0.x)))));
    var var_1 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 53125u), u_input.e.yy >> (vec2<u32>(73781u, 39981u) % vec2<u32>(32u))), min(_wgslsmith_mult_u32(u_input.c.x, 1u), u_input.e.x & u_input.c.x), _wgslsmith_dot_vec4_u32(u_input.c, ~vec4<u32>(u_input.e.x, u_input.c.x, u_input.e.x, u_input.e.x)), 15478u), vec4<u32>(4294967295u >> (u_input.e.x % 32u), ~(~4294967295u), ~u_input.c.x, 1u)), max(37260u, select(~func_3(), ~u_input.c.x, true)));
    global0 = vec3<bool>(var_0.x, true, (-1i <= _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(u_input.d, u_input.d), -u_input.d.x)) | any(select(var_0, var_0, 35863u <= u_input.c.x)));
    let var_2 = -_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, _wgslsmith_sub_i32(u_input.d.x, 21461i ^ u_input.b.x)), vec2<i32>(19074i, ~24818i), select(min(vec2<i32>(u_input.b.x, u_input.a.x), vec2<i32>(2147483647i, 2147483647i)), u_input.d.wx, false));
    var var_3 = ~vec4<u32>(var_1.a, 1u, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.c.wy, vec2<u32>(u_input.e.x, 60162u)), 11174u) ^ _wgslsmith_add_u32(~var_1.a, ~u_input.c.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(7330u, var_1.a, u_input.c.x) << (vec3<u32>(u_input.c.x, 41891u, var_1.b) % vec3<u32>(32u)), reverseBits(~u_input.c.zxy)));
    return vec4<bool>(func_2(firstTrailingBit(_wgslsmith_clamp_i32(-46095i, u_input.d.x, u_input.a.x)) << (_wgslsmith_mult_u32(var_1.a, _wgslsmith_mult_u32(var_3.x, 56183u)) % 32u)), var_0.x, var_3.x < _wgslsmith_div_u32(38122u, ~var_3.x), !(u_input.d.x > -1i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_mod_i32(u_input.b.x, -u_input.a.x) << (u_input.c.x % 32u), u_input.a.x, u_input.d.x), _wgslsmith_mult_vec4_i32(u_input.d, ~select(u_input.d, ~u_input.d, select(vec4<bool>(true, global1.x, global0.x, global0.x), vec4<bool>(global0.x, false, global0.x, false), vec4<bool>(global1.x, global1.x, global0.x, false)))), _wgslsmith_f_op_f32(823f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-734f * -2300f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, -1407f, false))))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(max(-684f, _wgslsmith_f_op_f32(trunc(-535f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -609f) * -621f), _wgslsmith_f_op_f32(f32(-1f) * -708f), -284f))));
}

