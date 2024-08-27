struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: vec2<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_3,
    d: Struct_1,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec3<f32> = vec3<f32>(-206f, 768f, 437f);

var<private> global2: Struct_5 = Struct_5(Struct_1(vec2<i32>(1i, 1i), true, vec3<f32>(-1359f, 1043f, -207f)), vec4<i32>(-1i, 2147483647i, 1958i, -651i), Struct_3(vec4<u32>(46876u, 1u, 33397u, 27542u), Struct_2(-1588f, vec3<u32>(0u, 68645u, 7988u), -5306i, Struct_1(vec2<i32>(-17577i, -18113i), false, vec3<f32>(511f, 1438f, -1555f)))), Struct_1(vec2<i32>(-1i, 2147483647i), false, vec3<f32>(-635f, -801f, 281f)), vec4<f32>(892f, 323f, -2126f, 2625f));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: vec2<f32>) -> u32 {
    global2 = Struct_5(global2.a, global2.b, global2.c, global2.d, global2.e);
    let var_0 = true;
    let var_1 = reverseBits(u_input.b.zx);
    global1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(822f)), -928f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - global2.a.c.x) * _wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(select(global1.x, global2.e.x, global2.a.b)))), _wgslsmith_f_op_f32(-global2.d.c.x)) - global2.d.c);
    global2 = Struct_5(Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(countOneBits(u_input.a.x), global2.b.x), vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.a.zxy, global2.b.xwx), ~u_input.c.x)), any(select(!vec4<bool>(var_0, var_0, true, true), vec4<bool>(arg_0, global2.d.b, false, arg_0), all(vec2<bool>(arg_0, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-373f, 1318f, 969f))))))), max(~(~_wgslsmith_div_vec4_i32(global2.b, global2.b)), vec4<i32>(1i, u_input.a.x << ((global2.c.b.b.x << (global2.c.b.b.x % 32u)) % 32u), abs(-26496i) ^ global2.d.a.x, firstTrailingBit(firstLeadingBit(-26174i)))), global2.c, Struct_1(u_input.c.zz, any(vec2<bool>(true, any(vec2<bool>(true, arg_0)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-219f, global2.a.c.x, global1.x), global2.c.b.d.c)))), _wgslsmith_f_op_vec4_f32(-global2.e));
    return global2.c.b.b.x;
}

fn func_2(arg_0: Struct_4, arg_1: bool, arg_2: vec2<i32>) -> vec3<u32> {
    global1 = vec3<f32>(arg_0.a, -258f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global1.x)), global2.a.c.x)));
    var var_0 = ~global2.c.a.x;
    let var_1 = global2.c.b;
    global0 = 0i;
    var var_2 = ~_wgslsmith_add_vec3_u32(u_input.b, vec3<u32>(0u, func_3(arg_0.c.x || var_1.d.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c.b.d.c.x, -767f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, var_1.d.c.x) * vec2<f32>(global2.d.c.x, -401f))), firstLeadingBit(firstTrailingBit(u_input.b.x))));
    return firstTrailingBit(vec3<u32>(_wgslsmith_mult_u32(0u, 65624u), 0u, var_2.x));
}

fn func_1(arg_0: vec4<i32>, arg_1: u32, arg_2: vec4<f32>) -> Struct_4 {
    var var_0 = Struct_3(global2.c.a, Struct_2(1000f, reverseBits(func_2(Struct_4(-1000f, global2.a.c.x, vec2<bool>(global2.c.b.d.b, global2.a.b)), true, vec2<i32>(27171i, arg_0.x))), min(global2.a.a.x, _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(u_input.d, arg_0.x, global2.c.b.c)), u_input.a.zzw)), global2.a));
    let var_1 = _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~firstTrailingBit(vec2<u32>(0u, 1u) >> (vec2<u32>(43032u, var_0.a.x) % vec2<u32>(32u))), vec2<u32>(1u, 73686u)), 20644u);
    global0 = -1i;
    var var_2 = Struct_5(Struct_1(_wgslsmith_div_vec2_i32(firstTrailingBit(var_0.b.d.a), countOneBits(vec2<i32>(-15641i, 0i) | vec2<i32>(arg_0.x, global2.c.b.d.a.x))), all(select(vec3<bool>(true, false, true), vec3<bool>(false, global2.c.b.d.b, var_0.b.d.b), true)) & (abs(u_input.e) != ~11476u), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.b.d.c.x + -864f), _wgslsmith_f_op_f32(global2.d.c.x - -1330f), -1000f) * _wgslsmith_f_op_vec3_f32(-global2.d.c))), -vec4<i32>(abs(var_0.b.c), 35419i, ~u_input.c.x, ~arg_0.x), Struct_3(vec4<u32>(~1u, _wgslsmith_add_u32(var_1, var_1), _wgslsmith_div_u32(5660u, _wgslsmith_mult_u32(0u, global2.c.a.x)), u_input.e), Struct_2(arg_2.x, u_input.b, min(u_input.a.x, u_input.d), var_0.b.d)), Struct_1(vec2<i32>(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-9616i, u_input.c.x, -1i, 1i)), vec4<i32>(arg_0.x, -2147483647i, global2.c.b.d.a.x, arg_0.x)), u_input.d), -2147483647i > ~_wgslsmith_clamp_i32(-62567i, arg_0.x, 2147483647i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_0.b.d.c)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(arg_2))))));
    var_0 = global2.c;
    return Struct_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -390f)))), _wgslsmith_f_op_f32(floor(-212f)), vec2<bool>(select(!any(vec4<bool>(false, true, var_0.b.d.b, global2.d.b)), all(vec2<bool>(false, var_0.b.d.b)) == global2.c.b.d.b, all(vec3<bool>(var_2.a.b, true, false))), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.a, ~global2.c.b.b.x, global2.e);
    var var_1 = _wgslsmith_div_u32(countOneBits(firstTrailingBit(0u)) >> (4294967295u % 32u), ~func_2(var_0, global2.a.b, _wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(-1i, -87425i)), vec2<i32>(52422i, -2147483647i))).x);
    let var_2 = reverseBits(~(~_wgslsmith_mult_vec2_u32(u_input.b.yy, vec2<u32>(77394u, global2.c.b.b.x))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(global1.x)))), var_0.b));
    var var_4 = vec4<i32>(24108i, -7242i, global2.b.x, global2.c.b.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global2.e - vec4<f32>(785f, var_3, var_0.a, 333f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, 133f, -1930f, global1.x))), _wgslsmith_f_op_vec4_f32(exp2(global2.e)), vec4<bool>(!global2.d.b, true, global2.d.b, true))), global2.e), vec3<u32>(func_2(func_1(_wgslsmith_sub_vec4_i32(vec4<i32>(var_4.x, -6240i, 7358i, var_4.x), u_input.a), max(1u, 0u), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 2516f, var_3, -1034f) * vec4<f32>(2022f, global2.e.x, -886f, global2.e.x))), all(vec2<bool>(false, global2.c.b.d.b)), firstTrailingBit(-var_4.yw)).x, _wgslsmith_dot_vec3_u32(u_input.b ^ vec3<u32>(u_input.b.x, 4294967295u, 0u), vec3<u32>(select(4294967295u, 4294967295u, var_0.c.x), _wgslsmith_mult_u32(u_input.e, 109653u), global2.c.b.b.x)), countOneBits(global2.c.b.b.x)), vec2<i32>(-23539i, var_4.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1279f)), 141f));
}

