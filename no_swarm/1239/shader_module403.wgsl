struct Struct_1 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec3<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13> = array<u32, 13>(1u, 33824u, 9159u, 1u, 1u, 0u, 1u, 1u, 56764u, 100326u, 25108u, 0u, 77476u);

var<private> global1: bool = true;

var<private> global2: u32 = 44702u;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: vec2<bool>, arg_2: u32) -> f32 {
    global2 = ~(~firstTrailingBit(~1u)) | _wgslsmith_dot_vec4_u32(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(17664u, 13u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 13u)], 13u)], u_input.a, arg_2) | vec4<u32>(arg_2, 23239u, 41193u, 1u), abs(vec4<u32>(arg_0, 13372u, global0[_wgslsmith_index_u32(7195u, 13u)], 5547u)))), ~_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(44006u, u_input.a, 71587u, 4294967295u), vec4<u32>(0u, 49974u, arg_0, 36434u)), ~vec4<u32>(global0[_wgslsmith_index_u32(81460u, 13u)], 4294967295u, arg_2, u_input.b.x)));
    global2 = _wgslsmith_dot_vec2_u32(min(_wgslsmith_div_vec2_u32(u_input.b, vec2<u32>(~38420u, u_input.a)), firstTrailingBit(vec2<u32>(103187u, ~arg_2))), ~u_input.b);
    let var_0 = select(~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_2, 62347u, u_input.a) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(1u, arg_2, 4294967295u), vec3<u32>(17864u, 4294967295u, arg_0)), vec3<u32>(firstTrailingBit(arg_2), 13959u, ~arg_0)), _wgslsmith_add_vec3_u32(abs(reverseBits(vec3<u32>(u_input.a, 10548u, 1u))) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, 0u, 11130u), select(vec3<u32>(global0[_wgslsmith_index_u32(52999u, 13u)], arg_2, 12324u), vec3<u32>(u_input.a, arg_2, 12452u), arg_1.x)) % vec3<u32>(32u)), ~vec3<u32>(arg_0, 1u, global0[_wgslsmith_index_u32(u_input.a, 13u)] ^ u_input.a)), select(select(select(select(vec3<bool>(arg_1.x, arg_1.x, true), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, false, arg_1.x)), select(vec3<bool>(true, false, arg_1.x), vec3<bool>(true, true, arg_1.x), arg_1.x), any(vec4<bool>(false, false, arg_1.x, arg_1.x))), vec3<bool>(true, all(vec4<bool>(true, true, false, arg_1.x)), false), all(select(arg_1, arg_1, false))), select(select(select(vec3<bool>(arg_1.x, true, false), vec3<bool>(arg_1.x, true, arg_1.x), true), vec3<bool>(true, true, true), vec3<bool>(arg_1.x, false, false)), !(!vec3<bool>(false, arg_1.x, false)), vec3<bool>(true, arg_1.x == arg_1.x, all(vec3<bool>(true, true, true)))), vec3<bool>(arg_1.x, !(arg_1.x | true), all(!vec4<bool>(false, arg_1.x, arg_1.x, true)))));
    var var_1 = ~(-(countOneBits(firstTrailingBit(vec3<i32>(1i, -6453i, 2147483647i))) & reverseBits(vec3<i32>(1i, 1i, 1i))));
    global2 = var_0.x;
    return -859f;
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: vec4<bool>) -> Struct_1 {
    global0 = array<u32, 13>();
    global1 = false;
    var var_0 = Struct_1(u_input.b.x, _wgslsmith_f_op_f32(func_3(4294967295u, select(arg_2.yx, vec2<bool>(arg_2.x, false), arg_2.wx), ~_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a, u_input.b.x), _wgslsmith_div_u32(u_input.b.x, global0[_wgslsmith_index_u32(u_input.b.x, 13u)])))));
    let var_1 = Struct_1(1794u << (1u % 32u), 1007f);
    let var_2 = Struct_1(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1403f)) + arg_0));
    return Struct_1(countOneBits(max(0u, ~22705u)), -1417f);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = any(vec2<bool>(true, true));
    global0 = array<u32, 13>();
    global2 = 1u;
    let var_1 = ~_wgslsmith_clamp_vec3_u32(~(~(~vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.a, 13u)], arg_1.a))), (~vec3<u32>(global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(1u, 13u)], 0u) << ((vec3<u32>(u_input.b.x, 4294967295u, arg_1.a) ^ vec3<u32>(u_input.b.x, global0[_wgslsmith_index_u32(arg_0.a, 13u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6537u, 13u)], 13u)])) % vec3<u32>(32u))) & (vec3<u32>(0u, 9800u, global0[_wgslsmith_index_u32(4294967295u, 13u)]) & (vec3<u32>(63089u, arg_0.a, u_input.a) << (vec3<u32>(u_input.b.x, u_input.b.x, 5750u) % vec3<u32>(32u)))), vec3<u32>(reverseBits(4294967295u), 1u, 1u));
    var var_2 = -((~(arg_2 << (u_input.a % 32u)) << (40431u % 32u)) << (36593u % 32u));
    return func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, -1228f)), vec4<bool>(false, false, !any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false))), any(vec2<bool>(true, true))));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: u32) -> i32 {
    global1 = true;
    var var_0 = func_4(func_2(-455f, arg_1.yx, !vec4<bool>(true, u_input.b.x <= u_input.b.x, true, true)), Struct_1(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 13u)], 13u)]), 13u)], min(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(9434u, 13u)], arg_2), ~0u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x - 1043f), _wgslsmith_f_op_f32(-arg_1.x)))), ~_wgslsmith_sub_i32(i32(-1i) * -64853i, firstTrailingBit(0i)));
    let var_1 = firstLeadingBit(vec4<u32>(_wgslsmith_mod_u32(1u, var_0.a), u_input.b.x, 1u >> (~4294967295u % 32u), ~18943u));
    var var_2 = vec4<i32>(i32(-1i) * -2147483647i, 1i, i32(-1i) * -_wgslsmith_sub_i32(1i, _wgslsmith_mult_i32(0i, -2147483647i)), countOneBits(select(~(-2147483647i), 1i, select(false, false, false)) | _wgslsmith_sub_i32(select(20038i, 0i, false), firstTrailingBit(34333i))));
    let var_3 = !(!(!select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true))));
    return var_2.x;
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec4<f32>, arg_3: vec4<bool>) -> Struct_1 {
    global0 = array<u32, 13>();
    let var_0 = global0[_wgslsmith_index_u32(abs(u_input.b.x), 13u)];
    var var_1 = _wgslsmith_mod_vec3_u32(max(min(~countOneBits(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(36932u, 13u)], 13u)], u_input.a)), ~(vec3<u32>(u_input.a, 30405u, u_input.a) << (vec3<u32>(4294967295u, u_input.b.x, u_input.a) % vec3<u32>(32u)))), ~(~(~vec3<u32>(4294967295u, 35425u, 66515u)))), reverseBits(~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, arg_0.a, arg_0.a), ~vec3<u32>(4294967295u, u_input.b.x, global0[_wgslsmith_index_u32(10304u, 13u)]))));
    var var_2 = 4294967295u > _wgslsmith_dot_vec4_u32(vec4<u32>(~0u, abs(1u), func_2(_wgslsmith_f_op_f32(abs(1000f)), vec2<f32>(-1999f, arg_0.b), !arg_3).a, ~arg_0.a), firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 4294967295u, arg_0.a, 1u), vec4<u32>(arg_0.a, u_input.a, var_1.x, 62614u), vec4<u32>(11815u, arg_0.a, 49542u, u_input.b.x))) >> (~(~vec4<u32>(u_input.a, 24060u, global0[_wgslsmith_index_u32(arg_0.a, 13u)], global0[_wgslsmith_index_u32(arg_0.a, 13u)])) % vec4<u32>(32u)));
    var_2 = true;
    return Struct_1(var_1.x, 1634f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mult_vec3_i32(~vec3<i32>(1i, _wgslsmith_add_i32(-2147483647i, 28338i), select(53294i, -43798i, true)), vec3<i32>(-95461i, -firstTrailingBit(-2147483647i), ~abs(-3277i)));
    global1 = true;
    global2 = u_input.b.x;
    global0 = array<u32, 13>();
    var_0 = vec3<i32>(_wgslsmith_sub_i32(var_0.x, ~var_0.x ^ -1i) << (_wgslsmith_mult_u32(~_wgslsmith_mod_u32(u_input.a, u_input.a), ~13020u) % 32u), -(~(min(var_0.x, var_0.x) & -var_0.x)), abs(~var_0.x));
    var var_1 = func_5(Struct_1(7276u, 1704f), true, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-102f, 308f, -584f, -645f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1069f, 1469f, -344f, 396f)))))))), vec4<bool>(5242u < ~select(u_input.b.x, 1u, true), select(func_1(vec2<f32>(-1996f, 449f), vec3<f32>(700f, 342f, 1072f), global0[_wgslsmith_index_u32(74014u, 13u)]), -59195i, all(vec4<bool>(true, true, false, true))) >= var_0.x, any(vec4<bool>(true, false, var_0.x > var_0.x, true)), true));
    var_0 = ~vec3<i32>(-(~_wgslsmith_div_i32(17500i, 60070i)), ~var_0.x & var_0.x, select(-1i, _wgslsmith_mult_i32(var_0.x, -1i), select(1u != var_1.a, true, all(vec4<bool>(true, false, true, false)))));
    var var_2 = Struct_1(u_input.b.x >> (_wgslsmith_sub_u32(var_1.a, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 13u)], 13u)], 13u)], var_1.a), vec3<u32>(var_1.a, u_input.b.x, 1u), vec3<u32>(var_1.a, 37906u, var_1.a)), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.a, u_input.b.x, 40015u), vec3<u32>(var_1.a, 1u, u_input.b.x), vec3<u32>(1u, var_1.a, 29673u)))) % 32u), func_5(func_5(Struct_1(global0[_wgslsmith_index_u32(~12100u, 13u)], 490f), true, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1634f, 194f, var_1.b, 269f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, -534f, var_1.b, var_1.b) * vec4<f32>(1000f, -581f, var_1.b, -190f)))), vec4<bool>(true, 80156i > var_0.x, true, true)), !any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.b, var_1.b))), 1000f, func_5(func_4(Struct_1(1u, var_1.b), Struct_1(global0[_wgslsmith_index_u32(u_input.b.x, 13u)], var_1.b), 6604i), all(vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, -564f, -517f, -372f)), vec4<bool>(true, true, true, true)).b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b, var_1.b))), vec4<bool>(true, true, true, true)).b);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x ^ (-(~var_0.x) | reverseBits(abs(var_0.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(firstTrailingBit(u_input.b.x), select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.a, u_input.b.x), ~vec4<u32>(4294967295u, var_2.a, 16234u, 0u)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(915f, 1137f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.b, -420f))), any(vec4<bool>(false, false, true, false))))), -max(firstLeadingBit(vec3<i32>(58509i, -32015i, 23655i)), firstTrailingBit(~vec3<i32>(var_0.x, 51384i, 0i))), (vec3<u32>(4294967295u, u_input.a, global0[_wgslsmith_index_u32(0u, 13u)] >> (var_2.a % 32u)) & vec3<u32>(var_2.a >> (138419u % 32u), 4294967295u, _wgslsmith_div_u32(5393u, 1u))) | vec3<u32>(41461u, func_5(Struct_1(4294967295u, var_1.b), true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-317f, 1553f, var_1.b, var_1.b)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false))).a, firstLeadingBit(u_input.b.x)));
}

