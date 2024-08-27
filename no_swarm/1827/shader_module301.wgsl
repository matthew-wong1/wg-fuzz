struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(0i, -250f, vec2<u32>(4294967295u, 12207u)), Struct_1(-70931i, -1064f, vec2<u32>(11933u, 12045u)), Struct_1(19801i, 1878f, vec2<u32>(0u, 5651u)), Struct_1(-1i, -1451f, vec2<u32>(0u, 0u)), Struct_1(-44019i, 132f, vec2<u32>(33821u, 4294967295u)), Struct_1(1i, 773f, vec2<u32>(11817u, 1u)), Struct_1(1i, 1223f, vec2<u32>(1u, 1u)), Struct_1(45516i, -2431f, vec2<u32>(4294967295u, 4294967295u)), Struct_1(10070i, 980f, vec2<u32>(1u, 1u)), Struct_1(0i, 398f, vec2<u32>(29787u, 4294967295u)), Struct_1(39954i, -466f, vec2<u32>(18402u, 15878u)), Struct_1(-19765i, 555f, vec2<u32>(20050u, 133346u)), Struct_1(29864i, -1000f, vec2<u32>(65915u, 1u)), Struct_1(i32(-2147483648), 422f, vec2<u32>(0u, 4294967295u)), Struct_1(0i, -686f, vec2<u32>(1u, 33036u)), Struct_1(-3618i, 688f, vec2<u32>(1u, 4294967295u)), Struct_1(-1i, -1027f, vec2<u32>(7317u, 48983u)), Struct_1(1i, 1000f, vec2<u32>(4294967295u, 0u)), Struct_1(47441i, 554f, vec2<u32>(92072u, 4294967295u)), Struct_1(27105i, 404f, vec2<u32>(14696u, 0u)), Struct_1(2147483647i, -510f, vec2<u32>(0u, 0u)), Struct_1(-7102i, -514f, vec2<u32>(0u, 37730u)), Struct_1(i32(-2147483648), 2196f, vec2<u32>(23762u, 1u)), Struct_1(i32(-2147483648), -137f, vec2<u32>(0u, 71220u)), Struct_1(24788i, -640f, vec2<u32>(1u, 62009u)), Struct_1(1i, -153f, vec2<u32>(4294967295u, 40176u)), Struct_1(-1i, -461f, vec2<u32>(88762u, 106089u)), Struct_1(2147483647i, 352f, vec2<u32>(28203u, 29247u)), Struct_1(36104i, 2004f, vec2<u32>(53349u, 27659u)), Struct_1(1i, 584f, vec2<u32>(65498u, 23779u)), Struct_1(-15120i, -1231f, vec2<u32>(40183u, 0u)));

var<private> global1: array<u32, 5>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    global1 = array<u32, 5>();
    global0 = array<Struct_1, 31>();
    let var_0 = global0[_wgslsmith_index_u32(~(~u_input.d), 31u)];
    var var_1 = global0[_wgslsmith_index_u32(~firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(var_0.c.x, 5u)], global1[_wgslsmith_index_u32(0u, 5u)]), vec2<u32>(1u, var_0.c.x)), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(u_input.d, 5u)]), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d, 5u)], 5u)], var_0.c.x))), 1u)), 31u)];
    var var_2 = _wgslsmith_clamp_u32(min(_wgslsmith_mult_u32(0u << (select(u_input.d, u_input.d, true) % 32u), 125877u), _wgslsmith_div_u32(4294967295u, global1[_wgslsmith_index_u32(max(~var_1.c.x, abs(global1[_wgslsmith_index_u32(19713u, 5u)])), 5u)])), 1u, var_1.c.x);
    return _wgslsmith_dot_vec2_u32(~vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(15147u, u_input.d, 0u, 1u), vec4<u32>(5609u, 2947u, 1u, var_1.c.x)), _wgslsmith_add_u32(_wgslsmith_sub_u32(var_0.c.x, 53157u), global1[_wgslsmith_index_u32(u_input.d, 5u)] << (1u % 32u))), var_0.c);
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> u32 {
    global0 = array<Struct_1, 31>();
    global0 = array<Struct_1, 31>();
    let var_0 = ~vec4<u32>(arg_1.c.x, select(31025u, func_3(vec3<bool>(false, false, true)), all(vec4<bool>(false, true, true, true)) & any(vec2<bool>(false, false))), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~(~65754u), 5u)], 5u)] << (~global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(arg_1.c.x, 5u)], 5u)] % 32u), 129887u);
    let var_1 = Struct_1(arg_1.a, _wgslsmith_f_op_f32(floor(-347f)), ~_wgslsmith_add_vec2_u32(vec2<u32>(~1u, 4294967295u), vec2<u32>(~37338u, _wgslsmith_clamp_u32(var_0.x, global1[_wgslsmith_index_u32(u_input.d, 5u)], var_0.x))));
    global1 = array<u32, 5>();
    return var_1.c.x;
}

fn func_4(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: u32) -> i32 {
    var var_0 = arg_2;
    let var_1 = _wgslsmith_add_vec2_u32(arg_1, countOneBits(~(~var_0.c)) & ~arg_2.c);
    var var_2 = all(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(850f, 1010f, 1000f) - vec3<f32>(166f, -743f, -1095f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(171f, 700f, 645f), vec3<f32>(-1129f, arg_2.b, 1821f), vec3<bool>(true, false, true)))), all(vec2<bool>(true, true))))));
    var var_4 = global0[_wgslsmith_index_u32(~(57544u | var_0.c.x), 31u)];
    return var_0.a;
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = abs(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -681f), _wgslsmith_f_op_f32(-1942f * -1718f)))), arg_0.c, Struct_1(1i, _wgslsmith_f_op_f32(select(arg_0.b, -131f, arg_0.b != arg_0.b)), ~vec2<u32>(arg_0.c.x, u_input.d)), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(arg_0.c.x, 5u)], global1[_wgslsmith_index_u32(55017u, 5u)]), func_2(arg_0.b, Struct_1(u_input.a.x, arg_0.b, arg_0.c))), arg_0.c)));
    var var_1 = func_3(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false)), true));
    var var_2 = Struct_1(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.b)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(arg_0.b)))), -659f))), ~(~(vec2<u32>(0u, u_input.d) >> (arg_0.c % vec2<u32>(32u)))));
    var var_3 = _wgslsmith_sub_vec2_u32(min(vec2<u32>(firstLeadingBit(u_input.d), _wgslsmith_mod_u32(arg_0.c.x, 5526u)), ~vec2<u32>(arg_0.c.x, 93003u) << (~arg_0.c % vec2<u32>(32u))) >> (vec2<u32>(~(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 5u)], 5u)] ^ 71115u), arg_0.c.x) % vec2<u32>(32u)), vec2<u32>(firstTrailingBit(0u), ~(~4294967295u)));
    let var_4 = _wgslsmith_add_vec4_u32(vec4<u32>(1u, abs(var_2.c.x), 77025u, 75525u), firstTrailingBit(select(vec4<u32>(92547u << (var_3.x % 32u), func_2(-1150f, arg_0), func_3(vec3<bool>(false, false, true)), select(global1[_wgslsmith_index_u32(37646u, 5u)], 53378u, false)), _wgslsmith_div_vec4_u32(vec4<u32>(0u, var_3.x, var_2.c.x, 35911u), vec4<u32>(arg_0.c.x, global1[_wgslsmith_index_u32(0u, 5u)], var_3.x, var_2.c.x)) | ~vec4<u32>(34738u, 31884u, 4294967295u, var_2.c.x), vec4<bool>(true, true, all(vec4<bool>(true, false, false, true)), true))));
    return 31046i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(!any(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), select(false, false, true))), true, true);
    var var_1 = -func_1(global0[_wgslsmith_index_u32(~min(0u, 1u), 31u)]) << (~(~(~(~4294967295u))) % 32u);
    var var_2 = !(!select(vec3<bool>(true, true, true), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, true, var_0.x), select(vec3<bool>(false, true, var_0.x), vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(true, false, var_0.x))), vec3<bool>(var_0.x == var_0.x, true, true)));
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.d, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 22041u, 74998u), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 5u)], 5u)], 2685u, 58813u)), 96210u)), 1u), 31u)];
    var_0 = vec3<bool>(!all(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, var_2.x, true, false), false)), var_0.x & true, true);
    let var_4 = !any(vec2<bool>(select(var_2.x, all(vec3<bool>(var_0.x, var_2.x, var_2.x)), all(var_0.zx)), !any(var_0.zz)));
    let var_5 = Struct_1(0i, _wgslsmith_f_op_f32(step(1197f, _wgslsmith_f_op_f32(-var_3.b))), ~select(var_3.c, vec2<u32>(87942u, 1u), !(!var_2.x)));
    let var_6 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -414f), var_5.b, _wgslsmith_f_op_f32(-var_3.b))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_mult_vec2_i32(abs(vec2<i32>(18288i, var_5.a)), -u_input.c >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(103650u, u_input.d), var_3.c, vec2<u32>(4294967295u, 1u)) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -860f)), u_input.d, _wgslsmith_f_op_f32(ceil(var_5.b)));
}

