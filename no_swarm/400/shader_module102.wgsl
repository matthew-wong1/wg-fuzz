struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec4<i32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 15>;

var<private> global1: array<Struct_3, 1>;

var<private> global2: array<vec3<f32>, 21> = array<vec3<f32>, 21>(vec3<f32>(-2266f, -597f, 801f), vec3<f32>(1102f, 539f, -920f), vec3<f32>(-971f, 1000f, 699f), vec3<f32>(475f, 638f, -1607f), vec3<f32>(913f, 1444f, 1000f), vec3<f32>(212f, 1854f, -597f), vec3<f32>(-194f, 955f, 201f), vec3<f32>(-969f, -364f, 2110f), vec3<f32>(-484f, 203f, -625f), vec3<f32>(-404f, -644f, 819f), vec3<f32>(182f, -129f, 987f), vec3<f32>(1531f, 472f, 2532f), vec3<f32>(1859f, -1304f, -843f), vec3<f32>(1503f, -277f, 528f), vec3<f32>(155f, -331f, -1209f), vec3<f32>(540f, 2207f, -465f), vec3<f32>(1006f, -561f, -234f), vec3<f32>(-537f, -1013f, -351f), vec3<f32>(700f, -484f, 105f), vec3<f32>(-177f, 402f, -1674f), vec3<f32>(-1229f, 699f, 1754f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec3<bool>, arg_3: Struct_3) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-arg_3.a.zz);
    global2 = array<vec3<f32>, 21>();
    global1 = array<Struct_3, 1>();
    return u_input.d;
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_3) -> u32 {
    global2 = array<vec3<f32>, 21>();
    let var_0 = Struct_2(_wgslsmith_mod_i32(func_3(Struct_1(any(vec2<bool>(false, false)), vec2<f32>(arg_0.x, arg_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b, arg_1.a.x, 311f)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d, u_input.d, u_input.b, u_input.b), vec4<i32>(u_input.b, 1i, u_input.b, -2147483647i)), vec2<bool>(true, true)), ~vec3<i32>(4289i, u_input.d, u_input.d) & ~vec3<i32>(-17018i, u_input.b, u_input.d), select(vec3<bool>(true, false, false), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, false)), arg_1), max(_wgslsmith_mod_i32(-2147483647i, 2091i), select(u_input.d, 14822i, true)) >> (4294967295u % 32u)), true, Struct_1(!any(vec2<bool>(true, true)), vec2<f32>(_wgslsmith_f_op_f32(abs(arg_0.x)), 676f), arg_1.a.ywx, reverseBits(firstLeadingBit(-vec4<i32>(2147483647i, u_input.d, u_input.b, -20552i))), vec2<bool>(false, any(vec2<bool>(true, true)))));
    global1 = array<Struct_3, 1>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1009f, arg_1.b)));
    let var_2 = arg_1.a.x;
    return u_input.c.x;
}

fn func_1() -> f32 {
    global0 = array<vec2<f32>, 15>();
    let var_0 = !(!vec4<bool>(true, false, select(all(vec4<bool>(false, false, true, false)), true, true), any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), true))));
    global2 = array<vec3<f32>, 21>();
    var var_1 = u_input.a.x;
    var_1 = ~_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.c.x, _wgslsmith_sub_u32(51490u, u_input.a.x))), _wgslsmith_div_vec2_u32(vec2<u32>(func_2(global2[_wgslsmith_index_u32(11176u, 21u)], global1[_wgslsmith_index_u32(0u, 1u)]), u_input.c.x), vec2<u32>(u_input.c.x, ~0u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -269f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-112f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -237f)) + _wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_f32(floor(-2218f)), -410f, -388f);
    let var_1 = global1[_wgslsmith_index_u32(4294967295u, 1u)];
    var var_2 = var_0.x;
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.a.x * -1379f))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1260f, var_1.a.x), _wgslsmith_f_op_f32(step(var_0.x, 1000f)))), -1202f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))) + var_1.a), var_0.x);
    global0 = array<vec2<f32>, 15>();
    let var_4 = Struct_1(any(vec2<bool>(any(vec2<bool>(true, true)), select(true, true, any(vec3<bool>(false, false, true))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.a.wy * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.b, var_0.x)) - _wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(2852u, 15u)] + var_0.wx)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.b))), 516f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(481f)) + 286f))), vec4<i32>(u_input.d, -1i, _wgslsmith_clamp_i32(select(max(2670i, u_input.b), 22334i, all(vec4<bool>(false, false, true, true))), -u_input.b, _wgslsmith_mult_i32(u_input.d, countOneBits(u_input.b))), _wgslsmith_dot_vec4_i32(~(~vec4<i32>(-1i, -2147483647i, u_input.b, -2147483647i)), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 46469i, u_input.b, u_input.d), vec4<i32>(u_input.b, u_input.d, u_input.b, 5858i)))), vec2<bool>(false, false));
    var var_5 = select(vec4<u32>(29798u, u_input.c.x, u_input.c.x, u_input.c.x), ~min(vec4<u32>(_wgslsmith_mod_u32(16306u, u_input.a.x), 1u, ~1u, 0u), ~vec4<u32>(0u, 31429u, 13080u, u_input.a.x) << (~vec4<u32>(1u, u_input.c.x, 72397u, u_input.a.x) % vec4<u32>(32u))), true);
    let var_6 = _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(~countOneBits(u_input.a.x), ~(~var_5.x), u_input.c.x), firstLeadingBit(u_input.c)), vec3<u32>(_wgslsmith_clamp_u32(~u_input.a.x, 18981u, u_input.c.x), countOneBits(var_5.x), min(35360u, _wgslsmith_clamp_u32(u_input.c.x, var_5.x, var_5.x))) ^ vec3<u32>(1u, 4294967295u, u_input.a.x), _wgslsmith_mod_vec3_u32(vec3<u32>(13548u, ~var_5.x, countOneBits(var_5.x)), _wgslsmith_add_vec3_u32(firstTrailingBit(u_input.c), _wgslsmith_sub_vec3_u32(u_input.c, vec3<u32>(0u, 1u, var_5.x)))) >> (vec3<u32>(~countOneBits(58383u), firstLeadingBit(u_input.c.x), reverseBits(~4294967295u)) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) * -877f), _wgslsmith_f_op_f32(round(-1032f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.b, _wgslsmith_f_op_f32(trunc(-1431f))) * 1191f));
}

