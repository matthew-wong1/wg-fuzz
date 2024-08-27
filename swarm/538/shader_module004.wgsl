struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec4<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: vec4<f32>;

var<private> global2: Struct_5;

var<private> global3: array<u32, 9> = array<u32, 9>(19474u, 18319u, 26892u, 46244u, 40363u, 4294967295u, 27897u, 1u, 4294967295u);

var<private> global4: array<vec4<u32>, 27> = array<vec4<u32>, 27>(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(4294967295u, 1u, 30632u, 19273u), vec4<u32>(1u, 1u, 1u, 89097u), vec4<u32>(0u, 60305u, 1u, 1u), vec4<u32>(0u, 0u, 23170u, 0u), vec4<u32>(1u, 1u, 6564u, 63384u), vec4<u32>(72234u, 0u, 4294967295u, 40988u), vec4<u32>(0u, 0u, 4294967295u, 26843u), vec4<u32>(0u, 4294967295u, 0u, 16131u), vec4<u32>(33866u, 0u, 85139u, 49461u), vec4<u32>(34340u, 4294967295u, 36814u, 0u), vec4<u32>(96348u, 4294967295u, 4294967295u, 73568u), vec4<u32>(24480u, 4618u, 0u, 40693u), vec4<u32>(4294967295u, 37099u, 66368u, 0u), vec4<u32>(79188u, 51727u, 36022u, 4294967295u), vec4<u32>(1u, 4294967295u, 30394u, 1u), vec4<u32>(8579u, 8159u, 36373u, 4294967295u), vec4<u32>(14239u, 22916u, 4294967295u, 49760u), vec4<u32>(0u, 1u, 1u, 59398u), vec4<u32>(4294967295u, 35237u, 37790u, 90391u), vec4<u32>(1u, 0u, 5495u, 43870u), vec4<u32>(28511u, 54394u, 38458u, 4294967295u), vec4<u32>(34555u, 26585u, 29511u, 106842u), vec4<u32>(1u, 1u, 4294967295u, 0u), vec4<u32>(68146u, 45401u, 0u, 45766u), vec4<u32>(29421u, 44805u, 10124u, 52178u), vec4<u32>(11535u, 4294967295u, 42860u, 75510u));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec4<i32>, arg_1: u32, arg_2: u32, arg_3: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -606f);
    let var_1 = -6885i;
    var var_2 = select(vec4<bool>(true, !(_wgslsmith_f_op_f32(-global1.x) <= global1.x), all(select(global2.a.b.a.zz, !global2.a.b.a.xx, global2.a.b.a.xx)), min(arg_0.x, 2147483647i ^ arg_0.x) != ~arg_3), !select(!vec4<bool>(global0.x, global0.x, true, global2.d.b), select(select(vec4<bool>(true, false, global0.x, false), vec4<bool>(global0.x, true, global0.x, true), vec4<bool>(global0.x, true, false, false)), vec4<bool>(global2.a.b.a.x, false, false, global2.d.b), !vec4<bool>(false, false, true, global2.a.b.a.x)), vec4<bool>(false, global0.x, any(global2.a.b.a.xy), true)), !vec4<bool>(global2.b.b, !all(vec2<bool>(false, global2.a.c.b)), select(17774u, arg_2, global2.b.b) >= _wgslsmith_clamp_u32(1u, arg_1, arg_2), true));
    var var_3 = Struct_1(global2.d.a, any(vec3<bool>(true, any(vec3<bool>(true, false, var_2.x)) || any(vec4<bool>(true, global0.x, true, global2.a.c.b)), !select(var_2.x, var_2.x, true))));
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(897f, -231f, global2.a.a.x, 166f))), _wgslsmith_div_vec4_f32(vec4<f32>(global1.x, -1000f, 493f, global1.x), vec4<f32>(global2.a.a.x, global1.x, global2.a.a.x, global2.a.a.x)))))));
    return ~global3[_wgslsmith_index_u32(1u, 9u)];
}

fn func_2(arg_0: Struct_4, arg_1: u32, arg_2: f32) -> Struct_5 {
    let var_0 = false;
    let var_1 = 246f;
    global3 = array<u32, 9>();
    let var_2 = Struct_5(Struct_4(global2.a.a, Struct_2(global2.a.b.a, ~func_3(u_input.a, 34954u, 16337u, -21994i), min(func_3(vec4<i32>(104i, u_input.a.x, -45645i, u_input.a.x), 22598u, global2.b.a, 0i), ~arg_1)), arg_0.c), arg_0.c, global2.c, Struct_1(~arg_0.b.b, arg_0.c.b));
    global4 = array<vec4<u32>, 27>();
    return Struct_5(Struct_4(vec3<f32>(_wgslsmith_f_op_f32(-958f * arg_2), 972f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -131f))), Struct_2(vec3<bool>(true, true, true), func_3(select(vec4<i32>(534i, -2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(-6130i, -11099i, u_input.a.x, 0i), vec4<bool>(arg_0.c.b, var_2.d.b, global2.d.b, var_0)), max(global2.c.x, arg_1), _wgslsmith_dot_vec3_u32(global2.c, global2.c), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 1i), u_input.a.xw)), arg_1), Struct_1(~_wgslsmith_mod_u32(var_2.d.a, arg_0.c.a), true)), Struct_1(4294967295u, var_2.d.b), countOneBits(select(var_2.c, _wgslsmith_clamp_vec3_u32(~global2.c, max(vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 9u)], 5538u, 0u), vec3<u32>(var_2.d.a, 41667u, 39034u)), global2.c | vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 9u)], 1u, 1u)), any(vec2<bool>(arg_0.b.a.x, true)))), arg_0.c);
}

fn func_4(arg_0: f32, arg_1: Struct_5, arg_2: vec3<bool>, arg_3: Struct_3) -> u32 {
    global0 = vec2<bool>(abs(~_wgslsmith_mod_u32(arg_3.a.c, arg_1.a.b.b)) <= arg_1.b.a, true | (!(!global2.b.b) && false));
    var var_0 = _wgslsmith_f_op_f32(-global1.x);
    let var_1 = arg_3.a.b;
    global4 = array<vec4<u32>, 27>();
    let var_2 = ~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 0u, 0u, 1u), vec4<u32>(arg_3.a.b, global3[_wgslsmith_index_u32(var_1, 9u)], 80356u, 4294967295u))), ~vec4<u32>(arg_1.d.a, 0u, 42596u, 58327u)), func_3(vec4<i32>(i32(-1i) * -2147483647i, 1i, arg_3.c.x, 17224i << (0u % 32u)), firstTrailingBit(arg_1.b.a), 0u, -34164i));
    return reverseBits(_wgslsmith_sub_u32(min(~reverseBits(0u), 0u), ~global2.a.b.c));
}

fn func_5(arg_0: bool, arg_1: vec3<u32>, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = firstLeadingBit(-27361i);
    let var_1 = _wgslsmith_sub_u32(abs(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(global2.c.x, 9u)], countOneBits(global3[_wgslsmith_index_u32(~4294967295u, 9u)]))), arg_2.x & 4294967295u);
    global3 = array<u32, 9>();
    let var_2 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1835f, -570f) * global2.a.a.x), _wgslsmith_f_op_f32(exp2(global2.a.a.x)), global1.x), func_2(global2.a, global2.d.a ^ (func_2(Struct_4(global1.wyy, global2.a.b, global2.d), 1u, global2.a.a.x).c.x >> (_wgslsmith_clamp_u32(1u, 1u, var_1) % 32u)), _wgslsmith_f_op_f32(-global2.a.a.x)).a.b, global2.a.c);
    let var_3 = _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(~firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(global2.a.c.a, global3[_wgslsmith_index_u32(56357u, 9u)], 49814u, 1u), global4[_wgslsmith_index_u32(6555u, 27u)])), min(~abs(arg_2), global4[_wgslsmith_index_u32(var_2.b.c, 27u)])), ~global4[_wgslsmith_index_u32(~(firstLeadingBit(24366u) << ((var_2.b.b | 9266u) % 32u)), 27u)]);
    return func_2(global2.a, max(firstLeadingBit(_wgslsmith_add_u32(~53350u, global2.c.x & arg_1.x)), 0u), _wgslsmith_f_op_f32(f32(-1f) * -1105f)).d;
}

fn func_1() -> vec3<bool> {
    var var_0 = func_5(global2.d.b, vec3<u32>(~global3[_wgslsmith_index_u32(global2.b.a, 9u)] ^ 0u, firstLeadingBit(global2.a.b.b), func_4(-1622f, func_2(global2.a, 0u, global1.x), !global2.a.b.a, Struct_3(global2.a.b, global2.a.b.a.x, vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x)))) ^ global2.c, vec4<u32>(~global2.c.x, 3934u, 38965u, ~(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 9u)], 9u)] | ~74940u)));
    let var_1 = global3[_wgslsmith_index_u32(firstTrailingBit(global2.d.a), 9u)];
    var var_2 = global1.wxx;
    let var_3 = global2.b;
    var var_4 = global2.b.b;
    return !(!(!vec3<bool>(!var_3.b, false, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(global1.x, -1581f, -154f);
    global0 = global2.a.b.a.yy;
    let var_1 = func_1();
    let var_2 = vec3<u32>(~_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(func_4(var_0.x, Struct_5(global2.a, Struct_1(44047u, false), global2.c, global2.d), var_1, Struct_3(Struct_2(vec3<bool>(true, true, var_1.x), 94901u, global2.b.a), global2.d.b, u_input.a)), 9u)], ~global2.a.c.a), global3[_wgslsmith_index_u32(0u << (_wgslsmith_div_u32(global2.d.a | global3[_wgslsmith_index_u32(global2.c.x, 9u)], _wgslsmith_div_u32(51451u, global2.a.c.a)) % 32u), 9u)], reverseBits(~59690u)) ^ _wgslsmith_add_vec3_u32(func_2(func_2(Struct_4(vec3<f32>(1717f, 142f, global2.a.a.x), global2.a.b, global2.a.c), global2.c.x | 2194u, _wgslsmith_f_op_f32(round(350f))).a, ~global2.d.a, _wgslsmith_f_op_f32(f32(-1f) * -1226f)).c, global2.c);
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-833f, -238f, -1891f, 1255f), vec4<f32>(-1708f, global1.x, global2.a.a.x, 1189f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, 1121f, 1000f, global1.x), vec4<f32>(global2.a.a.x, 668f, 2615f, 504f), vec4<bool>(false, global2.a.c.b, true, global0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(385f, 1020f, 138f, global2.a.a.x), vec4<f32>(1653f, global1.x, 1895f, 1448f))))))));
    global4 = array<vec4<u32>, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(33742u);
}

