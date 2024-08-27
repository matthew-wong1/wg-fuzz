struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<i32, 21> = array<i32, 21>(2147483647i, 40715i, i32(-2147483648), -1i, 24205i, -10895i, 1i, 0i, 3893i, 40097i, -1i, 1i, -57391i, 33013i, -2770i, -4947i, 2147483647i, 27522i, -34657i, -12447i, 0i);

var<private> global2: vec3<i32>;

var<private> global3: array<u32, 21>;

var<private> global4: Struct_2;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: u32) -> Struct_2 {
    global1 = array<i32, 21>();
    global0 = Struct_2(Struct_1(global4.a.a, _wgslsmith_f_op_f32(global0.a.b + _wgslsmith_div_f32(535f, _wgslsmith_f_op_f32(f32(-1f) * -713f))), vec3<u32>(u_input.b, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(global0.a.c.x, u_input.b)), global0.a.c.yy ^ global4.a.c.zy), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), global4.a.c.yx) & ~global4.a.c.x), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, abs(19052u), 30459u), ~_wgslsmith_div_vec3_u32(vec3<u32>(0u, 1u, global0.a.d), u_input.c.yzz)), ~(~_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(0u, 21u)], 69165u))), global0.a.a.x);
    return Struct_2(global4.a, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(global0.a.a.zwy, ~global4.a.a.zyw), _wgslsmith_dot_vec4_i32(select(-global4.a.a, vec4<i32>(global0.a.a.x, 0i, 2147483647i, global4.b), vec4<bool>(true, true, true, true)), vec4<i32>(-1i, -2147483647i, 1i, -58528i) | vec4<i32>(-64484i, global1[_wgslsmith_index_u32(20255u, 21u)], -1i, -1i))));
}

fn func_3() -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec2_i32(-(vec2<i32>(-1i) * -global0.a.a.zx), vec2<i32>(-_wgslsmith_clamp_i32(1i, 29315i, global2.x), -firstTrailingBit(global0.a.a.x ^ global2.x)));
    let var_1 = _wgslsmith_add_i32(-31701i, _wgslsmith_dot_vec2_i32(min(global0.a.a.zx, global0.a.a.wx), -vec2<i32>(_wgslsmith_add_i32(-24214i, var_0.x), ~global1[_wgslsmith_index_u32(global4.a.d, 21u)])));
    let var_2 = -global4.a.a.wxy;
    var var_3 = _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, _wgslsmith_mult_u32(1u, 0u)), reverseBits(u_input.c.xz));
    var var_4 = -1090f;
    return func_1(_wgslsmith_add_u32(global0.a.e, 64300u)).a;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec4<bool>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = ~arg_1.x;
    let var_1 = func_3();
    var var_2 = arg_3;
    let var_3 = Struct_1(-global4.a.a, -1545f, reverseBits(vec3<u32>(arg_0.c.x, ~(var_2.a.c.x & var_0), 41452u)), (func_3().e << (_wgslsmith_add_u32(global0.a.d, _wgslsmith_dot_vec2_u32(arg_0.c.zx, global4.a.c.zx)) % 32u)) & ~(~firstTrailingBit(global4.a.e)), ~8186u);
    let var_4 = func_3().a.x;
    return Struct_2(arg_0, reverseBits(var_2.a.a.x));
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    global0 = func_2(global0.a, vec3<u32>(global0.a.d, 1u, func_1(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(global4.a.c.x, 1u), abs(arg_2.a.e), 1u)).a.d), vec4<bool>(true, arg_0, all(select(!vec4<bool>(arg_0, arg_0, arg_0, arg_0), select(vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(arg_0, false, arg_0, arg_0), true), select(vec4<bool>(arg_0, false, false, arg_0), vec4<bool>(arg_0, true, arg_0, true), vec4<bool>(arg_0, true, arg_0, false)))), false), arg_2);
    let var_0 = func_2(Struct_1(max(arg_3.a, vec4<i32>(global0.a.a.x, 11002i, 3138i, 10847i)) << ((u_input.c & (vec4<u32>(u_input.a, u_input.b, 1u, 1u) | vec4<u32>(33980u, 25781u, global0.a.c.x, u_input.b))) % vec4<u32>(32u)), -1865f, ~u_input.c.yxx, _wgslsmith_add_u32(~0u, ~max(global3[_wgslsmith_index_u32(global4.a.d, 21u)], 68613u)), 1u << ((0u >> ((12069u | global4.a.d) % 32u)) % 32u)), abs(~firstLeadingBit(vec3<u32>(global0.a.d, 0u, 19223u))), select(vec4<bool>(select(true, arg_0, true), arg_0, true, arg_0), !select(vec4<bool>(arg_0, false, true, arg_0), !vec4<bool>(arg_0, arg_0, false, arg_0), select(vec4<bool>(arg_0, arg_0, false, false), vec4<bool>(arg_0, false, true, arg_0), vec4<bool>(false, arg_0, arg_0, arg_0))), true), func_1(global3[_wgslsmith_index_u32(min(~5455u << ((global3[_wgslsmith_index_u32(4294967295u, 21u)] << (29389u % 32u)) % 32u), global3[_wgslsmith_index_u32(global4.a.c.x >> (4294967295u % 32u), 21u)]), 21u)]));
    global4 = Struct_2(global0.a, -54521i);
    var var_1 = ~(~(-global4.a.a.xww));
    global3 = array<u32, 21>();
    return func_1(16745u).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true)), vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.a.b - _wgslsmith_f_op_f32(f32(-1f) * -1442f)))), func_2(global0.a, global0.a.c ^ global0.a.c, select(vec4<bool>(all(vec2<bool>(true, false)), true, all(vec3<bool>(true, true, true)), all(vec4<bool>(false, false, false, false))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true)), true), true), func_1(~4294967295u)), global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(select(1u, 54837u, true) ^ 31294u, global4.b, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - 2097f)), _wgslsmith_f_op_f32(-global0.a.b)), 2250f, _wgslsmith_f_op_f32(func_2(func_4(true, vec2<f32>(global4.a.b, 676f), Struct_2(global0.a, global2.x), Struct_1(global0.a.a, -407f, global0.a.c, 18195u, u_input.a)), _wgslsmith_add_vec3_u32(u_input.c.ywz, vec3<u32>(17035u, 34229u, global4.a.d)), vec4<bool>(false, true, true, false), func_1(8002u)).a.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b * var_0.b)))));
}

