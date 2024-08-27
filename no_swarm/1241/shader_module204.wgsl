struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
    c: Struct_2,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_2,
    c: vec4<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_5;

var<private> global2: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(-1i, vec4<u32>(0u, 49092u, 4294967295u, 1u)), Struct_1(-5763i, vec4<u32>(0u, 26871u, 500u, 1u)), Struct_1(2147483647i, vec4<u32>(38900u, 14417u, 11216u, 4294967295u)), Struct_1(-10604i, vec4<u32>(48370u, 4294967295u, 18556u, 1u)));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = !(!vec2<bool>(false, any(select(vec3<bool>(global1.b.x, true, true), vec3<bool>(global1.b.x, true, false), vec3<bool>(true, global1.b.x, global1.b.x)))));
    var var_1 = Struct_2(global1.a, global2[_wgslsmith_index_u32(global1.a.b.x, 4u)], global2[_wgslsmith_index_u32(53522u, 4u)], arg_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-arg_0.e))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.e + vec2<f32>(global1.c, arg_0.e.x)) - vec2<f32>(-1690f, arg_0.e.x)), true)) * _wgslsmith_f_op_vec2_f32(-arg_0.e)));
    var_0 = select(vec2<bool>(false, false), !select(vec2<bool>(false, false), global1.b, global1.b), !(!select(global1.b, select(global1.b, vec2<bool>(true, var_0.x), global1.b.x), global1.b)));
    let var_2 = var_1.c.b.yw;
    var var_3 = Struct_2(global1.a, Struct_1(arg_0.b.a, ~vec4<u32>(41121u, 1u, ~1u, arg_0.b.b.x)), Struct_1(_wgslsmith_dot_vec3_i32(~(vec3<i32>(global1.a.a, -1i, u_input.b.x) >> (global1.a.b.wwz % vec3<u32>(32u))), vec3<i32>(2147483647i, -2147483647i, u_input.b.x)), vec4<u32>(18229u, ~4294967295u, ~1u, arg_0.b.b.x)), Struct_1(~(-(~arg_0.c.a)), select(global1.a.b, arg_0.a.b, vec4<bool>(any(vec3<bool>(true, true, global1.b.x)), global1.b.x, !global1.b.x, arg_0.e.x <= arg_0.e.x))), var_1.e);
    return _wgslsmith_div_u32(~0u, _wgslsmith_div_u32(0u, _wgslsmith_mult_u32(1u, var_2.x)));
}

fn func_2() -> vec3<f32> {
    let var_0 = Struct_4(~vec2<u32>(~global1.a.b.x, global1.a.b.x) & ~max(~vec2<u32>(global1.a.b.x, 16594u), ~global1.a.b.ww), Struct_2(global2[_wgslsmith_index_u32(max(~select(global1.a.b.x, global1.a.b.x, true), abs(_wgslsmith_mod_u32(0u, global1.a.b.x))), 4u)], global2[_wgslsmith_index_u32(func_3(Struct_2(Struct_1(global1.a.a, vec4<u32>(global1.a.b.x, 4294967295u, global1.a.b.x, 75926u)), Struct_1(u_input.b.x, vec4<u32>(14253u, 1u, 33297u, 0u)), global1.a, Struct_1(-63754i, global1.a.b), vec2<f32>(722f, 270f))), 4u)], Struct_1(i32(-1i) * -19962i, countOneBits(~vec4<u32>(global1.a.b.x, 23834u, global1.a.b.x, global1.a.b.x))), global1.a, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(485f, -1000f) + vec2<f32>(global1.c, -447f)) - vec2<f32>(global1.c, global1.c)), vec2<f32>(_wgslsmith_f_op_f32(trunc(304f)), -138f)))), ~(-u_input.b | _wgslsmith_add_vec4_i32(select(u_input.b, vec4<i32>(global1.a.a, u_input.b.x, global1.a.a, 2147483647i), global1.b.x), u_input.b)));
    global2 = array<Struct_1, 4>();
    let var_1 = !vec2<bool>(any(vec3<bool>(global1.b.x, true, global1.b.x)), true);
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1380f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.e.x - var_0.b.e.x))))), global1.c));
    global1 = Struct_5(global2[_wgslsmith_index_u32(~global1.a.b.x, 4u)], global1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-181f)) + _wgslsmith_f_op_f32(abs(global1.c))))) + -103f));
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1139f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.c))), -708f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1382f)), var_0.b.e.x);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: bool, arg_3: i32) -> Struct_2 {
    let var_0 = Struct_1(-9375i, ~global1.a.b);
    let var_1 = global1.b.x;
    global2 = array<Struct_1, 4>();
    let var_2 = !vec3<bool>(false, global1.b.x, select(!(global1.b.x || global1.b.x), global1.b.x, true));
    var var_3 = Struct_4(abs(_wgslsmith_div_vec2_u32(~var_0.b.zw, ~(~global1.a.b.ww))), Struct_2(global1.a, Struct_1(countOneBits(select(arg_3, var_0.a, true)), abs(~var_0.b)), Struct_1(firstTrailingBit(5611i), vec4<u32>(80708u, ~var_0.b.x, 20103u, ~var_0.b.x)), global1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.c, -325f))) * vec2<f32>(-593f, arg_0.x)))), ~select(~(vec4<i32>(0i, u_input.a.x, -3312i, var_0.a) << (global1.a.b % vec4<u32>(32u))), vec4<i32>(1i, -36143i, _wgslsmith_add_i32(0i, arg_3), _wgslsmith_mod_i32(0i, 93944i)), select(vec4<bool>(global1.b.x, var_2.x, true, global1.b.x), select(vec4<bool>(var_2.x, var_2.x, global1.b.x, false), vec4<bool>(false, global1.b.x, false, true), global1.b.x), true)));
    return Struct_2(Struct_1(_wgslsmith_dot_vec3_i32(abs(_wgslsmith_clamp_vec3_i32(var_3.c.wwx, var_3.c.yzw, vec3<i32>(3395i, u_input.b.x, var_0.a))), var_3.c.wwx), _wgslsmith_sub_vec4_u32(firstLeadingBit(var_3.b.b.b), var_0.b) ^ firstTrailingBit(vec4<u32>(var_3.b.c.b.x, 36490u, global1.a.b.x, 4294967295u))), Struct_1(arg_3, var_3.b.a.b), Struct_1(2147483647i, vec4<u32>(17466u << (_wgslsmith_sub_u32(global1.a.b.x, 4294967295u) % 32u), ~global1.a.b.x, 1u, ~var_0.b.x ^ min(1u, 56280u))), global2[_wgslsmith_index_u32(countOneBits(global1.a.b.x | global1.a.b.x), 4u)], var_3.b.e);
}

fn func_5(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: vec3<i32>) -> Struct_4 {
    let var_0 = ~(min(arg_1, vec3<i32>(arg_1.x, arg_2.x, firstTrailingBit(arg_1.x))) & vec3<i32>(_wgslsmith_dot_vec3_i32(arg_0.c.yxz, vec3<i32>(-8239i, u_input.b.x, -14162i)), 1i, func_4(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, 138f, arg_0.b.e.x, -889f), vec4<f32>(-1487f, 1111f, 115f, global1.c))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.e.x, 1344f, arg_0.b.e.x)), all(vec4<bool>(global1.b.x, false, global1.b.x, true)), arg_1.x).b.a));
    var var_1 = Struct_1(select(_wgslsmith_dot_vec4_i32(u_input.b, arg_0.c), _wgslsmith_mod_i32(select(var_0.x, arg_1.x, global1.b.x), u_input.a.x), global1.b.x), _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(global1.a.b, ~(~global1.a.b)), ~(~arg_0.b.c.b) & ~_wgslsmith_mult_vec4_u32(arg_0.b.a.b, arg_0.b.a.b), ~vec4<u32>(~global1.a.b.x, arg_0.b.b.b.x, global1.a.b.x, ~global1.a.b.x)));
    var_1 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(~30088u, ~(global1.a.b.x ^ global1.a.b.x)), countOneBits(min(4294967295u, global1.a.b.x))), 4u)];
    var var_2 = max(_wgslsmith_sub_vec2_u32(arg_0.b.a.b.wz, _wgslsmith_mod_vec2_u32(~vec2<u32>(arg_0.a.x, 4294967295u), _wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(arg_0.b.b.b.x, global1.a.b.x)), select(var_1.b.xy, vec2<u32>(0u, 33237u), vec2<bool>(false, global1.b.x))))), vec2<u32>(var_1.b.x, 1u));
    global1 = Struct_5(arg_0.b.a, select(select(vec2<bool>(true, true), global1.b, select(vec2<bool>(global1.b.x, true), vec2<bool>(true, true), false)), !global1.b, !global1.b.x), -620f);
    return Struct_4(arg_0.b.a.b.wy, arg_0.b, select(vec4<i32>(firstLeadingBit(~29180i), ~reverseBits(-48538i), _wgslsmith_div_i32(-49773i, _wgslsmith_add_i32(arg_2.x, 2147483647i)), global1.a.a), -(reverseBits(vec4<i32>(global1.a.a, u_input.a.x, 0i, arg_2.x)) & vec4<i32>(u_input.b.x, arg_0.b.c.a, arg_1.x, arg_2.x)), !vec4<bool>(true, 49108u < var_1.b.x, all(vec2<bool>(global1.b.x, true)), global1.b.x)));
}

fn func_1() -> Struct_2 {
    let var_0 = vec2<bool>(select(true, global1.b.x, false), !(!(global1.b.x || false)));
    let var_1 = func_5(Struct_4(_wgslsmith_mult_vec2_u32(~(~global1.a.b.yx), global1.a.b.yw), func_4(vec4<f32>(global1.c, -1882f, 243f, global1.c), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c, -1840f, global1.c) + vec3<f32>(global1.c, global1.c, global1.c)), _wgslsmith_f_op_vec3_f32(func_2()))), var_0.x, _wgslsmith_div_i32(min(global1.a.a, 0i), u_input.a.x >> (global1.a.b.x % 32u))), firstTrailingBit(u_input.b)), u_input.b.xzx, u_input.b.yyx >> (vec3<u32>(0u, ~global1.a.b.x, reverseBits(~61871u)) % vec3<u32>(32u)));
    let var_2 = vec4<i32>(-firstLeadingBit(2519i), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.e.x, 276f, var_1.b.e.x, 1344f) * vec4<f32>(-1327f, -324f, var_1.b.e.x, 401f)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-2302f, global1.c, global1.c, 1000f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -514f)), 232f, var_1.b.e.x), true, -((-1i >> (var_1.b.c.b.x % 32u)) ^ global1.a.a)).a.a, ~62666i, u_input.b.x);
    global2 = array<Struct_1, 4>();
    let var_3 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1067f, global1.c, var_1.b.e.x, global1.c))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c, -212f, 421f, 1000f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.e.x, -402f, -1269f, 1205f))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-255f, -375f, _wgslsmith_f_op_f32(-global1.c)))))), false, firstTrailingBit(~(var_1.c.x & ~2147483647i)));
    return var_1.b;
}

fn func_6(arg_0: f32, arg_1: Struct_4, arg_2: Struct_2, arg_3: vec2<bool>) -> Struct_3 {
    global1 = Struct_5(func_5(func_5(Struct_4(vec2<u32>(global1.a.b.x, 4159u) >> (arg_2.b.b.yy % vec2<u32>(32u)), arg_1.b, vec4<i32>(arg_1.c.x, global1.a.a, arg_1.c.x, 15136i) ^ vec4<i32>(global1.a.a, arg_1.b.c.a, 35060i, -47647i)), func_5(arg_1, func_5(arg_1, vec3<i32>(global1.a.a, 2147483647i, 0i), u_input.b.wzw).c.zzy, func_5(arg_1, u_input.b.wzx, vec3<i32>(u_input.b.x, arg_2.a.a, global1.a.a)).c.yzy).c.wyy, u_input.b.zwx), vec3<i32>(arg_2.c.a, i32(-1i) * -29114i, -10197i), vec3<i32>(~func_5(arg_1, u_input.b.xzy, u_input.b.xzy).c.x, arg_1.b.b.a, ~arg_1.c.x | global1.a.a)).b.d, vec2<bool>(~func_1().c.b.x < 1u, global1.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.b.e.x, arg_0, all(global1.b)))), arg_2.e.x));
    global0 = _wgslsmith_f_op_f32(-global1.c);
    var var_0 = func_5(func_5(func_5(arg_1, vec3<i32>(arg_2.c.a >> (0u % 32u), arg_1.b.a.a, func_4(vec4<f32>(arg_1.b.e.x, -1000f, global1.c, 1282f), vec3<f32>(1153f, 663f, 969f), arg_3.x, arg_2.d.a).b.a), -vec3<i32>(8242i, 42793i, u_input.a.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(2013i, ~arg_2.c.a, 2147483647i & u_input.a.x), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, 22604i, global1.a.a), ~vec3<i32>(global1.a.a, -1i, -21456i))), vec3<i32>(_wgslsmith_dot_vec3_i32(arg_1.c.zwx, select(u_input.b.xxz, vec3<i32>(-51253i, 12825i, global1.a.a), global1.b.x)), _wgslsmith_mult_i32(-arg_1.c.x, -25539i), min(global1.a.a & u_input.b.x, 39366i >> (arg_2.c.b.x % 32u)))), reverseBits(u_input.b.xxz), vec3<i32>(abs(~u_input.a.x) | ~min(-1i, u_input.b.x), func_5(func_5(arg_1, u_input.b.xxx, abs(vec3<i32>(-2147483647i, global1.a.a, 0i))), -arg_1.c.wyy, arg_1.c.zzz).b.a.a, func_5(Struct_4(vec2<u32>(0u, 4294967295u), func_1(), arg_1.c << (vec4<u32>(33568u, 1u, 28607u, global1.a.b.x) % vec4<u32>(32u))), (vec3<i32>(arg_1.c.x, arg_1.c.x, 2147483647i) ^ vec3<i32>(-60600i, arg_1.b.a.a, -12991i)) | ~vec3<i32>(-24696i, -2147483647i, 2147483647i), firstTrailingBit(u_input.b.wxw) & (u_input.b.zyw & u_input.b.wzy)).c.x));
    let var_1 = any(!select(!select(vec3<bool>(arg_3.x, true, false), vec3<bool>(global1.b.x, true, true), vec3<bool>(global1.b.x, global1.b.x, arg_3.x)), !(!vec3<bool>(true, arg_3.x, false)), vec3<bool>(global1.b.x, arg_2.a.a < -23093i, arg_3.x)));
    global1 = Struct_5(func_1().a, vec2<bool>(all(select(vec2<bool>(var_1, true), arg_3, false)), any(vec3<bool>(false, all(vec3<bool>(global1.b.x, var_1, var_1)), !global1.b.x))), _wgslsmith_f_op_f32(-func_5(arg_1, select(var_0.c.wzz, vec3<i32>(global1.a.a, global1.a.a, arg_2.a.a), true), select(u_input.b.yzz, -var_0.c.zxy, !vec3<bool>(true, true, var_1))).b.e.x));
    return Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-111f, global1.c, var_0.b.e.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 148f, var_0.b.e.x) + vec3<f32>(2039f, global1.c, global1.c)))) + vec3<f32>(1662f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c - 320f)), 1f)), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_1.b.c.b.x, _wgslsmith_mod_u32(50924u, 1u), _wgslsmith_mod_u32(arg_1.a.x, 1u), global1.a.b.x)), global1.a.b), func_4(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(max(823f, arg_1.b.e.x)), var_0.b.e.x, 1f, func_5(Struct_4(vec2<u32>(0u, global1.a.b.x), Struct_2(Struct_1(30850i, vec4<u32>(global1.a.b.x, 45468u, 43994u, arg_1.a.x)), Struct_1(global1.a.a, global1.a.b), global1.a, Struct_1(global1.a.a, vec4<u32>(arg_2.c.b.x, arg_2.a.b.x, 0u, 4294967295u)), vec2<f32>(-697f, var_0.b.e.x)), var_0.c), vec3<i32>(global1.a.a, global1.a.a, u_input.a.x), u_input.b.zxy).b.e.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2384f, -1000f, var_0.b.e.x))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, var_0.b.e.x, 1000f), vec3<f32>(563f, arg_2.e.x, -306f), global1.b.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(230f, arg_2.e.x, arg_2.e.x) - vec3<f32>(arg_1.b.e.x, arg_0, -761f)))), false, -reverseBits(var_0.b.d.a)), Struct_1(u_input.b.x, vec4<u32>(abs(44916u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, arg_1.a.x, arg_2.a.b.x, arg_2.d.b.x), arg_1.b.d.b), 69482u, arg_2.c.b.x) >> (var_0.b.c.b % vec4<u32>(32u))), !(!select(!vec4<bool>(arg_3.x, true, false, true), select(vec4<bool>(arg_3.x, global1.b.x, true, global1.b.x), vec4<bool>(global1.b.x, var_1, arg_3.x, global1.b.x), false), !vec4<bool>(global1.b.x, false, true, var_1))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(300f, Struct_4(global1.a.b.wy, func_1(), ~abs(abs(u_input.b))), Struct_2(global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(global1.a.b.x, 41259u), 4u)], Struct_1(func_5(Struct_4(vec2<u32>(global1.a.b.x, 69024u), Struct_2(global1.a, global1.a, global2[_wgslsmith_index_u32(2269u, 4u)], Struct_1(31066i, global1.a.b), vec2<f32>(global1.c, 386f)), u_input.b), abs(u_input.b.yxz), u_input.b.xyy).c.x, ~firstLeadingBit(global1.a.b)), Struct_1(~38126i << (~global1.a.b.x % 32u), select(firstLeadingBit(global1.a.b), ~global1.a.b, vec4<bool>(global1.b.x, true, global1.b.x, global1.b.x))), Struct_1(-1i | u_input.a.x, _wgslsmith_mult_vec4_u32(~vec4<u32>(0u, 1212u, 3022u, global1.a.b.x), _wgslsmith_mult_vec4_u32(vec4<u32>(6095u, global1.a.b.x, global1.a.b.x, 4294967295u), vec4<u32>(17095u, 43691u, 49463u, global1.a.b.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c, 1006f) * vec2<f32>(3146f, global1.c)))) * _wgslsmith_f_op_vec3_f32(func_2()).xy)), vec2<bool>(!(false & any(vec2<bool>(global1.b.x, global1.b.x))), _wgslsmith_clamp_i32(9824i, firstTrailingBit(847i), -23075i) < global1.a.a));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.c.e.x, _wgslsmith_f_op_f32(ceil(var_0.a.x)))) + _wgslsmith_f_op_f32(global1.c - _wgslsmith_f_op_f32(var_0.a.x * func_1().e.x)));
    let var_1 = func_5(func_5(func_5(Struct_4(var_0.d.b.wy, Struct_2(Struct_1(var_0.d.a, var_0.d.b), var_0.c.d, Struct_1(u_input.b.x, vec4<u32>(global1.a.b.x, 4294967295u, 0u, 0u)), global2[_wgslsmith_index_u32(var_0.b, 4u)], var_0.c.e), u_input.b), _wgslsmith_clamp_vec3_i32(u_input.b.zxw | vec3<i32>(global1.a.a, 7058i, var_0.d.a), u_input.b.xzw << (global1.a.b.xyx % vec3<u32>(32u)), vec3<i32>(global1.a.a, var_0.d.a, u_input.b.x)), vec3<i32>(-81833i, global1.a.a, u_input.b.x) & -u_input.b.zzy), _wgslsmith_mod_vec3_i32(u_input.b.xyw, vec3<i32>(-2147483647i, var_0.c.b.a, -1i)), _wgslsmith_mult_vec3_i32(select(vec3<i32>(35688i, -18157i, -21249i), _wgslsmith_sub_vec3_i32(u_input.b.wxz, u_input.b.ywx), var_0.e.wxy), -u_input.b.zyx)), -min(vec3<i32>(u_input.a.x, _wgslsmith_mult_i32(16908i, global1.a.a), _wgslsmith_mult_i32(u_input.b.x, global1.a.a)), u_input.b.zzz), u_input.b.zyx ^ vec3<i32>(global1.a.a, firstLeadingBit(-u_input.a.x), _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(33359i, var_0.c.a.a, var_0.d.a, 39351i))));
    var var_2 = func_6(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.e.x * _wgslsmith_f_op_f32(var_1.b.e.x + 405f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.e.x))))), func_5(Struct_4(~global1.a.b.xx, Struct_2(Struct_1(var_0.c.b.a, var_1.b.b.b), func_1().d, var_0.c.b, var_0.d, var_0.c.e), ~(var_1.c >> (vec4<u32>(41355u, var_1.a.x, 12826u, 35801u) % vec4<u32>(32u)))), -_wgslsmith_div_vec3_i32(vec3<i32>(var_1.c.x, -2147483647i, u_input.a.x), vec3<i32>(global1.a.a, 2147483647i, global1.a.a)) & countOneBits(var_1.c.wxx), abs(vec3<i32>(_wgslsmith_mod_i32(var_0.c.d.a, u_input.b.x), _wgslsmith_div_i32(-1i, -78989i), -1i))), func_6(var_1.b.e.x, Struct_4(var_0.c.d.b.yx, func_5(Struct_4(vec2<u32>(4294967295u, 64606u), var_0.c, vec4<i32>(40136i, var_0.c.d.a, var_0.d.a, -29403i)), _wgslsmith_add_vec3_i32(var_1.c.zxz, var_1.c.wxz), vec3<i32>(-35734i, 810i, 0i)).b, var_1.c), Struct_2(func_1().c, global2[_wgslsmith_index_u32(~(~var_0.c.c.b.x), 4u)], Struct_1(func_6(global1.c, var_1, var_1.b, vec2<bool>(true, false)).d.a, ~var_0.d.b), func_5(var_1, vec3<i32>(-1i, var_0.c.b.a, var_1.c.x), u_input.b.xxy).b.c, var_1.b.e), var_0.e.xy).c, global1.b);
    var var_3 = Struct_5(global1.a, vec2<bool>(var_0.b >= select(~1u, ~33181u, global1.b.x), any(vec4<bool>(func_6(-372f, Struct_4(var_1.a, var_2.c, vec4<i32>(var_1.c.x, var_1.b.c.a, u_input.b.x, var_0.c.c.a)), var_1.b, vec2<bool>(var_2.e.x, var_0.e.x)).e.x, all(vec4<bool>(true, false, false, true)), var_0.e.x, false | global1.b.x))), var_2.a.x);
    let var_4 = _wgslsmith_mult_vec2_u32(abs(vec2<u32>(min(func_5(var_1, vec3<i32>(-1i, u_input.b.x, 2147483647i), vec3<i32>(-80950i, 0i, 1i)).b.a.b.x, abs(4294967295u)), ~var_2.d.b.x)), ~reverseBits(vec2<u32>(firstLeadingBit(var_3.a.b.x), var_2.c.a.b.x)));
    var_3 = Struct_5(func_4(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.b.e.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(442f * var_2.a.x) * var_2.a.x), var_1.b.e.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a.x)))), vec3<f32>(var_0.c.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c)), _wgslsmith_f_op_f32(exp2(var_1.b.e.x))), true, (_wgslsmith_add_i32(global1.a.a, -31061i) >> (1u % 32u)) << ((_wgslsmith_dot_vec2_u32(global1.a.b.ww, var_3.a.b.zx) | _wgslsmith_clamp_u32(1u, var_3.a.b.x, var_3.a.b.x)) % 32u)).c, !select(select(func_6(global1.c, var_1, Struct_2(global2[_wgslsmith_index_u32(2749u, 4u)], Struct_1(1i, global1.a.b), var_2.c.d, Struct_1(-11200i, var_3.a.b), var_2.a.yy), vec2<bool>(false, false)).e.zz, !var_2.e.xx, !var_2.e.zx), select(select(vec2<bool>(var_2.e.x, var_3.b.x), var_2.e.xz, global1.b), !var_3.b, true), any(vec2<bool>(false, var_0.e.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1571f, global1.c))))))));
    var var_5 = func_6(func_6(-542f, var_1, func_1(), var_3.b).c.e.x, Struct_4(_wgslsmith_add_vec2_u32(~select(vec2<u32>(var_4.x, 104350u), vec2<u32>(30707u, var_3.a.b.x), vec2<bool>(var_2.e.x, var_3.b.x)), vec2<u32>(~54893u, ~var_1.a.x)), func_1(), vec4<i32>(var_2.d.a, -var_1.c.x ^ _wgslsmith_mod_i32(4847i, var_0.c.d.a), ~_wgslsmith_clamp_i32(-2147483647i, -1i, 23847i), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(2147483647i, 2147483647i, -10078i, var_0.d.a)), var_1.c ^ vec4<i32>(1i, u_input.b.x, 48519i, -15291i)))), Struct_2(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(1010f, -1000f, 1579f, 757f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-335f, 858f, -1000f, var_2.c.e.x), vec4<f32>(-499f, -2069f, -136f, 141f), vec4<bool>(global1.b.x, false, var_3.b.x, true)))), vec3<f32>(424f, func_6(708f, var_1, Struct_2(Struct_1(var_3.a.a, vec4<u32>(var_0.b, var_2.d.b.x, var_3.a.b.x, var_0.d.b.x)), global1.a, Struct_1(var_2.c.b.a, vec4<u32>(4294967295u, var_4.x, 51985u, var_2.b)), Struct_1(1645i, vec4<u32>(4294967295u, var_2.c.c.b.x, 11758u, 1u)), var_2.a.xy), var_0.e.xx).a.x, -119f), true && all(vec2<bool>(global1.b.x, true)), 1i).c, func_1().c, Struct_1(_wgslsmith_mult_i32(_wgslsmith_mult_i32(var_2.c.d.a, var_3.a.a), -global1.a.a), firstTrailingBit(~vec4<u32>(30150u, 1u, var_4.x, var_0.b))), Struct_1(-34008i, min(~vec4<u32>(var_0.c.c.b.x, var_3.a.b.x, 35394u, global1.a.b.x), abs(vec4<u32>(var_0.b, 0u, global1.a.b.x, global1.a.b.x)))), var_1.b.e), func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -1704f))), Struct_4(~func_4(vec4<f32>(var_1.b.e.x, 311f, -453f, var_0.c.e.x), var_2.a, var_0.e.x, 27227i).b.b.yy, var_0.c, ~vec4<i32>(var_3.a.a, 2147483647i, -2147483647i, -34924i)), Struct_2(Struct_1(0i, select(var_2.d.b, vec4<u32>(var_1.a.x, var_1.a.x, var_0.c.c.b.x, 1u), false)), Struct_1(select(u_input.b.x, 2147483647i, false), ~vec4<u32>(4294967295u, 4294967295u, 4294967295u, var_2.b)), global1.a, global1.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.c.e + vec2<f32>(1320f, global1.c)), vec2<f32>(global1.c, var_2.c.e.x))), vec2<bool>(true, !select(var_0.e.x, false, false))).e.wy).c;
    let var_6 = vec3<f32>(409f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.e.x) + -1468f), -1603f);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.d.a, ~min(var_3.a.a << (var_5.b.b.x % 32u), u_input.a.x ^ u_input.a.x) << (~14115u % 32u), ~(~(~global1.a.b.x) ^ _wgslsmith_add_u32(_wgslsmith_add_u32(1u, 24876u), ~var_0.b)));
}

