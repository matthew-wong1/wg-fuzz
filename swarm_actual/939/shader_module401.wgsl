struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
    e: vec2<i32>,
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

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3) -> i32 {
    var var_0 = Struct_2(63515u, Struct_1(~vec3<u32>(0u, u_input.b.x, abs(u_input.c.x)), select(!(!vec4<bool>(true, true, arg_0.x, arg_0.x)), select(vec4<bool>(true, arg_0.x, arg_0.x, true), select(vec4<bool>(false, true, false, false), vec4<bool>(arg_0.x, false, true, false), vec4<bool>(false, arg_0.x, false, true)), !vec4<bool>(arg_0.x, true, true, arg_0.x)), u_input.e.x >= firstTrailingBit(0i))), vec3<f32>(820f, _wgslsmith_f_op_f32(f32(-1f) * -327f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)) * _wgslsmith_f_op_f32(ceil(arg_1.a.x)))));
    let var_1 = ~countOneBits(firstLeadingBit(var_0.b.a.x));
    let var_2 = _wgslsmith_f_op_vec3_f32(sign(var_0.c));
    var_0 = Struct_2(0u & max(0u, 44260u | (4294967295u ^ var_0.a)), Struct_1(~min(vec3<u32>(50656u, 25832u, var_0.b.a.x), var_0.b.a) << (u_input.c.xyz % vec3<u32>(32u)), var_0.b.b), vec3<f32>(_wgslsmith_div_f32(var_0.c.x, arg_1.a.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(1000f)), var_2.x)) - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_2.x, arg_1.a.x), var_0.c.x)))));
    var_0 = Struct_2(~(~max(var_0.a, 4294967295u)), var_0.b, var_2);
    return abs(abs(~_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, u_input.e.x, u_input.e.x, 21010i), _wgslsmith_div_vec4_i32(vec4<i32>(-14977i, u_input.e.x, -8771i, -2147483647i), vec4<i32>(2147483647i, u_input.e.x, 0i, 2147483647i)))));
}

fn func_2(arg_0: Struct_3) -> vec4<f32> {
    var var_0 = Struct_3(arg_0.a);
    let var_1 = -vec4<i32>(func_3(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), Struct_3(vec2<f32>(648f, var_0.a.x))) ^ 8525i, -select(u_input.e.x, -2147483647i, false), u_input.e.x, u_input.e.x);
    var_0 = arg_0;
    var var_2 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(603f + -551f), _wgslsmith_f_op_f32(round(557f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(arg_0.a.x, _wgslsmith_div_f32(-1000f, var_0.a.x))), -199f, true))), -1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -448f)) - arg_0.a.x), -169f)));
    var_0 = arg_0;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1903f * var_0.a.x), _wgslsmith_f_op_f32(var_2.x + var_0.a.x)), _wgslsmith_f_op_f32(var_2.x + var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -1051f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x - 3144f) - _wgslsmith_f_op_f32(f32(-1f) * -943f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-267f, var_2.x, 1129f, 370f), vec4<f32>(var_0.a.x, -265f, 470f, -1000f))))), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(select(false, true, true), select(false, false, false), any(vec3<bool>(false, false, true)), any(vec3<bool>(true, true, true))), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true)))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.a.x, 1073f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(var_2.x, var_2.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1833f + 1705f))))), _wgslsmith_div_f32(-945f, -616f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2188f, _wgslsmith_div_f32(1000f, arg_0.a.x), true)))));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: bool, arg_3: vec3<f32>) -> bool {
    let var_0 = Struct_1(_wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(~arg_0.x, 1u, u_input.c.x)), reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.x, 4294967295u, 4061u), vec3<u32>(59772u, 1u, arg_0.x)) | _wgslsmith_clamp_vec3_u32(arg_0.ywy, arg_0.zzy, u_input.a.zzy))), select(!select(vec4<bool>(true, arg_2, arg_2, true), !vec4<bool>(true, arg_2, false, arg_2), vec4<bool>(true, true, true, true)), !vec4<bool>(arg_2, arg_2, all(vec2<bool>(arg_2, arg_2)), arg_2), vec4<bool>(arg_2, false, all(!vec4<bool>(false, false, false, arg_2)), true)));
    let var_1 = u_input.c.x;
    let var_2 = -11378i;
    var var_3 = arg_2;
    let var_4 = select(!select(var_0.b.yy, var_0.b.zz, var_0.b.xw), select(!vec2<bool>(any(var_0.b.zw), true), vec2<bool>(arg_2, true == any(var_0.b.wx)), var_0.b.yz), var_0.b.wz);
    return select(false, false, var_0.b.x);
}

fn func_1(arg_0: i32) -> vec2<f32> {
    let var_0 = !func_4(vec4<u32>(72423u, 0u << (u_input.c.x % 32u), 26404u << (u_input.b.x % 32u), 32805u) ^ vec4<u32>(u_input.a.x, ~1u, u_input.a.x, u_input.d), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-142f, 725f, 1845f, -722f), vec4<f32>(-524f, -985f, -179f, -974f), true)) * _wgslsmith_f_op_vec4_f32(func_2(Struct_3(vec2<f32>(376f, -1464f))))))), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-465f, 712f, 356f) * vec3<f32>(1000f, -1642f, -1411f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-168f, 1629f, 1266f) + vec3<f32>(1082f, 961f, 3273f)), vec3<bool>(false, false, true)))));
    let var_1 = ~vec3<i32>(min(u_input.e.x, ~arg_0), ~(-2147483647i), _wgslsmith_sub_i32(0i, abs(u_input.e.x) ^ -1i));
    let var_2 = select(select(select(!(!vec4<bool>(false, false, var_0, true)), !(!vec4<bool>(var_0, var_0, false, var_0)), !var_0), select(select(!vec4<bool>(false, var_0, true, false), select(vec4<bool>(false, var_0, true, true), vec4<bool>(true, false, var_0, false), vec4<bool>(false, var_0, var_0, true)), vec4<bool>(true, true, var_0, true)), vec4<bool>(false, false, var_0, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, var_0, u_input.d > u_input.a.x, false || !var_0)), vec4<bool>(func_4(u_input.a, vec4<f32>(155f, _wgslsmith_f_op_f32(-499f - 1378f), -943f, _wgslsmith_f_op_f32(1308f * -1000f)), true, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-587f, 1000f, 1283f)))))), var_0, !(var_0 && !var_0), true), var_0);
    var var_3 = arg_0;
    var var_4 = Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(23275u, firstTrailingBit(u_input.c.x >> (52405u % 32u))), ~min(vec2<u32>(49287u, u_input.b.x), ~u_input.a.xy)), Struct_1(u_input.a.yww, !vec4<bool>(false, true, func_4(u_input.a, vec4<f32>(-149f, 1004f, 1629f, -731f), var_0, vec3<f32>(1596f, -517f, -253f)), select(true, var_2.x, false))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -885f))), 1821f, _wgslsmith_f_op_f32(-518f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(611f + 541f) - _wgslsmith_f_op_f32(-612f + -1136f)))));
    return vec2<f32>(var_4.c.x, _wgslsmith_f_op_f32(round(-678f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_sub_i32(8220i << (1u % 32u), u_input.e.x & _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, -58463i, 30803i), vec3<i32>(u_input.e.x, u_input.e.x, u_input.e.x))))));
    var_0 = Struct_3(vec2<f32>(146f, var_0.a.x));
    let var_1 = Struct_4(vec4<u32>(u_input.b.x, ~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.c.ww, u_input.b), vec2<u32>(31259u, 30372u)), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(u_input.a.x, 0u, 35304u)), vec3<u32>(~1u, ~u_input.b.x, abs(4294967295u))), u_input.b.x), 4294967295u, Struct_1(u_input.c.xwy, vec4<bool>(any(vec3<bool>(true, false, true)), -1012f < _wgslsmith_f_op_f32(floor(var_0.a.x)), true, true)));
    var var_2 = select(u_input.e.x, -49815i, true);
    let var_3 = Struct_3(vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(var_0.a.x)), _wgslsmith_f_op_f32(floor(-824f))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(var_3.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.a.x), _wgslsmith_div_f32(var_3.a.x, -2603f)))), _wgslsmith_f_op_f32(min(var_3.a.x, _wgslsmith_f_op_f32(sign(var_3.a.x)))))));
}

