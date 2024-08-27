struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: vec4<bool>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec4<bool>(false, true, false, true), vec3<bool>(true, true, false), vec4<bool>(false, false, true, false), vec3<u32>(0u, 1u, 1u)), Struct_1(vec4<bool>(true, false, false, false), vec3<bool>(true, false, false), vec4<bool>(true, true, false, true), vec3<u32>(1u, 47683u, 15264u)), Struct_1(vec4<bool>(true, true, true, true), vec3<bool>(true, false, false), vec4<bool>(false, true, true, true), vec3<u32>(28318u, 4294967295u, 0u)), Struct_1(vec4<bool>(false, false, false, false), vec3<bool>(false, true, false), vec4<bool>(false, true, false, false), vec3<u32>(4294967295u, 7579u, 1u)), Struct_1(vec4<bool>(false, true, false, false), vec3<bool>(false, true, true), vec4<bool>(false, false, true, false), vec3<u32>(0u, 4294967295u, 1u)), Struct_1(vec4<bool>(true, true, true, true), vec3<bool>(true, true, true), vec4<bool>(true, true, true, true), vec3<u32>(27020u, 81204u, 33391u)), Struct_1(vec4<bool>(false, true, true, false), vec3<bool>(true, true, true), vec4<bool>(false, false, false, false), vec3<u32>(4294967295u, 0u, 644u)), Struct_1(vec4<bool>(true, false, true, true), vec3<bool>(false, true, true), vec4<bool>(true, true, false, true), vec3<u32>(0u, 1u, 1u)), Struct_1(vec4<bool>(false, false, false, false), vec3<bool>(false, true, true), vec4<bool>(false, true, true, false), vec3<u32>(40126u, 17844u, 0u)), Struct_1(vec4<bool>(false, false, false, false), vec3<bool>(true, false, true), vec4<bool>(false, true, false, true), vec3<u32>(1u, 1u, 91362u)), Struct_1(vec4<bool>(false, false, true, false), vec3<bool>(true, true, true), vec4<bool>(false, false, true, true), vec3<u32>(0u, 72467u, 4540u)), Struct_1(vec4<bool>(false, false, false, false), vec3<bool>(true, false, true), vec4<bool>(true, false, false, false), vec3<u32>(0u, 57336u, 0u)), Struct_1(vec4<bool>(false, true, true, true), vec3<bool>(true, false, true), vec4<bool>(false, true, true, false), vec3<u32>(21878u, 20317u, 56617u)));

var<private> global1: bool;

var<private> global2: Struct_2;

var<private> global3: array<vec2<i32>, 26>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: vec2<i32>, arg_3: vec2<f32>) -> f32 {
    var var_0 = vec4<u32>(u_input.c, reverseBits(_wgslsmith_sub_u32(0u, ~global2.c.x)), u_input.c >> (global2.b.x % 32u), max(~(~19662u | abs(global2.b.x)), ~u_input.c));
    var var_1 = Struct_2(~(vec3<i32>(_wgslsmith_mult_i32(1i, arg_2.x), _wgslsmith_clamp_i32(arg_2.x, global2.a.x, global2.a.x), _wgslsmith_dot_vec3_i32(global2.a, global2.a)) >> (~(~var_0.wxw) % vec3<u32>(32u))), vec3<u32>(~_wgslsmith_dot_vec3_u32(var_0.yyw & vec3<u32>(var_0.x, global2.c.x, 31998u), vec3<u32>(104547u, 0u, 1u)), ~1u, ~var_0.x), (~abs(vec2<u32>(1u, 4294967295u)) & vec2<u32>(30583u, global2.c.x)) ^ (abs(_wgslsmith_div_vec2_u32(global2.b.yy, var_0.zw)) << ((_wgslsmith_clamp_vec2_u32(var_0.xz, vec2<u32>(u_input.c, var_0.x), vec2<u32>(0u, 17316u)) >> (~vec2<u32>(0u, var_0.x) % vec2<u32>(32u))) % vec2<u32>(32u))), -429f);
    global1 = true;
    let var_2 = min(~(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_2.x, global2.a.x, -2147483647i, -1i), vec4<i32>(-6456i, 2147483647i, -4067i, -1i) & vec4<i32>(global2.a.x, var_1.a.x, 33538i, var_1.a.x)) & vec4<i32>(arg_2.x, -2147483647i, _wgslsmith_div_i32(-23359i, arg_2.x), _wgslsmith_mod_i32(2147483647i, arg_2.x))), vec4<i32>(global2.a.x, 1i, firstTrailingBit(_wgslsmith_dot_vec2_i32(var_1.a.zz << (global2.b.yy % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(vec2<i32>(1i, -46030i), global3[_wgslsmith_index_u32(37078u, 26u)]))), ~(-var_1.a.x)));
    var var_3 = -(~select(vec4<i32>(0i, -16579i, 2098i, arg_2.x) & firstTrailingBit(var_2), var_2, vec4<bool>(true, true, any(vec4<bool>(false, true, false, false)), any(vec4<bool>(true, false, false, true)))));
    return arg_3.x;
}

fn func_2(arg_0: vec3<f32>) -> vec3<i32> {
    var var_0 = Struct_2(firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(abs(-5640i), i32(-1i) * -160i, ~global2.a.x), firstLeadingBit(global2.a ^ global2.a))), select(global2.b, ~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(30300u, u_input.c, global2.b.x, 12935u), vec4<u32>(u_input.c, 1258u, 34861u, u_input.c)), u_input.c, abs(52398u)), -_wgslsmith_clamp_i32(5848i, global2.a.x, u_input.a) < u_input.b), vec2<u32>(u_input.c, ~4294967295u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -758f) - _wgslsmith_f_op_f32(step(500f, arg_0.x))) * arg_0.x));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(992f)) - _wgslsmith_f_op_f32(func_3(global2.d, -1103f, vec2<i32>(-11236i, u_input.b), vec2<f32>(var_0.d, var_0.d)))), _wgslsmith_f_op_f32(-global2.d))))), _wgslsmith_f_op_f32(257f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.d)) - _wgslsmith_f_op_f32(-563f * _wgslsmith_div_f32(var_0.d, -485f)))));
    var var_2 = Struct_2(min(var_0.a, var_0.a), vec3<u32>(7765u, ~13249u, 13734u), vec2<u32>(var_0.c.x, ~abs(u_input.c)), arg_0.x);
    var var_3 = vec4<f32>(var_2.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d)) * arg_0.x), global2.d, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -820f))))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_3.x)))))));
    return var_2.a;
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> i32 {
    let var_0 = global2.b.x;
    var var_1 = Struct_1(!vec4<bool>(all(vec4<bool>(true, true, true, true)), select(true, 0u < arg_0.c.x, true), true, false), !(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true)), !select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), true), all(vec3<bool>(false, true, false))), global2.b);
    var_1 = Struct_1(select(select(!select(vec4<bool>(true, false, var_1.c.x, false), var_1.c, var_1.c), select(!var_1.a, vec4<bool>(true, true, true, true), arg_0.a.x > global2.a.x), vec4<bool>(any(vec4<bool>(true, true, var_1.b.x, var_1.a.x)), !var_1.b.x, arg_0.d == global2.d, !var_1.c.x)), select(var_1.c, var_1.a, vec4<bool>(var_1.a.x, u_input.c <= arg_1, var_1.a.x, var_1.a.x)), var_1.b.x), select(var_1.a.zyw, !var_1.a.xwx, any(var_1.c.xww)), !(!vec4<bool>(-13546i <= global2.a.x, true, true, true)), ~(~(~vec3<u32>(global2.b.x, 4294967295u, var_1.d.x) >> (vec3<u32>(3371u, 4294967295u, arg_1) % vec3<u32>(32u)))));
    let var_2 = vec3<bool>((var_1.a.x & var_1.b.x) == !var_1.c.x, 20332i <= firstLeadingBit(arg_0.a.x), _wgslsmith_f_op_f32(global2.d + -1318f) >= _wgslsmith_f_op_f32(round(global2.d)));
    let var_3 = all(var_2.yx);
    return arg_0.a.x;
}

fn func_1(arg_0: bool) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1563f, 1963f, global2.d)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.d, global2.d, global2.d))) - vec3<f32>(_wgslsmith_f_op_f32(-global2.d), _wgslsmith_f_op_f32(ceil(798f)), _wgslsmith_f_op_f32(f32(-1f) * -752f))))));
    return func_4(Struct_2(~(func_2(var_0) ^ global2.a), global2.b, vec2<u32>(_wgslsmith_mult_u32(4294967295u, u_input.c), ~u_input.c), global2.d), ~abs(firstLeadingBit(global2.b.x << (global2.c.x % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(reverseBits(vec2<i32>(~(-u_input.b), abs(-2147483647i))));
    let var_1 = any(!(!vec3<bool>(57029u == global2.c.x, any(vec3<bool>(false, true, false)), false)));
    var_0 = vec2<i32>(103i, func_1(true));
    var var_2 = _wgslsmith_f_op_f32(global2.d + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -715f))) - -1452f));
    let var_3 = !all(select(select(select(vec4<bool>(false, var_1, true, true), vec4<bool>(false, var_1, var_1, true), vec4<bool>(true, false, var_1, false)), !vec4<bool>(false, false, false, var_1), true), !(!vec4<bool>(var_1, var_1, var_1, true)), false));
    let var_4 = Struct_1(vec4<bool>(1i == -func_4(Struct_2(vec3<i32>(u_input.a, var_0.x, -2147483647i), vec3<u32>(4294967295u, 16736u, u_input.c), global2.c, global2.d), global2.c.x), -u_input.a <= reverseBits(~0i), var_3, !var_1), vec3<bool>(!any(select(vec2<bool>(var_3, var_1), vec2<bool>(false, var_3), true)), !var_3, var_3), !(!select(select(vec4<bool>(var_3, var_3, true, false), vec4<bool>(var_3, true, true, var_1), var_3), vec4<bool>(var_3, false, var_1, true), select(vec4<bool>(false, false, var_3, true), vec4<bool>(true, false, var_3, var_3), var_3))), global2.b);
    var var_5 = !(!(_wgslsmith_div_f32(-1000f, -462f) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(601f, global2.d)) - _wgslsmith_f_op_f32(1640f * 569f))));
    global2 = Struct_2(global2.a, countOneBits(~firstTrailingBit(var_4.d)), ~vec2<u32>(global2.c.x >> (var_4.d.x % 32u), max(var_4.d.x >> (6186u % 32u), global2.c.x)), global2.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1027f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.d + -1051f) + _wgslsmith_f_op_f32(func_3(-766f, global2.d, global3[_wgslsmith_index_u32(u_input.c, 26u)], vec2<f32>(-443f, -697f)))), global2.d, global2.d), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(663f, 1355f, global2.d, global2.d)))))));
}

