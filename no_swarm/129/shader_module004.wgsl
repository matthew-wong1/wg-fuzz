struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: bool,
    d: vec4<f32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 1>;

var<private> global1: array<Struct_1, 13>;

var<private> global2: array<f32, 31>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> vec3<u32> {
    global2 = array<f32, 31>();
    let var_0 = Struct_1(_wgslsmith_div_vec3_u32(~(vec3<u32>(48845u, arg_2.a.x, 1u) << ((arg_0.b.ywz | arg_0.a) % vec3<u32>(32u))), ~vec3<u32>(1u, 0u, arg_0.b.x) >> (arg_0.a % vec3<u32>(32u))), _wgslsmith_add_vec4_u32(arg_0.b, ~_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(arg_0.b, arg_2.b), arg_2.b ^ vec4<u32>(4294967295u, arg_2.b.x, 1u, 15908u))), false, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.d.x, arg_0.d.x, arg_0.d.x, global2[_wgslsmith_index_u32(~arg_2.b.x, 31u)])) + vec4<f32>(-382f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1133f)) + 612f), -414f, _wgslsmith_f_op_f32(f32(-1f) * -767f))), arg_0.e);
    global2 = array<f32, 31>();
    return max(arg_2.b.yzx, vec3<u32>(var_0.b.x, 4294967295u, 1u)) & _wgslsmith_clamp_vec3_u32(abs(arg_0.a) | vec3<u32>(~42514u, 35004u, _wgslsmith_mod_u32(10678u, arg_0.a.x)), ~(~(vec3<u32>(1u, var_0.a.x, 1u) ^ arg_0.b.zzx)), ~vec3<u32>(4294967295u, max(9292u, 15876u), 54904u));
}

fn func_2() -> f32 {
    global2 = array<f32, 31>();
    global0 = array<vec4<u32>, 1>();
    global2 = array<f32, 31>();
    let var_0 = Struct_1(~func_3(Struct_1(max(vec3<u32>(84397u, 4294967295u, 4294967295u), vec3<u32>(16507u, u_input.b, 1u)), ~vec4<u32>(u_input.b, u_input.b, 1u, u_input.c.x), true, _wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(36219u, 31u)], 665f, global2[_wgslsmith_index_u32(u_input.b, 31u)], 1268f), vec4<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 31u)], global2[_wgslsmith_index_u32(50466u, 31u)], global2[_wgslsmith_index_u32(u_input.c.x, 31u)], global2[_wgslsmith_index_u32(u_input.b, 31u)])), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true)), -2147483647i, Struct_1(vec3<u32>(u_input.c.x, 47291u, 9871u), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, 0u), vec4<u32>(1u, 4294967295u, u_input.b, u_input.b)), 51371u < u_input.c.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(-542f, 754f, global2[_wgslsmith_index_u32(4294967295u, 31u)], global2[_wgslsmith_index_u32(16252u, 31u)]) - vec4<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 31u)], -193f, global2[_wgslsmith_index_u32(0u, 31u)], global2[_wgslsmith_index_u32(u_input.c.x, 31u)])), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), false))), vec4<u32>(_wgslsmith_add_u32(~u_input.b, func_3(global1[_wgslsmith_index_u32(u_input.c.x, 13u)], u_input.a, global1[_wgslsmith_index_u32(u_input.c.x, 13u)]).x), 1u, 1u, abs(~24484u)) << (min(vec4<u32>(_wgslsmith_sub_u32(1u, u_input.b), u_input.b, u_input.c.x, u_input.c.x), max(_wgslsmith_mult_vec4_u32(global0[_wgslsmith_index_u32(u_input.b, 1u)], vec4<u32>(u_input.c.x, u_input.c.x, 0u, 1u)), _wgslsmith_clamp_vec4_u32(global0[_wgslsmith_index_u32(u_input.c.x, 1u)], vec4<u32>(1u, 4294967295u, u_input.b, u_input.c.x), global0[_wgslsmith_index_u32(u_input.b, 1u)]))) % vec4<u32>(32u)), any(select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 31u)] <= global2[_wgslsmith_index_u32(u_input.b, 31u)], false, true), vec3<bool>(true, true, all(vec4<bool>(true, true, false, false))), vec3<bool>(false, any(vec2<bool>(true, true)), true))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1134f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(u_input.c.x, 31u)], global2[_wgslsmith_index_u32(u_input.b, 31u)], false)) * _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(1u, 31u)], global2[_wgslsmith_index_u32(1u, 31u)]))), _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(4294967295u, 31u)])), _wgslsmith_div_f32(660f, global2[_wgslsmith_index_u32(0u, 31u)])))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), -1000f > global2[_wgslsmith_index_u32(4294967295u, 31u)]), select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true), true)), !select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false))), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec4<bool>(true, true, true, true))))));
    var var_1 = Struct_1(~vec3<u32>(var_0.b.x, u_input.b & u_input.b, abs(~1u)), select(firstTrailingBit(vec4<u32>(func_3(Struct_1(vec3<u32>(55515u, var_0.b.x, 40472u), vec4<u32>(u_input.b, var_0.a.x, 1u, 31855u), false, vec4<f32>(-1777f, var_0.d.x, 706f, -1000f), var_0.e), u_input.a, Struct_1(vec3<u32>(0u, 0u, 7124u), vec4<u32>(var_0.b.x, 50950u, 33156u, 9091u), false, vec4<f32>(1608f, -967f, var_0.d.x, -162f), var_0.e)).x, u_input.b >> (u_input.c.x % 32u), u_input.c.x, u_input.c.x)), ~global0[_wgslsmith_index_u32(~3210u, 1u)], ~_wgslsmith_div_u32(0u, var_0.b.x) > ~(~61597u)), true, vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(209f + 690f))))), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.c.x, u_input.b), 31u)] + var_0.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1465f)) + -833f), var_0.d.x), vec4<bool>(firstTrailingBit(-11602i) != (0i ^ u_input.a), var_0.c, (_wgslsmith_f_op_f32(select(var_0.d.x, var_0.d.x, var_0.c)) >= _wgslsmith_f_op_f32(-1000f + var_0.d.x)) && var_0.e.x, var_0.c));
    return -481f;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<f32>) -> StorageBuffer {
    var var_0 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b, 31u)]) * arg_1.x) - 1000f)), vec4<u32>(~select(40053u, 1341u, true), u_input.c.x, 4294967295u, min(_wgslsmith_sub_u32(firstTrailingBit(u_input.c.x), u_input.b << (4294967295u % 32u)), 0u)));
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.x, 0u), vec2<u32>(abs(_wgslsmith_dot_vec2_u32(u_input.c, var_0.c.xy)), _wgslsmith_mod_u32(reverseBits(u_input.b), u_input.c.x))), ~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~var_0.c.zwz, var_0.c.wwz), ~var_0.c.zxw)), 13u)];
    return StorageBuffer(4294967295u & _wgslsmith_clamp_u32(max(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.x, var_1.b.x), var_0.c.zz), select(0u, var_0.c.x, var_1.e.x)), ~var_0.c.x, ~(var_1.a.x >> (var_0.c.x % 32u))), arg_0.x, 1368f, -_wgslsmith_add_i32(~_wgslsmith_div_i32(arg_0.x, 17870i), arg_0.x), u_input.c.x ^ 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 13>();
    var var_0 = _wgslsmith_div_u32(_wgslsmith_add_u32(select(~(~u_input.b), 63917u, (u_input.a & 1i) >= u_input.a), _wgslsmith_add_u32(firstLeadingBit(18193u), firstTrailingBit(u_input.b))), ~(u_input.c.x ^ 63114u));
    var var_1 = Struct_2(false);
    global1 = array<Struct_1, 13>();
    var var_2 = 1u;
    let x = u_input.a;
    s_output = func_1(vec4<i32>(-(1i >> ((51382u << (u_input.b % 32u)) % 32u)), 1i, u_input.a, -1i), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-434f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1188f - global2[_wgslsmith_index_u32(1u, 31u)]), global2[_wgslsmith_index_u32(~17530u, 31u)]))))));
}

