struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 20>;

var<private> global1: array<bool, 31> = array<bool, 31>(true, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, true, true, true, true, false, true, true, true, true, true, false, true, false);

var<private> global2: Struct_2;

var<private> global3: bool = false;

var<private> global4: array<bool, 21> = array<bool, 21>(true, false, false, true, false, true, false, true, false, true, false, true, false, false, true, true, true, false, false, false, false);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec4<i32> {
    let var_0 = ~global2.a;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(1015f, 670f)), -1338f) - vec2<f32>(-227f, _wgslsmith_f_op_f32(-979f + 2064f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(539f, -1418f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, -133f))), global0[_wgslsmith_index_u32(global2.b.d, 20u)])))));
    let var_2 = Struct_2(23709i, global2.b);
    var var_3 = var_2.b.c;
    let var_4 = vec3<bool>(false, global1[_wgslsmith_index_u32(firstLeadingBit(global2.b.d) & min(var_2.b.d, _wgslsmith_mult_u32(45981u, 0u) << (var_2.b.d % 32u)), 31u)], any(vec4<bool>(false, u_input.c <= ~u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(15554i, -2147483647i, -23226i, 2147483647i), vec4<i32>(var_2.a, -31276i, var_2.a, -25456i)) > ~33397i, all(select(vec3<bool>(global2.b.b, false, true), vec3<bool>(var_2.b.b, true, true), false)))));
    return vec4<i32>(~40750i, 1i, i32(-1i) * -18085i, abs(~(-(~var_2.b.c))));
}

fn func_2() -> Struct_1 {
    global4 = array<bool, 21>();
    let var_0 = func_3();
    var var_1 = vec3<bool>(!(!global2.b.a.x), false, false);
    var var_2 = Struct_2(var_0.x, global2.b);
    global1 = array<bool, 31>();
    return global2.b;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>) -> bool {
    global4 = array<bool, 21>();
    global1 = array<bool, 31>();
    var var_0 = -788f;
    global4 = array<bool, 21>();
    let var_1 = vec3<i32>(-(-(global2.b.c >> (32908u % 32u)) << (u_input.d % 32u)), arg_0.b.c, -1i);
    return select(false, !(!select(func_2().b, all(vec4<bool>(false, true, global1[_wgslsmith_index_u32(0u, 31u)], global2.b.a.x)), all(vec2<bool>(false, false)))), false);
}

fn func_1(arg_0: u32, arg_1: u32) -> Struct_2 {
    global3 = func_4(Struct_2(-43299i, func_2()), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(step(-683f, _wgslsmith_f_op_f32(-806f - 855f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(307f)) - -191f), _wgslsmith_f_op_f32(sign(1f))))));
    global1 = array<bool, 31>();
    var var_0 = vec4<bool>(global4[_wgslsmith_index_u32(abs(36229u), 21u)], all(select(func_2().a.xz, !(!global2.b.a.zx), _wgslsmith_mult_i32(1i, 2147483647i) != _wgslsmith_clamp_i32(0i, global2.b.c, -41525i))), false, global1[_wgslsmith_index_u32(firstTrailingBit(~_wgslsmith_dot_vec4_u32(~u_input.e, u_input.e)), 31u)]);
    global3 = !global4[_wgslsmith_index_u32(func_2().d, 21u)];
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2094f, 657f)))))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2045f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -809f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(700f)) + 136f)))));
    return Struct_2(global2.b.c, global2.b);
}

fn func_5(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: u32, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = vec3<f32>(-761f, _wgslsmith_f_op_f32(f32(-1f) * -1133f), 1492f);
    let var_1 = arg_0;
    var var_2 = global2.b.a.x;
    var_2 = arg_0.b.b;
    var var_3 = func_1(_wgslsmith_dot_vec3_u32(~u_input.e.wwy, u_input.e.xzz) ^ global2.b.d, _wgslsmith_sub_u32(firstTrailingBit(~1u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b.d, u_input.c, arg_2, 66913u), vec4<u32>(3156u, arg_1.x, 1u, 11608u))));
    return var_3.b;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: f32) -> u32 {
    return arg_1.b.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec2_u32(u_input.b, vec2<u32>(42902u, 14262u));
    global1 = array<bool, 31>();
    var var_1 = (vec3<i32>(-1i) * -vec3<i32>(21783i, ~2147483647i, 1i)) << (_wgslsmith_mod_vec3_u32(abs(max(vec3<u32>(global2.b.d, 0u, global2.b.d), vec3<u32>(1u, 0u, 58956u))), vec3<u32>(u_input.e.x, _wgslsmith_sub_u32(1u, 1u), u_input.a)) % vec3<u32>(32u));
    var_1 = _wgslsmith_div_vec3_i32(vec3<i32>(20673i, -31860i, abs(~var_1.x) ^ global2.a), -vec3<i32>(-_wgslsmith_div_i32(-26992i, -29038i), -global2.a, _wgslsmith_sub_i32(-1i, -994i)));
    let var_2 = true;
    var_1 = vec3<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(var_1.x, firstLeadingBit(global2.b.c)), _wgslsmith_dot_vec3_i32(vec3<i32>(global2.a, -13527i, var_1.x) ^ vec3<i32>(-12211i, 3851i, global2.b.c), abs(vec3<i32>(var_1.x, -15433i, -2147483647i)))) << (((_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 48242u, global2.b.d, 0u), vec4<u32>(global2.b.d, global2.b.d, u_input.b.x, u_input.e.x)) << (~global2.b.d % 32u)) >> (4294967295u % 32u)) % 32u), -2147483647i, min(countOneBits(~(var_1.x | 2147483647i)), -var_1.x));
    var var_3 = Struct_1(vec3<bool>(var_2, global1[_wgslsmith_index_u32(~(~(~global2.b.d)), 31u)], var_2), !any(vec2<bool>(all(vec4<bool>(false, false, true, global2.b.a.x)), true)), ~var_1.x, func_6(func_5(func_1(140047u, ~u_input.e.x), u_input.e, ~(~var_0.x), reverseBits(min(vec3<i32>(var_1.x, global2.b.c, var_1.x), vec3<i32>(var_1.x, 55781i, -817i)))), Struct_2(global2.a, Struct_1(vec3<bool>(false, false, true), true, max(global2.b.c, 17653i), 4294967295u)), global2.b.a.xx, 133f));
    var var_4 = vec4<bool>(func_2().b, true, false, (func_1(_wgslsmith_sub_u32(1u, var_3.d), ~0u).b.b | !global4[_wgslsmith_index_u32(firstTrailingBit(global2.b.d), 21u)]) | var_2);
    var var_5 = Struct_2(var_1.x, global2.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(var_5.a >> (countOneBits(u_input.b.x) % 32u), var_5.b.c), firstTrailingBit(-(~var_1.xz)), var_1.zz, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-798f, -609f))))))));
}

