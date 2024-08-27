struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(i32(-2147483648)));

var<private> global1: u32;

var<private> global2: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(Struct_1(5704i)), Struct_2(Struct_1(2147483647i)), Struct_2(Struct_1(38607i)), Struct_2(Struct_1(-50985i)), Struct_2(Struct_1(0i)), Struct_2(Struct_1(2147483647i)), Struct_2(Struct_1(28479i)), Struct_2(Struct_1(2147483647i)), Struct_2(Struct_1(2147483647i)), Struct_2(Struct_1(0i)), Struct_2(Struct_1(-1i)), Struct_2(Struct_1(2147483647i)), Struct_2(Struct_1(33532i)), Struct_2(Struct_1(10204i)), Struct_2(Struct_1(0i)), Struct_2(Struct_1(i32(-2147483648))), Struct_2(Struct_1(18526i)), Struct_2(Struct_1(-27341i)), Struct_2(Struct_1(-15901i)), Struct_2(Struct_1(7718i)), Struct_2(Struct_1(2147483647i)), Struct_2(Struct_1(-1i)), Struct_2(Struct_1(-1i)));

var<private> global3: Struct_2;

var<private> global4: u32 = 0u;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = -293f;
    let var_1 = Struct_2(Struct_1(_wgslsmith_dot_vec3_i32(-u_input.b, -vec3<i32>(arg_0.a, -1i, 42822i))));
    global1 = firstLeadingBit(14945u);
    global0 = var_1;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1217f + _wgslsmith_f_op_f32(-1763f * -1049f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(664f, _wgslsmith_f_op_f32(abs(-1080f)))) - 288f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f)))));
    return select(select(vec3<bool>(true, true, true), vec3<bool>(select(true, all(vec2<bool>(true, false)), true), true, any(vec4<bool>(false, true, true, true))), false), !(!vec3<bool>(true, any(vec3<bool>(true, true, false)), true)), !vec3<bool>(false, true, all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false))));
}

fn func_2() -> vec2<bool> {
    let var_0 = ~(-_wgslsmith_clamp_i32(-2147483647i, ~(global3.a.a | 27021i), ~global3.a.a << (_wgslsmith_clamp_u32(1u, 76238u, 9123u) % 32u)));
    let var_1 = -1187f;
    let var_2 = any(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), var_1 > 364f), func_3(Struct_1(u_input.b.x)), vec3<bool>(true, true, all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false)))));
    let var_3 = global0.a;
    let var_4 = global0.a;
    return vec2<bool>(true, !(!(select(var_2, var_2, var_2) || any(vec3<bool>(true, true, true)))));
}

fn func_4(arg_0: i32, arg_1: vec2<bool>) -> vec4<f32> {
    var var_0 = global2[_wgslsmith_index_u32(~0u, 23u)];
    var_0 = Struct_2(global3.a);
    var_0 = Struct_2(global3.a);
    var var_1 = Struct_1(-2147483647i);
    var var_2 = select(!(!select(!vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(true, true, arg_1.x, arg_1.x), select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), vec4<bool>(arg_1.x, false, arg_1.x, false), arg_1.x))), vec4<bool>(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(arg_0, u_input.a, -1i)), _wgslsmith_add_vec3_i32(vec3<i32>(var_0.a.a, u_input.a, global0.a.a), vec3<i32>(1i, 2147483647i, 1i))) <= -17136i, true, any(vec4<bool>(true, true, !arg_1.x, true)), false), func_2().x);
    return _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1128f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(step(1023f, _wgslsmith_f_op_f32(f32(-1f) * -1260f))), -1888f)));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(countOneBits(arg_0), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true), select(func_2(), vec2<bool>(false, false), vec2<bool>(true, false))))) * vec4<f32>(643f, -2008f, -261f, 461f));
    global4 = ~11690u;
    global0 = Struct_2(global0.a);
    global3 = global2[_wgslsmith_index_u32(arg_2, 23u)];
    var var_1 = global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mod_u32(1u, 4294967295u)), 23u)];
    return ~4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 1u ^ func_1(-_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.b.zx, vec2<i32>(-34094i, global3.a.a)), 0i), _wgslsmith_mod_u32(1u, max(0u, ~0u)), 1u);
    let var_0 = vec3<u32>(~4294967295u, 18669u, func_1(-9565i, _wgslsmith_dot_vec3_u32(vec3<u32>(7295u, ~1u, 1u), ~vec3<u32>(1u, 1u, 1u)), 36220u));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_0.xx ^ (vec2<u32>(var_0.x, 26715u) >> (~vec2<u32>(var_0.x, 11684u) % vec2<u32>(32u))), abs(_wgslsmith_mod_vec2_u32(countOneBits(var_0.zy), vec2<u32>(var_0.x >> (47490u % 32u), 53661u)))), 23u)];
    global2 = array<Struct_2, 23>();
    global3 = global2[_wgslsmith_index_u32(8915u, 23u)];
    var var_2 = Struct_2(global3.a);
    var var_3 = !(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(~(vec4<u32>(var_0.x, func_1(24950i, 61436u, 0u), 1u, var_0.x) << (vec4<u32>(1u, _wgslsmith_mod_u32(var_0.x, 17212u), select(var_0.x, var_0.x, var_3.x), var_0.x) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-255f, -1239f, 1084f))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-196f, 2086f, 904f)))), vec3<f32>(-330f, -466f, _wgslsmith_f_op_f32(-158f * 422f)))), firstLeadingBit(max(var_0.x, 0u)));
}

