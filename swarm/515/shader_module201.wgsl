struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 30> = array<vec3<u32>, 30>(vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(36870u, 32406u, 1u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(1u, 58562u, 74400u), vec3<u32>(10279u, 20501u, 4294967295u), vec3<u32>(1u, 32472u, 40160u), vec3<u32>(1u, 5815u, 32717u), vec3<u32>(6276u, 1u, 43387u), vec3<u32>(4294967295u, 4294967295u, 34175u), vec3<u32>(1u, 84035u, 1537u), vec3<u32>(0u, 23594u, 7089u), vec3<u32>(0u, 6147u, 1u), vec3<u32>(150024u, 85724u, 62734u), vec3<u32>(19279u, 1u, 0u), vec3<u32>(72558u, 72636u, 1u), vec3<u32>(68329u, 10579u, 41746u), vec3<u32>(53333u, 14764u, 44768u), vec3<u32>(53570u, 0u, 4294967295u), vec3<u32>(1u, 6746u, 4294967295u), vec3<u32>(25061u, 18112u, 1u), vec3<u32>(2784u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 0u, 22428u), vec3<u32>(7428u, 46321u, 89689u), vec3<u32>(15288u, 0u, 0u), vec3<u32>(0u, 1u, 9312u), vec3<u32>(4740u, 62901u, 56741u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(7626u, 4294967295u, 7545u), vec3<u32>(4294967295u, 0u, 26779u), vec3<u32>(24321u, 75413u, 41936u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    let var_0 = vec2<i32>(u_input.b, abs(u_input.b));
    let var_1 = -firstLeadingBit(~(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) & _wgslsmith_div_vec4_i32(vec4<i32>(-34230i, u_input.a.x, 2299i, u_input.a.x), vec4<i32>(u_input.a.x, -1i, u_input.b, u_input.b))));
    var var_2 = arg_3;
    let var_3 = Struct_2(_wgslsmith_f_op_f32(ceil(arg_3.a)));
    var var_4 = Struct_1(select(vec3<u32>(~u_input.c.x, 26039u, _wgslsmith_mod_u32(abs(arg_1.a.x), ~arg_1.a.x)), vec3<u32>(_wgslsmith_dot_vec2_u32(arg_1.b.xz | vec2<u32>(arg_2.a.x, u_input.c.x), ~u_input.c.yz), arg_1.a.x, 1u), true), vec3<u32>(u_input.c.x, reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.b.x, 36019u) << (vec2<u32>(arg_1.a.x, 73979u) % vec2<u32>(32u)), u_input.c.xy)), arg_2.a.x));
    return _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, _wgslsmith_sub_u32(_wgslsmith_add_u32(132665u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_4.b.x, 50345u, 1u), vec4<u32>(51290u, arg_2.a.x, 4294967295u, arg_1.b.x))), _wgslsmith_sub_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_4.a.x, u_input.c.x), u_input.c.xz))), arg_2.b.x, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(15913u, arg_2.a.x), 0u << (1u % 32u), 0u) | _wgslsmith_mult_u32(70770u, ~4294967295u)), vec4<u32>(_wgslsmith_add_u32(abs(var_4.a.x), 0u), ~abs(abs(15537u)), _wgslsmith_div_u32(_wgslsmith_add_u32(arg_1.b.x, ~4294967295u), ~max(arg_1.b.x, arg_1.a.x)), 15754u));
}

fn func_2() -> vec3<i32> {
    var var_0 = Struct_1(global0[_wgslsmith_index_u32(69597u, 30u)], vec3<u32>(func_3(Struct_2(_wgslsmith_f_op_f32(1486f - -290f)), Struct_1(vec3<u32>(u_input.c.x, 14024u, 4294967295u) | global0[_wgslsmith_index_u32(u_input.c.x, 30u)], global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, u_input.c.x), 30u)]), Struct_1(vec3<u32>(u_input.c.x, u_input.c.x, 1u), _wgslsmith_mult_vec3_u32(global0[_wgslsmith_index_u32(85045u, 30u)], vec3<u32>(u_input.c.x, 11250u, 4294967295u))), Struct_2(-558f)), abs(u_input.c.x | 6754u), ~0u));
    var_0 = Struct_1(vec3<u32>(countOneBits(0u) << (countOneBits(1u) % 32u), _wgslsmith_mod_u32(u_input.c.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(22784u, 4294967295u, var_0.b.x), vec3<u32>(14006u, 4294967295u, u_input.c.x)) % 32u), u_input.c.x), 4294967295u), vec3<u32>(_wgslsmith_div_u32(48343u, _wgslsmith_dot_vec2_u32(vec2<u32>(89913u, 4294967295u), u_input.c.zz) >> (1u % 32u)), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c.x, 36601u, var_0.b.x), _wgslsmith_div_vec3_u32(global0[_wgslsmith_index_u32(4294967295u, 30u)], u_input.c)), var_0.a.x & u_input.c.x), abs(max(var_0.a.x ^ u_input.c.x, u_input.c.x))));
    let var_1 = (any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true)), true)) && !all(vec4<bool>(true, true, true, false))) && true;
    let var_2 = var_0.b.x;
    global0 = array<vec3<u32>, 30>();
    return -(vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(-vec3<i32>(43609i, u_input.a.x, u_input.b), vec3<i32>(u_input.a.x, 10573i, 3757i) ^ vec3<i32>(u_input.a.x, 1i, u_input.a.x)));
}

fn func_1() -> Struct_2 {
    var var_0 = -func_2();
    var_0 = ~countOneBits(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 2147483647i, u_input.a.x, 0i), vec4<i32>(30912i, -10830i, -30633i, u_input.a.x)), 6350i, var_0.x));
    let var_1 = !(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, false, 0u <= u_input.c.x, select(false, true, true)), any(select(vec2<bool>(true, true), vec2<bool>(true, false), false))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 357f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, -413f), vec2<f32>(-992f, -690f))))))));
    let var_3 = _wgslsmith_clamp_vec2_i32(~vec2<i32>(2147483647i, ~0i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, var_0.x), vec2<i32>(1i, var_0.x))), var_0.yz, _wgslsmith_mult_vec2_i32(func_2().xy, u_input.a));
    return Struct_2(_wgslsmith_f_op_f32(round(var_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 30>();
    var var_0 = vec3<bool>(true, true, true);
    var var_1 = ~(~_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(30793u, u_input.c.x, u_input.c.x, 6031u), vec4<u32>(u_input.c.x, u_input.c.x, 2847u, 42194u)), ~vec4<u32>(0u, u_input.c.x, u_input.c.x, u_input.c.x)));
    let var_2 = var_0.x;
    let var_3 = func_1();
    var var_4 = Struct_2(var_3.a);
    var_1 = _wgslsmith_div_vec4_u32(vec4<u32>(~(~firstTrailingBit(u_input.c.x)), ~(~countOneBits(u_input.c.x)), firstLeadingBit(0u >> (var_1.x % 32u)), 4294967295u), vec4<u32>(u_input.c.x, u_input.c.x, ~firstLeadingBit(0u), reverseBits(~(48670u << (var_1.x % 32u)))));
    var_1 = vec4<u32>(_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(1u, 30u)], var_1.ywz), ~24307u, 148093u, ~(~_wgslsmith_div_u32(u_input.c.x, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1259f, _wgslsmith_f_op_f32(-860f + _wgslsmith_f_op_f32(-var_3.a))))), _wgslsmith_div_vec3_f32(vec3<f32>(var_3.a, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a) * var_3.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a, 410f, var_4.a) + vec3<f32>(905f, var_3.a, 329f))))));
}

