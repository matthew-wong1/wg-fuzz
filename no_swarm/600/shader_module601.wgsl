struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_4 = Struct_4(vec3<u32>(4294967295u, 39973u, 88415u), 27257i);

var<private> global2: array<vec3<bool>, 24>;

var<private> global3: i32;

var<private> global4: Struct_2;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: u32) -> i32 {
    global3 = _wgslsmith_add_i32(2147483647i, -5784i);
    global1 = Struct_4(global1.a, _wgslsmith_mod_i32(firstTrailingBit(global1.b) << (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), ~vec2<u32>(4294967295u, global1.a.x)) % 32u), -(~(-global4.b.c.x))));
    var var_0 = Struct_5(_wgslsmith_div_f32(-965f, -1850f));
    global3 = global1.b;
    let var_1 = vec2<u32>(22604u, 1u);
    return _wgslsmith_mult_i32(-_wgslsmith_mod_i32(_wgslsmith_div_i32(arg_0.x, 1i), global4.e.c.x), -1i);
}

fn func_2() -> Struct_4 {
    global3 = func_3(global4.b.c.zy, 0u);
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-761f))), Struct_1(any(!vec2<bool>(global4.b.a, false)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.a.x, 0u, global4.e.b.x, 4294967295u), global4.b.b, global4.e.b), _wgslsmith_mult_vec4_i32(global4.b.c, select(vec4<i32>(global1.b, global4.c.c.x, 0i, 42603i), vec4<i32>(-2147483647i, global1.b, global4.b.c.x, global1.b), false))), global4.e, -258f, Struct_1(any(global2[_wgslsmith_index_u32(abs(global1.a.x), 24u)]), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(90790u, 1u, u_input.b.x), vec3<u32>(4294967295u, global4.c.b.x, global4.c.b.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1.a.x, global1.a.x, global4.c.b.x), global4.b.b), u_input.a.x ^ 48192u, u_input.a.x), _wgslsmith_clamp_vec4_i32(global4.b.c, vec4<i32>(global1.b, global1.b, global1.b, 25512i), max(vec4<i32>(global4.e.c.x, global1.b, global1.b, -2694i), global4.b.c)))));
    var var_1 = global4.c.c;
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-444f, -2735f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global4.d * var_0.a.d)))))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1433f)));
    return Struct_4(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(global4.e.b.yzx, vec3<u32>(global1.a.x, global4.c.b.x << (9448u % 32u), var_0.a.c.b.x)), firstTrailingBit(~global4.e.b.wwz)), global1.b);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_5, arg_2: Struct_4) -> Struct_1 {
    var var_0 = global4.c.a;
    let var_1 = 1u;
    let var_2 = Struct_1((!(!global4.b.a) && global4.b.a) | global4.c.a, ~((~global4.b.b | ~global4.b.b) >> (max(firstLeadingBit(vec4<u32>(var_1, arg_0.a.x, arg_0.a.x, var_1)), global4.e.b) % vec4<u32>(32u))), ~(~(vec4<i32>(global1.b, global4.c.c.x, 34245i, 1i) & (global4.c.c & global4.c.c))));
    let var_3 = Struct_3(Struct_2(521f, Struct_1(var_2.a || !global4.b.a, select(firstLeadingBit(vec4<u32>(41294u, 11563u, 4294967295u, arg_2.a.x)), _wgslsmith_mult_vec4_u32(global4.e.b, var_2.b), global4.c.a), select(select(vec4<i32>(global4.e.c.x, var_2.c.x, -1i, -40181i), vec4<i32>(global1.b, 29747i, 16593i, 8372i), global4.b.a), global4.e.c, select(vec4<bool>(var_2.a, true, var_2.a, true), vec4<bool>(var_2.a, var_2.a, global4.c.a, var_2.a), global4.b.a))), Struct_1(!var_2.a | true, global4.c.b, vec4<i32>(2147483647i, func_2().b, var_2.c.x, 1i)), global4.d, Struct_1(~var_2.b.x > arg_2.a.x, vec4<u32>(9135u, 6165u, 1u, 0u) >> (~vec4<u32>(var_2.b.x, global4.b.b.x, global4.c.b.x, u_input.b.x) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_sub_i32(var_2.c.x, global4.b.c.x), func_2().b, _wgslsmith_add_i32(0i, -13571i), ~1i))));
    let var_4 = !((all(vec2<bool>(var_3.a.e.a, var_2.a)) && var_3.a.c.a) & true) || true;
    return var_2;
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_1(global4.e.a, ~global4.e.b << (~(global4.c.b | global4.b.b) % vec4<u32>(32u)), global4.b.c);
    global2 = array<vec3<bool>, 24>();
    let var_1 = func_4(func_2(), Struct_5(_wgslsmith_f_op_f32(global4.d - global4.a)), func_2());
    global3 = -48328i;
    global2 = array<vec3<bool>, 24>();
    return Struct_2(-489f, func_4(Struct_4(global1.a ^ (vec3<u32>(0u, 0u, var_0.b.x) & vec3<u32>(global1.a.x, u_input.b.x, global4.c.b.x)), -(var_1.c.x ^ -13677i)), Struct_5(_wgslsmith_f_op_f32(-global4.d)), func_2()), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(global4.d)))) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -538f), 1098f), vec4<u32>(_wgslsmith_mult_u32(~var_1.b.x, 1u), ~(~global1.a.x), ~0u, global1.a.x), var_1.c), global4.d, Struct_1(all(!select(vec2<bool>(true, var_0.a), vec2<bool>(true, var_1.a), vec2<bool>(true, var_1.a))), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(var_1.b, var_1.b, var_1.b), var_1.b), global4.c.b), firstTrailingBit(vec4<i32>(~var_1.c.x, _wgslsmith_add_i32(7209i, 1i), _wgslsmith_sub_i32(-1i, -27517i), 1i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(global4.c.c.wyx, global4.c.c.zxy, true);
    var var_1 = func_1();
    var var_2 = 1428f;
    let var_3 = -50428i;
    var var_4 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(502f, var_1.a), vec2<f32>(global4.a, global4.a), vec2<bool>(var_1.c.a, global4.c.a)))))) - vec2<f32>(-753f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(global4.a)), global4.a))))));
    global2 = array<vec3<bool>, 24>();
    var var_5 = !all(select(!vec2<bool>(var_1.e.a, var_1.b.a), select(select(vec2<bool>(true, false), vec2<bool>(global4.b.a, true), var_1.b.a), vec2<bool>(true, true), !var_1.e.a), var_1.b.a));
    let var_6 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(454f, -1635f, _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) + var_1.d), var_1.c.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.d)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-142f, global4.d) - global4.a)))));
    let var_7 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1574f + var_6.x), _wgslsmith_div_f32(-1022f, -350f)) + _wgslsmith_f_op_f32(var_6.x * _wgslsmith_f_op_f32(-1713f * var_4.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(var_1.b.c, reverseBits((global4.c.c ^ vec4<i32>(-61676i, var_1.c.c.x, var_0.x, var_3)) & ~var_1.b.c)), _wgslsmith_mod_i32(~(-2147483647i), global4.c.c.x), _wgslsmith_f_op_f32(floor(global4.d)));
}

