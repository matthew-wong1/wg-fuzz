struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: array<Struct_2, 13>;

var<private> global2: Struct_2 = Struct_2(1280u, vec2<f32>(467f, -469f));

var<private> global3: array<vec3<bool>, 16>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-global2.b.x);
    var var_1 = global1[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.b, vec3<u32>(1u, 46065u, global2.a)), ~vec3<u32>(u_input.c.x, 0u, u_input.c.x)), _wgslsmith_div_vec3_u32(vec3<u32>(global2.a, global2.a, 0u), ~vec3<u32>(1u, u_input.c.x, 4294967295u)))), 13u)];
    global0 = array<Struct_1, 7>();
    var var_2 = global0[_wgslsmith_index_u32(4294967295u, 7u)];
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(399f * -842f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -296f))))))));
    return global0[_wgslsmith_index_u32(10788u, 7u)];
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: vec2<i32>) -> Struct_1 {
    return global0[_wgslsmith_index_u32(countOneBits(countOneBits(73349u)), 7u)];
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec2<u32>, arg_3: Struct_1) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(arg_0.c.xxy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(arg_0.c.xxy)) * vec3<f32>(arg_1.x, func_2().c.x, _wgslsmith_div_f32(arg_3.c.x, arg_3.c.x))), -62208i < (func_2().a << (countOneBits(u_input.a.x) % 32u)))), _wgslsmith_f_op_vec3_f32(round(arg_3.c.wzx))));
    let var_1 = vec3<i32>(-59276i, -2147483647i, arg_3.a);
    let var_2 = arg_3.c.x;
    var var_3 = -arg_0.a;
    let var_4 = arg_3.c;
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(-379f, 561f) * vec2<f32>(arg_3.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.c.x), -604f, -567f < var_4.x)))));
}

fn func_1() -> f32 {
    var var_0 = func_2();
    var var_1 = global1[_wgslsmith_index_u32(global2.a, 13u)];
    let var_2 = Struct_2(max(max(~abs(var_1.a), 4294967295u), 4294967295u), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_div_f32(var_1.b.x, 263f), var_1.b.x))), _wgslsmith_f_op_vec2_f32(func_4(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-3037f, var_0.c.x, 1030f)), var_0.c, vec2<i32>(var_0.a, -2147483647i) << (vec2<u32>(8704u, 89734u) % vec2<u32>(32u))), func_2().c, ~max(u_input.a, u_input.a), global0[_wgslsmith_index_u32(global2.a, 7u)])), !(!var_0.b))));
    let var_3 = Struct_2(~((min(var_2.a, 23666u) >> (var_1.a % 32u)) ^ global2.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.x, 1000f))) * vec2<f32>(_wgslsmith_f_op_f32(211f + var_2.b.x), _wgslsmith_f_op_f32(var_0.c.x - 2947f)))));
    let var_4 = Struct_2(0u << (_wgslsmith_clamp_u32(1u, ~(~var_1.a), u_input.a.x) % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_0.c.yx, _wgslsmith_f_op_vec2_f32(-global2.b)))));
    return var_3.b.x;
}

fn func_5(arg_0: f32, arg_1: vec4<bool>, arg_2: bool, arg_3: Struct_2) -> bool {
    var var_0 = global0[_wgslsmith_index_u32(arg_3.a, 7u)];
    let var_1 = Struct_2(4294967295u, _wgslsmith_f_op_vec2_f32(var_0.c.zx - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1671f)))));
    let var_2 = func_3(var_0.c.yyx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_0.c, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.c.x, var_1.b.x, -644f, 1254f))), !arg_1.x))), reverseBits(~vec2<i32>(var_0.a, -30721i)));
    let var_3 = abs(_wgslsmith_clamp_i32(~var_0.a ^ _wgslsmith_sub_i32(var_2.a, -2147483647i >> (0u % 32u)), var_2.a, _wgslsmith_mod_i32(-1i, -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, var_0.a, var_0.a), vec4<i32>(var_2.a, var_2.a, var_2.a, 3851i)))));
    var var_4 = Struct_1(~(_wgslsmith_sub_i32(~(-1i), 2147483647i) >> (var_1.a % 32u)), !arg_1.x, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), var_1.b.x), -959f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c.x + -615f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(921f * var_1.b.x) * _wgslsmith_f_op_f32(round(var_1.b.x))))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(select(global2.a, 147184u, func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1()))) - 717f), select(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, true, true)), Struct_2(global2.a, vec2<f32>(-579f, global2.b.x)))), 7u)];
    let var_1 = global1[_wgslsmith_index_u32(reverseBits(7088u << ((0u << (_wgslsmith_dot_vec4_u32(vec4<u32>(3285u, global2.a, u_input.c.x, 4294967295u), vec4<u32>(global2.a, 1u, u_input.a.x, 1u)) % 32u)) % 32u)), 13u)];
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(select(max(~0u, firstTrailingBit(var_1.a)), firstTrailingBit(_wgslsmith_mod_u32(0u, var_1.a)), (false | var_0.b) | var_0.b), var_1.a), ~((global2.a & u_input.a.x) << (23938u % 32u)) >> (20569u % 32u)), 13u)];
    var_2 = Struct_2(abs(var_1.a), _wgslsmith_f_op_vec2_f32(func_4(global0[_wgslsmith_index_u32(var_2.a, 7u)], vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(func_1()), var_2.b.x, _wgslsmith_f_op_f32(-967f + _wgslsmith_f_op_f32(trunc(var_1.b.x)))), u_input.c, global0[_wgslsmith_index_u32(89155u, 7u)])));
    var var_3 = vec4<i32>(firstLeadingBit(_wgslsmith_clamp_i32(0i >> (var_1.a % 32u), -1i, -14712i)), var_0.a, ~(~(-1i)), ~(-15628i) | _wgslsmith_mod_i32(var_0.a, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, var_0.a, -1i, var_0.a) ^ vec4<i32>(1i, 37491i, var_0.a, 2147483647i), -vec4<i32>(var_0.a, -2147483647i, var_0.a, 28770i))));
    var var_4 = var_0.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(531f, -517f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-410f, global2.b.x, 708f))), vec3<f32>(-1012f, _wgslsmith_f_op_f32(-var_0.c.x), 820f))));
}

