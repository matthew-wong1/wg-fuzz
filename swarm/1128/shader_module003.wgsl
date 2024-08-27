struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool = true;

var<private> global2: array<vec3<bool>, 25>;

var<private> global3: array<vec3<i32>, 9> = array<vec3<i32>, 9>(vec3<i32>(14013i, 76857i, 11631i), vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), vec3<i32>(-11770i, -1i, 21300i), vec3<i32>(-19838i, 24817i, -11418i), vec3<i32>(2147483647i, -8654i, 27864i), vec3<i32>(0i, 1946i, -14597i), vec3<i32>(63055i, 74397i, -15873i), vec3<i32>(-12354i, 0i, -1i), vec3<i32>(-59246i, 0i, 3378i));

var<private> global4: array<bool, 1>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: u32) -> Struct_1 {
    global3 = array<vec3<i32>, 9>();
    global3 = array<vec3<i32>, 9>();
    var var_0 = Struct_3(Struct_1(-(~u_input.c.x)), Struct_2(Struct_1(-2147483647i), Struct_1((global0.a & u_input.c.x) ^ -14524i)), abs(_wgslsmith_add_u32(~u_input.b.x, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(arg_0, arg_0)), vec2<u32>(1u, 4294967295u)))));
    var var_1 = any(!(!(!(!vec2<bool>(true, global4[_wgslsmith_index_u32(4294967295u, 1u)])))));
    var_1 = false;
    return var_0.a;
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_3) -> Struct_1 {
    global4 = array<bool, 1>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_0, arg_0), _wgslsmith_f_op_f32(round(arg_0)))), arg_0), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0, arg_0, -1376f))))), vec3<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0), 794f)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, arg_0, -1000f)))) * vec3<f32>(_wgslsmith_f_op_f32(trunc(-810f)), _wgslsmith_f_op_f32(-582f * _wgslsmith_f_op_f32(step(var_0.x, 1210f))), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(f32(-1f) * -1186f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1864f, arg_0, 548f) - vec3<f32>(arg_0, 224f, var_0.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, -2765f, var_0.x), vec3<f32>(823f, 426f, -514f), global2[_wgslsmith_index_u32(0u, 25u)])), vec3<f32>(var_0.x, 1174f, arg_0), !global2[_wgslsmith_index_u32(u_input.b.x, 25u)]))))));
    var var_2 = Struct_3(Struct_1(max(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.c.zzz, u_input.c.xzw), -global3[_wgslsmith_index_u32(80490u, 9u)]), 1i)), arg_2.b, ~_wgslsmith_dot_vec3_u32(vec3<u32>(~4294967295u, reverseBits(arg_2.c), 1u), u_input.b));
    var var_3 = arg_2.b.a;
    return func_2(firstTrailingBit(var_2.c));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<bool>) -> u32 {
    var var_0 = func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -472f)), func_2(0u), Struct_3(func_2(4294967295u), Struct_2(Struct_1(-2147483647i), Struct_1(u_input.e.x)), 0u));
    global4 = array<bool, 1>();
    var var_1 = Struct_2(Struct_1(max(abs(u_input.a) ^ var_0.a, var_0.a)), func_2(countOneBits(~1u ^ _wgslsmith_mult_u32(u_input.b.x, u_input.b.x))));
    var var_2 = u_input.c.wxz;
    let var_3 = !(!arg_1.xz);
    return ~max(0u, abs(~abs(0u)));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: u32) -> Struct_1 {
    var var_0 = false;
    global4 = array<bool, 1>();
    return func_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(step(arg_2.x, -346f))))), arg_2.x)), arg_1.b, Struct_3(arg_1.a, arg_1, select(4294967295u, arg_3, !global4[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, arg_3), 1u)])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_4(vec3<u32>(func_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(687f, -1520f, 334f, 1498f), vec4<f32>(-491f, -1102f, 189f, -625f), true)), vec4<bool>(global4[_wgslsmith_index_u32(u_input.b.x, 1u)], true, global4[_wgslsmith_index_u32(68774u, 1u)], true)), _wgslsmith_clamp_u32(u_input.b.x, ~105512u, 0u), u_input.b.x), Struct_2(func_3(-327f, Struct_1(-18315i), Struct_3(Struct_1(-2147483647i), Struct_2(Struct_1(-29449i), Struct_1(-24939i)), 1u)), func_2(abs(4294967295u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 809f, -423f, -982f)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-150f, 1935f, 187f, -1069f))))), u_input.b.x), Struct_2(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2743f)), func_4(select(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), vec3<u32>(4294967295u, u_input.b.x, 4294967295u), vec3<bool>(false, false, true)), Struct_2(Struct_1(35970i), Struct_1(1723i)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1032f, 2592f, -1166f, -572f))), ~u_input.b.x), Struct_3(Struct_1(-40248i), Struct_2(Struct_1(u_input.c.x), Struct_1(global0.a)), _wgslsmith_div_u32(30264u, 45152u))), func_2(1u)), func_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1274f, 450f, 1104f, -512f) + vec4<f32>(-341f, 1000f, 1873f, -949f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, 567f, 1065f, 1536f), vec4<f32>(-1620f, -532f, -1718f, 543f), vec4<bool>(true, global4[_wgslsmith_index_u32(u_input.b.x, 1u)], true, global4[_wgslsmith_index_u32(u_input.b.x, 1u)])))))), select(!(!vec4<bool>(global4[_wgslsmith_index_u32(u_input.b.x, 1u)], true, false, global4[_wgslsmith_index_u32(u_input.b.x, 1u)])), vec4<bool>(global4[_wgslsmith_index_u32(~u_input.b.x, 1u)], global4[_wgslsmith_index_u32(125187u, 1u)], true, all(vec3<bool>(global4[_wgslsmith_index_u32(u_input.b.x, 1u)], global4[_wgslsmith_index_u32(22110u, 1u)], false))), vec4<bool>(true, all(global2[_wgslsmith_index_u32(48276u, 25u)]), true, global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, 110959u), 1u)]))));
    global3 = array<vec3<i32>, 9>();
    global3 = array<vec3<i32>, 9>();
    let var_1 = u_input.b.x;
    let var_2 = Struct_2(func_4(~(u_input.b ^ (u_input.b << (vec3<u32>(4294967295u, u_input.b.x, 40029u) % vec3<u32>(32u)))), Struct_2(Struct_1(var_0.b.a.a), var_0.b.b), vec4<f32>(-479f, -363f, 771f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-864f)) - _wgslsmith_f_op_f32(floor(379f)))), _wgslsmith_add_u32(u_input.b.x, var_1)), Struct_1(_wgslsmith_mod_i32(1i, -var_0.b.a.a & (u_input.c.x & -41142i))));
    let var_3 = Struct_2(func_2(var_0.c), func_3(-932f, var_0.b.b, var_0));
    let var_4 = global4[_wgslsmith_index_u32(~(~37756u), 1u)];
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, vec3<i32>(-4421i, _wgslsmith_sub_i32(-2147483647i, _wgslsmith_div_i32(-1i, -2147483647i)), firstTrailingBit(-17715i)));
}

