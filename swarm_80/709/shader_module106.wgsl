struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 2> = array<vec4<bool>, 2>(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false));

var<private> global1: vec3<f32> = vec3<f32>(393f, -683f, -2168f);

var<private> global2: array<vec2<i32>, 10>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> u32 {
    var var_0 = arg_0;
    let var_1 = Struct_1(var_0.a, _wgslsmith_f_op_f32(sign(arg_0.b)), var_0.c);
    let var_2 = var_1;
    var var_3 = true;
    global2 = array<vec2<i32>, 10>();
    return _wgslsmith_mod_u32(25698u, max(arg_1, arg_1));
}

fn func_2(arg_0: bool) -> vec4<bool> {
    var var_0 = ~(_wgslsmith_div_u32(9704u, ~1u) | u_input.a) >> (1u % 32u);
    global0 = array<vec4<bool>, 2>();
    var_0 = firstLeadingBit(~_wgslsmith_div_u32(min(_wgslsmith_mod_u32(u_input.a, u_input.a), select(u_input.a, u_input.a, arg_0)), func_3(Struct_1(u_input.b.x, global1.x, false), select(u_input.a, 4294967295u, false))));
    let var_1 = u_input.b;
    global1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, _wgslsmith_f_op_f32(global1.x * 279f), global1.x) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1764f, global1.x, -1501f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 2186f, -666f)), vec3<bool>(false, true, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.x, -622f, -749f)))), vec3<bool>(arg_0 | true, true, all(vec4<bool>(true, false, arg_0, arg_0))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-602f, 376f, -990f)))))));
    return vec4<bool>(arg_0, !(!(u_input.b.x >= u_input.b.x) | arg_0), true, arg_0 & arg_0);
}

fn func_1(arg_0: vec4<i32>, arg_1: f32) -> Struct_1 {
    let var_0 = ~vec4<i32>(arg_0.x ^ -8537i, max(u_input.b.x, u_input.b.x), u_input.b.x, -2147483647i);
    global2 = array<vec2<i32>, 10>();
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.a, ~0u) ^ u_input.a, select(1u & ~u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(abs(4294967295u), 63166u), ~vec2<u32>(57377u, u_input.a)), all(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)))))), 2u)];
    let var_2 = Struct_1(u_input.b.x, 655f, all(select(vec4<bool>(var_1.x || false, u_input.a != u_input.a, any(var_1.wz), var_1.x), func_2(0i != u_input.b.x), var_1.x || true)));
    global0 = array<vec4<bool>, 2>();
    return var_2;
}

fn func_4(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_1) -> vec3<bool> {
    global0 = array<vec4<bool>, 2>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1331f)), arg_2.b, arg_0.x, arg_0.x);
    var var_1 = arg_2;
    let var_2 = var_0.ywz;
    let var_3 = Struct_1(24228i, -1206f, true);
    return func_2(!all(!vec3<bool>(false, true, arg_2.c)) && (var_3.c || ((u_input.b.x == var_1.a) | all(vec2<bool>(true, true))))).wyz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1i;
    let var_1 = Struct_1(-u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + 1295f) - _wgslsmith_f_op_f32(-global1.x)))), select(false, any(func_4(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.x, global1.x))), select(u_input.a, u_input.a, true), func_1(vec4<i32>(7936i, 1i, -2147483647i, -21273i), global1.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-537f + global1.x))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-905f - global1.x))));
    let var_2 = _wgslsmith_clamp_u32(u_input.a, u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(0u, u_input.a, u_input.a)), firstTrailingBit(vec3<u32>(1u, u_input.a, u_input.a))), u_input.a, abs(4294967295u)), _wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(5215u, 1u, u_input.a)), ~vec3<u32>(u_input.a, u_input.a, u_input.a))));
    global1 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1156f), _wgslsmith_f_op_f32(ceil(var_1.b))), -151f, -1000f)));
    var var_3 = -312f;
    let var_4 = vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x | var_1.a, 82880i) << (vec2<u32>(countOneBits(var_2), 1u >> (var_2 % 32u)) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(select(global2[_wgslsmith_index_u32(var_2, 10u)], vec2<i32>(-21745i, u_input.b.x), var_1.c) ^ -global2[_wgslsmith_index_u32(4294967295u, 10u)], _wgslsmith_sub_vec2_i32(firstLeadingBit(u_input.b.xx), u_input.b.zx))), -35164i, ~abs(-46261i), -((firstTrailingBit(u_input.b.x) << (4294967295u % 32u)) >> (114900u % 32u)));
    var var_5 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(602f)))), var_1.b, any(global0[_wgslsmith_index_u32(~u_input.a, 2u)]))), _wgslsmith_f_op_f32(select(500f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b, var_1.b) - var_1.b), func_2(true).x)), _wgslsmith_f_op_f32(-global1.x)) + vec3<f32>(-850f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -425f)))), 1256f));
    let var_6 = Struct_1(1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1142f)) - var_5.x), !(!func_4(global1.yz, 23214u, func_1(vec4<i32>(79719i, var_4.x, 21233i, 1476i), global1.x)).x));
    let x = u_input.a;
    s_output = StorageBuffer(1000f, vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(var_2), 1u, var_2, 1u), select(~vec4<u32>(u_input.a, u_input.a, var_2, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(15136u, var_2, var_2, var_2), vec4<u32>(49552u, 1u, var_2, u_input.a)), !vec4<bool>(true, false, false, var_1.c))), ~_wgslsmith_mult_u32(u_input.a, 4294967295u)), vec4<u32>(reverseBits(u_input.a), 48184u, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(5437u, 22254u), u_input.a, _wgslsmith_add_u32(9365u, u_input.a)), _wgslsmith_div_vec3_u32(~vec3<u32>(44199u, 3486u, var_2), vec3<u32>(u_input.a, var_2, u_input.a))), u_input.a), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x << (countOneBits(0u) % 32u), _wgslsmith_dot_vec2_i32(max(vec2<i32>(18506i, -1i), global2[_wgslsmith_index_u32(var_2, 10u)]), _wgslsmith_sub_vec2_i32(vec2<i32>(50544i, -2147483647i), vec2<i32>(var_1.a, -2609i))), ~(-2147483647i), -var_1.a), _wgslsmith_add_vec4_i32(vec4<i32>(var_6.a, var_6.a, 29264i, u_input.b.x), -vec4<i32>(var_4.x, var_6.a, var_6.a, var_1.a)) >> (~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2, var_2, 4507u, u_input.a), vec4<u32>(1u, 1u, u_input.a, 4294967295u), vec4<u32>(1653u, 55239u, 28447u, var_2)) % vec4<u32>(32u))));
}

