struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: bool,
    d: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: f32,
}

struct Struct_4 {
    a: bool,
    b: vec4<bool>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 12>;

var<private> global1: Struct_4 = Struct_4(true, vec4<bool>(true, false, true, true), vec3<i32>(24329i, 57053i, -1i), vec3<u32>(4294967295u, 32581u, 1u));

var<private> global2: bool;

var<private> global3: bool = true;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> f32 {
    let var_0 = 1u;
    var var_1 = !global1.b.x;
    var var_2 = abs(global1.d.x ^ ((0u ^ abs(var_0)) | 0u));
    let var_3 = Struct_2(global1.b.yyy, -281f, !global1.b.x, countOneBits(global1.c.x));
    var_1 = var_3.a.x;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1034f, _wgslsmith_f_op_f32(586f - 663f)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

fn func_3() -> f32 {
    var var_0 = any(vec2<bool>(!any(global1.b.xxy), !all(vec2<bool>(global1.b.x, global1.b.x))));
    global3 = false | (global1.b.x || global1.b.x);
    var var_1 = vec3<i32>(~(-countOneBits(_wgslsmith_add_i32(u_input.b.x, u_input.a))), max(~u_input.b.x, 35853i), reverseBits(_wgslsmith_add_i32(u_input.b.x, 1i)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(207f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1587f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(293f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(349f - 1838f)), -270f))));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: Struct_3) -> Struct_3 {
    var var_0 = false;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(arg_1 + 259f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1)))))) - vec2<f32>(346f, _wgslsmith_f_op_f32(func_2())));
    let var_2 = _wgslsmith_f_op_f32(func_2());
    var var_3 = Struct_5(Struct_2(vec3<bool>(false, all(select(global1.b.ww, global1.b.yz, false)), true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-558f, 227f)), arg_1, !global1.b.x))), true, min(global1.c.x, arg_0)), Struct_1(arg_2.b, _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_add_u32(0u, global1.d.x), _wgslsmith_dot_vec3_u32(vec3<u32>(global1.d.x, global1.d.x, 0u), global1.d), 4294967295u, 1u), countOneBits(vec4<u32>(4294967295u, 8158u, global1.d.x, 6710u) ^ vec4<u32>(global1.d.x, arg_2.b.x, arg_2.b.x, 1u)))));
    let var_4 = -_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0, global1.c.x), (_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-2147483647i, -15258i), global1.c.yx) | global1.c.yy) & vec2<i32>(select(global1.c.x, -1i, true), var_3.a.d), global1.c.zx);
    return Struct_3(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.d))))), 1998f), reverseBits(firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(global1.d.x, 1u), global1.d.zz) | ~global1.d.zx)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(834f, arg_1), arg_2.a, true)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_1)))) + _wgslsmith_f_op_vec2_f32(exp2(var_1))), _wgslsmith_div_f32(1978f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -106f)))));
}

fn func_4(arg_0: bool, arg_1: vec2<bool>, arg_2: u32, arg_3: Struct_3) -> u32 {
    var var_0 = Struct_4(true, select(!global1.b, select(global1.b, global1.b, vec4<bool>(any(vec4<bool>(arg_1.x, arg_0, true, true)), global1.b.x, arg_1.x & true, !global1.a)), all(global1.b)), global1.c, global1.d);
    var var_1 = var_0.d;
    var var_2 = global0[_wgslsmith_index_u32(21680u, 12u)];
    global2 = false;
    global3 = false;
    return arg_3.b.x | _wgslsmith_dot_vec3_u32(min(~vec3<u32>(38803u, arg_2, arg_2), vec3<u32>(_wgslsmith_add_u32(arg_2, 4294967295u), firstLeadingBit(var_1.x), var_1.x)), ~(global1.d << (select(var_0.d, global1.d, vec3<bool>(false, true, false)) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_4(!(!all(select(vec2<bool>(false, global1.b.x), vec2<bool>(global1.b.x, false), vec2<bool>(global1.b.x, global1.b.x)))), global1.b, vec3<i32>(abs(_wgslsmith_sub_i32(0i, min(1i, -62992i))), firstLeadingBit(~_wgslsmith_mod_i32(u_input.b.x, -34853i)), global1.c.x), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(global1.d.x, ~4294967295u), func_4(false, !global1.b.xz, _wgslsmith_sub_u32(global1.d.x, 12930u), func_1(-14842i, -274f, Struct_3(vec2<f32>(-894f, -1212f), global1.d.yy, vec2<f32>(645f, 305f), -454f))), global1.d.x), min(~_wgslsmith_div_vec3_u32(vec3<u32>(1u, 10309u, 101303u), global1.d), global1.d)));
    var var_0 = max(global0[_wgslsmith_index_u32(global1.d.x, 12u)], ~(~vec4<i32>(_wgslsmith_dot_vec2_i32(global1.c.yz, vec2<i32>(-24414i, 2147483647i)), -2147483647i, global1.c.x, _wgslsmith_mod_i32(-16105i, u_input.b.x))));
    global2 = !all(vec2<bool>((i32(-1i) * -51390i) < _wgslsmith_dot_vec2_i32(vec2<i32>(-33387i, u_input.b.x), vec2<i32>(1i, u_input.a)), _wgslsmith_f_op_f32(ceil(-1612f)) <= _wgslsmith_f_op_f32(func_3())));
    let var_1 = select(!global1.b.wz, !global1.b.xw, true);
    var var_2 = Struct_2(select(select(global1.b.zzy, select(select(vec3<bool>(var_1.x, global1.a, var_1.x), global1.b.zzx, false), vec3<bool>(true, true, true), false | var_1.x), select(!global1.b.zwx, global1.b.wxz, any(vec4<bool>(true, false, var_1.x, global1.b.x)))), !global1.b.www, vec3<bool>(true, true, false)), _wgslsmith_f_op_f32(f32(-1f) * -455f), global1.a, var_0.x);
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -464f);
    global0 = array<vec4<i32>, 12>();
    let var_4 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.b))), _wgslsmith_f_op_f32(func_2()))), _wgslsmith_clamp_vec2_u32(firstTrailingBit(~global1.d.yx), min(global1.d.yx, abs(vec2<u32>(global1.d.x, global1.d.x) | global1.d.zy)), max(_wgslsmith_add_vec2_u32(global1.d.zx, global1.d.xz) & vec2<u32>(0u, 4294967295u), vec2<u32>(0u, func_4(var_1.x, vec2<bool>(false, var_2.a.x), global1.d.x, Struct_3(vec2<f32>(var_2.b, var_3), global1.d.xy, vec2<f32>(1894f, var_2.b), var_3))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(566f)), _wgslsmith_div_f32(-985f, var_3)) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b, -1007f)))))), var_2.b);
    let var_5 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d, global1.d);
}

