struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<i32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 15>;

var<private> global1: array<Struct_1, 24>;

var<private> global2: bool = false;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> bool {
    global1 = array<Struct_1, 24>();
    var var_0 = Struct_2(vec2<i32>(arg_1.a.x ^ ~0i, -_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.e, 19592i, arg_1.c.x) << (arg_1.d % vec3<u32>(32u)), select(arg_1.c.zxx, arg_1.c.zzx, true))), Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(53637i, -19319i, arg_1.e), ~(-45583i)), vec2<i32>(arg_1.c.x, _wgslsmith_dot_vec2_i32(arg_1.c.wy, vec2<i32>(23823i, arg_1.c.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-arg_1.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(arg_1.b))), true)), arg_1.c, ~vec3<u32>(0u, arg_1.d.x, u_input.a) << (vec3<u32>(arg_0, arg_1.d.x, 13823u) % vec3<u32>(32u)), firstTrailingBit(abs(_wgslsmith_mod_i32(arg_1.e, arg_1.c.x)))), _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(max(vec2<i32>(-2147483647i, arg_1.c.x), arg_1.c.zw), arg_1.c.zy) & select(_wgslsmith_add_vec2_i32(vec2<i32>(arg_1.c.x, 5774i), arg_1.c.zw), vec2<i32>(-1i, -61908i), false), arg_1.a), 270f);
    global1 = array<Struct_1, 24>();
    var var_1 = firstTrailingBit(-1i);
    var var_2 = select(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false))), vec4<bool>(max(~0u, var_0.b.d.x >> (13549u % 32u)) == (_wgslsmith_mult_u32(87940u, 21924u) << (~arg_0 % 32u)), any(vec4<bool>(all(vec4<bool>(false, true, false, false)), true, false, arg_1.b.x < -517f)), any(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), any(vec4<bool>(false, true, false, true)))), arg_1.b.x <= -1049f), vec4<bool>(true, !select(true, any(vec2<bool>(true, false)), 21390u == u_input.a), any(select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), true), true)), false));
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: vec4<f32>) -> i32 {
    let var_0 = arg_1.a.x;
    var var_1 = arg_1;
    let var_2 = global1[_wgslsmith_index_u32(8015u, 24u)];
    var var_3 = select(vec4<bool>(!all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false))), !(_wgslsmith_mult_u32(0u, arg_1.b.d.x) <= _wgslsmith_mult_u32(23086u, 59219u)), true, (firstLeadingBit(var_2.d.x) != 16771u) && true), select(vec4<bool>(true, false, true, true), vec4<bool>(!any(vec3<bool>(true, false, false)), true, func_3(~1u, Struct_1(arg_2.wx, vec4<f32>(-1785f, arg_0.d, 261f, arg_1.d), var_2.c, var_1.b.d, arg_0.b.c.x)), (arg_0.c.x != arg_2.x) & any(vec4<bool>(true, true, true, true))), vec4<bool>(all(vec3<bool>(false, true, false)) != true, true, firstLeadingBit(var_0) > firstLeadingBit(-1i), _wgslsmith_div_i32(var_2.e, -1i) > -var_0)), select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, any(vec2<bool>(false, true))), !any(vec4<bool>(true, false, true, true))), select(select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), false), true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), false), false), vec4<bool>(true, any(vec4<bool>(false, true, true, true)), true, all(vec4<bool>(false, true, true, true))))));
    var var_4 = arg_0.b;
    return arg_1.b.c.x;
}

fn func_1() -> i32 {
    global0 = array<vec4<u32>, 15>();
    let var_0 = Struct_2(vec2<i32>(_wgslsmith_add_i32(~(-2147483647i), _wgslsmith_sub_i32(26085i, 2147483647i) << (u_input.a % 32u)), func_2(Struct_2(-vec2<i32>(3601i, 80959i), Struct_1(vec2<i32>(1i, -55261i), vec4<f32>(-1479f, -465f, 1000f, -627f), vec4<i32>(16879i, 2147483647i, 22435i, -1i), vec3<u32>(u_input.a, u_input.a, 11116u), 0i), vec2<i32>(-1i, 8494i), _wgslsmith_f_op_f32(max(-743f, -886f))), Struct_2(firstLeadingBit(vec2<i32>(-1i, -2147483647i)), global1[_wgslsmith_index_u32(~10752u, 24u)], vec2<i32>(-2147483647i, -17926i), _wgslsmith_f_op_f32(min(-739f, -246f))), countOneBits(firstTrailingBit(vec4<i32>(1i, -41219i, -13448i, 2147483647i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, -940f, 183f, -1753f)))))), Struct_1(vec2<i32>(-2147483647i, ~(-24397i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(282f, 124f, 1130f, -974f), vec4<f32>(-1890f, 359f, -1664f, 2981f)))), vec4<i32>(_wgslsmith_add_i32(-47002i, -1i), ~2147483647i, -26449i, 1i), max(vec3<u32>(abs(u_input.a), 2417u, reverseBits(u_input.a)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a, u_input.a, u_input.a), ~vec3<u32>(11859u, u_input.a, 63307u), ~vec3<u32>(0u, u_input.a, 28374u))), ~2147483647i), reverseBits(firstLeadingBit(firstTrailingBit(firstTrailingBit(vec2<i32>(11263i, 0i))))), -684f);
    var var_1 = Struct_1(var_0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.b.b.x, var_0.d, var_0.d, -322f))) + _wgslsmith_f_op_vec4_f32(-var_0.b.b)))), vec4<i32>(-1i) * -(var_0.b.c ^ (var_0.b.c ^ var_0.b.c)), abs(~vec3<u32>(u_input.a, max(var_0.b.d.x, 87272u), var_0.b.d.x)), var_0.a.x);
    global2 = false;
    var var_2 = (50088i ^ _wgslsmith_add_i32(5140i, (var_0.b.a.x | -20729i) ^ ~var_1.a.x)) <= var_1.a.x;
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 24>();
    let var_0 = !(~111942u == u_input.a);
    var var_1 = select(2147483647i, -select(1i, func_1(), false), any(select(select(vec4<bool>(var_0, false, true, var_0), vec4<bool>(false, var_0, var_0, var_0), var_0), select(vec4<bool>(var_0, var_0, true, var_0), vec4<bool>(var_0, var_0, var_0, var_0), false), vec4<bool>(false, var_0, var_0, false)))) << (u_input.a % 32u);
    global1 = array<Struct_1, 24>();
    global2 = !(!(!var_0));
    let x = u_input.a;
    s_output = StorageBuffer(50441i ^ firstTrailingBit(-2147483647i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-384f, 1346f, 569f))) + _wgslsmith_div_vec3_f32(vec3<f32>(-217f, 725f, -199f), vec3<f32>(417f, 1405f, 760f))))));
}

