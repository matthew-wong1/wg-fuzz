struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec2<f32>,
    d: i32,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 28> = array<vec4<u32>, 28>(vec4<u32>(75731u, 22894u, 4294967295u, 4294967295u), vec4<u32>(56733u, 4294967295u, 0u, 0u), vec4<u32>(78707u, 0u, 4294967295u, 19203u), vec4<u32>(1u, 1u, 0u, 45822u), vec4<u32>(57263u, 44075u, 4294967295u, 34689u), vec4<u32>(21220u, 4294967295u, 2174u, 1u), vec4<u32>(4294967295u, 4294967295u, 68072u, 104587u), vec4<u32>(45625u, 5998u, 1u, 4294967295u), vec4<u32>(1u, 0u, 45888u, 4294967295u), vec4<u32>(9058u, 37084u, 4294967295u, 7408u), vec4<u32>(21352u, 29737u, 4294967295u, 38197u), vec4<u32>(4294967295u, 33159u, 21229u, 15943u), vec4<u32>(4294967295u, 6105u, 1u, 0u), vec4<u32>(17509u, 21714u, 7897u, 1u), vec4<u32>(20682u, 13148u, 23842u, 41665u), vec4<u32>(35852u, 75642u, 1u, 0u), vec4<u32>(7640u, 48662u, 0u, 4294967295u), vec4<u32>(1u, 1u, 50852u, 36766u), vec4<u32>(35769u, 17185u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 15657u, 64353u), vec4<u32>(4294967295u, 0u, 0u, 4294967295u), vec4<u32>(1u, 0u, 4294967295u, 47561u), vec4<u32>(4294967295u, 6080u, 4294967295u, 19323u), vec4<u32>(0u, 1u, 1u, 885u), vec4<u32>(1u, 61860u, 0u, 4294967295u), vec4<u32>(1u, 20032u, 4294967295u, 0u), vec4<u32>(0u, 58972u, 1u, 40232u), vec4<u32>(0u, 1u, 1u, 31976u));

var<private> global1: array<i32, 12> = array<i32, 12>(-1i, 1i, 2147483647i, 1i, 35845i, -32929i, 5286i, -1i, 52611i, 1i, 2147483647i, -53369i);

var<private> global2: array<Struct_3, 13>;

var<private> global3: array<vec4<u32>, 20> = array<vec4<u32>, 20>(vec4<u32>(1u, 94246u, 30473u, 8002u), vec4<u32>(32017u, 6945u, 1u, 4294967295u), vec4<u32>(14570u, 7061u, 0u, 40720u), vec4<u32>(29354u, 16678u, 93064u, 1u), vec4<u32>(0u, 1u, 0u, 32344u), vec4<u32>(102514u, 70526u, 4294967295u, 60974u), vec4<u32>(1u, 43841u, 4294967295u, 90050u), vec4<u32>(4294967295u, 0u, 4294967295u, 1u), vec4<u32>(1u, 55912u, 0u, 1u), vec4<u32>(0u, 27586u, 4294967295u, 14470u), vec4<u32>(4294967295u, 4294967295u, 0u, 52015u), vec4<u32>(0u, 1u, 4294967295u, 1u), vec4<u32>(4294967295u, 18651u, 0u, 65144u), vec4<u32>(4294967295u, 3735u, 0u, 15921u), vec4<u32>(1u, 4294967295u, 8279u, 80104u), vec4<u32>(0u, 4294967295u, 22876u, 38402u), vec4<u32>(4294967295u, 38832u, 32769u, 36477u), vec4<u32>(40372u, 21456u, 4294967295u, 4294967295u), vec4<u32>(22784u, 25621u, 0u, 1u), vec4<u32>(16873u, 1u, 4294967295u, 16477u));

var<private> global4: array<vec3<u32>, 5> = array<vec3<u32>, 5>(vec3<u32>(80570u, 24461u, 1u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(22340u, 0u, 10994u), vec3<u32>(0u, 10962u, 4294967295u), vec3<u32>(49592u, 40004u, 15841u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = select(vec4<u32>(u_input.b.x, _wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, u_input.b.x), firstTrailingBit(1u)), ~68966u, _wgslsmith_mult_u32(u_input.b.x, u_input.b.x) ^ (u_input.b.x ^ u_input.b.x)) & global3[_wgslsmith_index_u32(12857u, 20u)], firstTrailingBit(~global3[_wgslsmith_index_u32(u_input.b.x, 20u)]) ^ vec4<u32>(u_input.b.x, ~(~u_input.b.x), 4294967295u, _wgslsmith_sub_u32(~1u, 1u)), vec4<bool>(any(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), true), true)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), arg_0 >= 279f)), !all(vec3<bool>(true, true, true)), true));
    var var_1 = ~select(var_0.xw, var_0.zx, select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, false), true), select(true, true, false)), false));
    let var_2 = global2[_wgslsmith_index_u32(u_input.b.x, 13u)];
    global2 = array<Struct_3, 13>();
    let var_3 = var_0.x;
    return var_0.x;
}

fn func_4(arg_0: Struct_4, arg_1: vec2<bool>) -> f32 {
    global2 = array<Struct_3, 13>();
    var var_0 = Struct_2(Struct_1(~74638u, ~1u, true, any(!vec3<bool>(false, false, arg_1.x)), ~(u_input.b.x & u_input.b.x)), vec3<u32>(32960u, firstLeadingBit(~arg_0.a.x), ~33002u), vec2<f32>(_wgslsmith_div_f32(-197f, 430f), -213f), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(4422u, 12u)]), ~vec3<i32>(global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(u_input.b.x, 12u)], u_input.c.x)) ^ ~(-(~(-1i))), select(select(!(!vec3<bool>(arg_1.x, true, true)), vec3<bool>(any(vec3<bool>(arg_1.x, true, arg_1.x)), arg_1.x, arg_1.x), vec3<bool>(select(arg_1.x, true, arg_1.x), all(vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), true)), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(true, arg_1.x, false)), select(vec3<bool>(true, false, false), vec3<bool>(false, arg_1.x, true), vec3<bool>(arg_1.x, arg_1.x, false))), vec3<bool>(false, !arg_1.x, arg_1.x && arg_1.x), vec3<bool>(false, arg_1.x, true)), (u_input.b.x | _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b.x, 4294967295u, 1333u), vec4<u32>(arg_0.a.x, 78967u, arg_0.a.x, u_input.b.x))) < (arg_0.a.x | u_input.b.x)));
    var var_1 = true;
    var var_2 = arg_1.x;
    global4 = array<vec3<u32>, 5>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(var_0.c.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(998f)))))))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(259f)))))))));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1813f * 1427f), 801f));
    var var_1 = Struct_4(vec4<u32>(~(~u_input.b.x), _wgslsmith_add_u32(31692u, _wgslsmith_add_u32(u_input.b.x, 1u)), ~_wgslsmith_mult_u32(1u, u_input.b.x), ~firstTrailingBit(31889u)) << (_wgslsmith_div_vec4_u32(~(~global0[_wgslsmith_index_u32(u_input.b.x, 28u)]), vec4<u32>(~u_input.b.x, ~4294967295u, ~u_input.b.x, u_input.b.x)) % vec4<u32>(32u)));
    let var_2 = Struct_1(select(_wgslsmith_div_u32(~max(23908u, var_1.a.x), _wgslsmith_dot_vec3_u32(global4[_wgslsmith_index_u32(u_input.b.x, 5u)], vec3<u32>(6740u, var_1.a.x, 3637u))), firstLeadingBit(abs(var_1.a.x)), true), var_1.a.x & 1u, any(vec3<bool>(true, true, true)), any(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true)))), _wgslsmith_sub_u32(u_input.b.x, ~_wgslsmith_clamp_u32(16223u, 11270u, _wgslsmith_div_u32(1281u, 40569u))));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1654f, var_0, var_0)))) * vec3<f32>(_wgslsmith_f_op_f32(exp2(var_0)), _wgslsmith_f_op_f32(select(-1082f, _wgslsmith_f_op_f32(-242f * -1196f), var_2.d)), var_0)) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, var_0) - 240f)), _wgslsmith_f_op_f32(func_4(Struct_4(global0[_wgslsmith_index_u32(func_3(var_0), 28u)]), !(!vec2<bool>(var_2.d, true)))), _wgslsmith_f_op_f32(min(2519f, _wgslsmith_f_op_f32(exp2(var_0))))));
    let var_4 = select(vec3<bool>(false, var_3.x != _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-1000f)))), any(select(vec3<bool>(true, var_2.d, true), vec3<bool>(true, false, var_2.d), var_2.c))), !(!vec3<bool>(true, !var_2.c, -27995i <= u_input.c.x)), var_2.c);
    return var_2;
}

fn func_1(arg_0: vec2<u32>) -> i32 {
    var var_0 = Struct_2(func_2(), ~(global4[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_f32(sign(-324f))), 5u)] << (~global4[_wgslsmith_index_u32(~arg_0.x, 5u)] % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-717f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-284f, 1000f))))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(-791f, -188f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(119f, -175f)))))), -(~(-u_input.a) | 1i), !select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true)));
    let var_1 = global1[_wgslsmith_index_u32(u_input.b.x, 12u)];
    global3 = array<vec4<u32>, 20>();
    global1 = array<i32, 12>();
    let var_2 = var_0.d;
    return ~(-_wgslsmith_dot_vec2_i32(u_input.c, u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 13>();
    global4 = array<vec3<u32>, 5>();
    global0 = array<vec4<u32>, 28>();
    var var_0 = ~(-vec3<i32>(36i, func_1(vec2<u32>(u_input.b.x, 0u)), -2147483647i));
    let var_1 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(firstTrailingBit(_wgslsmith_add_i32(2147483647i, var_0.x) << (_wgslsmith_sub_u32(4294967295u, u_input.b.x) % 32u)), global1[_wgslsmith_index_u32(0u, 12u)], 2147483647i), 250f, vec3<i32>(-1i, -2147483647i, _wgslsmith_add_i32(25009i, -50702i)));
}

