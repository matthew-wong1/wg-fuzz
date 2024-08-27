struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: vec3<u32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
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

var<private> global0: vec4<i32>;

var<private> global1: vec4<f32> = vec4<f32>(481f, 1563f, -3384f, -482f);

var<private> global2: array<Struct_3, 21>;

var<private> global3: array<Struct_1, 17>;

var<private> global4: Struct_1 = Struct_1(i32(-2147483648), true, vec4<bool>(false, false, false, false));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_1) -> Struct_4 {
    let var_0 = firstLeadingBit(vec4<i32>(1i, global4.a, _wgslsmith_div_i32(global4.a, u_input.b), _wgslsmith_sub_i32(_wgslsmith_mod_i32(0i, u_input.a.x), _wgslsmith_clamp_i32(global4.a, 2147483647i, global4.a)))) << (u_input.c % vec4<u32>(32u));
    let var_1 = ~u_input.c.x ^ 1u;
    var var_2 = 502f;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-517f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(round(arg_1))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(exp2(arg_1))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(877f)), 175f, true)))), _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(537f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - -535f) + 1191f))), 382f);
    var var_4 = Struct_3(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(~u_input.c, ~u_input.c) >> (u_input.c % vec4<u32>(32u)), max(vec4<u32>(0u, _wgslsmith_mod_u32(107779u, u_input.c.x), u_input.d, ~0u), u_input.c ^ u_input.c)), Struct_2(arg_2));
    return Struct_4(0i >> (~4294967295u % 32u), _wgslsmith_div_vec2_u32(~(~u_input.c.xy) >> (var_4.a.yy % vec2<u32>(32u)), ~(~select(var_4.a.yw, var_4.a.yy, true))), arg_1, _wgslsmith_mod_vec3_u32(~u_input.c.xyy, u_input.c.xzw ^ var_4.a.zzx), global2[_wgslsmith_index_u32(0u, 21u)]);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: f32, arg_3: vec4<i32>) -> vec4<bool> {
    global2 = array<Struct_3, 21>();
    var var_0 = arg_1.a.b;
    global3 = array<Struct_1, 17>();
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(2093f, _wgslsmith_f_op_f32(-1141f * -479f), global1.x, global1.x));
    var var_1 = !global4.c.xy;
    return vec4<bool>(false, select(any(arg_1.a.c.yy) && !arg_1.a.b, global4.c.x, true) || true, !((arg_1.a.a << (_wgslsmith_dot_vec2_u32(arg_0.e.a.wz, u_input.c.xw) % 32u)) != global4.a), arg_0.e.b.a.c.x);
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec2<f32>, arg_3: Struct_3) -> f32 {
    global4 = Struct_1(countOneBits(~global0.x), arg_1, select(select(func_3(func_2(vec3<i32>(arg_3.b.a.a, 0i, -2726i), global1.x, Struct_1(arg_3.b.a.a, true, vec4<bool>(false, arg_3.b.a.c.x, arg_0.c.x, false))), func_2(vec3<i32>(-26994i, -22496i, 6621i), -470f, Struct_1(global0.x, global4.b, vec4<bool>(false, arg_3.b.a.b, arg_1, arg_0.b))).e.b, _wgslsmith_f_op_f32(-arg_2.x), vec4<i32>(1i, -28360i, arg_3.b.a.a, global0.x)), select(global4.c, !global4.c, !arg_3.b.a.b), !select(vec4<bool>(true, global4.c.x, false, arg_3.b.a.b), vec4<bool>(global4.c.x, true, false, global4.c.x), vec4<bool>(arg_3.b.a.c.x, true, arg_1, arg_1))), !arg_3.b.a.c, !(global1.x <= _wgslsmith_f_op_f32(floor(global1.x)))));
    let var_0 = select(vec2<i32>(-61254i, _wgslsmith_add_i32(u_input.b, -(arg_0.a ^ 0i))), _wgslsmith_mult_vec2_i32(vec2<i32>(func_2(u_input.a, global1.x, arg_3.b.a).e.b.a.a, firstLeadingBit(arg_3.b.a.a)), (vec2<i32>(-1i) * -vec2<i32>(arg_0.a, -1402i)) << (u_input.c.zz % vec2<u32>(32u))), true && !(true | global4.b));
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(global1.zwz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.wwy)) + _wgslsmith_div_vec3_f32(vec3<f32>(arg_2.x, global1.x, 778f), _wgslsmith_div_vec3_f32(global1.xxy, global1.xxx))))));
    var_1 = global1.yww;
    global1 = vec4<f32>(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(trunc(-550f)), !(!arg_1))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, arg_2.x)))))), 1785f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -581f), _wgslsmith_f_op_f32(arg_2.x - -374f))))))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-956f - global1.x))) + -813f)));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    global3 = array<Struct_1, 17>();
    var var_0 = Struct_4(reverseBits(u_input.b << (reverseBits(_wgslsmith_div_u32(0u, u_input.c.x)) % 32u)), u_input.c.zz, _wgslsmith_f_op_f32(floor(1524f)), countOneBits(vec3<u32>(0u, reverseBits(_wgslsmith_mult_u32(u_input.d, u_input.c.x)), u_input.c.x)), global2[_wgslsmith_index_u32(4294967295u, 21u)]);
    var var_1 = !var_0.e.b.a.b;
    var var_2 = func_2(-_wgslsmith_sub_vec3_i32(~(~u_input.a), -(~vec3<i32>(1i, arg_1.a, -38324i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(arg_0.x))))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(636f * 632f) + var_0.c)))), Struct_1(i32(-1i) * -7664i, _wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(global1.x + arg_0.x)) <= _wgslsmith_f_op_f32(f32(-1f) * -1315f), global4.c)).e;
    let var_3 = _wgslsmith_f_op_vec4_f32(select(arg_0, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 2183f, arg_0.x, -1000f) + _wgslsmith_f_op_vec4_f32(exp2(arg_0))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, arg_0.x, 151f, arg_0.x))), vec4<f32>(var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.x, var_0.c)) - arg_0.x), _wgslsmith_f_op_f32(select(215f, _wgslsmith_f_op_f32(-var_0.c), any(vec4<bool>(true, var_2.b.a.b, false, false)))), 1000f))), var_2.b.a.c));
    return Struct_1(global4.a, 1u < _wgslsmith_mult_u32(~45034u, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.d, 25847u, var_0.b.x), var_2.a.zzw)), vec4<bool>(func_2(-(~vec3<i32>(var_2.b.a.a, 0i, 2147483647i)), -586f, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.d, 4294967295u, 24303u, var_0.b.x), var_0.e.a), u_input.c ^ vec4<u32>(1u, u_input.d, var_0.e.a.x, 1u)), 17u)]).e.b.a.b, var_2.a.x >= ~4294967295u, arg_1.b, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(any(!select(global4.c.wzw, global4.c.xzx, select(vec3<bool>(false, global4.b, false), global4.c.wzw, false))), true, (~0u != _wgslsmith_sub_u32(15915u, u_input.d)) | global4.c.x, global4.c.x);
    global2 = array<Struct_3, 21>();
    var var_1 = func_4(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_1(global3[_wgslsmith_index_u32(reverseBits(u_input.c.x), 17u)], !global4.c.x, _wgslsmith_f_op_vec2_f32(trunc(global1.wy)), global2[_wgslsmith_index_u32(~20095u, 21u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + global1.x)), func_2(global0.wwx, 645f, Struct_1(1i, global4.c.x, global4.c)).c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-617f)) + global1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1472f, _wgslsmith_f_op_f32(-global1.x), global1.x, _wgslsmith_f_op_f32(step(250f, 2018f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, global1.x) - vec4<f32>(1271f, 147f, global1.x, global1.x))))), Struct_1(u_input.a.x ^ _wgslsmith_mod_i32(countOneBits(global0.x), -24392i), false, select(global4.c, !(!global4.c), vec4<bool>(!global4.b, var_0.x, global1.x <= global1.x, global4.c.x))), true);
    let var_2 = _wgslsmith_add_i32(_wgslsmith_sub_i32(countOneBits(~2147483647i), u_input.a.x), ~global4.a);
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global1.x, global1.x), global1.x)) - -719f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global3[_wgslsmith_index_u32(u_input.d, 17u)], true, vec2<f32>(global1.x, global1.x), global2[_wgslsmith_index_u32(1u, 21u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-116f + global1.x)) - global1.x)), ~(~(~u_input.c.x)));
}

