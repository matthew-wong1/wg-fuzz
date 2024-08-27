struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(680f, true, vec2<u32>(64633u, 147692u), vec3<u32>(0u, 7223u, 16143u), vec2<bool>(true, false)), Struct_1(2534f, false, vec2<u32>(6508u, 23221u), vec3<u32>(40289u, 14534u, 54158u), vec2<bool>(false, false)), Struct_1(982f, true, vec2<u32>(44681u, 4294967295u), vec3<u32>(59411u, 30707u, 10094u), vec2<bool>(true, false)), Struct_1(1077f, true, vec2<u32>(4294967295u, 1u), vec3<u32>(14896u, 0u, 0u), vec2<bool>(true, true)), Struct_1(-1515f, true, vec2<u32>(30u, 6297u), vec3<u32>(22488u, 1u, 69965u), vec2<bool>(false, false)), Struct_1(1000f, false, vec2<u32>(19676u, 0u), vec3<u32>(5273u, 557u, 0u), vec2<bool>(true, true)), Struct_1(1000f, false, vec2<u32>(4294967295u, 60739u), vec3<u32>(43667u, 24372u, 57536u), vec2<bool>(false, true)), Struct_1(-1166f, false, vec2<u32>(4294967295u, 1u), vec3<u32>(1494u, 22034u, 46164u), vec2<bool>(true, false)), Struct_1(1014f, true, vec2<u32>(1841u, 54504u), vec3<u32>(1u, 31956u, 1u), vec2<bool>(true, false)), Struct_1(1040f, false, vec2<u32>(4294967295u, 3088u), vec3<u32>(1u, 107085u, 1u), vec2<bool>(false, false)), Struct_1(1549f, true, vec2<u32>(4294967295u, 0u), vec3<u32>(1u, 24510u, 0u), vec2<bool>(false, false)), Struct_1(-421f, true, vec2<u32>(1u, 62499u), vec3<u32>(45021u, 4294967295u, 3981u), vec2<bool>(true, false)), Struct_1(938f, false, vec2<u32>(7184u, 0u), vec3<u32>(0u, 4294967295u, 10155u), vec2<bool>(true, false)), Struct_1(-980f, false, vec2<u32>(4294967295u, 1419u), vec3<u32>(32884u, 18923u, 51530u), vec2<bool>(true, false)), Struct_1(-456f, false, vec2<u32>(12957u, 49071u), vec3<u32>(1u, 4294967295u, 91735u), vec2<bool>(true, true)), Struct_1(-588f, true, vec2<u32>(0u, 1u), vec3<u32>(68268u, 0u, 0u), vec2<bool>(true, true)), Struct_1(-1467f, true, vec2<u32>(70746u, 0u), vec3<u32>(31071u, 1u, 4294967295u), vec2<bool>(true, false)), Struct_1(-781f, true, vec2<u32>(1u, 24742u), vec3<u32>(0u, 4294967295u, 1u), vec2<bool>(true, false)), Struct_1(-869f, false, vec2<u32>(1u, 4294967295u), vec3<u32>(1u, 10216u, 72102u), vec2<bool>(false, true)), Struct_1(308f, true, vec2<u32>(9831u, 51816u), vec3<u32>(0u, 35914u, 111404u), vec2<bool>(true, false)), Struct_1(492f, false, vec2<u32>(4294967295u, 0u), vec3<u32>(22066u, 0u, 4294967295u), vec2<bool>(false, true)), Struct_1(-1315f, true, vec2<u32>(1u, 8621u), vec3<u32>(34816u, 57750u, 0u), vec2<bool>(false, false)), Struct_1(-560f, false, vec2<u32>(1u, 77203u), vec3<u32>(4294967295u, 1u, 12777u), vec2<bool>(false, true)), Struct_1(404f, false, vec2<u32>(0u, 35661u), vec3<u32>(4294967295u, 4294967295u, 0u), vec2<bool>(false, false)), Struct_1(111f, true, vec2<u32>(65773u, 4294967295u), vec3<u32>(1u, 16242u, 24773u), vec2<bool>(true, true)));

var<private> global2: array<i32, 29>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: vec3<i32>) -> f32 {
    var var_0 = true;
    var var_1 = vec2<f32>(124f, global0.a);
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~4294967295u, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(global0.c.x, 1u), ~_wgslsmith_mult_u32(u_input.b, global0.d.x) & min(4294967295u, _wgslsmith_mod_u32(4294967295u, 29877u)), global0.d.x)), 25u)];
    global1 = array<Struct_1, 25>();
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(-var_1.x))));
    return _wgslsmith_div_f32(-1529f, var_1.x);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: u32, arg_3: vec3<i32>) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(~(max(0u, global0.d.x & arg_2) ^ 1u) << (firstLeadingBit(arg_2) % 32u), 25u)];
    global1 = array<Struct_1, 25>();
    let var_1 = true;
    var var_2 = _wgslsmith_mult_vec2_u32(var_0.d.xx >> (~arg_0.c % vec2<u32>(32u)), vec2<u32>(global0.c.x, 1u));
    var var_3 = Struct_1(global0.a, var_0.b, (vec2<u32>(0u, _wgslsmith_mult_u32(44331u, global0.d.x)) ^ vec2<u32>(~arg_2, _wgslsmith_mult_u32(arg_0.c.x, 1u))) << (((vec2<u32>(421u, arg_2) >> (~var_0.c % vec2<u32>(32u))) >> (select(vec2<u32>(4294967295u, arg_0.c.x), _wgslsmith_mult_vec2_u32(var_0.d.xx, u_input.a.xz), global0.e) % vec2<u32>(32u))) % vec2<u32>(32u)), var_0.d, vec2<bool>(!global0.b, _wgslsmith_div_f32(2063f, 1185f) >= _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(149f, -1211f)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))))));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<f32>) -> StorageBuffer {
    var var_0 = 2161f;
    var var_1 = global1[_wgslsmith_index_u32(0u, 25u)];
    let var_2 = firstLeadingBit(global2[_wgslsmith_index_u32(global0.d.x, 29u)]);
    var_0 = _wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(10345u, 25u)], global0.e, 1u, _wgslsmith_mod_vec3_i32(select(vec3<i32>(-15327i, global2[_wgslsmith_index_u32(73491u, 29u)], 6297i), vec3<i32>(-16838i, var_2, global2[_wgslsmith_index_u32(var_1.d.x, 29u)]), false) ^ max(vec3<i32>(-1i, global2[_wgslsmith_index_u32(u_input.a.x, 29u)], global2[_wgslsmith_index_u32(var_1.c.x, 29u)]), vec3<i32>(global2[_wgslsmith_index_u32(75236u, 29u)], global2[_wgslsmith_index_u32(0u, 29u)], var_2)), countOneBits(vec3<i32>(var_2, global2[_wgslsmith_index_u32(10844u, 29u)], -2147483647i)) << (vec3<u32>(66050u, u_input.c, global0.c.x) % vec3<u32>(32u)))))));
    let var_3 = select(vec3<bool>(all(!(!vec4<bool>(global0.e.x, global0.b, global0.b, true))), false, _wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(-var_1.a)) <= 784f), vec3<bool>(!all(var_1.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.x))) >= _wgslsmith_f_op_f32(-arg_1.x), true), !vec3<bool>(true, var_1.b, all(!vec3<bool>(false, var_1.e.x, var_1.e.x))));
    return StorageBuffer(vec2<u32>(u_input.b, ~50772u) & vec2<u32>(~select(12541u, 56029u, var_3.x), ~(~1u)), 30396i, -var_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-1155f + 797f), global0.e.x, vec2<u32>(global0.c.x & (34368u ^ global0.d.x), ~1u) << (u_input.a.zy % vec2<u32>(32u)), _wgslsmith_div_vec3_u32(reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(36011u, 48137u, 1086u) | u_input.a, _wgslsmith_clamp_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, global0.d.x, global0.c.x), vec3<u32>(0u, 38794u, u_input.a.x)))), ~min(u_input.a, u_input.a)), select(select(select(global0.e, vec2<bool>(global0.b, global0.e.x), select(false, true, global0.b)), select(!vec2<bool>(global0.e.x, global0.b), vec2<bool>(false, false), !global0.e.x), !global0.e), select(vec2<bool>(true || global0.b, select(true, global0.b, global0.b)), vec2<bool>(global0.b, true), false && global0.b), !(false | global0.b)));
    global1 = array<Struct_1, 25>();
    let var_1 = Struct_1(-624f, (false && all(vec3<bool>(global0.b, global0.e.x, var_0.e.x))) & true, ~(~(global0.d.yy & vec2<u32>(global0.d.x, 10028u)) | (select(vec2<u32>(global0.d.x, 0u), vec2<u32>(u_input.a.x, global0.d.x), vec2<bool>(false, false)) & vec2<u32>(u_input.b, 29721u))), var_0.d, !(!vec2<bool>(var_0.a == var_0.a, !global0.b)));
    let x = u_input.a;
    s_output = func_2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + 846f)), _wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<i32>(global2[_wgslsmith_index_u32(var_1.d.x, 29u)], -29498i, global2[_wgslsmith_index_u32(4294967295u, 29u)]), -362f, vec3<i32>(-5648i, global2[_wgslsmith_index_u32(33162u, 29u)], 2147483647i))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)), _wgslsmith_f_op_f32(f32(-1f) * -1582f), global0.a, _wgslsmith_f_op_f32(sign(-327f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-565f, 759f, global0.a), vec3<f32>(var_1.a, var_0.a, var_0.a))) * vec3<f32>(1000f, var_1.a, global0.a)))));
}

