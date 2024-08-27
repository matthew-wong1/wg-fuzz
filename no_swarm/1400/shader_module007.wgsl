struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<f32>) -> u32 {
    global0 = Struct_3(-vec2<i32>(global0.a.x, _wgslsmith_mod_i32(0i, -global0.a.x)), any(select(!vec2<bool>(global0.b, false), !select(vec2<bool>(global0.b, false), vec2<bool>(global0.b, global0.b), global0.b), global0.b)), 49820u);
    let var_0 = !vec3<bool>(!global0.b, true, global0.b);
    global0 = Struct_3(global0.a, global0.b, 58159u);
    let var_1 = ~global0.c;
    global0 = Struct_3(_wgslsmith_add_vec2_i32(global0.a, vec2<i32>(global0.a.x, i32(-1i) * -global0.a.x)), false, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a.xz, u_input.d.xy), vec2<u32>(var_1, u_input.d.x)), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.c, 34164u, u_input.a.x), vec3<u32>(arg_0.x, 57913u, 4294967295u)), _wgslsmith_add_u32(0u, global0.c))), ~arg_0.x));
    return ~(arg_0.x << (_wgslsmith_dot_vec2_u32(select(arg_0, ~vec2<u32>(arg_0.x, var_1), vec2<bool>(false, global0.b)), u_input.a.wy << (_wgslsmith_mult_vec2_u32(u_input.d.zy, vec2<u32>(u_input.d.x, 92483u)) % vec2<u32>(32u))) % 32u));
}

fn func_3(arg_0: bool) -> u32 {
    global0 = Struct_3(global0.a, true, _wgslsmith_add_u32(12599u, 1293u));
    global0 = Struct_3(global0.a, all(vec2<bool>(true, true)), ~1u);
    let var_0 = vec2<bool>(true, any(!vec4<bool>(select(arg_0, arg_0, global0.b), true, all(vec3<bool>(false, false, global0.b)), true)));
    let var_1 = Struct_3(global0.a, select(global0.b && true, (!var_0.x | !arg_0) & false, ~global0.c <= countOneBits(4294967295u)), ~global0.c);
    var var_2 = var_1;
    return ~max(min(66754u, firstTrailingBit(37017u)), _wgslsmith_dot_vec2_u32(firstLeadingBit(countOneBits(vec2<u32>(u_input.a.x, 22390u))), _wgslsmith_mult_vec2_u32(vec2<u32>(27841u, 0u), u_input.d.zx) | vec2<u32>(24769u, 521u)));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: f32, arg_3: u32) -> vec3<u32> {
    global0 = Struct_3((global0.a & vec2<i32>(-arg_0, max(-36538i, arg_0))) >> (u_input.d.zx % vec2<u32>(32u)), true, ~func_3(global0.b));
    global0 = Struct_3(abs(abs(~(~vec2<i32>(global0.a.x, -13712i)))), select(false, any(vec2<bool>(global0.b, true)) == !(false == global0.b), (22568u ^ ~global0.c) > 0u), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(89433u, global0.c, global0.c), vec3<u32>(0u, arg_3, 36094u)), (vec3<u32>(global0.c, global0.c, arg_3) ^ u_input.d) & u_input.d), _wgslsmith_dot_vec2_u32((u_input.d.xy & u_input.d.yy) >> (reverseBits(u_input.a.zw) % vec2<u32>(32u)), vec2<u32>(arg_3, global0.c) << (vec2<u32>(arg_3, 8524u) % vec2<u32>(32u)))));
    global0 = Struct_3(vec2<i32>(_wgslsmith_dot_vec4_i32(-max(vec4<i32>(54192i, u_input.c, arg_0, 4539i), vec4<i32>(global0.a.x, 32124i, 122i, global0.a.x)), _wgslsmith_add_vec4_i32(max(vec4<i32>(2147483647i, 0i, 11331i, global0.a.x), vec4<i32>(u_input.c, -64011i, u_input.b, 24193i)), vec4<i32>(arg_0, 2983i, u_input.c, -45313i) ^ vec4<i32>(22354i, u_input.b, -1i, arg_0))), abs(33500i)), global0.b, 9832u);
    var var_0 = u_input.a;
    global0 = Struct_3(vec2<i32>(-1i, 2147483647i), any(select(vec4<bool>(global0.b || global0.b, !global0.b, false, all(vec4<bool>(global0.b, true, false, true))), select(!vec4<bool>(false, false, global0.b, false), select(vec4<bool>(global0.b, global0.b, global0.b, global0.b), vec4<bool>(global0.b, false, false, true), false), true == global0.b), !(!vec4<bool>(global0.b, true, true, false)))), 0u);
    return max(abs(u_input.d), ~_wgslsmith_sub_vec3_u32(vec3<u32>(~global0.c, u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, arg_3, var_0.x), vec4<u32>(4294967295u, 13847u, global0.c, var_0.x))), _wgslsmith_mod_vec3_u32(u_input.d, select(var_0.wyx, vec3<u32>(0u, 0u, 38273u), vec3<bool>(global0.b, global0.b, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(global0.a, !(!any(vec2<bool>(false, true))), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(func_1(u_input.d.zz, vec2<f32>(-234f, 235f)), _wgslsmith_dot_vec4_u32(vec4<u32>(18406u, 4294967295u, 4294967295u, u_input.d.x), vec4<u32>(u_input.d.x, 4294967295u, 76529u, 4294967295u)), 1u), reverseBits(u_input.a.zxx)), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(func_2(global0.a.x, -1003f, -606f, u_input.d.x), vec3<u32>(4294967295u, u_input.d.x, global0.c)), vec3<u32>(66402u, 58233u, ~1u))));
    global0 = Struct_3(_wgslsmith_mult_vec2_i32(~(-global0.a), -vec2<i32>(u_input.b, u_input.c) >> (~vec2<u32>(1u, u_input.a.x) % vec2<u32>(32u))), !all(select(vec4<bool>(global0.b, false, false, global0.b), select(vec4<bool>(false, false, true, true), vec4<bool>(true, global0.b, true, global0.b), global0.b), false)), 1u);
    var var_0 = Struct_3(select(vec2<i32>(-1i) * -(~vec2<i32>(-23340i, global0.a.x)), global0.a, vec2<bool>(true, true)), !any(!select(vec3<bool>(global0.b, false, true), vec3<bool>(global0.b, global0.b, global0.b), vec3<bool>(global0.b, false, false))), 4294967295u);
    global0 = Struct_3(~(-vec2<i32>(_wgslsmith_add_i32(u_input.b, -36133i), i32(-1i) * -1i)), any(vec4<bool>(var_0.b, var_0.b, 1i < _wgslsmith_mod_i32(global0.a.x, 0i), true)), ~_wgslsmith_div_u32(~u_input.a.x >> (4294967295u % 32u), var_0.c));
    var var_1 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-677f + 820f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-260f + -366f))), _wgslsmith_f_op_f32(sign(-1063f))), u_input.a), Struct_1(vec3<f32>(1f, 1f, 1f), vec4<u32>(1u, 0u, var_0.c, 65079u)));
    let x = u_input.a;
    s_output = StorageBuffer(38548u, var_1.b.a.x, select(vec4<i32>(0i, _wgslsmith_clamp_i32(1i >> (0u % 32u), 67934i, -66323i), -2147483647i, i32(-1i) * -2147483647i), select(countOneBits(min(vec4<i32>(0i, -70863i, 0i, global0.a.x), vec4<i32>(32407i, global0.a.x, -1i, -29458i))), vec4<i32>(abs(2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -1922i), vec2<i32>(12099i, var_0.a.x)), countOneBits(var_0.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 25920i, -1i), vec3<i32>(global0.a.x, 0i, -16287i))), !select(vec4<bool>(global0.b, global0.b, global0.b, false), vec4<bool>(global0.b, false, var_0.b, var_0.b), global0.b)), any(select(select(vec3<bool>(var_0.b, true, false), vec3<bool>(global0.b, true, true), global0.b), select(vec3<bool>(false, true, false), vec3<bool>(global0.b, var_0.b, global0.b), vec3<bool>(false, global0.b, var_0.b)), any(vec4<bool>(global0.b, false, var_0.b, true))))), ~(~_wgslsmith_div_vec2_u32(abs(vec2<u32>(u_input.d.x, 0u)), _wgslsmith_sub_vec2_u32(var_1.b.b.xw, u_input.a.xx))));
}

