struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(false, vec2<f32>(-713f, 750f), true, 67002u), Struct_1(false, vec2<f32>(-1198f, 886f), false, 0u), Struct_1(true, vec2<f32>(3260f, -133f), false, 8446u), Struct_1(false, vec2<f32>(-807f, -1026f), true, 15019u), Struct_1(false, vec2<f32>(-1000f, -409f), false, 90615u), Struct_1(false, vec2<f32>(569f, 1263f), true, 80736u), Struct_1(false, vec2<f32>(255f, -927f), true, 1u), Struct_1(false, vec2<f32>(1541f, -554f), true, 0u), Struct_1(true, vec2<f32>(-739f, -921f), false, 66817u), Struct_1(false, vec2<f32>(982f, 614f), true, 22306u), Struct_1(true, vec2<f32>(-1296f, -1000f), true, 4243u), Struct_1(false, vec2<f32>(1515f, 1647f), true, 8141u), Struct_1(false, vec2<f32>(-837f, -594f), true, 19527u), Struct_1(true, vec2<f32>(-1120f, 1128f), true, 33142u), Struct_1(true, vec2<f32>(243f, 779f), true, 89793u), Struct_1(true, vec2<f32>(-1000f, 969f), false, 1u), Struct_1(true, vec2<f32>(628f, 1000f), false, 0u), Struct_1(false, vec2<f32>(1000f, -1000f), false, 1u), Struct_1(true, vec2<f32>(-728f, 656f), false, 4294967295u), Struct_1(true, vec2<f32>(140f, 701f), true, 31001u), Struct_1(true, vec2<f32>(462f, 1271f), false, 9497u), Struct_1(false, vec2<f32>(555f, 1310f), true, 34077u));

var<private> global2: vec3<u32> = vec3<u32>(0u, 1u, 1u);

var<private> global3: Struct_1;

var<private> global4: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = min(global0.a, 2147483647i);
    global1 = array<Struct_1, 22>();
    let var_1 = false;
    return global0.b;
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: u32, arg_3: Struct_1) -> i32 {
    let var_0 = Struct_2(abs(44822i), Struct_1(func_2(global0.d <= max(39772u, global3.d)).a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.zx) - vec2<f32>(481f, _wgslsmith_f_op_f32(global0.c.b.x + -115f))), !global0.b.c, min(select(min(37531u, global2.x), arg_2, true), arg_3.d)), global0.c, _wgslsmith_div_u32(30661u, arg_2));
    let var_1 = Struct_1(true, func_2(true).b, (false | (_wgslsmith_f_op_f32(var_0.b.b.x * -502f) >= _wgslsmith_f_op_f32(arg_3.b.x * -457f))) & true, _wgslsmith_clamp_u32(4294967295u, ~112475u, 114646u));
    var var_2 = _wgslsmith_dot_vec4_u32((vec4<u32>(~var_0.d, _wgslsmith_sub_u32(global2.x, global2.x), _wgslsmith_sub_u32(8047u, 1u), 0u) ^ min(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, global0.c.d, 42716u, arg_3.d), vec4<u32>(var_0.b.d, 28114u, arg_2, arg_3.d)), vec4<u32>(0u, 4294967295u, 4294967295u, var_0.b.d))) << (~max(~vec4<u32>(4451u, u_input.c, 30253u, 1u), vec4<u32>(20046u, 48609u, 1u, 0u)) % vec4<u32>(32u)), ~_wgslsmith_mod_vec4_u32(~firstLeadingBit(vec4<u32>(global0.d, 1u, global3.d, arg_2)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, global0.d, var_1.d, 0u) << (vec4<u32>(0u, 69469u, 1u, var_1.d) % vec4<u32>(32u)), ~vec4<u32>(arg_3.d, global2.x, 59699u, arg_3.d))));
    global2 = _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, reverseBits(u_input.a.x), _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(0u, 7388u, 4294967295u))), vec4<u32>(reverseBits(19486u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 0u), global2.yx), select(global2.x, global2.x, false), global3.d)), countOneBits(u_input.b.x), max(arg_3.d, arg_2)), vec3<u32>(global3.d, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(46339u, u_input.c)) ^ vec2<u32>(arg_3.d, arg_3.d), u_input.a.zx), global0.b.d));
    let var_3 = vec3<bool>(arg_3.a, var_1.c, global3.a);
    return var_0.a;
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    global1 = array<Struct_1, 22>();
    let var_0 = Struct_2(_wgslsmith_clamp_i32(global0.a, select(global0.a << (abs(4294967295u) % 32u), func_3(_wgslsmith_mult_vec2_i32(vec2<i32>(11778i, global0.a), vec2<i32>(36846i, -14090i)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global3.b.x, -460f, -1311f), vec3<f32>(global0.c.b.x, arg_0.b.x, global0.b.b.x))), ~u_input.b.x, func_2(true)), arg_0.a), _wgslsmith_dot_vec3_i32(~firstLeadingBit(vec3<i32>(-1i, global0.a, global0.a)), ~(~vec3<i32>(global0.a, -94529i, -2147483647i)))), arg_0, func_2(any(!vec3<bool>(global0.c.a, true, global0.b.c))), 1u);
    var var_1 = Struct_2(var_0.a << ((select(max(global0.b.d, global3.d), _wgslsmith_div_u32(85232u, global3.d), arg_0.b.x <= global0.b.b.x) >> (u_input.b.x % 32u)) % 32u), arg_0, var_0.b, global0.b.d);
    var var_2 = vec4<bool>(global0.b.c, false, var_0.b.a, true);
    global4 = -func_3(reverseBits(min(-vec2<i32>(1i, -20267i), vec2<i32>(40417i, var_0.a) & vec2<i32>(-2147483647i, global0.a))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b.x, 1493f, var_1.c.b.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.b.x, -1027f, global0.c.b.x) + vec3<f32>(arg_0.b.x, global0.c.b.x, var_1.b.b.x))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.b.x, 579f, arg_0.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1589f, 2328f, arg_0.b.x)))))), ~(~11819u), var_1.c);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(Struct_1(!global0.c.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(global3.b.x + global3.b.x)) + _wgslsmith_f_op_vec2_f32(global3.b + _wgslsmith_f_op_vec2_f32(global0.c.b - global0.b.b))), !(select(global3.a, false, false) & any(vec2<bool>(false, global3.c))), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.d, 16972u, 1u), u_input.a), reverseBits(u_input.a.x), ~global2.x, u_input.c >> (0u % 32u)), ~(~vec4<u32>(0u, global2.x, global0.c.d, u_input.b.x)))));
    global1 = array<Struct_1, 22>();
    global2 = ~(~vec3<u32>(41046u, _wgslsmith_dot_vec4_u32(vec4<u32>(32156u, global2.x, global3.d, 29793u), ~vec4<u32>(u_input.a.x, u_input.c, 60529u, 4294967295u)), ~min(global0.d, u_input.a.x)));
    let var_0 = global2.yy;
    let var_1 = global3.b.x;
    global3 = global1[_wgslsmith_index_u32(var_0.x, 22u)];
    global1 = array<Struct_1, 22>();
    global0 = Struct_2(-(~firstLeadingBit(_wgslsmith_clamp_i32(-27155i, global0.a, global0.a))), global0.b, func_1(func_2(false)).c, _wgslsmith_div_u32(~abs(global0.c.d), ~(~56821u)));
    let var_2 = -31235i;
    let x = u_input.a;
    s_output = StorageBuffer(func_1(Struct_1(global3.a, vec2<f32>(global0.c.b.x, global0.b.b.x), global3.a, _wgslsmith_sub_u32(global3.d, global3.d))).c.d | u_input.b.x, -(reverseBits(vec2<i32>(45062i, 37126i)) << (vec2<u32>(global0.c.d, ~59226u) % vec2<u32>(32u))));
}

