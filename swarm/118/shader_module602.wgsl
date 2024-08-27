struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 25>;

var<private> global1: array<vec4<f32>, 1>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32) -> u32 {
    return ~u_input.d.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<bool>) -> vec3<u32> {
    global0 = array<vec3<u32>, 25>();
    let var_0 = any(select(!arg_1.zyx, arg_1.wwx, !(func_3(-977f) == u_input.a)));
    global1 = array<vec4<f32>, 1>();
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1386f);
    var var_2 = Struct_1(~(_wgslsmith_clamp_vec4_i32(~u_input.c, arg_0, -u_input.c) << ((firstTrailingBit(vec4<u32>(16865u, 4294967295u, 4294967295u, u_input.d.x)) | vec4<u32>(51631u, 99040u, u_input.d.x, u_input.a)) % vec4<u32>(32u))));
    return u_input.d;
}

fn func_4(arg_0: vec3<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(655f, _wgslsmith_f_op_f32(min(-823f, _wgslsmith_f_op_f32(517f - _wgslsmith_f_op_f32(1449f + -1447f)))))), 911f);
    let var_1 = Struct_1(vec4<i32>(_wgslsmith_dot_vec3_i32(arg_0, vec3<i32>(min(arg_0.x, 0i), _wgslsmith_mod_i32(arg_0.x, arg_0.x), _wgslsmith_mult_i32(arg_0.x, -2147483647i))), 2147483647i, ~1i, firstLeadingBit(-1i)));
    var var_2 = Struct_2(countOneBits(~u_input.a), select(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), false)), select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(false, false)), select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(false, false)), false), any(vec3<bool>(true, true, true))), Struct_1(~u_input.c));
    let var_3 = Struct_1(~u_input.c);
    var var_4 = Struct_2(select(var_2.a, ~0u, var_2.b.x), !var_2.b, var_2.c);
    return Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(step(2398f, 654f))) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0, var_0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 1029f)))))), Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 53200u, 1u, 23852u) | vec4<u32>(2927u, u_input.d.x, var_2.a, 1u), ~vec4<u32>(var_2.a, 111524u, 4294967295u, 1u) >> (vec4<u32>(1u, 32335u, u_input.a, u_input.a) % vec4<u32>(32u))), select(vec2<bool>(true, false), !select(vec2<bool>(true, var_4.b.x), var_2.b, true), false), Struct_1(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, var_2.c.a.x, var_3.a.x, u_input.e), var_1.a), -vec4<i32>(var_3.a.x, var_4.c.a.x, var_3.a.x, 13055i)))), Struct_2(11476u, vec2<bool>(var_2.b.x & any(vec3<bool>(true, var_4.b.x, var_4.b.x)), true), var_4.c));
}

fn func_1(arg_0: Struct_3) -> vec3<f32> {
    global1 = array<vec4<f32>, 1>();
    var var_0 = 1u;
    let var_1 = !vec3<bool>(arg_0.b.b.x, all(vec4<bool>(true, true, true, true)), (countOneBits(arg_0.b.c.a.x) <= _wgslsmith_add_i32(-26031i, arg_0.b.c.a.x)) || arg_0.c.b.x);
    let var_2 = -(i32(-1i) * -2147483647i);
    var var_3 = func_4(vec3<i32>(u_input.b.x, -(~u_input.b.x), 1i) >> (func_2(_wgslsmith_sub_vec4_i32(arg_0.b.c.a, u_input.c), vec4<bool>(false, any(var_1.zz), arg_0.a.x <= arg_0.a.x, true)) % vec3<u32>(32u)));
    return vec3<f32>(216f, arg_0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-283f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_3.a.x + arg_0.a.x))), -635f <= var_3.a.x)), arg_0.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1f + -408f), -654f) * -1995f);
    let var_1 = true;
    global1 = array<vec4<f32>, 1>();
    var var_2 = true;
    var var_3 = var_1;
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(875f - -134f), -970f)))), _wgslsmith_f_op_f32(f32(-1f) * -770f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -378f)))) - _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(1141f * _wgslsmith_f_op_f32(sign(-535f))))));
    global0 = array<vec3<u32>, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.x) - _wgslsmith_f_op_f32(var_4.x * var_4.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_4.x))), _wgslsmith_f_op_f32(var_4.x * _wgslsmith_f_op_f32(sign(-1000f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-267f, -407f, -961f) * _wgslsmith_f_op_vec3_f32(-var_4)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.x, var_4.x, 464f)) + _wgslsmith_f_op_vec3_f32(func_1(Struct_3(vec2<f32>(var_4.x, 604f), Struct_2(u_input.a, vec2<bool>(false, false), Struct_1(u_input.c)), Struct_2(u_input.d.x, vec2<bool>(true, true), Struct_1(vec4<i32>(u_input.e, 50556i, u_input.e, u_input.e)))))))), select(_wgslsmith_f_op_f32(-var_4.x) > -1120f, any(vec3<bool>(false, false, false)), true))), ~(-min(countOneBits(u_input.b), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c.x, 29524i, u_input.b.x), u_input.b, u_input.b))), ~max(min(u_input.e, u_input.e) << (firstTrailingBit(u_input.d.x) % 32u), 1i), _wgslsmith_sub_u32(30107u, u_input.a), var_4.xx);
}

