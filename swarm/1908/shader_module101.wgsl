struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<bool>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: f32 = -2682f;

var<private> global2: vec2<f32>;

var<private> global3: Struct_2 = Struct_2(0i, Struct_1(vec4<i32>(-31804i, 50355i, 1i, i32(-2147483648)), 2147483647i, i32(-2147483648), vec4<u32>(4294967295u, 89489u, 1u, 4294967295u)), vec3<bool>(true, false, true), vec3<bool>(false, false, false));

var<private> global4: Struct_3 = Struct_3(Struct_2(6725i, Struct_1(vec4<i32>(1i, -24533i, 27860i, 2147483647i), -59474i, 4932i, vec4<u32>(43415u, 4294967295u, 4973u, 32520u)), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, false, true));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<f32>) -> vec3<f32> {
    let var_0 = select(!(!select(vec4<bool>(global3.d.x, true, true, global3.c.x), select(vec4<bool>(arg_0.b.x, arg_0.a.d.x, global3.c.x, arg_0.a.d.x), vec4<bool>(global3.d.x, arg_0.b.x, global3.d.x, true), vec4<bool>(true, global3.c.x, global4.a.c.x, false)), true)), select(select(select(!vec4<bool>(global3.d.x, false, true, global4.b.x), !vec4<bool>(global3.c.x, global4.a.c.x, global3.c.x, false), !vec4<bool>(true, global4.a.c.x, false, global3.c.x)), !select(vec4<bool>(global3.c.x, true, arg_0.a.d.x, global3.d.x), vec4<bool>(false, global3.d.x, true, global4.b.x), vec4<bool>(false, global3.c.x, true, global3.d.x)), select(!vec4<bool>(false, arg_0.a.c.x, false, true), !vec4<bool>(global4.a.d.x, true, arg_0.a.d.x, arg_0.a.d.x), any(vec3<bool>(global4.b.x, global3.c.x, false)))), vec4<bool>(global4.b.x || global3.c.x, arg_1.x < _wgslsmith_f_op_f32(round(-405f)), global4.a.c.x, global3.d.x), !(!select(vec4<bool>(false, global3.c.x, false, true), vec4<bool>(global4.b.x, global3.d.x, false, global4.b.x), false))), select(select(vec4<bool>(global3.c.x, true, global4.a.d.x, !global4.b.x), vec4<bool>(all(vec2<bool>(global4.a.d.x, false)), global4.a.d.x, global3.d.x, u_input.a != arg_0.a.b.d.x), arg_0.b.x), !vec4<bool>(false, false, 542f < arg_1.x, any(vec2<bool>(global3.c.x, global4.a.c.x))), global3.c.x));
    global0 = false;
    global0 = 359f > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(-arg_1.x)))));
    var var_1 = Struct_3(Struct_2(~(-arg_0.a.b.a.x), global4.a.b, global4.b, arg_0.a.d), !vec3<bool>(all(var_0), global3.d.x, global3.c.x));
    var var_2 = arg_0;
    return _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.x - -848f), _wgslsmith_f_op_f32(-958f + -585f), true)), -461f, 1251f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.x, 896f, arg_1.x), vec3<f32>(664f, -249f, global2.x), vec3<bool>(false, global4.b.x, var_0.x)))) * vec3<f32>(_wgslsmith_div_f32(arg_1.x, arg_1.x), arg_1.x, _wgslsmith_f_op_f32(round(global2.x))))))));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: u32) -> i32 {
    let var_0 = global4.a;
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, arg_0.x, global2.x))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_3(Struct_3(arg_1.a, !global4.b), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, 1656f) - arg_0))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, global2.x, -577f) + vec3<f32>(global2.x, -1666f, arg_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(402f, 1432f, global2.x)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1051f, -588f, global2.x) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.x, global2.x, arg_0.x), vec3<f32>(1000f, 2289f, global2.x), vec3<bool>(global3.d.x, var_0.c.x, false))))))));
    global1 = -625f;
    let var_2 = ~vec3<i32>(reverseBits(-1i), var_0.b.b, firstTrailingBit(~_wgslsmith_mod_i32(global3.b.b, -18236i)));
    var var_3 = min(~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(arg_1.a.b.d << (vec4<u32>(0u, global3.b.d.x, 0u, u_input.a) % vec4<u32>(32u)), ~arg_1.a.b.d, global3.b.d), firstLeadingBit(vec4<u32>(0u, global4.a.b.d.x, 30656u, 1u))), _wgslsmith_dot_vec2_u32(~min(~vec2<u32>(u_input.b.x, 28503u), vec2<u32>(global3.b.d.x, 1906u)), min(countOneBits(u_input.b) | (arg_1.a.b.d.xz ^ vec2<u32>(14613u, u_input.a)), ~global4.a.b.d.xx)));
    return -72428i;
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: u32) -> Struct_1 {
    var var_0 = false;
    var var_1 = ~_wgslsmith_div_u32(~_wgslsmith_div_u32(52219u, _wgslsmith_mult_u32(arg_2, 0u)), arg_2);
    var var_2 = max(vec3<i32>(select(~(-arg_1), func_2(_wgslsmith_f_op_vec2_f32(-arg_0.yy), Struct_3(global4.a, vec3<bool>(global3.d.x, global3.d.x, global4.a.c.x)), global4.a.b.d.x), any(vec3<bool>(false, true, global3.c.x))), 34231i, global3.a), -global4.a.b.a.zzy);
    var var_3 = ~(~(~u_input.b.x));
    return Struct_1(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, -22705i, -28353i), ~vec3<i32>(-1i, var_2.x, 20413i)), -(2147483647i >> (global3.b.d.x % 32u))), global3.a, _wgslsmith_dot_vec4_i32(vec4<i32>(16958i, _wgslsmith_div_i32(global3.a, global4.a.b.a.x), max(-1i, var_2.x), var_2.x), global4.a.b.a), 54375i), -global3.b.b, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(~var_2.xx, _wgslsmith_mod_vec2_i32(global4.a.b.a.xw, global3.b.a.ww)) | 2147483647i, func_2(arg_0.xz, Struct_3(Struct_2(-2147483647i, global4.a.b, vec3<bool>(true, false, global3.c.x), global3.c), !vec3<bool>(global4.b.x, global4.a.c.x, true)), arg_2)), vec4<u32>(arg_2, ~(~global4.a.b.d.x), ~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(~global3.b.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global3.b.d.x, global4.a.b.d.x, 4294967295u), vec3<u32>(global3.b.d.x, 4294967295u, global3.b.d.x)), 1u), _wgslsmith_add_vec3_u32(vec3<u32>(global3.b.d.x, arg_2, 0u), global4.a.b.d.ywy))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec3<u32>) -> vec2<i32> {
    global4 = Struct_3(Struct_2(_wgslsmith_clamp_i32(-24139i, 4653i, arg_1.a.x), Struct_1(vec4<i32>(~global4.a.a, 2147483647i << (arg_2.x % 32u), 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(global4.a.a, -1i), vec2<i32>(global4.a.b.c, arg_1.a.x))), 2147483647i, ~arg_1.a.x, ~(~arg_1.d)), vec3<bool>(global3.c.x, !any(global3.c.zx), false), select(!global3.c, global4.a.d, !global3.d.x)), select(select(!global4.a.d, global4.b, global3.c), select(global4.b, global4.a.d, global4.a.c.x & true), false));
    let var_0 = Struct_2(global3.b.c ^ -_wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, arg_1.b), -global4.a.b.a.wx), func_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, 513f, global2.x, global2.x) * vec4<f32>(global2.x, -175f, global2.x, -1400f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(892f, global2.x, -288f, -438f), vec4<f32>(global2.x, global2.x, 503f, global2.x), true))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1469f, global2.x, 180f, global2.x))))))), _wgslsmith_dot_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(global3.b.b, global3.b.c, 29493i, global4.a.b.b), vec4<i32>(global4.a.a, 1i, arg_1.c, arg_1.c)), global3.b.a), ~(~1u)), global4.a.c, vec3<bool>(true, true, true));
    let var_1 = Struct_2(arg_1.c, Struct_1(max(_wgslsmith_clamp_vec4_i32(-vec4<i32>(global3.a, global4.a.a, 0i, var_0.a), vec4<i32>(global3.b.c, arg_1.b, 2147483647i, global4.a.b.c), reverseBits(vec4<i32>(1466i, arg_1.a.x, arg_1.b, 44444i))), ~vec4<i32>(arg_1.b, var_0.a, arg_1.b, -2147483647i)), var_0.a, var_0.b.c, global3.b.d), vec3<bool>(true, all(vec2<bool>(var_0.c.x, !global3.c.x)), any(var_0.d)), var_0.c);
    var var_2 = min(vec2<u32>(abs(1u) >> (1u % 32u), global4.a.b.d.x ^ ~42876u), firstTrailingBit(arg_0));
    global2 = vec2<f32>(global2.x, global2.x);
    return arg_1.a.xz & var_1.b.a.xx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(func_4(firstLeadingBit(vec2<u32>(u_input.b.x, 50590u)), func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(170f, -618f, -1629f, global2.x)), -global4.a.b.b, ~u_input.b.x), ~vec3<u32>(17857u, 33849u, u_input.a)) ^ ~_wgslsmith_mod_vec2_i32(global3.b.a.yz, _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, global4.a.b.b), global3.b.a.yz)));
    let var_1 = true;
    var var_2 = vec3<u32>(_wgslsmith_div_u32(select(~global4.a.b.d.x, _wgslsmith_add_u32(1u | global3.b.d.x, 0u), !global3.c.x | any(vec2<bool>(false, global4.b.x))), 4294967295u), 67127u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(15918u, u_input.a), firstTrailingBit(_wgslsmith_sub_u32(31242u & global4.a.b.d.x, 1u))));
    let var_3 = false;
    var var_4 = global4.a;
    let var_5 = func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, _wgslsmith_f_op_f32(-403f * _wgslsmith_f_op_f32(sign(119f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, -606f)), -1000f) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 3533f, global2.x, global2.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(324f, 201f, -1532f, 877f) * vec4<f32>(global2.x, global2.x, global2.x, 381f)))))), -69281i, ~_wgslsmith_mult_u32(~_wgslsmith_sub_u32(global4.a.b.d.x, 0u), 0u));
    global3 = Struct_2(i32(-1i) * -1i, func_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2.x, 1000f, -421f, global2.x), vec4<f32>(403f, 614f, -619f, global2.x)))))), ~(-1i), _wgslsmith_mod_u32(global3.b.d.x, global3.b.d.x) << (48561u % 32u)), !select(var_4.c, global3.c, vec3<bool>(!var_3, false && var_3, global4.a.d.x)), global3.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.x, 1000f, -1122f, -593f)))), vec4<f32>(global2.x, global2.x, _wgslsmith_div_f32(global2.x, -308f), _wgslsmith_f_op_f32(select(global2.x, -989f, global3.d.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(trunc(-938f)), global2.x, _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, global2.x))))));
}

