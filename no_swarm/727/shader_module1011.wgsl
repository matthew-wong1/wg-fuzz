struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec2<u32>,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: f32, arg_3: vec2<i32>) -> i32 {
    global0 = array<i32, 10>();
    global0 = array<i32, 10>();
    var var_0 = Struct_3(Struct_2(~(vec4<u32>(arg_0.x, u_input.a, 6302u, u_input.b.x) << (abs(vec4<u32>(arg_0.x, 1u, 4294967295u, u_input.a)) % vec4<u32>(32u))), (u_input.b & arg_0) >> (_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(arg_0, vec4<u32>(1u, 3763u, 52855u, 0u)), ~arg_0) % vec4<u32>(32u)), Struct_1(arg_1.x, arg_2, ~arg_3, arg_3.x, _wgslsmith_div_u32(0u, _wgslsmith_mult_u32(arg_0.x, 77002u))), _wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(arg_0.x, 0u), u_input.c), ~(1u ^ u_input.a))), vec2<bool>(true, true), ~arg_0.zy, _wgslsmith_f_op_f32(max(-995f, -951f)), Struct_1(12355i, arg_2, ~arg_1.wy, select(max(global0[_wgslsmith_index_u32(114046u, 10u)], arg_1.x) >> ((arg_0.x | arg_0.x) % 32u), -firstTrailingBit(1i), all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false))), ~abs(_wgslsmith_add_u32(arg_0.x, 4294967295u))));
    var var_1 = max(abs(arg_1.yxy), abs(arg_1.zww));
    let var_2 = vec2<u32>(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 31217u), vec2<u32>(var_0.a.c.e, 54822u))) << (~var_0.c.x % 32u), u_input.b.x);
    return u_input.e;
}

fn func_2(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c.b - _wgslsmith_f_op_f32(max(418f, -497f))));
    let var_1 = -func_3(~_wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(0u, 30707u, 6366u, 1u) & u_input.b), ~(~arg_1 | arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e.b)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1296f)), _wgslsmith_f_op_f32(min(arg_2.c.b, arg_0.a.c.b)))), arg_2.c.c);
    var var_2 = u_input.b.xxy;
    var var_3 = Struct_2(u_input.b, ~_wgslsmith_mod_vec4_u32(arg_2.a, ~abs(vec4<u32>(48557u, arg_2.a.x, arg_2.a.x, var_2.x))), Struct_1(min(-25678i, -2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1136f)) + _wgslsmith_f_op_f32(-arg_0.e.b)), _wgslsmith_mult_vec2_i32(vec2<i32>(var_1, arg_1.x) ^ arg_0.a.c.c, reverseBits(vec2<i32>(-1i, 1i)) << (select(u_input.b.yz, arg_0.a.a.yx, arg_0.b) % vec2<u32>(32u))), 2147483647i, 1u), countOneBits(var_2.x));
    var var_4 = Struct_1(select(abs(-1i), var_1, any(select(vec3<bool>(arg_0.b.x, true, true), vec3<bool>(true, false, false), select(vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x), vec3<bool>(arg_0.b.x, arg_0.b.x, false), arg_0.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -257f) * arg_2.c.b), _wgslsmith_f_op_f32(-211f - var_3.c.b)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.a.c.b, 235f)) * _wgslsmith_f_op_f32(-arg_0.e.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - arg_2.c.b) - _wgslsmith_f_op_f32(arg_0.d * 1636f))))), arg_2.c.c, _wgslsmith_add_i32(~1i, ~firstTrailingBit(firstLeadingBit(var_1))), 31131u);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.c.b + -396f) + -1920f);
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: Struct_3, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = vec4<bool>(true, select(select(!any(vec3<bool>(arg_3.x, true, arg_2.b.x)), arg_2.b.x, arg_2.b.x), _wgslsmith_mult_i32(-5723i, reverseBits(u_input.e)) <= arg_1, !all(select(arg_3.zyy, vec3<bool>(arg_3.x, arg_2.b.x, arg_2.b.x), vec3<bool>(true, arg_2.b.x, false)))), arg_2.b.x || any(!vec4<bool>(false, arg_3.x, false, arg_3.x)), !(!arg_3.x));
    let var_1 = arg_2.e.e;
    var var_2 = _wgslsmith_add_vec3_i32((reverseBits(reverseBits(vec3<i32>(arg_2.e.c.x, arg_2.a.c.d, -42481i))) & vec3<i32>(-2147483647i, arg_1, _wgslsmith_mod_i32(-8693i, global0[_wgslsmith_index_u32(u_input.c, 10u)]))) << (arg_2.a.b.yxz % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(max(vec3<i32>(u_input.e, -3960i, u_input.e), vec3<i32>(arg_2.a.c.c.x, -5446i, arg_2.a.c.d)), vec3<i32>(-1i, u_input.e, u_input.e) >> (vec3<u32>(arg_2.c.x, var_1, 4294967295u) % vec3<u32>(32u))) | -abs(vec3<i32>(21055i, arg_1, 1i)), -reverseBits(-vec3<i32>(-2147483647i, 65721i, global0[_wgslsmith_index_u32(1u, 10u)]))));
    var_0 = vec4<bool>(all(select(vec2<bool>(arg_2.b.x, !var_0.x), !(!var_0.zz), var_0.x)), arg_3.x, true, true & arg_2.b.x);
    global0 = array<i32, 10>();
    return arg_2.e;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<f32>) -> Struct_2 {
    global0 = array<i32, 10>();
    let var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - _wgslsmith_f_op_f32(func_2(Struct_3(Struct_2(u_input.b, vec4<u32>(53500u, 4294967295u, 5129u, u_input.c), Struct_1(global0[_wgslsmith_index_u32(u_input.b.x, 10u)], arg_1.x, vec2<i32>(global0[_wgslsmith_index_u32(u_input.d, 10u)], 2147483647i), global0[_wgslsmith_index_u32(43555u, 10u)], u_input.a), u_input.c), vec2<bool>(arg_0.x, arg_0.x), u_input.b.yz, arg_1.x, Struct_1(global0[_wgslsmith_index_u32(u_input.c, 10u)], arg_1.x, vec2<i32>(global0[_wgslsmith_index_u32(22650u, 10u)], global0[_wgslsmith_index_u32(u_input.b.x, 10u)]), global0[_wgslsmith_index_u32(u_input.d, 10u)], 1u)), vec4<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 10u)], -2147483647i, 2147483647i, global0[_wgslsmith_index_u32(u_input.d, 10u)]), Struct_2(u_input.b, vec4<u32>(11384u, u_input.a, u_input.b.x, u_input.d), Struct_1(global0[_wgslsmith_index_u32(38622u, 10u)], arg_1.x, vec2<i32>(-2147483647i, 1i), 1i, u_input.c), 4294967295u)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.x)) + -740f))), global0[_wgslsmith_index_u32(max(34361u, 4294967295u), 10u)], Struct_3(Struct_2(u_input.b, ~u_input.b >> (vec4<u32>(15148u, u_input.c, 88136u, 1u) % vec4<u32>(32u)), Struct_1(-u_input.e, arg_1.x, vec2<i32>(u_input.e, -1i), global0[_wgslsmith_index_u32(u_input.c, 10u)] ^ global0[_wgslsmith_index_u32(32654u, 10u)], ~30848u), ~u_input.a), vec2<bool>(any(arg_0.zz) | select(false, arg_0.x, false), true), countOneBits(u_input.b.wz) | vec2<u32>(4294967295u, 0u), arg_1.x, Struct_1(-u_input.e, _wgslsmith_f_op_f32(ceil(1000f)), ~_wgslsmith_sub_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 10u)], 1i), vec2<i32>(u_input.e, -1i)), 1i, ~43731u)), arg_0);
    global0 = array<i32, 10>();
    let var_1 = abs(~4294967295u);
    let var_2 = true;
    return Struct_2(min(~vec4<u32>(35042u, _wgslsmith_add_u32(var_1, 1695u), _wgslsmith_mod_u32(69018u, var_0.e), 27539u), _wgslsmith_mod_vec4_u32(vec4<u32>(~u_input.c, ~var_0.e, _wgslsmith_add_u32(u_input.d, 4310u), ~4294967295u), vec4<u32>(var_1, _wgslsmith_dot_vec3_u32(u_input.b.yzx, u_input.b.wxx), _wgslsmith_mult_u32(var_1, u_input.c), max(var_1, 45778u)))), u_input.b, Struct_1(abs(-(~u_input.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.x))) * 160f), vec2<i32>(~(~u_input.e), func_4(arg_1.x, ~1i, Struct_3(Struct_2(u_input.b, u_input.b, var_0, var_1), vec2<bool>(arg_0.x, true), vec2<u32>(var_1, 15455u), var_0.b, Struct_1(56460i, var_0.b, var_0.c, global0[_wgslsmith_index_u32(55927u, 10u)], var_0.e)), arg_0).c.x), ~1i, 1u), 0u);
}

fn func_5(arg_0: Struct_3) -> Struct_4 {
    let var_0 = arg_0.b;
    var var_1 = Struct_4(_wgslsmith_f_op_f32(-arg_0.a.c.b), Struct_3(arg_0.a, select(var_0, !vec2<bool>(arg_0.b.x, arg_0.b.x), arg_0.b.x), ~(~vec2<u32>(arg_0.a.c.e, arg_0.e.e)), _wgslsmith_f_op_f32(163f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(arg_0.e.b)), _wgslsmith_f_op_f32(arg_0.e.b * arg_0.a.c.b)))), arg_0.a.c));
    let var_2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) * _wgslsmith_f_op_f32(ceil(1444f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(arg_0.e.b)), -1242f, all(vec4<bool>(true, true, var_0.x, false)))), _wgslsmith_f_op_f32(-func_1(vec4<bool>(var_0.x, arg_0.b.x, arg_0.b.x, var_0.x), vec2<f32>(arg_0.a.c.b, -1701f)).c.b)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1311f, _wgslsmith_f_op_f32(func_2(Struct_3(Struct_2(vec4<u32>(arg_0.e.e, 73422u, 4294967295u, 99707u), arg_0.a.a, Struct_1(arg_0.e.d, arg_0.e.b, vec2<i32>(1i, u_input.e), u_input.e, u_input.c), arg_0.e.e), vec2<bool>(true, false), vec2<u32>(var_1.b.e.e, u_input.d), arg_0.a.c.b, Struct_1(u_input.e, arg_0.a.c.b, vec2<i32>(15644i, global0[_wgslsmith_index_u32(arg_0.c.x, 10u)]), -4688i, var_1.b.a.d)), vec4<i32>(-1i, 40456i, arg_0.a.c.a, arg_0.e.c.x), arg_0.a)))), true));
    let var_3 = 64899u;
    global0 = array<i32, 10>();
    return Struct_4(func_1(!select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, var_0.x, arg_0.b.x), vec4<bool>(false, var_0.x, arg_0.b.x, false)), select(vec4<bool>(true, true, var_1.b.b.x, true), vec4<bool>(true, var_0.x, arg_0.b.x, false), vec4<bool>(true, arg_0.b.x, var_1.b.b.x, false)), vec4<bool>(false, var_0.x, true, false)), vec2<f32>(-843f, _wgslsmith_f_op_f32(var_2.x - func_4(arg_0.d, global0[_wgslsmith_index_u32(4294967295u, 10u)], arg_0, vec4<bool>(false, arg_0.b.x, arg_0.b.x, true)).b))).c.b, var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 10>();
    global0 = array<i32, 10>();
    var var_0 = func_5(Struct_3(func_1(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1197f, 478f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(243f, 462f) + vec2<f32>(-907f, -429f)))), !vec2<bool>(45760u >= u_input.b.x, true), u_input.b.xw, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(699f, 890f)), _wgslsmith_f_op_f32(1352f - 320f))), _wgslsmith_f_op_f32(f32(-1f) * -252f)), func_4(-2194f, u_input.e, Struct_3(Struct_2(vec4<u32>(u_input.d, 58553u, 8284u, 4294967295u), vec4<u32>(u_input.d, 21167u, 24065u, u_input.c), Struct_1(u_input.e, 411f, vec2<i32>(38097i, global0[_wgslsmith_index_u32(4294967295u, 10u)]), global0[_wgslsmith_index_u32(u_input.d, 10u)], u_input.b.x), u_input.d), select(vec2<bool>(false, true), vec2<bool>(false, false), true), u_input.b.zw | u_input.b.yx, -2142f, Struct_1(-1i, 1000f, vec2<i32>(0i, 20455i), u_input.e, 0u)), vec4<bool>(true, all(vec2<bool>(false, false)), true, true))));
    let var_1 = ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(3871u, u_input.c), vec2<u32>(u_input.d, u_input.c))) | abs(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d, u_input.d), u_input.b.xw));
    let var_2 = vec4<bool>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1f * var_0.a))) != _wgslsmith_f_op_f32(func_2(func_5(Struct_3(Struct_2(vec4<u32>(9737u, 0u, 0u, 0u), u_input.b, Struct_1(1i, -322f, var_0.b.e.c, var_0.b.e.a, 8624u), 4294967295u), var_0.b.b, vec2<u32>(var_0.b.e.e, var_0.b.a.b.x), var_0.a, var_0.b.a.c)).b, -vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(u_input.d, 10u)], -1i, u_input.e), Struct_2(~vec4<u32>(92337u, 1u, 56458u, u_input.d), max(vec4<u32>(69831u, 4294967295u, u_input.c, 30878u), vec4<u32>(u_input.b.x, 4294967295u, 27060u, 47473u)), func_4(1019f, 2147483647i, Struct_3(var_0.b.a, var_0.b.b, vec2<u32>(1u, var_1.x), var_0.a, Struct_1(global0[_wgslsmith_index_u32(4294967295u, 10u)], 1179f, var_0.b.e.c, u_input.e, var_0.b.c.x)), vec4<bool>(false, false, var_0.b.b.x, false)), var_0.b.e.e | 67313u))), var_0.b.b.x, all(vec3<bool>(true, var_0.b.b.x, true)), any(!func_5(Struct_3(var_0.b.a, var_0.b.b, var_0.b.a.a.yz, -1000f, var_0.b.a.c)).b.b));
    global0 = array<i32, 10>();
    let var_3 = func_5(Struct_3(func_5(var_0.b).b.a, var_0.b.b, max(vec2<u32>(~0u, 20312u), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), vec2<u32>(25374u, 34965u)) & _wgslsmith_sub_vec2_u32(u_input.b.xw, var_0.b.c)), -390f, func_5(func_5(func_5(Struct_3(Struct_2(vec4<u32>(var_1.x, u_input.b.x, 72527u, 17832u), u_input.b, var_0.b.e, var_1.x), vec2<bool>(var_2.x, false), vec2<u32>(var_1.x, 6297u), var_0.b.e.b, var_0.b.e)).b).b).b.e)).b;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.e.b, var_0.b.e.d >> ((var_0.b.e.e ^ u_input.a) % 32u));
}

