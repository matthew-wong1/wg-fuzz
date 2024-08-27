struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 15>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32) -> f32 {
    let var_0 = ~_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(u_input.e, u_input.e), _wgslsmith_add_u32(~57810u, ~u_input.e)), vec2<u32>(select(1u, 1u, true), ~u_input.e));
    global0 = 1u;
    let var_1 = 1i & arg_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(331f, _wgslsmith_f_op_f32(max(-1639f, _wgslsmith_f_op_f32(round(-2149f))))), _wgslsmith_f_op_f32(f32(-1f) * -459f), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<f32>) -> vec4<i32> {
    global1 = array<Struct_1, 15>();
    global0 = _wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(~abs(vec3<u32>(u_input.e, 4294967295u, u_input.e)), reverseBits(vec3<u32>(4294967295u, u_input.e, u_input.e)) ^ (vec3<u32>(1u, 48292u, u_input.e) ^ vec3<u32>(u_input.e, u_input.e, 97140u))), min(vec3<u32>(1u, 13596u, _wgslsmith_clamp_u32(countOneBits(1u), 1u, u_input.e)), vec3<u32>(~58493u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, u_input.e, 0u, u_input.e) ^ vec4<u32>(u_input.e, u_input.e, 98025u, u_input.e), ~vec4<u32>(u_input.e, 44103u, u_input.e, u_input.e)), 1u)));
    global0 = u_input.e;
    var var_0 = Struct_1(-41042i);
    let var_1 = arg_0.x;
    return firstLeadingBit(u_input.a);
}

fn func_5(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_1) -> vec2<bool> {
    return !select(select(!select(vec2<bool>(false, arg_0), vec2<bool>(false, arg_0), arg_0), select(vec2<bool>(false, arg_0), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), false), vec2<bool>(true, arg_0)), select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(arg_0, arg_0), false))), !select(!vec2<bool>(true, arg_0), !vec2<bool>(arg_0, arg_0), !vec2<bool>(arg_0, arg_0)), any(select(select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true)), vec2<bool>(true, true), select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true)))));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>) -> vec3<f32> {
    let var_0 = Struct_1(abs(81171i));
    let var_1 = !(!arg_1);
    var var_2 = !select(!select(arg_1.xw, !vec2<bool>(true, arg_0.c.x), false), select(var_1.yx, vec2<bool>(true, true), !var_1.zx), true);
    let var_3 = _wgslsmith_mod_u32(1u, ~25390u);
    var var_4 = Struct_2(_wgslsmith_f_op_f32(-arg_0.a), Struct_1(u_input.b.x), func_5(arg_0.c.x, func_4(vec2<f32>(_wgslsmith_f_op_f32(arg_0.a - arg_0.a), _wgslsmith_f_op_f32(func_3(1i))), vec3<f32>(arg_0.a, arg_0.a, _wgslsmith_f_op_f32(-arg_0.a))), var_0), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(var_3, _wgslsmith_mult_u32(0u, u_input.e)), 15u)]);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1646f, 1071f, var_4.a))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.a, var_4.a, arg_0.a))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-347f, -1355f, arg_0.a))), _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a, -982f, arg_0.a), vec3<f32>(arg_0.a, -1788f, 686f))))) * vec3<f32>(_wgslsmith_f_op_f32(round(var_4.a)), -402f, arg_0.a)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(370f, -1489f, arg_0.a)));
}

fn func_6(arg_0: Struct_2, arg_1: vec3<f32>) -> Struct_2 {
    let var_0 = !(!select(!vec3<bool>(arg_0.c.x, false, arg_0.c.x), !select(vec3<bool>(true, arg_0.c.x, arg_0.c.x), vec3<bool>(false, arg_0.c.x, true), vec3<bool>(arg_0.c.x, false, false)), !vec3<bool>(arg_0.c.x, true, true)));
    global1 = array<Struct_1, 15>();
    var var_1 = arg_0;
    global1 = array<Struct_1, 15>();
    var var_2 = Struct_2(_wgslsmith_f_op_f32(step(-1812f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - _wgslsmith_f_op_f32(step(-1575f, arg_1.x))))))), Struct_1(-(i32(-1i) * -12912i)), !(!arg_0.c), Struct_1(~(u_input.a.x | arg_0.d.a) >> (reverseBits(firstTrailingBit(u_input.e)) % 32u)));
    return arg_0;
}

fn func_7(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    global0 = ~_wgslsmith_dot_vec2_u32(firstTrailingBit(reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.e, u_input.e), vec2<u32>(52810u, u_input.e)))), vec2<u32>(~0u, 0u));
    let var_0 = Struct_1(u_input.d);
    global1 = array<Struct_1, 15>();
    var var_1 = -u_input.b.zw;
    global1 = array<Struct_1, 15>();
    return global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(~66630u, 1u, u_input.e), vec3<u32>(5701u << (u_input.e % 32u), 1u, u_input.e)), ~vec3<u32>(abs(u_input.e), ~u_input.e, 19391u & u_input.e)), 15u)];
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> bool {
    let var_0 = u_input.a.zx;
    let var_1 = func_7(func_6(arg_1, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(max(arg_1.a, 117f)), -901f, _wgslsmith_f_op_f32(arg_3.a - -476f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(arg_1, vec4<bool>(arg_1.c.x, arg_1.c.x, arg_1.c.x, true)))), any(!vec3<bool>(arg_3.c.x, arg_1.c.x, false))))), false, func_6(arg_3, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(461f, arg_3.a, arg_1.a))) + vec3<f32>(_wgslsmith_f_op_f32(select(448f, -352f, arg_3.c.x)), arg_3.a, _wgslsmith_f_op_f32(exp2(arg_1.a))))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a * arg_1.a) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_3.a), _wgslsmith_f_op_f32(-arg_3.a), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -657f) + _wgslsmith_f_op_f32(min(214f, _wgslsmith_div_f32(-211f, -134f)))))), func_7(Struct_2(-106f, func_7(func_6(Struct_2(arg_3.a, global1[_wgslsmith_index_u32(u_input.e, 15u)], arg_1.c, Struct_1(-36991i)), vec3<f32>(-1361f, arg_3.a, 312f)), any(vec3<bool>(true, arg_3.c.x, arg_1.c.x)), arg_3), !arg_3.c, func_6(arg_3, vec3<f32>(-466f, 2120f, 569f)).b), any(!select(vec3<bool>(true, arg_1.c.x, arg_3.c.x), vec3<bool>(true, false, false), vec3<bool>(false, arg_1.c.x, true))), arg_1), func_5(!arg_1.c.x, firstLeadingBit(select(abs(vec4<i32>(-37403i, var_0.x, var_1.a, u_input.b.x)), u_input.a, vec4<bool>(false, arg_3.c.x, true, false))), global1[_wgslsmith_index_u32(0u, 15u)]), func_7(func_6(func_6(Struct_2(1333f, Struct_1(-1i), vec2<bool>(false, true), arg_3.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(-844f, arg_3.a, arg_1.a) - vec3<f32>(-651f, 623f, 907f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-106f, arg_3.a, arg_1.a) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.a, -1701f, -1000f)))), false, arg_3));
    global0 = ~((u_input.e >> (92806u % 32u)) << (~firstLeadingBit(1u) % 32u));
    var var_3 = global1[_wgslsmith_index_u32(u_input.e, 15u)];
    return any(func_5(!arg_3.c.x, vec4<i32>(arg_2.a, arg_0.a, ~(-1i) | _wgslsmith_add_i32(arg_0.a, arg_2.a), -2147483647i), Struct_1(-2147483647i)));
}

fn func_8(arg_0: vec4<bool>, arg_1: vec3<f32>) -> u32 {
    global1 = array<Struct_1, 15>();
    global1 = array<Struct_1, 15>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x));
    global0 = abs(u_input.e);
    var_0 = _wgslsmith_f_op_f32(exp2(arg_1.x));
    return 4726u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~func_8(vec4<bool>(false, func_1(global1[_wgslsmith_index_u32(min(0u, 0u), 15u)], Struct_2(-1968f, global1[_wgslsmith_index_u32(56092u, 15u)], vec2<bool>(true, true), Struct_1(0i)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(10434u, 58668u, u_input.e), vec3<u32>(u_input.e, 0u, u_input.e)), 15u)], Struct_2(-1797f, global1[_wgslsmith_index_u32(u_input.e, 15u)], vec2<bool>(false, false), Struct_1(u_input.d))), all(vec3<bool>(false, false, false)), any(vec3<bool>(false, false, true))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-343f, -1755f, 1327f) * vec3<f32>(412f, 848f, -638f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(614f, -1893f, -200f) - vec3<f32>(-169f, -919f, -517f))))));
    global1 = array<Struct_1, 15>();
    let var_0 = Struct_1(max(u_input.a.x, -15513i));
    global1 = array<Struct_1, 15>();
    let var_1 = ~vec3<u32>(u_input.e, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e | u_input.e, ~118073u), vec2<u32>(59735u, u_input.e)), 1u);
    global1 = array<Struct_1, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(select(1000f, 1341f, true)), 2554f, 866f), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -122f, 860f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(556f, 373f, 262f) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-310f, 1000f, 469f), vec3<f32>(-474f, 942f, -1529f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(189f, 673f), vec2<f32>(-645f, -2675f)))), _wgslsmith_f_op_vec3_f32(func_2(Struct_2(1000f, Struct_1(-1i), vec2<bool>(true, true), var_0), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), true))).xz))), ~(~vec4<u32>(var_1.x, 56960u, 83039u, 54014u) | _wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 43305u, var_1.x, 105933u), _wgslsmith_mult_vec4_u32(vec4<u32>(57414u, var_1.x, u_input.e, var_1.x), vec4<u32>(108798u, 45324u, u_input.e, u_input.e)))), 0i);
}

