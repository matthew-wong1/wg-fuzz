struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: vec4<f32>;

var<private> global2: array<i32, 24> = array<i32, 24>(10650i, 739i, 12056i, -53643i, 0i, 31067i, 42736i, -29547i, -1i, 16541i, -32210i, 56931i, i32(-2147483648), 8410i, 1i, i32(-2147483648), -8442i, 24621i, -48440i, 5068i, 0i, -2971i, i32(-2147483648), 1836i);

var<private> global3: array<f32, 26> = array<f32, 26>(645f, 370f, -508f, 130f, -724f, -1000f, -296f, -1333f, -582f, -1623f, 493f, -1659f, 732f, -944f, 1598f, -1026f, -223f, 129f, 1337f, -260f, -1388f, 805f, -1586f, 597f, 814f, 224f);

var<private> global4: array<Struct_3, 1>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1() -> Struct_3 {
    let var_0 = vec2<u32>(u_input.a, abs(62445u));
    global2 = array<i32, 24>();
    var var_1 = _wgslsmith_mod_vec4_u32(~(~firstTrailingBit(vec4<u32>(u_input.a, var_0.x, 1u, 4294967295u)) & (_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, u_input.a, u_input.a, u_input.a), vec4<u32>(var_0.x, u_input.a, var_0.x, u_input.a)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, var_0.x, 4294967295u, u_input.a), vec4<u32>(4294967295u, u_input.a, var_0.x, var_0.x), vec4<u32>(var_0.x, 4294967295u, u_input.a, u_input.a)) % vec4<u32>(32u)))), vec4<u32>(~_wgslsmith_mod_u32(_wgslsmith_add_u32(0u, u_input.a), u_input.a & 4294967295u), _wgslsmith_clamp_u32(20896u, abs(8216u << (var_0.x % 32u)), ~(~4294967295u)), 101552u, var_0.x));
    let var_2 = Struct_2(vec2<u32>(_wgslsmith_mod_u32(u_input.a, var_1.x & 26224u), _wgslsmith_mod_u32(var_0.x, 1u)), 4294967295u);
    let var_3 = global0.zz;
    return global4[_wgslsmith_index_u32(1u ^ _wgslsmith_mult_u32(select(~var_2.a.x, _wgslsmith_add_u32(0u, var_2.b), true) & ~(~68488u), ~0u), 1u)];
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_2) -> bool {
    var var_0 = _wgslsmith_sub_vec2_u32(~vec2<u32>(54959u, 32559u), ~vec2<u32>(arg_0, _wgslsmith_add_u32(0u, min(44861u, 1u))));
    let var_1 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-708f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))));
    var var_2 = _wgslsmith_sub_vec3_u32(~abs(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.b, arg_2.b, arg_0), vec3<u32>(12843u, arg_2.a.x, arg_2.a.x)), min(var_0.x, var_0.x), ~var_0.x)), ~vec3<u32>(0u, u_input.a, 1u));
    var var_3 = Struct_1(min(max(1534u, _wgslsmith_sub_u32(0u, u_input.a & 0u)), var_0.x), firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(-19836i, arg_1.x, u_input.b >> (arg_2.b % 32u)), min(vec3<i32>(32983i, 37711i, u_input.e), vec3<i32>(30991i, u_input.c, -46107i)) & ~arg_1)), vec4<f32>(_wgslsmith_f_op_f32(-global1.x), -591f, _wgslsmith_f_op_f32(trunc(var_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(55102u, 26u)]))))));
    global4 = array<Struct_3, 1>();
    return !(true | !any(!vec4<bool>(true, false, global0.x, false)));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: i32) -> vec3<u32> {
    var var_0 = u_input.a;
    var_0 = arg_0.x << (67130u % 32u);
    let var_1 = vec3<bool>(!global0.x, !(!(func_3(17230u, vec3<i32>(1i, u_input.e, -1i), Struct_2(arg_0.wy, u_input.a)) && global0.x)), true);
    global3 = array<f32, 26>();
    var var_2 = 51426i << (_wgslsmith_clamp_u32(~(~(~23203u)), _wgslsmith_mult_u32(arg_0.x, min(u_input.a, ~u_input.a)), _wgslsmith_mod_u32(1u, firstLeadingBit(arg_0.x)) << (u_input.a % 32u)) % 32u);
    return ~((_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 1u, u_input.a) << (arg_0.zyx % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(arg_0.zzy, arg_0.wyw, vec3<u32>(1u, arg_0.x, 4294967295u))) & ~vec3<u32>(35324u, 0u, 34484u)) ^ (~(arg_0.yyz >> (arg_0.xyx % vec3<u32>(32u))) >> (vec3<u32>(1u, arg_0.x, 0u) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    global2 = array<i32, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~0u, _wgslsmith_sub_u32(u_input.a, u_input.a), ~max(var_0, 4294967295u)), vec4<u32>(_wgslsmith_add_u32(1u & u_input.a, var_0), _wgslsmith_div_u32(firstTrailingBit(4294967295u), 20285u), select(var_0, ~max(var_0, u_input.a), global0.x), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, var_0, u_input.a), vec4<u32>(u_input.a, 1u, 75795u, 75202u)), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, var_0), vec2<u32>(1u, 0u)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, var_0), vec2<u32>(var_0, u_input.a))))), _wgslsmith_div_u32(~(~u_input.a) ^ 17629u, 1u), _wgslsmith_add_vec3_i32(abs(abs(-vec3<i32>(1i, -3849i, -51397i))), ~vec3<i32>(0i, 1i, global2[_wgslsmith_index_u32(u_input.a, 24u)]) << (func_2(select(vec4<u32>(0u, 28901u, 51982u, var_0), vec4<u32>(var_0, var_0, u_input.a, 1u), false), func_1(), ~(-2147483647i)) % vec3<u32>(32u))));
}

