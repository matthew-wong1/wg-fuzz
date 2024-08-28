struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<bool, 4> = array<bool, 4>(false, false, false, true);

var<private> global2: array<bool, 6> = array<bool, 6>(false, true, false, true, false, true);

var<private> global3: array<u32, 30>;

var<private> global4: vec3<u32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_5, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    global1 = array<bool, 4>();
    global1 = array<bool, 4>();
    let var_0 = Struct_2(arg_2, vec2<u32>(~abs(63807u >> (0u % 32u)), ~37863u));
    var var_1 = _wgslsmith_f_op_f32(arg_2.b + _wgslsmith_f_op_f32(step(-761f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(710f))))))));
    var var_2 = Struct_5(_wgslsmith_div_vec4_u32(select(arg_1.d.a, ~vec4<u32>(4294967295u, 23710u, 4294967295u, 2581u), select(select(vec4<bool>(true, true, true, global1[_wgslsmith_index_u32(1u, 4u)]), vec4<bool>(true, arg_0.x, global1[_wgslsmith_index_u32(var_0.b.x, 4u)], false), false), !vec4<bool>(arg_0.x, true, arg_0.x, global2[_wgslsmith_index_u32(1545u, 6u)]), true)), arg_1.a), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1090f, 136f, arg_0.x))))))), global4.x, Struct_4(abs(countOneBits(arg_1.d.a >> (arg_1.a % vec4<u32>(32u))))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_1.b, _wgslsmith_div_f32(682f, -2417f))), var_0.a.a);
}

fn func_2() -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(step(1264f, _wgslsmith_f_op_f32(func_3(vec2<bool>(global1[_wgslsmith_index_u32(global4.x, 4u)], global2[_wgslsmith_index_u32(u_input.b.x, 6u)]), Struct_5(u_input.b >> (u_input.b % vec4<u32>(32u)), _wgslsmith_f_op_f32(-668f + 805f), ~global3[_wgslsmith_index_u32(global4.x, 30u)], Struct_4(vec4<u32>(1u, u_input.b.x, 15401u, 4294967295u))), Struct_1(-476f, _wgslsmith_f_op_f32(floor(-1972f))), Struct_1(_wgslsmith_f_op_f32(-2255f - 237f), _wgslsmith_f_op_f32(f32(-1f) * -1413f)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(393f + _wgslsmith_div_f32(-2322f, -299f))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1922f - 1447f), -2063f))))));
    let var_1 = _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(abs(firstTrailingBit(vec4<i32>(-1903i, 29457i, 0i, 1i))), vec4<i32>(-28591i, _wgslsmith_dot_vec3_i32(vec3<i32>(-41502i, 2147483647i, 13147i), vec3<i32>(1i, -2147483647i, -31952i)), 1i, i32(-1i) * -2147483647i)) ^ -28404i, _wgslsmith_div_i32(2147483647i << (abs(max(1u, global4.x)) % 32u), 1i));
    let var_2 = _wgslsmith_div_u32(global3[_wgslsmith_index_u32(select(~1u, 52111u | u_input.a, !(!global1[_wgslsmith_index_u32(global4.x, 4u)] == false)), 30u)], 0u);
    var var_3 = _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(firstLeadingBit(-1364i), max(select(var_1, var_1, global1[_wgslsmith_index_u32(u_input.b.x, 4u)]), var_1))), _wgslsmith_sub_vec2_i32(~_wgslsmith_mult_vec2_i32(select(vec2<i32>(var_1, var_1), vec2<i32>(2147483647i, -1i), global1[_wgslsmith_index_u32(u_input.b.x, 4u)]), vec2<i32>(var_1, var_1)), vec2<i32>(-25522i, var_1)));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(793f)));
    return reverseBits(var_2);
}

fn func_1(arg_0: f32, arg_1: vec3<i32>, arg_2: vec3<i32>) -> u32 {
    global1 = array<bool, 4>();
    global2 = array<bool, 6>();
    var var_0 = max(vec3<u32>(_wgslsmith_sub_u32(~_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 30u)], 30u)], global3[_wgslsmith_index_u32(global4.x, 30u)]), ~func_2()), func_2(), u_input.a), ~(~(~u_input.b.zyx)));
    let var_1 = Struct_4(~(~u_input.b));
    global3 = array<u32, 30>();
    return ~min(~1u, _wgslsmith_sub_u32(countOneBits(var_1.a.x), _wgslsmith_mult_u32(1u, max(var_1.a.x, var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_div_vec3_u32(vec3<u32>(select(~func_1(-494f, vec3<i32>(33607i, -2745i, 53373i), vec3<i32>(-2147483647i, 19294i, -2147483647i)), reverseBits(0u), any(vec3<bool>(true, global2[_wgslsmith_index_u32(1u, 6u)], global2[_wgslsmith_index_u32(4294967295u, 6u)]))), u_input.a, ~((global3[_wgslsmith_index_u32(global4.x, 30u)] ^ global4.x) ^ ~global3[_wgslsmith_index_u32(4294967295u, 30u)])), ~(~select(u_input.b.zzz, u_input.b.yww, vec3<bool>(true, global1[_wgslsmith_index_u32(global4.x, 4u)], true))) & vec3<u32>(global4.x, func_2(), _wgslsmith_sub_u32(~global3[_wgslsmith_index_u32(50600u, 30u)], 41840u)));
    var var_0 = -reverseBits(1i);
    var_0 = 1i;
    var var_1 = -min(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 19474i) >> (abs(global4.zz) % vec2<u32>(32u)), ~(~vec2<i32>(-45113i, -1i))), _wgslsmith_mod_i32(1i, -44039i));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1917f, -481f), vec2<f32>(-1109f, 686f), global2[_wgslsmith_index_u32(u_input.a, 6u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1864f, 1000f)))) * vec2<f32>(-2087f, _wgslsmith_f_op_f32(-274f - -1524f)))));
    let var_3 = select(0i, _wgslsmith_mult_i32(~1i, -(~0i)) ^ (min(~1i, _wgslsmith_mult_i32(0i, 13035i)) | _wgslsmith_clamp_i32(-2147483647i, select(1135i, -2017i, true), 48362i >> (0u % 32u))), true);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~(-vec4<i32>(-2147483647i, var_3, 1i, 0i))) & max(-vec4<i32>(2147483647i, 2147483647i, -2557i, var_3), countOneBits(~vec4<i32>(var_3, 65406i, var_3, var_3))), var_3, _wgslsmith_div_vec3_u32(u_input.b.xzz, max(max(vec3<u32>(20630u, 7928u, u_input.a), vec3<u32>(145104u, 4294967295u, global4.x)) | u_input.b.zzw, vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(488u, 4294967295u, 4294967295u, u_input.a), vec4<u32>(1u, u_input.b.x, global4.x, global3[_wgslsmith_index_u32(5704u, 30u)])), ~1u, _wgslsmith_div_u32(0u, global4.x)))));
}

