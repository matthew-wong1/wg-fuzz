struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec2<f32> {
    global0 = arg_1;
    var var_0 = vec3<f32>(arg_0.a.x, _wgslsmith_f_op_f32(sign(-1051f)), -483f);
    var var_1 = select(_wgslsmith_div_vec3_i32(min(u_input.b.xxz, _wgslsmith_div_vec3_i32(vec3<i32>(-1041i, -2147483647i, 2147483647i), ~u_input.b.wxy)), firstTrailingBit(u_input.b.ywy)), arg_0.b.xyy, vec3<bool>(select(true, all(vec4<bool>(true, false, true, false)) | false, select(true, true, true)), true, true));
    var var_2 = ~(~(~arg_0.c.x));
    let var_3 = Struct_3(firstTrailingBit(0u), arg_0.b.x);
    return var_0.yx;
}

fn func_2() -> vec2<f32> {
    let var_0 = Struct_3(_wgslsmith_sub_u32(~abs(u_input.e.x), firstTrailingBit(_wgslsmith_mult_u32(0u, 0u))) >> (~u_input.e.x % 32u), u_input.d.x);
    global0 = u_input.b.x;
    var var_1 = u_input.e.x;
    var_1 = 16811u;
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(trunc(-612f)), 1000f), vec2<f32>(-367f, _wgslsmith_f_op_f32(672f + 1455f)))), _wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec2<f32>(962f, -1050f), ~vec4<i32>(-10223i, 1i, -43328i, u_input.d.x), vec4<u32>(4294967295u, var_0.a, 43597u, 4294967295u)), var_0.b)))), abs(vec4<i32>(var_0.b >> (var_0.a % 32u), abs(var_0.b), u_input.d.x >> (1u % 32u), 1i)) >> (~abs(select(u_input.e, vec4<u32>(3380u, 6018u, 0u, 1u), true)) % vec4<u32>(32u)), ~min(abs(u_input.e), vec4<u32>(var_0.a, abs(64088u), 5709u, 33634u)));
    return _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x * var_2.a.x)), _wgslsmith_f_op_f32(floor(var_2.a.x))))));
}

fn func_4(arg_0: vec2<f32>) -> Struct_2 {
    global0 = -1i;
    var var_0 = _wgslsmith_f_op_f32(arg_0.x + -893f);
    var var_1 = (true & select(1u > u_input.e.x, !any(vec2<bool>(true, false)), -2147483647i > _wgslsmith_mod_i32(16238i, u_input.d.x))) || (_wgslsmith_f_op_f32(round(-934f)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1476f, _wgslsmith_f_op_f32(1003f * -546f)))));
    let var_2 = _wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(_wgslsmith_add_u32(33947u, 74083u), ~_wgslsmith_sub_u32(u_input.a.x, 3456u))), u_input.e.wy);
    var_0 = -248f;
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0 * arg_0) - vec2<f32>(arg_0.x, arg_0.x)))), _wgslsmith_sub_vec4_i32(u_input.b, u_input.b), _wgslsmith_clamp_vec4_u32(select(u_input.e, select(vec4<u32>(u_input.e.x, 1u, 1u, 4294967295u), u_input.e, true), vec4<bool>(true, true, true, true)), vec4<u32>(1u, firstLeadingBit(u_input.a.x), var_2.x, ~var_2.x), u_input.e)));
}

fn func_1() -> f32 {
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1193f, -1042f) * _wgslsmith_f_op_vec2_f32(func_2()))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-836f, -120f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-542f, -960f)))))));
    global0 = ~(~u_input.d.x);
    let var_1 = select(vec4<i32>(firstLeadingBit(_wgslsmith_add_i32(_wgslsmith_add_i32(u_input.b.x, var_0.a.b.x), var_0.a.b.x)), _wgslsmith_clamp_i32(0i, _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-31237i, u_input.b.x, 0i, 0i)), func_4(vec2<f32>(-454f, 102f)).a.b), var_0.a.b.x), var_0.a.b.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.b.yxw, vec3<i32>(var_0.a.b.x, -34562i, -1i)), u_input.b.x) ^ ~(var_0.a.b.x | var_0.a.b.x)), ~_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.b, u_input.b, vec4<i32>(-8802i, var_0.a.b.x, 49659i, var_0.a.b.x)), vec4<i32>(-12438i, u_input.d.x, u_input.d.x, 2147483647i), vec4<i32>(26881i, 1i, var_0.a.b.x, 8933i) ^ var_0.a.b), var_0.a.b), ~(~1i) == _wgslsmith_mod_i32(var_0.a.b.x, ~u_input.d.x));
    global0 = ~0i;
    global0 = ~(countOneBits(u_input.d.x) << (firstLeadingBit(min(34762u, 15413u)) % 32u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(var_0.a, 70667i)).x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(abs(-1077f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(round(1f))))), -1i, vec2<i32>(1i, ~u_input.d.x) ^ (-u_input.b.xz ^ max(~vec2<i32>(-1i, u_input.d.x), ~vec2<i32>(u_input.b.x, u_input.d.x))), 926f);
}

