struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<f32>, 29> = array<vec3<f32>, 29>(vec3<f32>(-111f, 129f, -1419f), vec3<f32>(255f, 202f, 539f), vec3<f32>(882f, -589f, 1092f), vec3<f32>(1762f, 390f, 270f), vec3<f32>(667f, -588f, -494f), vec3<f32>(-1393f, -877f, 349f), vec3<f32>(-101f, -1000f, 1895f), vec3<f32>(-112f, -524f, 245f), vec3<f32>(569f, -975f, -189f), vec3<f32>(1334f, -302f, 312f), vec3<f32>(-1828f, -1176f, 927f), vec3<f32>(-1000f, 1587f, 534f), vec3<f32>(262f, 1764f, -851f), vec3<f32>(-769f, 271f, 2377f), vec3<f32>(-1207f, -1442f, -165f), vec3<f32>(-1251f, -577f, 890f), vec3<f32>(-1000f, -509f, 1623f), vec3<f32>(246f, 338f, 408f), vec3<f32>(758f, -338f, -2131f), vec3<f32>(831f, 217f, 1638f), vec3<f32>(414f, 353f, -588f), vec3<f32>(2195f, 1316f, 1150f), vec3<f32>(709f, 1180f, -556f), vec3<f32>(-835f, 590f, -550f), vec3<f32>(377f, 105f, -1596f), vec3<f32>(607f, -269f, -497f), vec3<f32>(2385f, -165f, 1906f), vec3<f32>(584f, -1054f, 519f), vec3<f32>(490f, -590f, 417f));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32) -> vec2<u32> {
    global1 = array<vec3<f32>, 29>();
    var var_0 = ~_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(43061u, ~arg_0), 1u, _wgslsmith_div_u32(21260u << (0u % 32u), ~28306u)), vec3<u32>(4294967295u, 12772u, 50056u));
    var var_1 = -33120i;
    var_1 = _wgslsmith_dot_vec2_i32(max(_wgslsmith_add_vec2_i32(-vec2<i32>(global0.b, global0.b) << (var_0.yy % vec2<u32>(32u)), ~(~vec2<i32>(-1i, 1i))), -((vec2<i32>(-19463i, global0.b) | vec2<i32>(global0.b, global0.b)) >> (firstTrailingBit(var_0.yx) % vec2<u32>(32u)))), vec2<i32>(global0.b, global0.b));
    return min(var_0.zx, vec2<u32>(~105479u, var_0.x));
}

fn func_2(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_1) -> vec2<u32> {
    var var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -206f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -832f), _wgslsmith_f_op_f32(f32(-1f) * -2404f)), 529f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(global1[_wgslsmith_index_u32(u_input.a, 29u)], vec3<f32>(623f, 133f, -142f)), _wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(u_input.a, 29u)] - vec3<f32>(-695f, 398f, -1818f)), !vec3<bool>(global0.a.x, global0.a.x, true))))));
    global1 = array<vec3<f32>, 29>();
    let var_2 = 686f;
    let var_3 = Struct_1(select(vec4<bool>(false, arg_2.a.x, true, (u_input.a == u_input.a) | true), vec4<bool>((var_1.x < 1065f) == false, var_1.x < _wgslsmith_f_op_f32(max(1501f, -572f)), true, !(!arg_2.a.x)), select(arg_2.a, arg_2.a, global0.a.x)), arg_0.x);
    return func_3(u_input.a);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> vec2<u32> {
    var var_0 = ~vec2<u32>(_wgslsmith_dot_vec2_u32(~func_2(vec4<i32>(global0.b, arg_2, -2147483647i, -1i), arg_2, arg_0), vec2<u32>(4526u, u_input.a & u_input.a)), 4294967295u);
    var_0 = vec2<u32>(firstTrailingBit(~abs(53732u)), ~(3757u | u_input.a));
    var var_1 = Struct_1(!(!select(select(arg_0.a, arg_0.a, vec4<bool>(arg_0.a.x, true, arg_0.a.x, global0.a.x)), select(arg_0.a, vec4<bool>(true, true, true, global0.a.x), true), -39178i >= global0.b)), -_wgslsmith_add_i32(~arg_2, select(global0.b, -2147483647i, global0.a.x) ^ arg_1.b));
    var var_2 = arg_1;
    let var_3 = arg_0;
    return vec2<u32>(~func_3(u_input.a).x, _wgslsmith_add_u32(firstTrailingBit(1u), u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~_wgslsmith_mult_vec2_u32(func_1(Struct_1(global0.a, global0.b), Struct_1(global0.a, 1i), -12975i), vec2<u32>(u_input.a, 1u) & vec2<u32>(u_input.a, u_input.a))) << (_wgslsmith_mod_vec2_u32(func_1(Struct_1(global0.a, -3423i), Struct_1(global0.a, global0.b), global0.b << (1u % 32u)) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a) & vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 29830u)) % vec2<u32>(32u)), firstTrailingBit(~_wgslsmith_mod_vec2_u32(vec2<u32>(36635u, 6072u), vec2<u32>(u_input.a, 51585u)))) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~abs(_wgslsmith_div_i32(-2147483647i, global0.b)), _wgslsmith_dot_vec4_i32(~(-vec4<i32>(-1i, 2615i, -1i, -2147483647i)), _wgslsmith_sub_vec4_i32(vec4<i32>(16889i, 1i, global0.b, global0.b), ~vec4<i32>(19374i, 58096i, global0.b, global0.b))), 2147483647i, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(24636i, global0.b, -1i, global0.b)), vec4<i32>(global0.b, 2147483647i, -2147483647i, global0.b) | vec4<i32>(global0.b, global0.b, global0.b, global0.b)), -_wgslsmith_div_i32(5279i, global0.b))), vec3<i32>(0i, _wgslsmith_mod_i32(1i | global0.b, ~(-39837i)), ~firstTrailingBit(global0.b)) & _wgslsmith_div_vec3_i32(vec3<i32>(1i, countOneBits(global0.b), _wgslsmith_mult_i32(4378i, 0i)), countOneBits(vec3<i32>(-2147483647i, 2147483647i, -17270i))), ~firstLeadingBit(func_2(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, global0.b, global0.b, global0.b), vec4<i32>(global0.b, global0.b, -42237i, global0.b)), 36212i, Struct_1(global0.a, global0.b)).x));
}

