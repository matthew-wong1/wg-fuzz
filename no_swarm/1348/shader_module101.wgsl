struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
    c: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_5 {
    a: vec4<i32>,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18>;

var<private> global1: Struct_5 = Struct_5(vec4<i32>(-16975i, -1i, 2147483647i, -6342i), false, Struct_1(vec2<u32>(1u, 1u), vec2<u32>(76348u, 1u), false, vec4<i32>(-1i, -15525i, -1i, -31568i)));

var<private> global2: Struct_5 = Struct_5(vec4<i32>(1i, i32(-2147483648), 2147483647i, 4524i), false, Struct_1(vec2<u32>(1u, 0u), vec2<u32>(13380u, 21697u), true, vec4<i32>(1i, -2030i, 46646i, 25152i)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec3<u32>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(-arg_1.c.a);
    global0 = array<Struct_3, 18>();
    global1 = Struct_5(reverseBits(global1.c.d), all(select(!vec4<bool>(global1.b, arg_1.b.c, false, arg_1.b.c), select(vec4<bool>(global1.b, global1.c.c, false, global1.c.c), vec4<bool>(true, arg_1.b.c, false, true), vec4<bool>(true, global2.b, false, false)), select(vec4<bool>(false, false, false, true), !vec4<bool>(true, arg_1.b.c, global1.c.c, arg_1.b.c), !vec4<bool>(arg_1.b.c, global1.b, arg_1.b.c, true)))), Struct_1(arg_1.b.a, ~abs(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_2.x, arg_1.a.c), global1.c.a)), global2.b, global2.c.d));
    global0 = array<Struct_3, 18>();
    var var_1 = arg_1;
    return vec4<i32>(u_input.a, _wgslsmith_add_i32(_wgslsmith_clamp_i32(-firstLeadingBit(-31747i), max(global1.a.x, u_input.a) << (~global1.c.b.x % 32u), -25753i), abs(_wgslsmith_dot_vec4_i32(arg_1.b.d, _wgslsmith_div_vec4_i32(vec4<i32>(global1.c.d.x, global1.a.x, arg_1.b.d.x, arg_1.a.a.x), var_1.b.d)))), 2147483647i, abs(global1.c.d.x));
}

fn func_4(arg_0: Struct_5, arg_1: u32, arg_2: vec4<f32>) -> vec3<bool> {
    var var_0 = arg_0.b;
    var var_1 = global2.a.x;
    var var_2 = Struct_5(select(global2.c.d << (firstLeadingBit(select(vec4<u32>(4294967295u, global2.c.a.x, u_input.c, global2.c.b.x), vec4<u32>(26356u, 4294967295u, u_input.c, u_input.c), vec4<bool>(arg_0.b, global2.c.c, global2.c.c, global2.c.c))) % vec4<u32>(32u)), ~arg_0.a, any(select(!vec2<bool>(arg_0.c.c, false), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, global2.b), vec2<bool>(false, false))))), (~firstLeadingBit(u_input.b) != (30330u | ~u_input.b)) || ((all(vec3<bool>(global2.c.c, false, true)) || arg_0.b) != any(select(vec2<bool>(true, global1.c.c), vec2<bool>(true, arg_0.c.c), arg_0.b))), arg_0.c);
    let var_3 = vec2<i32>(0i, -(reverseBits(global1.a.x) >> (52680u % 32u)));
    var var_4 = arg_0;
    return vec3<bool>(!any(!(!vec2<bool>(global2.c.c, true))), true, global2.b);
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_4(Struct_3(global1.c.d.xw, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1373f, -1000f)))), ~u_input.c), Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 1u) ^ global2.c.a, vec2<u32>(4294967295u, 35588u) | global2.c.b, vec2<u32>(u_input.c, 4294967295u)) >> (vec2<u32>(~global2.c.b.x, min(global2.c.a.x, 0u)) % vec2<u32>(32u)), ~global1.c.a << (~_wgslsmith_add_vec2_u32(vec2<u32>(global2.c.a.x, 87389u), vec2<u32>(1u, 71584u)) % vec2<u32>(32u)), !any(vec2<bool>(true, true)), vec4<i32>(~2147483647i, i32(-1i) * -11890i, 19444i, 13092i)), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(190f, 857f)) - _wgslsmith_f_op_f32(round(-426f)))));
    var var_1 = !func_4(Struct_5(func_3(var_0.c, var_0, ~vec3<u32>(43963u, var_0.a.c, 45223u)), var_0.b.d.x > global2.c.d.x, Struct_1(select(global1.c.a, global1.c.b, vec2<bool>(false, false)), global1.c.a, var_0.b.c, vec4<i32>(1i, 26788i, var_0.a.a.x, 33091i))), _wgslsmith_add_u32(global1.c.b.x, 1u), vec4<f32>(-123f, 2057f, 323f, -350f));
    let var_2 = true | global2.c.c;
    let var_3 = var_2;
    global2 = Struct_5(min(~_wgslsmith_div_vec4_i32(-vec4<i32>(40441i, 0i, -1i, -28857i), var_0.b.d >> (vec4<u32>(var_0.a.c, u_input.b, 1u, 58102u) % vec4<u32>(32u))), min(global1.c.d, _wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(276i, 0i, 0i, u_input.a)), abs(global2.c.d), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, global1.c.d.x, 13517i, -255i), vec4<i32>(2147483647i, -29501i, 35621i, -2147483647i))))), true, global2.c);
    return var_0.a;
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_4) -> f32 {
    let var_0 = vec2<u32>(_wgslsmith_mult_u32(abs(global2.c.a.x), 8848u), 0u);
    let var_1 = _wgslsmith_f_op_f32(round(-1000f));
    global1 = Struct_5(~global1.c.d, all(func_4(Struct_5(firstTrailingBit(vec4<i32>(47749i, 2147483647i, 23910i, global1.c.d.x)), !arg_1.b.c, Struct_1(vec2<u32>(0u, var_0.x), global2.c.b, false, arg_1.b.d)), select(_wgslsmith_mult_u32(arg_1.b.b.x, u_input.c), _wgslsmith_dot_vec2_u32(arg_1.b.a, arg_1.b.a), true), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1, arg_0.x, arg_1.a.b, -643f)))).xx), Struct_1(~countOneBits(select(global2.c.b, global2.c.a, vec2<bool>(global1.b, global1.c.c))), abs(reverseBits(firstTrailingBit(global1.c.b))), func_4(Struct_5(vec4<i32>(-55615i, 2147483647i, global2.c.d.x, 1i), all(vec4<bool>(false, true, global2.b, false)), arg_1.b), arg_1.a.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-539f, 430f, var_1, arg_0.x)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.c.a, 872f, arg_1.c.a, arg_0.x))))).x, vec4<i32>(-2147483647i, arg_1.a.a.x | 22371i, global2.a.x << (1u % 32u), 0i)));
    let var_2 = arg_1.b.c;
    var var_3 = !(!(!select(!vec2<bool>(true, global2.b), vec2<bool>(false, arg_1.b.c), !var_2)));
    return 417f;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: vec4<i32>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(638f - -104f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(vec3<f32>(_wgslsmith_f_op_f32(abs(809f)), _wgslsmith_f_op_f32(f32(-1f) * -2004f), _wgslsmith_f_op_f32(round(1000f))), Struct_4(func_2(), Struct_1(global1.c.a, global1.c.a, false, vec4<i32>(-2147483647i, global1.a.x, -5279i, 16881i)), Struct_2(-1000f)))) + -1721f), false));
    var var_1 = Struct_5(vec4<i32>(-arg_0.x, ~u_input.d.x, 1i, ~(~global2.c.d.x)), true, Struct_1(vec2<u32>(min(firstLeadingBit(global2.c.b.x), abs(37881u)), 4550u), global2.c.b, false, _wgslsmith_sub_vec4_i32(vec4<i32>(~(-1i), _wgslsmith_mult_i32(arg_0.x, global1.a.x), 1i, -40211i), _wgslsmith_mod_vec4_i32(~global2.c.d, global2.a))));
    let var_2 = Struct_4(Struct_3(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(197f))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-122f * 443f), _wgslsmith_f_op_f32(f32(-1f) * -1465f), global1.b))), arg_1.x), global1.c, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -784f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-562f, -1000f))))));
    global2 = Struct_5(-vec4<i32>(_wgslsmith_add_i32(-19889i >> (arg_1.x % 32u), min(var_1.a.x, global2.a.x)), -38837i, _wgslsmith_mult_i32(_wgslsmith_add_i32(arg_0.x, 0i), 1i), reverseBits(7996i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.a.b))) >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -414f), var_2.c.a)), Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_div_u32(0u, 4294967295u), global1.c.b.x), vec2<u32>(31230u, firstTrailingBit(14362u)), vec2<u32>(_wgslsmith_mult_u32(1u, global1.c.a.x), _wgslsmith_div_u32(arg_1.x, global1.c.a.x))), ~vec2<u32>(global1.c.a.x, ~0u), true, vec4<i32>(abs(u_input.d.x), -arg_2.x >> (_wgslsmith_div_u32(var_1.c.a.x, global1.c.a.x) % 32u), abs(min(var_1.c.d.x, -11729i)), ~(-var_2.b.d.x))));
    var var_3 = Struct_5(abs(global1.c.d), true, Struct_1(max(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.x, 0u), select(global1.c.a, vec2<u32>(0u, global2.c.a.x), false)), reverseBits(vec2<u32>(0u, var_1.c.b.x)) & ~var_1.c.b), global1.c.a, all(!(!vec2<bool>(var_2.b.c, var_1.b))), select(~(-global2.a), vec4<i32>(-2147483647i, var_1.a.x, -global1.c.d.x, 1i), select(!vec4<bool>(var_1.c.c, true, global2.c.c, global2.c.c), vec4<bool>(var_2.b.c, global1.c.c, false, false), true | global1.c.c))));
    return Struct_4(Struct_3(vec2<i32>(-_wgslsmith_div_i32(7842i, global1.c.d.x), u_input.d.x), 670f, global2.c.a.x), Struct_1(global2.c.b & vec2<u32>(~46350u, ~global1.c.b.x), var_3.c.a, (_wgslsmith_dot_vec4_i32(global1.c.d, vec4<i32>(arg_2.x, arg_2.x, var_3.c.d.x, global2.c.d.x)) > -var_1.c.d.x) | true, _wgslsmith_clamp_vec4_i32(reverseBits(var_2.b.d), var_2.b.d, _wgslsmith_mult_vec4_i32(u_input.d & global2.c.d, var_2.b.d))), Struct_2(var_2.c.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(0u, global2.c.b.x, 119763u, 1u);
    global0 = array<Struct_3, 18>();
    var var_1 = func_1(-(~(~_wgslsmith_div_vec2_i32(vec2<i32>(-96006i, u_input.d.x), global2.a.xy))), _wgslsmith_clamp_vec2_u32(firstLeadingBit(_wgslsmith_sub_vec2_u32(var_0.ww, firstLeadingBit(global1.c.a))), vec2<u32>(~(var_0.x & 1u), 28691u >> (_wgslsmith_mod_u32(18398u, u_input.c) % 32u)), ~(var_0.yw << (_wgslsmith_mult_vec2_u32(global1.c.a, vec2<u32>(var_0.x, 60031u)) % vec2<u32>(32u)))), vec4<i32>(1i, ~firstLeadingBit(global2.a.x), _wgslsmith_mod_i32(1i, u_input.d.x), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global1.a.x, -2147483647i, global2.c.d.x, u_input.a), vec4<i32>(2147483647i, u_input.d.x, 56684i, global1.a.x)), _wgslsmith_mod_vec4_i32(global2.c.d, vec4<i32>(u_input.a, 1i, u_input.a, -2147483647i)))) & vec4<i32>(firstLeadingBit(global2.a.x), -2147483647i, -12953i & (global1.c.d.x >> (global2.c.a.x % 32u)), 1i));
    global1 = Struct_5(select(vec4<i32>(-1i, u_input.a, ~40700i, u_input.d.x) << (_wgslsmith_mult_vec4_u32(~var_0, var_0) % vec4<u32>(32u)), global2.a, select(!(!vec4<bool>(var_1.b.c, global1.c.c, global2.c.c, var_1.b.c)), select(vec4<bool>(true, false, var_1.b.c, global1.c.c), vec4<bool>(var_1.b.c, false, false, var_1.b.c), vec4<bool>(global1.b, global1.c.c, global2.c.c, var_1.b.c)), true || global1.c.c)), global2.b & true, func_1(var_1.a.a, ~abs(var_1.b.b) | reverseBits(func_1(vec2<i32>(-17089i, var_1.a.a.x), global1.c.a, global1.c.d).b.a), -(~global1.a ^ vec4<i32>(global1.c.d.x, 2147483647i, 20946i, 59348i))).b);
    global0 = array<Struct_3, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(global2.a.yx, global2.c.a);
}

