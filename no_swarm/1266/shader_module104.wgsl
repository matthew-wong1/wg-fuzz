struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: f32,
    d: i32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 5> = array<vec3<bool>, 5>(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true));

var<private> global1: Struct_3;

var<private> global2: array<vec2<u32>, 22> = array<vec2<u32>, 22>(vec2<u32>(65291u, 4294967295u), vec2<u32>(65364u, 4294967295u), vec2<u32>(60731u, 10323u), vec2<u32>(0u, 0u), vec2<u32>(0u, 1u), vec2<u32>(0u, 1u), vec2<u32>(68174u, 0u), vec2<u32>(30771u, 5904u), vec2<u32>(24303u, 41972u), vec2<u32>(30414u, 52822u), vec2<u32>(17498u, 2320u), vec2<u32>(12090u, 1u), vec2<u32>(1u, 29369u), vec2<u32>(1u, 29808u), vec2<u32>(16612u, 0u), vec2<u32>(28318u, 4294967295u), vec2<u32>(11151u, 4294967295u), vec2<u32>(31206u, 4294967295u), vec2<u32>(27857u, 1u), vec2<u32>(4294967295u, 4580u), vec2<u32>(7881u, 0u), vec2<u32>(4294967295u, 1u));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec2<f32>, arg_3: bool) -> f32 {
    let var_0 = Struct_3(global1.a ^ (global1.a << ((global1.a << (countOneBits(vec2<u32>(10632u, global1.a.x)) % vec2<u32>(32u))) % vec2<u32>(32u))), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1648f))), 1i, global1.e);
    global0 = array<vec3<bool>, 5>();
    let var_1 = all(select(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(42820u, global1.a.x, 6122u) >> (vec3<u32>(1u, global1.a.x, global1.a.x) % vec3<u32>(32u)), vec3<u32>(global1.a.x, global1.a.x, 4235u) & vec3<u32>(global1.a.x, 1u, global1.a.x)), 5u)], select(select(vec3<bool>(global1.b.c, var_0.b.b.x, arg_1.x), !global0[_wgslsmith_index_u32(var_0.a.x, 5u)], arg_1.ywy), vec3<bool>(false == arg_0.c, arg_0.c, any(vec4<bool>(false, true, false, false))), vec3<bool>(true, arg_3, !arg_3)), vec3<bool>(false, !(!global1.b.b.x), arg_2.x == var_0.c)));
    var var_2 = 18450u;
    var var_3 = vec3<bool>(arg_0.a.x < (_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(var_0.d, -1i, 1i, u_input.a.x)), _wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(global1.d, var_0.d, 1i, -2147483647i))) | 15234i), var_0.b.b.x, true);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.c)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_1) -> f32 {
    let var_0 = ~arg_0.c;
    let var_1 = arg_0;
    var var_2 = vec3<bool>(var_1.a.c, true, all(!vec4<bool>(arg_2.c, true, false, true)));
    let var_3 = var_1;
    var var_4 = vec3<bool>(all(arg_2.b), 72366u <= min(28311u, 4294967295u & (var_1.c | var_1.c)), !any(vec4<bool>(true, any(vec4<bool>(true, arg_2.c, var_3.a.c, true)), true, all(global0[_wgslsmith_index_u32(var_3.c, 5u)]))));
    return _wgslsmith_f_op_f32(func_3(var_1.b, !vec4<bool>(true, all(select(vec2<bool>(var_2.x, arg_0.b.b.x), vec2<bool>(true, var_3.d.c), var_2.x)), var_3.d.c, true), _wgslsmith_f_op_vec2_f32(vec2<f32>(748f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-232f * 840f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-841f, -816f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.e.x, arg_1.e.x))))))), arg_2.c));
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: u32, arg_3: f32) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(global1.b, !select(vec4<bool>(global1.b.c, global1.b.c, true, true), vec4<bool>(global1.b.b.x, true, false, true), vec4<bool>(true, false, global1.b.b.x, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-102f, 202f)), (32245u >> (arg_1 % 32u)) == 1u)), -1000f))));
    global1 = Struct_3(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(global2[_wgslsmith_index_u32(arg_1, 22u)], global2[_wgslsmith_index_u32(global1.a.x, 22u)]) & ~vec2<u32>(arg_1, global1.a.x), ~global1.a) ^ (abs(~vec2<u32>(arg_2, arg_2)) & (vec2<u32>(arg_1, arg_2) ^ global1.a)), Struct_1(-reverseBits(~vec2<i32>(u_input.a.x, global1.b.a.x)), vec3<bool>(false, any(vec4<bool>(global1.b.b.x, global1.b.c, false, false)), true | (arg_2 < arg_2)), true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-1258f)), 478f)), _wgslsmith_mult_i32(u_input.a.x, _wgslsmith_dot_vec3_i32(u_input.a.zzx, vec3<i32>(min(-44945i, u_input.a.x), _wgslsmith_sub_i32(arg_0, arg_0), 2147483647i))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(global1.b.a, global1.b.b, global1.b.b.x), vec4<bool>(global1.b.c, global1.b.c, global1.b.b.x, global1.b.b.x), vec2<f32>(247f, -1000f), false)) * -639f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -389f))), arg_3))));
    var var_1 = global1.b.b.x;
    var_0 = -553f;
    var var_2 = ~(~(abs(abs(vec4<u32>(arg_2, arg_1, 1u, 0u))) & ~vec4<u32>(4294967295u, 23924u, 0u, 72371u)));
    return ~(~u_input.a.xxz);
}

fn func_1(arg_0: vec2<i32>, arg_1: bool, arg_2: vec2<u32>, arg_3: vec3<i32>) -> StorageBuffer {
    let var_0 = global1.e.x;
    let var_1 = _wgslsmith_clamp_vec3_i32(abs(u_input.a.yyx), _wgslsmith_mod_vec3_i32(u_input.a.zyz, func_4(-1i, select(global1.a.x & arg_2.x, max(4294967295u, arg_2.x), all(vec3<bool>(false, false, global1.b.b.x))), ~(~arg_2.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(vec2<i32>(-26817i, arg_3.x), vec3<bool>(false, global1.b.b.x, false), true), global1.b, 1u, Struct_1(global1.b.a, vec3<bool>(true, arg_1, false), true), arg_0.x), Struct_3(global2[_wgslsmith_index_u32(global1.a.x, 22u)], global1.b, -984f, -13660i, global1.e), Struct_1(global1.b.a, global1.b.b, false))), _wgslsmith_f_op_f32(-1339f * global1.e.x))))), arg_3 | max(vec3<i32>(global1.d, _wgslsmith_clamp_i32(2147483647i, -21957i, -27869i), abs(33356i)), u_input.a.zyx));
    let var_2 = global1.b.b.zz;
    global2 = array<vec2<u32>, 22>();
    let var_3 = select(arg_1, any(global1.b.b.zy), true);
    return StorageBuffer(~(~vec4<u32>(72832u, global1.a.x, 1u, arg_2.x | 11352u)), -16312i, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.c, _wgslsmith_f_op_f32(566f + _wgslsmith_f_op_f32(1199f - 435f)), _wgslsmith_f_op_f32(-global1.e.x), global1.e.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global1.e.x, global1.e.x, global1.e.x) - global1.e))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.b;
    let x = u_input.a;
    s_output = func_1(-vec2<i32>(min(-var_0.a.x, -1i), global1.d), true, ~global1.a, vec3<i32>(~(~u_input.a.x), global1.b.a.x, _wgslsmith_clamp_i32(-2147483647i >> (_wgslsmith_mod_u32(global1.a.x, global1.a.x) % 32u), global1.b.a.x << (_wgslsmith_mod_u32(global1.a.x, 87525u) % 32u), var_0.a.x)));
}

