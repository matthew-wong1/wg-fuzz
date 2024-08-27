struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec3<bool>,
    d: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<i32, 32> = array<i32, 32>(0i, 2147483647i, i32(-2147483648), 2147483647i, -1i, 0i, 32397i, -1i, 0i, -19700i, 16322i, -13444i, 47632i, 2147483647i, 5348i, 2147483647i, 39885i, 1i, -22553i, 0i, -22636i, -33851i, -13961i, -6179i, 23461i, 6986i, -13920i, 2147483647i, 2147483647i, -8728i, -1i, -14644i);

var<private> global2: array<Struct_2, 19>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = !vec2<bool>(true, any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true)));
    global1 = array<i32, 32>();
    global1 = array<i32, 32>();
    let var_1 = var_0.x;
    let var_2 = vec3<bool>(arg_3.a.x <= 68205u, true, global1[_wgslsmith_index_u32(global0.e.a.x, 32u)] <= (-1i << (~_wgslsmith_dot_vec4_u32(arg_3.a, arg_3.a) % 32u)));
    return ~_wgslsmith_mult_i32(_wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(~abs(global0.e.a.x), 32u)], -(-5704i >> (global0.a.a.x % 32u)), _wgslsmith_mult_i32(_wgslsmith_mult_i32(arg_1, 1i), ~u_input.b.x)), arg_1);
}

fn func_2() -> Struct_3 {
    var var_0 = global0.d.x;
    let var_1 = 862f;
    let var_2 = (_wgslsmith_mult_i32(select(global1[_wgslsmith_index_u32(u_input.a.x, 32u)] << (u_input.a.x % 32u), u_input.b.x & global0.d.x, true), ~1i) < global0.d.x) == false;
    var var_3 = Struct_2(Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a.zy, vec2<u32>(25169u, global0.a.a.x)), firstLeadingBit(4101u), max(2231u, 4294967295u), 5138u << (u_input.a.x % 32u)), vec4<u32>(29126u, 1u, 0u, max(1u, global0.e.a.x)))), global1[_wgslsmith_index_u32(global0.a.a.x, 32u)], vec2<i32>(-(~32276i), _wgslsmith_mod_i32(_wgslsmith_sub_i32(-2147483647i, func_3(var_1, -15251i, global0.a, global0.a)), u_input.c)), vec2<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(-1i, -30963i, 2147483647i), vec3<i32>(56594i, -2147483647i, global1[_wgslsmith_index_u32(4294967295u, 32u)]) >> (vec3<u32>(u_input.a.x, 33819u, u_input.a.x) % vec3<u32>(32u))), ~vec3<i32>(-55940i, u_input.c, global0.c.x))), Struct_1(global0.e.a));
    let var_4 = Struct_4(var_3.a, _wgslsmith_f_op_f32(sign(-158f)), global0.a.a.wxy);
    return Struct_3(global2[_wgslsmith_index_u32(~reverseBits(global0.a.a.x), 19u)], true, !select(!vec3<bool>(var_2, var_2, true), !select(vec3<bool>(var_2, var_2, var_2), vec3<bool>(true, var_2, true), false), vec3<bool>(!var_2, !var_2, u_input.a.x < 4294967295u)), any(select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(var_2, var_2, false, false), vec4<bool>(false, false, false, var_2)), select(vec4<bool>(var_2, false, var_2, var_2), vec4<bool>(var_2, true, var_2, true), vec4<bool>(var_2, true, var_2, var_2)), false), vec4<bool>(!var_2, any(vec2<bool>(var_2, var_2)), true, select(true, false, true)), false)));
}

fn func_1(arg_0: Struct_2) -> Struct_4 {
    let var_0 = func_2();
    global0 = arg_0;
    let var_1 = true;
    global1 = array<i32, 32>();
    var var_2 = true;
    return Struct_4(Struct_1(vec4<u32>(u_input.a.x ^ global0.e.a.x, arg_0.e.a.x, 0u >> (arg_0.e.a.x % 32u), _wgslsmith_div_u32(0u, global0.a.a.x)) >> (reverseBits(~global0.e.a) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -891f)))), func_2().a.e.a.xxy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a.a.x | u_input.a.x;
    var var_1 = func_1(global2[_wgslsmith_index_u32(66818u | ~global0.e.a.x, 19u)]);
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(~(var_0 ^ 4294967295u), u_input.a.x), ~(~(~4294967295u))), 19u)];
    var var_3 = vec2<i32>(func_2().a.d.x, 51447i);
    var_1 = func_1(Struct_2(var_1.a, _wgslsmith_dot_vec2_i32(global0.d, min(~var_2.c, ~vec2<i32>(36683i, -2147483647i))), func_2().a.c >> (var_1.a.a.wz % vec2<u32>(32u)), ~(-vec2<i32>(-12563i, 1i)), var_1.a));
    global2 = array<Struct_2, 19>();
    var_3 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~select(1i, func_3(273f, -2147483647i, Struct_1(vec4<u32>(u_input.a.x, 901u, 1u, global0.a.a.x)), Struct_1(vec4<u32>(12900u, global0.e.a.x, 0u, 0u))), true), min(global1[_wgslsmith_index_u32(global0.e.a.x >> (u_input.a.x % 32u), 32u)], global0.d.x), _wgslsmith_add_i32(_wgslsmith_sub_i32(35116i, ~(-48180i)), min(firstLeadingBit(-2147483647i), _wgslsmith_mult_i32(-1i, var_3.x)))), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(4294967295u, var_1.c.x), 35333u), _wgslsmith_dot_vec4_u32(~var_1.a.a, _wgslsmith_mult_vec4_u32(vec4<u32>(50929u, 4294967295u, 1u, var_1.c.x), vec4<u32>(42865u, 0u, global0.a.a.x, var_0)))), vec2<u32>(~(~1u), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_0, 59834u), var_1.c.yy), ~vec2<u32>(0u, 59658u)))), _wgslsmith_mod_u32(~var_0 << ((global0.e.a.x & var_1.a.a.x) % 32u), var_2.a.a.x) ^ ~var_1.c.x, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 31922u, 28835u) | _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 6628u, 4412u), var_2.e.a.ywy, u_input.a), global0.a.a.yww));
}

