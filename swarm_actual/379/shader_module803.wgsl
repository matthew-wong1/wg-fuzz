struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: i32,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(1u, 1i, vec2<i32>(15158i, -24018i), false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-236f))) < -520f;
    let var_1 = reverseBits(select(-(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, 0i, 2147483647i, -1i), vec4<i32>(global2.b, u_input.b, global0.b, 34401i)) >> ((vec4<u32>(global1.a, global0.a, 24494u, global1.a) << (vec4<u32>(global1.a, 2556u, global0.a, global2.a) % vec4<u32>(32u))) % vec4<u32>(32u))), -vec4<i32>(~(-2147483647i), global2.c.x, ~global1.b, ~global1.c.x), !(!select(vec4<bool>(global0.d, false, false, global1.d), vec4<bool>(true, false, false, global2.d), global2.d))));
    var var_2 = Struct_1(firstLeadingBit(countOneBits(4294967295u) | global1.a), var_1.x >> (global0.a % 32u), vec2<i32>(global2.b, -_wgslsmith_sub_i32(-51611i >> (global0.a % 32u), var_1.x)), all(!select(select(vec3<bool>(var_0, var_0, global0.d), vec3<bool>(global0.d, global0.d, global1.d), vec3<bool>(true, global2.d, false)), select(vec3<bool>(global0.d, false, true), vec3<bool>(global2.d, global2.d, global0.d), true), select(vec3<bool>(true, false, global0.d), vec3<bool>(global2.d, global2.d, true), true))));
    var var_3 = Struct_4(u_input.d & var_1.zwy);
    global2 = Struct_1(global0.a, 18311i, min(vec2<i32>(global2.b, _wgslsmith_mult_i32(reverseBits(var_3.a.x), -2147483647i)), -vec2<i32>(-2147483647i, 0i | var_1.x)), true);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -564f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(358f - -1596f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1214f, -1308f, var_2.d)) - _wgslsmith_f_op_f32(trunc(842f))))));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: vec2<u32>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()));
    var var_1 = ~(~(~select(vec3<u32>(arg_2.b.e.a, global0.a, arg_0.e.a), arg_1, arg_2.b.a.x)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, arg_2.a.x, 148f, 1770f) + vec4<f32>(481f, -611f, 265f, var_0)))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.a.x, var_0, 385f, var_0))))))));
    global2 = Struct_1(16778u, firstLeadingBit(~(-1i)), _wgslsmith_mod_vec2_i32(vec2<i32>(global2.c.x, abs(abs(-2147483647i))), reverseBits(~global0.c)), global0.d);
    var var_3 = Struct_4(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_clamp_i32(global1.b, 12200i, arg_2.b.e.c.x), global0.b), global1.c.x, 0i), u_input.d));
    return Struct_4(u_input.d);
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: vec3<u32>, arg_3: Struct_4) -> u32 {
    global0 = Struct_1(72958u, global1.b, _wgslsmith_mod_vec2_i32(-(vec2<i32>(global1.c.x, global1.c.x) << (vec2<u32>(4294967295u, global2.a) % vec2<u32>(32u))) & min(firstTrailingBit(vec2<i32>(1i, 1i)), global1.c), vec2<i32>(min(firstLeadingBit(-32024i), -14996i), -2147483647i)), global0.d != global0.d);
    let var_0 = vec4<bool>(any(select(vec4<bool>(true, false, global0.a != 0u, !global2.d), !(!vec4<bool>(global0.d, global2.d, global1.d, true)), global2.d)), true, all(select(select(vec3<bool>(true, false, true), select(vec3<bool>(global0.d, global0.d, true), vec3<bool>(global0.d, global0.d, global2.d), global1.d), select(vec3<bool>(global1.d, global1.d, global0.d), vec3<bool>(true, false, global2.d), vec3<bool>(false, global2.d, true))), vec3<bool>(global1.a <= global2.a, false, true), all(select(vec4<bool>(global1.d, true, true, global2.d), vec4<bool>(global0.d, false, true, true), vec4<bool>(false, true, false, global1.d))))), reverseBits(global2.b) <= func_2(Struct_2(!vec2<bool>(false, global2.d), abs(26305u), -2147483647i, vec3<bool>(global2.d, global2.d, false), Struct_1(0u, -2147483647i, global2.c, global0.d)), arg_2, Struct_3(vec2<f32>(arg_1, arg_1), Struct_2(vec2<bool>(true, true), 16495u, 47619i, vec3<bool>(false, global0.d, false), Struct_1(4294967295u, global2.c.x, vec2<i32>(32088i, global0.b), true)), arg_2.x & 32372u), select(vec2<u32>(86952u, 0u), arg_2.xx, select(vec2<bool>(global1.d, false), vec2<bool>(global2.d, global1.d), vec2<bool>(true, true)))).a.x);
    global2 = Struct_1(firstTrailingBit(~(_wgslsmith_div_u32(global1.a, 4294967295u) | arg_2.x)), u_input.c.x, vec2<i32>(global0.c.x, global1.b), false || (arg_1 >= arg_1));
    let var_1 = Struct_2(select(select(select(!var_0.yw, vec2<bool>(global0.d, true), !vec2<bool>(global1.d, global0.d)), var_0.zw, var_0.yx), select(!(!vec2<bool>(global1.d, global2.d)), vec2<bool>(!global1.d, var_0.x), var_0.x), true), global1.a, -11694i, var_0.wxz, Struct_1(arg_2.x & _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(78783u, global1.a, 4294967295u), vec3<u32>(4294967295u, global2.a, 0u)), reverseBits(1u)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a, global2.c.x, u_input.d.x), vec4<i32>(arg_3.a.x, global0.c.x, global1.c.x, 46722i)) >> (global1.a % 32u), arg_3.a.zy, false));
    let var_2 = firstLeadingBit(func_2(var_1, arg_2, Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1, 556f), vec2<f32>(2741f, arg_1))) + vec2<f32>(arg_1, arg_1)), var_1, _wgslsmith_mod_u32(min(arg_2.x, 29685u), global0.a)), ~(~(~arg_2.xy))).a.xx);
    return _wgslsmith_dot_vec3_u32(arg_2, reverseBits(~vec3<u32>(~0u, arg_2.x >> (global0.a % 32u), global0.a)));
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: Struct_2) -> i32 {
    global0 = Struct_1(1u, _wgslsmith_clamp_i32(~_wgslsmith_mult_i32(arg_1.b.c >> (28665u % 32u), -2147483647i), firstLeadingBit(~(-22786i)), _wgslsmith_clamp_i32(-abs(-1i), global1.c.x, global1.b)), vec2<i32>(~global0.b, firstLeadingBit(24521i)), arg_3.e.d);
    var var_0 = countOneBits(~vec3<u32>(0u, func_4(_wgslsmith_dot_vec3_u32(arg_2, vec3<u32>(0u, 4294967295u, arg_1.b.e.a)), _wgslsmith_f_op_f32(arg_1.a.x + 698f), min(vec3<u32>(1643u, 0u, 14664u), arg_2), func_2(Struct_2(arg_3.d.xy, 1u, arg_1.b.e.c.x, vec3<bool>(arg_1.b.d.x, global1.d, arg_0), arg_3.e), arg_2, arg_1, vec2<u32>(1u, global2.a))), ~(~0u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-422f, arg_1.a.x)), 1000f)))) * _wgslsmith_div_vec3_f32(vec3<f32>(532f, -382f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) - _wgslsmith_f_op_f32(f32(-1f) * -655f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, arg_1.a.x, arg_1.a.x)), vec3<f32>(arg_1.a.x, -545f, -478f), select(vec3<bool>(global1.d, false, arg_0), vec3<bool>(false, global1.d, global1.d), arg_1.b.d))))));
    let var_2 = Struct_1(~_wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(var_0.zy, var_0.zz, vec2<u32>(6879u, 4294967295u)), vec2<u32>(global0.a, countOneBits(0u))), func_2(Struct_2(arg_3.a, 9066u, -u_input.c.x | reverseBits(arg_1.b.e.b), !vec3<bool>(true, false, arg_3.e.d), Struct_1(arg_3.e.a, 4891i, min(global0.c, arg_1.b.e.c), true)), vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.x, 0u), vec2<u32>(0u, global0.a)), firstLeadingBit(abs(arg_3.e.a)), abs(arg_1.b.e.a)), arg_1, ~((var_0.yy | vec2<u32>(global1.a, 4294967295u)) | firstLeadingBit(vec2<u32>(0u, 0u)))).a.x, vec2<i32>(arg_1.b.c, func_2(arg_3, arg_2, Struct_3(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(143f, var_1.x))), arg_1.b, arg_3.e.a), arg_2.yz).a.x), !(!(!any(arg_1.b.a))));
    let var_3 = global1.d;
    return func_2(Struct_2(!select(vec2<bool>(arg_0, arg_1.b.e.d), arg_1.b.a, true), 20153u, 34650i, vec3<bool>(any(!vec4<bool>(var_2.d, global1.d, arg_0, arg_1.b.e.d)), arg_1.b.e.d, global2.d), var_2), vec3<u32>(global2.a, firstLeadingBit(~arg_2.x), _wgslsmith_clamp_u32(global0.a, var_0.x, ~(~var_0.x))), Struct_3(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), arg_1.a.x), _wgslsmith_f_op_vec2_f32(-arg_1.a))), Struct_2(!(!arg_1.b.a), min(70674u, countOneBits(38025u)), var_2.c.x, select(vec3<bool>(false, arg_1.b.a.x, false), select(arg_1.b.d, arg_1.b.d, global0.d), select(arg_3.d, vec3<bool>(true, arg_3.a.x, true), arg_3.d)), arg_3.e), global1.a), var_0.zz).a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec2<bool>(all(!(!vec4<bool>(global0.d, true, false, global2.d))), true), 1u, ~(-(max(40949i, 2147483647i) << (global2.a % 32u))), vec3<bool>(global2.d, false, false), Struct_1(2549u, func_1(false, Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(998f, 113f) + vec2<f32>(734f, -614f)), Struct_2(vec2<bool>(global0.d, global0.d), global1.a, global1.b, vec3<bool>(false, true, false), Struct_1(global2.a, -33353i, global0.c, false)), 25220u), abs(vec3<u32>(51191u, 8876u, global0.a) | vec3<u32>(global1.a, global2.a, 35944u)), Struct_2(!vec2<bool>(global1.d, global2.d), _wgslsmith_sub_u32(4294967295u, global0.a), -2147483647i, !vec3<bool>(global0.d, false, false), Struct_1(global2.a, u_input.d.x, vec2<i32>(2147483647i, 0i), global1.d))), _wgslsmith_mod_vec2_i32(-_wgslsmith_add_vec2_i32(vec2<i32>(-1462i, global0.c.x), global1.c), firstLeadingBit(-vec2<i32>(global1.b, u_input.c.x))), global0.d));
    let var_1 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(round(-1625f)), _wgslsmith_f_op_f32(-368f + _wgslsmith_f_op_f32(-1f))), Struct_2(vec2<bool>(any(select(vec4<bool>(global1.d, true, global0.d, false), vec4<bool>(true, global0.d, true, false), vec4<bool>(global2.d, var_0.d.x, true, true))), true), ~(~1u), -2147483647i, select(!var_0.d, !select(vec3<bool>(false, false, false), vec3<bool>(global1.d, true, var_0.a.x), false), !var_0.d), Struct_1(global1.a, _wgslsmith_clamp_i32(global0.c.x ^ u_input.c.x, i32(-1i) * -1i, _wgslsmith_mod_i32(-8483i, global1.b)), vec2<i32>(var_0.e.b, global0.c.x), global1.d)), ~(~reverseBits(global1.a & global1.a)));
    global1 = Struct_1(_wgslsmith_div_u32(0u, select(_wgslsmith_dot_vec3_u32(~vec3<u32>(62731u, 4294967295u, global2.a), ~vec3<u32>(22257u, 1u, 4294967295u)), global1.a, all(!vec4<bool>(var_1.b.a.x, true, true, var_1.b.a.x)))), select(0i, (i32(-1i) * -var_1.b.e.c.x) & _wgslsmith_sub_i32(global0.b, 0i), global1.d), var_1.b.e.c << ((countOneBits(vec2<u32>(global2.a, global0.a)) >> (~countOneBits(vec2<u32>(global1.a, var_1.b.b)) % vec2<u32>(32u))) % vec2<u32>(32u)), global2.d);
    global0 = Struct_1(~7477u, global0.b, firstLeadingBit(~global0.c), (1u | ~(~var_0.b)) < var_1.c);
    global1 = Struct_1(global1.a, global0.c.x, var_1.b.e.c, var_1.b.d.x);
    let var_2 = global2.d;
    var_0 = Struct_2(select(vec2<bool>(!any(vec3<bool>(true, true, global1.d)), var_0.a.x), !select(vec2<bool>(true, global2.d), select(var_1.b.d.yx, vec2<bool>(true, global1.d), var_1.b.a), !var_1.b.a), global2.d), ~(~78259u), _wgslsmith_mult_i32(abs(2147483647i) | _wgslsmith_sub_i32(~(-27187i), global0.c.x), -abs(var_1.b.c)), !vec3<bool>(true, false, any(var_1.b.d)), var_0.e);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~reverseBits(vec2<u32>(37678u, 0u)))), -vec4<i32>(-2147483647i, _wgslsmith_add_i32(global2.c.x, 0i), 1i, 1i));
}

