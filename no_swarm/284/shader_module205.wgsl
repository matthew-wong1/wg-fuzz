struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: u32,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 11>;

var<private> global1: array<f32, 8>;

var<private> global2: u32 = 88825u;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_4) -> vec2<u32> {
    let var_0 = arg_0.a.b;
    let var_1 = 41763u;
    global0 = array<vec2<u32>, 11>();
    let var_2 = arg_0;
    global1 = array<f32, 8>();
    return ~global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(5616u, max(arg_0.b, 93388u) << (~arg_1.a.a % 32u)), 11u)];
}

fn func_2() -> Struct_1 {
    global2 = u_input.d;
    var var_0 = _wgslsmith_mult_u32(abs(1u), ~(~(~_wgslsmith_div_u32(1u, 9292u))));
    let var_1 = countOneBits(-1i);
    let var_2 = false;
    global0 = array<vec2<u32>, 11>();
    return Struct_1(countOneBits(u_input.d), vec2<u32>(_wgslsmith_dot_vec2_u32(~func_3(Struct_2(Struct_1(1u, vec2<u32>(u_input.d, u_input.c.x), -385f), u_input.d, Struct_1(u_input.d, global0[_wgslsmith_index_u32(3039u, 11u)], -310f), 7011u, vec2<bool>(false, false)), Struct_3(Struct_1(109902u, u_input.c.yz, -157f)), Struct_4(var_1, global1[_wgslsmith_index_u32(29030u, 8u)])), global0[_wgslsmith_index_u32(~func_3(Struct_2(Struct_1(1u, vec2<u32>(u_input.d, 53758u), global1[_wgslsmith_index_u32(37706u, 8u)]), 1u, Struct_1(u_input.d, u_input.c.xz, global1[_wgslsmith_index_u32(62295u, 8u)]), u_input.c.x, vec2<bool>(var_2, true)), Struct_3(Struct_1(u_input.d, vec2<u32>(u_input.d, u_input.c.x), -461f)), Struct_4(29959i, 1037f)).x, 11u)]), _wgslsmith_add_u32(_wgslsmith_mod_u32(1u, u_input.c.x) ^ 33269u, select(_wgslsmith_sub_u32(20962u, u_input.c.x), u_input.d, all(vec3<bool>(var_2, var_2, var_2))))), _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(func_3(Struct_2(Struct_1(u_input.c.x, u_input.c.zz, global1[_wgslsmith_index_u32(u_input.c.x, 8u)]), 107148u, Struct_1(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 11u)], global1[_wgslsmith_index_u32(u_input.d, 8u)]), u_input.d, select(vec2<bool>(var_2, false), vec2<bool>(false, true), true)), Struct_3(Struct_1(u_input.d, vec2<u32>(u_input.c.x, 57516u), global1[_wgslsmith_index_u32(700u, 8u)])), Struct_4(_wgslsmith_add_i32(u_input.b.x, u_input.b.x), global1[_wgslsmith_index_u32(30584u, 8u)])).x, 8u)])));
}

fn func_1(arg_0: Struct_4, arg_1: u32) -> Struct_3 {
    global1 = array<f32, 8>();
    var var_0 = func_2();
    let var_1 = Struct_3(Struct_1(_wgslsmith_dot_vec4_u32(~min(vec4<u32>(u_input.d, u_input.c.x, 1u, u_input.d), vec4<u32>(arg_1, arg_1, u_input.c.x, u_input.c.x)), vec4<u32>(abs(var_0.b.x), u_input.c.x, arg_1, _wgslsmith_sub_u32(var_0.a, 1u))), u_input.c.zx, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~1u, 8u)] + _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(round(arg_0.b))))));
    var var_2 = true | any(vec3<bool>(false, true, true || all(vec4<bool>(false, true, false, true))));
    var var_3 = ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(43025u, arg_1), firstLeadingBit(select(vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, var_1.a.a), true))));
    return Struct_3(var_1.a);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec4<bool>, arg_3: Struct_4) -> Struct_1 {
    global2 = u_input.c.x;
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0.a.a, 8u)] + -1524f), _wgslsmith_f_op_f32(-arg_0.a.c), _wgslsmith_f_op_f32(-arg_3.b)) + vec3<f32>(_wgslsmith_f_op_f32(-arg_3.b), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c.x, 8u)]), _wgslsmith_f_op_f32(select(1331f, 226f, true)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1349f - 959f), _wgslsmith_f_op_f32(arg_3.b + -1909f), 2682f)))) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1303f, arg_3.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(336f + arg_0.a.c), -610f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(-572f, -998f, 850f), vec3<f32>(266f, arg_3.b, 526f))))))));
    let var_1 = any(select(arg_2, arg_2, arg_2));
    let var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-363f, arg_0.a.c, -457f, arg_0.a.c), vec4<f32>(-131f, arg_0.a.c, arg_0.a.c, global1[_wgslsmith_index_u32(u_input.c.x, 8u)])))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, arg_3.b, arg_0.a.c, arg_0.a.c) * vec4<f32>(656f, arg_0.a.c, arg_0.a.c, global1[_wgslsmith_index_u32(0u, 8u)])), _wgslsmith_div_vec4_f32(vec4<f32>(-1331f, -117f, var_0.x, 677f), vec4<f32>(171f, 738f, 158f, -1186f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1427f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -247f)), arg_3.b, _wgslsmith_f_op_f32(-1197f * -1237f))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.a.c)) * -249f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_3.b), var_0.x, true)))), _wgslsmith_f_op_f32(step(1225f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-375f * var_0.x))))), func_1(arg_3, ~(~arg_0.a.a)).a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.a.c), _wgslsmith_f_op_f32(floor(arg_0.a.c)))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.a.c * arg_0.a.c)))))));
    let var_3 = ~(~arg_0.a.b.x) << (33391u % 32u);
    return Struct_1(firstLeadingBit(var_3 ^ var_3), vec2<u32>(_wgslsmith_mod_u32(~(~152061u), arg_0.a.a), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, _wgslsmith_mult_u32(52603u, u_input.c.x)), vec2<u32>(var_3, 40767u))), -1186f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(Struct_4(max(u_input.a.x, 0i), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.d, 17020u), 8u)])), 0u), select(vec2<bool>(true, true), select(vec2<bool>(all(vec2<bool>(false, false)), true), vec2<bool>(-62895i > u_input.b.x, false), vec2<bool>(true, true)), vec2<bool>(select(true, false, any(vec4<bool>(true, false, false, true))), true)), vec4<bool>(true, true, true, any(vec2<bool>(true, true)) | all(vec2<bool>(true, true))), Struct_4(_wgslsmith_mult_i32(~(-49408i), _wgslsmith_div_i32(_wgslsmith_div_i32(u_input.b.x, 8785i), abs(-1i))), 885f));
    let var_1 = abs(u_input.b);
    global1 = array<f32, 8>();
    let var_2 = select(select(vec2<bool>(!(var_1.x <= 17644i), !any(vec3<bool>(true, true, false))), vec2<bool>(false, true), true), vec2<bool>(true, all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false), true))), true);
    var var_3 = func_1(Struct_4(_wgslsmith_div_i32(select(var_1.x, 27893i, var_2.x), -var_1.x) ^ var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -106f))), ~(u_input.d ^ u_input.c.x));
    var var_4 = _wgslsmith_mult_i32((u_input.a.x ^ _wgslsmith_dot_vec3_i32(u_input.b >> (u_input.c % vec3<u32>(32u)), firstTrailingBit(vec3<i32>(var_1.x, var_1.x, var_1.x)))) >> (u_input.c.x % 32u), countOneBits(u_input.b.x));
    var var_5 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(327f, _wgslsmith_f_op_f32(-var_3.a.c), var_3.a.c, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 8u)]))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(343f, -445f, var_3.a.c, -664f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(1u, 8u)], var_0.c, var_0.c, global1[_wgslsmith_index_u32(4294967295u, 8u)])))))));
    var var_6 = _wgslsmith_f_op_f32(min(529f, -1643f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_5.x * global1[_wgslsmith_index_u32(21531u, 8u)]) - -929f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_5.zw));
}

