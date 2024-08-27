struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec3<f32>,
    d: f32,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: f32,
    d: vec4<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<i32>,
    c: vec2<u32>,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(i32(-2147483648), -2737i);

var<private> global1: array<i32, 18> = array<i32, 18>(-39294i, -31824i, 1i, 12733i, 0i, -64809i, -1i, -3084i, 1i, i32(-2147483648), 68091i, 3614i, -1i, -32411i, -1i, 6217i, 13307i, 30322i);

var<private> global2: array<Struct_4, 31>;

var<private> global3: array<Struct_5, 7>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: vec2<i32>, arg_1: u32, arg_2: vec2<bool>) -> vec2<i32> {
    let var_0 = global2[_wgslsmith_index_u32(arg_1, 31u)];
    global3 = array<Struct_5, 7>();
    global2 = array<Struct_4, 31>();
    let var_1 = (vec4<u32>(1u, 83761u, u_input.a.x, _wgslsmith_add_u32(u_input.a.x, var_0.a) ^ var_0.a) | ~(max(vec4<u32>(45251u, 72959u, 1u, u_input.a.x), vec4<u32>(23442u, var_0.a, 1u, arg_1)) << (~vec4<u32>(0u, 67958u, 0u, 4294967295u) % vec4<u32>(32u)))) & _wgslsmith_add_vec4_u32(~(~vec4<u32>(7361u, 4294967295u, var_0.a, var_0.a)) & ~vec4<u32>(14071u, 8443u, 0u, var_0.a), ~abs(~vec4<u32>(13066u, 4294967295u, u_input.b, arg_1)));
    global3 = array<Struct_5, 7>();
    return countOneBits(((var_0.d.zx | arg_0) ^ select(vec2<i32>(global0.x, var_0.d.x) | vec2<i32>(1542i, arg_0.x), max(var_0.d.yx, var_0.d.zy), !arg_2.x)) << (var_1.zx % vec2<u32>(32u)));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: f32, arg_3: bool) -> vec2<i32> {
    let var_0 = Struct_3(0i, arg_1, vec3<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(arg_2)), _wgslsmith_f_op_f32(select(arg_2, arg_2, false)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-733f))))), arg_2), _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -261f), arg_2))));
    global0 = vec2<i32>(1506i, _wgslsmith_dot_vec4_i32(abs(-vec4<i32>(17796i, 9561i, global1[_wgslsmith_index_u32(60437u, 18u)], global1[_wgslsmith_index_u32(var_0.b.a, 18u)])), firstLeadingBit(reverseBits(~vec4<i32>(global0.x, 2147483647i, -15912i, 25222i)))));
    let var_1 = 1i;
    let var_2 = global1[_wgslsmith_index_u32(38254u, 18u)];
    var var_3 = !any(vec3<bool>(940f < arg_2, any(var_0.b.b), true)) && false;
    return select(~(~((vec2<i32>(var_1, -17004i) | vec2<i32>(global1[_wgslsmith_index_u32(arg_1.a, 18u)], -1i)) >> (~vec2<u32>(u_input.b, arg_1.a) % vec2<u32>(32u)))), -(select(select(vec2<i32>(arg_0, arg_0), vec2<i32>(2147483647i, -2147483647i), vec2<bool>(arg_3, arg_1.b.x)), ~vec2<i32>(-59545i, 23467i), arg_1.b.yz) >> (~u_input.a % vec2<u32>(32u))), select(arg_1.b.xx, select(vec2<bool>(false, arg_1.b.x), !vec2<bool>(var_0.b.b.x, arg_3), true), vec2<bool>(any(vec2<bool>(true, true)), arg_2 >= -239f)));
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> Struct_4 {
    var var_0 = true;
    global0 = _wgslsmith_sub_vec2_i32(min(select(_wgslsmith_mult_vec2_i32(~vec2<i32>(global1[_wgslsmith_index_u32(4813u, 18u)], -18197i), -vec2<i32>(global1[_wgslsmith_index_u32(11328u, 18u)], -65949i)), _wgslsmith_clamp_vec2_i32(select(vec2<i32>(30586i, global1[_wgslsmith_index_u32(arg_1.a, 18u)]), vec2<i32>(-1i, -1i), true), ~vec2<i32>(13390i, global1[_wgslsmith_index_u32(4294967295u, 18u)]), ~vec2<i32>(global1[_wgslsmith_index_u32(u_input.b, 18u)], global1[_wgslsmith_index_u32(u_input.a.x, 18u)])), true), func_2(_wgslsmith_div_vec2_i32(min(vec2<i32>(global0.x, global1[_wgslsmith_index_u32(u_input.b, 18u)]), vec2<i32>(global1[_wgslsmith_index_u32(0u, 18u)], global0.x)), vec2<i32>(-1i, global1[_wgslsmith_index_u32(1u, 18u)])), abs(4294967295u) | firstLeadingBit(u_input.b), vec2<bool>(select(false, true, arg_0), any(vec2<bool>(false, false))))), _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(-(vec2<i32>(global0.x, -1i) & vec2<i32>(0i, 15423i)), min(select(vec2<i32>(-23011i, global0.x), vec2<i32>(global0.x, global1[_wgslsmith_index_u32(0u, 18u)]), true), select(vec2<i32>(-1i, global0.x), vec2<i32>(-24210i, global1[_wgslsmith_index_u32(9489u, 18u)]), vec2<bool>(true, arg_0)))), _wgslsmith_mod_vec2_i32(vec2<i32>(countOneBits(global0.x), abs(12911i)), firstTrailingBit(func_3(24708i, Struct_2(51942u, vec3<bool>(true, false, arg_0)), 1118f, arg_0)))));
    let var_1 = 86345u;
    global2 = array<Struct_4, 31>();
    var var_2 = Struct_1(_wgslsmith_clamp_u32(u_input.a.x, abs(var_1), var_1), 1u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-173f, 136f)))) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1002f, _wgslsmith_f_op_f32(ceil(-437f)))))), !arg_1.b);
    return Struct_4(var_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.c.x * var_2.c.x), -450f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(330f, -385f)), var_2.c.x)))), (vec4<i32>(global0.x, ~global0.x, -1i, global0.x) | _wgslsmith_sub_vec4_i32(max(vec4<i32>(global0.x, global1[_wgslsmith_index_u32(26628u, 18u)], global0.x, global1[_wgslsmith_index_u32(u_input.b, 18u)]), vec4<i32>(global0.x, global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(9521u, 18u)], global0.x)), vec4<i32>(1i, 1i, 1i, 1i))) << (vec4<u32>(select(arg_1.a, u_input.a.x, var_2.d.x), 43103u, _wgslsmith_div_u32(arg_1.a ^ var_1, var_1), ~14144u) % vec4<u32>(32u)));
}

fn func_4(arg_0: Struct_5, arg_1: i32) -> vec3<i32> {
    global2 = array<Struct_4, 31>();
    var var_0 = Struct_3(-4785i, Struct_2(u_input.a.x, select(vec3<bool>(false, all(vec2<bool>(true, true)), true), vec3<bool>(all(vec3<bool>(true, true, false)), true, all(vec4<bool>(false, true, true, false))), any(select(vec2<bool>(false, true), vec2<bool>(true, false), true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(389f, -910f, arg_0.a.b) - vec3<f32>(arg_0.d.c, arg_0.d.b, -895f)) - vec3<f32>(arg_0.d.c, arg_0.a.c, _wgslsmith_f_op_f32(arg_0.d.c + 778f)))), _wgslsmith_f_op_f32(floor(arg_0.d.b)));
    global2 = array<Struct_4, 31>();
    global2 = array<Struct_4, 31>();
    var var_1 = select(vec4<bool>(all(var_0.b.b), all(vec3<bool>(!var_0.b.b.x, any(vec2<bool>(false, false)), var_0.b.b.x)), true, !var_0.b.b.x), vec4<bool>(_wgslsmith_div_i32(arg_0.b.x ^ arg_1, 0i) <= ~(-77231i), var_0.b.b.x, false, var_0.b.b.x), -659f > _wgslsmith_f_op_f32(274f * var_0.c.x));
    return _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(arg_0.b, arg_0.d.d.wyz), min(-select(vec3<i32>(arg_0.a.d.x, var_0.a, -2147483647i), vec3<i32>(arg_0.d.d.x, -2147483647i, 3961i), !var_1.x), vec3<i32>(-51964i, -countOneBits(-6515i), -1i)));
}

fn func_5(arg_0: Struct_5) -> Struct_1 {
    let var_0 = Struct_5(Struct_4(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(reverseBits(u_input.b), select(u_input.b, 19390u, false)), ~12730u, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(77673u, 4294967295u, u_input.b, 4294967295u), vec4<u32>(7031u, 97752u, 111458u, arg_0.c.x)))), arg_0.a.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.b), _wgslsmith_f_op_f32(select(arg_0.d.c, 194f, true))))), -vec4<i32>(arg_0.d.d.x, -54763i, -34225i, arg_0.d.d.x) ^ arg_0.d.d), -(_wgslsmith_add_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 18u)], 2147483647i, 11696i), arg_0.b) | vec3<i32>(~(-2630i), i32(-1i) * -1i, 45852i)), vec2<u32>(~(~reverseBits(u_input.b)), u_input.b), arg_0.d);
    global2 = array<Struct_4, 31>();
    var var_1 = _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.c.x, u_input.b, var_0.a.a, ~abs(arg_0.d.a)), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(0u, arg_0.a.a, var_0.a.a, 0u)), vec4<u32>(u_input.a.x, arg_0.d.a, arg_0.a.a, arg_0.d.a)), ~vec4<u32>(arg_0.a.a, arg_0.d.a, var_0.d.a, var_0.d.a))) ^ abs(~(~(~vec4<u32>(40629u, 43540u, u_input.a.x, 1u))));
    global2 = array<Struct_4, 31>();
    global2 = array<Struct_4, 31>();
    return Struct_1(arg_0.a.a, _wgslsmith_sub_u32(38164u, ~abs(1u ^ var_0.a.a)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.c))), _wgslsmith_f_op_f32(var_0.d.c + _wgslsmith_f_op_f32(f32(-1f) * -112f))), vec3<bool>(false, !all(vec4<bool>(true, false, false, false)), !(max(-1i, -1i) != max(global0.x, arg_0.a.d.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_5(Struct_4(37784u, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(211f)), _wgslsmith_f_op_f32(2457f - 1000f))), _wgslsmith_f_op_f32(-686f - -671f), min(~vec4<i32>(-16992i, -48608i, 2147483647i, global0.x), _wgslsmith_add_vec4_i32(vec4<i32>(24279i, global0.x, global0.x, global1[_wgslsmith_index_u32(25331u, 18u)]), vec4<i32>(-2147483647i, -2147483647i, -2147483647i, 53041i)))), func_4(Struct_5(Struct_4(u_input.b, 257f, -119f, vec4<i32>(-3405i, 2147483647i, -23594i, 32008i)), -vec3<i32>(2147483647i, global0.x, 35082i), u_input.a, func_1(false, Struct_2(1u, vec3<bool>(true, false, true)))), select(global1[_wgslsmith_index_u32(0u, 18u)], firstTrailingBit(global0.x), true)), min(_wgslsmith_clamp_vec2_u32(max(vec2<u32>(64083u, 4294967295u), vec2<u32>(4756u, 1u)), ~u_input.a, vec2<u32>(u_input.b, u_input.b)), firstLeadingBit(u_input.a)), Struct_4(u_input.b, 1f, 1f, select(~vec4<i32>(-2147483647i, global0.x, global1[_wgslsmith_index_u32(u_input.a.x, 18u)], 0i), func_1(true, Struct_2(u_input.a.x, vec3<bool>(true, false, true))).d, select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), true)))));
    global1 = array<i32, 18>();
    var var_1 = Struct_1(~_wgslsmith_div_u32(u_input.a.x, ~_wgslsmith_clamp_u32(36348u, 19359u, var_0.b)), ~u_input.a.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_0.c.x, _wgslsmith_div_f32(var_0.c.x, -559f)), _wgslsmith_f_op_f32(floor(-224f)))), func_5(Struct_5(global2[_wgslsmith_index_u32(33198u, 31u)], func_1(false, Struct_2(14876u, vec3<bool>(false, var_0.d.x, var_0.d.x))).d.yxx, ~u_input.a, Struct_4(_wgslsmith_clamp_u32(u_input.b, 0u, 0u), _wgslsmith_f_op_f32(310f + var_0.c.x), _wgslsmith_f_op_f32(-var_0.c.x), vec4<i32>(global1[_wgslsmith_index_u32(var_0.b, 18u)], global0.x, global1[_wgslsmith_index_u32(var_0.a, 18u)], global0.x) | vec4<i32>(global0.x, -13982i, global1[_wgslsmith_index_u32(0u, 18u)], -4114i)))).d);
    let var_2 = max(vec4<u32>(var_1.a, ~_wgslsmith_sub_u32(10710u, 8490u) & abs(~u_input.b), _wgslsmith_sub_u32(u_input.b, _wgslsmith_mult_u32(var_1.a, ~7045u)), ~(~var_1.b)), vec4<u32>(0u, ~var_1.b ^ ~select(u_input.b, var_0.b, var_0.d.x), ~u_input.b, countOneBits(0u)));
    var var_3 = firstLeadingBit(vec3<u32>(~(~var_2.x), _wgslsmith_mult_u32(8506u, var_1.b), 54315u));
    var_0 = Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(abs(var_2.zzy), ~firstLeadingBit(vec3<u32>(var_3.x, 1u, 10121u))), var_2.yxw), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 43821u, reverseBits(_wgslsmith_sub_u32(var_2.x, var_1.a)), _wgslsmith_mult_u32(16990u, var_1.a | 59556u)), ~(~var_2 | var_2)), var_0.c, var_1.d);
    var var_4 = -5776i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-582f, var_0.c.x, -276f) - vec3<f32>(-342f, var_1.c.x, var_0.c.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1098f, var_1.c.x, var_1.c.x) + vec3<f32>(var_0.c.x, var_1.c.x, var_1.c.x)))))), 1000f, reverseBits(~abs(_wgslsmith_clamp_vec4_u32(var_2, vec4<u32>(9891u, 2276u, 1u, u_input.a.x), vec4<u32>(u_input.a.x, var_2.x, 0u, 33116u)))));
}

