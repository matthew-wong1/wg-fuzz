struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec2<bool>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: u32,
    e: vec4<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: u32,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: bool, arg_1: Struct_3) -> vec2<i32> {
    var var_0 = vec4<u32>(select(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(1u, 1u), 0u), ~(u_input.a.xz >> (vec2<u32>(61021u, 4294967295u) % vec2<u32>(32u)))), all(vec3<bool>(true, !arg_0, true))), arg_1.d, 4294967295u, ~4294967295u);
    let var_1 = 21440i;
    let var_2 = !(true || (_wgslsmith_div_f32(-759f, arg_1.a.c) <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1667f, arg_1.c.c))));
    var_0 = reverseBits(~firstTrailingBit(abs(u_input.b)));
    var var_3 = Struct_2(Struct_1(var_1, ~abs(~arg_1.a.b), arg_1.a.c, true, true), vec3<u32>(arg_1.d, arg_1.d, 0u), !arg_1.e.xw, firstTrailingBit(45471i), Struct_1(arg_1.a.a, select(arg_1.c.b, ~arg_1.a.b, !select(false, false, arg_0)), arg_1.a.c, false, false));
    return -abs(vec2<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(var_3.a.a, -57514i), -1i), ~_wgslsmith_mod_i32(var_3.e.a, var_3.a.b.x)));
}

fn func_2() -> i32 {
    let var_0 = Struct_3(global0[_wgslsmith_index_u32(~(~(~u_input.b.x)), 8u)], countOneBits(-1i), Struct_1(~1i, max(vec2<i32>(~(-8535i), -2147483647i), ~(~vec2<i32>(-6358i, -1i))), _wgslsmith_f_op_f32(-736f - -2493f), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), true), 7152u, vec4<bool>(true, false, false | select(true, false, false), true));
    let var_1 = Struct_1(_wgslsmith_sub_i32(-40776i, -var_0.a.b.x), firstTrailingBit(-(vec2<i32>(-1i) * -vec2<i32>(1i, var_0.b))), _wgslsmith_f_op_f32(abs(-721f)), any(!vec3<bool>(var_0.e.x, var_0.c.e || false, all(var_0.e.zw))), true);
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.c, var_0.a.c, 1138f))))) - vec3<f32>(-2517f, var_0.a.c, 1f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.c, 700f, var_1.c))) + _wgslsmith_div_vec3_f32(vec3<f32>(1293f, var_0.a.c, var_0.a.c), vec3<f32>(512f, 648f, -981f)))))));
    global0 = array<Struct_1, 8>();
    global0 = array<Struct_1, 8>();
    return _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(var_0.a.b, vec2<i32>(var_0.a.b.x, 0i)), -firstTrailingBit(vec2<i32>(-1i, -1i))), var_1.b >> (~(~vec2<u32>(u_input.a.x, 4294967295u)) % vec2<u32>(32u))), -(~reverseBits(vec2<i32>(-2147483647i, -2147483647i)) | ~func_3(var_0.e.x, Struct_3(Struct_1(var_0.a.a, vec2<i32>(-5161i, var_1.b.x), 419f, false, var_0.e.x), 2147483647i, Struct_1(var_1.b.x, var_0.a.b, var_1.c, true, false), 4294967295u, var_0.e))));
}

fn func_1(arg_0: vec4<f32>, arg_1: u32) -> vec4<u32> {
    let var_0 = Struct_2(Struct_1(~max(1i, reverseBits(15257i)), -vec2<i32>(func_2(), firstLeadingBit(1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-2836f))))), false, false), _wgslsmith_sub_vec3_u32(u_input.b.yzz, ~max(firstLeadingBit(vec3<u32>(u_input.a.x, arg_1, 1u)), u_input.b.xwy)), select(vec2<bool>(any(vec3<bool>(true, false, false)), any(vec2<bool>(true, true))), select(vec2<bool>(all(vec3<bool>(false, false, false)), all(vec2<bool>(false, false))), vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), false), true)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true))), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)))), select(-48091i, _wgslsmith_div_i32(abs(18088i), -44743i), true || any(vec2<bool>(false, false))), Struct_1(~(~abs(-1i)), vec2<i32>(select(0i, reverseBits(-19005i), true), 25195i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.x)))), any(select(vec3<bool>(false, false, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, false))), true));
    var var_1 = !(!select(!vec3<bool>(true, true, var_0.a.d), vec3<bool>(!var_0.c.x, var_0.a.d, false), !var_0.c.x));
    let var_2 = var_0.d;
    var var_3 = vec4<f32>(var_0.a.c, -608f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-194f)))), -288f);
    var var_4 = var_2;
    return firstTrailingBit(u_input.b);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: Struct_4) -> Struct_4 {
    var var_0 = vec2<i32>(_wgslsmith_add_i32(-8549i, countOneBits(arg_3.d.a.b.x)) << (min(27222u, firstTrailingBit(arg_1.x) & 0u) % 32u), -firstTrailingBit(1i));
    global0 = array<Struct_1, 8>();
    var var_1 = arg_0;
    var var_2 = _wgslsmith_clamp_u32(~arg_3.c, firstTrailingBit(arg_2.d), arg_2.d);
    global0 = array<Struct_1, 8>();
    return Struct_4(max(~_wgslsmith_div_vec4_u32(min(u_input.b, vec4<u32>(arg_1.x, 86390u, arg_3.d.b.x, 6u)), arg_3.a), ~arg_1), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_2.c.c, arg_3.d.e.c)) - _wgslsmith_f_op_vec3_f32(-arg_3.b)))) + _wgslsmith_f_op_vec3_f32(max(arg_3.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(556f, -1308f, arg_2.a.c)), _wgslsmith_div_vec3_f32(arg_3.b, vec3<f32>(arg_3.d.a.c, -1274f, 709f)))))), ~arg_1.x, arg_3.d, Struct_1(-var_0.x, arg_2.a.b, arg_3.d.a.c, select(false, arg_2.a.e, true), false));
}

fn func_5(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_4) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-801f, -589f), 1442f)));
    var var_1 = max(u_input.a, arg_2.d.b & abs(vec3<u32>(select(32703u, 2127u, arg_2.d.c.x), arg_2.c, firstTrailingBit(u_input.a.x))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1769f, 2065f, _wgslsmith_f_op_f32(floor(1342f)), 1f));
    global0 = array<Struct_1, 8>();
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + arg_2.b.x))))), 744f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.x * 1022f))))))), -923f);
    return ~vec3<u32>(_wgslsmith_clamp_u32(~(~var_1.x), 1u, arg_2.d.b.x), _wgslsmith_dot_vec3_u32(arg_2.d.b, vec3<u32>(var_1.x, _wgslsmith_mult_u32(u_input.b.x, u_input.b.x), ~1590u)), ~firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.b.ww, var_1.yx)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 8>();
    global0 = array<Struct_1, 8>();
    let var_0 = u_input.b.yy;
    let var_1 = Struct_2(global0[_wgslsmith_index_u32(~(~(~37156u & abs(u_input.b.x))), 8u)], abs(func_5(-abs(vec4<i32>(4410i, 2147483647i, 35958i, -46529i)), false, func_4(vec3<bool>(true, true, true), func_1(vec4<f32>(1292f, 725f, -663f, -247f), 21849u), Struct_3(global0[_wgslsmith_index_u32(1u, 8u)], 2147483647i, Struct_1(0i, vec2<i32>(-43462i, 0i), 1215f, true, false), 0u, vec4<bool>(true, false, true, true)), Struct_4(u_input.b, vec3<f32>(-1216f, -1085f, 1520f), var_0.x, Struct_2(Struct_1(-19510i, vec2<i32>(25679i, 0i), -541f, true, true), vec3<u32>(4294967295u, u_input.a.x, var_0.x), vec2<bool>(true, true), -1i, Struct_1(-44718i, vec2<i32>(-42371i, 45149i), -985f, true, true)), Struct_1(2147483647i, vec2<i32>(-1i, 0i), -1980f, true, true))))), vec2<bool>(true, true), ~_wgslsmith_dot_vec4_i32(min(-vec4<i32>(-2147483647i, -2147483647i, 40291i, -17068i), countOneBits(vec4<i32>(0i, -8768i, -12710i, -6661i))), vec4<i32>(1i, 1i, 1i, 1i)), Struct_1(~(~(~34371i)), min(vec2<i32>(1i, 1i), vec2<i32>(-3716i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -828i, -2147483647i, -35075i), vec4<i32>(7684i, 0i, 2361i, -1i)))), 1f, any(!func_4(vec3<bool>(true, false, false), u_input.b, Struct_3(global0[_wgslsmith_index_u32(u_input.b.x, 8u)], 0i, global0[_wgslsmith_index_u32(u_input.b.x, 8u)], u_input.a.x, vec4<bool>(false, false, false, false)), Struct_4(vec4<u32>(16353u, 46203u, var_0.x, 0u), vec3<f32>(603f, -1000f, 856f), 1u, Struct_2(global0[_wgslsmith_index_u32(4294967295u, 8u)], vec3<u32>(u_input.b.x, 1u, 4294967295u), vec2<bool>(false, false), -2147483647i, global0[_wgslsmith_index_u32(var_0.x, 8u)]), global0[_wgslsmith_index_u32(u_input.a.x, 8u)])).d.c), any(select(vec2<bool>(true, false), vec2<bool>(true, false), u_input.a.x >= 2045u))));
    var var_2 = Struct_1(~(var_1.e.b.x & var_1.a.b.x), vec2<i32>(-var_1.d, _wgslsmith_sub_i32(-abs(var_1.a.b.x), max(var_1.d, _wgslsmith_mult_i32(var_1.d, 1i)))), var_1.a.c, !(false | var_1.a.d), false);
    var var_3 = ~vec3<u32>(~37638u & var_0.x, min(var_1.b.x, 4294967295u) & firstLeadingBit(_wgslsmith_mod_u32(var_1.b.x, var_1.b.x)), ~u_input.a.x);
    var var_4 = vec2<i32>(-func_2(), 0i);
    var_2 = Struct_1(-76151i, -(-_wgslsmith_div_vec2_i32(var_1.e.b, var_1.a.b) >> (countOneBits(countOneBits(var_3.yy)) % vec2<u32>(32u))), -1000f, select(!func_4(!vec3<bool>(var_2.e, false, true), ~vec4<u32>(u_input.b.x, 19993u, 26130u, 1u), Struct_3(var_1.a, var_4.x, Struct_1(var_1.e.b.x, var_2.b, var_2.c, var_2.e, false), var_1.b.x, vec4<bool>(true, true, var_1.c.x, true)), Struct_4(vec4<u32>(var_3.x, var_0.x, 4294967295u, var_1.b.x), vec3<f32>(-332f, -596f, 1000f), 0u, var_1, var_1.a)).d.a.e, func_4(!select(vec3<bool>(var_1.a.d, var_1.c.x, true), vec3<bool>(var_1.e.e, var_1.a.d, false), vec3<bool>(false, false, var_2.d)), ~(~u_input.b), Struct_3(func_4(vec3<bool>(var_1.a.e, var_1.c.x, true), vec4<u32>(var_1.b.x, var_0.x, var_1.b.x, var_3.x), Struct_3(Struct_1(var_4.x, vec2<i32>(1i, var_4.x), -588f, false, true), var_2.b.x, Struct_1(45760i, var_1.e.b, 661f, false, false), var_3.x, vec4<bool>(var_1.e.e, false, var_1.e.e, true)), Struct_4(vec4<u32>(1u, u_input.a.x, var_3.x, 1u), vec3<f32>(var_1.a.c, 645f, var_1.a.c), var_3.x, Struct_2(global0[_wgslsmith_index_u32(1u, 8u)], vec3<u32>(var_1.b.x, var_1.b.x, 61019u), var_1.c, -9340i, Struct_1(2147483647i, var_1.a.b, -840f, var_2.d, var_2.e)), global0[_wgslsmith_index_u32(92854u, 8u)])).e, firstTrailingBit(var_4.x), Struct_1(15140i, vec2<i32>(-2147483647i, var_2.a), 605f, var_1.a.d, var_2.d), 1954u, vec4<bool>(false, var_2.d, true, var_1.c.x)), func_4(vec3<bool>(var_1.a.e, var_2.e, var_2.e), func_4(vec3<bool>(var_1.e.d, true, false), u_input.b, Struct_3(global0[_wgslsmith_index_u32(4294967295u, 8u)], var_2.a, Struct_1(13923i, var_2.b, var_2.c, false, var_1.a.e), 1u, vec4<bool>(false, false, var_1.e.e, var_2.d)), Struct_4(vec4<u32>(94707u, var_0.x, var_1.b.x, var_3.x), vec3<f32>(-107f, var_2.c, -1000f), 82440u, Struct_2(global0[_wgslsmith_index_u32(var_3.x, 8u)], u_input.a, var_1.c, var_2.a, Struct_1(0i, vec2<i32>(var_1.e.a, 1i), var_1.e.c, var_2.e, false)), global0[_wgslsmith_index_u32(u_input.b.x, 8u)])).a, Struct_3(Struct_1(var_2.b.x, var_1.e.b, var_1.a.c, var_1.c.x, var_1.e.e), var_2.a, Struct_1(var_4.x, vec2<i32>(var_1.a.a, 38410i), -689f, true, var_1.e.e), var_3.x, vec4<bool>(false, var_2.e, false, var_2.d)), func_4(vec3<bool>(false, true, var_1.c.x), vec4<u32>(u_input.b.x, var_3.x, 4294967295u, var_3.x), Struct_3(global0[_wgslsmith_index_u32(var_1.b.x, 8u)], var_4.x, var_1.e, 4294967295u, vec4<bool>(false, var_1.e.d, true, var_2.e)), Struct_4(u_input.b, vec3<f32>(var_2.c, -444f, var_2.c), var_0.x, Struct_2(global0[_wgslsmith_index_u32(0u, 8u)], vec3<u32>(24576u, var_3.x, var_0.x), var_1.c, 3308i, var_1.a), Struct_1(var_1.a.a, var_1.e.b, -113f, true, var_1.e.e))))).d.a.e, true), true);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-firstLeadingBit(~vec4<i32>(var_1.d, -32799i, 2147483647i, 1i))), ~(~var_4.x >> (~1606u % 32u)) ^ var_4.x, vec3<f32>(-1446f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.e.c) * var_1.a.c), var_2.c));
}

