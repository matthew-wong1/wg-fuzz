struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<f32>, 6> = array<vec3<f32>, 6>(vec3<f32>(-1131f, 483f, 459f), vec3<f32>(-970f, 337f, 1300f), vec3<f32>(1000f, 365f, -1318f), vec3<f32>(-175f, 1000f, 1347f), vec3<f32>(517f, -226f, -1223f), vec3<f32>(-1000f, 631f, 1235f));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec3<u32>) -> vec4<u32> {
    let var_0 = -3009f;
    var var_1 = Struct_1(~abs(0u ^ global0.b.x) >= _wgslsmith_mod_u32(~u_input.a, 1u), ~firstLeadingBit(select(global0.b, vec4<u32>(4294967295u, 134883u, 67253u, global0.b.x), true)), ~(global0.c ^ (global0.c >> (arg_0 % vec3<u32>(32u)))) ^ (abs(vec3<i32>(global0.c.x, -30277i, 7271i) << (arg_0 % vec3<u32>(32u))) >> (vec3<u32>(_wgslsmith_dot_vec4_u32(global0.b, global0.b), max(0u, global0.b.x), 15279u) % vec3<u32>(32u))));
    let var_2 = vec2<bool>(firstTrailingBit(~(~var_1.b.x)) <= 0u, all(vec2<bool>(!select(false, false, false), var_1.a)));
    var var_3 = Struct_1(global0.a, vec4<u32>(4294967295u, u_input.a, arg_0.x, ~firstLeadingBit(arg_0.x) >> (_wgslsmith_mod_u32(_wgslsmith_mult_u32(arg_0.x, u_input.a), 49172u) % 32u)), -vec3<i32>(global0.c.x, max(var_1.c.x, reverseBits(1i)), _wgslsmith_dot_vec2_i32(-var_1.c.xx, vec2<i32>(-1i, global0.c.x))));
    global1 = array<vec3<f32>, 6>();
    return ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(global0.b.x, ~1u, 31949u, 0u | var_1.b.x), _wgslsmith_sub_vec4_u32(vec4<u32>(~0u, ~1u, ~var_3.b.x, 4294967295u), vec4<u32>(129654u, 30660u, u_input.a, 56847u | var_1.b.x)), var_3.b);
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global1 = array<vec3<f32>, 6>();
    var var_0 = Struct_1(all(!vec2<bool>(arg_1.b.x != 1u, arg_3.a)), select(select(arg_3.b, arg_3.b, !global0.a), func_3(global0.b.zxy >> (global0.b.wyw % vec3<u32>(32u))), select(!vec4<bool>(true, global0.a, true, arg_3.a), !vec4<bool>(true, true, true, arg_1.a), !vec4<bool>(arg_1.a, true, arg_1.a, false))) & ~global0.b, global0.c);
    var var_1 = _wgslsmith_div_u32(arg_1.b.x, firstLeadingBit(u_input.a)) << (arg_1.b.x % 32u);
    var_1 = firstTrailingBit(1u);
    var var_2 = any(select(select(select(select(vec3<bool>(true, true, false), vec3<bool>(global0.a, false, true), arg_1.a), vec3<bool>(global0.a, true, true), true), select(!vec3<bool>(false, arg_2.a, arg_1.a), select(vec3<bool>(arg_1.a, arg_1.a, false), vec3<bool>(arg_3.a, var_0.a, arg_3.a), vec3<bool>(false, true, false)), global0.a), select(!vec3<bool>(false, var_0.a, true), vec3<bool>(var_0.a, global0.a, arg_3.a), select(vec3<bool>(global0.a, arg_2.a, arg_1.a), vec3<bool>(true, false, true), false))), vec3<bool>(true, true, true), all(!(!vec2<bool>(arg_3.a, var_0.a)))));
    return _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.b.x, 72410u), vec2<u32>(0u, ~99304u) & vec2<u32>(global0.b.x, _wgslsmith_mult_u32(0u, arg_1.b.x)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global1 = array<vec3<f32>, 6>();
    let var_0 = _wgslsmith_dot_vec4_i32(-(vec4<i32>(arg_1.c.x, global0.c.x, 2147483647i, arg_1.c.x) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.b.x, arg_1.b.x, 0u, arg_0.b.x), vec4<u32>(arg_1.b.x, arg_0.b.x, 0u, u_input.a)) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 4483i, arg_1.c.x, -2147483647i), vec4<i32>(arg_0.c.x, 8106i, -1i, 1i)), -2147483647i, arg_0.c.x ^ 57758i, countOneBits(global0.c.x)) | vec4<i32>(arg_0.c.x | -2147483647i, -arg_0.c.x, arg_1.c.x >> (u_input.a % 32u), 1i)) >> (~(~37865u) % 32u);
    var var_1 = -select(-vec3<i32>(global0.c.x, 0i << (1u % 32u), _wgslsmith_sub_i32(var_0, var_0)), vec3<i32>(arg_1.c.x, -reverseBits(-64412i), var_0 ^ _wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_0, arg_0.c.x, arg_1.c.x), vec4<i32>(var_0, 66359i, global0.c.x, arg_1.c.x))), true);
    global1 = array<vec3<f32>, 6>();
    global1 = array<vec3<f32>, 6>();
    return Struct_1(!(!arg_1.a), arg_0.b, global0.c);
}

fn func_1() -> vec4<u32> {
    global1 = array<vec3<f32>, 6>();
    let var_0 = firstLeadingBit(10574i);
    global1 = array<vec3<f32>, 6>();
    var var_1 = func_4(Struct_1(select(true, true, global0.a | true), select(vec4<u32>(u_input.a, global0.b.x, 1u, 42149u) << (vec4<u32>(u_input.a, 1u, 47857u, 36441u) % vec4<u32>(32u)), select(vec4<u32>(u_input.a, global0.b.x, 77183u, global0.b.x), global0.b, vec4<bool>(true, global0.a, true, global0.a)), vec4<bool>(true, global0.a, true, true)) ^ vec4<u32>(2191u ^ global0.b.x, _wgslsmith_mod_u32(67800u, u_input.a), ~global0.b.x, 22756u), select(global0.c, ~min(vec3<i32>(2147483647i, var_0, 0i), global0.c), global0.a)), Struct_1(any(select(vec2<bool>(true, true), !vec2<bool>(true, global0.a), 28185u >= u_input.a)), select(vec4<u32>(func_2(-14386i, Struct_1(true, vec4<u32>(u_input.a, 127918u, u_input.a, 8025u), vec3<i32>(-7198i, 0i, var_0)), Struct_1(global0.a, global0.b, global0.c), Struct_1(true, vec4<u32>(u_input.a, 107317u, u_input.a, 80577u), global0.c)), ~48029u, _wgslsmith_dot_vec3_u32(global0.b.xwz, global0.b.xwy), ~1u), abs(global0.b), true), vec3<i32>(-1i & global0.c.x, max(2147483647i ^ global0.c.x, _wgslsmith_mod_i32(var_0, var_0)), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.c.x, var_0, 0i, 43540i), vec4<i32>(var_0, 2147483647i, global0.c.x, var_0)), vec4<i32>(-2147483647i, 56509i, -1i, 35825i)))));
    global1 = array<vec3<f32>, 6>();
    return _wgslsmith_mod_vec4_u32(var_1.b, vec4<u32>(4294967295u, firstTrailingBit(~u_input.a), 0u, 60837u ^ firstLeadingBit(u_input.a)) ^ firstLeadingBit(_wgslsmith_sub_vec4_u32(~var_1.b, vec4<u32>(56976u, global0.b.x, 6030u, u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<f32>, 6>();
    let var_0 = Struct_1(global0.a, func_1(), _wgslsmith_div_vec3_i32(func_4(Struct_1(global0.a, global0.b, global0.c), func_4(Struct_1(false, global0.b, global0.c), Struct_1(false, vec4<u32>(0u, 4294967295u, 45709u, 0u), global0.c))).c, -vec3<i32>(50203i, 2147483647i, 2147483647i) | vec3<i32>(-2559i, global0.c.x, global0.c.x)) | -_wgslsmith_mult_vec3_i32(min(global0.c, global0.c), reverseBits(global0.c)));
    var var_1 = -118f;
    let var_2 = i32(-1i) * -1i;
    global0 = Struct_1(var_0.a, ~vec4<u32>(_wgslsmith_mult_u32(u_input.a, ~var_0.b.x), 14017u, 4294967295u, abs(_wgslsmith_div_u32(global0.b.x, 4294967295u))), reverseBits(var_0.c));
    var var_3 = func_4(var_0, Struct_1(global0.a, ~(~_wgslsmith_add_vec4_u32(vec4<u32>(var_0.b.x, 1u, 1u, 4294967295u), vec4<u32>(u_input.a, global0.b.x, 1u, global0.b.x))), _wgslsmith_clamp_vec3_i32(global0.c, vec3<i32>(global0.c.x, -11374i, var_2), _wgslsmith_div_vec3_i32(var_0.c, select(vec3<i32>(var_2, 55423i, var_0.c.x), vec3<i32>(var_0.c.x, 0i, -25585i), var_0.a)))));
    let var_4 = !select(select(vec2<bool>(all(vec4<bool>(var_3.a, var_0.a, var_3.a, false)), var_3.a), vec2<bool>(func_4(var_0, Struct_1(true, vec4<u32>(u_input.a, var_3.b.x, var_0.b.x, var_3.b.x), vec3<i32>(5658i, -9019i, 27718i))).a, false), (var_0.a & global0.a) & var_0.a), select(vec2<bool>(false, true), !vec2<bool>(var_0.a, true), !all(vec3<bool>(var_3.a, true, false))), !select(any(vec2<bool>(true, true)), !var_3.a, var_0.b.x >= 11764u));
    global1 = array<vec3<f32>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_3.c), var_0.c.x, _wgslsmith_mod_i32(-(var_3.c.x & 163i), max(_wgslsmith_div_i32(global0.c.x, -2147483647i), global0.c.x)) << (29749u % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1308f, 1175f)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(302f, 350f), vec2<f32>(156f, 119f)))))));
}

