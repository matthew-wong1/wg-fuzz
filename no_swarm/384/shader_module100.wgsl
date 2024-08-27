struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

var<private> global1: array<vec4<f32>, 13> = array<vec4<f32>, 13>(vec4<f32>(812f, 293f, 1877f, -397f), vec4<f32>(1000f, 898f, 673f, 517f), vec4<f32>(1970f, -1584f, -169f, -364f), vec4<f32>(746f, 430f, -2032f, -142f), vec4<f32>(1000f, 696f, 1743f, 778f), vec4<f32>(-403f, 1614f, 179f, -1270f), vec4<f32>(-1574f, -1710f, -861f, 201f), vec4<f32>(-733f, -689f, 1198f, 777f), vec4<f32>(1008f, -220f, -224f, 137f), vec4<f32>(-240f, 955f, -603f, 1000f), vec4<f32>(-732f, -1000f, -925f, 1920f), vec4<f32>(-734f, -196f, -208f, 215f), vec4<f32>(303f, 1484f, -990f, -495f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> bool {
    global1 = array<vec4<f32>, 13>();
    let var_0 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b, u_input.b, u_input.b, 0u)), vec4<u32>(u_input.b, u_input.b, 3619u, 177u) << (vec4<u32>(u_input.b, 68243u, u_input.b, 51329u) % vec4<u32>(32u))), ~(26968u | u_input.b)), vec2<u32>(~u_input.b, _wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.b, u_input.b), countOneBits(u_input.b))));
    global1 = array<vec4<f32>, 13>();
    return arg_0.b;
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> bool {
    global0 = array<Struct_1, 28>();
    global1 = array<vec4<f32>, 13>();
    global1 = array<vec4<f32>, 13>();
    var var_0 = global0[_wgslsmith_index_u32(u_input.b, 28u)];
    var var_1 = (firstLeadingBit(abs(39862u)) & u_input.b) << (arg_1 % 32u);
    return select(true, -firstLeadingBit(var_0.c.x) >= _wgslsmith_add_i32(1i, ~18294i), !func_3(Struct_1(var_0.a, var_0.b, vec3<i32>(u_input.c, 2147483647i, -1133i)), global0[_wgslsmith_index_u32(arg_1, 28u)], _wgslsmith_div_i32(u_input.a.x, arg_0.c.x))) || var_0.b;
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = vec4<bool>(func_2(global0[_wgslsmith_index_u32(~(~(~65469u)), 28u)], _wgslsmith_sub_u32(1u, _wgslsmith_mult_u32(u_input.b, ~u_input.b))), arg_1.b, !any(vec2<bool>(false, !arg_1.b)), arg_1.b);
    let var_1 = arg_1;
    global1 = array<vec4<f32>, 13>();
    global1 = array<vec4<f32>, 13>();
    var var_2 = select(~vec2<u32>(u_input.b, 56342u), firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(115696u, 44484u), vec2<u32>(48323u, 3756u) & vec2<u32>(0u, u_input.b))), var_0.xz) << (~firstTrailingBit(vec2<u32>(~29580u, ~15153u)) % vec2<u32>(32u));
    return Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.a.x, var_1.a.x) - _wgslsmith_f_op_f32(sign(arg_1.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) + arg_1.a.x)), 915f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)) + -637f)), !any(vec4<bool>(!var_0.x, false, any(vec4<bool>(false, var_1.b, false, var_0.x)), var_1.a.x == arg_1.a.x)), ~vec3<i32>(47384i ^ arg_1.c.x, -2147483647i, _wgslsmith_mult_i32(u_input.a.x, -12865i)) | var_1.c);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: f32) -> vec3<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1011f, arg_1.a.x, -1595f)))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, -1182f, -117f)), vec3<f32>(_wgslsmith_f_op_f32(step(-2312f, 696f)), -194f, arg_2)))), !(!(~4294967295u > min(28822u, u_input.b))), arg_1.c);
    var var_1 = global1[_wgslsmith_index_u32(~u_input.b, 13u)];
    var_1 = _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(52178u, 13u)]);
    let var_2 = _wgslsmith_f_op_f32(floor(1189f));
    var var_3 = 53831u;
    return vec3<u32>(_wgslsmith_dot_vec4_u32(reverseBits(firstLeadingBit(vec4<u32>(1u, u_input.b, 1u, u_input.b))), select(select(vec4<u32>(u_input.b, u_input.b, u_input.b, 39551u) | vec4<u32>(4579u, u_input.b, u_input.b, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.b, 18043u, 0u), vec4<u32>(16710u, 0u, u_input.b, u_input.b)), arg_1.b), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.b, 65416u, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u)), !select(vec4<bool>(true, var_0.b, false, true), vec4<bool>(arg_1.b, var_0.b, arg_1.b, arg_1.b), true))), u_input.b, ~u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_i32(u_input.a.x, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(~u_input.a.x, _wgslsmith_clamp_i32(0i, reverseBits(1i), ~u_input.c)), -_wgslsmith_dot_vec2_i32(-u_input.a, u_input.a), u_input.a.x));
    var var_1 = max(_wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u & u_input.b, ~0u, ~u_input.b), func_4((vec2<i32>(u_input.c, u_input.c) << (vec2<u32>(u_input.b, 51659u) % vec2<u32>(32u))) ^ u_input.a, func_1(-46129i, global0[_wgslsmith_index_u32(~u_input.b, 28u)]), _wgslsmith_f_op_f32(-245f - 898f))), vec3<u32>(u_input.b, ~(~u_input.b), 4294967295u));
    global0 = array<Struct_1, 28>();
    let var_2 = _wgslsmith_mult_i32(u_input.c, u_input.c);
    var var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1710f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -552f)))), -945f), true, vec3<i32>(var_2, 2147483647i, var_2));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_1.x, var_1.x, var_1.x), vec4<u32>(63833u, 1u, u_input.b, var_1.x))), 1u), max(vec4<i32>(var_3.c.x, 0i, 28714i, 1i) ^ (_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 0i, var_2, var_2), vec4<i32>(1i, var_2, u_input.a.x, -12214i)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 8546u, u_input.b, u_input.b), vec4<u32>(u_input.b, 1u, u_input.b, u_input.b)) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_sub_i32(26741i, var_3.c.x << (u_input.b % 32u)), _wgslsmith_add_i32(var_3.c.x, -1i >> (1u % 32u)), i32(-1i) * -u_input.c, _wgslsmith_add_i32(_wgslsmith_mult_i32(var_2, -2147483647i), _wgslsmith_dot_vec3_i32(var_3.c, vec3<i32>(var_2, u_input.a.x, var_2))))), var_3.a.yz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-477f)) * 1000f));
}

