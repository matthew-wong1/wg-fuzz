struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: i32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_4,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(25434i, 40692i);

var<private> global1: u32 = 31552u;

var<private> global2: array<vec2<bool>, 28> = array<vec2<bool>, 28>(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: Struct_4) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.wz + vec2<f32>(-234f, arg_2.a)))) * arg_1.yy) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -194f) - _wgslsmith_f_op_f32(round(-142f))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(824f, arg_1.x) + arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-201f, 283f) + _wgslsmith_f_op_f32(abs(arg_2.a))) * _wgslsmith_f_op_f32(-arg_1.x))));
    let var_1 = vec2<i32>(u_input.c, -arg_2.c);
    let var_2 = -1i | arg_2.c;
    var var_3 = _wgslsmith_clamp_vec2_u32(~u_input.b, ~u_input.d.zz, abs(~u_input.d.zy));
    global2 = array<vec2<bool>, 28>();
    return arg_2.b & false;
}

fn func_2(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_2) -> vec4<f32> {
    var var_0 = Struct_3(arg_2);
    global0 = vec2<i32>(-u_input.a, select(firstTrailingBit(1i), u_input.c, true));
    let var_1 = select(global2[_wgslsmith_index_u32(u_input.d.x, 28u)], vec2<bool>(func_3(vec3<bool>(true, false, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-866f, arg_2.a.x, var_0.a.a.x, var_0.a.a.x)), Struct_4(arg_2.a.x, false, 13917i)) && (true && (-2147483647i != u_input.c)), any(vec2<bool>(true, true))), vec2<bool>(any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false))) & true, all(vec3<bool>(any(vec3<bool>(false, false, true)), all(vec4<bool>(true, true, true, false)), false))));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.a.a.x, var_0.a.a.x), -421f), var_0.a.a.x, false)))));
    global0 = arg_0;
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.x * _wgslsmith_f_op_f32(f32(-1f) * -439f)) + _wgslsmith_f_op_f32(floor(1900f))), var_0.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.x) * arg_2.a.x), _wgslsmith_div_f32(228f, _wgslsmith_f_op_f32(f32(-1f) * -440f)));
}

fn func_1() -> Struct_4 {
    var var_0 = Struct_1(u_input.d.yz & ~(~(~vec2<u32>(9603u, u_input.b.x))));
    let var_1 = _wgslsmith_f_op_f32(540f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -132f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2714f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1152f, 140f, false))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(vec2<i32>(_wgslsmith_sub_i32(2147483647i, global0.x), -u_input.a), ~u_input.b.x, Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, -224f, var_1, var_1) + vec4<f32>(var_1, -1340f, 221f, var_1)))))));
    var var_3 = Struct_1(var_0.a);
    var_0 = Struct_1(firstTrailingBit(min(_wgslsmith_mod_vec2_u32(var_3.a, _wgslsmith_div_vec2_u32(var_3.a, u_input.b)), countOneBits(~vec2<u32>(0u, var_0.a.x)))));
    return Struct_4(_wgslsmith_div_f32(var_2.x, var_1), true, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global0.x, u_input.c, global0.x) | vec3<i32>(u_input.c, -46481i, global0.x), vec3<i32>(14799i, 0i, 0i)), vec3<i32>(-2147483647i, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, global0.x, -2147483647i, global0.x), vec4<i32>(global0.x, u_input.a, u_input.a, -13143i)))), 0i));
}

fn func_4(arg_0: Struct_5, arg_1: vec3<u32>) -> vec4<bool> {
    global0 = vec2<i32>(_wgslsmith_dot_vec4_i32(select(-vec4<i32>(arg_0.b.c, -38926i, u_input.a, 43897i), ~max(vec4<i32>(-46385i, -2147483647i, global0.x, u_input.a), vec4<i32>(u_input.c, 2475i, -1i, 2147483647i)), arg_0.b.b), vec4<i32>(u_input.a << (arg_0.d % 32u), -2147483647i, -27236i, 1i >> (arg_1.x % 32u))), ~global0.x);
    var var_0 = firstLeadingBit(firstLeadingBit(vec3<i32>(_wgslsmith_sub_i32(2147483647i, 1707i), u_input.a, -35110i) << (vec3<u32>(u_input.b.x, _wgslsmith_mod_u32(u_input.b.x, arg_0.d), 1u) % vec3<u32>(32u))));
    var var_1 = select(min(~vec4<u32>(1u, 38783u, arg_0.d, arg_1.x), ~(~vec4<u32>(u_input.d.x, 40266u, 0u, 4738u))) ^ vec4<u32>(min(4294967295u, u_input.d.x), abs(_wgslsmith_dot_vec2_u32(u_input.d.xy, arg_1.zz)), arg_1.x, ~_wgslsmith_clamp_u32(83796u, 1u, u_input.d.x)), vec4<u32>(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(17936u, arg_1.x, 24288u, arg_0.d), vec4<u32>(u_input.b.x, arg_0.d, 4294967295u, u_input.d.x))) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, u_input.d.x, u_input.b.x, arg_1.x), vec4<u32>(0u, 4294967295u, arg_0.d, 48390u)) % 32u), 4294967295u, _wgslsmith_dot_vec3_u32(~min(arg_1, vec3<u32>(4294967295u, arg_1.x, 27697u)), ~firstTrailingBit(u_input.d)), ~abs(18525u >> (arg_0.d % 32u))), false);
    let var_2 = func_1();
    let var_3 = all(arg_0.a.yx);
    return select(arg_0.a, vec4<bool>(var_3, u_input.c != _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, -5341i, 61233i, arg_0.c), ~vec4<i32>(u_input.a, -2147483647i, 38782i, -14307i)), var_2.b, select(false && func_1().b, true, false)), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = _wgslsmith_mod_u32(u_input.d.x, countOneBits(u_input.d.x));
    let var_2 = vec2<bool>(any(vec2<bool>(true, true)), 0i == _wgslsmith_add_i32(~_wgslsmith_add_i32(17604i, -15170i), firstLeadingBit(~global0.x)));
    var var_3 = true;
    var_3 = all(select(select(select(!vec4<bool>(var_2.x, false, false, var_2.x), vec4<bool>(var_2.x, false, false, var_2.x), var_2.x), select(select(vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<bool>(true, var_2.x, false, true), vec4<bool>(var_2.x, var_2.x, true, var_2.x)), !vec4<bool>(var_2.x, true, false, false), true), !vec4<bool>(var_2.x, var_2.x, var_2.x, true)), func_4(Struct_5(select(vec4<bool>(var_2.x, var_2.x, true, var_2.x), vec4<bool>(var_2.x, false, var_2.x, true), true), func_1(), ~2147483647i, _wgslsmith_mult_u32(u_input.d.x, var_1)), select(vec3<u32>(u_input.b.x, 0u, 4294967295u), u_input.d, var_2.x || true)), true));
    let var_4 = u_input.c << (~_wgslsmith_clamp_u32(0u >> (~4294967295u % 32u), countOneBits(~1u), ~var_1) % 32u);
    let var_5 = var_2.x;
    let var_6 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -677f) - -667f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-359f, -2291f))))), var_2.x, i32(-1i) * -24592i);
    let var_7 = firstLeadingBit(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(reverseBits(~vec4<u32>(2825u, var_1, var_1, 0u)), ~(~vec4<u32>(48892u, 1u, u_input.d.x, var_1))), ~(~(~vec4<u32>(var_1, 4294967295u, 24960u, u_input.d.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(1320f);
}

