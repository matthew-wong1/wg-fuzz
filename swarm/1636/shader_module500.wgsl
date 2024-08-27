struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(0i, true, vec4<u32>(4294967295u, 101420u, 0u, 0u)), Struct_1(2147483647i, true, vec4<u32>(29081u, 4294967295u, 4294967295u, 0u)), Struct_1(i32(-2147483648), true, vec4<u32>(1u, 10740u, 38635u, 18725u)), Struct_1(54488i, false, vec4<u32>(0u, 0u, 30372u, 1u)), Struct_1(35007i, false, vec4<u32>(0u, 1u, 27605u, 1804u)), Struct_1(-64398i, false, vec4<u32>(4294967295u, 14871u, 47431u, 1u)), Struct_1(8115i, false, vec4<u32>(17395u, 4143u, 54775u, 4294967295u)), Struct_1(-1i, true, vec4<u32>(36584u, 0u, 58254u, 2767u)), Struct_1(i32(-2147483648), false, vec4<u32>(0u, 0u, 4294967295u, 1u)), Struct_1(14467i, false, vec4<u32>(19918u, 0u, 0u, 9491u)), Struct_1(0i, true, vec4<u32>(24914u, 71142u, 27796u, 6668u)), Struct_1(-17946i, false, vec4<u32>(4294967295u, 46345u, 39633u, 4294967295u)), Struct_1(-47847i, false, vec4<u32>(30630u, 1u, 47169u, 4294967295u)), Struct_1(i32(-2147483648), true, vec4<u32>(14872u, 51768u, 14111u, 4294967295u)), Struct_1(-47811i, false, vec4<u32>(7044u, 27021u, 43920u, 1u)), Struct_1(15292i, false, vec4<u32>(89228u, 13526u, 50801u, 45108u)), Struct_1(-41986i, false, vec4<u32>(0u, 1u, 2209u, 4294967295u)), Struct_1(20825i, true, vec4<u32>(22256u, 1u, 44027u, 30545u)), Struct_1(-42772i, false, vec4<u32>(0u, 57509u, 4294967295u, 0u)), Struct_1(18089i, true, vec4<u32>(120284u, 20180u, 53308u, 10348u)), Struct_1(2147483647i, true, vec4<u32>(17377u, 1u, 3912u, 0u)), Struct_1(i32(-2147483648), true, vec4<u32>(0u, 22741u, 29839u, 1u)), Struct_1(23643i, true, vec4<u32>(0u, 29905u, 4574u, 56925u)));

var<private> global2: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: bool) -> i32 {
    return arg_0;
}

fn func_3() -> vec2<bool> {
    let var_0 = vec4<bool>(true, false, !(firstLeadingBit(_wgslsmith_dot_vec3_u32(global2.c.wyw, vec3<u32>(u_input.a, global2.c.x, 32781u))) == ~_wgslsmith_mult_u32(u_input.a, global2.c.x)), any(select(!(!vec2<bool>(global2.b, true)), vec2<bool>(!global2.b, true), !vec2<bool>(global2.b, global2.b))));
    global0 = u_input.b.x;
    var var_1 = Struct_1(global2.a << (45649u % 32u), global2.b, select(~global2.c, ~(~(~vec4<u32>(0u, 63055u, 4294967295u, 46480u))), vec4<bool>(all(select(var_0, vec4<bool>(false, var_0.x, true, global2.b), false)), all(vec4<bool>(false, global2.b, false, true)), var_0.x != true, true)));
    var_1 = Struct_1(1i, var_1.b, (var_1.c | (_wgslsmith_div_vec4_u32(global2.c, vec4<u32>(u_input.a, 30612u, 10966u, var_1.c.x)) | countOneBits(vec4<u32>(7331u, 1u, u_input.a, 37137u)))) ^ vec4<u32>(countOneBits(var_1.c.x), _wgslsmith_dot_vec3_u32(global2.c.wzw, vec3<u32>(26346u, var_1.c.x, 4294967295u)) ^ var_1.c.x, ~var_1.c.x, var_1.c.x & 4294967295u));
    let var_2 = vec4<bool>(!((min(global2.c.x, 50762u) << (~1u % 32u)) <= reverseBits(u_input.a)), _wgslsmith_clamp_i32(1i, 0i ^ -global2.a, _wgslsmith_div_i32(-2147483647i, -1i)) <= _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(-1i, -2147483647i, global2.a) & u_input.b), false, all(vec2<bool>(true && all(var_0.zz), any(vec3<bool>(var_0.x, true, var_0.x)))));
    return select(!var_2.xz, !vec2<bool>(var_2.x, var_0.x), vec2<bool>(all(var_2), false));
}

fn func_4(arg_0: vec2<bool>) -> u32 {
    global0 = max(_wgslsmith_mod_i32(select(u_input.c, _wgslsmith_sub_i32(global2.a, _wgslsmith_mod_i32(-20448i, 2147483647i)), false), ~(~(~2082i))), firstTrailingBit(abs(0i)));
    global1 = array<Struct_1, 23>();
    global0 = -1i;
    global1 = array<Struct_1, 23>();
    var var_0 = max(5651u, _wgslsmith_add_u32(global2.c.x, _wgslsmith_dot_vec4_u32(max(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a, global2.c.x, u_input.a), global2.c), vec4<u32>(global2.c.x, global2.c.x, u_input.a, 4294967295u)), vec4<u32>(reverseBits(41986u), _wgslsmith_mult_u32(84478u, u_input.a), u_input.a << (4294967295u % 32u), ~1u))));
    return select(_wgslsmith_mod_u32(global2.c.x, countOneBits(4294967295u) & u_input.a), _wgslsmith_mult_u32(countOneBits(_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.a, 0u), 1u)), u_input.a), true);
}

fn func_2(arg_0: vec2<bool>) -> f32 {
    global0 = -2147483647i;
    var var_0 = select(vec3<u32>(global2.c.x, func_4(func_3()), 1u), ~(~vec3<u32>(28785u, global2.c.x, global2.c.x) >> (vec3<u32>(24596u, _wgslsmith_dot_vec3_u32(global2.c.wzz, vec3<u32>(global2.c.x, 0u, u_input.a)), 35304u) % vec3<u32>(32u))), !(_wgslsmith_f_op_f32(f32(-1f) * -697f) <= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(235f - -104f)))));
    let var_1 = u_input.b.x;
    let var_2 = global1[_wgslsmith_index_u32(44648u, 23u)];
    let var_3 = var_2.b || select(true, func_3().x, all(!vec4<bool>(var_2.b, var_2.b, var_2.b, arg_0.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(405f - 1170f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -701f)), all(select(vec4<bool>(var_2.b, true, var_3, false), vec4<bool>(var_2.b, arg_0.x, true, false), false))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 23>();
    let var_0 = -(select(-vec4<i32>(31672i, global2.a, u_input.c, global2.a) >> (global2.c % vec4<u32>(32u)), vec4<i32>(-1i, i32(-1i) * -2147483647i, func_1(-56121i, vec3<u32>(27417u, 47246u, u_input.a), false), 52040i), all(select(vec3<bool>(false, true, false), vec3<bool>(global2.b, true, global2.b), false))) | _wgslsmith_sub_vec4_i32(-select(vec4<i32>(u_input.b.x, global2.a, 0i, u_input.b.x), vec4<i32>(u_input.b.x, -1i, 1i, 10413i), global2.b), vec4<i32>(-28345i, ~global2.a, _wgslsmith_sub_i32(-11907i, -23225i), -u_input.b.x)));
    global1 = array<Struct_1, 23>();
    let var_1 = global2.c.xz;
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-406f - _wgslsmith_div_f32(-378f, _wgslsmith_f_op_f32(f32(-1f) * -1294f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(select(select(vec2<bool>(global2.b, true), vec2<bool>(false, false), global2.b), vec2<bool>(true, false), vec2<bool>(global2.b, global2.b))))), global2.b));
    var var_3 = Struct_1(5721i, var_0.x >= (i32(-1i) * -1i), global2.c);
    let var_4 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(419f, -356f)))) != -193f);
    var_3 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(_wgslsmith_mod_u32(var_1.x, max(var_1.x, var_1.x))) & _wgslsmith_mult_u32(0u, var_3.c.x), _wgslsmith_sub_u32(~(~(~29018u)), 8359u)), 23u)];
    var var_5 = _wgslsmith_f_op_f32(step(1203f, _wgslsmith_f_op_f32(f32(-1f) * -426f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(566f, 1256f, 447f, 714f), vec4<f32>(-214f, 939f, 869f, -658f)))))), ~abs(global2.c.zxw), i32(-1i) * -15757i, var_3.c);
}

