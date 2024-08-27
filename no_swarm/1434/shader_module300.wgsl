struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 8>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_2(u_input.a, Struct_1(-1497f, arg_2.b, _wgslsmith_dot_vec3_i32(arg_1.zxw >> (vec3<u32>(85575u, 39921u, 4294967295u) % vec3<u32>(32u)), -vec3<i32>(0i, arg_1.x, arg_2.c))));
    let var_1 = ~0u;
    return arg_2.b;
}

fn func_3() -> u32 {
    let var_0 = 1u;
    let var_1 = Struct_2(~2147483647i, Struct_1(_wgslsmith_f_op_f32(max(321f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1302f, -923f)))), _wgslsmith_mult_u32(var_0, ~_wgslsmith_mod_u32(var_0, var_0)), 0i));
    let var_2 = var_0;
    var var_3 = select(vec2<bool>(any(vec2<bool>(all(vec2<bool>(true, false)), false)), true), vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, true), false)) | any(select(vec2<bool>(true, true), vec2<bool>(false, true), false)), false), vec2<bool>(true, !(any(vec4<bool>(false, false, true, false)) | true)));
    global0 = array<vec4<u32>, 8>();
    return firstLeadingBit(~select(_wgslsmith_add_u32(0u, 0u), ~var_0, !var_3.x) ^ var_0);
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> Struct_2 {
    var var_0 = global0[_wgslsmith_index_u32(~1u, 8u)] >> (_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(global0[_wgslsmith_index_u32(arg_2.b, 8u)] ^ vec4<u32>(34222u, 0u, arg_2.b, 14928u), _wgslsmith_clamp_vec4_u32(global0[_wgslsmith_index_u32(40422u, 8u)], vec4<u32>(arg_2.b, arg_2.b, arg_2.b, arg_2.b), vec4<u32>(arg_2.b, arg_2.b, arg_2.b, 0u))), ~min(vec4<u32>(arg_2.b, arg_2.b, arg_2.b, 4294967295u), vec4<u32>(4294967295u, 33784u, 4294967295u, 0u))), firstLeadingBit(select(~vec4<u32>(13106u, 44025u, arg_2.b, arg_2.b), ~vec4<u32>(arg_2.b, 1u, arg_2.b, arg_2.b), !arg_1))) % vec4<u32>(32u));
    var var_1 = 28016u;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a, arg_0) + vec2<f32>(arg_0, -1263f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1725f, arg_2.a) * vec2<f32>(arg_0, arg_0))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, 224f), vec2<f32>(arg_2.a, -2941f)))))));
    var var_3 = firstLeadingBit(vec3<i32>(i32(-1i) * -u_input.a, -arg_2.c, 1i));
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1350f * -912f))), _wgslsmith_f_op_f32(-426f + arg_2.a), arg_0, _wgslsmith_f_op_f32(arg_2.a + arg_0));
    return Struct_2(_wgslsmith_dot_vec3_i32(countOneBits(max(-vec3<i32>(-11161i, u_input.a, arg_2.c), -vec3<i32>(73631i, 16450i, 1i))), reverseBits(~(vec3<i32>(-42269i, arg_2.c, 2147483647i) & vec3<i32>(var_3.x, u_input.a, arg_2.c)))), arg_2);
}

fn func_1(arg_0: vec2<f32>) -> f32 {
    let var_0 = 45312u;
    var var_1 = func_4(arg_0.x, ~_wgslsmith_clamp_u32(var_0, var_0 << (45338u % 32u), func_2(Struct_1(arg_0.x, var_0, 11173i), vec4<i32>(u_input.a, 51870i, u_input.a, u_input.a), Struct_1(-715f, 0u, -2147483647i))) > _wgslsmith_clamp_u32(19712u, var_0, func_3()), Struct_1(-1111f, _wgslsmith_clamp_u32(~112923u, firstTrailingBit(var_0), var_0) << (var_0 % 32u), min(0i, -28363i)));
    let var_2 = false;
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.b.a + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.x + 419f), var_1.b.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1948f + _wgslsmith_f_op_f32(-var_1.b.a)) * -179f), _wgslsmith_f_op_f32(max(arg_0.x, func_4(_wgslsmith_div_f32(var_1.b.a, -987f), var_2, func_4(var_1.b.a, true, Struct_1(1000f, 22223u, var_1.a)).b).b.a))) - vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x - -1607f), -507f))), 992f, arg_0.x));
    var var_4 = reverseBits(vec3<i32>(-28719i, _wgslsmith_mult_i32(-30084i, i32(-1i) * -36125i), firstTrailingBit(-11489i) | _wgslsmith_add_i32(-1i, -6711i))) | _wgslsmith_add_vec3_i32(vec3<i32>(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-6810i, u_input.a, var_1.b.c, u_input.a), vec4<i32>(1i, -1i, var_1.b.c, var_1.b.c))), abs(u_input.a), -var_1.b.c), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(69610i, u_input.a, -61809i), -vec3<i32>(var_1.b.c, -16951i, u_input.a)), vec3<i32>(2147483647i, ~u_input.a, _wgslsmith_mod_i32(u_input.a, u_input.a))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.b.a)) + _wgslsmith_f_op_f32(-741f * -668f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_i32(u_input.a, -_wgslsmith_mult_i32(u_input.a, 14884i << (~4294967295u % 32u)));
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1681f, -658f) * _wgslsmith_f_op_f32(2528f * 1220f)) - _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(624f, 154f))))))));
    var var_2 = _wgslsmith_f_op_f32(-var_1);
    global0 = array<vec4<u32>, 8>();
    let var_3 = Struct_2(var_0, Struct_1(1071f, 36368u, -2147483647i));
    global0 = array<vec4<u32>, 8>();
    var_2 = var_3.b.a;
    let var_4 = select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(var_3.b.a == var_3.b.a, true), vec2<bool>(true, true), vec2<bool>(true, true))), select(vec2<bool>(all(vec4<bool>(false, false, true, false)), false), vec2<bool>(false, true), _wgslsmith_f_op_f32(ceil(var_3.b.a)) <= var_3.b.a), any(!select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), vec3<bool>(false, true, false), any(vec4<bool>(false, true, true, true)))));
    global0 = array<vec4<u32>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(-max(_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(-12216i, 9036i, var_0, u_input.a)), ~vec4<i32>(1i, var_0, -1i, 45015i)), vec4<i32>(min(var_0, u_input.a), _wgslsmith_div_i32(var_3.b.c, -34500i), _wgslsmith_mod_i32(var_0, 14550i), -17619i)), _wgslsmith_clamp_vec3_i32(~(-vec3<i32>(-12141i, var_0, -2147483647i)), countOneBits(abs(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, u_input.a, var_0), vec3<i32>(2147483647i, var_0, -2147483647i)))), vec3<i32>(func_4(_wgslsmith_f_op_f32(select(var_3.b.a, 1479f, var_4.x)), true, func_4(-1259f, var_4.x, var_3.b).b).a, ~24347i, 0i)));
}

