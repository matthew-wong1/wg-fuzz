struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(true, Struct_1(vec2<bool>(false, true), true), Struct_1(vec2<bool>(false, true), true), vec3<u32>(4294967295u, 1u, 0u)), Struct_2(false, Struct_1(vec2<bool>(false, false), true), Struct_1(vec2<bool>(true, false), true), vec3<u32>(1u, 1u, 37057u)), Struct_2(true, Struct_1(vec2<bool>(true, true), false), Struct_1(vec2<bool>(false, false), false), vec3<u32>(4294967295u, 4294967295u, 0u)), Struct_2(true, Struct_1(vec2<bool>(true, false), false), Struct_1(vec2<bool>(false, true), true), vec3<u32>(72453u, 43198u, 36651u)), Struct_2(true, Struct_1(vec2<bool>(true, false), true), Struct_1(vec2<bool>(true, false), true), vec3<u32>(43011u, 0u, 0u)), Struct_2(false, Struct_1(vec2<bool>(true, false), false), Struct_1(vec2<bool>(false, false), false), vec3<u32>(0u, 4294967295u, 0u)), Struct_2(true, Struct_1(vec2<bool>(true, true), true), Struct_1(vec2<bool>(false, false), true), vec3<u32>(26749u, 1u, 54578u)), Struct_2(false, Struct_1(vec2<bool>(true, false), true), Struct_1(vec2<bool>(false, true), false), vec3<u32>(25023u, 0u, 38867u)), Struct_2(false, Struct_1(vec2<bool>(false, true), true), Struct_1(vec2<bool>(true, false), true), vec3<u32>(45077u, 28382u, 31878u)), Struct_2(true, Struct_1(vec2<bool>(true, false), true), Struct_1(vec2<bool>(true, false), true), vec3<u32>(65378u, 0u, 4294967295u)), Struct_2(true, Struct_1(vec2<bool>(false, false), true), Struct_1(vec2<bool>(true, false), true), vec3<u32>(34202u, 43264u, 4294967295u)), Struct_2(true, Struct_1(vec2<bool>(true, false), true), Struct_1(vec2<bool>(true, false), true), vec3<u32>(4294967295u, 21921u, 1825u)), Struct_2(false, Struct_1(vec2<bool>(true, true), false), Struct_1(vec2<bool>(true, false), true), vec3<u32>(4294967295u, 0u, 0u)), Struct_2(false, Struct_1(vec2<bool>(false, true), true), Struct_1(vec2<bool>(false, true), false), vec3<u32>(11845u, 14566u, 0u)), Struct_2(false, Struct_1(vec2<bool>(false, true), false), Struct_1(vec2<bool>(false, false), true), vec3<u32>(42985u, 4294967295u, 4294967295u)));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool, arg_1: vec2<u32>) -> i32 {
    var var_0 = select(!vec2<bool>(all(vec2<bool>(true, arg_0)), false), vec2<bool>(true, !(!any(vec2<bool>(arg_0, true)))), vec2<bool>(_wgslsmith_mod_i32(1i, u_input.b.x) > (u_input.d ^ -32245i), arg_0));
    global0 = array<Struct_2, 15>();
    var var_1 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-357f * 145f), _wgslsmith_f_op_f32(f32(-1f) * -650f))), _wgslsmith_f_op_f32(1630f * _wgslsmith_div_f32(-423f, 2240f)), 2540f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 1061f) - _wgslsmith_div_f32(-596f, 142f)) - 2053f)), vec2<f32>(414f, 1090f), global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(3838u, u_input.c), 15u)], 21971u);
    var var_2 = Struct_3(var_1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(268f, var_1.b.x) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-840f, 257f), vec2<f32>(var_1.a.x, -1000f)))), _wgslsmith_f_op_vec2_f32(-var_1.a.yy))), var_1.c, _wgslsmith_clamp_u32(36235u, var_1.c.d.x, 1u));
    var var_3 = firstTrailingBit(var_1.c.d);
    return _wgslsmith_sub_i32(_wgslsmith_div_i32(-u_input.a, i32(-1i) * -abs(1i)), _wgslsmith_dot_vec2_i32(vec2<i32>(26683i, u_input.d), u_input.b.xz));
}

fn func_2(arg_0: i32, arg_1: Struct_4, arg_2: u32) -> f32 {
    var var_0 = -firstLeadingBit(arg_0);
    var var_1 = -func_3(!arg_1.b.c.c.a.x, arg_1.b.c.d.yy);
    var var_2 = arg_1.b.b.x;
    var_2 = arg_1.b.a.x;
    var var_3 = 122f;
    return arg_1.b.a.x;
}

fn func_4(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_4) -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(step(-964f, _wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1715f, arg_1, arg_2.b.c.c.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_f_op_f32(min(831f, -1174f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(arg_2.b.b.x)), -850f, false))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(arg_2.b.a * _wgslsmith_f_op_vec4_f32(trunc(arg_2.b.a))))))), vec2<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(arg_2.b.a.x - -814f)), Struct_2(true, Struct_1(select(arg_2.b.c.b.a, vec2<bool>(arg_0.x, arg_2.a), vec2<bool>(arg_0.x, arg_2.a)), arg_0.x), Struct_1(!select(arg_0, vec2<bool>(false, arg_2.b.c.c.b), arg_2.a), arg_2.a), _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_2.b.c.d.x, 2941u, 0u), abs(vec3<u32>(u_input.c, u_input.c, arg_2.b.c.d.x))), abs(max(arg_2.b.c.d, vec3<u32>(u_input.c, arg_2.b.c.d.x, u_input.c))))), arg_2.c);
    let var_1 = arg_2.b;
    var var_2 = var_0.a.xzz;
    global0 = array<Struct_2, 15>();
    var var_3 = Struct_1(vec2<bool>(any(!vec3<bool>(false, arg_0.x, arg_2.a)), var_0.c.c.b), any(select(select(select(vec3<bool>(true, true, false), vec3<bool>(var_0.c.b.b, var_0.c.c.b, var_0.c.b.b), false), !vec3<bool>(arg_0.x, true, arg_0.x), select(vec3<bool>(false, true, var_0.c.b.b), vec3<bool>(arg_0.x, var_0.c.b.a.x, true), var_1.c.b.a.x)), vec3<bool>(true, true, true), select(vec3<bool>(false, false, var_1.c.a), select(vec3<bool>(var_0.c.a, true, arg_2.b.c.c.b), vec3<bool>(var_0.c.a, false, true), var_1.c.c.a.x), !arg_2.a))));
    return Struct_1(!(!arg_0), select(_wgslsmith_mod_u32(1u, 9013u << (var_1.d % 32u)), 1u, select(false & var_1.c.a, all(vec3<bool>(var_0.c.c.b, var_3.a.x, var_0.c.c.a.x)), !arg_2.b.c.a)) <= 0u);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec3<i32>) -> Struct_3 {
    let var_0 = arg_1.b.c;
    global0 = array<Struct_2, 15>();
    let var_1 = ~min(abs(var_0.d.x >> (1u % 32u)), 1u) >= arg_1.c;
    var var_2 = any(!(!(!vec4<bool>(true, arg_0.a.x, false, false))));
    let var_3 = var_0.c;
    return arg_1.b;
}

fn func_1(arg_0: bool, arg_1: bool) -> Struct_4 {
    global0 = array<Struct_2, 15>();
    let var_0 = func_5(func_4(select(select(!vec2<bool>(false, arg_0), vec2<bool>(false, arg_0), arg_1), vec2<bool>(arg_0, arg_0), any(!vec3<bool>(arg_0, true, false))), 209f, Struct_4(_wgslsmith_f_op_f32(func_2(u_input.a, Struct_4(false, Struct_3(vec4<f32>(316f, 679f, 1084f, 786f), vec2<f32>(662f, 387f), Struct_2(false, Struct_1(vec2<bool>(false, true), false), Struct_1(vec2<bool>(arg_0, arg_1), false), vec3<u32>(u_input.c, 0u, 38110u)), 4294967295u), u_input.c), u_input.c)) < _wgslsmith_f_op_f32(f32(-1f) * -752f), Struct_3(vec4<f32>(-392f, -186f, 387f, 1272f), _wgslsmith_f_op_vec2_f32(vec2<f32>(456f, 402f) * vec2<f32>(-376f, 533f)), Struct_2(true, Struct_1(vec2<bool>(true, arg_0), arg_0), Struct_1(vec2<bool>(true, true), arg_1), vec3<u32>(38071u, u_input.c, 4294967295u)), _wgslsmith_mult_u32(u_input.c, u_input.c)), ~0u)), Struct_4((arg_1 | false) && true, Struct_3(_wgslsmith_div_vec4_f32(vec4<f32>(179f, 941f, 174f, 989f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, -106f, -1036f, 147f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1060f, -1556f), vec2<f32>(248f, -724f), true)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(420f, -482f))), Struct_2(arg_0, Struct_1(vec2<bool>(arg_0, true), false), Struct_1(vec2<bool>(arg_1, true), arg_0), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, 0u, u_input.c), vec3<u32>(u_input.c, u_input.c, 1u), vec3<u32>(51847u, 0u, u_input.c))), ~u_input.c), abs(countOneBits(select(4294967295u, 0u, true)))), u_input.b);
    let var_1 = global0[_wgslsmith_index_u32(4294967295u, 15u)];
    var var_2 = ~firstLeadingBit(-2147483647i);
    let var_3 = func_5(var_1.b, Struct_4(var_0.c.c.a.x, func_5(var_1.c, Struct_4(true, Struct_3(var_0.a, var_0.a.xw, global0[_wgslsmith_index_u32(var_0.d, 15u)], var_0.d), firstLeadingBit(var_0.d)), u_input.e.ywy), 1u), u_input.e.zwz >> (var_1.d % vec3<u32>(32u)));
    return Struct_4(_wgslsmith_f_op_f32(func_2(13852i, Struct_4(false && var_0.c.b.b, func_5(var_3.c.c, Struct_4(arg_0, Struct_3(var_0.a, vec2<f32>(var_0.a.x, 660f), Struct_2(true, Struct_1(var_1.b.a, true), Struct_1(var_1.c.a, arg_1), vec3<u32>(4294967295u, 0u, 42190u)), var_0.c.d.x), 0u), vec3<i32>(u_input.e.x, u_input.e.x, u_input.b.x)), var_1.d.x | 0u), 130486u)) > var_0.a.x, Struct_3(_wgslsmith_f_op_vec4_f32(select(var_0.a, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, -191f, 1000f, -297f) + var_3.a), _wgslsmith_div_vec4_f32(vec4<f32>(var_3.a.x, var_0.b.x, 887f, -522f), var_0.a))), vec4<bool>(all(vec3<bool>(true, var_0.c.c.a.x, var_3.c.c.a.x)), var_0.c.c.a.x, true, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(var_0.b))))), Struct_2(func_4(var_0.c.b.a, _wgslsmith_f_op_f32(var_3.a.x - 185f), Struct_4(var_1.a, var_3, 30551u)).a.x, var_0.c.b, Struct_1(vec2<bool>(arg_1, true), select(false, false, arg_1)), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 114356u, 8770u) | vec3<u32>(var_3.c.d.x, 1u, var_3.c.d.x), vec3<u32>(var_0.d, 31890u, 117145u))), abs(1u)), var_3.d);
}

fn func_6(arg_0: Struct_4, arg_1: f32, arg_2: vec3<f32>) -> Struct_4 {
    global0 = array<Struct_2, 15>();
    global0 = array<Struct_2, 15>();
    global0 = array<Struct_2, 15>();
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-arg_2.xz)));
    global0 = array<Struct_2, 15>();
    return Struct_4(false, func_1(any(select(vec4<bool>(arg_0.a, arg_0.b.c.b.a.x, arg_0.b.c.a, false), select(vec4<bool>(arg_0.a, arg_0.b.c.a, arg_0.a, arg_0.a), vec4<bool>(arg_0.b.c.c.a.x, true, arg_0.a, true), vec4<bool>(true, true, false, arg_0.b.c.a)), vec4<bool>(true, true, arg_0.a, true))), !all(vec3<bool>(arg_0.a, false, false))).b, arg_0.b.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_1(!(u_input.b.x != -u_input.a), any(vec2<bool>(true, true))), 161f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1033f, -1038f, 297f)))), vec3<f32>(_wgslsmith_f_op_f32(round(177f)), _wgslsmith_f_op_f32(-1000f * -356f), _wgslsmith_f_op_f32(-533f - -561f)))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(577f, 1000f, -1231f))))))));
    let var_1 = select(~(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.c, 19297u, 0u), var_0.b.c.d ^ vec3<u32>(1u, 1u, var_0.b.c.d.x)) & (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, var_0.b.c.d.x, u_input.c), var_0.b.c.d) ^ select(var_0.b.c.d, vec3<u32>(u_input.c, 1u, 87515u), false))), ~var_0.b.c.d, var_0.a);
    global0 = array<Struct_2, 15>();
    var var_2 = u_input.e.x;
    global0 = array<Struct_2, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(~8054u, reverseBits(_wgslsmith_add_i32(2147483647i, select(-9906i, -53840i, false))) ^ 35597i, ~var_1.x, var_0.b.c.d.xy, vec2<i32>(_wgslsmith_add_i32(~u_input.e.x, min(abs(-1i), -1779i)), u_input.d));
}

