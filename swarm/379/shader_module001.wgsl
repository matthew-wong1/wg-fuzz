struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: i32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: Struct_3 = Struct_3(vec2<u32>(1u, 7537u), true, Struct_2(false, Struct_1(vec3<u32>(19679u, 4294967295u, 8099u))));

var<private> global2: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(false, Struct_1(vec3<u32>(4294967295u, 40237u, 101209u))), Struct_2(false, Struct_1(vec3<u32>(0u, 4294967295u, 30892u))), Struct_2(true, Struct_1(vec3<u32>(0u, 1u, 0u))), Struct_2(false, Struct_1(vec3<u32>(3196u, 6042u, 1u))), Struct_2(true, Struct_1(vec3<u32>(22752u, 0u, 39157u))), Struct_2(false, Struct_1(vec3<u32>(0u, 0u, 1u))), Struct_2(true, Struct_1(vec3<u32>(2067u, 1u, 53341u))), Struct_2(false, Struct_1(vec3<u32>(27587u, 35434u, 4294967295u))), Struct_2(true, Struct_1(vec3<u32>(0u, 12860u, 1u))), Struct_2(false, Struct_1(vec3<u32>(49414u, 1u, 6753u))), Struct_2(false, Struct_1(vec3<u32>(0u, 45423u, 1u))), Struct_2(true, Struct_1(vec3<u32>(1u, 0u, 0u))), Struct_2(true, Struct_1(vec3<u32>(9723u, 1u, 1u))), Struct_2(true, Struct_1(vec3<u32>(16062u, 42574u, 0u))), Struct_2(true, Struct_1(vec3<u32>(4294967295u, 2450u, 0u))), Struct_2(true, Struct_1(vec3<u32>(8292u, 53551u, 83909u))), Struct_2(true, Struct_1(vec3<u32>(41334u, 25654u, 38162u))), Struct_2(true, Struct_1(vec3<u32>(29520u, 11852u, 4294967295u))), Struct_2(false, Struct_1(vec3<u32>(60723u, 118552u, 1u))), Struct_2(true, Struct_1(vec3<u32>(63598u, 81306u, 10330u))), Struct_2(true, Struct_1(vec3<u32>(31559u, 0u, 24746u))), Struct_2(true, Struct_1(vec3<u32>(45385u, 0u, 0u))), Struct_2(true, Struct_1(vec3<u32>(0u, 4294967295u, 1u))), Struct_2(false, Struct_1(vec3<u32>(4294967295u, 5619u, 4294967295u))), Struct_2(true, Struct_1(vec3<u32>(10449u, 1u, 30317u))), Struct_2(true, Struct_1(vec3<u32>(1u, 1u, 19214u))), Struct_2(false, Struct_1(vec3<u32>(21444u, 4294967295u, 4294967295u))));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: i32, arg_1: u32) -> Struct_1 {
    global2 = array<Struct_2, 27>();
    return Struct_1(global1.c.b.a);
}

fn func_3(arg_0: vec3<u32>) -> vec3<i32> {
    global2 = array<Struct_2, 27>();
    let var_0 = !vec4<bool>(global1.b, all(select(vec3<bool>(global1.c.a, false, global1.b), vec3<bool>(true, global1.c.a, true), !vec3<bool>(global1.b, global1.c.a, global1.b))), !(global1.c.a & global1.b), !(global1.c.a | any(vec2<bool>(false, global1.c.a))));
    let var_1 = ~reverseBits(vec4<u32>(u_input.c.x, ~4294967295u, 0u ^ global1.a.x, func_1(0i, arg_0.x).a.x) >> (~u_input.c % vec4<u32>(32u)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-667f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -759f), _wgslsmith_f_op_f32(1143f * 1152f), any(vec3<bool>(false, var_0.x, var_0.x))))) + _wgslsmith_f_op_f32(490f * -225f)));
    var var_3 = Struct_1(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 54464u, global1.c.b.a.x) << ((vec3<u32>(global1.a.x, 4294967295u, var_1.x) >> (u_input.c.zwz % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(60859u | arg_0.x, abs(var_1.x), _wgslsmith_mult_u32(u_input.c.x, 4294967295u))), vec3<u32>(4294967295u, ~min(46972u, arg_0.x), ~abs(0u))));
    return vec3<i32>(-1i, 1i, abs(abs(abs(u_input.b)))) << (firstTrailingBit(vec3<u32>(~(~var_1.x), _wgslsmith_mod_u32(arg_0.x, 10187u) | arg_0.x, _wgslsmith_mod_u32(0u, ~1u))) % vec3<u32>(32u));
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -443f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(375f, 556f)))), -1081f));
    global1 = Struct_3(global1.c.b.a.xy, !((787f != var_0.x) != any(vec4<bool>(false, global1.c.a, true, global1.c.a))) | ((false && global1.c.a) != true), global2[_wgslsmith_index_u32(98154u, 27u)]);
    global0 = select(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(global0.x, -58031i, u_input.b), countOneBits(vec3<i32>(7464i, u_input.b, u_input.b))), countOneBits(countOneBits(vec3<i32>(-26762i, global0.x, -2147483647i)))) | (_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, u_input.b, u_input.b), vec3<i32>(u_input.b, -1i, 2147483647i)), -vec3<i32>(u_input.b, global0.x, -1i)) | func_3(_wgslsmith_sub_vec3_u32(global1.c.b.a, global1.c.b.a))), vec3<i32>(global0.x, 1i, u_input.b), vec3<bool>(true, any(vec3<bool>(true, true, !global1.b)), ~57405u <= u_input.c.x));
    global1 = Struct_3(~_wgslsmith_div_vec2_u32(u_input.a, ~(~global1.c.b.a.xz)), any(!vec3<bool>(global1.b, global1.c.a, global1.c.a)) | (-u_input.b > _wgslsmith_mod_i32(abs(global0.x), max(-2147483647i, u_input.b))), global1.c);
    let var_1 = Struct_1(global1.c.b.a ^ _wgslsmith_sub_vec3_u32(vec3<u32>(18701u, ~u_input.a.x, u_input.a.x ^ 1u), ~min(u_input.c.ywy, vec3<u32>(global1.a.x, 0u, 33532u))));
    return global1.b;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: i32, arg_3: Struct_2) -> Struct_3 {
    global2 = array<Struct_2, 27>();
    global2 = array<Struct_2, 27>();
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1302f), _wgslsmith_f_op_f32(abs(-291f))))))));
    global1 = Struct_3(~_wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(arg_0.a.x, u_input.c.x)), arg_0.a.yx), !arg_1.x, global1.c);
    global2 = array<Struct_2, 27>();
    return Struct_3(vec2<u32>(arg_0.a.x, ~(~firstTrailingBit(arg_0.a.x))), true, Struct_2(true, func_1(u_input.b, ~u_input.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(~vec2<u32>(~(~1u), 1u), vec2<u32>(77849u, select(~u_input.c.x, ~1u, false) ^ _wgslsmith_dot_vec2_u32(global1.c.b.a.xx, u_input.a)), 2147483647i < _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, global0.x), vec2<i32>(u_input.b, -1i)), -u_input.b, -u_input.b, u_input.b), ~vec4<i32>(u_input.b, global0.x, 2147483647i, u_input.b)));
    global1 = func_4(func_1(1i, firstTrailingBit(21978u)), select(!(!select(vec4<bool>(false, true, true, global1.c.a), vec4<bool>(true, false, global1.c.a, global1.c.a), global1.b)), select(!vec4<bool>(global1.c.a, global1.b, false, true), select(vec4<bool>(false, false, true, global1.b), select(vec4<bool>(global1.c.a, false, false, false), vec4<bool>(false, global1.b, true, false), global1.b), true), vec4<bool>(global1.b, func_2(), false, any(vec4<bool>(false, global1.b, false, global1.b)))), !(!vec4<bool>(false, global1.b, true, global1.b))), global0.x, Struct_2(global1.c.a, global1.c.b));
    let var_1 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(func_4(Struct_1(~(~u_input.c.xyx)), !vec4<bool>(any(vec3<bool>(false, global1.c.a, global1.c.a)), true, false, global1.c.a & global1.b), -_wgslsmith_dot_vec2_i32(reverseBits(global0.xx), vec2<i32>(u_input.b, 0i)), global1.c).c.b.a.zy, -_wgslsmith_div_vec4_i32(-vec4<i32>(4072i, var_1, var_1, var_1), _wgslsmith_sub_vec4_i32(~vec4<i32>(73575i, global0.x, -1i, 1i), vec4<i32>(global0.x, u_input.b, -12455i, global0.x))));
}

