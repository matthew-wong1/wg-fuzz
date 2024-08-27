struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: vec3<bool>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: i32,
    d: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: i32,
    e: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: bool,
    d: vec2<u32>,
    e: u32,
}

struct Struct_5 {
    a: u32,
    b: vec4<bool>,
    c: vec2<bool>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(4294967295u, 26495i, 2147483647i, false), Struct_2(0u, 0i, -35140i, true), Struct_2(0u, -1i, 2147483647i, false), Struct_2(3389u, 11706i, i32(-2147483648), false), Struct_2(1u, 26693i, -1i, false), Struct_2(18868u, 34887i, i32(-2147483648), true), Struct_2(1u, 24459i, -2716i, false), Struct_2(3254u, i32(-2147483648), 10890i, true), Struct_2(2686u, 2147483647i, 2147483647i, true), Struct_2(1u, 74632i, 0i, false), Struct_2(0u, -144i, 38346i, true), Struct_2(90623u, 0i, 34958i, true), Struct_2(5073u, 1i, 36763i, false), Struct_2(1u, -16308i, i32(-2147483648), false), Struct_2(29382u, i32(-2147483648), 27073i, true), Struct_2(1u, -1i, -4705i, true), Struct_2(0u, 1i, 0i, true), Struct_2(28337u, 0i, 0i, true), Struct_2(1u, -6459i, 39404i, false));

var<private> global1: array<bool, 7>;

var<private> global2: u32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<i32>) -> vec3<i32> {
    global2 = 4294967295u;
    let var_0 = Struct_5(1u, vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 7u)], all(vec3<bool>(true, all(vec3<bool>(global1[_wgslsmith_index_u32(8614u, 7u)], global1[_wgslsmith_index_u32(0u, 7u)], true)), false)), global1[_wgslsmith_index_u32(1u, 7u)] | true, false), select(vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(9935u, 1945u)) | _wgslsmith_dot_vec4_u32(vec4<u32>(34560u, 1u, 20475u, 4294967295u), vec4<u32>(36078u, 13568u, 50683u, 59057u)), 7u)], true), vec2<bool>(global1[_wgslsmith_index_u32(3983u, 7u)], true && global1[_wgslsmith_index_u32(_wgslsmith_add_u32(20857u, 112029u), 7u)]), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(882f - 552f), _wgslsmith_div_f32(-862f, -1000f))) < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(729f, -780f))), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(56227u, 45376u, 75523u, 0u)), select(vec4<u32>(31558u, 4294967295u, 1u, 70304u), vec4<u32>(1u, 1u, 1u, 1u), global1[_wgslsmith_index_u32(firstLeadingBit(17840u), 7u)])) << (_wgslsmith_dot_vec2_u32(select(_wgslsmith_mod_vec2_u32(vec2<u32>(57108u, 0u), vec2<u32>(1u, 14160u)), ~vec2<u32>(4031u, 26006u), vec2<bool>(true, true)), ~vec2<u32>(4294967295u, 4294967295u)) % 32u));
    global1 = array<bool, 7>();
    var var_1 = Struct_4(global0[_wgslsmith_index_u32(26964u, 19u)], _wgslsmith_f_op_f32(f32(-1f) * -828f), any(var_0.b.wwz), vec2<u32>(25479u, 0u) >> (vec2<u32>(abs(~var_0.a), firstLeadingBit(~74598u)) % vec2<u32>(32u)), 1u);
    let var_2 = Struct_5(0u >> (var_0.a % 32u), !vec4<bool>((global1[_wgslsmith_index_u32(1u, 7u)] & true) == var_0.c.x, true, any(!vec4<bool>(var_0.c.x, var_0.c.x, true, false)), var_1.a.a <= _wgslsmith_sub_u32(var_0.d, 44405u)), var_0.b.zy, ~_wgslsmith_mod_u32(var_1.a.a, ~var_0.a));
    return countOneBits(vec3<i32>(arg_0.x, u_input.a.x, -2147483647i)) >> (~(~vec3<u32>(~var_1.a.a, ~9774u, var_0.d)) % vec3<u32>(32u));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: vec3<i32>, arg_3: vec2<f32>) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_3, arg_3)));
    global0 = array<Struct_2, 19>();
    global2 = ~arg_1;
    let var_1 = ~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x ^ (u_input.a.x | u_input.a.x)) | func_3(~vec2<i32>(_wgslsmith_mult_i32(-36022i, arg_2.x), firstLeadingBit(u_input.a.x)));
    global2 = firstLeadingBit(arg_1) ^ 1u;
    return ~vec3<i32>(~(min(-1i, -75704i) ^ countOneBits(u_input.a.x)), countOneBits(max(arg_2.x, arg_2.x >> (arg_1 % 32u))), abs(-1i));
}

fn func_1() -> Struct_2 {
    let var_0 = u_input.a;
    var var_1 = -countOneBits(_wgslsmith_mult_vec3_i32(min(func_2(global1[_wgslsmith_index_u32(1u, 7u)], 0u, vec3<i32>(2147483647i, 17830i, 42198i), vec2<f32>(-1094f, 981f)), vec3<i32>(1i, 0i, var_0.x)), ~(-vec3<i32>(var_0.x, 1i, 1i))));
    global0 = array<Struct_2, 19>();
    global1 = array<bool, 7>();
    global2 = ~(1u >> (1u % 32u));
    return global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(select(vec2<u32>(1u, 3487u), vec2<u32>(0u, 66180u), true), min(vec2<u32>(4294967295u, 0u), vec2<u32>(48786u, 65451u))), ~vec2<u32>(0u, 1u)), min(_wgslsmith_dot_vec4_u32(~vec4<u32>(18331u, 41539u, 83127u, 73177u), vec4<u32>(1u, 1u, 1u, 1u) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), _wgslsmith_add_u32(38316u, 1u))), 19u)];
}

fn func_4(arg_0: Struct_4) -> Struct_4 {
    global1 = array<bool, 7>();
    var var_0 = -firstLeadingBit(vec4<i32>(arg_0.a.b, u_input.a.x, -26078i, 5708i));
    global2 = 46338u;
    global0 = array<Struct_2, 19>();
    var var_1 = _wgslsmith_f_op_f32(-arg_0.b);
    return Struct_4(func_1(), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.b))) + _wgslsmith_f_op_f32(ceil(arg_0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) * arg_0.b) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b - -515f))))), ~_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, 4294967295u, 53133u, 0u)), firstLeadingBit(vec4<u32>(arg_0.e, arg_0.e, 7381u, 1u))) < ~arg_0.a.a, reverseBits(~vec2<u32>(46760u, 4294967295u) | _wgslsmith_mult_vec2_u32(arg_0.d, vec2<u32>(arg_0.e, arg_0.d.x))), _wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(~arg_0.a.a, countOneBits(arg_0.d.x)), 32908u), arg_0.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 7>();
    var var_0 = func_4(Struct_4(func_1(), -1372f, false && !(!global1[_wgslsmith_index_u32(1u, 7u)]), ~(~select(vec2<u32>(4294967295u, 12509u), vec2<u32>(33716u, 2238u), vec2<bool>(true, false))), ~39443u));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(777f, -790f, -685f, -2362f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-667f, 1115f, var_0.b, -1636f) * vec4<f32>(var_0.b, var_0.b, -198f, 1000f)) + vec4<f32>(-934f, 445f, -317f, var_0.b)), vec4<f32>(_wgslsmith_f_op_f32(floor(var_0.b)), -1000f, _wgslsmith_div_f32(958f, var_0.b), 1373f))), !vec4<bool>(all(vec2<bool>(var_0.a.d, var_0.a.d)), true & global1[_wgslsmith_index_u32(var_0.a.a, 7u)], all(vec3<bool>(var_0.c, global1[_wgslsmith_index_u32(4294967295u, 7u)], global1[_wgslsmith_index_u32(0u, 7u)])), var_0.c))), vec4<f32>(2390f, func_4(func_4(func_4(Struct_4(var_0.a, -1258f, true, vec2<u32>(0u, var_0.a.a), var_0.d.x)))).b, _wgslsmith_f_op_f32(-var_0.b), var_0.b));
    global1 = array<bool, 7>();
    var_1 = vec4<f32>(565f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(412f, var_0.b)), _wgslsmith_f_op_f32(f32(-1f) * -1419f)))), _wgslsmith_f_op_f32(max(779f, -1694f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(678f + -567f) * -868f), -419f), _wgslsmith_f_op_f32(f32(-1f) * -580f));
    global2 = _wgslsmith_mult_u32(_wgslsmith_sub_u32(var_0.d.x, ~max(_wgslsmith_add_u32(var_0.d.x, 0u), _wgslsmith_mod_u32(100511u, 4294967295u))), _wgslsmith_div_u32(4294967295u, firstLeadingBit((var_0.e ^ 4294967295u) << (~var_0.e % 32u))));
    var var_2 = func_4(func_4(func_4(Struct_4(Struct_2(var_0.d.x, var_0.a.b, -1i, true), _wgslsmith_f_op_f32(var_1.x * var_1.x), var_0.a.d, vec2<u32>(1u, 55565u), _wgslsmith_clamp_u32(61732u, 1u, 3296u)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1i) * -_wgslsmith_add_vec2_i32(select(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(0i, u_input.a.x), true), vec2<i32>(var_2.a.b, 25890i)), 0u, vec4<i32>(2147483647i & -var_0.a.b, u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(-43914i, var_0.a.b), var_2.a.b | var_0.a.b, func_4(Struct_4(Struct_2(14389u, var_0.a.b, 11793i, false), 569f, var_0.a.d, vec2<u32>(var_2.e, 4294967295u), 11097u)).a.c), select(vec3<i32>(-1i, var_0.a.b, 8508i) << (vec3<u32>(var_2.a.a, 14781u, var_0.d.x) % vec3<u32>(32u)), vec3<i32>(var_2.a.b, var_0.a.c, -45159i), select(vec3<bool>(false, true, var_0.c), vec3<bool>(true, true, true), true))), -var_2.a.c), vec2<i32>(_wgslsmith_dot_vec4_i32(countOneBits(min(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 6737i), vec4<i32>(0i, -25802i, 36072i, u_input.a.x))), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 1i, var_0.a.c, var_0.a.c), vec4<i32>(-2147483647i, u_input.a.x, 2147483647i, var_0.a.c)) | _wgslsmith_div_vec4_i32(vec4<i32>(var_2.a.b, u_input.a.x, u_input.a.x, 1i), vec4<i32>(var_2.a.b, var_0.a.b, 9554i, u_input.a.x))), u_input.a.x));
}

