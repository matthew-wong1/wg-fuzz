struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec4<bool>,
    e: vec2<bool>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_3,
    c: f32,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: Struct_1;

var<private> global2: vec2<i32> = vec2<i32>(-36891i, 64220i);

var<private> global3: array<Struct_4, 30>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(365f, global1.c) * vec2<f32>(-250f, global1.c)), _wgslsmith_div_vec2_f32(vec2<f32>(-137f, global1.c), vec2<f32>(global1.c, global1.c)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c, global1.c))))))));
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: u32, arg_3: Struct_2) -> vec3<i32> {
    global1 = Struct_1(arg_3.b.a, firstLeadingBit(26293u), arg_3.a.x);
    let var_0 = min(abs(vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(94u, 2073u, arg_2), vec3<u32>(arg_2, 15966u, 4294967295u)), reverseBits(arg_2), ~1u)), (~(vec3<u32>(4294967295u, 1u, arg_3.b.b) ^ vec3<u32>(100150u, arg_1.b.b, 4294967295u)) >> (reverseBits(~vec3<u32>(arg_3.b.b, 5727u, 71210u)) % vec3<u32>(32u))) & _wgslsmith_clamp_vec3_u32(select(_wgslsmith_mult_vec3_u32(vec3<u32>(global1.b, 4294967295u, 4294967295u), vec3<u32>(global1.b, arg_1.b.b, 1u)), firstTrailingBit(vec3<u32>(0u, 4294967295u, arg_3.b.b)), select(vec3<bool>(arg_1.a, true, true), vec3<bool>(arg_1.a, true, true), vec3<bool>(arg_0, true, arg_0))), ~firstLeadingBit(vec3<u32>(arg_2, 32717u, arg_2)), ~vec3<u32>(1u, 43185u, arg_1.b.b)));
    var var_1 = Struct_4(arg_0, Struct_1(global1.a, ~(~(4294967295u & arg_1.b.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(152f + -1000f))));
    var var_2 = reverseBits(abs(abs(4294967295u)));
    var var_3 = arg_1.a;
    return vec3<i32>(~(-_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b.a.x, global2.x, -1i), arg_3.b.a.xxx), 1i)), arg_3.b.a.x, ~reverseBits(-_wgslsmith_sub_i32(1i, 4870i)));
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.c))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -626f) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-119f - global1.c))))));
    global2 = firstLeadingBit(firstLeadingBit(global1.a.xx) ^ global1.a.wx);
    let var_1 = !(!(global1.a.x > _wgslsmith_dot_vec4_i32(vec4<i32>(global1.a.x, u_input.b, u_input.b, 0i), vec4<i32>(-11348i, global1.a.x, 21771i, u_input.b))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-344f, 1401f), vec2<f32>(var_0, global1.c)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-158f, 1113f))))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-386f, -1360f), _wgslsmith_f_op_vec2_f32(vec2<f32>(712f, -384f) - vec2<f32>(708f, 246f)))))), Struct_1(vec4<i32>(global2.x, u_input.b, u_input.b, _wgslsmith_mod_i32(firstTrailingBit(global1.a.x), i32(-1i) * -14426i)), firstTrailingBit(global1.b) | ~1u, _wgslsmith_f_op_f32(-118f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.c)) + -1000f))));
    let var_3 = func_4(var_1 || (var_2.b.c > 1488f), Struct_4(var_1, var_2.b), 53983u, Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(var_2.b.c)), _wgslsmith_f_op_f32(max(-1723f, var_0))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.a + vec2<f32>(185f, var_2.a.x)), _wgslsmith_f_op_vec2_f32(func_3()))), Struct_1(var_2.b.a ^ reverseBits(vec4<i32>(1i, global2.x, -1i, u_input.a.x)), _wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b.b, var_2.b.b, 0u), vec3<u32>(0u, var_2.b.b, global1.b))), -1411f)));
    return _wgslsmith_clamp_i32(-69440i, countOneBits(i32(-1i) * -_wgslsmith_mult_i32(global1.a.x, -2147483647i)), _wgslsmith_dot_vec2_i32(var_3.zz, var_2.b.a.zz));
}

fn func_5(arg_0: vec2<i32>) -> Struct_5 {
    global1 = Struct_1(global1.a, 4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.c))));
    global0 = firstLeadingBit(-(~max(-2147483647i, u_input.a.x)) & global1.a.x);
    var var_0 = 843f;
    global1 = Struct_1(min(vec4<i32>(-_wgslsmith_dot_vec2_i32(global1.a.yz, u_input.a), global1.a.x, ~(-2147483647i) & _wgslsmith_sub_i32(u_input.a.x, arg_0.x), abs(_wgslsmith_div_i32(global1.a.x, arg_0.x))), firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(global2.x, 2147483647i, arg_0.x, 2147483647i), vec4<i32>(1i, global1.a.x, global2.x, arg_0.x)))), ~1u, global1.c);
    var_0 = 1793f;
    return Struct_5(abs(global1.a.yy), Struct_3(Struct_1(global1.a, 1u, _wgslsmith_f_op_f32(-global1.c)), vec3<u32>(global1.b, abs(global1.b), _wgslsmith_mult_u32(global1.b, 4294967295u)), vec3<u32>(~global1.b, countOneBits(global1.b), select(global1.b, 32036u, false) ^ (55828u >> (global1.b % 32u))), !vec4<bool>(true, all(vec2<bool>(false, false)), true, true), vec2<bool>(any(vec3<bool>(false, false, true)), u_input.a.x == 0i)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1761f, global1.c)))), _wgslsmith_f_op_f32(abs(-940f)))), _wgslsmith_div_u32(abs(1u), 1u) << (_wgslsmith_add_u32(1u, _wgslsmith_div_u32(4294967295u, global1.b)) % 32u), Struct_1(max(vec4<i32>(~global2.x, global2.x, 2147483647i, countOneBits(global1.a.x)), select(vec4<i32>(u_input.a.x, arg_0.x, 2147483647i, -2147483647i), vec4<i32>(1i, 14203i, 0i, -1i), vec4<bool>(true, true, false, false))), max(global1.b, ~1u) << (global1.b % 32u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1118f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c)))));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: Struct_4, arg_3: vec4<i32>) -> f32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(arg_2.b.c)), _wgslsmith_f_op_f32(arg_2.b.c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + arg_2.b.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1223f, -550f)))), _wgslsmith_div_f32(global1.c, 1109f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(369f, arg_2.b.c)), _wgslsmith_f_op_f32(-1f)));
    var var_1 = func_5(vec2<i32>(_wgslsmith_clamp_i32(-21286i, func_2(), i32(-1i) * -arg_2.b.a.x), arg_3.x));
    var var_2 = vec4<bool>(all(vec2<bool>(all(vec3<bool>(var_1.b.d.x, arg_2.a, true)), abs(2147483647i) < global1.a.x)), !all(func_5(arg_3.wy).b.d.xw) || func_5(~var_1.a).b.e.x, any(var_1.b.d), var_1.b.d.x);
    let var_3 = var_1.b.e;
    var var_4 = ~var_1.e.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(var_0.x)), -1966f)) + _wgslsmith_div_f32(global1.c, -521f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_1(false, -901f, global3[_wgslsmith_index_u32(global1.b, 30u)], global1.a)), global1.c, global1.c, _wgslsmith_f_op_f32(f32(-1f) * -287f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c, global1.c, global1.c, -1081f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(221f, global1.c, global1.c, 429f))))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1579f)))), _wgslsmith_f_op_f32(select(global1.c, _wgslsmith_f_op_f32(step(2521f, -705f)), all(vec3<bool>(false, false, false)))), _wgslsmith_div_f32(-2861f, _wgslsmith_f_op_f32(func_1(true, 261f, global3[_wgslsmith_index_u32(16535u, 30u)], global1.a))), 350f), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))))));
    let var_1 = -_wgslsmith_dot_vec2_i32(~global1.a.yy >> ((_wgslsmith_mod_vec2_u32(vec2<u32>(global1.b, 32004u), vec2<u32>(45993u, 13027u)) >> (vec2<u32>(0u, global1.b) % vec2<u32>(32u))) % vec2<u32>(32u)), ~vec2<i32>(countOneBits(u_input.a.x), _wgslsmith_mod_i32(0i, 1i)));
    var var_2 = ~1u;
    var var_3 = func_5(global1.a.zx).b.d;
    let var_4 = 4294967295u;
    let var_5 = func_5(global1.a.xw).b.c.x;
    global0 = 15237i;
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_f_op_f32(func_5(u_input.a).e.c + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3()).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.c, -731f)))))), ~vec3<u32>(~var_5 << (1u % 32u), countOneBits(4294967295u), _wgslsmith_sub_u32(_wgslsmith_div_u32(var_4, var_4), ~0u)));
}

