struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 9>;

var<private> global1: array<bool, 18> = array<bool, 18>(true, true, false, true, true, true, false, true, true, true, false, false, false, false, true, true, true, true);

var<private> global2: Struct_1 = Struct_1(vec3<i32>(1i, 1i, -15354i), true, 37986u, -3751i, vec3<i32>(-1i, 26185i, 2147483647i));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: vec4<f32>) -> i32 {
    var var_0 = Struct_3(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(~abs(vec4<i32>(33906i, -31705i, u_input.c, global2.a.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_1, u_input.c, 1103i, 24809i), vec4<i32>(0i, 6514i, global2.e.x, u_input.c)) << (abs(vec4<u32>(37654u, 4294967295u, 135990u, global2.c)) % vec4<u32>(32u))), vec4<i32>(u_input.c, arg_1, ~(~(-2147483647i)), 0i)), _wgslsmith_mod_i32(1i, reverseBits(select(max(-23075i, arg_1), global2.a.x, global2.c < 1u))), 1849f);
    var var_1 = ~vec3<u32>(_wgslsmith_div_u32(u_input.d, u_input.a.x & global2.c), 1u, abs(_wgslsmith_sub_u32(u_input.d, ~0u)));
    var var_2 = Struct_3(~(-max(_wgslsmith_sub_vec4_i32(var_0.a, var_0.a), vec4<i32>(0i, arg_1, -17031i, -11580i))), ~(~(~(~global2.d))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) - -763f))), _wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(abs(var_0.c))))));
    return var_2.b;
}

fn func_2(arg_0: bool) -> vec3<i32> {
    global1 = array<bool, 18>();
    let var_0 = (vec3<u32>(u_input.b.x, global2.c, firstLeadingBit(~global2.c)) >> (~_wgslsmith_mult_vec3_u32(u_input.a, u_input.a) % vec3<u32>(32u))) ^ ((~u_input.a | vec3<u32>(40507u, u_input.a.x ^ 1u, global2.c)) ^ u_input.a);
    let var_1 = Struct_2(Struct_1(vec3<i32>(global2.d, min(u_input.c, global2.d), i32(-1i) * -1i), all(vec4<bool>(arg_0, any(vec2<bool>(true, arg_0)), !arg_0, false || arg_0)), reverseBits(global2.c), _wgslsmith_add_i32(u_input.c, u_input.c) & -22663i, _wgslsmith_clamp_vec3_i32(reverseBits(global2.a), ~(~vec3<i32>(global2.e.x, u_input.c, -9210i)), global2.a)), Struct_1(max(global2.e, global2.e) ^ ~vec3<i32>(-2147483647i, global2.e.x, global2.a.x), global2.b, ~abs(u_input.a.x), 36484i, -global2.a >> (vec3<u32>(min(var_0.x, 21534u), ~4294967295u, 11973u) % vec3<u32>(32u))), Struct_1(vec3<i32>(0i, _wgslsmith_clamp_i32(i32(-1i) * -1i, u_input.c, -9251i), _wgslsmith_clamp_i32(-2147483647i, 5075i, u_input.c) & ~global2.d), !arg_0, global2.c >> (16670u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(func_3(true, -2147483647i, vec4<f32>(938f, 834f, -283f, -1039f)), 66586i, firstTrailingBit(global2.d), i32(-1i) * -2147483647i), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-51139i, u_input.c, u_input.c, 23284i), vec4<i32>(0i, -2147483647i, 14653i, 45297i)), _wgslsmith_div_vec4_i32(vec4<i32>(18407i, u_input.c, 2147483647i, global2.d), vec4<i32>(-2147483647i, global2.a.x, -1i, u_input.c)))), vec3<i32>(~16030i, global2.d >> (1u % 32u), ~u_input.c) & (global2.e ^ (global2.e & global2.e))), any(select(vec2<bool>(all(global0[_wgslsmith_index_u32(u_input.a.x, 9u)]), arg_0 & false), !vec2<bool>(true, arg_0), vec2<bool>(all(vec4<bool>(global2.b, false, global2.b, global2.b)), !global2.b))));
    let var_2 = var_1;
    var var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-1432f)))), -647f, _wgslsmith_f_op_f32(step(1061f, _wgslsmith_f_op_f32(-1074f + -1198f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(846f * -1132f), _wgslsmith_f_op_f32(-584f + 1283f))))));
    return -abs(_wgslsmith_mult_vec3_i32(var_2.a.e, max(select(global2.e, var_1.c.a, true), ~global2.a)));
}

fn func_1() -> vec4<bool> {
    global0 = array<vec3<bool>, 9>();
    global2 = Struct_1(_wgslsmith_sub_vec3_i32(global2.a, ~global2.e), global2.b, 0u, global2.e.x, _wgslsmith_mult_vec3_i32(countOneBits(func_2(!global1[_wgslsmith_index_u32(global2.c, 18u)])), vec3<i32>(-22034i, global2.a.x, 1i)));
    let var_0 = 1i;
    var var_1 = select(vec4<bool>(global1[_wgslsmith_index_u32(firstTrailingBit(global2.c), 18u)], any(select(!vec4<bool>(global1[_wgslsmith_index_u32(31254u, 18u)], global2.b, global2.b, global1[_wgslsmith_index_u32(u_input.d, 18u)]), !vec4<bool>(false, false, global1[_wgslsmith_index_u32(1u, 18u)], false), !global2.b)), false, !select(true, any(vec4<bool>(global2.b, true, true, global1[_wgslsmith_index_u32(global2.c, 18u)])), global1[_wgslsmith_index_u32(u_input.b.x, 18u)])), select(!select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 18u)], global1[_wgslsmith_index_u32(25966u, 18u)], global2.b), select(vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 18u)], false, true), vec4<bool>(global2.b, global1[_wgslsmith_index_u32(4294967295u, 18u)], true, global2.b), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 18u)], true, false, global2.b)), vec4<bool>(true, false, true, global2.b)), select(select(select(vec4<bool>(global1[_wgslsmith_index_u32(51285u, 18u)], global1[_wgslsmith_index_u32(10752u, 18u)], global1[_wgslsmith_index_u32(global2.c, 18u)], true), vec4<bool>(global1[_wgslsmith_index_u32(global2.c, 18u)], false, global2.b, global2.b), global1[_wgslsmith_index_u32(22215u, 18u)]), !vec4<bool>(false, false, false, global1[_wgslsmith_index_u32(4294967295u, 18u)]), u_input.c < u_input.c), !(!vec4<bool>(false, global2.b, global1[_wgslsmith_index_u32(8092u, 18u)], false)), vec4<bool>(global1[_wgslsmith_index_u32(1675u, 18u)], global2.b, true, global2.b)), !(!select(vec4<bool>(true, false, false, false), vec4<bool>(global2.b, false, global1[_wgslsmith_index_u32(global2.c, 18u)], false), vec4<bool>(true, false, true, true)))), true);
    let var_2 = _wgslsmith_clamp_vec4_i32(vec4<i32>(reverseBits(min(u_input.c, -2147483647i) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, global2.c, 4294967295u), vec4<u32>(u_input.d, 4294967295u, 76776u, global2.c)) % 32u)), ~var_0, -var_0, _wgslsmith_mult_i32(u_input.c, u_input.c)), vec4<i32>(~(-u_input.c), abs(func_2(var_1.x).x), firstLeadingBit(-6923i ^ u_input.c), ~39398i | _wgslsmith_mult_i32(var_0, 1i)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(21894u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 38839u, global2.c), vec3<u32>(41039u, u_input.d, 1u)), ~12181u), ~vec4<u32>(global2.c, global2.c, 1u, u_input.b.x) & vec4<u32>(u_input.b.x, global2.c, 5367u, 42326u), ~(~vec4<u32>(global2.c, 0u, 0u, 1u))) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(-vec4<i32>(1i, -2147483647i, var_0 & 13394i, -36652i), ~_wgslsmith_clamp_vec4_i32(-vec4<i32>(var_0, -39940i, var_0, global2.a.x), -vec4<i32>(2147483647i, var_0, global2.e.x, 2147483647i), -vec4<i32>(global2.e.x, 0i, var_0, var_0))));
    return select(vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(min(_wgslsmith_add_u32(67316u, 94174u), global2.c & 57000u), ~(~1u)), 18u)], true, any(vec4<bool>(select(global2.b, var_1.x, var_1.x), true, any(vec2<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 18u)])), any(global0[_wgslsmith_index_u32(51459u, 9u)]))), !any(select(vec4<bool>(global1[_wgslsmith_index_u32(23804u, 18u)], global2.b, global2.b, global2.b), vec4<bool>(global2.b, true, var_1.x, true), false))), select(select(vec4<bool>(var_1.x & global1[_wgslsmith_index_u32(26336u, 18u)], global1[_wgslsmith_index_u32(global2.c, 18u)], true, true), select(vec4<bool>(global2.b, global1[_wgslsmith_index_u32(global2.c, 18u)], global2.b, global1[_wgslsmith_index_u32(7512u, 18u)]), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 18u)], true, global2.b, false), vec4<bool>(global1[_wgslsmith_index_u32(global2.c, 18u)], false, false, global2.b)), vec4<bool>(true, !var_1.x, global1[_wgslsmith_index_u32(countOneBits(10209u), 18u)], true & var_1.x)), vec4<bool>(true && var_1.x, var_1.x, true, !any(vec4<bool>(global2.b, true, global1[_wgslsmith_index_u32(0u, 18u)], global2.b))), vec4<bool>(true, -722f == _wgslsmith_f_op_f32(step(-2407f, 400f)), true, true)), !select(select(!vec4<bool>(false, global2.b, global2.b, global2.b), !vec4<bool>(true, global2.b, global1[_wgslsmith_index_u32(global2.c, 18u)], var_1.x), true), select(!vec4<bool>(global2.b, global2.b, global2.b, true), select(vec4<bool>(true, false, true, global2.b), vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 18u)], var_1.x, global2.b), var_1.x), !vec4<bool>(global1[_wgslsmith_index_u32(global2.c, 18u)], global1[_wgslsmith_index_u32(global2.c, 18u)], global2.b, false)), global2.b));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(countOneBits(global2.a), any(!func_1()) || (func_2(true).x == _wgslsmith_mult_i32(func_2(true).x, u_input.c)), 4294967295u, u_input.c, _wgslsmith_mult_vec3_i32(global2.a | _wgslsmith_div_vec3_i32(min(vec3<i32>(48606i, 32039i, 39802i), vec3<i32>(-2147483647i, global2.a.x, 1i)), -vec3<i32>(u_input.c, u_input.c, global2.d)), global2.e));
    global1 = array<bool, 18>();
    var var_0 = vec4<i32>(2147483647i, 6375i, abs(~_wgslsmith_sub_i32(u_input.c, u_input.c << (global2.c % 32u))), -2147483647i);
    var var_1 = 1i;
    let var_2 = !(_wgslsmith_mult_i32(10252i, -_wgslsmith_mod_i32(0i, global2.d)) >= _wgslsmith_add_i32(global2.d, ~(-18700i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~(~global2.c), global2.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-185f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(927f, 155f))))));
}

