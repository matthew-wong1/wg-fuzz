struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: u32,
    d: bool,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<vec2<i32>, 1>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: bool) -> vec4<bool> {
    return vec4<bool>(true, true, !arg_2, true || all(!vec4<bool>(false, true, arg_2, arg_2)));
}

fn func_3() -> vec3<f32> {
    global0 = u_input.b.x;
    let var_0 = all(vec4<bool>(select(false, any(func_2(vec3<i32>(u_input.d.x, 24407i, -2147483647i), u_input.c.xwy, true)), !select(true, true, true)), func_2(vec3<i32>(-56522i, _wgslsmith_add_i32(u_input.d.x, 2178i), u_input.c.x), max(max(vec3<i32>(-2147483647i, 47841i, 8971i), u_input.c.yyy), abs(u_input.c.wyy)), true).x, false & select(true, true, true), 0u <= _wgslsmith_div_u32(~u_input.a, 52323u)));
    var var_1 = vec3<f32>(1f, 1193f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1212f, 170f)), _wgslsmith_f_op_f32(-126f * 1228f)) * 447f)));
    let var_2 = select(any(!vec3<bool>(true, any(vec2<bool>(false, var_0)), true)), false, -u_input.e.x < (u_input.e.x ^ u_input.c.x));
    let var_3 = Struct_2(vec2<u32>(0u, max(~1u, _wgslsmith_div_u32(_wgslsmith_mod_u32(72419u, 26946u), 1u))), Struct_1(u_input.a, 13158i, false, u_input.a), _wgslsmith_clamp_i32(-14259i, 0i, 8774i), select(17259u, ~_wgslsmith_div_u32(1u, 8603u), !(!(!var_2))));
    return _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.x)))), var_1.x, var_1.x), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1090f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.x))), var_1.x))));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<u32>) -> bool {
    var var_0 = 0i;
    global0 = 1u;
    var var_1 = !func_2(~(~vec3<i32>(u_input.d.x, u_input.c.x, 33662i)), u_input.d.zyx, true);
    var var_2 = Struct_4(Struct_2(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, arg_1.x)), vec2<u32>(u_input.a, arg_1.x)), abs(arg_1.zy)), Struct_1(u_input.a, 30075i, !(!var_1.x), arg_1.x), u_input.c.x, arg_1.x), _wgslsmith_dot_vec2_u32(min(min(arg_1.zx, vec2<u32>(45289u, arg_1.x)) << (vec2<u32>(arg_1.x, u_input.b.x) % vec2<u32>(32u)), u_input.b), _wgslsmith_div_vec2_u32(~arg_1.yx, ~abs(arg_1.xx))), arg_1.x, var_1.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, arg_0.x, -1786f)))) * _wgslsmith_f_op_vec3_f32(func_3()))));
    var_1 = select(!func_2(vec3<i32>(_wgslsmith_sub_i32(var_2.a.b.b, var_2.a.b.b), _wgslsmith_mod_i32(1i, -3896i), -27932i), max(min(u_input.c.yxx, u_input.d.wyw), select(u_input.d.zww, u_input.c.zyw, vec3<bool>(var_2.a.b.c, true, var_1.x))), false), select(vec4<bool>(any(var_1.wyx), all(select(vec3<bool>(true, false, var_2.d), vec3<bool>(var_2.a.b.c, var_2.d, true), true)), (1u <= var_2.b) && true, select(false, any(vec2<bool>(false, true)), true)), vec4<bool>(!(!var_2.a.b.c), func_2(u_input.c.ywy << (arg_1 % vec3<u32>(32u)), vec3<i32>(var_2.a.b.b, 2147483647i, u_input.d.x), true).x, true, func_2(select(u_input.d.ywx, u_input.c.zxy, vec3<bool>(var_1.x, var_2.d, var_1.x)), -u_input.c.ywx, false).x), func_2(u_input.d.wyx, u_input.c.yzw, true)), false);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.b.x;
    global0 = firstTrailingBit(_wgslsmith_add_u32(countOneBits(u_input.b.x) >> (~firstLeadingBit(u_input.b.x) % 32u), ~(~u_input.b.x)));
    var var_0 = Struct_3(select(select(vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(false, false)), true, true), true), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false)), !vec3<bool>(func_1(vec2<f32>(-1718f, -613f), vec3<u32>(4294967295u, 32790u, 0u)), true, false)), Struct_2(_wgslsmith_mult_vec2_u32(max(select(vec2<u32>(u_input.a, u_input.b.x), vec2<u32>(1u, 51490u), vec2<bool>(false, true)), ~vec2<u32>(u_input.a, u_input.b.x)), u_input.b), Struct_1(u_input.a, 38904i, func_2(_wgslsmith_sub_vec3_i32(u_input.d.yyy, vec3<i32>(-2147483647i, u_input.d.x, u_input.d.x)), vec3<i32>(0i, u_input.e.x, -2147483647i), select(true, false, true)).x, ~(0u << (u_input.b.x % 32u))), u_input.c.x, u_input.a), Struct_2(_wgslsmith_mult_vec2_u32(vec2<u32>(~4294967295u, 51448u), select(~u_input.b, vec2<u32>(0u, u_input.b.x), true)), Struct_1((u_input.b.x & 0u) ^ ~4294967295u, _wgslsmith_mod_i32(u_input.d.x, -u_input.c.x), true, 4294967295u), ~(~u_input.e.x), 59318u), Struct_2(vec2<u32>(u_input.a, 7093u), Struct_1(~1u, (i32(-1i) * -1i) ^ (1i & u_input.e.x), true, 0u), -15401i, max(min(4294967295u, u_input.a), ~u_input.a)));
    global0 = (_wgslsmith_clamp_u32(1u, reverseBits(u_input.b.x << (u_input.b.x % 32u)), min(0u, var_0.c.a.x)) >> (~_wgslsmith_clamp_u32(12893u | u_input.a, ~4294967295u, 1u) % 32u)) >> (select(_wgslsmith_mod_u32(firstTrailingBit(~u_input.a), 54331u), ~(~u_input.b.x), var_0.b.b.c) % 32u);
    var var_1 = var_0.a.x;
    global1 = array<vec2<i32>, 1>();
    let var_2 = select(var_0.c.b.c, false, false);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.yxw);
}

