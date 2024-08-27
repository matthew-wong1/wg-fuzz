struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<i32, 31> = array<i32, 31>(-47263i, i32(-2147483648), 16160i, 35727i, -13188i, 2147483647i, 0i, 54279i, -1i, 39230i, 1i, -7853i, -9988i, i32(-2147483648), 0i, 20862i, -10918i, -31534i, -1i, -11223i, -1i, -55626i, -23798i, i32(-2147483648), -1945i, 95802i, 37207i, -1i, 1i, 2147483647i, 2147483647i);

var<private> global2: vec4<i32>;

var<private> global3: i32;

var<private> global4: vec4<i32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: u32) -> vec4<u32> {
    global4 = vec4<i32>(arg_2.a, reverseBits(reverseBits(i32(-1i) * -31410i)), 23323i, ~(-arg_2.a));
    var var_0 = Struct_2(all(vec4<bool>(all(vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x)) || !arg_2.b.x, true, 2147483647i != -u_input.b.x, all(!arg_2.b))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1236f, 520f), vec2<f32>(1468f, 592f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(605f, -1325f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(199f)), _wgslsmith_f_op_f32(select(511f, 1356f, arg_2.b.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-449f, 1052f), vec2<f32>(-2260f, -226f))))), arg_2, any(!vec2<bool>(false != arg_1.x, true)));
    var var_1 = _wgslsmith_div_u32(arg_0, 58158u);
    var var_2 = vec4<i32>(u_input.b.x, ~var_0.c.a, select(global2.x, 2147483647i, all(!vec3<bool>(false, var_0.d, arg_1.x)) | false), u_input.b.x);
    var var_3 = Struct_1(var_0.c.a, var_0.c.b);
    return ~select(~(vec4<u32>(u_input.d, 1u, 9061u, 1u) & vec4<u32>(global0.x, global0.x, 19329u, u_input.c.x)), vec4<u32>(_wgslsmith_dot_vec3_u32(global0.zwz, vec3<u32>(0u, 1u, global0.x)), 44991u, u_input.a.x, u_input.d), vec4<bool>(var_0.c.b.x, u_input.d <= 0u, false, u_input.a.x < 122511u)) << (_wgslsmith_mod_vec4_u32(~_wgslsmith_sub_vec4_u32(~vec4<u32>(arg_3, global0.x, arg_3, 4294967295u), abs(vec4<u32>(92850u, 25227u, 122898u, u_input.c.x))), vec4<u32>(abs(_wgslsmith_mod_u32(29857u, global0.x)), 1u, 7924u, global0.x)) % vec4<u32>(32u));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<u32>) -> i32 {
    global4 = _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(1i, -1i & global2.x, u_input.b.x << (arg_1.x % 32u), ~global4.x), -(~u_input.b) | abs(_wgslsmith_sub_vec4_i32(u_input.b, u_input.b))), vec4<i32>(-max(global4.x, ~(-45187i)), _wgslsmith_mod_i32(-69602i, global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_mult_u32(60159u, global0.x)), 31u)]), ~global1[_wgslsmith_index_u32(4294967295u, 31u)], global4.x));
    let var_0 = i32(-1i) * -1i;
    global1 = array<i32, 31>();
    let var_1 = firstTrailingBit(arg_1);
    var var_2 = -109f;
    return 0i;
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: i32) -> bool {
    global3 = -arg_2;
    var var_0 = Struct_1(arg_2, !(!vec3<bool>(any(vec3<bool>(false, true, false)), any(vec3<bool>(false, true, true)), true)));
    global1 = array<i32, 31>();
    global3 = abs(_wgslsmith_add_i32(_wgslsmith_div_i32(61593i, 2147483647i | global4.x), abs(-26526i))) & ~u_input.b.x;
    global3 = _wgslsmith_div_i32(abs(0i), func_3(vec4<bool>(!(var_0.b.x || var_0.b.x), !any(var_0.b.zx), true, false), select(firstTrailingBit(arg_0) >> (func_2(0u, var_0.b.yx, Struct_1(-27472i, var_0.b), 3288u) % vec4<u32>(32u)), firstLeadingBit(func_2(arg_0.x, vec2<bool>(true, false), Struct_1(-5230i, vec3<bool>(true, false, var_0.b.x)), arg_0.x)), !vec4<bool>(false, false, var_0.b.x, false))));
    return all(vec3<bool>(global0.x > _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(arg_0, vec4<u32>(1466u, 1u, 4294967295u, 4294967295u)), max(vec4<u32>(global0.x, arg_0.x, 35555u, arg_0.x), vec4<u32>(72611u, arg_0.x, 4294967295u, 3499u))), true, ~1i <= _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b.x, 102i, 2147483647i, global1[_wgslsmith_index_u32(107195u, 31u)]), vec4<i32>(var_0.a, -2147483647i, u_input.b.x, global1[_wgslsmith_index_u32(11474u, 31u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1947f), 1f));
    var var_1 = global4.wzy;
    var var_2 = Struct_2(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-579f, -2840f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-728f, -481f) * vec2<f32>(1000f, -1000f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(559f, 2268f))), func_1(~vec4<u32>(global0.x, global0.x, 2049u, u_input.a.x), u_input.b.x, -1i)))), Struct_1(func_3(select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), false), vec4<bool>(false, true, false, true)), vec4<u32>(1u, ~u_input.d, u_input.c.x, 0u)), vec3<bool>(true, any(vec4<bool>(true, true, true, false)), 915f < _wgslsmith_f_op_f32(round(633f)))), false);
    var var_3 = var_2.c;
    var var_4 = all(select(!vec2<bool>(any(var_2.c.b.zz), var_1.x >= 1876i), var_3.b.zx, var_3.b.xy));
    global3 = u_input.b.x;
    global4 = ~u_input.b;
    var var_5 = !(!(!select(select(vec4<bool>(var_3.b.x, var_3.b.x, true, var_2.d), vec4<bool>(var_3.b.x, var_2.c.b.x, var_3.b.x, var_2.a), true), select(vec4<bool>(var_3.b.x, var_3.b.x, false, var_3.b.x), vec4<bool>(true, false, true, var_3.b.x), var_2.c.b.x), vec4<bool>(false, var_3.b.x, false, false))));
    var var_6 = _wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(1i, 37208i, -2147483647i, _wgslsmith_mod_i32(var_2.c.a, ~var_2.c.a))), vec4<i32>(-24992i, u_input.b.x, global1[_wgslsmith_index_u32(~17552u, 31u)], 28596i));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(max(var_1.x, var_1.x), global1[_wgslsmith_index_u32(select(29607u, global0.x, any(vec2<bool>(true, true))), 31u)]), _wgslsmith_mod_u32(~global0.x, ~firstLeadingBit(4294967295u)), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(-min(global2.ywx, var_6.zwy), vec3<i32>(min(0i, -33550i), ~32947i, 1i)), -global2.wzw), -15368i ^ var_1.x, var_6.x);
}

