struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
    c: u32,
    d: u32,
}

struct Struct_5 {
    a: vec4<u32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23> = array<bool, 23>(true, true, false, false, true, false, true, true, false, false, false, false, false, false, false, false, true, false, true, false, false, false, true);

var<private> global1: array<Struct_5, 29>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<bool> {
    global1 = array<Struct_5, 29>();
    global0 = array<bool, 23>();
    global1 = array<Struct_5, 29>();
    global0 = array<bool, 23>();
    var var_0 = u_input.b.x;
    return select(select(select(vec4<bool>(true, any(vec3<bool>(true, false, global0[_wgslsmith_index_u32(1582u, 23u)])), !global0[_wgslsmith_index_u32(u_input.b.x, 23u)], any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 23u)], global0[_wgslsmith_index_u32(47408u, 23u)]))), select(select(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 23u)], global0[_wgslsmith_index_u32(u_input.b.x, 23u)], false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 23u)], global0[_wgslsmith_index_u32(20888u, 23u)], global0[_wgslsmith_index_u32(u_input.b.x, 23u)], true), false), !vec4<bool>(global0[_wgslsmith_index_u32(0u, 23u)], true, false, false), select(false, global0[_wgslsmith_index_u32(26694u, 23u)], global0[_wgslsmith_index_u32(u_input.b.x, 23u)])), true), select(select(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 23u)], true, global0[_wgslsmith_index_u32(u_input.b.x, 23u)], true), !vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 23u)], global0[_wgslsmith_index_u32(u_input.b.x, 23u)], global0[_wgslsmith_index_u32(u_input.b.x, 23u)]), false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 23u)] && false, false, true, global0[_wgslsmith_index_u32(0u, 23u)]), !(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 23u)], global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(1u, 23u)], false))), !vec4<bool>(!global0[_wgslsmith_index_u32(47983u, 23u)], global0[_wgslsmith_index_u32(29239u, 23u)] & false, true, global0[_wgslsmith_index_u32(1u, 23u)])), select(!vec4<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(69864u, 23u)], global0[_wgslsmith_index_u32(u_input.b.x, 23u)], global0[_wgslsmith_index_u32(6113u, 23u)], global0[_wgslsmith_index_u32(u_input.b.x, 23u)])), true, all(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 23u)])), !global0[_wgslsmith_index_u32(u_input.b.x, 23u)]), vec4<bool>(all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 23u)], global0[_wgslsmith_index_u32(u_input.b.x, 23u)], global0[_wgslsmith_index_u32(u_input.b.x, 23u)])), true, any(select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(97834u, 23u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 23u)], global0[_wgslsmith_index_u32(1u, 23u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 23u)], true))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 0u) ^ vec2<u32>(36171u, u_input.b.x), _wgslsmith_clamp_vec2_u32(u_input.b.zw, u_input.b.wx, vec2<u32>(u_input.b.x, 0u))), 23u)]), true), !select(!(!vec4<bool>(true, false, global0[_wgslsmith_index_u32(862u, 23u)], false)), vec4<bool>(all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 23u)], global0[_wgslsmith_index_u32(84099u, 23u)])), global0[_wgslsmith_index_u32(~1u, 23u)], global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x), 23u)], u_input.a <= u_input.a), !(!vec4<bool>(global0[_wgslsmith_index_u32(75011u, 23u)], true, global0[_wgslsmith_index_u32(u_input.b.x, 23u)], global0[_wgslsmith_index_u32(0u, 23u)]))));
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: vec4<f32>, arg_3: i32) -> vec4<u32> {
    return u_input.b;
}

fn func_2(arg_0: vec3<u32>) -> Struct_3 {
    let var_0 = global1[_wgslsmith_index_u32(arg_0.x, 29u)];
    var var_1 = Struct_5(func_4(any(!vec3<bool>(global0[_wgslsmith_index_u32(arg_0.x, 23u)], global0[_wgslsmith_index_u32(58441u, 23u)], false)) | true, any(select(func_3(), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 23u)], true, global0[_wgslsmith_index_u32(arg_0.x, 23u)], global0[_wgslsmith_index_u32(var_0.b, 23u)]), select(vec4<bool>(false, false, false, false), vec4<bool>(true, global0[_wgslsmith_index_u32(21294u, 23u)], global0[_wgslsmith_index_u32(u_input.b.x, 23u)], global0[_wgslsmith_index_u32(arg_0.x, 23u)]), false))), vec4<f32>(_wgslsmith_f_op_f32(floor(1000f)), 124f, -483f, _wgslsmith_div_f32(-365f, -893f)), ~abs(0i)), countOneBits(var_0.b) << (~var_0.a.x % 32u));
    global1 = array<Struct_5, 29>();
    global0 = array<bool, 23>();
    let var_2 = Struct_2(!(!(!any(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 23u)], false)))));
    return Struct_3(Struct_1(-223f, 60332u, -1984i, -10503i & _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-15931i, -1i, -6935i, u_input.a)), vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a) >> (vec4<u32>(35991u, 43202u, 18924u, var_0.a.x) % vec4<u32>(32u))), var_1.a.zy), global0[_wgslsmith_index_u32(14536u, 23u)], var_2);
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_4 {
    var var_0 = func_2(vec3<u32>(_wgslsmith_clamp_u32(~arg_1.e.x >> (u_input.b.x % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b, 6266u, u_input.b.x), u_input.b.yzw), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u) & arg_1.e, ~vec2<u32>(u_input.b.x, 10674u))), abs(u_input.b.x), ~(~46348u)));
    var var_1 = func_2(vec3<u32>(_wgslsmith_mult_u32(func_2(vec3<u32>(var_0.a.b, 0u, 49360u)).a.e.x << (var_0.a.e.x % 32u), 36274u), ~0u, ~_wgslsmith_dot_vec2_u32(arg_1.e, arg_1.e) & 85200u)).a;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(671f, arg_1.a) * var_1.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.a))))))), ~min(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), ~0u), arg_1.e.x), 1i, 14120i, reverseBits(select(vec2<u32>(var_1.e.x, 52097u), ~arg_1.e, true)) | _wgslsmith_mod_vec2_u32(vec2<u32>(1958u, 41869u), ~vec2<u32>(var_0.a.b, 16970u)));
    var var_3 = 33051u;
    return Struct_4(vec2<bool>(var_0.b, true), Struct_2(false), var_0.a.e.x, 0u);
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: Struct_5) -> Struct_4 {
    var var_0 = max(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 1i, u_input.a), ~countOneBits(vec3<i32>(14413i, -12843i, u_input.a))), _wgslsmith_sub_i32(47166i, -u_input.a)), _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(-abs(vec2<i32>(-2147483647i, u_input.a)), -vec2<i32>(u_input.a, -13767i)), vec2<i32>(-abs(u_input.a), ~u_input.a)));
    let var_1 = Struct_3(func_2(_wgslsmith_mod_vec3_u32(vec3<u32>(41564u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.b, 4294967295u), vec2<u32>(69413u, u_input.b.x)), 4733u), abs(vec3<u32>(105807u, 1u, 0u)))).a, false == (arg_1.b.a == func_3().x), arg_1.b);
    global0 = array<bool, 23>();
    let var_2 = ~_wgslsmith_mult_vec2_u32(vec2<u32>(firstTrailingBit(func_2(u_input.b.wzz).a.e.x), firstLeadingBit(_wgslsmith_clamp_u32(0u, 25636u, var_1.a.e.x))), firstTrailingBit(var_1.a.e));
    return func_1(vec2<i32>(func_2(vec3<u32>(arg_0.x, 3688u, 4458u)).a.d, -u_input.a << (_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, arg_2.b), vec2<u32>(36202u, var_2.x)) % 32u)) ^ ~vec2<i32>(~var_0.x, -var_1.a.d), Struct_1(_wgslsmith_f_op_f32(var_1.a.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1208f * var_1.a.a))), ~1u >> (1u % 32u), var_0.x, -var_0.x, vec2<u32>(var_1.a.e.x, u_input.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_5, 29>();
    var var_0 = countOneBits(~(~vec2<u32>(~u_input.b.x, ~u_input.b.x)));
    global1 = array<Struct_5, 29>();
    var var_1 = func_5(u_input.b.wz, func_1(firstTrailingBit(vec2<i32>(-2147483647i, 47714i)) ^ vec2<i32>(min(u_input.a, u_input.a), 1i), Struct_1(_wgslsmith_div_f32(1876f, _wgslsmith_f_op_f32(241f - -3113f)), 0u, u_input.a, -16031i, u_input.b.xw)), Struct_5(abs(_wgslsmith_sub_vec4_u32(select(u_input.b, u_input.b, global0[_wgslsmith_index_u32(u_input.b.x, 23u)]), vec4<u32>(22995u, u_input.b.x, u_input.b.x, 4294967295u))), 0u));
    let var_2 = ~(~_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(20284u, 8233u, var_1.c) | vec3<u32>(1u, var_0.x, var_1.d), _wgslsmith_add_vec3_u32(u_input.b.xxy, u_input.b.xwy)), _wgslsmith_mult_vec3_u32(u_input.b.zzy, _wgslsmith_add_vec3_u32(u_input.b.xzx, vec3<u32>(var_1.d, 28863u, u_input.b.x)))));
    let var_3 = func_2(~_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(u_input.b.zwz, vec3<u32>(0u, var_1.d, var_2.x)), _wgslsmith_mult_vec3_u32(var_2, vec3<u32>(u_input.b.x, var_2.x, var_0.x)))).a.b ^ abs(func_4(!(!var_1.a.x), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2286f, 628f, 359f, 212f) + vec4<f32>(2040f, -2103f, 135f, -347f))), -46781i).x);
    global0 = array<bool, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(-261f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -791f)), func_2(var_2).a.a, select(!global0[_wgslsmith_index_u32(43745u, 23u)] & select(true, true, true), true, any(!vec3<bool>(global0[_wgslsmith_index_u32(35495u, 23u)], true, var_1.b.a))))));
}

