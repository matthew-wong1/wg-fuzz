struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
    c: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19>;

var<private> global1: array<vec3<u32>, 11> = array<vec3<u32>, 11>(vec3<u32>(58506u, 15699u, 0u), vec3<u32>(0u, 25115u, 45941u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(67198u, 4294967295u, 1u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(3531u, 15720u, 0u), vec3<u32>(18394u, 7402u, 4294967295u), vec3<u32>(6454u, 1u, 4294967295u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(0u, 1u, 17006u), vec3<u32>(25804u, 4294967295u, 1u));

var<private> global2: array<vec3<u32>, 19>;

var<private> global3: array<vec3<u32>, 4>;

var<private> global4: array<Struct_2, 31>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> u32 {
    global1 = array<vec3<u32>, 11>();
    var var_0 = !vec2<bool>(false, all(vec4<bool>(true, select(false, false, true), true, false)));
    let var_1 = _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(111u, 19u)], 14993i) & vec3<i32>(u_input.d, -1i, u_input.d), _wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(u_input.d, u_input.d, global0[_wgslsmith_index_u32(81219u, 19u)])), -vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 19u)], 1i, global0[_wgslsmith_index_u32(u_input.a.x, 19u)]), vec3<i32>(-7524i, -1i, -30191i) ^ vec3<i32>(global0[_wgslsmith_index_u32(u_input.b, 19u)], u_input.d, global0[_wgslsmith_index_u32(19006u, 19u)]))), -abs(vec3<i32>(u_input.d, 13816i, -1i)) << (vec3<u32>(u_input.a.x | 3490u, ~u_input.a.x, ~4088u) % vec3<u32>(32u))) >> (~(~(~vec3<u32>(1u, u_input.a.x, u_input.a.x))) % vec3<u32>(32u));
    global0 = array<i32, 19>();
    var var_2 = -360f;
    return 61u;
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = ~_wgslsmith_div_u32(45676u, ~u_input.a.x);
    let var_1 = _wgslsmith_dot_vec2_u32(~(~_wgslsmith_clamp_vec2_u32(u_input.a.yx, select(vec2<u32>(1u, var_0), u_input.c, false), u_input.c)), vec2<u32>(_wgslsmith_mult_u32(4294967295u, _wgslsmith_div_u32(u_input.b, 0u)) | (var_0 | func_3()), u_input.e));
    global1 = array<vec3<u32>, 11>();
    var var_2 = _wgslsmith_sub_i32(-firstLeadingBit(_wgslsmith_dot_vec2_i32(abs(arg_0.xy), arg_0.yy)), _wgslsmith_dot_vec2_i32(arg_0.zx, arg_0.yy));
    var_2 = -3073i;
    return Struct_1(true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1376f))), -1000f, _wgslsmith_div_f32(-284f, _wgslsmith_f_op_f32(step(1300f, -140f))))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1420f, -1000f) + _wgslsmith_f_op_f32(-1074f - -365f)), _wgslsmith_f_op_f32(f32(-1f) * -233f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1845f * -800f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-369f + 1211f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(975f, 742f, -768f, 2046f) * vec4<f32>(1247f, -1173f, 1352f, 585f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 712f, 1455f, -338f)), _wgslsmith_div_vec4_f32(vec4<f32>(540f, 189f, -450f, 875f), vec4<f32>(713f, -477f, 701f, -588f)), true)))));
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: f32) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-264f + arg_2))))) + _wgslsmith_f_op_f32(max(-1136f, arg_2)));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(min(-504f, _wgslsmith_f_op_f32(-1031f - 147f))), Struct_4(func_2(vec3<i32>(u_input.d, -52807i, -22777i)), global4[_wgslsmith_index_u32(1u, 31u)]), -295f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(trunc(391f))) * _wgslsmith_f_op_f32(floor(-1000f)))) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1953f, _wgslsmith_f_op_f32(select(263f, 2496f, any(vec2<bool>(true, false))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -687f) + _wgslsmith_f_op_f32(sign(-977f))), 1078f))));
    global2 = array<vec3<u32>, 19>();
    var var_1 = Struct_3(vec4<i32>(u_input.d, _wgslsmith_mod_i32(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(~u_input.c.x, 19u)], u_input.d), 6927i), -min(-2147483647i, global0[_wgslsmith_index_u32(u_input.e, 19u)]) << (u_input.e % 32u), 23477i), ~(~(~49727u)), false);
    global0 = array<i32, 19>();
    var var_2 = Struct_4(Struct_1(!((var_1.c && var_1.c) && true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-284f, var_0.x, 154f), vec3<f32>(323f, var_0.x, 468f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -777f) * _wgslsmith_f_op_f32(-var_0.x)), 182f, 309f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, -417f) - _wgslsmith_f_op_f32(-var_0.x))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), -539f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(var_0.x - var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * -1000f) + 893f))), Struct_2(Struct_1(!(var_0.x == var_0.x), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1902f, 297f, var_0.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1000f, 1000f, var_0.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, -933f, -437f, 511f), vec4<f32>(var_0.x, 452f, var_0.x, 493f))), var_1.c)), vec4<f32>(_wgslsmith_f_op_f32(-177f + var_0.x), _wgslsmith_f_op_f32(-423f - var_0.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(trunc(638f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x))) + _wgslsmith_div_vec3_f32(func_2(var_1.a.wwz).b, vec3<f32>(-1321f, var_0.x, var_0.x))), _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(var_1.a.x, -2147483647i, var_1.a.x), var_1.a.xyx), ~select(var_1.a.yxw, var_1.a.zzz, false))));
    return func_2(countOneBits(~(-countOneBits(var_1.a.zzx))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(any(vec3<bool>(true, true, true)), true, false);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1937f);
    var var_2 = -794f;
    var var_3 = func_1();
    global4 = array<Struct_2, 31>();
    global4 = array<Struct_2, 31>();
    var_1 = -907f;
    let x = u_input.a;
    s_output = StorageBuffer(select(firstLeadingBit(~(~vec4<u32>(19417u, u_input.a.x, u_input.c.x, 20088u))), firstTrailingBit(~vec4<u32>(14292u, 0u, u_input.c.x, u_input.e)) | (~vec4<u32>(u_input.b, u_input.b, u_input.e, 54337u) << (select(vec4<u32>(18314u, u_input.e, 0u, 1u), vec4<u32>(13527u, u_input.c.x, u_input.b, 1u), vec4<bool>(true, var_0.x, var_0.x, true)) % vec4<u32>(32u))), any(select(!vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(var_3.a, var_0.x, false, false), all(var_0.xz)))), u_input.d);
}

