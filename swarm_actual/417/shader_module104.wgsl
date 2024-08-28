struct Struct_1 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 25> = array<vec3<u32>, 25>(vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(1u, 29992u, 4294967295u), vec3<u32>(4294967295u, 14903u, 81917u), vec3<u32>(0u, 3980u, 33971u), vec3<u32>(14056u, 4294967295u, 0u), vec3<u32>(29947u, 25777u, 4294967295u), vec3<u32>(0u, 57919u, 95274u), vec3<u32>(4294967295u, 42744u, 23261u), vec3<u32>(27036u, 78u, 33967u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(0u, 61924u, 49408u), vec3<u32>(1u, 0u, 62001u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(46865u, 42628u, 69344u), vec3<u32>(49486u, 0u, 18992u), vec3<u32>(4294967295u, 58839u, 1u), vec3<u32>(0u, 0u, 27603u), vec3<u32>(78879u, 10537u, 4294967295u), vec3<u32>(1u, 128424u, 1u), vec3<u32>(44420u, 85715u, 1u), vec3<u32>(39213u, 0u, 34090u), vec3<u32>(38549u, 4294967295u, 1u), vec3<u32>(1293u, 1u, 1u), vec3<u32>(1u, 4294967295u, 251u), vec3<u32>(5344u, 4294967295u, 21733u));

var<private> global1: array<bool, 21> = array<bool, 21>(true, true, false, false, false, true, false, true, true, true, false, true, false, false, true, false, true, false, true, true, true);

var<private> global2: array<Struct_2, 27>;

var<private> global3: vec3<f32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: bool, arg_1: bool) -> bool {
    global0 = array<vec3<u32>, 25>();
    global1 = array<bool, 21>();
    global1 = array<bool, 21>();
    global2 = array<Struct_2, 27>();
    global2 = array<Struct_2, 27>();
    return all(select(vec4<bool>(any(vec2<bool>(true, true)), any(vec2<bool>(true, arg_1)) | false, u_input.b != -u_input.b, !arg_1), !vec4<bool>(false, any(vec4<bool>(arg_1, false, arg_1, true)), arg_1, true), select(arg_0 & arg_0, true, all(select(vec2<bool>(arg_0, true), vec2<bool>(global1[_wgslsmith_index_u32(u_input.c, 21u)], false), arg_1)))));
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> u32 {
    var var_0 = Struct_2(global3.x, _wgslsmith_div_u32(arg_1.b, 1u));
    var_0 = Struct_2(-1000f, var_0.b);
    let var_1 = Struct_1(_wgslsmith_mod_vec4_i32(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(-16456i, u_input.b, -4378i, 20088i), vec4<i32>(48545i, u_input.b, -2147483647i, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.a.x, u_input.a.x)) & -u_input.a), max(countOneBits(u_input.a), vec4<i32>(u_input.a.x, u_input.b, -29156i, u_input.b)) << (~u_input.d % vec4<u32>(32u))), ~1265i);
    var var_2 = select(select(vec4<bool>(true, func_3(arg_0, !global1[_wgslsmith_index_u32(u_input.d.x, 21u)]), all(vec4<bool>(global1[_wgslsmith_index_u32(20440u, 21u)], false, arg_0, arg_0)), arg_0), select(select(vec4<bool>(false, true, false, arg_0), vec4<bool>(true, false, false, arg_0), all(vec4<bool>(true, arg_0, false, true))), !vec4<bool>(arg_0, false, true, arg_0), true), vec4<bool>(true, any(select(vec4<bool>(global1[_wgslsmith_index_u32(arg_1.b, 21u)], arg_0, global1[_wgslsmith_index_u32(4198u, 21u)], global1[_wgslsmith_index_u32(8946u, 21u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 21u)], true, true, true), global1[_wgslsmith_index_u32(var_0.b, 21u)])), !all(vec2<bool>(global1[_wgslsmith_index_u32(arg_1.b, 21u)], arg_0)), any(select(vec3<bool>(global1[_wgslsmith_index_u32(5450u, 21u)], global1[_wgslsmith_index_u32(arg_1.b, 21u)], true), vec3<bool>(arg_0, global1[_wgslsmith_index_u32(arg_1.b, 21u)], false), vec3<bool>(true, arg_0, global1[_wgslsmith_index_u32(1u, 21u)]))))), select(vec4<bool>(arg_0, !(false & arg_0), global1[_wgslsmith_index_u32(~(~1u), 21u)], arg_0), !(!vec4<bool>(false, false, arg_0, true)), false & arg_0), arg_0);
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b, u_input.d.x, 1u), global0[_wgslsmith_index_u32(~var_0.b, 25u)]), u_input.d.x), 38504u));
    return 4294967295u;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: i32, arg_3: bool) -> vec2<f32> {
    var var_0 = _wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(-u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(0i, -1i), -_wgslsmith_mult_vec2_i32(vec2<i32>(15729i, arg_2), u_input.a.wz)), (-1i >> ((u_input.d.x | u_input.d.x) % 32u)) & u_input.a.x, _wgslsmith_sub_i32(-arg_2 & (i32(-1i) * -11602i), -2147483647i)));
    var var_1 = vec4<u32>(4294967295u, u_input.c, func_2(true, Struct_2(690f, firstTrailingBit(15772u))), _wgslsmith_div_u32(u_input.d.x, ~u_input.d.x));
    let var_2 = false;
    var var_3 = Struct_1(u_input.a, reverseBits(-(~var_0.x)));
    var_3 = Struct_1(min(_wgslsmith_mod_vec4_i32(var_3.a ^ vec4<i32>(1i, var_0.x, 0i, var_3.b), firstTrailingBit(select(var_3.a, vec4<i32>(u_input.a.x, 25606i, arg_2, var_0.x), false))), firstLeadingBit(vec4<i32>(arg_2 & -32825i, select(0i, var_3.a.x, false), var_3.a.x << (u_input.d.x % 32u), 2147483647i))), var_0.x);
    return vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(559f * _wgslsmith_f_op_f32(step(global3.x, _wgslsmith_f_op_f32(-global3.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(686f - -145f), _wgslsmith_f_op_f32(exp2(global3.x))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-378f * 594f) * _wgslsmith_f_op_f32(min(global3.x, global3.x))))));
}

fn func_4(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(~(-2147483647i | u_input.b), ~(-34035i)), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, firstTrailingBit(11330i)), vec2<i32>(-14162i, firstTrailingBit(u_input.b)))), u_input.a.x, _wgslsmith_div_i32(1i, _wgslsmith_mod_i32(-u_input.b, abs(u_input.a.x) << (abs(u_input.d.x) % 32u))), -(u_input.b | u_input.b));
    global1 = array<bool, 21>();
    global0 = array<vec3<u32>, 25>();
    global0 = array<vec3<u32>, 25>();
    global1 = array<bool, 21>();
    return Struct_1(~select(select(max(u_input.a, u_input.a), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, 2147483647i, 0i), u_input.a), any(vec3<bool>(false, false, global1[_wgslsmith_index_u32(735u, 21u)]))), min(firstLeadingBit(vec4<i32>(1i, var_0.x, u_input.a.x, 0i)), u_input.a ^ vec4<i32>(-2147483647i, -23126i, 45680i, var_0.x)), select(!vec4<bool>(true, false, false, global1[_wgslsmith_index_u32(u_input.d.x, 21u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 21u)], true, global1[_wgslsmith_index_u32(u_input.d.x, 21u)], global1[_wgslsmith_index_u32(0u, 21u)]), vec4<bool>(true, false, global1[_wgslsmith_index_u32(u_input.d.x, 21u)], true), global1[_wgslsmith_index_u32(u_input.d.x, 21u)]), select(vec4<bool>(true, true, global1[_wgslsmith_index_u32(66746u, 21u)], false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 21u)], true, global1[_wgslsmith_index_u32(9062u, 21u)], true), false))), ~reverseBits(-20146i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(u_input.d.x, 27u)];
    let var_1 = u_input.d.wzw;
    let var_2 = func_4(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_1(!vec2<bool>(global1[_wgslsmith_index_u32(78743u, 21u)], global1[_wgslsmith_index_u32(0u, 21u)]), !vec4<bool>(global1[_wgslsmith_index_u32(var_1.x, 21u)], global1[_wgslsmith_index_u32(1u, 21u)], true, global1[_wgslsmith_index_u32(4294967295u, 21u)]), 1i, false)))), vec2<f32>(_wgslsmith_f_op_f32(1211f - var_0.a), _wgslsmith_f_op_f32(-var_0.a)))));
    global0 = array<vec3<u32>, 25>();
    global2 = array<Struct_2, 27>();
    let var_3 = select(vec4<bool>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global3.x, global3.x))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) * global3.x), all(select(vec4<bool>(global1[_wgslsmith_index_u32(var_0.b, 21u)], global1[_wgslsmith_index_u32(u_input.c, 21u)], false, true), vec4<bool>(true, global1[_wgslsmith_index_u32(var_0.b, 21u)], global1[_wgslsmith_index_u32(0u, 21u)], false), 680f != var_0.a)), true, global3.x >= _wgslsmith_f_op_f32(-1885f - var_0.a)), !vec4<bool>(true, true, global1[_wgslsmith_index_u32(1u, 21u)], false), global1[_wgslsmith_index_u32(1u, 21u)]);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-7184i, func_4(_wgslsmith_f_op_vec2_f32(-global3.zz)).a.x ^ -_wgslsmith_div_i32(var_2.a.x, var_2.b), u_input.b >> (1u % 32u)), -vec2<i32>(var_2.b, 1250i));
}

