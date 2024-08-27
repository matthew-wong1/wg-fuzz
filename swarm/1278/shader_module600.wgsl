struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: u32,
    d: f32,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: u32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28>;

var<private> global1: array<Struct_2, 2>;

var<private> global2: array<vec2<u32>, 18> = array<vec2<u32>, 18>(vec2<u32>(4294967295u, 95360u), vec2<u32>(89882u, 69052u), vec2<u32>(27945u, 4294967295u), vec2<u32>(1u, 11735u), vec2<u32>(1u, 0u), vec2<u32>(32841u, 1u), vec2<u32>(1091u, 48971u), vec2<u32>(0u, 48757u), vec2<u32>(4294967295u, 1u), vec2<u32>(43582u, 1u), vec2<u32>(27818u, 1u), vec2<u32>(0u, 30304u), vec2<u32>(14390u, 38306u), vec2<u32>(65117u, 30986u), vec2<u32>(4294967295u, 35630u), vec2<u32>(43371u, 34493u), vec2<u32>(67763u, 4294967295u), vec2<u32>(1u, 18590u));

var<private> global3: u32;

var<private> global4: Struct_2 = Struct_2(Struct_1(false, vec3<f32>(-948f, 1920f, 629f), 1i), vec3<i32>(2147483647i, i32(-2147483648), -1i), 0u, -3057f, vec4<i32>(2147483647i, -72571i, 1i, i32(-2147483648)));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(968f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-1000f, global4.a.b.x)), -255f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1429f, 465f, true)) * -310f))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -587f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-816f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(ceil(global4.a.b.x)))))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(max(reverseBits(4294967295u), global4.c), 28u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global4.d)))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1499f)))));
    var var_2 = global4.a;
    var var_3 = var_2.b.x;
    global1 = array<Struct_2, 2>();
    return vec4<u32>(~(~_wgslsmith_sub_u32(~arg_0, 1959u)), 1u, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(3177u, global4.c, 0u, u_input.c) ^ min(vec4<u32>(4294967295u, 9296u, 22556u, 26914u), vec4<u32>(0u, 1u, 4294967295u, u_input.b)), vec4<u32>(_wgslsmith_div_u32(4294967295u, global4.c), select(global4.c, arg_0, false), arg_0 | 53322u, 1u << (u_input.b % 32u))), u_input.c);
}

fn func_2() -> bool {
    let var_0 = u_input.e.x >> (~(56431u ^ _wgslsmith_div_u32(u_input.b, max(43493u, 41585u))) % 32u);
    var var_1 = ~(~vec4<u32>(~45382u, ~global4.c, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 29667u, global4.c), vec3<u32>(50929u, u_input.c, 0u)), u_input.c)) << ((func_3(global4.c) << (vec4<u32>(~_wgslsmith_sub_u32(u_input.c, global4.c), _wgslsmith_clamp_u32(_wgslsmith_add_u32(57904u, 4180u), ~57589u, 0u), _wgslsmith_sub_u32(~4294967295u, _wgslsmith_mult_u32(global4.c, 1u)), 61205u) % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_2 = Struct_3(vec2<i32>(1i, i32(-1i) * -1i), global4.a, global4.a);
    global1 = array<Struct_2, 2>();
    let var_3 = all(vec4<bool>(global4.a.a, var_2.c.a, false, true));
    return var_2.c.a;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec3<f32>) -> Struct_3 {
    var var_0 = arg_2.x;
    global1 = array<Struct_2, 2>();
    let var_1 = Struct_4(_wgslsmith_mult_vec4_u32(vec4<u32>(~global4.c, 4294967295u, ~firstLeadingBit(4294967295u), u_input.b), vec4<u32>(arg_1.x << (_wgslsmith_dot_vec2_u32(arg_1.zz, global2[_wgslsmith_index_u32(arg_1.x, 18u)]) % 32u), ~1u, 38395u, _wgslsmith_mult_u32(88270u, arg_1.x << (global4.c % 32u)))), vec4<bool>(func_2() & true, false, true, global4.a.a), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(arg_1.yx, _wgslsmith_mult_vec2_u32(vec2<u32>(28560u, global4.c) << (vec2<u32>(global4.c, 4294967295u) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(arg_1.xz, vec2<u32>(4327u, 51607u), arg_1.xx))), ~global4.c));
    let var_2 = -(-11117i & arg_0.b.x);
    global0 = array<f32, 28>();
    return Struct_3(u_input.a, arg_0.a, arg_0.a);
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = -1153f;
    let var_1 = vec4<u32>(global4.c, u_input.b, ~global4.c, _wgslsmith_div_u32(~max(abs(1u), 0u & global4.c), 23251u));
    var var_2 = global4.a.a;
    global1 = array<Struct_2, 2>();
    let var_3 = Struct_5(select(!arg_1.yy, select(vec2<bool>(!arg_3.a, false), vec2<bool>(true, true), !select(arg_1.yw, arg_1.yw, arg_1.wz)), !select(arg_1.wz, vec2<bool>(global4.a.a, false), vec2<bool>(true, arg_2.a))), -(-_wgslsmith_dot_vec3_i32(vec3<i32>(-7347i, arg_3.c, u_input.a.x), u_input.e) << (~4294967295u % 32u)), arg_0.b);
    return vec2<bool>(all(!vec4<bool>(true, arg_2.a, arg_3.c <= -10266i, false)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(71125u, 28u)]) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(997f * -822f) * _wgslsmith_f_op_f32(arg_3.b.x - global0[_wgslsmith_index_u32(1u, 28u)]))));
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: vec2<f32>) -> Struct_4 {
    let var_0 = max(func_1(Struct_2(global4.a, ~global4.b, arg_1.c, arg_1.a.b.x, arg_1.e), _wgslsmith_div_vec3_u32(vec3<u32>(firstTrailingBit(global4.c), _wgslsmith_mult_u32(66505u, 9663u), global4.c), vec3<u32>(~global4.c, u_input.c | 72193u, 0u | arg_1.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(9168u, 28u)], -1000f, global0[_wgslsmith_index_u32(17933u, 28u)]) * arg_1.a.b), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global4.d, -1030f, 1288f)))) + vec3<f32>(_wgslsmith_f_op_f32(arg_3.x - -1400f), _wgslsmith_f_op_f32(floor(797f)), _wgslsmith_f_op_f32(step(arg_1.d, global0[_wgslsmith_index_u32(global4.c, 28u)]))))).a, abs(~arg_1.b.xx));
    var var_1 = func_1(Struct_2(func_1(Struct_2(Struct_1(true, arg_1.a.b, arg_1.a.c), min(u_input.e, u_input.e), u_input.b, _wgslsmith_f_op_f32(-arg_1.d), select(arg_1.e, global4.e, true)), abs(abs(vec3<u32>(40275u, 14174u, global4.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.d, arg_1.d, -520f)) * vec3<f32>(global0[_wgslsmith_index_u32(global4.c, 28u)], 1989f, -605f))).c, ~(-vec3<i32>(0i, 10778i, arg_1.b.x)), global4.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(f32(-1f) * -143f)), global4.e), ~abs(_wgslsmith_clamp_vec3_u32(max(vec3<u32>(u_input.c, 37155u, 1u), vec3<u32>(global4.c, u_input.b, global4.c)), vec3<u32>(0u, arg_1.c, arg_1.c) ^ vec3<u32>(global4.c, u_input.b, 20583u), vec3<u32>(arg_1.c, 90038u, 0u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global4.a.b))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(global4.a.b))))));
    let var_2 = vec4<u32>(_wgslsmith_mult_u32(abs(_wgslsmith_div_u32(~arg_1.c, abs(42686u))), 1u), global4.c, _wgslsmith_sub_u32(firstLeadingBit(func_3(_wgslsmith_mult_u32(arg_1.c, global4.c)).x), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(6342u, 1u)), vec2<u32>(1u, 13970u) & firstLeadingBit(vec2<u32>(u_input.c, arg_1.c)))), ~1u);
    var var_3 = global4.d;
    let var_4 = ~4294967295u;
    return Struct_4(~reverseBits(vec4<u32>(_wgslsmith_sub_u32(4570u, global4.c), ~4294967295u, _wgslsmith_sub_u32(global4.c, 55063u), ~var_2.x)), select(select(!(!vec4<bool>(arg_1.a.a, var_1.c.a, false, var_1.c.a)), select(!vec4<bool>(arg_0, true, false, arg_1.a.a), select(vec4<bool>(false, false, true, global4.a.a), vec4<bool>(false, true, global4.a.a, global4.a.a), vec4<bool>(arg_1.a.a, arg_1.a.a, true, true)), select(arg_1.a.a, arg_2.x, var_1.c.a)), true), select(select(vec4<bool>(false, arg_0, global4.a.a, arg_1.a.a), !vec4<bool>(true, var_1.b.a, arg_1.a.a, false), !vec4<bool>(false, arg_1.a.a, false, false)), select(vec4<bool>(global4.a.a, false, global4.a.a, var_1.b.a), vec4<bool>(arg_0, arg_2.x, false, arg_2.x), select(vec4<bool>(false, false, true, true), vec4<bool>(arg_1.a.a, false, false, global4.a.a), vec4<bool>(true, global4.a.a, arg_2.x, true))), all(!vec4<bool>(global4.a.a, false, global4.a.a, arg_0))), !select(select(vec4<bool>(true, arg_1.a.a, false, var_1.b.a), vec4<bool>(false, arg_1.a.a, arg_1.a.a, true), false), !vec4<bool>(true, false, arg_0, arg_1.a.a), all(vec4<bool>(false, false, true, var_1.c.a)))), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~var_2.xyy, var_2.xwx), ~(~firstTrailingBit(vec3<u32>(arg_1.c, 1u, global4.c)))));
}

fn func_6(arg_0: f32, arg_1: Struct_4) -> vec2<bool> {
    let var_0 = Struct_3(firstLeadingBit(~u_input.e.zx), Struct_1(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(arg_1.a.x, u_input.b, u_input.b)), vec3<u32>(19925u, 37405u, 76051u)) < _wgslsmith_sub_u32(0u, _wgslsmith_div_u32(40409u, arg_1.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global4.a.b + vec3<f32>(arg_0, -303f, -1547f)) * vec3<f32>(-1614f, arg_0, 335f))), -2147483647i), global4.a);
    let var_1 = global4.a.c;
    var var_2 = func_1(Struct_2(func_1(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~global4.c, ~global4.c), 2u)], vec3<u32>(_wgslsmith_mult_u32(global4.c, u_input.c), _wgslsmith_mult_u32(120367u, arg_1.c), _wgslsmith_div_u32(arg_1.c, global4.c)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(var_0.b.b))))).b, -firstLeadingBit(u_input.e), ~44214u, _wgslsmith_f_op_f32(step(arg_0, global0[_wgslsmith_index_u32(36101u, 28u)])), max(_wgslsmith_add_vec4_i32(global4.e, vec4<i32>(0i, var_0.a.x, global4.e.x, u_input.d)), global4.e ^ vec4<i32>(1i, var_0.c.c, var_0.c.c, var_0.a.x)) | global4.e), (~_wgslsmith_sub_vec3_u32(vec3<u32>(global4.c, 158300u, 1u), vec3<u32>(40224u, global4.c, u_input.c)) << (~arg_1.a.xzy % vec3<u32>(32u))) << (arg_1.a.yyw % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(810f, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 33231u), 28u)], global4.d) - var_0.c.b) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(105f, var_0.c.b.x, global0[_wgslsmith_index_u32(arg_1.c, 28u)]), var_0.c.b, vec3<bool>(true, false, false))) * var_0.b.b) * _wgslsmith_f_op_vec3_f32(global4.a.b + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.b.b.x, global4.d, global0[_wgslsmith_index_u32(41014u, 28u)])))))));
    let var_3 = var_0.b;
    var var_4 = var_0.c.b.x;
    return !(!(!arg_1.b.yy));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = vec4<u32>(~select(~0u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(global4.c, u_input.c), u_input.b >> (global4.c % 32u)), global4.a.a), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(global2[_wgslsmith_index_u32(30191u, 18u)], vec2<u32>(4294967295u, u_input.b), global2[_wgslsmith_index_u32(global4.c, 18u)]) & _wgslsmith_mult_vec2_u32(global2[_wgslsmith_index_u32(4294967295u, 18u)], vec2<u32>(4294967295u, 71773u)), select(_wgslsmith_mod_vec2_u32(vec2<u32>(global4.c, global4.c), vec2<u32>(global4.c, 54356u)), global2[_wgslsmith_index_u32(~u_input.b, 18u)], true)), abs(vec2<u32>(0u, u_input.c) & global2[_wgslsmith_index_u32(1u, 18u)])), 21504u, 43377u);
    let var_2 = func_6(global4.a.b.x, func_5(~u_input.e.x < u_input.d, Struct_2(global4.a, vec3<i32>(-26889i, -22757i, global4.a.c), 51192u, -1814f, vec4<i32>(global4.e.x ^ u_input.a.x, _wgslsmith_dot_vec4_i32(global4.e, vec4<i32>(2147483647i, global4.e.x, 0i, u_input.a.x)), -global4.e.x, u_input.d)), select(vec2<bool>(select(false, false, var_0), global4.a.a), func_4(func_1(Struct_2(Struct_1(var_0, vec3<f32>(703f, global0[_wgslsmith_index_u32(var_1.x, 28u)], global4.d), global4.a.c), global4.b, 4294967295u, -1203f, global4.e), var_1.wzz, global4.a.b), select(vec4<bool>(false, false, false, var_0), vec4<bool>(true, true, true, false), global4.a.a), global4.a, func_1(global1[_wgslsmith_index_u32(0u, 2u)], vec3<u32>(4294967295u, u_input.c, global4.c), global4.a.b).b), vec2<bool>(var_0, var_0)), vec2<f32>(-2819f, global0[_wgslsmith_index_u32(1u, 28u)])));
    global4 = global1[_wgslsmith_index_u32(~var_1.x, 2u)];
    let var_3 = global1[_wgslsmith_index_u32(9686u, 2u)];
    let var_4 = func_1(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~var_3.c), func_3(1u).x), 2u)], reverseBits(var_1.wzy), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1207f, 1196f, var_3.d))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(global4.a.b, vec3<f32>(1273f, -1000f, var_3.d))) + global4.a.b)))).c;
    let var_5 = Struct_4(~vec4<u32>(1u, _wgslsmith_mult_u32(var_1.x, 4294967295u), global4.c, _wgslsmith_mult_u32(~u_input.b, func_3(var_1.x).x)), select(select(select(vec4<bool>(var_4.a, var_2.x, true, var_3.a.a), vec4<bool>(true, false, true, false), vec4<bool>(true, true, var_3.a.a, false)), vec4<bool>(var_0, true, true, var_2.x), true), !vec4<bool>(var_3.a.a, true, func_6(global0[_wgslsmith_index_u32(var_3.c, 28u)], Struct_4(vec4<u32>(var_1.x, 51475u, global4.c, 14640u), vec4<bool>(var_3.a.a, global4.a.a, false, true), 4294967295u)).x, var_4.c >= -2147483647i), select(vec4<bool>(all(vec4<bool>(global4.a.a, false, true, true)), func_2(), true, var_0 || var_4.a), vec4<bool>(true, true, select(false, true, false), any(vec3<bool>(var_2.x, global4.a.a, var_2.x))), select(!vec4<bool>(true, global4.a.a, global4.a.a, false), vec4<bool>(false, var_3.a.a, true, true), var_2.x))), _wgslsmith_mod_u32(var_3.c, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(1i, func_5(true, Struct_2(Struct_1(var_5.b.x, _wgslsmith_div_vec3_f32(vec3<f32>(-120f, 1349f, -909f), vec3<f32>(var_4.b.x, -2487f, var_3.a.b.x)), reverseBits(u_input.d)), global4.e.zxz, 66681u, -1167f, max(var_3.e, ~vec4<i32>(-38195i, 7782i, u_input.e.x, -2213i))), vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-367f, global0[_wgslsmith_index_u32(72315u, 28u)]) - vec2<f32>(var_3.a.b.x, global4.a.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1476f, global0[_wgslsmith_index_u32(12201u, 28u)])))), vec2<bool>(var_4.a, all(vec2<bool>(var_3.a.a, false)))))).a);
}

