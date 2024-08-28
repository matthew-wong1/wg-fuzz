struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
    d: vec2<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(Struct_1(-733f, true, 0u, vec2<u32>(20457u, 105843u), true), vec3<i32>(0i, -11552i, -32413i), vec3<u32>(13557u, 0u, 4294967295u), vec4<bool>(true, true, true, true)), Struct_2(Struct_1(1461f, false, 22498u, vec2<u32>(36511u, 45697u), true), vec3<i32>(i32(-2147483648), -29124i, -1i), vec3<u32>(2191u, 4294967295u, 4294967295u), vec4<bool>(false, false, true, true)), Struct_2(Struct_1(755f, true, 0u, vec2<u32>(4294967295u, 0u), true), vec3<i32>(0i, -4181i, 0i), vec3<u32>(0u, 4294967295u, 57658u), vec4<bool>(true, true, true, false)), Struct_2(Struct_1(-1292f, true, 1u, vec2<u32>(20357u, 0u), false), vec3<i32>(i32(-2147483648), 48637i, -7538i), vec3<u32>(68111u, 0u, 4294967295u), vec4<bool>(false, true, true, false)), Struct_2(Struct_1(-162f, true, 1453u, vec2<u32>(0u, 0u), false), vec3<i32>(-24242i, 0i, i32(-2147483648)), vec3<u32>(0u, 4294967295u, 36487u), vec4<bool>(false, false, true, true)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec2<u32> {
    global0 = array<Struct_2, 5>();
    global0 = array<Struct_2, 5>();
    global0 = array<Struct_2, 5>();
    global0 = array<Struct_2, 5>();
    global0 = array<Struct_2, 5>();
    return vec2<u32>(u_input.a, 3065u);
}

fn func_2(arg_0: i32, arg_1: vec4<bool>) -> Struct_3 {
    var var_0 = firstTrailingBit(vec2<u32>(103321u, u_input.a) ^ abs(func_3()));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-582f - _wgslsmith_f_op_f32(trunc(1373f))))), ~(~reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(var_0.x, u_input.a)))), -_wgslsmith_clamp_vec2_i32(reverseBits(vec2<i32>(arg_0, u_input.b)), vec2<i32>(-35052i, firstLeadingBit(u_input.b)), _wgslsmith_div_vec2_i32(vec2<i32>(16132i, -15623i) << (vec2<u32>(u_input.a, 20572u) % vec2<u32>(32u)), vec2<i32>(25893i, -2147483647i))));
    var var_2 = ~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, min(~53949u, ~1u), _wgslsmith_add_u32(16515u << (1u % 32u), _wgslsmith_add_u32(13217u, 139510u))), firstLeadingBit(firstTrailingBit(vec3<u32>(4294967295u, 42598u, var_0.x) >> (vec3<u32>(var_0.x, 16224u, var_1.b.x) % vec3<u32>(32u)))), _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(select(vec3<u32>(21694u, var_0.x, u_input.a), vec3<u32>(25161u, 4294967295u, 1u), true), vec3<u32>(u_input.a, u_input.a, var_1.b.x)), vec3<u32>(~u_input.a, ~72557u, u_input.a)));
    var var_3 = vec3<u32>(27854u, var_1.b.x, _wgslsmith_sub_u32(11111u, 0u));
    let var_4 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-613f)) * -532f), -712f), true, _wgslsmith_dot_vec3_u32(vec3<u32>(~4294967295u, var_0.x, _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.a, 52704u), var_2.x)), reverseBits(select(vec3<u32>(var_3.x, u_input.a, 1u), vec3<u32>(var_0.x, u_input.a, 0u), false)) | vec3<u32>(u_input.a << (39584u % 32u), var_1.b.x, ~var_0.x)), ~var_1.b, true && !(_wgslsmith_f_op_f32(1050f * var_1.a) <= 204f));
    return Struct_3(-1293f, vec2<u32>(1758u, 0u), ~var_1.c);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_3, arg_3: i32) -> bool {
    global0 = array<Struct_2, 5>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) * _wgslsmith_f_op_f32(floor(-605f)))) - arg_1.a), 1f);
    global0 = array<Struct_2, 5>();
    let var_1 = countOneBits(~arg_1.d.x);
    var var_2 = global0[_wgslsmith_index_u32(arg_2.b.x, 5u)];
    return _wgslsmith_add_u32(arg_2.b.x & _wgslsmith_div_u32(var_1, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, var_2.a.d.x), var_2.c)), ~countOneBits(~var_1)) == u_input.a;
}

fn func_1(arg_0: u32) -> i32 {
    var var_0 = abs(0u);
    let var_1 = global0[_wgslsmith_index_u32(~(~(1u | countOneBits(arg_0))), 5u)];
    let var_2 = ~firstLeadingBit(var_1.b.xy);
    var_0 = ~(~var_1.a.c);
    let var_3 = Struct_1(976f, func_4(true, Struct_1(730f, !var_1.a.e, var_1.c.x, vec2<u32>(var_1.c.x, u_input.a), var_1.d.x), func_2(u_input.b, select(var_1.d, vec4<bool>(true, true, true, var_1.a.e), var_1.a.b)), _wgslsmith_sub_i32(firstTrailingBit(var_2.x), 22381i)) == (var_1.d.x | true), _wgslsmith_sub_u32(_wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(var_1.a.d, vec2<u32>(92024u, 29770u)), var_1.a.c), var_1.a.d.x), abs(reverseBits(min(abs(vec2<u32>(4294967295u, 74258u)), select(var_1.c.yx, var_1.a.d, var_1.d.ww)))), true);
    return i32(-1i) * -u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(u_input.b, ~countOneBits(-58374i), -abs(~u_input.b | func_1(u_input.a)));
    var_0 = vec3<i32>(var_0.x, u_input.b, -2147483647i);
    var var_1 = ~vec3<u32>(abs(~1u), u_input.a, 16113u) & _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(~0u, ~1u), ~_wgslsmith_add_u32(30350u, 40632u), countOneBits(~17583u)), ~vec3<u32>(4294967295u, 20814u, 23546u ^ u_input.a));
    var var_2 = _wgslsmith_clamp_u32(min(1u, 0u), 1u, ~_wgslsmith_clamp_u32(u_input.a, ~11659u, _wgslsmith_add_u32(1u, 1u))) >> (_wgslsmith_dot_vec4_u32(~min(vec4<u32>(var_1.x, 4294967295u, 4294967295u, var_1.x), vec4<u32>(u_input.a, 25722u, 3417u, 3737u)), _wgslsmith_mod_vec4_u32((vec4<u32>(4294967295u, 4294967295u, 1u, 58488u) & vec4<u32>(u_input.a, 1u, var_1.x, 1u)) & _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 40745u, 4294967295u, 83021u), vec4<u32>(var_1.x, 1u, 19707u, 31487u)), ~vec4<u32>(4294967295u, 0u, 20663u, var_1.x))) % 32u);
    var_2 = var_1.x;
    var var_3 = 1219f;
    let var_4 = vec4<u32>(abs(~83696u & func_3().x), _wgslsmith_div_u32(_wgslsmith_div_u32(func_3().x, var_1.x), u_input.a), 38657u, 4294967295u);
    let var_5 = select(vec3<bool>(true, true, !(min(var_0.x, 9562i) > var_0.x)), select(vec3<bool>(true, any(vec2<bool>(true, true)), !any(vec4<bool>(false, true, false, true))), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), any(vec4<bool>(true, true, true, true))), all(vec3<bool>(true, true, false))), !vec3<bool>(any(vec4<bool>(false, false, false, true)), any(vec4<bool>(true, true, true, false)), false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(vec4<i32>(0i, var_0.x, var_0.x, -1i), vec4<i32>(2147483647i, u_input.b, 0i, 12319i)), countOneBits(-countOneBits(vec4<i32>(-16646i, u_input.b, var_0.x, -44627i)))));
}

