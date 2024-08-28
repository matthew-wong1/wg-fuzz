struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: i32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 6> = array<Struct_5, 6>(Struct_5(vec4<i32>(2147483647i, 0i, 38094i, -13251i), vec4<i32>(568i, i32(-2147483648), -49123i, -1i), Struct_1(115313u, 12443u, vec3<u32>(7045u, 51406u, 40992u))), Struct_5(vec4<i32>(-21051i, 1i, i32(-2147483648), 109187i), vec4<i32>(2147483647i, 2147483647i, -36398i, 2147483647i), Struct_1(4294967295u, 4294967295u, vec3<u32>(1u, 1u, 29985u))), Struct_5(vec4<i32>(-10564i, -1i, -1i, -1i), vec4<i32>(2147483647i, 0i, i32(-2147483648), 0i), Struct_1(65286u, 0u, vec3<u32>(30784u, 938u, 4294967295u))), Struct_5(vec4<i32>(1i, -12130i, -8914i, 1291i), vec4<i32>(-8816i, 60880i, i32(-2147483648), 26323i), Struct_1(0u, 89092u, vec3<u32>(33234u, 1u, 24347u))), Struct_5(vec4<i32>(26119i, i32(-2147483648), i32(-2147483648), -11408i), vec4<i32>(2147483647i, 28638i, 2147483647i, 2147483647i), Struct_1(61694u, 4970u, vec3<u32>(39016u, 6972u, 11448u))), Struct_5(vec4<i32>(0i, -47014i, 37608i, -11914i), vec4<i32>(0i, 1i, 2147483647i, 21546i), Struct_1(4294967295u, 1u, vec3<u32>(16653u, 23758u, 4294967295u))));

var<private> global1: array<u32, 2> = array<u32, 2>(18821u, 1u);

var<private> global2: array<vec2<i32>, 27>;

var<private> global3: vec3<i32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<u32>) -> u32 {
    let var_0 = Struct_2(-10929i, Struct_1(global1[_wgslsmith_index_u32(arg_0.x, 2u)], firstLeadingBit(4294967295u), arg_0.wzx));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-259f, -714f, -275f) + vec3<f32>(-1014f, -1236f, 2009f))))))));
    global3 = _wgslsmith_mult_vec3_i32(vec3<i32>(countOneBits(_wgslsmith_dot_vec2_i32(global3.zy, u_input.b >> (var_0.b.c.zz % vec2<u32>(32u)))), _wgslsmith_sub_i32(-(u_input.b.x ^ var_0.a), reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(26961i, var_0.a), vec2<i32>(13773i, 10212i)))), u_input.b.x), (~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, var_0.a, global3.x), vec3<i32>(2147483647i, -2147483647i, u_input.b.x)) & -_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.a, 1i, u_input.b.x), vec3<i32>(var_0.a, -1i, -2147483647i))) << (countOneBits(arg_0.xyz) % vec3<u32>(32u)));
    var var_2 = var_0;
    var var_3 = (true & (all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true))) & true)) || !all(select(vec2<bool>(true, true), vec2<bool>(true, true), u_input.a > 30769u));
    return _wgslsmith_clamp_u32(u_input.a, abs(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_2.b.c.x, u_input.a, arg_0.x), arg_0), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, u_input.a), vec2<u32>(global1[_wgslsmith_index_u32(arg_0.x, 2u)], var_0.b.b))) ^ ~(~global1[_wgslsmith_index_u32(69909u, 2u)])), _wgslsmith_add_u32(1u, ~(~(~global1[_wgslsmith_index_u32(119945u, 2u)]))));
}

fn func_2(arg_0: u32, arg_1: vec2<f32>, arg_2: u32, arg_3: Struct_3) -> vec3<f32> {
    var var_0 = Struct_4(arg_3.a.a, 2147483647i);
    let var_1 = arg_3;
    var var_2 = ~func_3(~(vec4<u32>(arg_0, u_input.a, 1u, global1[_wgslsmith_index_u32(var_1.a.b.c.x, 2u)]) & vec4<u32>(arg_0, 0u, arg_3.a.b.b, global1[_wgslsmith_index_u32(23186u, 2u)]))) >> (39559u % 32u);
    let var_3 = -2539i;
    var_2 = ~(~_wgslsmith_sub_u32(arg_2, ~abs(0u)));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * _wgslsmith_f_op_f32(760f * 1000f)) - _wgslsmith_f_op_f32(select(arg_1.x, arg_1.x, all(vec2<bool>(true, true))))), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - -648f)));
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 2026f, -1450f))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1378f, 371f, 1390f), vec3<f32>(-763f, 208f, -1638f)), _wgslsmith_f_op_vec3_f32(func_2(global1[_wgslsmith_index_u32(arg_0, 2u)], vec2<f32>(1311f, -318f), 95941u, Struct_3(Struct_2(u_input.b.x, Struct_1(arg_0, 1u, vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 2u)], 2u)], 41017u))))))), true)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-340f, -550f, 364f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(968f, -658f, -106f) * vec3<f32>(128f, -104f, 1526f)), vec3<f32>(-2112f, -811f, -1283f)))));
    var var_1 = _wgslsmith_f_op_f32(select(457f, _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-461f))))), true));
    var var_2 = Struct_5(~vec4<i32>(_wgslsmith_clamp_i32(~53070i, -40859i, min(0i, u_input.b.x)), countOneBits(_wgslsmith_dot_vec2_i32(global3.zy, vec2<i32>(-2147483647i, u_input.b.x))), u_input.b.x, u_input.b.x), _wgslsmith_mod_vec4_i32(reverseBits(~(vec4<i32>(u_input.b.x, -10590i, global3.x, global3.x) & vec4<i32>(2147483647i, global3.x, global3.x, global3.x))), _wgslsmith_mod_vec4_i32(select(vec4<i32>(global3.x, u_input.b.x, -44630i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -2147483647i), false) | max(vec4<i32>(u_input.b.x, -1i, u_input.b.x, global3.x), vec4<i32>(u_input.b.x, global3.x, u_input.b.x, 45592i)), max(vec4<i32>(global3.x, 0i, 1i, u_input.b.x), vec4<i32>(20467i, u_input.b.x, global3.x, -10617i)) ^ (vec4<i32>(-8834i, 2147483647i, u_input.b.x, -12049i) ^ vec4<i32>(u_input.b.x, 0i, -1i, 1i)))), Struct_1(1u, ~(33517u | ~arg_0), vec3<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(arg_0, 1u, u_input.a)), vec3<u32>(global1[_wgslsmith_index_u32(1u, 2u)], u_input.a, 1u) | vec3<u32>(25113u, 43268u, 55771u)), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, reverseBits(12992u)), 2u)], global1[_wgslsmith_index_u32(arg_0, 2u)])));
    let var_3 = !(!(!vec3<bool>(true, all(vec2<bool>(false, false)), true)));
    let var_4 = u_input.a;
    return Struct_2(~(~u_input.b.x), Struct_1(var_2.c.a, arg_0, ~vec3<u32>(u_input.a, 1u, var_4) << (var_2.c.c % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_1(global1[_wgslsmith_index_u32(44441u, 2u)] & ~(u_input.a << (4294967295u % 32u))));
    var var_1 = -263f;
    let var_2 = Struct_4(-(-51295i >> (var_0.a.b.a % 32u)), global3.x);
    let var_3 = true;
    global0 = array<Struct_5, 6>();
    let var_4 = select(vec2<bool>(true, true), vec2<bool>(!(!var_3), false), select(!select(vec2<bool>(true, true), select(vec2<bool>(var_3, true), vec2<bool>(true, false), vec2<bool>(false, var_3)), any(vec4<bool>(false, var_3, true, true))), !vec2<bool>(any(vec3<bool>(true, var_3, false)), var_3), select(vec2<bool>(false, var_3), vec2<bool>(true, true), all(select(vec2<bool>(false, true), vec2<bool>(var_3, true), var_3)))));
    var var_5 = _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, min(-var_0.a.a, ~global3.x) << (func_1(_wgslsmith_sub_u32(var_0.a.b.b, 4294967295u)).b.a % 32u), global3.x), vec3<i32>(-firstTrailingBit(abs(0i)), u_input.b.x, max(var_0.a.a >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 2u)], 2u)] % 32u), 1i) << (u_input.a % 32u)));
    global2 = array<vec2<i32>, 27>();
    global0 = array<Struct_5, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-2147483647i, 36297i, var_5.x));
}

