struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: Struct_3,
    d: bool,
    e: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<u32>) -> vec3<u32> {
    var var_0 = 1598f;
    let var_1 = ~vec4<u32>(u_input.a, _wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_sub_u32(38312u, arg_0.x)), countOneBits(u_input.d.x ^ u_input.c)), _wgslsmith_dot_vec3_u32(global0.b.c.c, vec3<u32>(40560u, ~4488u, ~arg_0.x)), 1u);
    var var_2 = global0.c.a;
    global0 = Struct_3(global0.b.c.c.xx >> (vec2<u32>(10195u, max(_wgslsmith_sub_u32(arg_0.x, global0.c.c.c.x), u_input.a)) % vec2<u32>(32u)), global0.b, global0.b);
    let var_3 = global0.c.c.b;
    return firstLeadingBit(var_1.yzw);
}

fn func_2() -> vec3<u32> {
    global0 = Struct_3(vec2<u32>(0u, 49072u), global0.b, global0.c);
    let var_0 = Struct_5(-2147483647i, -353f, global0.c.b.a);
    var var_1 = _wgslsmith_f_op_f32(-global0.c.b.b);
    var var_2 = global0.b;
    var var_3 = Struct_2(37858i, Struct_1(global0.b.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(679f, var_0.b, var_2.c.a))))), func_3(select(vec4<u32>(global0.a.x, 4294967295u, 42785u, u_input.b) >> (vec4<u32>(11904u, u_input.b, u_input.e.x, 0u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_2.c.c.x, u_input.b, global0.b.c.c.x), vec4<u32>(global0.b.b.c.x, var_2.b.c.x, 21068u, global0.b.c.c.x)), vec4<bool>(var_2.c.a, true, false, false)))), var_2.c);
    return vec3<u32>(_wgslsmith_add_u32(var_2.b.c.x, _wgslsmith_sub_u32(firstTrailingBit(var_3.b.c.x >> (u_input.c % 32u)), ~_wgslsmith_mod_u32(var_3.c.c.x, 7715u))), ~global0.b.b.c.x, ~select(50318u >> (~u_input.c % 32u), global0.a.x, all(vec3<bool>(true, true, var_2.c.a)) && (50202u >= var_3.c.c.x)));
}

fn func_1() -> bool {
    let var_0 = Struct_4(vec3<u32>(global0.a.x, ~global0.b.b.c.x >> (28252u % 32u), ~26453u) >> (max(func_2(), max(vec3<u32>(58753u, u_input.a, u_input.b), vec3<u32>(22499u, 47688u, global0.c.b.c.x)) | ~vec3<u32>(4294967295u, u_input.c, 0u)) % vec3<u32>(32u)), ~(-_wgslsmith_sub_vec2_i32(vec2<i32>(global0.c.a, global0.b.a) | vec2<i32>(global0.b.a, global0.c.a), firstTrailingBit(vec2<i32>(40426i, -2147483647i)))), Struct_3(~(~vec2<u32>(u_input.b, 16713u)), Struct_2(global0.c.a, global0.c.b, Struct_1(false, _wgslsmith_f_op_f32(-global0.b.c.b), global0.b.c.c & vec3<u32>(u_input.c, 0u, 1u))), global0.c), !any(!select(vec2<bool>(global0.c.c.a, true), vec2<bool>(global0.b.c.a, global0.c.c.a), false)), Struct_3(_wgslsmith_sub_vec2_u32(~(~u_input.d), func_3(vec4<u32>(global0.c.b.c.x, 0u, global0.a.x, 4294967295u)).xz | ~vec2<u32>(1u, 4294967295u)), Struct_2(_wgslsmith_mod_i32(-2147483647i, 7324i), global0.b.c, global0.b.b), Struct_2(min(-6263i, -1i), global0.c.c, Struct_1(true, -228f, _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 11956u, 0u), global0.b.b.c)))));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.b.c.b - -168f)), 1f));
    let var_2 = Struct_3(global0.b.b.c.zy, Struct_2(1i, Struct_1(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1542f - -1513f)), global0.b.c.c), global0.b.b), var_0.e.b);
    let var_3 = global0.b.c.b;
    global0 = Struct_3(~abs(var_0.a.xy), global0.c, global0.b);
    return false;
}

fn func_4(arg_0: bool, arg_1: Struct_5, arg_2: Struct_3) -> vec2<u32> {
    var var_0 = func_3(vec4<u32>(51468u, arg_2.a.x, 50831u, ~(~arg_2.c.c.c.x) >> (~78708u % 32u))).yx;
    var var_1 = arg_1;
    let var_2 = var_0.x << ((~(~23931u) << (u_input.b % 32u)) % 32u);
    global0 = Struct_3(~global0.a, arg_2.b, Struct_2(23192i, Struct_1(true, global0.c.b.b, reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, arg_2.b.c.c.x, arg_2.b.b.c.x), vec3<u32>(var_2, arg_2.b.b.c.x, 15918u), vec3<u32>(u_input.e.x, 1u, global0.a.x)))), global0.b.b));
    var var_3 = arg_2;
    return global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 17042i;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-124f - 856f), global0.b.b.b))), global0.b.c.b));
    global0 = Struct_3(func_4(true, Struct_5(var_0 >> (~global0.b.c.c.x % 32u), -1567f, select(!global0.c.b.a, func_1(), true)), Struct_3(reverseBits(vec2<u32>(global0.c.b.c.x, 51280u)), Struct_2(11579i, global0.c.c, global0.b.c), global0.c)), global0.b, Struct_2(global0.c.a, Struct_1(global0.b.c.a, -1280f, vec3<u32>(global0.a.x, global0.a.x | 4294967295u, 60958u)), global0.c.c));
    global0 = Struct_3(select(_wgslsmith_add_vec2_u32(abs(~global0.b.c.c.zz), select(vec2<u32>(u_input.b, global0.a.x), global0.c.b.c.yy, vec2<bool>(global0.b.c.a, false)) & u_input.e), global0.c.c.c.xx, global0.c.c.a), global0.c, global0.b);
    let var_2 = _wgslsmith_clamp_vec3_i32(vec3<i32>(~firstTrailingBit(global0.c.a | -14060i), reverseBits(firstLeadingBit(2147483647i)), global0.c.a), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0, var_0, countOneBits(global0.b.a)), select(vec3<i32>(25825i, var_0, global0.b.a) & vec3<i32>(global0.b.a, var_0, 34934i), abs(vec3<i32>(2147483647i, var_0, global0.b.a)), global0.c.c.a), firstTrailingBit(~vec3<i32>(global0.c.a, 2147483647i, global0.c.a))) & _wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(2147483647i, var_0, var_0), _wgslsmith_sub_vec3_i32(vec3<i32>(var_0, var_0, var_0), max(vec3<i32>(11938i, global0.b.a, global0.b.a), vec3<i32>(var_0, var_0, global0.c.a)))), vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(-vec3<i32>(global0.b.a, -2147483647i, var_0), abs(vec3<i32>(-1i, global0.c.a, global0.b.a))));
    global0 = Struct_3(~global0.a, global0.c, Struct_2(firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(50306i, -36772i, global0.b.a, var_0), vec4<i32>(global0.c.a, var_2.x, var_0, var_0)), ~(-2147483647i))), global0.b.b, Struct_1(global0.b.c.a, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global0.c.c.b, global0.c.c.b))), _wgslsmith_add_vec3_u32(vec3<u32>(global0.a.x, 1u, 1u), ~global0.b.c.c))));
    var var_3 = ~80391u;
    let x = u_input.a;
    s_output = StorageBuffer(global0.c.b.c.x, min(~var_2.zy, vec2<i32>(abs(~50868i), global0.c.a)), vec4<i32>(~4088i, var_2.x, _wgslsmith_dot_vec4_i32(~(-vec4<i32>(var_2.x, var_2.x, 42658i, -1835i)), select(vec4<i32>(10308i, -54644i, var_0, -2147483647i), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0, 24863i, global0.b.a, 0i), vec4<i32>(var_0, 1i, global0.b.a, -30729i), vec4<i32>(var_0, global0.c.a, var_2.x, -1i)), global0.c.b.a)), global0.c.a), _wgslsmith_clamp_i32(firstLeadingBit(var_2.x | -2147483647i) ^ (global0.c.a << (~global0.b.c.c.x % 32u)), ~_wgslsmith_div_i32(select(var_2.x, -25658i, false), 19368i), ~var_2.x));
}

