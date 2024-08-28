struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2>;

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(false, vec4<bool>(false, true, true, true), 40267u), Struct_1(true, vec4<bool>(false, false, true, true), 4294967295u), Struct_1(true, vec4<bool>(true, true, false, false), 0u), Struct_1(false, vec4<bool>(true, true, true, false), 47195u), Struct_1(false, vec4<bool>(true, true, true, true), 27179u), Struct_1(true, vec4<bool>(true, true, false, true), 81669u), Struct_1(true, vec4<bool>(false, true, true, false), 1u), Struct_1(false, vec4<bool>(true, false, false, false), 4294967295u), Struct_1(true, vec4<bool>(true, false, false, true), 4294967295u), Struct_1(false, vec4<bool>(true, false, false, false), 0u), Struct_1(true, vec4<bool>(true, false, false, true), 75875u), Struct_1(true, vec4<bool>(false, true, true, true), 3358u), Struct_1(true, vec4<bool>(true, true, true, true), 18728u), Struct_1(true, vec4<bool>(false, true, true, false), 61353u), Struct_1(false, vec4<bool>(true, false, true, false), 4294967295u), Struct_1(true, vec4<bool>(false, true, true, false), 0u), Struct_1(true, vec4<bool>(true, false, true, false), 1u), Struct_1(false, vec4<bool>(false, true, false, true), 8958u), Struct_1(false, vec4<bool>(true, false, false, false), 44137u), Struct_1(true, vec4<bool>(false, false, true, false), 1u), Struct_1(true, vec4<bool>(false, false, true, true), 4294967295u), Struct_1(false, vec4<bool>(true, true, true, false), 5683u), Struct_1(false, vec4<bool>(false, true, false, false), 4294967295u), Struct_1(false, vec4<bool>(true, true, true, true), 4838u), Struct_1(true, vec4<bool>(true, false, true, false), 0u), Struct_1(false, vec4<bool>(true, true, false, false), 0u), Struct_1(false, vec4<bool>(false, false, false, true), 3750u), Struct_1(true, vec4<bool>(true, false, false, false), 1u), Struct_1(true, vec4<bool>(true, true, true, true), 1u), Struct_1(true, vec4<bool>(true, true, true, true), 6705u), Struct_1(true, vec4<bool>(true, false, false, true), 0u));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: bool) -> vec4<i32> {
    global0 = array<Struct_1, 2>();
    var var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 4294967295u), min(u_input.d, vec2<u32>(u_input.b, u_input.d.x)))), ~44319u, u_input.e.x), 31u)];
    let var_1 = 0u;
    global0 = array<Struct_1, 2>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(900f, _wgslsmith_f_op_f32(arg_1.a.x - _wgslsmith_f_op_f32(ceil(arg_1.c.x))), 1000f));
    return ~vec4<i32>(_wgslsmith_sub_i32(1i, _wgslsmith_sub_i32(0i, -1i)), -1i, 52699i, max(_wgslsmith_mod_i32(-2147483647i, 5576i), ~2147483647i));
}

fn func_2() -> bool {
    global0 = array<Struct_1, 2>();
    var var_0 = vec4<i32>(-2147483647i & _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(func_3(678f, Struct_2(vec4<f32>(870f, -374f, 1675f, -1883f), vec2<f32>(933f, -809f), vec4<f32>(1560f, 873f, 480f, -454f), true), false), max(vec4<i32>(28654i, 0i, 1i, 85994i), vec4<i32>(2147483647i, 0i, -1i, 2147483647i))), ~0i), _wgslsmith_clamp_i32(19070i, 0i, -1i), _wgslsmith_sub_i32(min(-22070i, min(-1i << (u_input.b % 32u), i32(-1i) * -2940i)), ~max(_wgslsmith_add_i32(7387i, -9249i), max(2147483647i, -21189i))), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(max(-2147483647i, 2147483647i), i32(-1i) * -2147483647i), 1i), vec2<i32>(-24574i, firstLeadingBit(-1i) >> (1u % 32u))));
    var var_1 = select(select(select(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), true), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true)), select(vec2<bool>(true, true), !(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), false), !select(vec2<bool>(true, true), vec2<bool>(true, true), true));
    var_1 = !(!vec2<bool>(var_1.x != (var_1.x && var_1.x), 0u < ~u_input.e.x));
    let var_2 = vec2<bool>(all(select(select(vec2<bool>(true, var_1.x), vec2<bool>(false, true), false), vec2<bool>(var_1.x, true), select(vec2<bool>(true, true), select(vec2<bool>(var_1.x, true), vec2<bool>(var_1.x, var_1.x), true), true))), true);
    return var_2.x;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: Struct_1) -> u32 {
    var var_0 = !func_2();
    let var_1 = _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-472f)), -402f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-800f)))))));
    var var_2 = Struct_2(vec4<f32>(-480f, -1358f, 239f, _wgslsmith_f_op_f32(var_1 - var_1)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(abs(var_1)), -1000f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(310f, 471f))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1, -1000f), vec2<f32>(-415f, var_1), arg_2.a))), vec2<bool>(all(arg_0.zx), false))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(719f, var_1)))), _wgslsmith_f_op_f32(-145f - 1205f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - -100f) + _wgslsmith_f_op_f32(-var_1))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(251f, -192f, 683f, -150f))), vec4<f32>(-1434f, var_1, var_1, -2300f)))), arg_0.x)), !(var_1 > 335f));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec2_u32(abs(~u_input.d), vec2<u32>(~func_1(vec3<bool>(true, true, true), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, -52936i), vec2<i32>(2147483647i, -30091i)), global1[_wgslsmith_index_u32(1u, 31u)]), 1u));
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1131f - 391f), -1379f) + vec2<f32>(1f, 1f)))));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -546f);
    let var_3 = ~firstTrailingBit(~vec2<u32>(u_input.a, u_input.a) | select(~vec2<u32>(u_input.a, 0u), abs(u_input.e), vec2<bool>(true, false)));
    var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-745f)), var_1.x)), vec2<f32>(-762f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_4 = true;
    var_4 = var_1.x > 1789f;
    let var_5 = global0[_wgslsmith_index_u32(var_3.x, 2u)];
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-1i), firstLeadingBit(firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 56292u, var_3.x, u_input.a), vec4<u32>(var_5.c, 13386u, 1u, 0u)))) >> (~vec4<u32>(var_3.x, 67635u, _wgslsmith_mod_u32(var_5.c, u_input.d.x), u_input.c) % vec4<u32>(32u)), -2147483647i);
}

