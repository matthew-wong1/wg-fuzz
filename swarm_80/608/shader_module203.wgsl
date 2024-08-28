struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: Struct_3,
    d: Struct_3,
    e: vec2<i32>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: f32,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32) -> vec2<u32> {
    var var_0 = select(select(vec2<bool>(true, !any(vec3<bool>(false, false, true))), vec2<bool>(true, true), true), vec2<bool>(false, !(true | (14896i == u_input.e.x))), vec2<bool>(true, abs(_wgslsmith_add_i32(u_input.d, u_input.a.x)) >= (0i << (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(114446u, 1u)) % 32u))));
    let var_1 = select(!var_0.x, var_0.x, select(var_0.x, all(vec2<bool>(var_0.x, var_0.x)), true) != all(!vec4<bool>(true, true, true, var_0.x)));
    var var_2 = !select(!vec2<bool>(all(vec2<bool>(true, var_1)), all(vec4<bool>(false, false, true, false))), select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(true, true, false, false)), all(vec4<bool>(false, var_1, var_0.x, var_1))), vec2<bool>(false, var_1)), true);
    var_0 = !select(!vec2<bool>(var_2.x, false), vec2<bool>(true, !var_0.x == true), !vec2<bool>(var_0.x | var_2.x, true));
    var_2 = vec2<bool>(!(!var_1), true);
    return firstTrailingBit(vec2<u32>(111235u, ~4597u));
}

fn func_2() -> Struct_3 {
    var var_0 = vec2<u32>(_wgslsmith_mult_u32(84634u, ~(~_wgslsmith_div_u32(0u, 1u))), _wgslsmith_mod_u32(22601u, ~(~_wgslsmith_add_u32(0u, 121360u))));
    var_0 = vec2<u32>(var_0.x, var_0.x);
    var_0 = _wgslsmith_mult_vec2_u32(func_3(_wgslsmith_mod_i32(abs(1i), -(~u_input.a.x))), min(countOneBits(vec2<u32>(reverseBits(37393u), ~1u)), vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, 24250u, 0u, 1u), vec4<u32>(var_0.x, 4294967295u, 18470u, 0u)), min(vec4<u32>(1u, var_0.x, 4294967295u, 105641u), vec4<u32>(3214u, var_0.x, 1u, 7241u))), countOneBits(var_0.x))));
    var_0 = _wgslsmith_div_vec2_u32(~vec2<u32>(_wgslsmith_div_u32(~4294967295u, ~var_0.x), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, 43411u), vec2<u32>(var_0.x, 0u)), ~vec2<u32>(0u, 4294967295u))), vec2<u32>(var_0.x, 32074u << (_wgslsmith_clamp_u32(var_0.x << (var_0.x % 32u), _wgslsmith_mult_u32(var_0.x, 82362u), 0u) % 32u)));
    let var_1 = Struct_3(Struct_2(select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), select(true, true, true)), vec2<bool>(true, true)), u_input.c, any(select(vec3<bool>(true, false, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), any(vec4<bool>(false, false, true, false))))), _wgslsmith_add_vec2_u32(countOneBits(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, var_0.x), vec2<u32>(var_0.x, var_0.x))), _wgslsmith_add_vec2_u32(select(~vec2<u32>(var_0.x, var_0.x), vec2<u32>(var_0.x, 64527u), vec2<bool>(true, true)), _wgslsmith_sub_vec2_u32(select(vec2<u32>(var_0.x, var_0.x), vec2<u32>(var_0.x, 4294967295u), vec2<bool>(true, false)), ~vec2<u32>(0u, 0u)))), vec3<i32>(-36236i, max(51182i, 49334i), -1861i));
    return Struct_3(Struct_2(select(var_1.a.a, !var_1.a.a, var_1.a.a.x), firstLeadingBit(_wgslsmith_mod_i32(-1i, abs(var_1.c.x))), !(true || var_1.a.a.x) || !all(vec2<bool>(var_1.a.a.x, var_1.a.a.x))), ~(~vec2<u32>(var_1.b.x, _wgslsmith_mult_u32(var_0.x, 16776u))), ~var_1.c);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4) -> Struct_1 {
    let var_0 = abs(u_input.a);
    var var_1 = !vec3<bool>(_wgslsmith_div_i32(0i, reverseBits(var_0.x)) < arg_1.e.x, arg_1.b, select(true, any(vec4<bool>(true, true, arg_1.d.a.a.x, false)), all(!vec3<bool>(arg_0.a.c, false, arg_1.c.a.a.x))));
    var_1 = vec3<bool>(true, true, true);
    var_1 = select(vec3<bool>(true, any(vec2<bool>(true, any(arg_0.a.a))), func_2().a.c), !vec3<bool>(all(vec3<bool>(arg_0.a.c, arg_0.a.a.x, false)), arg_0.a.a.x, all(vec2<bool>(true, true))), vec3<bool>(false || (arg_0.a.c | true), arg_1.d.b.x > arg_1.d.b.x, any(!vec2<bool>(var_1.x, var_1.x)) || true));
    let var_2 = Struct_4(_wgslsmith_div_i32(-53764i, firstLeadingBit(select(u_input.d, arg_1.c.a.b, arg_0.a.a.x))) & 24361i, ~(~(arg_0.b.x << (0u % 32u))) > arg_0.b.x, func_2(), Struct_3(arg_0.a, ~vec2<u32>(90392u, arg_0.b.x), _wgslsmith_mod_vec3_i32(reverseBits(arg_1.d.c), ~(-vec3<i32>(var_0.x, 43825i, arg_0.c.x)))), _wgslsmith_mod_vec2_i32(-vec2<i32>(u_input.e.x, var_0.x), firstLeadingBit(arg_0.c.zy)));
    return Struct_1(~41745u, all(vec4<bool>(var_1.x, !(var_2.b && false), !(arg_1.d.b.x <= arg_0.b.x), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1199f + -860f), -330f, _wgslsmith_f_op_f32(f32(-1f) * -1181f), _wgslsmith_f_op_f32(trunc(-1494f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(123f, -1237f, 217f, 1000f))))), u_input.c);
}

fn func_1() -> Struct_1 {
    let var_0 = any(vec4<bool>(true, true, true, true)) & true;
    let var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(reverseBits(4294967295u), abs(countOneBits(0u)), select(4294967295u, 1u, !var_0), select(1u, ~16401u, true)) | ~firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u) << (~select(firstLeadingBit(vec4<u32>(34627u, 0u, 4530u, 0u)), ~vec4<u32>(1u, 21301u, 4144u, 1u), true) % vec4<u32>(32u)));
    return func_4(func_2(), Struct_4(~(-2147483647i), any(select(vec2<bool>(true, true), vec2<bool>(true, true), false)), Struct_3(func_2().a, ~(vec2<u32>(28874u, var_1.x) & var_1.zz), firstLeadingBit(func_2().c)), Struct_3(func_2().a, vec2<u32>(select(1u, 59475u, var_0), firstLeadingBit(73172u)), vec3<i32>(_wgslsmith_add_i32(u_input.d, 5934i), u_input.b, ~(-2147483647i))), reverseBits(vec2<i32>(u_input.b, u_input.c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = Struct_5(_wgslsmith_sub_vec2_i32(~u_input.a.yz, -vec2<i32>(countOneBits(u_input.d), _wgslsmith_dot_vec3_i32(u_input.e.yyw, u_input.a.wyz))), _wgslsmith_f_op_f32(-var_0.c.x), Struct_4(-2147483647i << (~var_0.a % 32u), ~_wgslsmith_dot_vec3_i32(u_input.a.xzx, vec3<i32>(u_input.e.x, 0i, var_0.d)) < u_input.d, func_2(), func_2(), _wgslsmith_add_vec2_i32(u_input.a.yw, ~(u_input.a.wx >> (vec2<u32>(14188u, 4294967295u) % vec2<u32>(32u))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(var_0.c.x)));
}

