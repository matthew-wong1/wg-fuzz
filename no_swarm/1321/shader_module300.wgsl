struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
    c: bool,
    d: vec2<f32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<i32, 18> = array<i32, 18>(-18217i, -23956i, 1i, 0i, 43269i, 2147483647i, -61739i, 1094i, -1i, 2147483647i, 3004i, 1i, 2147483647i, 5252i, 2147483647i, 15541i, 0i, -1i);

var<private> global2: array<vec3<f32>, 5> = array<vec3<f32>, 5>(vec3<f32>(-1410f, -328f, -2143f), vec3<f32>(-399f, -1000f, 644f), vec3<f32>(581f, -289f, -1059f), vec3<f32>(1093f, -1248f, -1324f), vec3<f32>(-240f, -198f, 1842f));

var<private> global3: array<i32, 19>;

var<private> global4: array<Struct_4, 22>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: u32, arg_3: Struct_4) -> vec4<bool> {
    let var_0 = abs(-15518i);
    let var_1 = select(!vec2<bool>(arg_3.a, (29222u == arg_0) & true), !vec2<bool>(_wgslsmith_dot_vec2_i32(u_input.b.xy, u_input.a.xx) != ~var_0, all(select(vec2<bool>(arg_3.a, true), vec2<bool>(arg_3.a, false), vec2<bool>(false, true)))), ~(-2147483647i) > _wgslsmith_add_i32(firstTrailingBit(~1i), _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1645u, arg_2), 18u)], _wgslsmith_add_i32(2147483647i, -2147483647i))));
    return !vec4<bool>(false, any(select(select(vec2<bool>(arg_3.a, false), vec2<bool>(arg_3.a, arg_3.a), true), vec2<bool>(true, true), select(var_1, vec2<bool>(true, arg_3.a), vec2<bool>(true, false)))), any(!vec2<bool>(true, arg_3.a)), !(arg_2 == _wgslsmith_mult_u32(62115u, arg_2)));
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_2) -> bool {
    return _wgslsmith_mult_i32(firstLeadingBit(global1[_wgslsmith_index_u32(1u, 18u)] >> (33456u % 32u)), arg_2.a.x) > select(max(abs(i32(-1i) * -23618i), _wgslsmith_div_i32(reverseBits(global0.x), -1i)), global0.x, true);
}

fn func_2(arg_0: vec4<i32>, arg_1: f32) -> vec4<f32> {
    let var_0 = Struct_1(~(~max(reverseBits(43313u), 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-137f + arg_1), arg_1))), vec2<bool>(func_4(func_3(4294967295u >> (0u % 32u), _wgslsmith_f_op_f32(arg_1 * arg_1), ~1u, Struct_4(true)), true, Struct_2(u_input.b, Struct_1(10925u, -234f, vec2<bool>(true, true)), all(vec3<bool>(true, true, true)), Struct_1(30222u, -1364f, vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1082f, arg_1) * vec2<f32>(416f, 1000f)))), func_3(1u, _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(sign(440f))), reverseBits(1u >> (0u % 32u)), Struct_4(true)).x));
    let var_1 = firstTrailingBit(1u);
    global0 = u_input.b << (~max(reverseBits(vec4<u32>(0u, var_0.a, 0u, var_1)) ^ vec4<u32>(4294967295u, 0u, var_1, 19747u), countOneBits(vec4<u32>(1u, var_1, var_1, var_1))) % vec4<u32>(32u));
    global3 = array<i32, 19>();
    var var_2 = global4[_wgslsmith_index_u32(var_0.a, 22u)];
    return _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.b, -175f, -1517f, 581f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1))), -852f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), -206f))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<bool>) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-308f, 325f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1294f))))));
    let var_1 = global3[_wgslsmith_index_u32(~(_wgslsmith_mod_u32(~1u << (0u % 32u), ~_wgslsmith_mod_u32(15134u, 1u)) ^ ~(~firstTrailingBit(22019u))), 19u)];
    var var_2 = ~1u;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(~vec4<i32>(u_input.a.x, global0.x, -13283i, arg_0.x), -204f))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2728f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -270f) * _wgslsmith_div_f32(-1984f, -110f)), -885f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-321f))))));
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.x)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2393f;
    global1 = array<i32, 18>();
    var var_1 = vec2<i32>(-1i) * -u_input.b.wz;
    var var_2 = _wgslsmith_f_op_f32(sign(664f));
    var_2 = _wgslsmith_f_op_f32(-var_0);
    var_1 = -(~_wgslsmith_mult_vec2_i32(func_1(-u_input.a.xz, vec2<bool>(true, true)), _wgslsmith_mod_vec2_i32(~global0.ww, global0.yx)));
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(1837f, _wgslsmith_f_op_f32(ceil(var_0)), global0.x, 1406f);
}

