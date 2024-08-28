struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

var<private> global1: array<Struct_1, 27>;

var<private> global2: f32;

var<private> global3: Struct_1;

var<private> global4: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec2<f32>(1332f, -376f)), Struct_1(vec2<f32>(567f, 1055f)), Struct_1(vec2<f32>(336f, 1695f)), Struct_1(vec2<f32>(-231f, -1000f)), Struct_1(vec2<f32>(830f, -1114f)), Struct_1(vec2<f32>(799f, 1490f)), Struct_1(vec2<f32>(1698f, -848f)), Struct_1(vec2<f32>(789f, -415f)), Struct_1(vec2<f32>(-1004f, -1000f)), Struct_1(vec2<f32>(-1763f, -2035f)), Struct_1(vec2<f32>(-444f, 524f)), Struct_1(vec2<f32>(870f, 1000f)), Struct_1(vec2<f32>(-591f, 1125f)), Struct_1(vec2<f32>(-1000f, -960f)), Struct_1(vec2<f32>(-1410f, -146f)), Struct_1(vec2<f32>(-294f, -1045f)), Struct_1(vec2<f32>(-414f, -1117f)), Struct_1(vec2<f32>(2085f, 1659f)), Struct_1(vec2<f32>(939f, -349f)), Struct_1(vec2<f32>(-1070f, -169f)), Struct_1(vec2<f32>(1228f, -1576f)), Struct_1(vec2<f32>(-1000f, -391f)), Struct_1(vec2<f32>(-344f, 120f)));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
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

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    var var_0 = ~(u_input.c ^ -_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(u_input.c, u_input.c), u_input.c, u_input.c));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.x - 663f));
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-139f))) + -746f), -2055f));
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(2128f)), 367f, -410f) * vec3<f32>(_wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(max(1979f, global3.a.x)))), 673f, global3.a.x));
    var_0 = u_input.c;
    return firstLeadingBit(reverseBits(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d.x, 1u, u_input.d.x), vec3<u32>(u_input.d.x, 9575u, 24859u)), vec3<u32>(u_input.b, 20174u, 54437u) >> (vec3<u32>(u_input.b, 13182u, u_input.d.x) % vec3<u32>(32u))))));
}

fn func_2() -> u32 {
    global2 = _wgslsmith_f_op_f32(global3.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global3.a.x))));
    var var_0 = 48464u;
    global3 = global0[_wgslsmith_index_u32(firstTrailingBit(~u_input.b), 29u)];
    let var_1 = 399f;
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-329f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(-global3.a.x))))));
    return func_3(vec2<bool>(u_input.a <= u_input.c.x, !all(vec3<bool>(true, true, true)) & true));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global4 = array<Struct_1, 23>();
    let var_0 = arg_0.xzw;
    var var_1 = vec3<u32>(~(~4294967295u), func_2(), u_input.b);
    var var_2 = select(select(!vec3<bool>(all(vec3<bool>(false, false, false)), any(vec3<bool>(true, true, false)), false), !(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true)), true), select(select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false), vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false))), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), arg_2.a.x > global3.a.x), !(u_input.a > arg_1.x)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false))), all(vec4<bool>(true, true, true, true)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-var_0);
    return 4294967295u | (countOneBits(~_wgslsmith_sub_u32(var_1.x, 71842u)) >> (_wgslsmith_dot_vec2_u32(abs(vec2<u32>(var_1.x, 8270u)), vec2<u32>(_wgslsmith_clamp_u32(u_input.d.x, 4294967295u, 12450u), _wgslsmith_div_u32(0u, u_input.b))) % 32u));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> f32 {
    var var_0 = _wgslsmith_div_i32(firstTrailingBit(select(-u_input.a, reverseBits(-43230i), false)), countOneBits(u_input.a)) <= max(_wgslsmith_clamp_i32(2147483647i, _wgslsmith_sub_i32(-1i, _wgslsmith_div_i32(u_input.a, u_input.a)), u_input.a), firstLeadingBit(u_input.a));
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.a.x, 943f, arg_2.a.x), vec3<f32>(global3.a.x, 915f, arg_2.a.x), vec3<bool>(false, false, true))))) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1838f, -1441f, global3.a.x))))))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(arg_0.a)))) - vec2<f32>(-867f, -2247f)))));
    global1 = array<Struct_1, 27>();
    var var_3 = ~_wgslsmith_mod_i32(select(_wgslsmith_clamp_i32(-37838i, u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.a, 1i, -32498i), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 3177i))), _wgslsmith_add_i32(-12917i, ~0i), all(vec3<bool>(true, true, true))), u_input.c.x);
    return 1609f;
}

fn func_5(arg_0: f32, arg_1: vec2<i32>, arg_2: vec4<i32>, arg_3: u32) -> StorageBuffer {
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global3.a.x, arg_0))), 0i, 1u, _wgslsmith_add_vec2_i32(arg_1, vec2<i32>(1i, -2147483647i)), _wgslsmith_dot_vec4_i32(~select(arg_2, -arg_2, true), countOneBits(arg_2) << (~reverseBits(vec4<u32>(arg_3, arg_3, arg_3, arg_3)) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 29>();
    var var_0 = ~_wgslsmith_dot_vec4_i32(abs(_wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(40864i, -52304i, u_input.c.x, u_input.a)), abs(vec4<i32>(u_input.c.x, u_input.a, u_input.c.x, 17556i)))), _wgslsmith_clamp_vec4_i32(-vec4<i32>(2147483647i, 48277i, 52761i, -33860i), abs(vec4<i32>(u_input.c.x, u_input.a, u_input.a, 5643i) & vec4<i32>(-20521i, -2147483647i, -1i, u_input.a)), -countOneBits(vec4<i32>(u_input.c.x, u_input.a, -20332i, 8050i))));
    let var_1 = ~(~u_input.b);
    global2 = 1049f;
    var var_2 = ~(~u_input.d.x);
    global4 = array<Struct_1, 23>();
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(global0[_wgslsmith_index_u32(var_1, 29u)], func_1(vec4<f32>(global3.a.x, 205f, 499f, 1000f), countOneBits(vec2<i32>(26628i, u_input.a)), global1[_wgslsmith_index_u32(abs(var_1), 27u)], global1[_wgslsmith_index_u32(abs(1u), 27u)]), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.d.x, u_input.b), 1u, u_input.d.x), 29u)])) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.x) - _wgslsmith_f_op_f32(trunc(global3.a.x))))), vec2<i32>(u_input.c.x ^ u_input.a, -1i), _wgslsmith_add_vec4_i32(max(~(-vec4<i32>(u_input.c.x, u_input.c.x, 57986i, -12397i)), _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 1662i, u_input.a, 0i), vec4<i32>(-1i, 36324i, 3386i, -2147483647i), vec4<i32>(19338i, u_input.a, -1i, u_input.a)), firstTrailingBit(vec4<i32>(1i, -2147483647i, u_input.c.x, u_input.c.x)), vec4<i32>(-21581i, 1i, -1i, 2147483647i) >> (vec4<u32>(4294967295u, var_1, 19912u, var_1) % vec4<u32>(32u)))), select(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, -56191i, 59094i, 0i), vec4<i32>(2147483647i, u_input.c.x, u_input.a, 0i)), vec4<i32>(u_input.c.x, 1i, 1i, 0i), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true))) ^ -_wgslsmith_mult_vec4_i32(vec4<i32>(1i, -16260i, u_input.c.x, -28210i), vec4<i32>(-43983i, 1i, 56183i, u_input.c.x))), _wgslsmith_clamp_u32(~(~func_3(vec2<bool>(true, true))), abs(min(37058u, var_1) | var_1), reverseBits(62512u)));
}

