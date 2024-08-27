struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 4>;

var<private> global1: array<vec2<i32>, 14> = array<vec2<i32>, 14>(vec2<i32>(-1i, 17096i), vec2<i32>(2147483647i, 1i), vec2<i32>(-26361i, 0i), vec2<i32>(-2498i, 2147483647i), vec2<i32>(-59825i, -45162i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(2147483647i, -1i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(7204i, i32(-2147483648)), vec2<i32>(26199i, -4825i), vec2<i32>(39957i, 0i), vec2<i32>(-570i, -46588i), vec2<i32>(-38247i, 1i), vec2<i32>(50743i, 2147483647i));

var<private> global2: Struct_1 = Struct_1(vec2<f32>(-272f, -159f));

var<private> global3: array<vec4<i32>, 4>;

var<private> global4: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec2<f32>(1433f, -235f)), Struct_1(vec2<f32>(2211f, 335f)), Struct_1(vec2<f32>(896f, -151f)), Struct_1(vec2<f32>(209f, -138f)), Struct_1(vec2<f32>(-1350f, -535f)), Struct_1(vec2<f32>(-1000f, -3145f)), Struct_1(vec2<f32>(2256f, -780f)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> bool {
    global4 = array<Struct_1, 7>();
    global2 = arg_0.b;
    global2 = arg_0.b;
    let var_0 = Struct_3(_wgslsmith_div_u32(abs(_wgslsmith_mult_u32(u_input.a.x, arg_0.a)), _wgslsmith_div_u32(0u, 1u)), Struct_1(_wgslsmith_f_op_vec2_f32(arg_1.a * vec2<f32>(-1697f, _wgslsmith_f_op_f32(min(arg_1.a.x, global2.a.x))))), _wgslsmith_f_op_vec3_f32(arg_0.c * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-arg_0.c)))), arg_1);
    let var_1 = !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false));
    return var_1.x;
}

fn func_4(arg_0: vec3<i32>, arg_1: i32, arg_2: vec2<bool>, arg_3: u32) -> u32 {
    global0 = array<Struct_3, 4>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(max(-128f, _wgslsmith_f_op_f32(min(-1875f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1757f + global2.a.x) + global2.a.x))))), -291f, _wgslsmith_f_op_f32(-1314f - -469f));
    global3 = array<vec4<i32>, 4>();
    global4 = array<Struct_1, 7>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.x) * -817f);
    return arg_3;
}

fn func_2(arg_0: f32, arg_1: u32) -> Struct_2 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(func_4(vec3<i32>(select(max(1i, 1i), ~(-2147483647i), func_3(Struct_3(u_input.a.x, global4[_wgslsmith_index_u32(6415u, 7u)], vec3<f32>(944f, global2.a.x, global2.a.x), global4[_wgslsmith_index_u32(u_input.a.x, 7u)]), Struct_1(vec2<f32>(-1281f, -1048f)))), -_wgslsmith_mod_i32(-5201i, 11679i), abs(2147483647i)), (~(-41729i) << (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 30898u, u_input.a.x), vec3<u32>(u_input.a.x, 0u, 0u)) % 32u)) >> ((min(u_input.a.x, u_input.a.x) >> (~1u % 32u)) % 32u), vec2<bool>(true, false), arg_1), ~firstLeadingBit(max(min(1u, arg_1), ~u_input.a.x)), firstTrailingBit(~(_wgslsmith_sub_u32(u_input.a.x, arg_1) << (~133271u % 32u)))), 4u)];
    var var_1 = -24203i;
    global0 = array<Struct_3, 4>();
    var var_2 = ~u_input.a;
    global4 = array<Struct_1, 7>();
    return Struct_2(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec3<f32>(659f, 1000f, -1286f));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    let var_0 = func_2(arg_1.d.a.x, 4294967295u);
    global4 = array<Struct_1, 7>();
    let var_1 = 1311f;
    let var_2 = max(-682i, -1i);
    global3 = array<vec4<i32>, 4>();
    return !all(select(vec4<bool>(arg_2.a.x, true, true, arg_0.x), vec4<bool>(false, true, false, var_0.a.x), !vec4<bool>(var_0.a.x, true, true, false))) & any(vec3<bool>(any(select(var_0.a, var_0.a, vec2<bool>(arg_0.x, var_0.a.x))), arg_2.a.x, !var_0.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 14>();
    global0 = array<Struct_3, 4>();
    let var_0 = !select(vec2<bool>(!func_1(vec2<bool>(true, true), Struct_3(0u, Struct_1(vec2<f32>(global2.a.x, -825f)), vec3<f32>(global2.a.x, global2.a.x, global2.a.x), Struct_1(vec2<f32>(-1599f, 722f))), Struct_2(vec2<bool>(false, false), vec3<f32>(-853f, 509f, 812f)), global4[_wgslsmith_index_u32(11403u, 7u)]), false), vec2<bool>(true, true), false);
    let var_1 = true;
    let var_2 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -919f)), _wgslsmith_mod_u32(0u, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, u_input.a.x, 47151u), vec3<u32>(u_input.a.x, 43266u, u_input.a.x))));
    let var_3 = _wgslsmith_mod_vec4_i32(global3[_wgslsmith_index_u32(reverseBits(72955u << (max(0u, u_input.a.x << (u_input.a.x % 32u)) % 32u)), 4u)], vec4<i32>(-2147483647i, 2147483647i, i32(-1i) * -1765i, 2147483647i));
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-618f, 1060f, global2.a.x, var_2.b.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.b.x, -808f, var_2.b.x, -1745f)))))));
    let var_5 = global4[_wgslsmith_index_u32(~34303u, 7u)];
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(var_3), i32(-1i) * -37287i);
}

