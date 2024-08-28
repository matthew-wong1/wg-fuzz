struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 5> = array<vec3<f32>, 5>(vec3<f32>(-2248f, 898f, 1000f), vec3<f32>(-406f, 903f, 1637f), vec3<f32>(1335f, -726f, -905f), vec3<f32>(121f, 915f, -520f), vec3<f32>(193f, -725f, -1740f));

var<private> global1: bool;

var<private> global2: bool = false;

var<private> global3: array<vec3<f32>, 17>;

var<private> global4: array<i32, 9>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = abs(vec3<u32>(31421u, _wgslsmith_mult_u32(u_input.b.x, 1097u) >> (arg_0.b % 32u), _wgslsmith_clamp_u32(u_input.b.x & arg_0.b, arg_0.b ^ u_input.b.x, countOneBits(6314u))) & max(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.b, u_input.b), u_input.b | u_input.b), select(u_input.b, ~u_input.b, true)));
    global0 = array<vec3<f32>, 5>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-898f, arg_0.a, -187f, 637f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, arg_0.a, -4289f, arg_0.a) - vec4<f32>(arg_0.a, -1202f, -291f, arg_0.a)), all(vec4<bool>(true, true, true, false)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, -541f, arg_0.a, arg_0.a) - vec4<f32>(1421f, -969f, arg_0.a, arg_0.a)))) * vec4<f32>(arg_0.a, arg_0.a, _wgslsmith_f_op_f32(floor(-1235f)), arg_0.a)) + vec4<f32>(380f, -677f, _wgslsmith_f_op_f32(f32(-1f) * -800f), arg_0.a));
    global0 = array<vec3<f32>, 5>();
    var var_2 = arg_0.a;
    return 1000f;
}

fn func_2() -> Struct_1 {
    global4 = array<i32, 9>();
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1081f * _wgslsmith_f_op_f32(f32(-1f) * -189f)) - 985f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(283f)) - _wgslsmith_f_op_f32(abs(-581f))))) > _wgslsmith_f_op_f32(f32(-1f) * -1042f);
    global2 = false;
    let var_0 = max(~select(~(u_input.b.zx & vec2<u32>(875u, u_input.b.x)), ~(vec2<u32>(1u, 4294967295u) >> (u_input.b.zz % vec2<u32>(32u))), vec2<bool>(false, false)), u_input.b.yx);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_1(1093f, 55841u))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-322f - 1000f), _wgslsmith_f_op_f32(1148f - 2292f))))), ~countOneBits(u_input.b.x));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: vec3<bool>, arg_3: vec3<bool>) -> vec2<bool> {
    global3 = array<vec3<f32>, 17>();
    global1 = false | all(vec4<bool>(true, true, false && arg_2.x, true));
    let var_0 = ~(~_wgslsmith_div_vec2_i32(vec2<i32>(30616i, min(global4[_wgslsmith_index_u32(arg_1.x, 9u)], global4[_wgslsmith_index_u32(arg_0.x, 9u)])), firstTrailingBit(vec2<i32>(-2147483647i, u_input.c.x)) >> ((vec2<u32>(2437u, u_input.b.x) >> (arg_0.yz % vec2<u32>(32u))) % vec2<u32>(32u))));
    let var_1 = Struct_3(func_2(), select(vec2<u32>(arg_0.x, 38946u), vec2<u32>(firstLeadingBit(1u), 20368u), arg_3.zx));
    global2 = global4[_wgslsmith_index_u32(~14868u, 9u)] > -abs(~_wgslsmith_sub_i32(u_input.c.x, 16653i));
    return vec2<bool>(abs(_wgslsmith_add_u32(var_1.b.x, ~48710u)) <= ((1u << (0u % 32u)) >> (~(var_1.b.x & 19187u) % 32u)), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-404f, -1970f) + _wgslsmith_f_op_f32(-1487f - 273f)))))), -1387f, _wgslsmith_div_f32(-1484f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f + 1575f))) - _wgslsmith_div_f32(950f, -1211f))), _wgslsmith_f_op_f32(select(-709f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-128f + _wgslsmith_f_op_f32(step(-1347f, 616f))) + 608f), any(select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), func_1(vec3<u32>(44627u, 0u, u_input.b.x), vec2<u32>(4294967295u, 32058u), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), u_input.b.x < u_input.b.x)))));
    global3 = array<vec3<f32>, 17>();
    var var_1 = func_2();
    let var_2 = Struct_2(func_2());
    global3 = array<vec3<f32>, 17>();
    var var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, global4[_wgslsmith_index_u32(u_input.b.x, 9u)]), select(u_input.c.yz, vec2<i32>(global4[_wgslsmith_index_u32(var_1.b, 9u)], global4[_wgslsmith_index_u32(u_input.b.x, 9u)]), vec2<bool>(false, true))), _wgslsmith_div_i32(global4[_wgslsmith_index_u32(4294967295u, 9u)], ~0i)), u_input.b.x);
}

