struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
    e: vec2<bool>,
}

struct Struct_4 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec3<f32>(-365f, 163f, 660f), false), -228f, true, false);

var<private> global2: array<vec4<i32>, 8>;

var<private> global3: array<Struct_2, 22>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1) -> bool {
    let var_0 = select(-firstTrailingBit(u_input.b.xyy), vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a.yxx, abs(u_input.b.ywy)), u_input.b.xww), -_wgslsmith_clamp_i32(u_input.b.x << (0u % 32u), u_input.b.x, -2147483647i & u_input.b.x), -(~(~u_input.b.x))), select(!select(vec3<bool>(false, false, true), !vec3<bool>(global1.a.b, arg_1.b, false), vec3<bool>(false, arg_1.b, global0.e.x)), vec3<bool>(true, !arg_1.b, arg_0.b < _wgslsmith_f_op_f32(-877f - global1.a.a.x)), true));
    let var_1 = vec4<i32>(var_0.x, 31637i, ~((2147483647i | u_input.a.x) >> (min(_wgslsmith_dot_vec2_u32(vec2<u32>(33310u, 31532u), vec2<u32>(u_input.d, u_input.e.x)), _wgslsmith_mult_u32(u_input.c.x, u_input.e.x)) % 32u)), 5994i);
    let var_2 = _wgslsmith_sub_vec4_i32(-vec4<i32>(~0i, -1i, -2147483647i, var_1.x), var_1);
    var var_3 = vec4<f32>(arg_0.b, arg_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.b)) + -1580f))), -1073f);
    global2 = array<vec4<i32>, 8>();
    return arg_0.a;
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_4(!all(!(!vec4<bool>(global0.c.a.b, false, global1.d, global1.a.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.d.b), _wgslsmith_f_op_f32(-823f * global0.a.a.x), func_3(Struct_4(false, -2015f), global0.c.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.a.x))))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global1.a.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(567f, global1.b, global0.d.a.a.x)), all(vec3<bool>(global0.d.c, global1.a.b, global0.c.a.b)))), global1.a.a, all(!vec3<bool>(global0.b.c, global1.c, var_0.a)))) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.d.b, global1.b, var_0.b)))), !var_0.a);
    let var_2 = ~(-67217i);
    global3 = array<Struct_2, 22>();
    var var_3 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.a.x, var_0.b, _wgslsmith_f_op_f32(184f - global1.a.a.x))), global1.d), global3[_wgslsmith_index_u32(u_input.c.x, 22u)], Struct_2(var_1, -446f, all(!select(global0.e, vec2<bool>(true, var_1.b), vec2<bool>(global1.d, true))), all(select(select(vec4<bool>(false, global0.c.a.b, global0.a.b, true), vec4<bool>(false, global0.b.a.b, global0.b.c, global1.c), false), select(vec4<bool>(var_1.b, global0.a.b, var_1.b, var_1.b), vec4<bool>(true, var_0.a, true, false), vec4<bool>(global0.b.a.b, true, false, false)), false))), Struct_2(global1.a, -600f, false, false), vec2<bool>(all(select(select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(false, global0.d.c), global0.e), select(vec2<bool>(true, true), global0.e, vec2<bool>(global1.a.b, global1.c)), global1.c)), all(select(select(vec4<bool>(true, true, true, global1.a.b), vec4<bool>(true, global1.d, var_1.b, false), global1.d), vec4<bool>(global0.c.a.b, var_0.a, var_1.b, var_1.b), !vec4<bool>(global0.b.a.b, true, global1.c, false)))));
    return Struct_3(global0.b.a, Struct_2(Struct_1(global1.a.a, global1.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-483f))), var_1.b, global1.c), global0.d, Struct_2(var_1, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1535f))))), !global1.c, select(true, all(select(vec3<bool>(global0.b.c, false, var_1.b), vec3<bool>(false, var_3.a.b, false), var_3.c.a.b)), all(vec2<bool>(var_0.a, var_1.b)))), select(global0.e, vec2<bool>(true, all(select(vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(true, var_0.a, var_1.b), var_1.b))), !global0.e));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: f32) -> Struct_3 {
    let var_0 = _wgslsmith_add_i32(35656i, u_input.b.x);
    var var_1 = global0.c;
    var var_2 = Struct_3(func_2().c.a, func_2().c, Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b, arg_0.c.b, global1.b) + vec3<f32>(1431f, 407f, -823f)), false), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b.a.a.x, global0.b.a.a.x)), !any(select(vec4<bool>(global1.a.b, true, global1.d, var_1.a.b), vec4<bool>(false, global1.c, global1.c, var_1.a.b), global0.d.a.b)), all(!vec4<bool>(global1.c, arg_0.d.c, false, true))), global0.d, vec2<bool>(func_2().a.b | !(!global0.d.a.b), global0.c.c));
    let var_3 = var_1.a;
    let var_4 = Struct_4(all(select(!(!vec4<bool>(false, arg_0.e.x, false, false)), vec4<bool>(any(vec3<bool>(global0.e.x, true, var_3.b)), true, true, all(vec3<bool>(arg_0.c.d, false, false))), var_1.a.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-248f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-global1.b)))));
    return Struct_3(var_1.a, Struct_2(arg_0.a, var_3.a.x, !select(true, var_1.a.b == true, true), func_2().a.b), global0.b, Struct_2(Struct_1(vec3<f32>(var_3.a.x, func_2().b.a.a.x, -475f), !(!arg_0.e.x)), 253f, false, global0.a.b), !(!select(select(vec2<bool>(true, var_3.b), var_2.e, vec2<bool>(var_1.a.b, arg_0.e.x)), select(var_2.e, global0.e, var_2.e), select(vec2<bool>(true, var_2.c.c), vec2<bool>(true, var_3.b), false))));
}

fn func_1(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_2) -> vec2<u32> {
    var var_0 = countOneBits(select(_wgslsmith_add_vec4_i32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(17500u, arg_1.x), ~2532u), 8u)], vec4<i32>(i32(-1i) * -2147483647i, 0i, -25281i, min(-14376i, u_input.a.x))), _wgslsmith_add_vec4_i32(~u_input.a, vec4<i32>(arg_0, arg_0, arg_0, u_input.b.x)) & vec4<i32>(~arg_0, u_input.a.x, arg_0 & arg_0, -2147483647i >> (u_input.e.x % 32u)), !select(!vec4<bool>(false, true, global0.b.d, true), vec4<bool>(true, false, global1.c, arg_2.a.b), all(vec4<bool>(global0.d.a.b, arg_2.c, true, false)))));
    global1 = arg_2;
    global0 = func_4(func_2(), var_0.wxx, 812f);
    var var_1 = u_input.b.x;
    global2 = array<vec4<i32>, 8>();
    return firstTrailingBit(vec2<u32>(_wgslsmith_clamp_u32(0u, 18121u, 4294967295u), 1u));
}

fn func_5(arg_0: u32) -> Struct_1 {
    global1 = func_4(Struct_3(global0.d.a, Struct_2(func_4(Struct_3(Struct_1(global0.b.a.a, global0.e.x), Struct_2(Struct_1(global0.b.a.a, false), -491f, global1.a.b, global1.c), global3[_wgslsmith_index_u32(1u, 22u)], Struct_2(global1.a, global1.b, global1.a.b, true), global0.e), u_input.b.wyz, -1471f).c.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(-global1.a.a.x), -145f <= global0.d.a.a.x)), true, false), func_4(func_4(Struct_3(Struct_1(global1.a.a, false), global3[_wgslsmith_index_u32(20460u, 22u)], Struct_2(Struct_1(global1.a.a, global1.a.b), -565f, true, global0.d.a.b), global0.b, vec2<bool>(global0.b.c, false)), firstLeadingBit(vec3<i32>(u_input.a.x, -3322i, -38357i)), _wgslsmith_f_op_f32(f32(-1f) * -1466f)), u_input.a.zzy, _wgslsmith_f_op_f32(-global0.d.b)).c, func_2().b, !global0.e), ~min(u_input.b.yxx, vec3<i32>(u_input.a.x, 0i, -7422i) & u_input.a.xyz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2143f - global1.b) + _wgslsmith_div_f32(-125f, -480f))).b;
    let var_0 = vec2<i32>(-39262i, 2147483647i);
    var var_1 = countOneBits(vec4<u32>(arg_0 ^ _wgslsmith_clamp_u32(0u, reverseBits(u_input.c.x), _wgslsmith_clamp_u32(32493u, 4294967295u, 32586u)), 104703u, arg_0, ~26459u));
    let var_2 = func_4(func_4(Struct_3(func_4(Struct_3(Struct_1(vec3<f32>(-1021f, global0.c.a.a.x, 152f), true), Struct_2(global1.a, 191f, true, true), global3[_wgslsmith_index_u32(58835u, 22u)], Struct_2(Struct_1(vec3<f32>(146f, global0.a.a.x, 2021f), true), global1.b, global1.d, global0.a.b), vec2<bool>(false, global1.d)), vec3<i32>(u_input.b.x, 14341i, var_0.x) | u_input.b.xyy, global0.c.b).b.a, Struct_2(Struct_1(vec3<f32>(global0.c.b, global1.b, global0.d.a.a.x), false), global1.a.a.x, true, func_3(Struct_4(true, global0.a.a.x), Struct_1(vec3<f32>(2599f, global0.a.a.x, -776f), false))), func_2().d, Struct_2(Struct_1(vec3<f32>(global0.b.a.a.x, 1142f, global0.c.b), true), _wgslsmith_f_op_f32(-672f + global0.a.a.x), true || global1.d, true), !vec2<bool>(true, global0.c.c)), u_input.a.yyy, _wgslsmith_f_op_f32(global1.a.a.x - _wgslsmith_f_op_f32(1806f - -1132f))), u_input.b.zxx, func_4(func_4(func_4(func_2(), abs(vec3<i32>(-8903i, var_0.x, 27698i)), global0.a.a.x), -min(u_input.b.yyx, vec3<i32>(1i, -1i, 2147483647i)), 1f), ~select(vec3<i32>(var_0.x, 43301i, 0i), -vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i), all(global0.e)), _wgslsmith_f_op_f32(f32(-1f) * -395f)).b.b);
    global2 = array<vec4<i32>, 8>();
    return global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 22>();
    let var_0 = global0.d.a;
    var var_1 = func_5(_wgslsmith_sub_u32(_wgslsmith_div_u32(~(~1u), u_input.c.x << (u_input.e.x % 32u)), _wgslsmith_dot_vec2_u32(func_1(u_input.a.x, vec4<u32>(u_input.c.x, u_input.e.x, 35599u, 6995u), Struct_2(global0.a, global1.b, global1.d, var_0.b)), u_input.e.xx ^ vec2<u32>(u_input.c.x, u_input.c.x)) & ~abs(u_input.d)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(426f, _wgslsmith_f_op_f32(-var_1.a.x))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.b, _wgslsmith_f_op_f32(floor(global1.b)), _wgslsmith_div_f32(443f, 295f), var_0.a.x))))), ~u_input.e.x, ~(-max(~u_input.a.yx, u_input.b.yy)));
}

