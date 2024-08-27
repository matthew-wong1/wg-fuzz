struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(vec2<f32>(1466f, -250f), vec2<i32>(2147483647i, 1i)), Struct_2(vec2<f32>(-209f, 1000f), vec2<i32>(0i, -36815i)), Struct_2(vec2<f32>(439f, 572f), vec2<i32>(i32(-2147483648), -63942i)), Struct_2(vec2<f32>(1645f, -1333f), vec2<i32>(30011i, i32(-2147483648))), Struct_2(vec2<f32>(-818f, -1475f), vec2<i32>(1i, 34054i)), Struct_2(vec2<f32>(1029f, -2716f), vec2<i32>(-6093i, 2147483647i)), Struct_2(vec2<f32>(1166f, 1504f), vec2<i32>(2147483647i, 2147483647i)), Struct_2(vec2<f32>(-1080f, -248f), vec2<i32>(-10463i, 1i)), Struct_2(vec2<f32>(-1034f, -1046f), vec2<i32>(2122i, -1i)));

var<private> global1: array<f32, 5>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1) -> vec2<u32> {
    global0 = array<Struct_2, 9>();
    let var_0 = ~vec2<i32>(_wgslsmith_mult_i32(u_input.b, u_input.e), u_input.d);
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(reverseBits(abs(9152u)), max(_wgslsmith_sub_u32(~u_input.c, arg_0.a.x), arg_0.b)), 9u)];
    var var_2 = arg_0;
    let var_3 = !vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, false), true)) != true, true, any(vec2<bool>(true, true)), any(vec2<bool>(true, true)));
    return var_2.a.zz;
}

fn func_2(arg_0: f32, arg_1: vec4<u32>, arg_2: vec4<u32>) -> vec3<u32> {
    let var_0 = ~func_3(Struct_1(vec3<u32>(25624u, 139844u, arg_2.x), ~arg_1.x)) ^ arg_2.xy;
    global1 = array<f32, 5>();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(floor(771f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1269f)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, 75524u, 0u), vec3<u32>(arg_2.x, var_0.x, u_input.c)) | 0u, 5u)]))), -588f);
    var var_2 = Struct_2(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(min(var_1.x, -713f))), _wgslsmith_div_vec2_i32(firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(-23284i, u_input.b), vec2<i32>(1i, u_input.b), firstTrailingBit(vec2<i32>(u_input.e, 1i)))), vec2<i32>(u_input.e, u_input.e)));
    global0 = array<Struct_2, 9>();
    return vec3<u32>(_wgslsmith_div_u32(var_0.x, u_input.a.x), u_input.c, ~u_input.c);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> u32 {
    var var_0 = Struct_1(~func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 5u)] * -756f), 144f), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 0u, 37032u, 4294967295u), vec4<u32>(u_input.c, 29409u, arg_0.a.x, u_input.a.x)) | ~vec4<u32>(arg_0.a.x, 54956u, arg_0.b, u_input.a.x), vec4<u32>(_wgslsmith_dot_vec2_u32(arg_0.a.xx, u_input.a.xy), select(u_input.c, 4294967295u, false), _wgslsmith_div_u32(15659u, arg_0.b), _wgslsmith_dot_vec4_u32(vec4<u32>(19152u, u_input.a.x, arg_0.b, arg_0.a.x), vec4<u32>(0u, arg_0.a.x, 4294967295u, 1u)))), ~u_input.a.x);
    let var_1 = abs(21806i);
    let var_2 = Struct_1(vec3<u32>(func_3(arg_0).x, abs(~27425u), 101232u), var_0.a.x);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.a * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -683f), arg_1.a.x)));
    var var_4 = _wgslsmith_mult_u32(~(~_wgslsmith_sub_u32(~var_2.b, func_2(global1[_wgslsmith_index_u32(var_0.b, 5u)], vec4<u32>(var_2.b, 1u, 4294967295u, 0u), vec4<u32>(4294967295u, var_0.b, 14737u, 485u)).x)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 12309u) & _wgslsmith_mult_vec2_u32(var_2.a.zz, select(vec2<u32>(arg_0.a.x, 1u), var_0.a.zy, true)), u_input.a.xy));
    return (_wgslsmith_dot_vec3_u32(arg_0.a, _wgslsmith_mod_vec3_u32(var_0.a, vec3<u32>(18291u, 92932u, var_0.b))) << (_wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(76264u, 26338u, 37234u, var_0.a.x), vec4<u32>(u_input.a.x, var_0.a.x, 4294967295u, arg_0.b)), var_0.b), abs(arg_0.a.x)) % 32u)) | (~(~1u >> (1u % 32u)) >> (~_wgslsmith_sub_u32(u_input.a.x, arg_0.a.x) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_u32(_wgslsmith_add_u32(max(u_input.a.x, 1u), func_1(Struct_1(u_input.a, 12451u), Struct_2(vec2<f32>(global1[_wgslsmith_index_u32(0u, 5u)], global1[_wgslsmith_index_u32(u_input.a.x, 5u)]), vec2<i32>(u_input.e, u_input.e)))) & func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1168f, -1000f, false))), ~vec4<u32>(u_input.c, 0u, u_input.a.x, u_input.c), vec4<u32>(firstTrailingBit(4294967295u), 0u, u_input.a.x & 46603u, _wgslsmith_div_u32(26384u, u_input.a.x))).x, ~(~abs(u_input.c >> (u_input.a.x % 32u))));
    var var_1 = u_input.a.x;
    var var_2 = vec3<u32>(56086u, abs(~(~(~39052u))), ~reverseBits(u_input.a.x));
    var_1 = firstTrailingBit(u_input.c) & (countOneBits(var_2.x) ^ 4294967295u);
    var var_3 = !(!select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), any(vec2<bool>(false, false))), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false)), any(vec3<bool>(true, true, true))));
    var_3 = vec4<bool>(true, false, false, select(!(any(vec4<bool>(var_3.x, true, true, true)) | (var_3.x | var_3.x)), !all(var_3.zx), var_3.x));
    var_2 = u_input.a;
    var var_4 = vec4<i32>(494i, _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(~(-2147483647i), _wgslsmith_div_i32(u_input.e, -40692i))), vec2<i32>(_wgslsmith_add_i32(u_input.e, u_input.e), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.d, u_input.e, 3332i), vec4<i32>(u_input.e, 0i, u_input.b, u_input.e))) << (vec2<u32>(1u, 45143u) % vec2<u32>(32u))), u_input.e, 59620i ^ u_input.e);
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

