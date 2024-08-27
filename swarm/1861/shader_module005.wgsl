struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec2<f32>,
    d: vec2<i32>,
    e: vec4<f32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 7>;

var<private> global1: bool;

var<private> global2: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(reverseBits(min(firstLeadingBit(global2.a.b.x), _wgslsmith_sub_u32(4663u, 0u)) | select(global2.a.b.x, 1u, true || global2.a.c.x)), ~53441u, 3667u), 7u)];
    var var_1 = u_input.a.x != (i32(-1i) * -u_input.b.x);
    let var_2 = _wgslsmith_add_u32(global2.a.b.x, 4294967295u);
    global1 = any(select(vec2<bool>(global2.a.a.x, global2.a.a.x), vec2<bool>(global2.a.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f) > var_0.x), vec2<bool>(!any(vec4<bool>(global2.a.a.x, global2.a.a.x, true, global2.a.a.x)), (44646u ^ global2.a.b.x) > _wgslsmith_sub_u32(1u, var_2))));
    var var_3 = Struct_3(Struct_2(global2.a), vec3<bool>(global2.a.c.x, true, any(global2.a.a)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, 925f), var_0.yz)), u_input.a.zy, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, 349f, 478f, -468f), vec4<f32>(813f, 754f, var_0.x, var_0.x), global2.a.c)))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, var_0.x, var_0.x, _wgslsmith_f_op_f32(select(var_0.x, var_0.x, false))), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(var_0.x - var_0.x), -1414f), !global2.a.c))));
    return var_3.d.x;
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_4(false, global2.a, global2.a.b.x, ~vec3<i32>(func_3(), 11509i, min(u_input.a.x >> (42976u % 32u), reverseBits(u_input.b.x))));
    var_0 = Struct_4(-2147483647i == -_wgslsmith_clamp_i32(-13015i, reverseBits(-31415i), var_0.d.x), Struct_1(!var_0.b.a, firstLeadingBit(global2.a.b), select(var_0.b.c, !vec4<bool>(global2.a.c.x, true, true, false), all(global2.a.c.yx))), firstTrailingBit(_wgslsmith_div_u32(45508u, ~var_0.b.b.x)), -vec3<i32>(u_input.b.x, 0i, -34911i));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1110f, 553f))))))) * vec2<f32>(1f, 1f));
    global0 = array<vec3<f32>, 7>();
    let var_2 = _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(~(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 64208u, global2.a.b.x, 61536u), vec4<u32>(1u, 1u, 24348u, global2.a.b.x))), select(vec4<u32>(1u, 93021u, var_0.b.b.x, var_0.c), vec4<u32>(firstLeadingBit(var_0.b.b.x), ~global2.a.b.x, ~10660u, 59160u), select(select(vec4<bool>(false, false, true, global2.a.a.x), vec4<bool>(var_0.b.c.x, global2.a.a.x, false, global2.a.a.x), false), select(var_0.b.c, vec4<bool>(var_0.b.c.x, var_0.a, false, var_0.b.c.x), global2.a.c.x), all(vec4<bool>(true, false, global2.a.c.x, var_0.a)))), ~abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(global2.a.b.x, 0u, 39283u, 57817u), vec4<u32>(4294967295u, 0u, global2.a.b.x, global2.a.b.x), vec4<u32>(5453u, 4294967295u, var_0.b.b.x, 7615u)))), vec4<u32>(_wgslsmith_mod_u32(var_0.b.b.x, _wgslsmith_mod_u32(var_0.c >> (29457u % 32u), var_0.c)), _wgslsmith_clamp_u32(~(~global2.a.b.x), abs(_wgslsmith_div_u32(4294967295u, var_0.c)), global2.a.b.x), global2.a.b.x, ~_wgslsmith_clamp_u32(~var_0.c, 0u, var_0.b.b.x)));
    return Struct_4(all(select(vec4<bool>(global2.a.c.x, false, global2.a.a.x || global2.a.a.x, all(var_0.b.c)), select(vec4<bool>(false, global2.a.a.x, true, global2.a.a.x), vec4<bool>(global2.a.a.x, true, var_0.a, var_0.b.a.x), vec4<bool>(true, true, true, true)), !(4294967295u < var_2.x))), Struct_1(select(!(!global2.a.c.xx), !(!global2.a.c.yy), !global2.a.a.x), global2.a.b, vec4<bool>(!any(vec2<bool>(var_0.b.a.x, var_0.b.a.x)), any(!var_0.b.c), var_0.b.c.x, all(vec2<bool>(true, var_0.a)))), countOneBits(1u), vec3<i32>(i32(-1i) * -3907i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(var_0.d.x, u_input.a.x), func_3() >> (~1u % 32u), ~var_0.d.x), countOneBits(countOneBits(select(-1i, u_input.b.x, global2.a.a.x)))));
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: vec3<f32>) -> Struct_4 {
    var var_0 = global2.a;
    global1 = arg_0.b.a.x;
    global1 = all(!func_2().b.c);
    let var_1 = true;
    let var_2 = vec4<bool>(var_0.c.x, var_1 && select(!all(vec3<bool>(true, false, true)), abs(var_0.b.x) < arg_0.c, false), all(global2.a.c.ww), all(vec2<bool>(all(!vec4<bool>(var_0.a.x, false, true, true)), true)));
    return Struct_4(true, arg_0.b, 1u, min(vec3<i32>(-49607i, -(arg_0.d.x >> (0u % 32u)), -u_input.a.x), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i >> (arg_0.c % 32u), 2147483647i, _wgslsmith_mod_i32(u_input.a.x, u_input.b.x)), vec3<i32>(arg_0.d.x, _wgslsmith_add_i32(-5308i, u_input.b.x), -32210i))));
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: vec3<i32>) -> vec2<bool> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), -1000f);
    let var_1 = func_4(func_2(), -1000f, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-653f - 967f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -688f)), 857f), _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(~(1u << (arg_1.a.b.x % 32u)), 7u)] * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -550f), -1324f, -1142f))));
    let var_2 = arg_1;
    global2 = Struct_2(var_2.a);
    var var_3 = vec3<u32>(1u, ~reverseBits(_wgslsmith_sub_u32(abs(47812u), 1u)), func_4(Struct_4(any(vec4<bool>(true, arg_0, true, global2.a.a.x)) & (arg_2.x > 2147483647i), var_1.b, 4294967295u, _wgslsmith_mod_vec3_i32(u_input.a, ~vec3<i32>(0i, 1i, 0i))), _wgslsmith_f_op_f32(round(704f)), _wgslsmith_f_op_vec3_f32(floor(global0[_wgslsmith_index_u32(var_1.c, 7u)]))).c);
    return var_2.a.c.yz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(global2.a.a.x, Struct_1(!select(func_1(false, Struct_2(global2.a), u_input.a), func_1(true, Struct_2(Struct_1(global2.a.c.ww, global2.a.b, vec4<bool>(global2.a.c.x, true, true, global2.a.c.x))), vec3<i32>(u_input.b.x, 1i, -13111i)), !global2.a.a), max(~_wgslsmith_sub_vec3_u32(global2.a.b, global2.a.b), reverseBits(global2.a.b)), select(!(!vec4<bool>(true, false, global2.a.a.x, false)), !func_2().b.c, !vec4<bool>(global2.a.c.x, global2.a.a.x, true, global2.a.c.x))), global2.a.b.x, _wgslsmith_add_vec3_i32(~(-u_input.a), ~u_input.a));
    let var_1 = Struct_2(Struct_1(global2.a.c.xw, ~_wgslsmith_sub_vec3_u32(~var_0.b.b, global2.a.b), global2.a.c));
    global1 = any(vec2<bool>(all(global2.a.a), false));
    let var_2 = vec2<bool>(true, true);
    let var_3 = var_1;
    let var_4 = var_0.d.x >> (~firstLeadingBit(28690u) % 32u);
    var var_5 = global2.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(169f, -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -2339f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-317f, -589f, false))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1079f) * _wgslsmith_f_op_f32(select(898f, 362f, false))))), _wgslsmith_mult_u32(105820u ^ (6330u & var_1.a.b.x), ~func_2().b.b.x), ~_wgslsmith_add_u32(1644u, var_0.c));
}

