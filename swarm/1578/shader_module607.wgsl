struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<f32>;

var<private> global2: array<u32, 29>;

var<private> global3: array<f32, 27>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec4<bool>) -> vec2<f32> {
    let var_0 = vec2<i32>(_wgslsmith_sub_i32(arg_1, _wgslsmith_sub_i32(-u_input.b, ~u_input.b)), 2147483647i);
    let var_1 = Struct_2(arg_0, Struct_1(_wgslsmith_div_vec4_u32(max(arg_0.a, arg_0.a) | ~vec4<u32>(u_input.a, 4294967295u, global0.a.x, 5842u), select(arg_0.a, vec4<u32>(0u, 1u, global0.b, global0.b), !arg_2.x)), u_input.a), firstTrailingBit(select(u_input.c, ~u_input.c, !all(vec4<bool>(true, false, true, arg_2.x)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f + global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(0u, 29u)], 0u), 27u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), all(!vec4<bool>(arg_2.x, false, true, false)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.x), global1.x))));
    var var_3 = ((~(~vec4<i32>(-47917i, 21530i, var_0.x, u_input.b)) & _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, arg_1, arg_1, -1i), vec4<i32>(u_input.b, -1i, var_0.x, arg_1), vec4<i32>(-1i, 2147483647i, arg_1, var_0.x)), vec4<i32>(22320i, -1i, 2147483647i, -1i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, u_input.b, 42985i, arg_1), vec4<i32>(arg_1, 3729i, 0i, 12583i)))) | vec4<i32>(var_0.x, -_wgslsmith_sub_i32(arg_1, var_0.x), 0i >> (~global0.b % 32u), 54255i)) << (_wgslsmith_add_vec4_u32(reverseBits((vec4<u32>(global2[_wgslsmith_index_u32(1117u, 29u)], arg_0.a.x, global0.b, 56498u) ^ vec4<u32>(var_1.b.b, var_1.b.a.x, global0.b, global0.a.x)) | arg_0.a), abs(vec4<u32>(abs(var_1.a.a.x), ~var_1.b.b, 85207u, _wgslsmith_div_u32(1u, 16271u)))) % vec4<u32>(32u));
    var_3 = vec4<i32>((_wgslsmith_clamp_i32(27227i, -var_3.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, var_3.x, var_3.x, 32738i), vec4<i32>(23827i, var_0.x, var_0.x, 12625i))) & -var_0.x) >> (abs(_wgslsmith_div_u32(u_input.a, ~global2[_wgslsmith_index_u32(u_input.a, 29u)])) % 32u), u_input.b, abs(_wgslsmith_dot_vec4_i32(-(vec4<i32>(2147483647i, 38672i, arg_1, 1i) >> (arg_0.a % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, -15012i, var_3.x, var_0.x), vec4<i32>(arg_1, var_0.x, 27515i, 2147483647i)) & vec4<i32>(arg_1, -36310i, -5658i, 2147483647i))), _wgslsmith_mod_i32(-_wgslsmith_sub_i32(-13085i, var_0.x), _wgslsmith_mod_i32(2147483647i, -31238i)));
    return _wgslsmith_f_op_vec2_f32(ceil(global1.xw));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec2<f32>, arg_3: vec2<i32>) -> vec4<u32> {
    let var_0 = any(vec2<bool>(true, true));
    var var_1 = arg_0;
    let var_2 = vec3<u32>(~_wgslsmith_mod_u32(firstLeadingBit(1u ^ u_input.c.x), countOneBits(max(0u, u_input.c.x))), ~select(_wgslsmith_dot_vec2_u32(vec2<u32>(69426u, global0.b), countOneBits(vec2<u32>(global0.b, arg_0.a.a.x))), 1u, !(509f > arg_1.x)), ~firstTrailingBit(abs(~u_input.c.x)));
    var_1 = arg_0;
    let var_3 = arg_1.zzw;
    return vec4<u32>(24161u, reverseBits(_wgslsmith_clamp_u32(1u, min(~0u, 0u), max(reverseBits(84138u), _wgslsmith_add_u32(var_1.c.x, global0.a.x)))), var_1.a.b, ~max(~firstLeadingBit(global2[_wgslsmith_index_u32(u_input.a, 29u)]), global0.a.x));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<bool>) -> Struct_1 {
    global2 = array<u32, 29>();
    let var_0 = arg_0;
    global3 = array<f32, 27>();
    var var_1 = Struct_2(Struct_1(func_4(Struct_2(Struct_1(vec4<u32>(global2[_wgslsmith_index_u32(0u, 29u)], global2[_wgslsmith_index_u32(u_input.c.x, 29u)], 1u, global0.a.x), global0.b), Struct_1(u_input.c, u_input.a), ~global0.a), vec4<f32>(-279f, global1.x, _wgslsmith_f_op_f32(-732f * -516f), -966f), _wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(27156u, 29u)], 29u)], global0.b, 41723u, 4294967295u), u_input.a), var_0.x >> (11949u % 32u), select(vec4<bool>(false, true, arg_1.x, false), vec4<bool>(false, false, arg_1.x, true), true))), abs(vec2<i32>(arg_0.x, var_0.x))), func_4(Struct_2(Struct_1(u_input.c, 0u), Struct_1(vec4<u32>(global0.b, global0.b, u_input.a, u_input.c.x), 30455u), vec4<u32>(global2[_wgslsmith_index_u32(u_input.a, 29u)], 87211u, 102024u, u_input.c.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(608f, 1028f, -614f, 1803f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-875f, global3[_wgslsmith_index_u32(32527u, 27u)])), var_0).x & ~93u), Struct_1(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(reverseBits(global0.a), vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 29u)], 0u, u_input.c.x, 4294967295u)), ~vec4<u32>(0u, global2[_wgslsmith_index_u32(global0.a.x, 29u)], global0.b, 4294967295u)), firstLeadingBit(abs(global0.b)) & ~76657u), _wgslsmith_add_vec4_u32(firstLeadingBit(~vec4<u32>(u_input.c.x, global0.a.x, global0.b, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 29u)], 29u)])), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(min(~global2[_wgslsmith_index_u32(1u, 29u)], u_input.c.x), 29u)], 29u)], global2[_wgslsmith_index_u32(u_input.a, 29u)], ~63727u >> (global2[_wgslsmith_index_u32(min(4294967295u, global0.a.x), 29u)] % 32u), _wgslsmith_div_u32(firstTrailingBit(u_input.a), abs(global2[_wgslsmith_index_u32(global0.a.x, 29u)])))));
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1f, global1.x)))));
    return Struct_1(firstLeadingBit(_wgslsmith_mult_vec4_u32(~vec4<u32>(84595u, u_input.a, u_input.c.x, global2[_wgslsmith_index_u32(1u, 29u)]), ~global0.a) << (_wgslsmith_clamp_vec4_u32(~global0.a, ~var_1.b.a, u_input.c) % vec4<u32>(32u))), max((firstTrailingBit(u_input.a) << (min(global2[_wgslsmith_index_u32(u_input.a, 29u)], var_1.a.a.x) % 32u)) << (_wgslsmith_div_u32(global2[_wgslsmith_index_u32(~var_1.b.a.x, 29u)], var_1.c.x) % 32u), _wgslsmith_clamp_u32(global0.b >> (0u % 32u), ~global2[_wgslsmith_index_u32(var_1.b.b & global2[_wgslsmith_index_u32(var_1.c.x, 29u)], 29u)], ~(~u_input.c.x))));
}

fn func_5(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_1) -> bool {
    global2 = array<u32, 29>();
    let var_0 = vec4<u32>(~_wgslsmith_mod_u32(~u_input.a, global0.b << (global0.a.x % 32u)), _wgslsmith_sub_u32(arg_2.b, ~(~global2[_wgslsmith_index_u32(~19742u, 29u)])), func_4(Struct_2(func_2(abs(vec2<i32>(1i, -1i)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true)), func_2(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, 1i), vec2<i32>(-10535i, u_input.b)), vec3<bool>(true, true, true)), vec4<u32>(39091u, 56201u, 0u, arg_0.x & 14102u)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global3[_wgslsmith_index_u32(51609u, 27u)], global3[_wgslsmith_index_u32(2318u, 27u)], global1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(45928u, 27u)], global1.x, -302f, global1.x))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(781f, 1092f, 542f, 197f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global1.ww, global1.zz, false)) - vec2<f32>(-241f, global3[_wgslsmith_index_u32(22009u, 27u)])) * vec2<f32>(-1033f, -945f)), vec2<i32>(-u_input.b, -1i)).x, 9868u);
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_0.x, 27u)]))), _wgslsmith_f_op_f32(f32(-1f) * -1346f), -2484f, global3[_wgslsmith_index_u32(~1u, 27u)]) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-408f, 429f, global1.x, -1796f)))))));
    let var_1 = func_2(firstLeadingBit(select(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(1i, 2147483647i)), vec2<i32>(2147483647i, -38540i), all(vec2<bool>(false, true))) ^ vec2<i32>(reverseBits(24161i), u_input.b)), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), vec3<bool>(true, true, true))).a.xx;
    let var_2 = arg_2;
    return true;
}

fn func_1() -> Struct_2 {
    global2 = array<u32, 29>();
    global3 = array<f32, 27>();
    let var_0 = Struct_1(~global0.a, 0u);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.xzz) * global1.zyz);
    let var_2 = vec3<bool>(func_5(~global0.a, _wgslsmith_add_u32(32743u, u_input.a), func_2(_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-1i, 2147483647i), vec2<i32>(u_input.b, u_input.b)), -vec2<i32>(32513i, u_input.b)), vec3<bool>(0u <= global2[_wgslsmith_index_u32(1u, 29u)], true, var_0.b < var_0.a.x))), true, countOneBits(25453u) != _wgslsmith_sub_u32(1u >> (_wgslsmith_mult_u32(global0.a.x, 0u) % 32u), ~select(1u, u_input.c.x, false)));
    return Struct_2(var_0, func_2(-(~firstLeadingBit(vec2<i32>(50698i, u_input.b))), var_2), var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = Struct_1(firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0.a.x, global2[_wgslsmith_index_u32(u_input.a, 29u)]), ~vec3<u32>(global0.a.x, 65912u, global2[_wgslsmith_index_u32(87194u, 29u)])), global2[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 29u)], 1u, 41888u)), 0u);
    var var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(vec4<u32>(0u, ~global2[_wgslsmith_index_u32(var_1.b, 29u)], var_1.a.x, 4294967295u), ~abs(vec4<u32>(1u, 1701u, 1u, 1u))) << ((vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(78516u, var_2.a.b, global2[_wgslsmith_index_u32(global0.b, 29u)]), global0.a.xwy), _wgslsmith_div_u32(var_1.b, 39941u), global0.a.x, _wgslsmith_sub_u32(var_2.c.x, 4294967295u)) | _wgslsmith_mult_vec4_u32(~u_input.c, _wgslsmith_mult_vec4_u32(var_1.a, var_2.b.a))) % vec4<u32>(32u)));
}

