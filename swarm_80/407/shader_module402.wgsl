struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: f32,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec4<f32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
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

var<private> global0: array<Struct_4, 8> = array<Struct_4, 8>(Struct_4(Struct_1(vec3<bool>(false, false, true), -21254i, 277f, vec2<f32>(-1117f, 164f), 0i), true, vec4<i32>(1i, 37577i, 40755i, 2816i), vec4<i32>(40826i, 2147483647i, -36594i, -1i), vec4<f32>(2350f, 836f, -2510f, -360f)), Struct_4(Struct_1(vec3<bool>(false, true, false), -60501i, -982f, vec2<f32>(1511f, -915f), -66262i), false, vec4<i32>(0i, i32(-2147483648), -31409i, 27996i), vec4<i32>(-66144i, 46064i, 16285i, -21811i), vec4<f32>(-210f, 1000f, 1000f, -1176f)), Struct_4(Struct_1(vec3<bool>(false, true, true), -1585i, 1158f, vec2<f32>(1840f, -261f), -1i), true, vec4<i32>(-43002i, 1i, i32(-2147483648), 48157i), vec4<i32>(i32(-2147483648), 6558i, 6078i, 0i), vec4<f32>(-1000f, 3553f, -800f, -542f)), Struct_4(Struct_1(vec3<bool>(false, false, false), 6084i, 502f, vec2<f32>(405f, -202f), 2147483647i), false, vec4<i32>(0i, -31267i, 1i, 63143i), vec4<i32>(i32(-2147483648), -929i, 2147483647i, -1i), vec4<f32>(-394f, 394f, -549f, 1000f)), Struct_4(Struct_1(vec3<bool>(true, true, false), 1i, -922f, vec2<f32>(-643f, -303f), -25463i), true, vec4<i32>(-1i, -26965i, 2147483647i, 1i), vec4<i32>(-1023i, -47705i, 11344i, 33780i), vec4<f32>(599f, 1360f, -111f, -710f)), Struct_4(Struct_1(vec3<bool>(false, false, true), -16661i, 920f, vec2<f32>(991f, -647f), 0i), false, vec4<i32>(0i, -8903i, -33266i, -12569i), vec4<i32>(19098i, 0i, -22556i, 3833i), vec4<f32>(1000f, -635f, -606f, 811f)), Struct_4(Struct_1(vec3<bool>(true, true, true), 1i, 368f, vec2<f32>(1122f, -433f), 25862i), true, vec4<i32>(51636i, 0i, 9388i, i32(-2147483648)), vec4<i32>(-1i, 2147483647i, 1i, 29366i), vec4<f32>(1014f, -826f, -369f, -1000f)), Struct_4(Struct_1(vec3<bool>(true, false, true), i32(-2147483648), 2475f, vec2<f32>(-1854f, -1000f), 1i), true, vec4<i32>(2147483647i, 37791i, -93918i, i32(-2147483648)), vec4<i32>(50464i, i32(-2147483648), 1i, 0i), vec4<f32>(1092f, 1393f, 883f, 202f)));

var<private> global1: array<vec4<u32>, 10> = array<vec4<u32>, 10>(vec4<u32>(0u, 39523u, 1u, 36435u), vec4<u32>(4294967295u, 21458u, 23125u, 4294967295u), vec4<u32>(12535u, 3524u, 1u, 85707u), vec4<u32>(0u, 0u, 0u, 35752u), vec4<u32>(4294967295u, 1u, 0u, 1u), vec4<u32>(1u, 0u, 59823u, 25033u), vec4<u32>(1582u, 4294967295u, 56224u, 0u), vec4<u32>(4294967295u, 53038u, 21612u, 1u), vec4<u32>(1u, 17899u, 4294967295u, 22641u), vec4<u32>(0u, 0u, 46043u, 1u));

var<private> global2: vec3<u32>;

var<private> global3: array<i32, 18>;

var<private> global4: vec3<f32> = vec3<f32>(-1611f, 1920f, -151f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_1(arg_0: Struct_1) -> i32 {
    global0 = array<Struct_4, 8>();
    global4 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global4.x, -219f, 146f)));
    var var_0 = _wgslsmith_f_op_f32(1936f * 1046f);
    let var_1 = arg_0.b;
    var var_2 = ~(~_wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(14908i, var_1)), -min(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(arg_0.b, -60319i))));
    return ~var_2.x;
}

fn func_3(arg_0: i32, arg_1: vec2<f32>, arg_2: vec3<bool>, arg_3: vec3<bool>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1367f - -431f)), -161f)));
    let var_1 = 1i;
    var var_2 = arg_2.yy;
    global0 = array<Struct_4, 8>();
    global2 = firstTrailingBit(vec3<u32>(~global2.x, countOneBits(u_input.d), ~_wgslsmith_clamp_u32(_wgslsmith_add_u32(19240u, global2.x), ~u_input.b.x, ~1u)));
    return firstTrailingBit(global2.x);
}

fn func_2(arg_0: Struct_4, arg_1: Struct_4) -> vec2<i32> {
    let var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), 8u)];
    var var_1 = ~(vec3<u32>(~global2.x, 52515u, ~4294967295u) >> (reverseBits(~vec3<u32>(4294967295u, u_input.c.x, u_input.a)) % vec3<u32>(32u)));
    global2 = vec3<u32>(countOneBits(_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.d, var_1.x), 4294967295u)), _wgslsmith_mod_u32(countOneBits(~(global2.x << (30799u % 32u))), u_input.d), _wgslsmith_clamp_u32(8044u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, func_3(var_0.a.b, vec2<f32>(global4.x, -2535f), vec3<bool>(false, true, true), var_0.a.a)), ~_wgslsmith_mod_vec2_u32(u_input.b.zx, global2.xz)), ~37960u));
    var_1 = firstTrailingBit(_wgslsmith_clamp_vec3_u32(~(u_input.c << (vec3<u32>(global2.x, 95002u, 1u) % vec3<u32>(32u))), abs(_wgslsmith_clamp_vec3_u32(u_input.c, vec3<u32>(u_input.c.x, u_input.c.x, 31421u), vec3<u32>(46993u, 4433u, 17146u))), u_input.b.xxz)) << (((u_input.c >> (_wgslsmith_sub_vec3_u32(~u_input.c, u_input.b.ywz | u_input.c) % vec3<u32>(32u))) ^ u_input.c) % vec3<u32>(32u));
    global4 = vec3<f32>(var_0.e.x, 1220f, var_0.a.d.x);
    return vec2<i32>(14624i, 16725i);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<f32>) -> u32 {
    global1 = array<vec4<u32>, 10>();
    var var_0 = arg_1.b;
    var var_1 = arg_2;
    var var_2 = global2.x;
    let var_3 = _wgslsmith_f_op_f32(-729f * _wgslsmith_f_op_f32(arg_2.c - -117f));
    return ~_wgslsmith_div_u32(~(~1u), u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2147483647i;
    var var_1 = ~vec2<u32>(reverseBits(15556u), _wgslsmith_dot_vec3_u32(reverseBits(u_input.c), ~u_input.c) >> (_wgslsmith_mult_u32(_wgslsmith_add_u32(global2.x, 4294967295u), 1u) % 32u));
    let var_2 = vec3<bool>(all(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, true)), vec2<bool>(select(false, false, true), true), select(true, any(vec4<bool>(true, true, true, true)), false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global4.x, 538f), 104f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)), !(_wgslsmith_mult_i32(1i, var_0 >> (var_1.x % 32u)) >= (func_1(Struct_1(vec3<bool>(true, false, true), global3[_wgslsmith_index_u32(0u, 18u)], global4.x, vec2<f32>(global4.x, -1000f), global3[_wgslsmith_index_u32(global2.x, 18u)])) >> (52998u % 32u))));
    var var_3 = ~1u <= (u_input.d & func_4(func_2(global0[_wgslsmith_index_u32(u_input.b.x, 8u)], global0[_wgslsmith_index_u32(~17745u, 8u)]), Struct_2(firstLeadingBit(31992u), Struct_1(vec3<bool>(var_2.x, var_2.x, true), 10346i, 961f, global4.zy, 2147483647i)), Struct_1(select(var_2, var_2, vec3<bool>(var_2.x, var_2.x, var_2.x)), -1i, global4.x, global4.zx, var_0), _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, global4.x, global4.x) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(675f, -275f, global4.x))))));
    var var_4 = !all(select(select(var_2.zy, select(vec2<bool>(var_2.x, var_2.x), var_2.yz, var_2.x), vec2<bool>(true, true)), var_2.zz, select(vec2<bool>(var_2.x, var_2.x), select(var_2.zy, var_2.zx, false), var_2.x)));
    global3 = array<i32, 18>();
    global2 = ~(u_input.b.wxz & firstLeadingBit(u_input.b.xxx));
    let var_5 = Struct_4(Struct_1(select(!select(vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(var_2.x, false, var_2.x), var_2.x), var_2, vec3<bool>(any(vec3<bool>(false, var_2.x, false)), global4.x != global4.x, var_2.x)), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(var_1.x, 76434u) ^ 35580u, 18u)], global4.x, vec2<f32>(_wgslsmith_f_op_f32(-1000f + -794f), global4.x), _wgslsmith_mult_i32(-68878i, ~(-7113i))), !var_2.x, vec4<i32>(~_wgslsmith_dot_vec4_i32(-vec4<i32>(-49087i, 0i, 16159i, global3[_wgslsmith_index_u32(var_1.x, 18u)]), vec4<i32>(var_0, var_0, -2147483647i, global3[_wgslsmith_index_u32(global2.x, 18u)]) << (u_input.b % vec4<u32>(32u))), var_0, ~(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global2.zz, vec2<u32>(u_input.c.x, 17525u)), 18u)] >> (~u_input.d % 32u)), _wgslsmith_mult_i32(reverseBits(-global3[_wgslsmith_index_u32(4294967295u, 18u)]), 55083i)), countOneBits(abs(~vec4<i32>(-79435i, 36688i, global3[_wgslsmith_index_u32(82851u, 18u)], 0i))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-268f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-620f, global4.x)) - _wgslsmith_f_op_f32(f32(-1f) * -538f)), global4.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(279f - 1004f) * _wgslsmith_f_op_f32(sign(global4.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(280f, 172f, 772f, -1241f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-617f, -1303f, 1027f, 584f)))))));
    let var_6 = Struct_1(vec3<bool>(false | (global2.x < ~4294967295u), !all(vec3<bool>(true, var_2.x, var_5.a.a.x)), var_5.a.a.x), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~(~u_input.b.zw)), abs(u_input.b.yy) ^ ~_wgslsmith_mult_vec2_u32(u_input.c.yx, global2.yy)), 18u)], global4.x, vec2<f32>(_wgslsmith_f_op_f32(var_5.e.x + global4.x), var_5.a.d.x), global3[_wgslsmith_index_u32(~firstTrailingBit(~var_1.x), 18u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(var_5.e)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(494f, var_6.d.x, 2044f, -123f))))));
}

