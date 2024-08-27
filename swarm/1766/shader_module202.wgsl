struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec2<bool>,
    d: vec2<f32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 4> = array<Struct_5, 4>(Struct_5(Struct_3(Struct_2(false)), Struct_1(vec2<bool>(true, false), 4294967295u, vec2<bool>(true, true), vec2<f32>(-352f, 120f), vec4<i32>(-19586i, 0i, 12004i, -26323i)), vec3<u32>(4294967295u, 0u, 1u)), Struct_5(Struct_3(Struct_2(true)), Struct_1(vec2<bool>(true, false), 0u, vec2<bool>(true, false), vec2<f32>(298f, 1843f), vec4<i32>(1722i, 18951i, 1i, -1i)), vec3<u32>(1u, 61260u, 0u)), Struct_5(Struct_3(Struct_2(true)), Struct_1(vec2<bool>(true, false), 4294967295u, vec2<bool>(false, false), vec2<f32>(1718f, -701f), vec4<i32>(1i, 1i, 0i, -1i)), vec3<u32>(4294967295u, 1u, 35891u)), Struct_5(Struct_3(Struct_2(true)), Struct_1(vec2<bool>(false, false), 4294967295u, vec2<bool>(false, false), vec2<f32>(902f, 223f), vec4<i32>(-62560i, 2147483647i, -15208i, -1518i)), vec3<u32>(72187u, 6464u, 1u)));

var<private> global1: u32;

var<private> global2: Struct_4 = Struct_4(Struct_3(Struct_2(false)));

var<private> global3: array<vec2<u32>, 2>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: Struct_5, arg_2: Struct_2) -> vec4<bool> {
    let var_0 = arg_1.a;
    let var_1 = -_wgslsmith_mult_i32(arg_1.b.e.x, ~abs(_wgslsmith_mult_i32(arg_1.b.e.x, -28425i)));
    global1 = 44447u;
    var var_2 = -41418i;
    let var_3 = true;
    return vec4<bool>(any(arg_1.b.a), _wgslsmith_div_f32(arg_1.b.d.x, _wgslsmith_f_op_f32(f32(-1f) * -2152f)) == 266f, false, !arg_1.b.a.x);
}

fn func_2() -> i32 {
    let var_0 = Struct_4(global2.a);
    var var_1 = func_3(false, global0[_wgslsmith_index_u32(abs((reverseBits(u_input.b.x) << (1u % 32u)) ^ (0u | (u_input.b.x | u_input.e))), 4u)], global2.a.a);
    var var_2 = select(~max(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.e, 4294967295u, 57183u, 1u), vec4<u32>(25806u, 16474u, 40998u, u_input.c)), vec4<u32>(1u, u_input.e, 3073u, u_input.a) & vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.a)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(4391u, 0u, 0u, u_input.a), vec4<u32>(4294967295u, u_input.a, 0u, 24824u) & vec4<u32>(0u, 1u, 4294967295u, 1u), vec4<u32>(3289u, 1u, 34679u, 4294967295u)), !vec4<bool>(false, all(vec3<bool>(var_1.x, global2.a.a.a, true)), all(var_1.wyw), var_1.x)) << (min(reverseBits(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(u_input.b.x, 30237u, 1u, u_input.e), vec4<u32>(u_input.a, 4536u, 4294967295u, 127419u), vec4<bool>(false, false, true, global2.a.a.a)), ~vec4<u32>(43958u, 4294967295u, u_input.b.x, 11276u), firstLeadingBit(vec4<u32>(0u, u_input.a, u_input.a, u_input.b.x)))), vec4<u32>(1u, 1u, ~(~26783u), u_input.b.x)) % vec4<u32>(32u));
    let var_3 = -1815f != _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(937f, -1124f, true))));
    global1 = 77099u;
    return u_input.d;
}

fn func_1(arg_0: u32) -> f32 {
    var var_0 = ~func_2();
    let var_1 = select(!vec4<bool>(!all(vec2<bool>(global2.a.a.a, global2.a.a.a)), true, u_input.d <= (i32(-1i) * -46794i), !global2.a.a.a | (global2.a.a.a & global2.a.a.a)), vec4<bool>(global2.a.a.a, all(func_3(all(vec3<bool>(false, true, true)), Struct_5(global2.a, Struct_1(vec2<bool>(global2.a.a.a, global2.a.a.a), u_input.e, vec2<bool>(false, false), vec2<f32>(-895f, 589f), vec4<i32>(2534i, 2147483647i, -30982i, u_input.d)), vec3<u32>(arg_0, 4294967295u, 29221u)), Struct_2(false)).xzw), !all(func_3(false, Struct_5(global2.a, Struct_1(vec2<bool>(global2.a.a.a, false), u_input.c, vec2<bool>(true, global2.a.a.a), vec2<f32>(1000f, -392f), vec4<i32>(-10025i, u_input.d, 1i, u_input.d)), vec3<u32>(17267u, 4294967295u, arg_0)), Struct_2(true)).xw), false), global2.a.a.a);
    global3 = array<vec2<u32>, 2>();
    var var_2 = _wgslsmith_f_op_f32(sign(1694f));
    let var_3 = Struct_2(true);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1357f)) - _wgslsmith_f_op_f32(step(1000f, 930f))) + 586f) - -1565f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d;
    global0 = array<Struct_5, 4>();
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_dot_vec4_u32(vec4<u32>(38203u, u_input.c, 0u, u_input.c), ~vec4<u32>(4294967295u, 120695u, 4294967295u, u_input.a)))))));
    global3 = array<vec2<u32>, 2>();
    global0 = array<Struct_5, 4>();
    global3 = array<vec2<u32>, 2>();
    let var_2 = Struct_4(global2.a);
    let var_3 = 90381u;
    let var_4 = _wgslsmith_mult_u32(~max(u_input.e, u_input.c) | ~_wgslsmith_sub_u32(36383u, 0u), countOneBits(~(~32480u))) << (24341u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1324f), ~vec3<i32>(-20148i, 1i, i32(-1i) * -1i), _wgslsmith_add_vec3_u32(vec3<u32>((0u & u_input.e) >> (~0u % 32u), select(u_input.a, u_input.a, true), 1u), abs(~vec3<u32>(58556u, var_3, 29999u)) ^ vec3<u32>(u_input.a, abs(var_4), max(56363u, 70343u))), 12057i);
}

