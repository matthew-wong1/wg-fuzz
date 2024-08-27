struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<f32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: array<Struct_1, 21>;

var<private> global2: array<vec4<bool>, 26>;

var<private> global3: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec3<f32>(-482f, -856f, -531f), vec4<u32>(36784u, 13001u, 79864u, 0u)), Struct_1(vec3<f32>(1340f, -1283f, 1180f), vec4<u32>(4294967295u, 0u, 4294967295u, 42249u)), Struct_1(vec3<f32>(-1549f, -806f, -556f), vec4<u32>(4294967295u, 35354u, 4294967295u, 1u)), Struct_1(vec3<f32>(195f, -1000f, 1642f), vec4<u32>(6696u, 22630u, 1u, 52u)), Struct_1(vec3<f32>(1973f, -1217f, 2075f), vec4<u32>(1u, 29540u, 56543u, 62316u)), Struct_1(vec3<f32>(-1925f, -114f, -588f), vec4<u32>(1u, 79948u, 33263u, 4294967295u)), Struct_1(vec3<f32>(1349f, 1000f, -195f), vec4<u32>(1u, 1u, 67232u, 0u)));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2095f, _wgslsmith_f_op_f32(trunc(-1130f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1208f, -807f)), select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(true, false)))))));
    global0 = array<Struct_1, 4>();
    let var_1 = global1[_wgslsmith_index_u32(min(4294967295u, _wgslsmith_clamp_u32(u_input.b.x, _wgslsmith_dot_vec2_u32(abs(countOneBits(vec2<u32>(33095u, 0u))), select(u_input.b, _wgslsmith_add_vec2_u32(u_input.b, u_input.b), true)), 1u)), 21u)];
    var_0 = _wgslsmith_f_op_vec2_f32(step(var_1.a.xz, var_1.a.xx));
    var var_2 = !(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true)), vec2<bool>(all(vec4<bool>(false, false, true, true)), true)));
    return var_1.a.zx;
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: i32) -> f32 {
    let var_0 = -(arg_2 ^ u_input.a.x);
    global2 = array<vec4<bool>, 26>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1727f, -1176f, -636f))))))), _wgslsmith_mult_vec4_u32(reverseBits(abs(arg_0)) ^ ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 79540u, 2443u, 0u), arg_0, arg_0), ~vec4<u32>(~u_input.b.x, ~arg_0.x, ~7188u, _wgslsmith_sub_u32(u_input.b.x, u_input.b.x))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(417f, var_1.a.x) - var_1.a.xz), _wgslsmith_f_op_vec2_f32(var_1.a.yz - vec2<f32>(-592f, var_1.a.x)))) - var_1.a.zy) + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(268f * var_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) - -216f))) + _wgslsmith_f_op_vec2_f32(func_3()));
    let var_3 = (~arg_0.yww >> ((~select(arg_0.wxw, arg_0.xwz, vec3<bool>(false, true, arg_1)) | vec3<u32>(min(arg_0.x, arg_0.x), 30284u, 43269u)) % vec3<u32>(32u))) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, 1u, arg_0.x), ~(~vec3<u32>(4294967295u, 103676u, u_input.b.x) ^ abs(arg_0.yyw)), var_1.b.wzw) % vec3<u32>(32u));
    return _wgslsmith_f_op_f32(max(var_2.x, _wgslsmith_f_op_f32(-var_1.a.x)));
}

fn func_1(arg_0: u32, arg_1: bool) -> bool {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(firstLeadingBit(vec4<u32>(arg_0, u_input.b.x, 1u, 4294967295u)), arg_1, _wgslsmith_div_i32(11612i, u_input.a.x))), 1f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 53799u, u_input.b.x, 17911u), vec4<u32>(0u, u_input.b.x, u_input.b.x, arg_0)), arg_1, u_input.a.x))))), 1139f);
    global1 = array<Struct_1, 21>();
    var var_1 = !arg_1;
    var_1 = any(select(select(!select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, arg_1, arg_1), false), vec3<bool>(true, arg_1 & true, arg_1), select(select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(arg_1, arg_1, true), false), !vec3<bool>(arg_1, arg_1, false), select(vec3<bool>(false, true, true), vec3<bool>(false, arg_1, arg_1), vec3<bool>(arg_1, true, false)))), !select(select(vec3<bool>(arg_1, false, true), vec3<bool>(arg_1, false, arg_1), arg_1), vec3<bool>(arg_1, true, arg_1), vec3<bool>(true, true, true)), arg_1));
    var var_2 = firstTrailingBit(0i);
    return !arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 21>();
    let var_0 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(166f * -292f)), _wgslsmith_f_op_f32(-1582f * -819f), -443f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1443f, 114f, -936f))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-106f, 291f, -1708f)))) * vec3<f32>(1f, 1f, 1f))), _wgslsmith_mult_vec4_u32(firstTrailingBit(~vec4<u32>(73481u, 21961u, 1166u, u_input.b.x)), vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b.x, 31095u, 19906u), vec3<u32>(1u, u_input.b.x, u_input.b.x) << (vec3<u32>(u_input.b.x, u_input.b.x, 0u) % vec3<u32>(32u))), 62455u, 1u, max(u_input.b.x, 32158u))));
    global1 = array<Struct_1, 21>();
    global3 = array<Struct_1, 7>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a.x))), -409f, -362f)));
    var var_2 = !vec3<bool>(true, false, !(func_1(var_0.b.x, true) & true));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mod_vec3_u32(var_0.b.wzw, vec3<u32>(var_0.b.x, 16884u, 0u))), _wgslsmith_f_op_f32(-var_0.a.x), var_0.a.yy, ~var_0.b.zxw, _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, _wgslsmith_mult_i32(~u_input.a.x, select(28277i, u_input.a.x & 0i, var_2.x))));
}

