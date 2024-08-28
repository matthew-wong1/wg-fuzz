struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23>;

var<private> global1: array<Struct_2, 10>;

var<private> global2: array<vec2<f32>, 8> = array<vec2<f32>, 8>(vec2<f32>(325f, 768f), vec2<f32>(377f, -1483f), vec2<f32>(-698f, -1000f), vec2<f32>(-1000f, -628f), vec2<f32>(-1357f, -832f), vec2<f32>(1000f, -1442f), vec2<f32>(-892f, 1223f), vec2<f32>(-360f, -865f));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: vec3<i32>) -> u32 {
    global2 = array<vec2<f32>, 8>();
    global0 = array<i32, 23>();
    global1 = array<Struct_2, 10>();
    var var_0 = true;
    global1 = array<Struct_2, 10>();
    return abs(_wgslsmith_add_u32(4294967295u, arg_1.a.a.x));
}

fn func_3(arg_0: u32, arg_1: vec2<i32>, arg_2: i32) -> u32 {
    global1 = array<Struct_2, 10>();
    var var_0 = select(!select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, false), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)))), vec3<bool>(false, select(true, any(vec2<bool>(false, true)), all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)))), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(6109i, global0[_wgslsmith_index_u32(68779u, 23u)], u_input.b.x, arg_2)), vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], -25404i, 0i, -2147483647i)) != ((u_input.b.x << (0u % 32u)) << (min(5802u, arg_0) % 32u))), false);
    let var_1 = global1[_wgslsmith_index_u32(~6647u, 10u)];
    var var_2 = any(select(vec4<bool>(any(vec4<bool>(var_1.b, var_0.x, var_0.x, var_1.b)), true, any(vec4<bool>(false, false, true, var_0.x)), true), !select(select(vec4<bool>(var_1.b, var_1.b, false, var_1.b), vec4<bool>(var_1.b, var_1.b, var_1.b, false), vec4<bool>(false, var_0.x, var_0.x, true)), !vec4<bool>(var_0.x, true, var_1.b, false), arg_1.x > arg_2), !(!vec4<bool>(var_0.x, false, false, true))));
    var_0 = vec3<bool>(true, true, var_1.b);
    return abs(~82410u & countOneBits(reverseBits(var_1.a.a.x))) & _wgslsmith_clamp_u32(0u, 1u, _wgslsmith_div_u32(22504u, 25001u & func_1(43524u, global1[_wgslsmith_index_u32(arg_0, 10u)], vec3<i32>(-2147483647i, -11261i, 20269i))));
}

fn func_2(arg_0: u32, arg_1: bool) -> Struct_2 {
    let var_0 = vec3<u32>(~abs(firstLeadingBit(arg_0)), ~(~(~4294967295u)), ~countOneBits(4294967295u | arg_0)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(func_3(firstLeadingBit(4294967295u), _wgslsmith_div_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(arg_0, 23u)], u_input.b.x), u_input.b), _wgslsmith_clamp_i32(36199i, 10042i, -274i)), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_0) ^ vec2<u32>(8393u, arg_0), firstLeadingBit(vec2<u32>(1u, arg_0))), arg_0 & func_3(2294u, u_input.b, u_input.b.x)), ~_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, 30531u, 4294967295u), vec3<u32>(65496u, 4294967295u, arg_0)), ~vec3<u32>(arg_0, 4294967295u, 8127u))) % vec3<u32>(32u));
    let var_1 = global0[_wgslsmith_index_u32(func_1(arg_0, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(min(min(1u, ~0u), (3496u >> (var_0.x % 32u)) << ((4294967295u << (var_0.x % 32u)) % 32u)), 1u), 10u)], ~(~(-_wgslsmith_mult_vec3_i32(vec3<i32>(61070i, 42178i, global0[_wgslsmith_index_u32(var_0.x, 23u)]), vec3<i32>(global0[_wgslsmith_index_u32(var_0.x, 23u)], -8678i, u_input.b.x))))), 23u)];
    global1 = array<Struct_2, 10>();
    var var_2 = Struct_2(Struct_1(vec4<u32>(7008u, arg_0, 0u, 56359u)), all(!select(!vec2<bool>(arg_1, false), vec2<bool>(arg_1, arg_1), !vec2<bool>(arg_1, false))));
    var_2 = Struct_2(Struct_1(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.x, var_2.a.a.x, var_0.x) | vec4<u32>(var_2.a.a.x, 42394u, var_2.a.a.x, 4472u), vec4<u32>(var_2.a.a.x, var_2.a.a.x, var_2.a.a.x, arg_0) ^ var_2.a.a), ~func_1(67377u, Struct_2(Struct_1(var_2.a.a), var_2.b), vec3<i32>(u_input.b.x, u_input.b.x, global0[_wgslsmith_index_u32(arg_0, 23u)])), ~abs(26907u), _wgslsmith_clamp_u32(~18855u, ~var_2.a.a.x, 0u))), select(false, false, any(vec3<bool>(var_2.b, arg_0 != 0u, any(vec2<bool>(true, var_2.b))))));
    return global1[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(var_0.x, 11819u)) | ~(~_wgslsmith_div_u32(arg_0, _wgslsmith_div_u32(var_2.a.a.x, var_2.a.a.x))), 10u)];
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<u32>) -> vec2<bool> {
    let var_0 = Struct_1(vec4<u32>(arg_2.x, 1u, 29926u, ~_wgslsmith_add_u32(37208u, _wgslsmith_div_u32(arg_2.x, 0u))));
    let var_1 = ~(-vec2<i32>(~(-19038i), _wgslsmith_mult_i32(2147483647i, global0[_wgslsmith_index_u32(var_0.a.x, 23u)])) << ((min(~arg_2.yx, vec2<u32>(var_0.a.x, var_0.a.x) << (arg_1.a.a.xx % vec2<u32>(32u))) >> (_wgslsmith_clamp_vec2_u32(arg_2.yx, arg_2.wy, vec2<u32>(arg_1.a.a.x, arg_2.x) | vec2<u32>(4294967295u, 56657u)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    global0 = array<i32, 23>();
    global0 = array<i32, 23>();
    global0 = array<i32, 23>();
    return select(!(!(!vec2<bool>(true, arg_1.b))), select(select(vec2<bool>(any(vec3<bool>(arg_1.b, arg_0.b, true)), true == arg_0.b), vec2<bool>(func_2(4294967295u, arg_0.b).b, true), vec2<bool>(arg_2.x <= 0u, true)), select(!select(vec2<bool>(false, false), vec2<bool>(arg_1.b, arg_1.b), vec2<bool>(false, true)), vec2<bool>(arg_1.b, arg_0.b & arg_1.b), any(vec3<bool>(arg_0.b, arg_0.b, arg_1.b)) | (var_0.a.x == 25085u)), true), u_input.a >= u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1113f);
    var var_1 = abs(~1u);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(798f, -605f, var_0, var_0)))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-957f, 386f, 839f, 253f), vec4<f32>(var_0, 1000f, var_0, 156f), false))))), vec4<f32>(var_0, 1275f, 1252f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    global0 = array<i32, 23>();
    let var_3 = ~select(vec4<u32>(1u, 1u, 1u, 1u), abs(vec4<u32>(1u, firstTrailingBit(49746u), ~0u, ~1u)), true);
    let var_4 = _wgslsmith_sub_vec2_u32(var_3.xw, max(~_wgslsmith_sub_vec2_u32(~vec2<u32>(var_3.x, var_3.x), _wgslsmith_mult_vec2_u32(vec2<u32>(48531u, var_3.x), var_3.wy)), vec2<u32>(abs(var_3.x), func_1(18784u, global1[_wgslsmith_index_u32(var_3.x, 10u)], -vec3<i32>(-2147483647i, -2147483647i, 0i)))));
    let var_5 = select(select(func_4(Struct_2(Struct_1(var_3), true), func_2(var_4.x, false), select(vec4<u32>(110538u, var_4.x, 34875u, var_3.x), vec4<u32>(var_4.x, 1u, 24007u, var_3.x), vec4<bool>(false, true, false, true))), vec2<bool>(true, !select(false, false, false)), true), vec2<bool>(true || (false != all(vec3<bool>(true, true, true))), false), true);
    let var_6 = vec3<u32>(var_3.x, ~(((var_3.x & var_3.x) << (_wgslsmith_sub_u32(var_3.x, 4294967295u) % 32u)) & var_4.x), var_4.x);
    global2 = array<vec2<f32>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~max(4294967295u, 1u))), ~var_4.x);
}

