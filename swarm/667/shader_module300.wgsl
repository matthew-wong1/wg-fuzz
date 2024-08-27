struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 269f;

var<private> global1: i32;

var<private> global2: array<Struct_1, 21>;

var<private> global3: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(69720u, vec4<f32>(-473f, 754f, 744f, 794f)), Struct_1(1u, vec4<f32>(-153f, 1524f, 444f, 462f)), Struct_1(1u, vec4<f32>(1682f, 1161f, 631f, -401f)), Struct_1(1u, vec4<f32>(-1000f, -370f, 506f, 520f)), Struct_1(0u, vec4<f32>(508f, -659f, -1326f, 286f)), Struct_1(70758u, vec4<f32>(322f, -210f, -114f, -674f)), Struct_1(1u, vec4<f32>(404f, 190f, -808f, 1594f)), Struct_1(0u, vec4<f32>(-134f, 889f, 511f, -651f)), Struct_1(0u, vec4<f32>(-407f, 167f, 140f, 552f)), Struct_1(0u, vec4<f32>(1025f, 641f, 344f, -231f)), Struct_1(187u, vec4<f32>(-1147f, -122f, 372f, -322f)), Struct_1(26208u, vec4<f32>(-103f, 1496f, -884f, 210f)));

var<private> global4: array<u32, 2> = array<u32, 2>(1u, 4294967295u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> vec3<u32> {
    var var_0 = true || !(true | !any(vec4<bool>(true, false, false, true)));
    let var_1 = any(vec2<bool>(any(vec3<bool>(true, true, true)) && !all(vec4<bool>(true, true, true, false)), true));
    let var_2 = vec3<i32>(reverseBits(-6056i), abs(abs(-1i)), -18599i);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-136f * -681f) - -545f), 720f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1039f, 709f))))));
    return firstLeadingBit(~(~(~(vec3<u32>(arg_0, 4294967295u, 46674u) << (u_input.e.yzw % vec3<u32>(32u))))));
}

fn func_4(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_2, arg_3: Struct_1) -> vec2<bool> {
    return !(!(!select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), true)));
}

fn func_2(arg_0: vec3<u32>, arg_1: i32, arg_2: u32) -> Struct_1 {
    var var_0 = all(func_4(_wgslsmith_sub_vec3_u32(~_wgslsmith_add_vec3_u32(u_input.e.xxw, vec3<u32>(28706u, 0u, arg_0.x)), func_3(u_input.a.x >> (arg_2 % 32u))), ~(i32(-1i) * -2147483647i) & ~arg_1, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -100f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-801f - -272f) + _wgslsmith_div_f32(-519f, -403f))), global3[_wgslsmith_index_u32(select(~func_3(5214u).x, arg_0.x, all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), true))), 12u)]));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(365f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(795f + -269f), _wgslsmith_f_op_f32(round(426f))))))));
    let var_2 = _wgslsmith_sub_vec2_u32(u_input.a, u_input.a);
    var var_3 = -1659f;
    global0 = _wgslsmith_f_op_f32(-192f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f * _wgslsmith_div_f32(-1000f, -2049f))))));
    return Struct_1(arg_2, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-763f)), -228f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2425f) - _wgslsmith_f_op_f32(f32(-1f) * -496f))), 254f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1811f)) + -1021f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, -106f))) * -1416f)));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>) -> i32 {
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(arg_0.b.x, arg_0.b.x))))))))));
    global1 = _wgslsmith_sub_i32(abs(firstTrailingBit(~1i)) | u_input.b, u_input.c.x);
    let var_0 = firstLeadingBit(arg_0.a);
    global2 = array<Struct_1, 21>();
    global1 = -45330i;
    return _wgslsmith_clamp_i32(~u_input.c.x, min(u_input.c.x, 1i), 4097i);
}

fn func_1() -> vec2<i32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1034f, -197f))), -1012f)), _wgslsmith_f_op_f32(-1f));
    global0 = -1794f;
    var var_1 = firstTrailingBit(vec4<u32>(u_input.e.x >> (_wgslsmith_clamp_u32(~global4[_wgslsmith_index_u32(u_input.a.x, 2u)], ~24585u, _wgslsmith_sub_u32(global4[_wgslsmith_index_u32(79718u, 2u)], u_input.e.x)) % 32u), ~_wgslsmith_mult_u32(~4294967295u, firstTrailingBit(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(37400u, 2u)], 2u)], 2u)])), 10273u >> (~_wgslsmith_dot_vec2_u32(u_input.e.yz, vec2<u32>(35839u, 41695u)) % 32u), ~(~(~4294967295u))));
    var var_2 = Struct_1(_wgslsmith_div_u32(~(~global4[_wgslsmith_index_u32(1u, 2u)]) << (min(firstTrailingBit(0u), u_input.e.x) % 32u), ~var_1.x), vec4<f32>(-1589f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_div_f32(-288f, var_0.x)) * -439f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -370f))), var_0.x));
    global4 = array<u32, 2>();
    return vec2<i32>(func_5(func_2(~vec3<u32>(var_1.x, 98509u, var_2.a), _wgslsmith_dot_vec2_i32(u_input.c.xy, u_input.c.zx), var_2.a), vec4<u32>(_wgslsmith_mult_u32(1u, var_2.a), ~28934u, firstLeadingBit(16802u), ~38559u)), firstLeadingBit(u_input.b) | u_input.b) | u_input.c.zx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2841f, -1000f)) * 2288f), _wgslsmith_f_op_f32(1015f - _wgslsmith_f_op_f32(-216f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(165f, -244f)), 1519f))));
    global2 = array<Struct_1, 21>();
    var var_1 = global2[_wgslsmith_index_u32(u_input.a.x, 21u)];
    let var_2 = min(~(func_1() & (u_input.c.zy & vec2<i32>(u_input.c.x, 14235i))) & -vec2<i32>(i32(-1i) * -1i, _wgslsmith_mult_i32(13837i, -55306i)), abs(u_input.c.xx));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1173f - _wgslsmith_f_op_f32(-var_1.b.x)), var_1.b.x), 359f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -371f), 988f)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec3<u32>(u_input.d, ~(~u_input.e.x), var_1.a)), func_3(var_1.a).x, abs(min(~abs(vec4<i32>(-29591i, 31482i, var_2.x, u_input.c.x)), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, u_input.c.x, -1i, -52037i), vec4<i32>(2147483647i, 17804i, var_2.x, -43543i)), vec4<i32>(-1i, var_2.x, -18276i, 31326i)))), _wgslsmith_f_op_vec2_f32(-var_1.b.yx));
}

