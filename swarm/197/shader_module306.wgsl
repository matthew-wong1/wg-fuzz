struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(vec3<i32>(1i, -1i, -1i), -18397i, 1595f, vec4<bool>(false, true, false, false));

var<private> global2: array<vec4<u32>, 32>;

var<private> global3: array<vec2<f32>, 9>;

var<private> global4: vec3<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> bool {
    global1 = Struct_1(vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, arg_1.a.x) >> (u_input.b.zx % vec2<u32>(32u)), -vec2<i32>(1i, -2147483647i), global1.a.zy), global1.a.zx), ~(~global1.b), _wgslsmith_div_i32(global1.b, arg_1.b)), global1.a.x, arg_1.c, select(select(global0.d, select(!arg_1.d, arg_1.d, false), vec4<bool>(!arg_1.d.x, global4.x, true, false && arg_1.d.x)), !(!vec4<bool>(global4.x, true, global0.d.x, global0.d.x)), vec4<bool>(_wgslsmith_f_op_f32(sign(global1.c)) <= _wgslsmith_f_op_f32(-1282f - -1094f), !global1.d.x == true, global1.a.x < ~60208i, select(global4.x | global1.d.x, global0.d.x, !global0.d.x))));
    global1 = Struct_1(vec3<i32>(arg_1.b, firstLeadingBit(global1.b), max(_wgslsmith_mult_i32(-global1.a.x, 1i), 2147483647i)), 24855i, 1263f, vec4<bool>(true, global1.d.x, true, false));
    let var_0 = ~_wgslsmith_mod_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, global1.a.x), vec2<i32>(44889i, u_input.a.x)), vec2<i32>(~(-2147483647i), arg_1.a.x));
    let var_1 = u_input.a.x;
    var var_2 = Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(152f, -3267f, -238f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(937f)))), vec4<f32>(arg_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c - 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) - _wgslsmith_f_op_f32(abs(-803f))), arg_1.c)));
    return false;
}

fn func_2() -> vec2<u32> {
    let var_0 = Struct_1(u_input.a.zxx, u_input.a.x, _wgslsmith_f_op_f32(1290f + _wgslsmith_f_op_f32(global1.c - global0.c)), vec4<bool>(all(!select(vec3<bool>(global4.x, false, false), vec3<bool>(global4.x, global0.d.x, false), global1.d.xyz)), true, global4.x, -1716f == _wgslsmith_f_op_f32(trunc(-737f))));
    let var_1 = select(global1.d.x, false, global0.d.x);
    global1 = Struct_1(-(max(global1.a, global0.a) << ((~u_input.b.zyw << (vec3<u32>(u_input.b.x, 1u, 23929u) % vec3<u32>(32u))) % vec3<u32>(32u))), 2147483647i, var_0.c, vec4<bool>(func_3((u_input.a.x < -1i) || (global0.b <= global0.b), Struct_1(global0.a, 1i, 2565f, vec4<bool>(global4.x, var_0.d.x, global0.d.x, var_0.d.x)), u_input.b.x), var_0.d.x, true, func_3(!(global4.x || var_0.d.x), var_0, ~u_input.b.x & u_input.b.x)));
    var var_2 = !var_0.d;
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, global1.c, 478f, global1.c), vec4<f32>(global1.c, global1.c, -756f, var_0.c), global0.d.x)), vec4<f32>(var_0.c, global1.c, var_0.c, -283f), true)) - vec4<f32>(1920f, _wgslsmith_f_op_f32(round(var_0.c)), _wgslsmith_f_op_f32(step(global1.c, global0.c)), _wgslsmith_f_op_f32(sign(-2227f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c, var_0.c, var_0.c, 513f))))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(round(var_0.c)), 209f, -140f, var_0.c), vec4<f32>(-729f, 134f, _wgslsmith_f_op_f32(max(var_0.c, 269f)), -1735f)))), vec4<bool>(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(180f + 397f)), global1.d.x, true)));
    return ~(~firstLeadingBit(u_input.b.zw >> (u_input.b.zx % vec2<u32>(32u))));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: Struct_2) -> vec4<f32> {
    var var_0 = func_2();
    var_0 = _wgslsmith_add_vec2_u32(u_input.b.yy, ~_wgslsmith_div_vec2_u32(vec2<u32>(0u, var_0.x), min(vec2<u32>(var_0.x, 8219u), u_input.b.zw))) & ~(~u_input.b.zw);
    var_0 = vec2<u32>(max(u_input.b.x, _wgslsmith_sub_u32(var_0.x, ~var_0.x)), ~(~1u));
    global1 = Struct_1(-(~vec3<i32>(global1.b, 15083i, reverseBits(global0.a.x))), ~global1.b, _wgslsmith_f_op_f32(-142f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1399f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(arg_1, global0.c)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), global0.d);
    var var_1 = min(abs(_wgslsmith_mod_i32(-1924i, 2147483647i)), i32(-1i) * -(~min(global0.a.x, global0.b)));
    return arg_2.a;
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    var var_0 = arg_3;
    var var_1 = !select(global4.zx, !select(vec2<bool>(global4.x, true), !var_0.d.wx, true), select(vec2<bool>(true, global0.d.x != arg_1.x), vec2<bool>(!global4.x, true), all(vec2<bool>(global1.d.x, var_0.d.x)) | false));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-267f, global1.c, global1.c, arg_3.c) * vec4<f32>(1620f, -526f, 862f, global1.c))))) * arg_0));
    var var_3 = select(countOneBits(u_input.a), -_wgslsmith_div_vec4_i32(-vec4<i32>(1i, u_input.a.x, global1.a.x, u_input.a.x) & vec4<i32>(-1i, global0.a.x, arg_3.b, 2147483647i), u_input.a), global4.x);
    let var_4 = arg_3;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, -171f, 711f, global1.c), vec4<f32>(1000f, -910f, -1978f, -1055f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1801f, 562f, 1459f, 1064f)) + _wgslsmith_f_op_vec4_f32(func_1(4294967295u, 945f, Struct_2(vec4<f32>(412f, global0.c, -1677f, global0.c))))))), global1.d.xzy, Struct_2(vec4<f32>(global0.c, _wgslsmith_f_op_f32(-global0.c), global0.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(1177f, global1.c)))))), Struct_1(vec3<i32>(47815i, u_input.a.x, u_input.a.x ^ -u_input.a.x), 0i, 1731f, select(vec4<bool>(!global1.d.x, false, !global0.d.x, true), !(!vec4<bool>(global0.d.x, false, global4.x, global1.d.x)), global4.x)));
    var var_1 = firstLeadingBit(global0.a.x);
    global2 = array<vec4<u32>, 32>();
    var var_2 = vec4<bool>(true, !(!any(global1.d) == any(global0.d.zxw)), _wgslsmith_f_op_f32(-var_0.a.x) < var_0.a.x, u_input.b.x >= (u_input.b.x & firstTrailingBit(~u_input.b.x)));
    var var_3 = reverseBits(~_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(31743u, 70446u, u_input.b.x), _wgslsmith_dot_vec2_u32(u_input.b.yz, vec2<u32>(1u, u_input.b.x))), vec2<u32>(u_input.b.x, 4294967295u) | _wgslsmith_sub_vec2_u32(vec2<u32>(16764u, u_input.b.x), u_input.b.zx)));
    var var_4 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(var_0.a.x, -447f)))))), _wgslsmith_f_op_f32(f32(-1f) * -661f), _wgslsmith_f_op_f32(f32(-1f) * -429f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x - -790f) + _wgslsmith_f_op_f32(round(-237f)))));
    let var_5 = select(!global1.d.wx, vec2<bool>(false, !all(vec4<bool>(true, true, true, true))), global4.x);
    var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(var_0.a, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(859f, var_0.a.x, global1.c, global0.c), vec4<f32>(var_0.a.x, 310f, var_4.a.x, -249f), false))))) - vec4<f32>(_wgslsmith_f_op_f32(-308f + _wgslsmith_f_op_f32(f32(-1f) * -841f)), global1.c, _wgslsmith_f_op_f32(-func_4(var_4.a, var_2.ywz, Struct_2(vec4<f32>(2805f, -452f, global1.c, global1.c)), Struct_1(vec3<i32>(-2147483647i, 1i, 16186i), u_input.a.x, global0.c, global1.d)).a.x), _wgslsmith_f_op_f32(744f * 427f))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_f_op_vec4_f32(func_1(abs(reverseBits(1u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -669f))), Struct_2(var_0.a))).x);
}

