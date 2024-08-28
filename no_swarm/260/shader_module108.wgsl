struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 16>;

var<private> global1: vec2<i32>;

var<private> global2: array<u32, 4> = array<u32, 4>(20905u, 57747u, 0u, 10440u);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: f32, arg_1: vec2<u32>, arg_2: u32) -> bool {
    let var_0 = Struct_1(select(true | !(arg_2 < arg_2), all(vec4<bool>(true, true, true, true)), false), 52415i);
    global2 = array<u32, 4>();
    let var_1 = _wgslsmith_add_u32(20421u ^ ~(~_wgslsmith_clamp_u32(u_input.b, 0u, arg_1.x)), arg_1.x);
    var var_2 = abs(global1.x);
    let var_3 = Struct_2(arg_1.x, 0u);
    return all(select(vec2<bool>(true, !select(true, true, false)), select(vec2<bool>(var_0.a, true), select(select(vec2<bool>(var_0.a, true), vec2<bool>(true, false), vec2<bool>(var_0.a, false)), select(vec2<bool>(var_0.a, true), vec2<bool>(var_0.a, var_0.a), var_0.a), select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_0.a, false), var_0.a)), vec2<bool>(true, true)), false));
}

fn func_1(arg_0: vec4<u32>, arg_1: bool) -> Struct_1 {
    let var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-112f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -371f)))), ~(~abs(_wgslsmith_mult_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(u_input.d.x, 4u)], arg_0.x), vec2<u32>(arg_0.x, arg_0.x)))), arg_0.x);
    return Struct_1(var_0 | func_2(_wgslsmith_f_op_f32(-1683f - -959f), ~vec2<u32>(u_input.b, 1u) ^ ~arg_0.xx, 4294967295u), _wgslsmith_div_i32(global1.x, _wgslsmith_mult_i32(abs(-12630i & u_input.a), ~(~(-59282i)))));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>, arg_2: vec3<bool>) -> vec2<i32> {
    global1 = arg_1.wx;
    var var_0 = arg_1.wzx;
    var var_1 = !any(vec3<bool>(arg_2.x || any(vec2<bool>(false, true)), true, true));
    global2 = array<u32, 4>();
    return vec2<i32>(firstLeadingBit(-17694i), ~(~_wgslsmith_clamp_i32(_wgslsmith_mod_i32(1i, u_input.a), u_input.a << (arg_0 % 32u), u_input.c & u_input.c)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: i32, arg_3: vec2<u32>) -> i32 {
    var var_0 = min(-(~vec4<i32>(~(-42414i), arg_1.x, -1i, arg_0.b)), select(vec4<i32>(u_input.a, -_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_2, arg_2), vec3<i32>(global1.x, -31584i, arg_0.b)), 2147483647i, -60217i), vec4<i32>(-1i, ~(-2147483647i), 1i, _wgslsmith_dot_vec2_i32(arg_1, arg_1)) ^ _wgslsmith_add_vec4_i32(~vec4<i32>(global1.x, -27379i, 2380i, arg_1.x), select(vec4<i32>(global1.x, global1.x, 1i, arg_1.x), vec4<i32>(1i, arg_1.x, 1i, -55728i), false)), false));
    var var_1 = firstLeadingBit(_wgslsmith_clamp_vec4_u32(countOneBits(~vec4<u32>(4294967295u, arg_3.x, 4294967295u, arg_3.x)), firstTrailingBit(~u_input.d), ~vec4<u32>(39688u, 53518u, global2[_wgslsmith_index_u32(0u, 4u)], arg_3.x)) >> (~vec4<u32>(_wgslsmith_mod_u32(1u, arg_3.x), 29981u, ~0u, 1u) % vec4<u32>(32u)));
    global1 = abs(vec2<i32>(~func_1(vec4<u32>(arg_3.x, u_input.d.x, 4294967295u, 0u), false).b, _wgslsmith_div_i32(var_0.x, i32(-1i) * -56404i)) ^ (_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.x, 11743i), -var_0.xz) ^ ((var_0.yy & var_0.xw) | countOneBits(vec2<i32>(2147483647i, 306i)))));
    let var_2 = Struct_3(arg_0, func_1(max(~_wgslsmith_mod_vec4_u32(u_input.d, vec4<u32>(global2[_wgslsmith_index_u32(var_1.x, 4u)], 21598u, u_input.b, 39153u)), abs(u_input.d)), arg_0.a & false), _wgslsmith_mod_u32(~u_input.d.x, reverseBits(_wgslsmith_div_u32(firstLeadingBit(65235u), var_1.x))));
    global0 = array<vec3<f32>, 16>();
    return i32(-1i) * -1i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<i32>(abs(_wgslsmith_mult_i32(-1i, -global1.x)), _wgslsmith_div_i32(_wgslsmith_sub_i32(32846i, 2147483647i), ~(-_wgslsmith_sub_i32(-2147483647i, u_input.c))));
    var var_0 = global1.x;
    let var_1 = 1828f;
    let var_2 = Struct_3(func_1(vec4<u32>(~(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(100146u, 4u)], 4u)]), 57643u, ~(~0u), _wgslsmith_add_u32(~0u, u_input.b)), any(vec4<bool>(true, true, true, true))), func_1(u_input.d, true), _wgslsmith_div_u32(~_wgslsmith_add_u32(u_input.d.x, global2[_wgslsmith_index_u32(0u, 4u)] | 4294967295u), ~(~(~global2[_wgslsmith_index_u32(1u, 4u)]))));
    var var_3 = var_2.c;
    global0 = array<vec3<f32>, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(func_4(Struct_1(false, u_input.c), ~_wgslsmith_sub_vec2_i32(func_3(0u, vec4<i32>(49203i, u_input.c, -7290i, var_2.a.b), vec3<bool>(var_2.a.a, var_2.a.a, var_2.b.a)), select(vec2<i32>(-1i, var_2.a.b), vec2<i32>(var_2.b.b, 31164i), var_2.b.a)), _wgslsmith_mod_i32(-2147483647i, 54852i), vec2<u32>(var_2.c, 15143u)));
}

