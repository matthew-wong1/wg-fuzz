struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: Struct_2,
    d: vec4<bool>,
    e: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(47783i, 1u), Struct_2(-1i, 1u), Struct_2(-1i, 50581u), Struct_2(1i, 4763u), Struct_2(-57086i, 37647u), Struct_2(-27946i, 48490u), Struct_2(-10748i, 0u), Struct_2(-1i, 28824u), Struct_2(58686i, 4294967295u), Struct_2(7398i, 15290u), Struct_2(-2072i, 39314u), Struct_2(1i, 24987u), Struct_2(-1i, 87157u), Struct_2(-42333i, 4294967295u), Struct_2(11213i, 1u), Struct_2(52862i, 34192u));

var<private> global1: vec2<bool>;

var<private> global2: f32 = -1039f;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: f32, arg_2: bool) -> f32 {
    let var_0 = select(-(vec3<i32>(0i & u_input.b, u_input.b ^ 0i, -39967i) << (_wgslsmith_mult_vec3_u32(abs(vec3<u32>(u_input.c.x, 1u, 4294967295u)), vec3<u32>(12538u, 50110u, 0u)) % vec3<u32>(32u))), ~(~max(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, 1979i)), max(vec3<i32>(22167i, -13558i, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b)))), !(!(false & arg_0.x) | arg_0.x));
    let var_1 = vec4<u32>(u_input.d.x, 22437u & u_input.c.x, ~(~(~select(4294967295u, 0u, arg_0.x))), firstLeadingBit(reverseBits(~u_input.a.x)));
    global1 = !(!(!select(arg_0, arg_0, true)));
    global0 = array<Struct_2, 16>();
    global2 = arg_1;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(max(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
}

fn func_2() -> f32 {
    global2 = -331f;
    let var_0 = min(2147483647i, _wgslsmith_add_i32(0i, u_input.b));
    global2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(vec2<bool>(!any(vec3<bool>(global1.x, global1.x, true)), !(-2147483647i != u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-692f * 268f) - _wgslsmith_f_op_f32(f32(-1f) * -1913f))), false))));
    global0 = array<Struct_2, 16>();
    let var_1 = -746f;
    return _wgslsmith_f_op_f32(-var_1);
}

fn func_1(arg_0: i32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-2412f, _wgslsmith_f_op_f32(-1000f + 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())))));
    var var_1 = 0i;
    let var_2 = Struct_4(global0[_wgslsmith_index_u32(3497u, 16u)], 0u, _wgslsmith_mult_i32(1i, abs(~(-arg_0))), Struct_1(!select(select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, true, global1.x), vec3<bool>(false, global1.x, false)), vec3<bool>(false, global1.x, global1.x), select(vec3<bool>(true, false, false), vec3<bool>(global1.x, false, global1.x), global1.x))));
    var var_3 = Struct_3(vec2<f32>(-858f, -443f), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(-var_0.x)), -195f), var_0.x), var_2.a, vec4<bool>(true, global1.x, var_2.d.a.x, var_2.d.a.x), _wgslsmith_mult_u32(firstLeadingBit(reverseBits(9133u)), 1u) >> (0u % 32u));
    var var_4 = firstTrailingBit(abs(~vec2<u32>(0u, var_2.b)) | _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(~u_input.a.zz, vec2<u32>(3194u, 4294967295u)), ~u_input.d));
    return 1i;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<u32>) -> Struct_2 {
    var var_0 = global0[_wgslsmith_index_u32(abs(83644u), 16u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-994f, 719f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(942f, -1625f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(302f, -231f) + vec2<f32>(523f, -1294f))), any(!vec3<bool>(false, true, global1.x)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-1000f, -116f), -1740f) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(227f, -813f), vec2<f32>(1000f, 1285f))))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-679f, -435f))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-346f, -2567f), vec2<f32>(-943f, -1000f)))))))), all(select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, global1.x), true), select(vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, false), global1.x), select(vec2<bool>(false, global1.x), vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, false))), true))));
    let var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(max(~37523u, 1u), arg_1.x), 16u)];
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.x)));
    return global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(arg_1.wx, arg_1.yx), 16u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-419f, _wgslsmith_f_op_f32(-504f * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_1 = ~(~firstLeadingBit(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.c.x, 1u), vec3<u32>(u_input.a.x, 1u, 1u))));
    let var_2 = Struct_3(var_0.zx, var_0.zx, global0[_wgslsmith_index_u32(0u, 16u)], select(select(vec4<bool>(true, global1.x, global1.x, global1.x), !select(vec4<bool>(false, global1.x, global1.x, global1.x), vec4<bool>(true, false, global1.x, global1.x), true), !select(vec4<bool>(true, true, global1.x, global1.x), vec4<bool>(false, global1.x, true, false), global1.x)), !select(vec4<bool>(global1.x, false, global1.x, global1.x), vec4<bool>(false, global1.x, global1.x, global1.x), !vec4<bool>(global1.x, global1.x, false, true)), global1.x), u_input.a.x);
    var var_3 = -vec2<i32>(-5252i, var_2.c.a);
    var_3 = vec2<i32>(28572i, -1i);
    let var_4 = func_4(vec2<i32>(func_1(1i & ~u_input.b), -(~25246i)), vec4<u32>(_wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(26202u, var_2.c.b, var_2.e), u_input.c), 11948u), ~firstTrailingBit(4294967295u), min(var_2.e, _wgslsmith_div_u32(4294967295u, var_1.x)) | 22450u, u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(min(~_wgslsmith_dot_vec2_u32(vec2<u32>(2576u, var_4.b), vec2<u32>(var_2.c.b, var_1.x)), firstLeadingBit(var_4.b << (var_1.x % 32u))), 1u, _wgslsmith_mod_u32(var_1.x, ~max(28981u, var_4.b)), _wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.d.x, u_input.a.x), countOneBits(u_input.d.x)), ~(~0u))));
}

