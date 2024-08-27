struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
    c: bool,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 3>;

var<private> global1: f32;

var<private> global2: vec3<f32> = vec3<f32>(-649f, 365f, -947f);

var<private> global3: array<vec2<i32>, 24>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec3<f32> {
    global1 = global2.x;
    global2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2545f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.x)))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-377f, global2.x, 572f)))))))));
    global2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(338f, 315f, global2.x)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(1235f)), global2.x, _wgslsmith_f_op_f32(521f + _wgslsmith_f_op_f32(trunc(global2.x)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, _wgslsmith_f_op_f32(767f - global2.x), 277f)))));
    var var_0 = Struct_2(vec4<i32>(-1i) * -firstTrailingBit(vec4<i32>(u_input.c.x, 33568i, -325i, -1i)), true, true, (vec3<i32>(-51571i, u_input.c.x, -16532i) >> (abs(vec3<u32>(1u, u_input.a, u_input.b)) % vec3<u32>(32u))) | vec3<i32>(1i, -u_input.c.x, -_wgslsmith_mult_i32(1731i, u_input.c.x)), Struct_1(-2012f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(ceil(global2.x)), false))));
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1509f, global2.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1893f, var_0.e.a))))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_0.e.b, global2.x))))))));
}

fn func_2(arg_0: vec4<i32>) -> vec3<u32> {
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, -1224f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, 227f)), true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-474f, global2.x, global2.x) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-2163f, 206f, global2.x), vec3<f32>(1542f, global2.x, -250f)))))))));
    let var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec3_f32(func_3()).x));
    global1 = _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(var_1)))))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, global2.x)) - var_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.x))) + -124f)));
    return ~vec3<u32>(countOneBits(abs(reverseBits(0u))), 0u, 21014u);
}

fn func_4(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_1) -> i32 {
    var var_0 = vec3<i32>(u_input.c.x, -2147483647i, -_wgslsmith_mod_i32(0i, u_input.c.x));
    global3 = array<vec2<i32>, 24>();
    var var_1 = arg_1;
    var_1 = arg_1;
    let var_2 = -10456i;
    return firstLeadingBit(countOneBits(u_input.c.x));
}

fn func_1() -> Struct_1 {
    let var_0 = u_input.c.x;
    var var_1 = Struct_2(vec4<i32>(-39409i, func_4(select(vec3<u32>(13713u, 16991u, 4294967295u) | vec3<u32>(14081u, 0u, u_input.a), func_2(vec4<i32>(u_input.c.x, var_0, -1i, -39671i)), vec3<bool>(true, true, true)), true, Struct_1(global2.x, -2993f)), var_0, _wgslsmith_clamp_i32(~0i, -u_input.c.x, 2656i) >> (0u % 32u)), 784f < _wgslsmith_f_op_f32(-global2.x), all(vec3<bool>(false, !(u_input.a > u_input.b), true)), u_input.c, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1400f + global2.x))) + global2.x), _wgslsmith_f_op_f32(sign(-920f))));
    var_1 = Struct_2(vec4<i32>(func_4(vec3<u32>(_wgslsmith_add_u32(71560u, u_input.a), countOneBits(u_input.b), 63707u), var_1.b, var_1.e), _wgslsmith_clamp_i32(u_input.c.x, var_1.d.x, select(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -17664i, var_0, -1i), var_1.a), firstTrailingBit(u_input.c.x), all(global0[_wgslsmith_index_u32(u_input.a, 3u)]))), var_0, (2147483647i & _wgslsmith_mult_i32(u_input.c.x, u_input.c.x)) | var_0), var_1.c || true, false, ~vec3<i32>(min(var_0, u_input.c.x), _wgslsmith_sub_i32(var_0, var_1.a.x), 22150i) | vec3<i32>(1446i, var_0, -(-2147483647i ^ u_input.c.x)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-740f + _wgslsmith_f_op_f32(-global2.x)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -638f)))), _wgslsmith_f_op_f32(-840f * _wgslsmith_f_op_f32(f32(-1f) * -2185f))));
    let var_2 = abs(select(_wgslsmith_add_vec3_u32(vec3<u32>(~u_input.b, 3108u, 95823u), vec3<u32>(30927u, ~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.b), vec2<u32>(u_input.b, 0u)))), ~abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.a, u_input.b), vec3<u32>(u_input.a, 1u, 51012u), vec3<u32>(u_input.b, 1u, 1u))), !vec3<bool>(false, !var_1.b, all(vec2<bool>(true, false)))));
    var var_3 = vec3<i32>(var_0, var_1.d.x, _wgslsmith_sub_i32(49i, abs(_wgslsmith_div_i32(var_1.d.x, var_0 ^ u_input.c.x))));
    return var_1.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)) + 1f), -195f))));
    var_0 = func_1();
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(1f))))), 109f);
    var var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(2416f, -575f), global2.yy, select(vec2<bool>(false, false), vec2<bool>(true, false), true)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.yz))), 19440u);
}

