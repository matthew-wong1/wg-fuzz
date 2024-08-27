struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(1u, 88824u), -752f, true);

var<private> global1: array<vec2<u32>, 29>;

var<private> global2: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec2<u32>(1u, 4294967295u), 1156f, true), Struct_1(vec2<u32>(53041u, 38874u), 2662f, false), Struct_1(vec2<u32>(4294967295u, 12604u), -401f, false), Struct_1(vec2<u32>(98279u, 17860u), 798f, false), Struct_1(vec2<u32>(4294967295u, 67315u), -218f, false), Struct_1(vec2<u32>(70059u, 4294967295u), -376f, false), Struct_1(vec2<u32>(0u, 5517u), -1015f, false), Struct_1(vec2<u32>(44525u, 1u), -825f, true), Struct_1(vec2<u32>(1624u, 4294967295u), -867f, true), Struct_1(vec2<u32>(0u, 4294967295u), -511f, false), Struct_1(vec2<u32>(1u, 1u), 1821f, true), Struct_1(vec2<u32>(4294967295u, 0u), -1530f, true), Struct_1(vec2<u32>(4294967295u, 19429u), -556f, true), Struct_1(vec2<u32>(0u, 16694u), -142f, false), Struct_1(vec2<u32>(4294967295u, 1u), 380f, false), Struct_1(vec2<u32>(1u, 1u), 909f, true));

var<private> global3: array<Struct_1, 21>;

var<private> global4: bool = false;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = ~u_input.b.x;
    var var_1 = Struct_1(vec2<u32>(u_input.b.x, abs(~38591u << (_wgslsmith_clamp_u32(u_input.b.x, global0.a.x, 20733u) % 32u))), -522f, all(select(vec3<bool>(true, true, global0.c), vec3<bool>(global0.c, true, 1614f >= global0.b), select(!vec3<bool>(global0.c, false, global0.c), !vec3<bool>(true, global0.c, global0.c), !vec3<bool>(global0.c, true, true)))));
    let var_2 = vec3<i32>(-32949i, reverseBits(1i), 1i);
    var var_3 = _wgslsmith_dot_vec4_i32(abs(~vec4<i32>(var_2.x ^ -1i, var_2.x, _wgslsmith_mult_i32(73920i, 3303i), -1i)), vec4<i32>(~((i32(-1i) * -1i) | ~var_2.x), 2147483647i, 14391i, ~_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_2.x, 11260i, -2147483647i), var_2), vec3<i32>(var_2.x, 21861i, u_input.a))));
    let var_4 = Struct_1(vec2<u32>(u_input.b.x, 1u), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.b))), _wgslsmith_div_f32(317f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2077f)))))), true);
    return _wgslsmith_dot_vec4_u32(vec4<u32>(reverseBits(var_1.a.x), select(_wgslsmith_dot_vec2_u32(vec2<u32>(var_4.a.x, 97224u), var_4.a), 1u & _wgslsmith_dot_vec3_u32(u_input.b, u_input.b), any(!vec3<bool>(var_4.c, var_4.c, global0.c))), ~var_4.a.x, _wgslsmith_sub_u32(global0.a.x, 29530u)), vec4<u32>(47270u & u_input.b.x, ~15705u, ~39645u, _wgslsmith_div_u32(_wgslsmith_mult_u32(var_4.a.x, var_4.a.x), ~global0.a.x)) << (vec4<u32>(32495u, ~u_input.b.x, max(u_input.b.x, 4294967295u), ~(~global0.a.x)) % vec4<u32>(32u)));
}

fn func_2(arg_0: i32, arg_1: vec2<bool>, arg_2: vec2<f32>, arg_3: f32) -> vec3<u32> {
    var var_0 = Struct_1(global1[_wgslsmith_index_u32(0u, 29u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-512f)) + -960f)) + arg_2.x), arg_1.x);
    global1 = array<vec2<u32>, 29>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_3, -1245f, arg_3), vec3<f32>(-1000f, -465f, arg_3))) * vec3<f32>(-1000f, global0.b, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global0.b, 1671f), _wgslsmith_f_op_f32(sign(1091f)), !var_0.c)))));
    let var_2 = !vec4<bool>(false, true, var_0.a.x <= 4294967295u, true);
    var var_3 = global3[_wgslsmith_index_u32(~func_3(-468f) ^ _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0.a.x, global0.a.x) | ~u_input.b, u_input.b), _wgslsmith_mod_u32(var_0.a.x, reverseBits(var_0.a.x)), firstTrailingBit(_wgslsmith_sub_u32(max(1u, 1u), ~global0.a.x))), 21u)];
    return firstTrailingBit(vec3<u32>(~(~var_0.a.x), global0.a.x, 4294967295u));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<u32>) -> Struct_1 {
    global0 = global2[_wgslsmith_index_u32(~arg_1.x, 16u)];
    let var_0 = global3[_wgslsmith_index_u32(61573u, 21u)];
    global3 = array<Struct_1, 21>();
    global2 = array<Struct_1, 16>();
    global0 = Struct_1(max(vec2<u32>(~(~0u), countOneBits(select(12379u, 1u, var_0.c))), ~(~u_input.b.xy)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b - -995f))), 1869f), !(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(699f * -668f), _wgslsmith_f_op_f32(ceil(932f)))) >= -1327f));
    return global3[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(1u, ~u_input.b.x) ^ 1u), 21u)];
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> bool {
    global3 = array<Struct_1, 21>();
    global0 = arg_1;
    global0 = global2[_wgslsmith_index_u32(arg_1.a.x, 16u)];
    let var_0 = global2[_wgslsmith_index_u32(global0.a.x, 16u)];
    let var_1 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(322f, global0.b, -469f, global0.b) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(331f, 180f, var_0.b, var_0.b))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1161f, -139f, arg_1.b, var_0.b))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b, -1122f, var_0.b, var_0.b) * vec4<f32>(115f, -747f, arg_1.b, 218f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-675f, arg_1.b, -2680f, 255f))))), countOneBits(abs(select(func_2(arg_0, vec2<bool>(var_0.c, var_0.c), vec2<f32>(arg_1.b, 1927f), arg_1.b), vec3<u32>(u_input.b.x, global0.a.x, u_input.b.x), select(vec3<bool>(var_0.c, true, var_0.c), vec3<bool>(true, arg_1.c, arg_1.c), arg_1.c)))));
    return all(!vec2<bool>(var_0.c, false));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global3[_wgslsmith_index_u32(2876u, 21u)];
    var var_0 = true;
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>((global0.a.x << (~u_input.b.x % 32u)) >> (u_input.b.x % 32u), 4294967295u, _wgslsmith_sub_u32(global0.a.x, 0u)), ~u_input.b), 16u)];
    var var_2 = !select(!vec3<bool>(select(true, false, true), true, var_1.c), select(!vec3<bool>(false, global0.c, global0.c), vec3<bool>(false, true, any(vec4<bool>(var_1.c, global0.c, global0.c, global0.c))), any(vec3<bool>(false, global0.c, false))), select(vec3<bool>(func_1(u_input.a, global2[_wgslsmith_index_u32(global0.a.x, 16u)]), !var_1.c, !var_1.c), vec3<bool>(true, var_1.c, true), !(!vec3<bool>(var_1.c, false, false))));
    var var_3 = global2[_wgslsmith_index_u32(func_3(var_1.b), 16u)];
    let var_4 = func_4(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_3.b)))), _wgslsmith_f_op_f32(sign(320f)), _wgslsmith_f_op_f32(var_3.b - _wgslsmith_f_op_f32(var_3.b + _wgslsmith_f_op_f32(ceil(-1000f)))), _wgslsmith_f_op_f32(global0.b + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.b))))), max(vec3<u32>(func_2(u_input.a | u_input.a, select(var_2.zy, var_2.yz, var_2.zx), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_3.b, -317f), vec2<f32>(var_1.b, global0.b))), -2101f).x, _wgslsmith_add_u32(var_1.a.x, global0.a.x >> (79145u % 32u)), max(u_input.b.x, 42573u) << (~60459u % 32u)), vec3<u32>(~(var_1.a.x & 0u), max(1u, var_1.a.x) << (var_1.a.x % 32u), _wgslsmith_sub_u32(4294967295u, var_1.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1179f, -2191f) - vec2<f32>(global0.b, var_1.b))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.b, 1085f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.b, var_3.b) * vec2<f32>(var_4.b, 475f))))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.b, 737f), vec2<f32>(-296f, -1207f))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.b, global0.b), vec2<f32>(-1446f, 2690f))))))), select(-1i, -firstTrailingBit(~u_input.a), var_3.c && false), var_3.a.x);
}

