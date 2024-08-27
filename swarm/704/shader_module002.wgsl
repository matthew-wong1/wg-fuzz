struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec2<bool>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: u32 = 14986u;

var<private> global2: vec2<u32> = vec2<u32>(4294967295u, 31270u);

var<private> global3: Struct_1 = Struct_1(vec4<i32>(5086i, 48938i, -19141i, 1i), -259f, vec2<bool>(true, true), 545f, false);

var<private> global4: array<vec2<i32>, 8>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: f32) -> vec3<bool> {
    global2 = _wgslsmith_div_vec2_u32(reverseBits(max(arg_1, ~arg_1 | reverseBits(arg_1))), ~(~vec2<u32>(_wgslsmith_div_u32(30346u, 1u), 53793u)));
    let var_0 = _wgslsmith_div_vec4_u32(~vec4<u32>(8285u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, 0u, 4585u, 69957u), vec4<u32>(2645u, arg_1.x, arg_1.x, arg_1.x)), abs(abs(arg_1.x)), global2.x), ~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.x, global2.x, 0u, global2.x), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, global2.x, 1u, arg_1.x), vec4<u32>(1u, arg_1.x, arg_1.x, 1u))) >> (_wgslsmith_clamp_vec4_u32(abs(max(vec4<u32>(arg_1.x, 77570u, 16071u, arg_1.x), vec4<u32>(arg_1.x, arg_1.x, 1u, 1u))), reverseBits(vec4<u32>(4294967295u, arg_1.x, global2.x, global2.x) & vec4<u32>(1u, arg_1.x, arg_1.x, 115668u)), vec4<u32>(arg_1.x << (4294967295u % 32u), _wgslsmith_sub_u32(global2.x, 53745u), global2.x, _wgslsmith_div_u32(global2.x, arg_1.x))) % vec4<u32>(32u)));
    var var_1 = Struct_1(select(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, u_input.b, 27518i), vec4<i32>(u_input.b, u_input.a.x, 67608i, global3.a.x)), global3.a, false) >> (~(_wgslsmith_mod_vec4_u32(var_0, var_0) | (var_0 & var_0)) % vec4<u32>(32u)), arg_2, arg_0.zy, 873f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1887f, _wgslsmith_f_op_f32(floor(160f)))), _wgslsmith_f_op_f32(f32(-1f) * -956f))) > arg_2);
    global1 = var_0.x;
    var var_2 = Struct_2(Struct_1(vec4<i32>(u_input.b, global3.a.x, -_wgslsmith_mod_i32(var_1.a.x, global3.a.x), _wgslsmith_mod_i32(-var_1.a.x, -2147483647i)), _wgslsmith_f_op_f32(global3.b * _wgslsmith_f_op_f32(round(global3.b))), global3.c, var_1.b, arg_0.x), Struct_1(vec4<i32>(global3.a.x, 3836i, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(62018i, 71728i, u_input.a.x, u_input.a.x)), global3.a), 1i), var_1.b, !arg_0.yz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2 - arg_2)))), !(1u <= (arg_1.x ^ arg_1.x))), arg_1.x);
    return vec3<bool>(global3.e, true, any(select(vec4<bool>(true, false, true, var_2.b.c.x), !select(vec4<bool>(false, true, var_2.a.c.x, var_2.b.c.x), vec4<bool>(arg_0.x, global3.e, global3.e, true), vec4<bool>(false, true, var_1.c.x, true)), any(select(vec4<bool>(var_1.e, true, true, false), vec4<bool>(global3.c.x, false, var_1.c.x, true), vec4<bool>(arg_0.x, var_1.e, var_2.a.e, false))))));
}

fn func_2() -> Struct_1 {
    let var_0 = (global3.a.x << (~abs(4294967295u) % 32u)) ^ (firstLeadingBit(_wgslsmith_add_i32(global3.a.x, -global3.a.x)) >> (~max(6393u, ~global2.x) % 32u));
    let var_1 = select(func_3(select(select(vec3<bool>(true, true, true), vec3<bool>(global3.c.x, false, true), select(vec3<bool>(true, global3.e, true), vec3<bool>(false, global3.e, global3.c.x), true)), vec3<bool>(!global3.c.x, true, false), -1i <= _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, global3.a.x), global3.a.zx)), vec2<u32>(global2.x, 3966u), -1000f), select(vec3<bool>(any(!vec2<bool>(global3.c.x, global3.e)), global3.e, any(select(vec4<bool>(true, true, global3.c.x, global3.c.x), vec4<bool>(global3.c.x, global3.e, false, global3.c.x), vec4<bool>(false, true, true, global3.c.x)))), !vec3<bool>(true, global3.c.x, all(vec4<bool>(global3.e, global3.e, true, true))), func_3(select(vec3<bool>(true, global3.e, global3.e), func_3(vec3<bool>(true, true, true), vec2<u32>(23431u, global2.x), global3.b), global3.c.x), firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(global2.x, 18122u), vec2<u32>(global2.x, 9790u))), _wgslsmith_f_op_f32(global3.d * global3.d))), reverseBits(23634u) < global2.x);
    var var_2 = ~(~select(abs(vec2<u32>(4294967295u, global2.x)) | _wgslsmith_div_vec2_u32(vec2<u32>(1u, global2.x), vec2<u32>(global2.x, 53574u)), ~vec2<u32>(1u, 1u), !(!var_1.xy)));
    var var_3 = ~_wgslsmith_mult_u32(max(min(global2.x, _wgslsmith_dot_vec2_u32(vec2<u32>(26292u, global2.x), vec2<u32>(global2.x, global2.x))), 32703u), ~global2.x);
    return Struct_1(_wgslsmith_add_vec4_i32(min(vec4<i32>(~global3.a.x, abs(-2147483647i), var_0, u_input.a.x >> (31122u % 32u)), ~vec4<i32>(u_input.b, -2147483647i, 0i, u_input.b)), max(global3.a, vec4<i32>(~0i, _wgslsmith_mod_i32(56650i, u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, -2147483647i, -33499i), vec3<i32>(u_input.a.x, global3.a.x, -3041i)), u_input.b >> (1u % 32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -453f)))), var_1.zx, -408f, !(!all(!vec2<bool>(var_1.x, var_1.x))));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: i32, arg_3: vec2<i32>) -> f32 {
    let var_0 = 6294i;
    let var_1 = arg_1.a.c.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.b.b, -381f, arg_1.a.d, arg_1.a.d)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.d, global3.d, 413f, -1000f)))))));
    let var_3 = func_2();
    global1 = ~(~_wgslsmith_sub_u32(firstLeadingBit(reverseBits(arg_0.x)), ~min(arg_0.x, arg_0.x)));
    return var_3.b;
}

fn func_4(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = func_2().a.x;
    let var_1 = Struct_2(Struct_1(-select(func_2().a, global3.a, global3.e), global3.d, select(global3.c, vec2<bool>(global3.e, false || global3.e), func_2().c), global3.d, global3.c.x && global3.c.x), Struct_1(abs(vec4<i32>(~1i, 7460i, u_input.a.x & -2147483647i, -global3.a.x)), 1f, global3.c, 587f, all(func_3(!vec3<bool>(true, global3.c.x, true), vec2<u32>(global2.x, global2.x), _wgslsmith_f_op_f32(499f + -755f)))), 22230u);
    let var_2 = ~vec2<u32>(global2.x, global2.x);
    global1 = ~var_1.c;
    global3 = Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(~(-18990i), u_input.b, countOneBits(global3.a.x), -11522i), -global3.a) ^ var_1.a.a, func_2().d, !global3.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3.d))) - 666f))), true);
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(972f * global3.b), _wgslsmith_f_op_f32(func_1(vec3<u32>(0u, 45286u, global2.x), Struct_2(Struct_1(global3.a, global3.d, global3.c, 1053f, global3.e), Struct_1(vec4<i32>(u_input.b, -43017i, u_input.a.x, -2147483647i), 975f, vec2<bool>(global3.e, true), 881f, global3.e), 2631u), -3786i, global4[_wgslsmith_index_u32(4294967295u, 8u)])), _wgslsmith_f_op_f32(-global3.d)))), Struct_1(global3.a, -235f, !global3.c, _wgslsmith_f_op_f32(global3.d + _wgslsmith_f_op_f32(global3.d - func_2().d)), any(select(select(vec4<bool>(true, true, global3.c.x, false), vec4<bool>(false, global3.e, true, true), global3.e), !vec4<bool>(global3.e, global3.c.x, global3.e, global3.c.x), global3.e && global3.c.x))), _wgslsmith_add_u32(global2.x, global2.x) | _wgslsmith_sub_u32(71429u, 20190u));
    let var_1 = false;
    global1 = global2.x ^ var_0.c;
    global1 = ~_wgslsmith_mult_u32(0u, var_0.c);
    let var_2 = func_3(func_3(!(!vec3<bool>(true, false, var_1)), ~(vec2<u32>(79076u, global2.x) >> (~vec2<u32>(global2.x, 98857u) % vec2<u32>(32u))), global3.b), select(vec2<u32>(min(global2.x & var_0.c, _wgslsmith_div_u32(13052u, global2.x)), var_0.c), max(vec2<u32>(4294967295u, 81959u), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(48723u, var_0.c, 0u, 18711u), vec4<u32>(31625u, var_0.c, global2.x, 81257u)), 1u & global2.x)), vec2<bool>(global3.e, !all(vec3<bool>(true, false, var_0.a.e)))), global3.d).x;
    let x = u_input.a;
    s_output = StorageBuffer(~min(vec2<i32>(-global3.a.x, global3.a.x & -36314i), _wgslsmith_add_vec2_i32(global4[_wgslsmith_index_u32(4294967295u, 8u)], global4[_wgslsmith_index_u32(var_0.c, 8u)] ^ global4[_wgslsmith_index_u32(global2.x, 8u)])), _wgslsmith_div_u32(firstTrailingBit(var_0.c), max(~(~global2.x), ~var_0.c)));
}

