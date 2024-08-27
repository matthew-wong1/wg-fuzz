struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 27> = array<vec3<bool>, 27>(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true));

var<private> global1: i32;

var<private> global2: array<Struct_3, 17>;

var<private> global3: array<Struct_1, 19>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec4<u32>) -> u32 {
    global2 = array<Struct_3, 17>();
    var var_0 = global3[_wgslsmith_index_u32(u_input.e, 19u)];
    global2 = array<Struct_3, 17>();
    var_0 = Struct_1(vec4<f32>(var_0.b, _wgslsmith_f_op_f32(f32(-1f) * -1061f), var_0.c.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-523f, _wgslsmith_f_op_f32(var_0.a.x * -189f)))))), -835f, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1202f, _wgslsmith_f_op_f32(round(729f)), _wgslsmith_div_f32(_wgslsmith_div_f32(103f, var_0.a.x), -155f)) - _wgslsmith_f_op_vec3_f32(-var_0.a.wzy)), 7461i);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x));
    return ~(~(~4294967295u));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<f32>) -> vec2<u32> {
    let var_0 = _wgslsmith_sub_vec3_i32(max(u_input.d.yyy, u_input.d.wyw), firstTrailingBit(~(~vec3<i32>(2147483647i, -18744i, 2147483647i))));
    let var_1 = max(~(-_wgslsmith_mod_i32(76539i, 55326i)) << (~countOneBits(func_2(vec4<u32>(1u, 91356u, arg_0.x, 0u))) % 32u), ~14171i);
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(547f, _wgslsmith_f_op_f32(arg_1.x - arg_1.x), 141f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - _wgslsmith_f_op_f32(exp2(arg_1.x)))))));
    global0 = array<vec3<bool>, 27>();
    let var_3 = global2[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 17u)];
    return _wgslsmith_sub_vec2_u32(var_3.a.a.zw, select(min(max(vec2<u32>(var_3.a.a.x, var_3.a.a.x), vec2<u32>(4294967295u, 0u)), abs(vec2<u32>(33692u, 1u))), firstTrailingBit(max(u_input.a, vec2<u32>(arg_0.x, 0u))), _wgslsmith_mod_i32(u_input.b, -1i) == var_0.x) | vec2<u32>(_wgslsmith_clamp_u32(42848u, firstLeadingBit(var_3.a.a.x), firstTrailingBit(1u)), firstTrailingBit(~u_input.a.x)));
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    global1 = -_wgslsmith_dot_vec2_i32(u_input.d.yw, u_input.d.xz);
    let var_0 = select(~(max(~vec2<u32>(arg_0.x, 71410u), min(arg_0, arg_0)) >> (u_input.a % vec2<u32>(32u))), ~func_3(vec2<u32>(func_2(vec4<u32>(arg_0.x, u_input.e, 18125u, u_input.a.x)), 5372u), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -764f), _wgslsmith_f_op_f32(floor(877f)))), all(select(global0[_wgslsmith_index_u32(1u, 27u)], vec3<bool>(true, true, true), vec3<bool>(true, true, any(vec3<bool>(false, true, true))))));
    global3 = array<Struct_1, 19>();
    global3 = array<Struct_1, 19>();
    return Struct_2(~vec4<u32>(4294967295u, ~(~u_input.a.x), 15524u, 1u));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: bool) -> vec4<f32> {
    let var_0 = Struct_2(~(select(arg_0.a, _wgslsmith_add_vec4_u32(vec4<u32>(arg_2.x, arg_0.a.x, u_input.e, arg_1.a.a.x), vec4<u32>(arg_2.x, 4294967295u, arg_2.x, 11262u)), select(vec4<bool>(arg_3, true, arg_3, true), vec4<bool>(arg_3, arg_3, arg_3, arg_3), vec4<bool>(arg_3, false, false, true))) ^ abs(select(vec4<u32>(77424u, arg_1.a.a.x, 0u, arg_2.x), arg_2, false))));
    global2 = array<Struct_3, 17>();
    var var_1 = ~u_input.e;
    global3 = array<Struct_1, 19>();
    global1 = select(-2147483647i, 2147483647i, false);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1284f, 1173f, -538f, -104f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1433f, -1202f, 260f, -1307f), vec4<f32>(-1502f, -738f, 789f, 641f), true))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -319f;
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(func_1(vec2<u32>(1u, 36653u)), Struct_3(Struct_2(vec4<u32>(49025u, 4294967295u, u_input.e, 90885u))), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.e, u_input.c, 30271u), vec4<u32>(99045u, 1137u, 1u, 41385u)), true))))), 434f, vec3<f32>(_wgslsmith_f_op_vec4_f32(func_4(func_1(_wgslsmith_div_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 3575u))), Struct_3(func_1(u_input.a)), select(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.c, 18703u, 52059u), vec4<u32>(u_input.e, 0u, u_input.c, 1u)), ~vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.e), all(vec4<bool>(false, false, true, false))), all(vec3<bool>(true, true, true)))).x, _wgslsmith_f_op_f32(var_0 - 123f), var_0), _wgslsmith_dot_vec2_i32(countOneBits(u_input.d.wz), u_input.d.yx));
    global3 = array<Struct_1, 19>();
    global1 = -(i32(-1i) * -_wgslsmith_dot_vec3_i32(~vec3<i32>(0i, u_input.d.x, -53994i), abs(vec3<i32>(u_input.b, var_1.d, 21251i))));
    global0 = array<vec3<bool>, 27>();
    let var_2 = 1063f;
    global1 = -var_1.d;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-712f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 * 535f))), -1131f, _wgslsmith_f_op_f32(select(-993f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(var_0)), _wgslsmith_f_op_f32(f32(-1f) * -1411f))), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2, 324f)))));
}

