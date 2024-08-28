struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec3<bool>,
    d: vec4<bool>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: u32,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -359f;

var<private> global1: array<Struct_3, 4> = array<Struct_3, 4>(Struct_3(1000f, -198f, 23441u, 0u, Struct_2(Struct_1(vec2<i32>(51682i, -4464i), vec3<u32>(1u, 33981u, 60546u), vec3<i32>(20282i, -1i, 23786i)), vec2<f32>(-1229f, -1285f), vec3<bool>(false, false, false), vec4<bool>(true, false, false, true), vec2<f32>(-629f, 2539f))), Struct_3(135f, -655f, 29894u, 0u, Struct_2(Struct_1(vec2<i32>(i32(-2147483648), -29304i), vec3<u32>(14081u, 0u, 15443u), vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i)), vec2<f32>(434f, -1718f), vec3<bool>(true, true, false), vec4<bool>(false, false, true, true), vec2<f32>(-746f, 1279f))), Struct_3(-241f, -1592f, 1u, 0u, Struct_2(Struct_1(vec2<i32>(-27891i, 10257i), vec3<u32>(27980u, 16088u, 0u), vec3<i32>(-34765i, 2147483647i, 1i)), vec2<f32>(-1000f, 911f), vec3<bool>(true, false, true), vec4<bool>(false, false, false, true), vec2<f32>(291f, 512f))), Struct_3(-191f, 488f, 8319u, 11880u, Struct_2(Struct_1(vec2<i32>(0i, -4787i), vec3<u32>(1u, 0u, 17482u), vec3<i32>(-1i, 19962i, -30670i)), vec2<f32>(-845f, 775f), vec3<bool>(false, true, false), vec4<bool>(false, false, true, true), vec2<f32>(-239f, -662f))));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: Struct_1) -> f32 {
    let var_0 = vec4<u32>(max(0u, 1u), ~_wgslsmith_div_u32(select(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, u_input.c), u_input.d), 21400u, 25897u < arg_2.b.x), arg_1), arg_2.b.x, firstTrailingBit(abs(_wgslsmith_add_u32(4294967295u, 0u))) & (_wgslsmith_mod_u32(_wgslsmith_clamp_u32(0u, arg_2.b.x, 9326u), u_input.c) & _wgslsmith_mult_u32(_wgslsmith_mod_u32(arg_1, 69614u), arg_2.b.x)));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c, ~(~(~var_0.x)), 9829u), 4u)];
    let var_2 = 0i;
    var_1 = Struct_3(var_1.e.b.x, var_1.b, _wgslsmith_mod_u32(1u, _wgslsmith_clamp_u32(1u, 26467u, u_input.c >> (30892u % 32u))), 64610u, var_1.e);
    var_1 = global1[_wgslsmith_index_u32(55802u, 4u)];
    return var_1.e.b.x;
}

fn func_2(arg_0: Struct_5) -> f32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.c.e.e.x)) - _wgslsmith_f_op_f32(arg_0.a.a + arg_0.d.b)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.c.e.b.x, _wgslsmith_f_op_f32(-arg_0.c.b)) + _wgslsmith_f_op_f32(-arg_0.d.b)))), 546f, _wgslsmith_f_op_f32(func_3(~_wgslsmith_div_u32(~57176u, ~1u), arg_0.d.e.a.b.x, Struct_1(_wgslsmith_sub_vec2_i32(u_input.a.wy, firstLeadingBit(u_input.a.yy)), ~(~u_input.d), arg_0.a.e.a.c))), -1000f);
    var var_1 = arg_0.d.e.d.zxz;
    var var_2 = -u_input.a.xx;
    let var_3 = _wgslsmith_f_op_f32(min(arg_0.a.e.e.x, var_0.x));
    var var_4 = Struct_4(!(!(~u_input.a.x >= ~var_2.x)), abs(u_input.d ^ min(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 4294967295u, arg_0.d.e.a.b.x), vec3<u32>(0u, 4730u, arg_0.c.c)), vec3<u32>(110283u, 35575u, u_input.b))));
    return arg_0.c.e.b.x;
}

fn func_1(arg_0: bool) -> f32 {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_div_vec3_i32(u_input.a.zzy, ~select(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-15020i, u_input.a.x), u_input.a.wy), 1i, u_input.a.x & u_input.a.x), vec3<i32>(min(u_input.a.x, u_input.a.x), u_input.a.x, _wgslsmith_div_i32(-1i, 1i)), vec3<bool>(true, arg_0, !arg_0)));
    var var_2 = false;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(-968f)), _wgslsmith_f_op_f32(func_2(Struct_5(global1[_wgslsmith_index_u32(u_input.b, 4u)], u_input.b, Struct_3(364f, 2136f, 1u, u_input.c, Struct_2(Struct_1(var_1.xz, vec3<u32>(u_input.c, 16040u, u_input.d.x), u_input.a.zzw), vec2<f32>(1532f, 1430f), vec3<bool>(false, arg_0, arg_0), vec4<bool>(arg_0, false, arg_0, arg_0), vec2<f32>(1000f, 458f))), Struct_3(-1000f, 327f, u_input.c, 0u, Struct_2(Struct_1(vec2<i32>(-2158i, 0i), vec3<u32>(1u, 4584u, 1u), u_input.a.wyx), vec2<f32>(1000f, -499f), vec3<bool>(false, false, false), vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec2<f32>(690f, -335f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-206f * -803f))) + vec3<f32>(1569f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -270f), -1000f)), -1000f)));
    var var_4 = Struct_5(global1[_wgslsmith_index_u32(1u, 4u)], u_input.c, Struct_3(var_3.x, var_3.x, 30658u, _wgslsmith_sub_u32(u_input.b, u_input.c), Struct_2(Struct_1(u_input.a.zw >> (u_input.d.zz % vec2<u32>(32u)), select(u_input.d, vec3<u32>(u_input.d.x, u_input.d.x, 1u), vec3<bool>(arg_0, arg_0, false)), abs(u_input.a.wzy)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, var_3.x))) - var_3.zx), select(select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(false, false, true), arg_0), vec3<bool>(arg_0, true, arg_0), vec3<bool>(arg_0, true, false)), !vec4<bool>(arg_0, arg_0, arg_0, false), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_3.x, 196f), vec2<f32>(-280f, 1458f), vec2<bool>(arg_0, arg_0))), var_3.xy))), Struct_3(_wgslsmith_f_op_f32(step(var_3.x, 1216f)), _wgslsmith_f_op_f32(-var_3.x), ~43409u, _wgslsmith_dot_vec2_u32(u_input.d.xy, ~(vec2<u32>(17192u, 43877u) & u_input.d.yz)), Struct_2(Struct_1(_wgslsmith_mult_vec2_i32(var_1.xx, vec2<i32>(var_1.x, var_1.x)), vec3<u32>(0u, 0u, u_input.b), vec3<i32>(var_1.x, 7031i, var_1.x)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-365f, var_3.x) + var_3.zy), var_3.yx)), !select(vec3<bool>(false, false, arg_0), vec3<bool>(arg_0, arg_0, true), false), select(select(vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(true, true, false, false), arg_0), select(vec4<bool>(false, arg_0, true, arg_0), vec4<bool>(arg_0, arg_0, arg_0, true), true), all(vec2<bool>(arg_0, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.zz + vec2<f32>(-155f, 160f))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.x), var_4.c.e.b.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(629f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-285f)))), _wgslsmith_f_op_f32(func_1(true)))), 4294967295u, ~(~firstTrailingBit(u_input.d.x)), Struct_2(Struct_1(countOneBits(_wgslsmith_mult_vec2_i32(u_input.a.ww, vec2<i32>(-1i, u_input.a.x))), _wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, 0u, u_input.b), ~vec3<u32>(26933u, 21610u, u_input.b)), u_input.a.zwz ^ firstTrailingBit(u_input.a.zwz)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1344f, 544f)) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(329f, 1773f))))), vec3<bool>(any(vec3<bool>(true, true, true)), !any(vec4<bool>(true, true, true, false)), (-1i << (0u % 32u)) <= _wgslsmith_mult_i32(u_input.a.x, 34968i)), vec4<bool>(false, false, true, u_input.a.x > (u_input.a.x | 1i)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-553f, -431f)), vec2<f32>(1808f, -1294f))))));
    var var_1 = _wgslsmith_clamp_vec2_u32(min(~u_input.d.xz | (~vec2<u32>(4294967295u, 1u) ^ countOneBits(vec2<u32>(1u, var_0.e.a.b.x))), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 74332u, u_input.c), vec4<u32>(u_input.b, u_input.b, var_0.d, 5211u)), var_0.c) & vec2<u32>(8897u, _wgslsmith_add_u32(var_0.e.a.b.x, 4294967295u))), ~(vec2<u32>(_wgslsmith_clamp_u32(4294967295u, var_0.e.a.b.x, var_0.d), 6706u) >> (vec2<u32>(var_0.c, 1u) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c | u_input.c, u_input.b) | var_0.e.a.b.yx, u_input.d.xx, vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(24422u, u_input.b), u_input.d.x), ~_wgslsmith_mod_u32(4294967295u, 34864u))));
    let var_2 = Struct_2(var_0.e.a, _wgslsmith_f_op_vec2_f32(-var_0.e.b), select(select(!select(vec3<bool>(false, true, false), var_0.e.c, true), !(!var_0.e.d.wyz), true), select(!select(vec3<bool>(true, var_0.e.d.x, var_0.e.d.x), var_0.e.c, var_0.e.d.yxx), !var_0.e.d.yyw, !vec3<bool>(var_0.e.d.x, var_0.e.c.x, true)), select(select(!var_0.e.d.xxy, !vec3<bool>(var_0.e.c.x, false, var_0.e.d.x), var_0.e.c.x), !(!vec3<bool>(false, var_0.e.d.x, var_0.e.d.x)), true)), select(select(select(select(vec4<bool>(var_0.e.d.x, true, false, true), vec4<bool>(var_0.e.c.x, false, var_0.e.c.x, var_0.e.c.x), vec4<bool>(false, var_0.e.c.x, true, false)), vec4<bool>(false, var_0.e.d.x, false, var_0.e.c.x), !var_0.e.d), !(!var_0.e.d), !(!var_0.e.c.x)), select(!select(vec4<bool>(false, var_0.e.d.x, true, false), vec4<bool>(var_0.e.c.x, false, false, var_0.e.d.x), true), vec4<bool>(!var_0.e.c.x, true, false, false), false), any(vec2<bool>(var_0.e.c.x, false))), vec2<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_clamp_u32(6104u, var_1.x, 4294967295u), var_0.c & firstLeadingBit(var_0.d), var_0.e.a)), _wgslsmith_f_op_f32(func_2(Struct_5(Struct_3(1000f, var_0.a, 134910u, 4294967295u, var_0.e), 0u, global1[_wgslsmith_index_u32(var_1.x ^ 51310u, 4u)], Struct_3(var_0.e.b.x, var_0.e.b.x, 71153u, 0u, var_0.e))))));
    var_1 = var_0.e.a.b.yy;
    let var_3 = var_2;
    global0 = _wgslsmith_f_op_f32(1000f + -273f);
    let var_4 = var_3;
    global1 = array<Struct_3, 4>();
    let var_5 = _wgslsmith_sub_u32(var_2.a.b.x, 21940u);
    let x = u_input.a;
    s_output = StorageBuffer((_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.e.a.c.x, 2147483647i), -u_input.a.yx, -vec2<i32>(var_3.a.c.x, 41838i)) >> (~(~var_2.a.b.yy) % vec2<u32>(32u))) << (~firstLeadingBit(~vec2<u32>(var_2.a.b.x, u_input.b)) % vec2<u32>(32u)), -1000f, _wgslsmith_dot_vec3_i32(vec3<i32>(var_3.a.a.x, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-26995i, 1i, 1i, 1i)), _wgslsmith_clamp_i32(var_4.a.c.x, -1i, var_2.a.a.x)), 2147483647i), firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(23028i, u_input.a.x, u_input.a.x), vec3<i32>(-7100i, -27771i, 4036i)))), _wgslsmith_mult_vec2_u32(var_2.a.b.yx, _wgslsmith_clamp_vec2_u32(var_4.a.b.yz | ~var_4.a.b.zy, var_2.a.b.zy, ~vec2<u32>(u_input.d.x, var_0.d))));
}

