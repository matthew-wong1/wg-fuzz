struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

var<private> global1: Struct_1 = Struct_1(-39363i, 101449u, true, vec3<i32>(-24418i, 1i, i32(-2147483648)));

var<private> global2: array<vec3<f32>, 22>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: f32, arg_1: vec3<u32>) -> i32 {
    global2 = array<vec3<f32>, 22>();
    let var_0 = global1.c;
    global0 = array<Struct_1, 28>();
    let var_1 = vec3<bool>(false | any(select(!vec4<bool>(global1.c, global1.c, global1.c, false), vec4<bool>(global1.c, false, global1.c, global1.c), -1039f > arg_0)), !(!global1.c), false);
    let var_2 = global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~firstTrailingBit(select(vec4<u32>(4294967295u, u_input.a.x, arg_1.x, 4294967295u), vec4<u32>(4294967295u, 5803u, 0u, 0u), vec4<bool>(true, false, var_1.x, false))), (vec4<u32>(57841u, 4294967295u, global1.b, 26439u) & _wgslsmith_add_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 79022u), vec4<u32>(u_input.a.x, global1.b, 1u, 96888u))) << ((vec4<u32>(1230u, 50515u, 0u, global1.b) >> (vec4<u32>(1u, 14546u, u_input.a.x, 26477u) % vec4<u32>(32u))) % vec4<u32>(32u))), 22u)];
    return ~(-70141i | (global1.a >> (_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, global1.b, 0u), vec4<u32>(26570u, arg_1.x, 29763u, 25896u)), abs(vec4<u32>(76121u, 414u, 31379u, 14527u))) % 32u)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> bool {
    let var_0 = 1i;
    var var_1 = ~((select(_wgslsmith_div_vec4_u32(vec4<u32>(1u, global1.b, 10515u, 0u), vec4<u32>(u_input.a.x, 69160u, 73108u, 4294967295u)), vec4<u32>(27565u, 1u, arg_2.b, 19046u), select(vec4<bool>(false, global1.c, false, arg_0.c), vec4<bool>(arg_0.c, global1.c, arg_0.c, false), vec4<bool>(false, arg_0.c, arg_0.c, false))) >> (_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.b, arg_0.b, 0u, u_input.a.x), ~vec4<u32>(arg_0.b, global1.b, arg_0.b, u_input.a.x)) % vec4<u32>(32u))) ^ vec4<u32>(arg_2.b, arg_0.b, global1.b, u_input.a.x));
    var_1 = ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.x, global1.b, var_1.x, global1.b), vec4<u32>(1u, 1u, 43083u, var_1.x)) >> (firstTrailingBit(vec4<u32>(u_input.a.x, arg_0.b, 4896u, global1.b) ^ ~vec4<u32>(0u, 3898u, 10317u, 4294967295u)) % vec4<u32>(32u)));
    global1 = global0[_wgslsmith_index_u32(1590u ^ var_1.x, 28u)];
    var_1 = _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(min(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 22018u, 1229u, 1u), vec4<u32>(4294967295u, arg_0.b, 62919u, var_1.x)), vec4<u32>(~global1.b, _wgslsmith_div_u32(arg_2.b, 9050u), u_input.a.x, var_1.x)), vec4<u32>(global1.b, 4294967295u, ~1u, 46055u) & _wgslsmith_sub_vec4_u32(~vec4<u32>(arg_2.b, arg_2.b, 1u, 49505u), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, arg_0.b, u_input.a.x, 12238u), vec4<u32>(global1.b, 10752u, arg_2.b, 0u), vec4<u32>(var_1.x, 4294967295u, 0u, var_1.x))), _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(arg_0.b, u_input.a.x, u_input.a.x, arg_2.b)) ^ abs(vec4<u32>(0u, 1u, var_1.x, arg_0.b)), reverseBits(vec4<u32>(arg_2.b, 4294967295u, 34780u, u_input.a.x) | vec4<u32>(arg_2.b, u_input.a.x, 1u, arg_0.b)))), vec4<u32>(countOneBits(arg_2.b), 1u, global1.b, var_1.x));
    return any(vec3<bool>(!select(arg_2.c || arg_0.c, any(vec2<bool>(true, arg_0.c)), false), true, true));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<f32>) -> vec3<i32> {
    global0 = array<Struct_1, 28>();
    var var_0 = all(vec2<bool>(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_1.x)), arg_1.x) > arg_1.x));
    let var_1 = Struct_1(~(_wgslsmith_mult_i32(-1131i, -global1.d.x) ^ (-global1.d.x << (_wgslsmith_clamp_u32(u_input.a.x, global1.b, 116753u) % 32u))), _wgslsmith_sub_u32(~(~(~global1.b)), _wgslsmith_dot_vec4_u32(~vec4<u32>(20639u, 14352u, 8854u, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(10155u, 39795u, global1.b, 0u), vec4<u32>(1u, 6154u, 66302u, 71963u))) & ~1u), global1.c, vec3<i32>(global1.a, 35862i, 0i));
    var_0 = any(vec2<bool>(!arg_0.x, !func_3(Struct_1(64121i, 4294967295u, true, vec3<i32>(7974i, -31077i, -2147483647i)), _wgslsmith_f_op_f32(floor(645f)), Struct_1(global1.d.x, u_input.a.x, false, var_1.d))));
    global2 = array<vec3<f32>, 22>();
    return vec3<i32>(max(-_wgslsmith_add_i32(-13556i, -7545i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, global1.d.x), global1.d.zz)) | (i32(-1i) * -1i), -2147483647i, 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 28>();
    let var_0 = -483f;
    var var_1 = Struct_1(_wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_div_i32(func_1(var_0, vec3<u32>(1u, global1.b, 60908u)), -1200i), 1i), -_wgslsmith_mod_i32(i32(-1i) * -15176i, -global1.d.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(global1.b, 1u), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), _wgslsmith_add_u32(global1.b, 1u)), 1u, 23648u), vec4<u32>(min(u_input.a.x, global1.b), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global1.b), ~u_input.a), 1u, firstLeadingBit(~1u))), false, min(global1.d, ~func_2(vec2<bool>(global1.c, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(234f, var_0, 1000f, 491f) + vec4<f32>(-657f, 1196f, var_0, var_0)))));
    global2 = array<vec3<f32>, 22>();
    global2 = array<vec3<f32>, 22>();
    global0 = array<Struct_1, 28>();
    let var_2 = select(select(select(vec3<bool>(true, true, global1.c), vec3<bool>(true, all(vec2<bool>(true, var_1.c)), var_1.c), vec3<bool>(!var_1.c, var_0 <= 174f, global1.c)), vec3<bool>(var_1.c, (global1.a <= global1.a) || true, var_1.c), false), !vec3<bool>(var_1.c, any(!vec4<bool>(var_1.c, var_1.c, false, var_1.c)), !global1.c), true);
    let var_3 = Struct_1(var_1.d.x, min(max(_wgslsmith_add_u32(_wgslsmith_mod_u32(1u, u_input.a.x), _wgslsmith_dot_vec2_u32(u_input.a, u_input.a)), 4294967295u), u_input.a.x), var_2.x, select(~firstTrailingBit(select(global1.d, vec3<i32>(-2147483647i, global1.a, 1i), var_2)), _wgslsmith_mult_vec3_i32(var_1.d, global1.d), vec3<bool>(false, any(select(var_2.zz, var_2.xz, var_2.zx)), global1.c)));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, abs(reverseBits(vec3<u32>(40189u, 0u >> (var_1.b % 32u), ~var_3.b))), global1.a, 5959u, _wgslsmith_dot_vec2_u32(u_input.a, ~vec2<u32>(~u_input.a.x, _wgslsmith_div_u32(var_1.b, u_input.a.x))));
}

