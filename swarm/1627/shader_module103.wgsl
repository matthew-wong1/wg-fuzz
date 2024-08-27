struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec4<bool>,
    d: vec4<i32>,
    e: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: f32,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
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

var<private> global0: array<vec4<f32>, 16> = array<vec4<f32>, 16>(vec4<f32>(140f, 2392f, -995f, -606f), vec4<f32>(-801f, 1889f, -551f, 350f), vec4<f32>(738f, -318f, -1000f, -1737f), vec4<f32>(948f, -2162f, -204f, -731f), vec4<f32>(-787f, 1138f, -130f, -161f), vec4<f32>(1363f, -1059f, -1323f, -526f), vec4<f32>(110f, 162f, 969f, 806f), vec4<f32>(1479f, 663f, 2180f, -516f), vec4<f32>(-1227f, 1000f, 1000f, -1415f), vec4<f32>(178f, 1125f, -299f, -409f), vec4<f32>(301f, -2043f, 1698f, -506f), vec4<f32>(388f, -230f, -1077f, 1000f), vec4<f32>(445f, 1018f, 786f, 1158f), vec4<f32>(-164f, 1303f, -143f, 154f), vec4<f32>(762f, -1634f, -637f, 366f), vec4<f32>(-817f, 407f, -472f, 430f));

var<private> global1: i32;

var<private> global2: array<Struct_3, 30>;

var<private> global3: array<Struct_3, 20>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3) -> u32 {
    global1 = arg_1.a.a.x | ~(~arg_1.a.a.x | _wgslsmith_add_i32(22251i ^ arg_0.e, arg_1.a.a.x | u_input.a));
    let var_0 = _wgslsmith_mod_i32(19340i ^ -(~arg_1.a.b.x | u_input.a), _wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(u_input.a, 0i), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(arg_1.a.b.wwz, arg_1.a.b.ywy), ~arg_0.e)), arg_0.e));
    let var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.a, 45651i, 2147483647i, 0i), vec4<i32>(_wgslsmith_mod_i32(arg_1.a.b.x, 2147483647i), _wgslsmith_div_i32(u_input.a, -2147483647i), arg_1.a.b.x, 1i)) >> (reverseBits(~firstLeadingBit(vec4<u32>(4294967295u, 24981u, arg_1.c.x, 68539u))) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-41625i, u_input.a >> (32116u % 32u), ~var_0), abs(var_0), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(arg_0.d.x, -22471i, var_0), arg_1.a.a.x)), 2147483647i & arg_1.a.a.x, max(u_input.a, 9026i), arg_0.e));
    var var_2 = abs(_wgslsmith_mod_u32(~_wgslsmith_mod_u32(0u, ~arg_1.c.x), firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_clamp_u32(arg_0.a, 19042u, 4294967295u), _wgslsmith_mult_u32(35996u, 78935u)))));
    var var_3 = !select(true, !(abs(48664u) <= u_input.b), arg_0.b.x);
    return _wgslsmith_sub_u32(arg_1.c.x, ~13688u) >> (u_input.b % 32u);
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = vec3<i32>(~(21165i << (firstTrailingBit(func_3(Struct_1(4294967295u, vec2<bool>(true, true), vec4<bool>(true, true, true, true), vec4<i32>(-2147483647i, u_input.a, -64618i, 21223i), 3374i), Struct_3(Struct_2(vec4<i32>(2147483647i, 27898i, 23568i, 0i), vec4<i32>(u_input.a, -1i, u_input.a, u_input.a), 833f, false), vec2<f32>(1131f, 869f), vec3<u32>(u_input.c.x, 8964u, u_input.c.x), vec4<bool>(false, true, false, true)))) % 32u)), -max(_wgslsmith_dot_vec3_i32(vec3<i32>(-68885i, 1i, u_input.a), vec3<i32>(32506i, 2435i, u_input.a)), u_input.a) & u_input.a, _wgslsmith_mod_i32(~(i32(-1i) * -48914i), _wgslsmith_mod_i32(countOneBits(38373i), u_input.a)));
    global2 = array<Struct_3, 30>();
    global3 = array<Struct_3, 20>();
    var var_1 = true;
    var var_2 = Struct_1(~arg_0, vec2<bool>(true, any(vec4<bool>(true, true, true, true))), select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false)), true), vec4<bool>(true, true, false, true), true), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), (~arg_0 >> (arg_0 % 32u)) == u_input.b), ~vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, -30454i, var_0.x), vec3<i32>(0i, u_input.a, 33767i)), vec3<i32>(20214i, 2147483647i, var_0.x) >> (vec3<u32>(27915u, arg_0, 4294967295u) % vec3<u32>(32u))), u_input.a, ~1i, 1i), u_input.a);
    return ~(~_wgslsmith_sub_u32(arg_0 ^ func_3(Struct_1(1u, var_2.c.zw, var_2.c, var_2.d, var_2.e), Struct_3(Struct_2(vec4<i32>(var_0.x, var_0.x, var_0.x, var_2.d.x), vec4<i32>(-1i, -38417i, var_2.e, u_input.a), 2186f, true), vec2<f32>(743f, 755f), vec3<u32>(var_2.a, arg_0, arg_0), var_2.c)), 1271u));
}

fn func_1(arg_0: Struct_3) -> vec4<bool> {
    global1 = arg_0.a.a.x;
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.c + _wgslsmith_f_op_f32(step(arg_0.a.c, arg_0.a.c))) + _wgslsmith_div_f32(-294f, _wgslsmith_f_op_f32(-arg_0.a.c))), 813f, 1f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2470f, 698f, arg_0.b.x)) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1110f, -1666f, arg_0.a.c))))))));
    var var_1 = vec2<u32>(u_input.c.x ^ _wgslsmith_div_u32(~select(4294967295u, u_input.c.x, true), arg_0.c.x), func_2(u_input.c.x));
    global0 = array<vec4<f32>, 16>();
    var var_2 = Struct_1(firstLeadingBit(u_input.b), arg_0.d.xx, !(!arg_0.d), -vec4<i32>(abs(_wgslsmith_clamp_i32(-22514i, 2147483647i, arg_0.a.b.x)), -45313i, u_input.a, -2147483647i), -1i);
    return vec4<bool>(false, var_2.c.x, !(arg_0.a.b.x <= 2930i), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~u_input.b ^ _wgslsmith_mult_u32((u_input.b << (6472u % 32u)) & u_input.c.x, 1u), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !func_1(global3[_wgslsmith_index_u32(select(~4294967295u, ~u_input.b, false), 20u)]), ~vec4<i32>(-31970i, -1i, u_input.a, abs(u_input.a)), ~u_input.a);
    var var_1 = Struct_1(16326u, vec2<bool>(!all(vec4<bool>(true, true, false, var_0.c.x)), false), var_0.c, abs(var_0.d ^ _wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.a, 2147483647i, u_input.a, 3837i), select(vec4<i32>(-2147483647i, var_0.e, u_input.a, 16273i), var_0.d, false), vec4<i32>(u_input.a, 17165i, u_input.a, 70933i))), ~(var_0.d.x >> (_wgslsmith_sub_u32(u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 130391u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, u_input.b, var_0.a, 11944u))) % 32u)));
    global0 = array<vec4<f32>, 16>();
    var var_2 = global0[_wgslsmith_index_u32(~var_0.a, 16u)];
    var var_3 = ~1u;
    var var_4 = Struct_2(~vec4<i32>(var_0.e, var_0.d.x, ~(var_0.e & 0i), var_0.e), var_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2363f)) + var_2.x), any(select(var_0.b, func_1(Struct_3(Struct_2(vec4<i32>(-1i, -1i, u_input.a, var_0.e), vec4<i32>(var_1.d.x, var_1.d.x, var_1.e, u_input.a), -2271f, false), var_2.yw, vec3<u32>(var_1.a, 40930u, 27801u), var_1.c)).zw, true)));
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.c.x, abs(var_0.a), var_1.c.x));
}

