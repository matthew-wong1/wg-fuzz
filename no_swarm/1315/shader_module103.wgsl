struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: u32,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, false);

var<private> global1: array<i32, 26> = array<i32, 26>(i32(-2147483648), 9539i, 8996i, 2147483647i, 2147483647i, -13852i, i32(-2147483648), 138i, -9975i, i32(-2147483648), 1i, i32(-2147483648), -16888i, -13029i, i32(-2147483648), -31730i, 18326i, 15329i, 2147483647i, 0i, 43371i, -1i, -12320i, -1247i, 17542i, 21651i);

var<private> global2: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(Struct_1(true), vec4<f32>(2354f, -295f, -345f, 1000f), 37417u, vec4<u32>(1u, 7667u, 15527u, 4294967295u), Struct_1(true)), Struct_2(Struct_1(true), vec4<f32>(144f, 751f, 1389f, 701f), 0u, vec4<u32>(30931u, 60865u, 4294967295u, 6012u), Struct_1(true)), Struct_2(Struct_1(true), vec4<f32>(797f, -1212f, -151f, 713f), 0u, vec4<u32>(51058u, 0u, 1u, 13023u), Struct_1(false)), Struct_2(Struct_1(true), vec4<f32>(1780f, 587f, -189f, 106f), 464u, vec4<u32>(85988u, 4294967295u, 1u, 36746u), Struct_1(false)), Struct_2(Struct_1(false), vec4<f32>(763f, -475f, -1612f, -275f), 22951u, vec4<u32>(1233u, 1u, 424u, 0u), Struct_1(false)), Struct_2(Struct_1(false), vec4<f32>(1000f, 1480f, 931f, -538f), 1785u, vec4<u32>(1u, 2133u, 1u, 26512u), Struct_1(false)), Struct_2(Struct_1(true), vec4<f32>(-1414f, 198f, 420f, -1000f), 8925u, vec4<u32>(1u, 0u, 21331u, 81142u), Struct_1(false)), Struct_2(Struct_1(false), vec4<f32>(-599f, -1121f, 578f, -1260f), 1u, vec4<u32>(15395u, 72031u, 57806u, 1u), Struct_1(false)), Struct_2(Struct_1(false), vec4<f32>(1366f, 1000f, 2188f, 1625f), 0u, vec4<u32>(4294967295u, 29652u, 4294967295u, 33403u), Struct_1(true)), Struct_2(Struct_1(false), vec4<f32>(1000f, -722f, -481f, 797f), 4294967295u, vec4<u32>(1u, 4294967295u, 103886u, 0u), Struct_1(true)), Struct_2(Struct_1(false), vec4<f32>(-2066f, -1000f, -733f, 1561f), 7303u, vec4<u32>(7833u, 15135u, 111613u, 32298u), Struct_1(true)), Struct_2(Struct_1(true), vec4<f32>(-489f, 389f, -1258f, -1631f), 46916u, vec4<u32>(0u, 4294967295u, 0u, 4294967295u), Struct_1(false)), Struct_2(Struct_1(true), vec4<f32>(1000f, 673f, 1206f, 1000f), 11266u, vec4<u32>(4294967295u, 77625u, 29925u, 51050u), Struct_1(false)), Struct_2(Struct_1(false), vec4<f32>(-1123f, 410f, -1905f, -1000f), 1u, vec4<u32>(34051u, 1u, 37884u, 1u), Struct_1(false)), Struct_2(Struct_1(true), vec4<f32>(787f, 538f, 612f, -289f), 33672u, vec4<u32>(0u, 1u, 0u, 12012u), Struct_1(true)), Struct_2(Struct_1(true), vec4<f32>(-1000f, 2041f, 2166f, -816f), 1u, vec4<u32>(25759u, 0u, 0u, 4294967295u), Struct_1(true)), Struct_2(Struct_1(true), vec4<f32>(219f, -1874f, -451f, 1122f), 15371u, vec4<u32>(27235u, 1u, 1u, 159873u), Struct_1(true)), Struct_2(Struct_1(true), vec4<f32>(-195f, -3207f, -640f, -1337f), 25110u, vec4<u32>(37537u, 40139u, 56892u, 30486u), Struct_1(false)));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: f32) -> u32 {
    global0 = vec3<bool>(global0.x, global0.x && select(!global0.x, global0.x, !any(vec3<bool>(true, global0.x, true))), false);
    let var_0 = global1[_wgslsmith_index_u32(arg_0.x, 26u)];
    return 0u;
}

fn func_1() -> Struct_3 {
    return Struct_3(~vec2<u32>(~4294967295u << (func_2(vec2<u32>(32358u, 29368u), vec2<f32>(1358f, 1000f), Struct_3(vec2<u32>(0u, 43656u)), -447f) % 32u), 1u));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_2) -> vec4<i32> {
    let var_0 = arg_1;
    global2 = array<Struct_2, 18>();
    var var_1 = firstLeadingBit(_wgslsmith_mult_u32(~countOneBits(arg_2.c), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(16210u, arg_0.a.x, arg_0.a.x), arg_2.d.ywy))) | min(firstLeadingBit(39787u) << (arg_2.d.x % 32u), arg_0.a.x));
    let var_2 = Struct_1(all(select(!(!vec3<bool>(global0.x, arg_2.a.a, var_0.a.a)), vec3<bool>(any(vec3<bool>(true, false, var_0.a.a)), global0.x, true), !vec3<bool>(var_0.a.a, arg_2.a.a, var_0.a.a))));
    let var_3 = var_0;
    return countOneBits(-select(select(-vec4<i32>(arg_1.b.x, 53674i, arg_1.b.x, u_input.a), abs(vec4<i32>(var_0.b.x, 1i, 1i, -1i)), select(vec4<bool>(var_0.a.a, var_0.a.a, true, true), vec4<bool>(global0.x, global0.x, false, true), false)), _wgslsmith_clamp_vec4_i32(~vec4<i32>(2147483647i, u_input.a, u_input.a, global1[_wgslsmith_index_u32(1u, 26u)]), abs(vec4<i32>(var_0.b.x, var_3.b.x, var_0.b.x, var_3.b.x)), min(vec4<i32>(-1i, var_3.b.x, -2147483647i, var_3.b.x), vec4<i32>(-1957i, u_input.a, global1[_wgslsmith_index_u32(24456u, 26u)], -2147483647i))), vec4<bool>(any(vec3<bool>(arg_2.a.a, false, var_0.a.a)), arg_2.e.a, false & var_3.a.a, var_0.a.a)));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<bool>) -> Struct_2 {
    var var_0 = !(!arg_1.yw);
    var_0 = !global0.zx;
    let var_1 = firstLeadingBit(~(~vec3<u32>(1u, 1u, ~38965u)));
    var var_2 = Struct_1(true);
    let var_3 = 459f;
    return global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_1.x, var_1.x, 1u), 18u)];
}

fn func_5(arg_0: Struct_2, arg_1: vec4<f32>) -> vec3<bool> {
    var var_0 = !select(global0.xx, !(!(!global0.zx)), global0.x);
    var var_1 = ~(~(~_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(arg_0.d, vec4<u32>(arg_0.d.x, 14744u, arg_0.d.x, arg_0.c)), _wgslsmith_add_vec4_u32(arg_0.d, arg_0.d), abs(arg_0.d))));
    let var_2 = Struct_3(vec2<u32>(_wgslsmith_sub_u32(52569u, var_1.x), var_1.x));
    var var_3 = vec4<i32>(global1[_wgslsmith_index_u32(~var_1.x, 26u)], 2147483647i, firstLeadingBit(-31645i), _wgslsmith_mod_i32(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(~var_1.x, 26u)], -43747i), _wgslsmith_clamp_i32(-54528i, firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, global1[_wgslsmith_index_u32(arg_0.d.x, 26u)]), vec2<i32>(global1[_wgslsmith_index_u32(var_2.a.x, 26u)], global1[_wgslsmith_index_u32(var_1.x, 26u)]))), max(1i, firstTrailingBit(u_input.a)))));
    let var_4 = Struct_4(Struct_1(!var_0.x), _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(countOneBits(0i), -var_3.x, ~(-5731i)), select(1i, u_input.a >> (var_2.a.x % 32u), false)), _wgslsmith_div_vec2_i32(vec2<i32>(-global1[_wgslsmith_index_u32(var_2.a.x, 26u)], -1i), abs(~var_3.wz))));
    return !(!(!select(!vec3<bool>(global0.x, false, var_4.a.a), !vec3<bool>(var_0.x, true, global0.x), vec3<bool>(false, true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(select(select(!(!vec3<bool>(global0.x, global0.x, false)), vec3<bool>(false, global0.x, any(vec3<bool>(global0.x, global0.x, global0.x))), vec3<bool>(true, false, false | global0.x)), select(select(vec3<bool>(true, global0.x, global0.x), select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(false, global0.x, true), vec3<bool>(global0.x, global0.x, global0.x)), !global0.x), select(!vec3<bool>(global0.x, true, false), vec3<bool>(false, global0.x, global0.x), !vec3<bool>(global0.x, global0.x, global0.x)), select(vec3<bool>(true, true, true), vec3<bool>(global0.x, global0.x, global0.x), select(vec3<bool>(global0.x, false, false), vec3<bool>(false, false, global0.x), false))), false), func_5(func_4(func_3(func_1(), Struct_4(Struct_1(global0.x), vec2<i32>(-2147483647i, u_input.a)), Struct_2(Struct_1(global0.x), vec4<f32>(1851f, 1024f, 1118f, -503f), 1u, vec4<u32>(0u, 28050u, 3601u, 41847u), Struct_1(true))), select(vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(global0.x, global0.x, false, false), select(vec4<bool>(true, global0.x, false, global0.x), vec4<bool>(global0.x, global0.x, global0.x, true), global0.x))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(1225f)))), -440f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1535f, -988f), -105f)), -804f)), func_4(vec4<i32>(firstTrailingBit(global1[_wgslsmith_index_u32(1u, 26u)]), ~u_input.a, u_input.a << (~1u % 32u), abs(_wgslsmith_add_i32(28908i, u_input.a))), !vec4<bool>(global0.x, all(global0.yy), true, !global0.x)).e.a);
    var var_0 = ~(_wgslsmith_div_vec3_i32(vec3<i32>(-global1[_wgslsmith_index_u32(21352u, 26u)], select(29475i, global1[_wgslsmith_index_u32(0u, 26u)], true), global1[_wgslsmith_index_u32(59214u, 26u)] ^ u_input.a), -(vec3<i32>(global1[_wgslsmith_index_u32(3900u, 26u)], -40245i, global1[_wgslsmith_index_u32(4294967295u, 26u)]) << (vec3<u32>(25771u, 4294967295u, 1u) % vec3<u32>(32u)))) << (~(~vec3<u32>(0u, 0u, 21084u)) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_add_i32(1112i, -(~1i)));
}

