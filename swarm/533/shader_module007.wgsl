struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec4<f32>, 32>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_div_i32(~2147483647i, -_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(2147483647i, 23062i, u_input.a, global0.a), -vec4<i32>(-1i, 2147483647i, 1i, global0.a)), _wgslsmith_div_vec4_i32(-vec4<i32>(u_input.a, u_input.a, 0i, u_input.a), reverseBits(vec4<i32>(-1i, -2147483647i, global0.a, 2147483647i)))));
    var var_1 = Struct_2(Struct_1(vec4<bool>(global0.a != u_input.a, false, any(vec2<bool>(true, true)), true)));
    global0 = Struct_3(global0.a);
    var_0 = -_wgslsmith_dot_vec2_i32(vec2<i32>(-46651i, abs(~(-21116i))), ~(-reverseBits(vec2<i32>(global0.a, global0.a))));
    let var_2 = !select(select(vec2<bool>(var_1.a.a.x, var_1.a.a.x), var_1.a.a.wz, select(var_1.a.a.zy, !vec2<bool>(var_1.a.a.x, false), var_1.a.a.x)), vec2<bool>(!(var_1.a.a.x || var_1.a.a.x), all(var_1.a.a) || false), var_1.a.a.x);
    return var_2.x;
}

fn func_4(arg_0: Struct_2) -> u32 {
    var var_0 = Struct_3(-4772i);
    let var_1 = 1i ^ (min(min(_wgslsmith_sub_i32(global0.a, -20679i), -6415i | global0.a), _wgslsmith_div_i32(u_input.a, 38676i)) & ~global0.a);
    var var_2 = ~max(firstLeadingBit(~reverseBits(vec4<u32>(15350u, u_input.c, 77273u, 0u))), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(17455u, u_input.c)), ~1u, u_input.c), vec4<u32>(128650u, u_input.b.x, u_input.b.x, u_input.c) << (_wgslsmith_add_vec4_u32(vec4<u32>(56525u, 0u, u_input.b.x, u_input.c), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.c)) % vec4<u32>(32u))));
    let var_3 = var_2.x;
    var var_4 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1194f * -242f)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-311f - -1169f), _wgslsmith_f_op_f32(step(-592f, 1000f))))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-756f))))));
    return ~select(~38183u, select(13943u, 1u, !arg_0.a.a.x), (firstTrailingBit(-21912i) << (u_input.c % 32u)) <= reverseBits(15505i));
}

fn func_2(arg_0: u32, arg_1: vec2<u32>) -> vec3<i32> {
    let var_0 = func_4(Struct_2(Struct_1(vec4<bool>(true, false, true, func_3()))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(-1039f - 988f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(282f * -1030f), 1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1150f, -918f, false))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1518f - 976f))))), _wgslsmith_f_op_f32(1961f + _wgslsmith_f_op_f32(sign(1f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(431f)), _wgslsmith_f_op_f32(-758f * -1010f)) - _wgslsmith_div_f32(-942f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -260f))))));
    var var_2 = global0.a != global0.a;
    global1 = array<vec4<f32>, 32>();
    var var_3 = abs(~_wgslsmith_div_u32(0u, ~arg_0));
    return ~select(vec3<i32>(u_input.a << (~u_input.b.x % 32u), global0.a, ~(i32(-1i) * -2147483647i)), select(vec3<i32>(abs(global0.a), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.a, 12462i, 1i, u_input.a), vec4<i32>(13051i, -10129i, u_input.a, -19688i)), global0.a), vec3<i32>(u_input.a, -31789i, u_input.a) & vec3<i32>(-1i, -9189i, u_input.a), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false))), true);
}

fn func_1(arg_0: vec3<u32>) -> StorageBuffer {
    global0 = Struct_3(global0.a);
    let var_0 = _wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.a, _wgslsmith_dot_vec3_i32(func_2(reverseBits(86002u), vec2<u32>(arg_0.x, u_input.c)), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, 0i, 15486i), vec3<i32>(global0.a, -2147483647i, 13166i) | vec3<i32>(-2147483647i, u_input.a, 29915i)))), max(select(u_input.a, _wgslsmith_div_i32(~(-2147483647i), u_input.a), true && all(vec4<bool>(true, true, true, false))), -2147483647i));
    var var_1 = 1161f;
    global1 = array<vec4<f32>, 32>();
    var var_2 = Struct_2(Struct_1(select(vec4<bool>(global0.a > -1i, true, true, false), vec4<bool>(true, true, true, true), _wgslsmith_div_i32(global0.a, var_0) >= _wgslsmith_sub_i32(global0.a, var_0))));
    return StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-1321f, -589f, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1302f))))), firstTrailingBit(~(~arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<f32>, 32>();
    let x = u_input.a;
    s_output = func_1(firstTrailingBit(vec3<u32>(~(~u_input.b.x), ~4294967295u, 0u)));
}

