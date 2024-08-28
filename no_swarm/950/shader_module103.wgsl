struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: i32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: u32 = 51144u;

var<private> global2: vec2<f32>;

var<private> global3: array<vec3<i32>, 26> = array<vec3<i32>, 26>(vec3<i32>(-21289i, 3133i, 9560i), vec3<i32>(-38912i, i32(-2147483648), 2147483647i), vec3<i32>(2147483647i, i32(-2147483648), 52974i), vec3<i32>(i32(-2147483648), 38277i, -28871i), vec3<i32>(-1i, 1i, 6009i), vec3<i32>(i32(-2147483648), 46891i, -30714i), vec3<i32>(i32(-2147483648), 5495i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 2147483647i, 11935i), vec3<i32>(35925i, 2147483647i, 1i), vec3<i32>(2147483647i, -16744i, -5619i), vec3<i32>(2147483647i, 1i, -11404i), vec3<i32>(2274i, 0i, 47797i), vec3<i32>(-21939i, 1i, 1i), vec3<i32>(-3198i, 60870i, 12101i), vec3<i32>(-1i, 0i, 0i), vec3<i32>(-4299i, 0i, -14850i), vec3<i32>(i32(-2147483648), i32(-2147483648), 0i), vec3<i32>(i32(-2147483648), -10636i, 1i), vec3<i32>(8234i, 0i, -1i), vec3<i32>(-1911i, -1i, 2147483647i), vec3<i32>(-37047i, -67260i, 0i), vec3<i32>(-6428i, 1i, 12765i), vec3<i32>(0i, 19690i, 0i), vec3<i32>(-1i, 4304i, -41976i), vec3<i32>(31970i, 700i, -19797i), vec3<i32>(i32(-2147483648), 25284i, 39009i));

var<private> global4: Struct_2;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> vec2<f32> {
    global3 = array<vec3<i32>, 26>();
    global3 = array<vec3<i32>, 26>();
    global2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-265f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -187f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x * global4.b))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global2.x, 664f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.a.xy))), vec2<bool>(true, arg_1)));
    var var_0 = global0.x;
    var var_1 = vec4<u32>(~arg_0.b, ~u_input.a.x & ~u_input.a.x, firstTrailingBit(_wgslsmith_sub_u32(0u, firstTrailingBit(0u))), ~(~reverseBits(~u_input.a.x)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(arg_0.a.xz))));
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, -230f, global2.x) - vec3<f32>(global2.x, global4.b, global4.b)))) - vec3<f32>(_wgslsmith_f_op_f32(step(global4.b, -2141f)), _wgslsmith_f_op_f32(global2.x + global2.x), _wgslsmith_f_op_f32(-1622f * 307f))))), ~29258u, arg_0.c, vec4<f32>(global4.b, global2.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(global4.b)), arg_0.b)))), -443f));
    var var_1 = _wgslsmith_mult_vec4_u32(countOneBits(max(vec4<u32>(28880u, u_input.a.x, 62411u, var_0.b) ^ u_input.a, u_input.a >> (u_input.a % vec4<u32>(32u)))) & vec4<u32>(reverseBits(0u), u_input.a.x, ~firstLeadingBit(var_0.b), 23421u), _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, max(u_input.a.x, 1u), 4294967295u, var_0.b), u_input.a), vec4<u32>(0u, _wgslsmith_sub_u32(var_0.b << (var_0.b % 32u), 1u), abs(_wgslsmith_clamp_u32(36872u, 1u, 12474u)), ~4294967295u)));
    let var_2 = u_input.a.x;
    var var_3 = Struct_4(Struct_2(all(!vec2<bool>(global4.a, true)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(157f * -675f) + _wgslsmith_f_op_f32(floor(global2.x))))), var_0.c));
    let var_4 = _wgslsmith_clamp_vec3_i32(global3[_wgslsmith_index_u32(var_1.x, 26u)], vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(firstTrailingBit(1i), max(var_0.c, 1216i), global4.c, -24077i), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.c, 42455i, var_0.c, var_0.c), vec4<i32>(2147483647i, -2147483647i, 1i, var_0.c)), vec4<i32>(arg_0.c, var_0.c, global4.c, 29494i))), 1i, firstTrailingBit(_wgslsmith_dot_vec3_i32(-global3[_wgslsmith_index_u32(var_2, 26u)], vec3<i32>(-1i, 13890i, arg_0.c)))), ~min(-vec3<i32>(-1i, var_0.c, var_0.c), global3[_wgslsmith_index_u32(var_0.b, 26u)]));
    return min(_wgslsmith_add_i32(var_4.x, firstTrailingBit(i32(-1i) * -20547i)), var_0.c);
}

fn func_1() -> Struct_2 {
    global4 = Struct_2(!any(vec2<bool>(false, any(vec3<bool>(global4.a, true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -552f)))), 0i);
    global4 = Struct_2(global4.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-225f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-164f + global2.x))))), _wgslsmith_add_i32(~(_wgslsmith_mod_i32(-1i, global4.c) << (_wgslsmith_div_u32(40106u, 4294967295u) % 32u)), -2147483647i));
    var var_0 = Struct_2(global0.x, global2.x, global4.c);
    global2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(Struct_1(vec3<f32>(global4.b, 214f, var_0.b), 1u, var_0.c, vec4<f32>(565f, -1671f, 651f, global4.b)), global4.a))))))));
    let var_1 = select(select(!(!vec2<bool>(global0.x, global4.a)), !select(select(vec2<bool>(var_0.a, false), vec2<bool>(global0.x, var_0.a), global0.x), !vec2<bool>(true, global4.a), select(vec2<bool>(var_0.a, global0.x), vec2<bool>(false, global4.a), vec2<bool>(global4.a, global0.x))), !var_0.a), !vec2<bool>(global4.a, any(!vec4<bool>(global4.a, var_0.a, global4.a, false))), select(select(vec2<bool>(false, global0.x), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(!(!global4.a), var_0.a), !(global0.x & true) && (52675u <= ~u_input.a.x)));
    return Struct_2(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(662f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global4.b + 1634f), var_0.b))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.b, -453f))), func_3(Struct_2(all(select(vec4<bool>(true, false, var_0.a, true), vec4<bool>(global4.a, var_0.a, false, global4.a), vec4<bool>(var_0.a, var_0.a, global4.a, false))), _wgslsmith_f_op_f32(-1056f + _wgslsmith_f_op_f32(ceil(global4.b))), 0i)));
}

fn func_4(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_2) -> vec3<f32> {
    var var_0 = countOneBits(_wgslsmith_add_u32(arg_0.x, ~select(0u, u_input.a.x, true))) | arg_0.x;
    var var_1 = Struct_4(Struct_2(!(true & all(vec2<bool>(global4.a, global4.a))), _wgslsmith_f_op_vec2_f32(func_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.b, -740f, 1994f)), 1u, 0i, _wgslsmith_f_op_vec4_f32(vec4<f32>(-175f, arg_1, arg_1, 1081f) * vec4<f32>(-606f, global4.b, global4.b, global4.b))), any(vec3<bool>(false, arg_2.a, global4.a)))).x, 1i));
    var var_2 = u_input.a.zzx;
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(744f, -2272f), vec2<f32>(global2.x, global2.x)))))))) + vec2<f32>(_wgslsmith_f_op_f32(-func_1().b), _wgslsmith_f_op_f32(min(var_1.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))))));
    var var_3 = u_input.a.xzz;
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2.x * var_1.a.b))), _wgslsmith_f_op_f32(abs(-726f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.a.b)))));
}

fn func_5(arg_0: vec3<f32>) -> Struct_3 {
    var var_0 = Struct_3(~vec3<u32>(_wgslsmith_clamp_u32(u_input.a.x, 0u, u_input.a.x), 1u, ~7412u) & _wgslsmith_add_vec3_u32(u_input.a.wxz, u_input.a.xwx), u_input.a.x, vec3<bool>(global4.a, true, global0.x));
    global3 = array<vec3<i32>, 26>();
    var var_1 = var_0.c;
    let var_2 = select(~(~vec4<i32>(55221i, 1i, global4.c, global4.c & global4.c)), ~firstLeadingBit(-min(vec4<i32>(-1i, global4.c, -2044i, global4.c), vec4<i32>(2147483647i, global4.c, -22332i, -46140i))), select(vec4<bool>(~u_input.a.x < u_input.a.x, func_1().a, (7199u ^ var_0.a.x) >= 106424u, var_0.c.x), vec4<bool>(var_1.x, false, global4.c == abs(-27601i), any(vec4<bool>(true, global0.x, true, false))), select(!select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(var_0.c.x, true, false, global4.a), vec4<bool>(false, false, var_0.c.x, global4.a)), !vec4<bool>(var_1.x, global4.a, true, var_1.x), func_1().a)));
    var var_3 = Struct_3(u_input.a.xwy, min(u_input.a.x >> (firstLeadingBit(_wgslsmith_clamp_u32(1u, u_input.a.x, u_input.a.x)) % 32u), _wgslsmith_mod_u32(8084u, _wgslsmith_sub_u32(6083u, var_0.b) ^ 20268u)), var_0.c);
    return Struct_3(vec3<u32>(4294967295u, ~var_3.a.x, var_0.a.x) | (countOneBits(vec3<u32>(17068u, 0u, var_0.b)) >> (var_0.a % vec3<u32>(32u))), firstTrailingBit(77731u), select(!vec3<bool>(global4.c >= var_2.x, -1000f > global4.b, func_1().a), !select(!vec3<bool>(true, var_0.c.x, false), !vec3<bool>(true, var_1.x, false), var_3.c), select(!(!var_0.c), !var_0.c, !vec3<bool>(false, true, global4.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 189f;
    let var_1 = func_5(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_div_vec2_u32(~vec2<u32>(1u, 38993u), u_input.a.yy & vec2<u32>(u_input.a.x, 16870u)), 360f, func_1())), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.b, 778f, _wgslsmith_f_op_f32(478f * -464f))), vec3<bool>(true, true, true))));
    let var_2 = global4.b;
    global3 = array<vec3<i32>, 26>();
    global3 = array<vec3<i32>, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(max(u_input.a.x, ~28364u), u_input.a.x, var_1.a.x, ~countOneBits(25117u)), reverseBits(vec3<u32>(var_1.a.x, _wgslsmith_dot_vec3_u32(var_1.a, var_1.a), firstTrailingBit(1u))) << (vec3<u32>(40111u & var_1.b, 0u, u_input.a.x) % vec3<u32>(32u)));
}

