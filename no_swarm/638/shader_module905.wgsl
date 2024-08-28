struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 27>;

var<private> global1: Struct_1 = Struct_1(572f, vec4<f32>(556f, 1031f, -523f, -1000f), 7024i);

var<private> global2: vec4<i32> = vec4<i32>(-1i, 2147483647i, 1i, -1i);

var<private> global3: Struct_1;

var<private> global4: vec2<u32> = vec2<u32>(0u, 111004u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<u32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(-global1.a);
    global2 = u_input.b;
    return !vec3<bool>((~11693u << (countOneBits(0u) % 32u)) <= min(6153u, global4.x | global4.x), reverseBits(arg_0.x) > _wgslsmith_div_u32(arg_0.x, ~58420u), !(all(vec4<bool>(true, false, false, true)) || select(true, true, true)));
}

fn func_2() -> Struct_1 {
    let var_0 = !(u_input.b.x == global3.c);
    global2 = -_wgslsmith_sub_vec4_i32(vec4<i32>(global3.c, countOneBits(4865i), -60209i, ~u_input.b.x), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-75992i, 8701i, global2.x, -39557i), vec4<i32>(25384i, global1.c, u_input.b.x, global3.c)), u_input.b)) | u_input.b;
    let var_1 = _wgslsmith_f_op_f32(select(-667f, _wgslsmith_f_op_f32(max(global1.b.x, _wgslsmith_f_op_f32(-global1.a))), true));
    let var_2 = select(false, true && var_0, !var_0) & any(func_3(vec4<u32>(~global4.x, 1u, firstLeadingBit(global4.x), ~1u)));
    global2 = select(_wgslsmith_add_vec4_i32(u_input.b, (~vec4<i32>(u_input.b.x, -25045i, 15399i, global3.c) << (~vec4<u32>(u_input.c.x, global4.x, u_input.c.x, 6768u) % vec4<u32>(32u))) >> (vec4<u32>(u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.c.x), u_input.c), ~101689u, ~0u) % vec4<u32>(32u))), vec4<i32>(global1.c, ~_wgslsmith_div_i32(global1.c, global3.c), global1.c, ~(u_input.b.x ^ -1i)) >> (~abs(min(vec4<u32>(4294967295u, global4.x, u_input.a, u_input.c.x), vec4<u32>(37789u, 81915u, u_input.c.x, 4294967295u))) % vec4<u32>(32u)), !select(vec4<bool>(true, func_3(vec4<u32>(46411u, global4.x, 11095u, u_input.a)).x, var_0, true), !vec4<bool>(true, var_0, false, var_0), !select(vec4<bool>(var_2, var_2, var_0, var_2), vec4<bool>(true, var_0, var_0, false), vec4<bool>(true, var_2, true, false))));
    return Struct_1(var_1, _wgslsmith_f_op_vec4_f32(global1.b - vec4<f32>(1112f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1669f, -114f)), global3.a, var_1)), -30591i);
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: f32, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_1(715f, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(global1.b + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3.b), _wgslsmith_f_op_vec4_f32(max(global1.b, vec4<f32>(-2193f, global3.a, global3.b.x, -855f))))))), abs(global3.c));
    global3 = Struct_1(_wgslsmith_f_op_f32(arg_2 - global1.b.x), var_0.b, u_input.b.x);
    global1 = func_2();
    global4 = (~u_input.c ^ min(~(~arg_3.xy), _wgslsmith_sub_vec2_u32(arg_0, vec2<u32>(4294967295u, 0u)) & vec2<u32>(arg_3.x, arg_3.x))) << (~_wgslsmith_mod_vec2_u32(max(arg_0 >> (arg_3.yy % vec2<u32>(32u)), vec2<u32>(global4.x, 1u)), min(~arg_0, arg_3.yz)) % vec2<u32>(32u));
    global0 = array<vec3<i32>, 27>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_i32(0i & global1.c, 1i);
    var var_1 = ~u_input.b.yxy;
    let var_2 = func_1(_wgslsmith_mod_vec2_u32(min(_wgslsmith_mod_vec2_u32(u_input.c, u_input.c), min(firstTrailingBit(u_input.c), vec2<u32>(u_input.a, u_input.c.x))), max(_wgslsmith_clamp_vec2_u32(u_input.c, u_input.c, u_input.c), u_input.c >> (u_input.c % vec2<u32>(32u))) & u_input.c), select(all(vec2<bool>(true, true)), true, all(vec2<bool>(true, true))) || select(all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false))), false, true), 227f, vec3<u32>(_wgslsmith_mult_u32(309u, select(35565u, 62296u, any(vec2<bool>(false, false)))), ~abs(abs(1u)), _wgslsmith_clamp_u32(29157u, _wgslsmith_mult_u32(20240u, u_input.c.x), _wgslsmith_div_u32(_wgslsmith_mod_u32(global4.x, global4.x), 0u))));
    let var_3 = vec4<u32>(u_input.a, global4.x, u_input.a, ~(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 44456u, 0u, global4.x), abs(vec4<u32>(u_input.c.x, u_input.a, 4294967295u, 43013u))) >> (1u % 32u)));
    let var_4 = ~(~_wgslsmith_mod_vec3_u32(~firstLeadingBit(var_3.wxx), firstLeadingBit(var_3.wwy)));
    let var_5 = ~(~(u_input.b & u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(var_0, firstTrailingBit(vec4<u32>(~(global4.x >> (var_3.x % 32u)), 1u, 39844u, 1u)));
}

