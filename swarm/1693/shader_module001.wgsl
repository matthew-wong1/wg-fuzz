struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: bool,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -15076i;

var<private> global1: array<vec2<bool>, 12> = array<vec2<bool>, 12>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true));

var<private> global2: array<f32, 5> = array<f32, 5>(-526f, -696f, 2001f, -773f, -576f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1) -> bool {
    var var_0 = global1[_wgslsmith_index_u32(~63605u, 12u)];
    var var_1 = any(vec3<bool>(select(true, arg_1.c, select(u_input.a, 1i, true) >= 2147483647i), !(_wgslsmith_dot_vec2_u32(vec2<u32>(57400u, 0u), vec2<u32>(1u, 1u)) == ~12156u), any(vec4<bool>(true, arg_0.x > arg_0.x, var_0.x, all(vec3<bool>(true, true, var_0.x))))));
    var var_2 = _wgslsmith_div_vec3_u32(abs(vec3<u32>(_wgslsmith_dot_vec2_u32(select(vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 45512u), global1[_wgslsmith_index_u32(20487u, 12u)]), select(vec2<u32>(102796u, 4294967295u), vec2<u32>(23487u, 41999u), global1[_wgslsmith_index_u32(30560u, 12u)])), 19261u, ~1u)), countOneBits(firstLeadingBit(select(~vec3<u32>(33199u, 4294967295u, 16271u), select(vec3<u32>(1u, 106668u, 0u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<bool>(var_0.x, arg_1.a.x, arg_1.a.x)), !vec3<bool>(arg_1.a.x, false, true)))));
    var var_3 = var_2.x;
    let var_4 = Struct_2(any(!(!select(vec4<bool>(var_0.x, true, true, false), vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(var_0.x, false, true, var_0.x)))));
    return any(select(select(!select(vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, var_4.a, var_4.a), arg_1.a.x), select(select(vec3<bool>(var_4.a, false, false), vec3<bool>(false, var_4.a, false), var_0.x), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, var_0.x, var_0.x)), all(vec3<bool>(var_4.a, var_0.x, arg_1.a.x))), any(select(vec3<bool>(true, var_0.x, false), vec3<bool>(true, false, true), true))), vec3<bool>(_wgslsmith_f_op_f32(step(-130f, -607f)) <= 816f, _wgslsmith_add_u32(var_2.x, var_2.x) >= 0u, true), vec3<bool>(false, true, false | var_0.x)));
}

fn func_2(arg_0: vec2<bool>) -> vec2<u32> {
    let var_0 = vec3<bool>(select(false, func_3(~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(26369i, u_input.a, -15948i)), Struct_1(vec2<bool>(arg_0.x, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(1u, 5u)], 1230f)), false)), arg_0.x), true, arg_0.x);
    var var_1 = global1[_wgslsmith_index_u32(firstLeadingBit(firstLeadingBit(~firstLeadingBit(70419u))) & _wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~select(25699u, 4294967295u, arg_0.x)), max(firstTrailingBit(vec2<u32>(4294967295u, 113481u)), ~(~vec2<u32>(36688u, 51935u)))), 12u)];
    global2 = array<f32, 5>();
    global0 = -abs(_wgslsmith_dot_vec2_i32(-select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, -27799i), arg_0.x), _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-27491i, 1i)), abs(vec2<i32>(u_input.a, 2147483647i)))));
    var var_2 = 4294967295u;
    return select(vec2<u32>(4294967295u, ~firstTrailingBit(4294967295u)), select(vec2<u32>(1u, 1u), ~vec2<u32>(min(4294967295u, 4294967295u), ~12060u), vec2<bool>(true, false)), !arg_0);
}

fn func_4(arg_0: u32, arg_1: vec2<u32>) -> Struct_2 {
    global0 = u_input.a & _wgslsmith_add_i32(u_input.a, u_input.a);
    var var_0 = Struct_2(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.a & u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(2147483647i, -2147483647i))), u_input.a, 1i) >= -u_input.a);
    global1 = array<vec2<bool>, 12>();
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, max(_wgslsmith_mult_u32(arg_0, 0u), func_2(select(!vec2<bool>(var_0.a, var_0.a), select(vec2<bool>(true, var_0.a), vec2<bool>(var_0.a, var_0.a), var_0.a), global1[_wgslsmith_index_u32(arg_1.x | arg_1.x, 12u)])).x), 1u), 5u)];
    var var_2 = Struct_1(select(vec2<bool>(false, var_0.a), global1[_wgslsmith_index_u32(15563u, 12u)], global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 0u, arg_0), vec3<u32>(0u, 0u, 48919u)) << ((8434u | arg_0) % 32u)), 12u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1009f)), _wgslsmith_f_op_f32(min(2737f, global2[_wgslsmith_index_u32(39749u, 5u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_1.x, 5u)] + -708f) + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 5u)]))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_0, 5u)]), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(28172u, 5u)] * global2[_wgslsmith_index_u32(1u, 5u)])) - vec2<f32>(-1515f, global2[_wgslsmith_index_u32(arg_1.x, 5u)]))), false);
    return Struct_2(true);
}

fn func_1(arg_0: i32) -> Struct_2 {
    global2 = array<f32, 5>();
    global2 = array<f32, 5>();
    let var_0 = u_input.a;
    let var_1 = ~_wgslsmith_dot_vec3_i32(~(~(~vec3<i32>(19367i, arg_0, var_0))), vec3<i32>(arg_0, countOneBits(var_0 >> (74068u % 32u)), -(-1i & var_0)));
    let var_2 = 4294967295u;
    return func_4(~_wgslsmith_div_u32(~(1u << (var_2 % 32u)), var_2), vec2<u32>(abs(4294967295u | var_2), 1u) | ~(_wgslsmith_sub_vec2_u32(vec2<u32>(var_2, var_2), vec2<u32>(4294967295u, 1u)) ^ func_2(vec2<bool>(false, false))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(~u_input.a, abs(u_input.a)), reverseBits(-45072i));
    var var_0 = func_1(1i);
    var var_1 = func_4(4294967295u, vec2<u32>(reverseBits(firstTrailingBit(min(1u, 57171u))), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(max(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 48047u)), select(vec2<u32>(1u, 1u), vec2<u32>(97963u, 0u), vec2<bool>(var_0.a, var_0.a))), ~79173u)));
    var var_2 = func_4(max(~_wgslsmith_mult_u32(1u, countOneBits(62656u)), ~0u), vec2<u32>(firstLeadingBit(30148u), 1u));
    var var_3 = !any(vec3<bool>(!(var_0.a & false), (0i == u_input.a) | (true || var_2.a), func_1(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 42316i, u_input.a), vec3<i32>(u_input.a, -40766i, -21792i))).a));
    var var_4 = global2[_wgslsmith_index_u32(~(~(~func_2(select(vec2<bool>(false, true), global1[_wgslsmith_index_u32(32968u, 12u)], var_1.a)).x)), 5u)];
    var var_5 = select(vec3<bool>(true, func_3(firstTrailingBit(vec3<i32>(u_input.a, u_input.a, u_input.a)) & -vec3<i32>(21485i, u_input.a, u_input.a), Struct_1(vec2<bool>(false, var_2.a), vec2<f32>(110f, global2[_wgslsmith_index_u32(4294967295u, 5u)]), !var_1.a)), var_0.a), !vec3<bool>(any(vec3<bool>(false, false, var_0.a)), (global2[_wgslsmith_index_u32(62653u, 5u)] != 875f) == false, true), var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(~max(firstLeadingBit(vec4<i32>(u_input.a, -1i, -46324i, u_input.a)), vec4<i32>(u_input.a, -1i, u_input.a, u_input.a)) << (_wgslsmith_add_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(51990u, 1u, 78207u, 0u), vec4<u32>(1u, 3488u, 4294967295u, 29823u)), max(vec4<u32>(10775u, 27037u, 1u, 2746u), vec4<u32>(65236u, 31722u, 4294967295u, 25550u)))) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(~reverseBits(4294967295u), 5u)], _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(19333u, 5u)], _wgslsmith_f_op_f32(f32(-1f) * -216f))))), firstTrailingBit(firstLeadingBit(countOneBits(vec3<i32>(u_input.a, u_input.a, u_input.a)))), ~1u, _wgslsmith_mult_vec2_u32(vec2<u32>(~min(18017u, 11160u), ~29422u), vec2<u32>(1u, 1u)));
}

