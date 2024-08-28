struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: vec3<bool>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14>;

var<private> global1: vec4<i32>;

var<private> global2: array<Struct_1, 5>;

var<private> global3: vec4<f32> = vec4<f32>(684f, -473f, -1021f, -2607f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec2<f32>) -> vec2<u32> {
    let var_0 = -arg_0.a.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.wz));
    var var_2 = ~vec2<u32>(max(reverseBits(abs(arg_1.x)), ~arg_1.x), arg_0.e.x);
    var var_3 = arg_0;
    var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(arg_2 - _wgslsmith_f_op_vec2_f32(-global3.zz))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2) * arg_2))), !(true & !arg_0.b.x)));
    return vec2<u32>(12877u, 0u);
}

fn func_2(arg_0: i32, arg_1: vec3<f32>) -> u32 {
    var var_0 = u_input.a.wy | func_3(Struct_2(firstLeadingBit(vec4<i32>(52732i, arg_0, global1.x, -1i)), vec3<bool>(all(vec4<bool>(false, false, true, true)), any(vec2<bool>(false, false)), true), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, 1u), countOneBits(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), 5u)], global0[_wgslsmith_index_u32(0u, 14u)], vec4<u32>(~60532u, _wgslsmith_mod_u32(0u, 5636u), firstTrailingBit(2058u), abs(33685u))), u_input.a, vec2<f32>(_wgslsmith_f_op_f32(abs(global3.x)), arg_1.x));
    global0 = array<Struct_1, 14>();
    global2 = array<Struct_1, 5>();
    let var_1 = !((1i | arg_0) == global1.x);
    global0 = array<Struct_1, 14>();
    return _wgslsmith_div_u32(firstTrailingBit(_wgslsmith_sub_u32(4294967295u ^ _wgslsmith_sub_u32(15481u, var_0.x), u_input.a.x)), u_input.a.x);
}

fn func_1(arg_0: Struct_2) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global3.x, global3.x, global3.x))) - vec3<f32>(732f, _wgslsmith_f_op_f32(-global3.x), 1000f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(global3.zwz, global3.wzw, true)))))))));
    var var_1 = !(!vec4<bool>(true, true | arg_0.b.x, false, false));
    let var_2 = arg_0.e.xx;
    global1 = vec4<i32>(~min(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global1.x, -35741i, arg_0.d.a), arg_0.a), global1.x), global1.x & firstTrailingBit(firstLeadingBit(arg_0.a.x ^ -2147483647i)), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_div_i32(arg_0.d.a, global1.x), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -17396i, -1i), vec3<i32>(global1.x, 1i, 2147483647i))), vec2<i32>(-39384i, 1i)), arg_0.c.a);
    var var_3 = firstTrailingBit(firstTrailingBit(arg_0.d.a)) >> (_wgslsmith_dot_vec4_u32(~(_wgslsmith_sub_vec4_u32(arg_0.e, arg_0.e) ^ ~vec4<u32>(arg_0.e.x, 57853u, u_input.a.x, 4294967295u)), vec4<u32>(abs(u_input.a.x >> (7148u % 32u)), arg_0.e.x, _wgslsmith_dot_vec3_u32(min(u_input.a.xxy, arg_0.e.xxx), vec3<u32>(19275u, u_input.a.x, 36659u) >> (vec3<u32>(0u, 0u, 13797u) % vec3<u32>(32u))), func_2(global1.x, global3.yww))) % 32u);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-988f, 134f, 1864f, var_0.x)))) + vec4<f32>(_wgslsmith_f_op_f32(-global3.x), global3.x, _wgslsmith_f_op_f32(max(858f, var_0.x)), _wgslsmith_f_op_f32(max(global3.x, var_0.x)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1414f, -688f, global3.x, global3.x) * vec4<f32>(global3.x, 203f, var_0.x, 248f)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global3.x, global3.x, 1388f, var_0.x)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-119f, 1420f, -852f, var_0.x) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.x, global3.x, -574f, -972f), vec4<f32>(var_0.x, -631f, var_0.x, global3.x), vec4<bool>(arg_0.b.x, false, false, false))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, var_0.x, global3.x, 149f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 14>();
    global0 = array<Struct_1, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_1(Struct_2(vec4<i32>(global1.x, 0i, global1.x, -2147483647i), vec3<bool>(false, true, true), global0[_wgslsmith_index_u32(u_input.a.x, 14u)], Struct_1(0i), vec4<u32>(126967u, u_input.a.x, 58555u, 2674u)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(215f, global3.x, -1283f, 1000f)), any(vec3<bool>(true, true, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(190f, global3.x, -184f, global3.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(948f, 1904f, global3.x, 448f))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3.x, 805f, 1519f, -1000f), vec4<f32>(965f, 747f, global3.x, -314f))))))), abs(min(vec3<u32>(u_input.a.x, _wgslsmith_clamp_u32(4294967295u, 55631u, u_input.a.x), 0u), vec3<u32>(35952u, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), firstLeadingBit(0u)))), 351f);
}

