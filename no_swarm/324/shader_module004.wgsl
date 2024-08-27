struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: f32,
    e: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<u32>,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 8>;

var<private> global2: Struct_3;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4) -> i32 {
    var var_0 = global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_sub_u32(~(~(arg_1.b.x | arg_0.b.x)), 17323u)), 8u)];
    let var_1 = arg_0.a.b;
    let var_2 = _wgslsmith_sub_i32(abs(i32(-1i) * -2617i), global2.a.x);
    let var_3 = var_0.b.x;
    let var_4 = arg_0;
    return _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-2147483647i, -1i), _wgslsmith_sub_i32(abs(u_input.a.x), _wgslsmith_clamp_i32(~global2.a.x, u_input.b.x & 26040i, ~(-1i))) << (127354u % 32u), arg_1.a.a.x);
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: Struct_4, arg_3: vec4<f32>) -> vec3<f32> {
    let var_0 = vec3<i32>(u_input.a.x, global2.a.x, func_3(Struct_4(Struct_3(vec2<i32>(-1i, global2.a.x), vec2<bool>(arg_2.a.b.x, false)), _wgslsmith_mult_vec4_u32(arg_2.b >> (vec4<u32>(arg_2.b.x, arg_0.c.a.x, 0u, arg_2.b.x) % vec4<u32>(32u)), vec4<u32>(arg_0.a.a.x, 10556u, arg_0.c.a.x, 6895u)), 1813f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1441f)) - arg_2.c)), arg_2));
    global1 = array<Struct_1, 8>();
    global2 = arg_2.a;
    let var_1 = all(!select(vec2<bool>(true, arg_2.a.b.x), arg_2.a.b, vec2<bool>(false, arg_2.a.b.x))) && any(select(vec3<bool>(true, global2.b.x, arg_0.e), vec3<bool>(48407u <= arg_0.a.a.x, arg_1 <= arg_3.x, !arg_0.e), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, global2.b.x), true)));
    let var_2 = _wgslsmith_div_f32(arg_3.x, _wgslsmith_f_op_f32(-arg_1));
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(arg_0.a.b.wzy, vec3<f32>(arg_3.x, arg_1, var_2)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_3.zzz))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: vec2<i32>) -> vec2<bool> {
    let var_0 = select(_wgslsmith_div_vec2_i32(min(firstTrailingBit(vec2<i32>(global2.a.x, arg_2.x)), _wgslsmith_sub_vec2_i32(arg_1.a.a, arg_1.a.a) << (~arg_1.b.yz % vec2<u32>(32u))), (~vec2<i32>(arg_2.x, arg_1.a.a.x) | -u_input.b.zx) & firstLeadingBit(u_input.a.xx ^ u_input.b.zy)), vec2<i32>(-14182i, arg_2.x << (_wgslsmith_clamp_u32(~1u, ~arg_1.b.x, _wgslsmith_mod_u32(1u, 4294967295u)) % 32u)), all(arg_1.a.b));
    global1 = array<Struct_1, 8>();
    let var_1 = ~(-42195i ^ global2.a.x);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -827f);
    let var_3 = max(~(~(~(~arg_1.b.yzz))), vec3<u32>(~_wgslsmith_mod_u32(8528u, ~0u), 0u, arg_1.b.x));
    return select(arg_1.a.b, vec2<bool>(any(!(!vec3<bool>(global2.b.x, arg_1.a.b.x, global2.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1025f)) == _wgslsmith_f_op_f32(-152f + arg_0.x)), !select(select(select(global2.b, vec2<bool>(false, global2.b.x), global2.b), global2.b, arg_1.a.b.x), vec2<bool>(arg_1.a.b.x, true), true));
}

fn func_1(arg_0: i32) -> Struct_3 {
    var var_0 = vec4<bool>(true, u_input.a.x != reverseBits(28275i), true, any(!func_4(_wgslsmith_f_op_vec3_f32(func_2(Struct_2(global1[_wgslsmith_index_u32(1440u, 8u)], 1u, global1[_wgslsmith_index_u32(42129u, 8u)], 278f, global2.b.x), -335f, Struct_4(Struct_3(u_input.a.zy, vec2<bool>(true, false)), vec4<u32>(4294967295u, 79081u, 1u, 1u), 227f, 1224f), vec4<f32>(-489f, 709f, 684f, 121f))), Struct_4(Struct_3(vec2<i32>(-40754i, u_input.b.x), global2.b), vec4<u32>(28532u, 41930u, 4294967295u, 79925u), 1231f, 243f), abs(global2.a))));
    global1 = array<Struct_1, 8>();
    let var_1 = !(!vec3<bool>(var_0.x, select(select(false, var_0.x, true), !var_0.x, any(var_0.wzx)), false));
    var var_2 = firstTrailingBit(_wgslsmith_mult_u32(abs(1u), _wgslsmith_mult_u32(1u, 47832u) >> (select(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 4294967295u, 33042u), vec4<u32>(54422u, 0u, 1u, 4039u)), abs(1u), global2.b.x) % 32u)));
    var_0 = vec4<bool>(all(vec4<bool>(true, !select(false, var_0.x, false), global2.b.x, !var_1.x)), any(vec3<bool>(false, all(var_0.zz) || var_0.x, select(true, true, false) | select(false, true, var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(695f)), _wgslsmith_f_op_f32(abs(1119f)), true))) < _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -460f), _wgslsmith_f_op_f32(f32(-1f) * -967f)) + _wgslsmith_f_op_f32(min(-876f, 850f))), select(func_4(vec3<f32>(678f, _wgslsmith_f_op_f32(f32(-1f) * -256f), -727f), Struct_4(Struct_3(vec2<i32>(arg_0, u_input.a.x), vec2<bool>(var_1.x, global2.b.x)), firstTrailingBit(vec4<u32>(8982u, 7257u, 8284u, 0u)), _wgslsmith_f_op_vec3_f32(func_2(Struct_2(global1[_wgslsmith_index_u32(0u, 8u)], 0u, Struct_1(vec2<u32>(61234u, 54682u), vec4<f32>(489f, -168f, 1000f, -2020f), 1000f), -472f, var_0.x), -461f, Struct_4(Struct_3(global2.a, global2.b), vec4<u32>(47833u, 1u, 123805u, 51004u), -702f, 413f), vec4<f32>(866f, -1225f, 1290f, -375f))).x, _wgslsmith_f_op_f32(abs(-1121f))), _wgslsmith_clamp_vec2_i32(-vec2<i32>(arg_0, 0i), u_input.a.xx, _wgslsmith_mult_vec2_i32(u_input.a.zz, vec2<i32>(arg_0, arg_0)))).x, true, true));
    return Struct_3(vec2<i32>(-1i) * -max(-global2.a, -u_input.b.yy), func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2130f, _wgslsmith_f_op_f32(max(-641f, -1198f)), _wgslsmith_f_op_f32(-878f + -1000f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1201f, 590f, 1000f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1027f, 489f, -1630f)))), Struct_4(Struct_3(vec2<i32>(global2.a.x, 1i), global2.b), ~_wgslsmith_mod_vec4_u32(vec4<u32>(2815u, 75305u, 4294967295u, 24413u), vec4<u32>(4294967295u, 67885u, 85877u, 4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -191f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec2<i32>(0i, arg_0) ^ vec2<i32>(~arg_0, u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(max(-1i, u_input.a.x), -global2.a.x, 0i, 1i), abs(-vec4<i32>(-2147483647i, 1i, -2147483647i, u_input.b.x)))));
    let var_1 = false;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1631f, -1919f, 146f, 497f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-150f, 238f, -443f, -2164f))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-215f, -676f, 1659f, -177f) * vec4<f32>(-1385f, -408f, -320f, 855f)))))));
    var_0 = Struct_3(-func_1(u_input.b.x).a, vec2<bool>(max(~(-32484i), reverseBits(global2.a.x)) > 1i, any(vec3<bool>(true, true, func_4(var_2.wzz, Struct_4(Struct_3(vec2<i32>(-47203i, 62585i), vec2<bool>(false, var_0.b.x)), vec4<u32>(448u, 67870u, 21587u, 8878u), -1046f, var_2.x), u_input.b.xx).x))));
    var var_3 = !(!select(vec3<bool>(all(vec3<bool>(global2.b.x, true, false)), true, all(vec4<bool>(true, true, true, false))), !vec3<bool>(global2.b.x, var_1, var_0.b.x), var_1));
    let var_4 = vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, ~reverseBits(4294967295u)), ~vec2<u32>(1u, 1u)), 4294967295u, 1u, 1429u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-626f, _wgslsmith_f_op_f32(-1345f + _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(ceil(-124f))))), -(-_wgslsmith_mod_i32(0i, 26580i) | -func_1(-1i).a.x), global2.a.x, 1000f);
}

