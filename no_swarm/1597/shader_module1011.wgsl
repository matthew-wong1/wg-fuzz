struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec4<u32>,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(0u, vec4<f32>(-740f, -552f, -613f, 435f), Struct_1(vec4<i32>(1i, i32(-2147483648), -36561i, 1i), vec4<i32>(0i, 74432i, -1i, 4139i), vec4<f32>(299f, 454f, -350f, 126f), vec4<u32>(69883u, 29662u, 45238u, 0u), 1000f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: vec3<i32>) -> f32 {
    var var_0 = vec4<i32>(global0.c.a.x, ~global0.c.b.x, 1i, -2147483647i) & vec4<i32>(global0.c.a.x, -2147483647i, arg_0.x, -_wgslsmith_sub_i32(arg_0.x, -1i));
    let var_1 = global0.c;
    var var_2 = global0.c;
    var var_3 = ~firstLeadingBit(4294967295u);
    var_2 = global0.c;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.c.x + var_2.e)));
}

fn func_1(arg_0: vec2<bool>, arg_1: f32, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = global0.b.yz;
    let var_1 = global0.c.a.x;
    var var_2 = ~global0.c.a.x;
    var_2 = 2147483647i;
    var_2 = ~2147483647i;
    return Struct_1(global0.c.b, global0.c.b | global0.c.a, _wgslsmith_f_op_vec4_f32(sign(global0.b)), ~firstTrailingBit(max(~global0.c.d, vec4<u32>(u_input.a.x, u_input.b, 0u, global0.a))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1 * var_0.x), _wgslsmith_f_op_f32(func_2(global0.c.a.xzy))))), 1000f, _wgslsmith_div_u32(reverseBits(1u), 34056u) <= select(global0.a, u_input.a.x, !arg_0.x))));
}

fn func_3() -> i32 {
    let var_0 = global0.c.c;
    global0 = Struct_2(13261u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global0.b, _wgslsmith_f_op_vec4_f32(abs(global0.c.c)))), func_1(vec2<bool>(true, true), global0.c.e, vec3<bool>(true, true, true)));
    global0 = Struct_2(~0u, vec4<f32>(var_0.x, _wgslsmith_f_op_f32(793f - -498f), var_0.x, _wgslsmith_f_op_f32(ceil(global0.b.x))), global0.c);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(func_1(select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true), all(vec3<bool>(false, false, true))), 111f, select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false), global0.c.a.x <= global0.c.a.x)).c.x, var_0.x)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-994f - _wgslsmith_f_op_f32(func_2(vec3<i32>(global0.c.a.x, 29223i, -2147483647i)))))));
    global0 = Struct_2(min(1u, global0.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(global0.c.c)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1587f, global0.c.e, global0.c.e, 255f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.c.c.x), var_0.x, var_0.x, _wgslsmith_div_f32(var_0.x, -887f)) - global0.c.c)), global0.c);
    return -13245i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(u_input.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(global0.c.c)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.b + vec4<f32>(global0.c.e, global0.c.e, global0.b.x, global0.b.x)) - vec4<f32>(-1000f, global0.c.c.x, global0.c.c.x, global0.c.c.x))), vec4<f32>(_wgslsmith_f_op_f32(max(1161f, _wgslsmith_f_op_f32(-1336f - global0.c.c.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.c.e * global0.c.c.x), _wgslsmith_f_op_f32(global0.c.e - 1592f)), global0.c.c.x, -531f)), Struct_1(global0.c.a, global0.c.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2159f, global0.c.c.x, -1051f, global0.b.x)) + vec4<f32>(-206f, 1000f, global0.b.x, 128f))), global0.c.d, -568f));
    global0 = Struct_2(4294967295u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(global0.c.c)) + global0.b), global0.c);
    global0 = Struct_2(abs(~global0.c.d.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.b + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(global0.b, vec4<f32>(global0.c.c.x, global0.c.e, -471f, global0.c.e))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.b) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(749f, -984f, global0.c.c.x, global0.c.c.x))))), global0.c);
    global0 = Struct_2(~0u, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(486f + -288f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(global0.b.x)), 1895f))), -833f, _wgslsmith_f_op_f32(f32(-1f) * -322f)), func_1(vec2<bool>(1000f != _wgslsmith_f_op_f32(global0.b.x + global0.c.c.x), true), -559f, !vec3<bool>(all(vec4<bool>(false, true, false, true)), any(vec4<bool>(false, false, false, false)), true)));
    let var_0 = vec3<bool>(true, (_wgslsmith_dot_vec4_i32(-vec4<i32>(global0.c.b.x, -20380i, global0.c.b.x, global0.c.b.x), global0.c.a) == (global0.c.b.x | ~global0.c.b.x)) && !(!all(vec4<bool>(true, true, false, false))), (_wgslsmith_div_i32(func_3(), _wgslsmith_mod_i32(global0.c.a.x, 1i)) <= global0.c.a.x) || !all(vec2<bool>(true, true)));
    global0 = Struct_2(u_input.b, func_1(vec2<bool>(true, _wgslsmith_f_op_f32(f32(-1f) * -995f) > _wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.e)), vec3<bool>(var_0.x, _wgslsmith_f_op_f32(floor(1776f)) < 1000f, var_0.x)).c, func_1(select(var_0.yz, select(vec2<bool>(true, true), var_0.zy, select(var_0.xz, vec2<bool>(var_0.x, var_0.x), var_0.x)), false && (false | var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)), vec3<bool>(var_0.x, !var_0.x, (var_0.x || true) & false)));
    let var_1 = Struct_1(_wgslsmith_add_vec4_i32(-min(vec4<i32>(global0.c.a.x, global0.c.b.x, -2147483647i, global0.c.b.x) ^ global0.c.a, vec4<i32>(global0.c.b.x, global0.c.a.x, 61958i, global0.c.a.x) >> (vec4<u32>(48680u, u_input.b, 1u, global0.a) % vec4<u32>(32u))), global0.c.a), global0.c.a, _wgslsmith_f_op_vec4_f32(-global0.b), global0.c.d, 1500f);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(u_input.a.zy), ~(-_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(global0.c.b.zxy, var_1.b.zww, var_1.a.ywx), vec3<i32>(16790i, -2147483647i, var_1.a.x))), -global0.c.a.xy, vec4<i32>(35191i, _wgslsmith_mod_i32(var_1.b.x, _wgslsmith_clamp_i32(func_1(var_0.yy, global0.c.e, var_0).a.x, i32(-1i) * -2147483647i, -2147483647i)), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(firstTrailingBit(var_1.b.zz), -var_1.b.yw), var_1.a.wy | global0.c.b.wy), 0i));
}

