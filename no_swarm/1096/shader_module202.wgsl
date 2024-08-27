struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec3<bool>,
}

struct Struct_4 {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<f32>,
    c: vec4<i32>,
    d: i32,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1>;

var<private> global1: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(2499i, vec4<u32>(91209u, 47495u, 4294967295u, 1u), i32(-2147483648)), Struct_4(i32(-2147483648), vec4<u32>(1u, 34838u, 0u, 0u), 4749i), Struct_4(-1i, vec4<u32>(69542u, 52994u, 0u, 49477u), 1i), Struct_4(-34410i, vec4<u32>(4294967295u, 4294967295u, 40385u, 985u), -20671i), Struct_4(-14295i, vec4<u32>(1u, 4294967295u, 0u, 23531u), 1i), Struct_4(-39706i, vec4<u32>(1u, 68547u, 4294967295u, 4294967295u), i32(-2147483648)), Struct_4(-1i, vec4<u32>(0u, 1u, 33672u, 20151u), 2147483647i), Struct_4(57704i, vec4<u32>(34599u, 25161u, 4294967295u, 1u), -1i), Struct_4(1i, vec4<u32>(339u, 0u, 1u, 25696u), -61120i), Struct_4(2147483647i, vec4<u32>(2739u, 1u, 4294967295u, 95038u), 0i), Struct_4(27918i, vec4<u32>(1u, 39685u, 16175u, 1u), 0i), Struct_4(2147483647i, vec4<u32>(1603u, 0u, 63161u, 1u), 1i), Struct_4(10419i, vec4<u32>(13049u, 1u, 19534u, 32535u), 1172i), Struct_4(-25609i, vec4<u32>(52182u, 4294967295u, 3346u, 0u), i32(-2147483648)), Struct_4(-12576i, vec4<u32>(1u, 28423u, 0u, 25413u), i32(-2147483648)), Struct_4(21065i, vec4<u32>(1u, 8298u, 52561u, 4294967295u), 10156i), Struct_4(1i, vec4<u32>(4294967295u, 21558u, 33199u, 1u), 5961i));

var<private> global2: vec4<u32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: bool) -> bool {
    var var_0 = Struct_4(-2147483647i, ~(~_wgslsmith_add_vec4_u32(~vec4<u32>(global2.x, 4294967295u, 0u, u_input.b), firstLeadingBit(vec4<u32>(global2.x, u_input.c, global2.x, u_input.b)))), -(~arg_0.b.x ^ (_wgslsmith_clamp_i32(-2147483647i, -65345i, -2147483647i) << (abs(1u) % 32u))));
    let var_1 = arg_0.c;
    global0 = array<i32, 1>();
    global1 = array<Struct_4, 17>();
    global1 = array<Struct_4, 17>();
    return true;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: Struct_4, arg_3: Struct_5) -> u32 {
    let var_0 = select(-23432i, -1i, !func_2(Struct_1(_wgslsmith_f_op_f32(arg_3.b.x - 146f), _wgslsmith_mult_vec4_i32(vec4<i32>(30659i, u_input.a, arg_2.a, u_input.a), vec4<i32>(0i, 45719i, 28171i, -2147483647i)), global2.x < arg_3.a.b.x, arg_1.x), !arg_3.e.c.yz, !(false | arg_3.e.c.x)));
    var var_1 = arg_2.b;
    global0 = array<i32, 1>();
    let var_2 = global2.x;
    var var_3 = Struct_3(false && !arg_3.e.a, 1u, arg_3.e.c);
    return 28822u | _wgslsmith_add_u32(~(~min(1u, 10746u)), ~(~arg_2.b.x) & u_input.c);
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec2<i32>, arg_3: Struct_2) -> u32 {
    global2 = vec4<u32>(u_input.c & 97309u, arg_1, u_input.c, ~u_input.c) << (vec4<u32>(~(~firstLeadingBit(global2.x)), select(4294967295u, min(_wgslsmith_dot_vec2_u32(global2.wx, vec2<u32>(34786u, 0u)), _wgslsmith_add_u32(66353u, 32087u)), arg_3.c), ~1u, arg_1 ^ func_1(~global2.xyz, _wgslsmith_f_op_vec2_f32(vec2<f32>(-300f, arg_3.a.a) - vec2<f32>(563f, -1982f)), global1[_wgslsmith_index_u32(0u | u_input.b, 17u)], Struct_5(global1[_wgslsmith_index_u32(55047u, 17u)], vec4<f32>(arg_3.b.d, arg_3.a.d, arg_3.a.d, 313f), vec4<i32>(1i, 1i, arg_3.b.b.x, u_input.a), 2147483647i, Struct_3(arg_0, 15003u, vec3<bool>(arg_0, arg_3.d, false))))) % vec4<u32>(32u));
    let var_0 = Struct_3(true, 15734u, vec3<bool>(arg_0, true, true));
    global1 = array<Struct_4, 17>();
    return ~firstTrailingBit(var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = firstTrailingBit(_wgslsmith_add_vec4_u32(~(~vec4<u32>(global2.x, 17798u, 53994u, 54007u)), vec4<u32>(func_1(vec3<u32>(global2.x, global2.x, 1u), vec2<f32>(-591f, -2304f), global1[_wgslsmith_index_u32(77420u, 17u)], Struct_5(Struct_4(global0[_wgslsmith_index_u32(u_input.b, 1u)], vec4<u32>(74737u, 7431u, 1u, 4720u), 2147483647i), vec4<f32>(-269f, 1584f, -1098f, -272f), vec4<i32>(u_input.a, u_input.a, 1i, u_input.a), -28465i, Struct_3(false, global2.x, vec3<bool>(true, false, true)))), func_1(vec3<u32>(4294967295u, global2.x, global2.x), vec2<f32>(128f, -1000f), Struct_4(-2147483647i, vec4<u32>(u_input.c, 13244u, global2.x, 4294967295u), -2147483647i), Struct_5(Struct_4(0i, vec4<u32>(u_input.d, 30642u, 1u, u_input.c), -1i), vec4<f32>(450f, -1296f, -168f, 1602f), vec4<i32>(u_input.a, global0[_wgslsmith_index_u32(u_input.c, 1u)], -3091i, u_input.a), -6034i, Struct_3(false, 37167u, vec3<bool>(false, true, false)))), 0u, u_input.d))) ^ ~_wgslsmith_sub_vec4_u32(vec4<u32>(func_3(true, u_input.c, vec2<i32>(global0[_wgslsmith_index_u32(50247u, 1u)], 32050i), Struct_2(Struct_1(-272f, vec4<i32>(global0[_wgslsmith_index_u32(32537u, 1u)], 0i, 35142i, u_input.a), false, 773f), Struct_1(669f, vec4<i32>(global0[_wgslsmith_index_u32(global2.x, 1u)], global0[_wgslsmith_index_u32(u_input.b, 1u)], 9876i, u_input.a), false, -262f), false, false)), _wgslsmith_div_u32(56051u, 25417u), u_input.c ^ 34882u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(1u, 0u))), firstLeadingBit(~vec4<u32>(global2.x, u_input.c, 63423u, global2.x)));
    var var_0 = Struct_3(false, firstTrailingBit(~(19111u >> (global2.x % 32u)) | ~u_input.b), vec3<bool>(!((global2.x > 49197u) & true), func_2(Struct_1(_wgslsmith_f_op_f32(727f + 1990f), _wgslsmith_add_vec4_i32(vec4<i32>(-81496i, 29679i, 46405i, 17902i), vec4<i32>(u_input.a, global0[_wgslsmith_index_u32(global2.x, 1u)], u_input.a, 2147483647i)), true, 1320f), vec2<bool>(true, true), !(25368u > global2.x)), any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true)))));
    let var_1 = Struct_3(all(var_0.c.xz), 1u, vec3<bool>(14444u <= _wgslsmith_clamp_u32(1u, global2.x >> (global2.x % 32u), 68625u), func_2(Struct_1(1006f, vec4<i32>(-1i, 25005i, 1i, global0[_wgslsmith_index_u32(55310u, 1u)]), var_0.a, -486f), var_0.c.zy, true) & true, any(vec2<bool>(true, true))));
    var var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1149f, 1130f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-608f, -276f))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1169f, 1238f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-306f, -1000f))))))));
    let var_3 = vec3<i32>(_wgslsmith_div_i32(u_input.a, -15027i & max(countOneBits(global0[_wgslsmith_index_u32(65798u, 1u)]), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c, global2.x), 1u)])), -1i, _wgslsmith_add_i32(u_input.a, u_input.a | min(39626i, _wgslsmith_add_i32(global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(u_input.c, 1u)]))));
    var var_4 = global2.zzx;
    var var_5 = _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~0u), ~reverseBits(vec2<u32>(global2.x, 3096u)))), 1u)], global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(min(var_4.x, 31151u), firstTrailingBit(var_4.x)) << (~var_0.b % 32u), 1u)]);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i) * -vec4<i32>(1i, 2147483647i, u_input.a, i32(-1i) * -2147483647i));
}

