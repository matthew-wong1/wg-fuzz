struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: bool,
    d: vec2<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_2;

var<private> global2: Struct_1;

var<private> global3: array<vec4<u32>, 18>;

var<private> global4: Struct_3;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> bool {
    global1 = global0.e;
    let var_0 = abs(~max(firstLeadingBit(~u_input.c), abs(global0.b.a.xy)));
    global3 = array<vec4<u32>, 18>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.a)))));
    global0 = Struct_3(~(_wgslsmith_sub_i32(global0.a, u_input.b.x) << (global4.e.a.x % 32u)), global0.b, true, vec2<bool>(!global4.c, global4.c), Struct_2(~u_input.e.yww, global1.b));
    return false;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec2<f32>) -> Struct_3 {
    var var_0 = vec2<bool>(func_3(), global4.c);
    global3 = array<vec4<u32>, 18>();
    global2 = global1.b;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(max(arg_2.x, global1.b.a)));
    global4 = Struct_3(_wgslsmith_add_i32(global0.a, firstTrailingBit(global4.a)), Struct_2(_wgslsmith_div_vec3_u32(min(vec3<u32>(arg_1, 4294967295u, 58551u), vec3<u32>(71185u, arg_1, global4.e.a.x)) << (select(vec3<u32>(global1.a.x, 0u, global0.e.a.x), vec3<u32>(u_input.a, global0.e.a.x, 12359u), vec3<bool>(var_0.x, true, false)) % vec3<u32>(32u)), vec3<u32>(58370u, arg_1, global4.b.a.x >> (4294967295u % 32u))), global4.e.b), false, !select(select(global0.d, global0.d, vec2<bool>(false, true)), select(vec2<bool>(global0.d.x, true), global0.d, any(vec3<bool>(var_0.x, false, var_0.x))), vec2<bool>(!var_0.x, true)), Struct_2(vec3<u32>(1u, ~(~global1.a.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(99553u, 19727u, 42538u, global1.a.x), vec4<u32>(21984u, 1u, global4.b.a.x, 74286u))), arg_0));
    return Struct_3(_wgslsmith_mult_i32(abs(_wgslsmith_mod_i32(u_input.b.x, -103842i)), _wgslsmith_div_i32(global0.a, ~(-global0.a))), Struct_2(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, global0.b.a.x, 0u) | vec3<u32>(38616u, global4.e.a.x, u_input.d), vec3<u32>(global0.b.a.x, 1u, global4.e.a.x) >> (vec3<u32>(4294967295u, 4294967295u, global4.e.a.x) % vec3<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(-596f * _wgslsmith_f_op_f32(arg_0.a * 879f)))), true, select(global4.d, !select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, var_0.x), false), 27637i > global0.a), global4.d), global0.e);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> vec4<i32> {
    return _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_add_i32(0i, 28341i & (-2147483647i >> (global1.a.x % 32u))), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.a, global4.a, -17108i), vec3<i32>(global4.a, u_input.b.x, u_input.b.x)) >> (((4294967295u >> (0u % 32u)) ^ ~arg_1.b.a.x) % 32u), global0.a, u_input.b.x), firstTrailingBit(select(vec4<i32>(-1i) * -vec4<i32>(-8512i, 2147483647i, -34145i, arg_1.a), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.a, global0.a, u_input.b.x, arg_1.a), vec4<i32>(-11984i, 7407i, 0i, global4.a), vec4<i32>(arg_1.a, u_input.b.x, u_input.b.x, global4.a)), select(!vec4<bool>(true, arg_1.d.x, false, false), vec4<bool>(false, global4.d.x, global4.d.x, true), select(vec4<bool>(global4.c, false, global4.c, arg_1.c), vec4<bool>(global4.d.x, true, arg_1.c, true), global4.d.x)))));
}

fn func_1() -> Struct_2 {
    global3 = array<vec4<u32>, 18>();
    global2 = global4.b.b;
    let var_0 = -func_4(global4.e.b, func_2(global4.e.b, global0.e.a.x, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(global1.b.a, global4.b.b.a), vec2<f32>(986f, -1128f))))));
    global2 = global0.e.b;
    let var_1 = select(global4.e.a.x, 0u, global4.c);
    return func_2(func_2(Struct_1(1f), 33065u, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(ceil(-586f)), _wgslsmith_div_f32(global1.b.a, global0.e.b.a)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a, global0.b.b.a) + vec2<f32>(global4.b.b.a, global2.a))))))).b.b, u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(global4.b.b.a, -846f)), _wgslsmith_f_op_f32(abs(-1472f)))))).b;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_3(_wgslsmith_add_i32(-global0.a, 0i), func_1(), !global4.d.x, !global4.d, func_1());
    let var_0 = ~u_input.b.x;
    var var_1 = global4.b.b.a;
    var var_2 = func_2(Struct_1(_wgslsmith_div_f32(-967f, global2.a)), u_input.d, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(352f, 551f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1538f, -1329f) - vec2<f32>(global2.a, global4.b.b.a))))))).e.b;
    var var_3 = false;
    let var_4 = func_1().b;
    let var_5 = global2.a;
    let var_6 = Struct_3(u_input.b.x, Struct_2(u_input.e.xwy | (firstLeadingBit(vec3<u32>(global0.b.a.x, global0.e.a.x, 36883u)) << (~vec3<u32>(0u, 35789u, 1u) % vec3<u32>(32u))), global1.b), !(true == any(select(vec4<bool>(global4.c, global0.c, true, global4.c), vec4<bool>(global0.c, global0.c, false, global4.d.x), vec4<bool>(global4.c, global0.d.x, global0.d.x, global0.d.x)))), !select(select(global4.d, !vec2<bool>(global0.c, global0.c), !global4.c), !select(global0.d, vec2<bool>(global0.c, global4.d.x), global4.c), !global4.d), func_1());
    let x = u_input.a;
    s_output = StorageBuffer(~global0.e.a.x, _wgslsmith_sub_u32(4294967295u, global4.b.a.x), 27432i << (~global1.a.x % 32u), u_input.e, var_0 << (6004u % 32u));
}

