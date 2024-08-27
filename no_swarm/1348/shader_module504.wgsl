struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: bool,
    d: i32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 20>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_2) -> u32 {
    var var_0 = vec2<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)));
    var var_1 = Struct_2(~arg_3.a);
    let var_2 = arg_1;
    let var_3 = !var_2.e;
    var var_4 = -(~_wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(-45878i, -6689i)), vec2<i32>(countOneBits(23485i), -1i)));
    return ~arg_3.a;
}

fn func_4(arg_0: bool, arg_1: u32) -> bool {
    let var_0 = ~u_input.a;
    var var_1 = vec2<i32>(1i, 1i);
    global0 = array<vec2<bool>, 20>();
    let var_2 = Struct_2(~u_input.a);
    let var_3 = Struct_1(vec2<f32>(1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-717f)))))), ~u_input.a ^ arg_1, arg_0, 1i, vec4<bool>(true, !(!arg_0), all(vec3<bool>(true, true, true)), !all(select(vec2<bool>(arg_0, true), global0[_wgslsmith_index_u32(var_2.a, 20u)], false))));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_3.a.x + -1592f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1354f)) * _wgslsmith_f_op_f32(sign(var_3.a.x))), -1243f)), false)) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a.x + -462f) * _wgslsmith_f_op_f32(exp2(var_3.a.x))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_3.a.x)))), -117f);
}

fn func_2() -> vec4<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-166f, -279f)))))), countOneBits(u_input.a), true, ((abs(1864i) >> (u_input.a % 32u)) | -5907i) ^ _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_div_vec4_i32(abs(vec4<i32>(1i, 2147483647i, -11689i, 0i)), ~vec4<i32>(15033i, 2147483647i, 1i, 30593i))), vec4<bool>(!func_4(true, func_3(-113f, Struct_1(vec2<f32>(-807f, -278f), 0u, false, 1i, vec4<bool>(true, true, true, true)), vec2<u32>(0u, u_input.a), Struct_2(u_input.a))), true, true, select(func_4(false, 0u), true, true) & true));
    global0 = array<vec2<bool>, 20>();
    var var_1 = select(_wgslsmith_div_vec4_i32(abs(abs(vec4<i32>(var_0.d, var_0.d, -84326i, -15663i))), abs(~vec4<i32>(var_0.d, var_0.d, var_0.d, -8457i))), _wgslsmith_div_vec4_i32(vec4<i32>(var_0.d, ~(-62514i), -61598i, ~(-39238i)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(-2147483647i, var_0.d, -24877i, var_0.d), firstTrailingBit(vec4<i32>(-2147483647i, 14335i, var_0.d, 2147483647i)), vec4<i32>(6590i, 0i, var_0.d, var_0.d))), all(select(select(var_0.e, vec4<bool>(var_0.e.x, var_0.c, var_0.c, false), var_0.e), vec4<bool>(true, var_0.e.x, true, false), func_4(var_0.c, var_0.b)))) ^ (vec4<i32>(~reverseBits(var_0.d), 47028i, -var_0.d, -2147483647i) | (vec4<i32>(-1i) * -(vec4<i32>(52670i, -2147483647i, var_0.d, var_0.d) & vec4<i32>(-1937i, var_0.d, var_0.d, var_0.d))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, -424f, 472f, -971f) + vec4<f32>(1000f, -2143f, 575f, -1850f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(865f, -917f, -702f, var_0.a.x) - vec4<f32>(-135f, -507f, var_0.a.x, var_0.a.x)), true)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -487f), _wgslsmith_f_op_f32(min(734f, 542f)), -937f, var_0.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-959f * -193f), var_0.a.x, 1499f, var_0.a.x))));
    let var_3 = Struct_2(~0u);
    return vec4<u32>(var_0.b, 0u, u_input.a, 34890u);
}

fn func_5(arg_0: vec4<i32>) -> Struct_1 {
    global0 = array<vec2<bool>, 20>();
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-494f, 822f) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(2458f, 1691f))))), ~u_input.a | min(u_input.a, 1u), !(true || select(all(vec4<bool>(false, true, false, true)), true, any(vec4<bool>(false, false, true, true)))), _wgslsmith_dot_vec4_i32(arg_0, countOneBits(arg_0)), select(vec4<bool>(true, true, all(vec3<bool>(true, false, false)), true), vec4<bool>(_wgslsmith_f_op_f32(min(210f, -285f)) >= _wgslsmith_f_op_f32(trunc(479f)), true, true, any(vec4<bool>(false, false, false, false))), true));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<u32>) -> Struct_1 {
    global0 = array<vec2<bool>, 20>();
    global0 = array<vec2<bool>, 20>();
    var var_0 = _wgslsmith_f_op_f32(max(731f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var_0 = 757f;
    return func_5(~vec4<i32>(1i, firstTrailingBit(44449i), ~(-2147483647i), 1i) << (select(~vec4<u32>(arg_0.x, u_input.a, 56565u, 3682u) ^ (vec4<u32>(51034u, arg_1.x, 89422u, 6173u) >> (vec4<u32>(arg_1.x, 4294967295u, arg_0.x, 2726u) % vec4<u32>(32u))), func_2(), true) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1i;
    let var_1 = func_1(max(_wgslsmith_div_vec2_u32(firstLeadingBit(select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 4294967295u), global0[_wgslsmith_index_u32(19421u, 20u)])), vec2<u32>(u_input.a, 61742u)), ~max(~vec2<u32>(1u, u_input.a), vec2<u32>(u_input.a, 4294967295u) << (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u)))), firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.a, 0u), vec3<u32>(u_input.a, 1u, 0u)), min(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(4294967295u, u_input.a, 42791u))), 26700u, u_input.a)));
    global0 = array<vec2<bool>, 20>();
    var var_2 = true || (_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.a.x, 795f)) - 2006f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -851f)))) <= _wgslsmith_div_f32(1264f, 509f));
    let var_3 = ~vec2<u32>(var_1.b, var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -380f), _wgslsmith_f_op_f32(trunc(var_1.a.x))) * var_1.a)), ~(~vec4<u32>(var_1.b, var_3.x, 11274u, var_3.x)) >> (~(~firstLeadingBit(vec4<u32>(4433u, var_1.b, var_1.b, 1u))) % vec4<u32>(32u)), ~u_input.a, _wgslsmith_mod_vec3_u32(vec3<u32>(var_3.x, 0u, var_3.x), vec3<u32>(var_1.b, 10441u, 7138u)), _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(var_0, -1i, var_0), vec3<i32>(var_0, -14365i, var_0), reverseBits(vec3<i32>(1i, var_0, -2145i))), vec3<i32>(1i, -27305i, -2147483647i)), ~vec3<i32>(-77351i, func_1(var_3, vec3<u32>(83537u, var_1.b, 0u)).d, var_1.d), firstTrailingBit(vec3<i32>(0i, var_0, -38769i) >> (vec3<u32>(0u, var_1.b, 4294967295u) % vec3<u32>(32u))) & _wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(var_0, var_1.d, var_0)), vec3<i32>(var_1.d, var_1.d, var_0), -vec3<i32>(var_0, var_0, var_1.d))));
}

