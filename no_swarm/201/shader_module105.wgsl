struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2() -> Struct_3 {
    return Struct_3(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -106f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-733f - 613f), _wgslsmith_f_op_f32(f32(-1f) * -2247f)), _wgslsmith_f_op_f32(trunc(-1071f))), Struct_1(!(u_input.a > u_input.a))));
}

fn func_3(arg_0: Struct_4, arg_1: f32) -> vec4<u32> {
    let var_0 = func_2().a;
    var var_1 = arg_0.b;
    var var_2 = vec4<f32>(827f, -1882f, var_0.a.x, var_0.a.x);
    var var_3 = ~(i32(-1i) * -24129i);
    let var_4 = ~27068i;
    return ~(~_wgslsmith_mult_vec4_u32(select(vec4<u32>(1u, u_input.e, 4294967295u, u_input.e), vec4<u32>(u_input.d.x, u_input.d.x, u_input.e, 8149u), true) & abs(vec4<u32>(15067u, u_input.d.x, u_input.e, 53597u)), ~vec4<u32>(19391u, u_input.d.x, 4294967295u, u_input.d.x) | vec4<u32>(17604u, u_input.d.x, u_input.e, u_input.e)));
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_add_vec4_u32(~_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.d.x, u_input.e, 4294967295u, u_input.d.x), vec4<u32>(u_input.e, 9573u, u_input.e, 0u)), func_3(Struct_4(727f, func_2(), func_2().a.b), 416f)) >> (vec4<u32>(_wgslsmith_sub_u32(~min(1u, u_input.e), abs(_wgslsmith_add_u32(u_input.d.x, u_input.d.x))), min(5381u, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.e, ~u_input.e), _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.e, u_input.e), vec2<u32>(u_input.e, u_input.d.x)), u_input.d.yx)), _wgslsmith_dot_vec3_u32(u_input.d >> (~u_input.d % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(max(u_input.d, vec3<u32>(104873u, 35203u, u_input.d.x)), u_input.d))) % vec4<u32>(32u));
    let var_1 = true;
    var var_2 = ~var_0.x;
    var var_3 = 2147483647i;
    var_0 = _wgslsmith_mod_vec4_u32(~(~min(abs(vec4<u32>(u_input.d.x, 0u, u_input.e, u_input.d.x)), vec4<u32>(u_input.e, 1u, u_input.e, u_input.d.x))), abs(vec4<u32>(_wgslsmith_mod_u32(~u_input.d.x, var_0.x ^ var_0.x), _wgslsmith_mod_u32(u_input.e, 74239u), 0u, u_input.e)));
    return func_2().a.b;
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    let var_0 = vec3<bool>(arg_1, !(!(_wgslsmith_sub_i32(u_input.a, u_input.a) == ~(-1i))), arg_2.b.a);
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.a) + arg_2.a))))), func_1(Struct_3(arg_2)));
    let var_2 = var_0.x;
    var var_3 = !(!(!any(!vec3<bool>(false, var_2, false))));
    let var_4 = var_0.zy;
    return Struct_1(false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1358f, -1779f, 102f, -985f)))))));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x - var_0.x), var_0.x));
    var var_2 = Struct_3(Struct_2(var_0.yyw, func_4(_wgslsmith_f_op_f32(f32(-1f) * -714f), true, Struct_2(_wgslsmith_f_op_vec3_f32(-var_0.zxw), func_1(Struct_3(Struct_2(var_0.zyw, Struct_1(false))))))));
    let var_3 = u_input.c << (_wgslsmith_add_u32(~max(~1u, u_input.e), 1u) % 32u);
    var var_4 = select(select(select(vec3<bool>(any(vec3<bool>(var_2.a.b.a, true, false)), var_2.a.b.a, true), !(!vec3<bool>(true, var_2.a.b.a, var_2.a.b.a)), vec3<bool>(func_4(var_2.a.a.x, true, var_2.a).a, 1i != u_input.c, true)), vec3<bool>(!all(vec4<bool>(var_2.a.b.a, var_2.a.b.a, var_2.a.b.a, true)), 91859u < ~u_input.d.x, var_2.a.b.a), true), !vec3<bool>(var_2.a.b.a, func_2().a.a.x != _wgslsmith_f_op_f32(var_2.a.a.x * var_2.a.a.x), true), !var_2.a.b.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_1, ~max(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, -26904i, -1i), -u_input.b.zzx), u_input.b.zwz));
}

