struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 58797u;

var<private> global1: array<vec3<i32>, 2> = array<vec3<i32>, 2>(vec3<i32>(-43113i, -34123i, -19976i), vec3<i32>(23732i, 1i, i32(-2147483648)));

var<private> global2: array<vec4<u32>, 11> = array<vec4<u32>, 11>(vec4<u32>(68498u, 1u, 11002u, 4294967295u), vec4<u32>(1u, 4294967295u, 78387u, 0u), vec4<u32>(1u, 0u, 9577u, 75157u), vec4<u32>(6653u, 1u, 7360u, 4294967295u), vec4<u32>(4294967295u, 1u, 0u, 54291u), vec4<u32>(1u, 34584u, 0u, 4294967295u), vec4<u32>(4294967295u, 39143u, 1u, 4294967295u), vec4<u32>(1u, 1u, 12596u, 4294967295u), vec4<u32>(0u, 97165u, 0u, 0u), vec4<u32>(1u, 0u, 62493u, 4294967295u), vec4<u32>(4294967295u, 0u, 6517u, 8865u));

var<private> global3: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(42522i), Struct_2(i32(-2147483648)), Struct_2(i32(-2147483648)), Struct_2(-1i), Struct_2(-44720i), Struct_2(i32(-2147483648)), Struct_2(2147483647i), Struct_2(i32(-2147483648)), Struct_2(i32(-2147483648)), Struct_2(-25156i), Struct_2(0i), Struct_2(1i), Struct_2(45636i), Struct_2(-50284i), Struct_2(-20937i), Struct_2(1i), Struct_2(2147483647i), Struct_2(i32(-2147483648)), Struct_2(-1i), Struct_2(i32(-2147483648)), Struct_2(1i));

var<private> global4: i32 = -23235i;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1) -> vec3<f32> {
    var var_0 = ~(~u_input.b.yz);
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1606f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_0.a.x, 778f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(348f, 1356f)), _wgslsmith_f_op_f32(floor(-399f))))));
    global3 = array<Struct_2, 21>();
    let var_2 = global2[_wgslsmith_index_u32(1055u, 11u)];
    global4 = ~_wgslsmith_mod_i32(-u_input.a, select(~(-2147483647i), -(i32(-1i) * -73982i), all(vec4<bool>(true, false, false, false)) | (66226i >= u_input.d.x)));
    return vec3<f32>(_wgslsmith_f_op_f32(ceil(1042f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-642f - _wgslsmith_f_op_f32(trunc(arg_0.a.x))), var_1.x, all(vec4<bool>(true, true, true, true)))))), 358f);
}

fn func_2(arg_0: i32, arg_1: vec4<u32>, arg_2: f32) -> i32 {
    global4 = -55756i & u_input.d.x;
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - -426f)), arg_2, -1043f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec2<f32>(arg_2, arg_2))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, -334f, arg_2)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, -1222f, arg_2))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_2, arg_2, 361f), vec3<f32>(-175f, arg_2, arg_2))))));
    global3 = array<Struct_2, 21>();
    let var_1 = vec4<i32>(u_input.a, arg_0, ~u_input.d.x, -(~_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-44741i, arg_0, u_input.d.x, u_input.d.x), vec4<i32>(11908i, 2147483647i, u_input.d.x, u_input.a)), select(vec4<i32>(-2147483647i, 0i, arg_0, arg_0), vec4<i32>(-1230i, 32885i, u_input.d.x, 0i), vec4<bool>(false, false, true, false)))));
    var var_2 = true;
    return arg_0;
}

fn func_1(arg_0: Struct_2) -> vec4<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1147f, -1108f)), vec2<f32>(1699f, 921f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-216f, -2090f)))));
    let var_1 = global2[_wgslsmith_index_u32(~0u, 11u)];
    let var_2 = global2[_wgslsmith_index_u32(1u, 11u)];
    global1 = array<vec3<i32>, 2>();
    return vec4<i32>(1i, (u_input.a >> (var_1.x % 32u)) | (_wgslsmith_mod_i32(_wgslsmith_clamp_i32(arg_0.a, 1i, arg_0.a), -2147483647i) | ~func_2(2147483647i, vec4<u32>(1u, u_input.b.x, u_input.b.x, 1u), 476f)), firstLeadingBit(1i), 1i ^ func_2(u_input.d.x, select(~vec4<u32>(u_input.c, var_1.x, var_2.x, u_input.c), vec4<u32>(4294967295u, var_2.x, var_2.x, u_input.c), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1912f)) * var_0.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = -u_input.a;
    global0 = 0u;
    global0 = u_input.b.x;
    global1 = array<vec3<i32>, 2>();
    let var_0 = global3[_wgslsmith_index_u32(u_input.b.x << (~79383u % 32u), 21u)];
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(549f - -1000f), 1f) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1343f), _wgslsmith_f_op_f32(trunc(1615f))))));
    let var_2 = i32(-1i) * -var_0.a;
    global4 = ~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, firstTrailingBit(~1i), max(i32(-1i) * -1i, 1i), -50325i ^ _wgslsmith_mult_i32(-2147483647i, u_input.a)), _wgslsmith_clamp_vec4_i32(select(func_1(Struct_2(var_2)), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, var_0.a, -20040i, -55850i), vec4<i32>(-2147483647i, 2147483647i, u_input.a, var_2)), true), abs(~vec4<i32>(11780i, var_0.a, -1i, var_2)), -(~vec4<i32>(12150i, 2198i, 5058i, -81372i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(abs(var_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) * _wgslsmith_f_op_f32(-var_1.a.x)), 1f, _wgslsmith_f_op_f32(step(-1324f, _wgslsmith_f_op_f32(select(var_1.a.x, -188f, false))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-172f, var_1.a.x, var_1.a.x, var_1.a.x), vec4<f32>(-1179f, -263f, var_1.a.x, var_1.a.x), false)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a.x, -724f, -147f, var_1.a.x), vec4<f32>(var_1.a.x, -1717f, 103f, var_1.a.x), false))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.a.x, 1277f, 1000f, 403f))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.a.x, var_1.a.x, -1000f, var_1.a.x))))))), vec2<u32>(u_input.b.x, u_input.b.x), _wgslsmith_mult_vec3_u32(reverseBits(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, u_input.b.x, 47156u), vec3<u32>(u_input.b.x, 16040u, u_input.c), vec3<u32>(u_input.c, 71414u, 1u)), ~u_input.b)), abs(~vec3<u32>(32905u, 31401u, u_input.c))), _wgslsmith_mult_vec3_u32(u_input.b, u_input.b), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1233f, var_1.a.x, var_1.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1124f, -1286f, -441f) + vec3<f32>(var_1.a.x, var_1.a.x, var_1.a.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, var_1.a.x, -895f) * vec3<f32>(var_1.a.x, var_1.a.x, var_1.a.x))), vec3<bool>(true, true, any(vec3<bool>(false, false, false))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1168f, 2666f, var_1.a.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-943f, var_1.a.x, -1236f))))))));
}

