struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<bool>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 1> = array<vec3<f32>, 1>(vec3<f32>(-1377f, -1126f, -1854f));

var<private> global1: array<bool, 12> = array<bool, 12>(true, false, true, true, true, false, true, true, false, true, true, false);

var<private> global2: array<vec3<u32>, 7>;

var<private> global3: array<u32, 14> = array<u32, 14>(4294967295u, 0u, 30324u, 4294967295u, 564u, 1u, 20604u, 25996u, 2660u, 0u, 1u, 0u, 16177u, 1u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> bool {
    global3 = array<u32, 14>();
    global1 = array<bool, 12>();
    var var_0 = arg_0;
    var var_1 = ~(-_wgslsmith_add_i32(~arg_0.a.x << ((global3[_wgslsmith_index_u32(14345u, 14u)] ^ 4294967295u) % 32u), _wgslsmith_mult_i32(var_0.a.x, u_input.e | var_0.a.x)));
    var var_2 = _wgslsmith_mod_vec2_i32(-abs(-vec2<i32>(1i, -1i)), ~vec2<i32>(1i, _wgslsmith_clamp_i32(-1i, u_input.e, u_input.c.x))) << (arg_1.ww % vec2<u32>(32u));
    return all(!vec3<bool>(true, var_0.c.x, arg_0.c.x));
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-1215f)), _wgslsmith_f_op_f32(f32(-1f) * -802f))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(403f, 2416f) - vec2<f32>(1916f, 199f)) - vec2<f32>(-153f, -897f)))))));
    let var_1 = select(!vec2<bool>(any(!vec4<bool>(global1[_wgslsmith_index_u32(69068u, 12u)], global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 14u)], 14u)], 14u)], 12u)], global1[_wgslsmith_index_u32(0u, 12u)])), true), !select(select(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 12u)], global1[_wgslsmith_index_u32(44582u, 12u)]), !vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 12u)]), func_3(Struct_1(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.d), vec2<u32>(global3[_wgslsmith_index_u32(u_input.b, 14u)], 109713u), vec3<bool>(true, false, global1[_wgslsmith_index_u32(0u, 12u)]), true), vec4<u32>(0u, 0u, 4294967295u, global3[_wgslsmith_index_u32(u_input.a, 14u)]))), vec2<bool>(true, true), !vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 12u)])), !select(select(select(vec2<bool>(global1[_wgslsmith_index_u32(0u, 12u)], true), vec2<bool>(false, true), false), !vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 12u)]), !global1[_wgslsmith_index_u32(u_input.a, 12u)]), !(!vec2<bool>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 14u)], 12u)], global1[_wgslsmith_index_u32(19069u, 12u)])), vec2<bool>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 14u)], 12u)] || global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 14u)], 12u)], u_input.a < 1u)));
    let var_2 = Struct_3(global2[_wgslsmith_index_u32((19480u << (global3[_wgslsmith_index_u32(9140u, 14u)] % 32u)) & 1u, 7u)] << (abs(~vec3<u32>(20324u, 0u, global3[_wgslsmith_index_u32(u_input.b, 14u)])) % vec3<u32>(32u)), Struct_1(select(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d, -1i, -1i, -35916i) ^ vec4<i32>(u_input.d, -2147483647i, 0i, 8634i), ~vec4<i32>(u_input.d, 14i, -2147483647i, u_input.d)), vec4<i32>(u_input.c.x & u_input.d, reverseBits(0i), 1i, ~u_input.e), vec4<bool>(func_3(Struct_1(vec4<i32>(u_input.c.x, u_input.c.x, -2147483647i, u_input.c.x), vec2<u32>(u_input.a, 4294967295u), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 12u)], var_1.x, var_1.x), var_1.x), vec4<u32>(u_input.b, u_input.a, 4294967295u, global3[_wgslsmith_index_u32(4294967295u, 14u)])), true, !var_1.x, true)), vec2<u32>(15209u, 1u), select(!select(vec3<bool>(var_1.x, true, true), vec3<bool>(true, false, var_1.x), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 12u)], false, var_1.x)), !select(vec3<bool>(true, true, true), vec3<bool>(false, var_1.x, var_1.x), false), var_1.x), -(-1i ^ u_input.d) <= -1i), !(_wgslsmith_mod_u32(1u & u_input.b, 9208u) > 0u), Struct_1(vec4<i32>(u_input.e, -u_input.c.x, _wgslsmith_sub_i32(-15036i, _wgslsmith_add_i32(u_input.e, u_input.c.x)), _wgslsmith_sub_i32(0i, 29547i)), vec2<u32>(firstLeadingBit(~u_input.a), reverseBits(u_input.a)), select(select(!vec3<bool>(global1[_wgslsmith_index_u32(21672u, 12u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 14u)], 12u)], false), vec3<bool>(true, true, true), true), !vec3<bool>(false, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(5664u, 14u)], 12u)], global1[_wgslsmith_index_u32(1u, 12u)]), select(vec3<bool>(true, false, var_1.x), select(vec3<bool>(var_1.x, var_1.x, global1[_wgslsmith_index_u32(u_input.a, 12u)]), vec3<bool>(true, true, global1[_wgslsmith_index_u32(u_input.b, 12u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 12u)], true, false)), select(vec3<bool>(var_1.x, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 14u)], 12u)], var_1.x), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 12u)], global1[_wgslsmith_index_u32(u_input.b, 12u)]), global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 14u)], 14u)], 12u)]))), true), !(!vec4<bool>(var_1.x, true, all(vec4<bool>(global1[_wgslsmith_index_u32(73477u, 12u)], var_1.x, var_1.x, true)), true)));
    global0 = array<vec3<f32>, 1>();
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, -392f))) * _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(step(-949f, _wgslsmith_f_op_f32(var_0.x + -1988f))), var_1.x))), 679f, _wgslsmith_f_op_f32(min(1237f, -304f)));
    return _wgslsmith_f_op_f32(-var_3.x);
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: f32) -> u32 {
    let var_0 = Struct_2(Struct_1(vec4<i32>(abs(u_input.d), u_input.c.x, ~max(u_input.e, u_input.c.x), 14396i), vec2<u32>(~reverseBits(42252u), _wgslsmith_mod_u32(~arg_1, select(33650u, global3[_wgslsmith_index_u32(u_input.b, 14u)], true))), select(select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 12u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_1, 14u)], 12u)], global1[_wgslsmith_index_u32(17036u, 12u)]), vec3<bool>(false, false, true), !vec3<bool>(global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(arg_1, 12u)])), !select(vec3<bool>(global1[_wgslsmith_index_u32(arg_1, 12u)], global1[_wgslsmith_index_u32(1u, 12u)], true), vec3<bool>(global1[_wgslsmith_index_u32(0u, 12u)], true, global1[_wgslsmith_index_u32(4294967295u, 12u)]), vec3<bool>(global1[_wgslsmith_index_u32(55228u, 12u)], global1[_wgslsmith_index_u32(4294967295u, 12u)], false)), all(select(vec3<bool>(global1[_wgslsmith_index_u32(15665u, 12u)], false, true), vec3<bool>(false, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_1, 14u)], 12u)], false), true))), !global1[_wgslsmith_index_u32(1u, 12u)]), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, 587f, arg_0) + _wgslsmith_div_vec3_f32(global0[_wgslsmith_index_u32(29063u, 1u)], vec3<f32>(arg_2, 464f, 388f))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global0[_wgslsmith_index_u32(0u, 1u)])), _wgslsmith_f_op_vec3_f32(step(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(11920u, 14u)], 1u)], vec3<f32>(arg_2, 886f, arg_2)))))))), Struct_1(min(-vec4<i32>(u_input.e, 1i, -2147483647i, u_input.c.x), vec4<i32>(~1i, ~(-1i), -u_input.c.x, u_input.d)), vec2<u32>(~(~68912u), ~select(0u, 1u, false)), select(vec3<bool>(global1[_wgslsmith_index_u32(5641u, 12u)], any(vec4<bool>(false, false, true, false)), true), vec3<bool>(true, true, !global1[_wgslsmith_index_u32(98272u, 12u)]), !(!vec3<bool>(true, global1[_wgslsmith_index_u32(arg_1, 12u)], true))), !global1[_wgslsmith_index_u32(abs(4294967295u), 12u)]));
    var var_1 = arg_2;
    let var_2 = true;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(sign(-957f)), -852f, arg_2, arg_2);
    var var_4 = var_0.c.a.x;
    return max(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(reverseBits(u_input.b), global3[_wgslsmith_index_u32(19235u, 14u)], global3[_wgslsmith_index_u32(60871u, 14u)] >> (13292u % 32u))), ~(~vec3<u32>(u_input.b, 0u, 0u) << (countOneBits(vec3<u32>(34334u, u_input.b, 1u)) % vec3<u32>(32u)))), arg_1);
}

fn func_5(arg_0: vec2<f32>, arg_1: u32, arg_2: i32, arg_3: u32) -> vec3<bool> {
    global1 = array<bool, 12>();
    global3 = array<u32, 14>();
    let var_0 = firstLeadingBit(abs(reverseBits(~(~52702u))));
    let var_1 = -1046f;
    let var_2 = Struct_2(Struct_1(vec4<i32>(-1i) * -abs(vec4<i32>(-2147483647i, 15679i, arg_2, 31457i)), ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(46720u, arg_1), vec2<u32>(1u, var_0))), !select(select(vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 12u)], false), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 12u)], true, global1[_wgslsmith_index_u32(u_input.b, 12u)]), global1[_wgslsmith_index_u32(arg_3, 12u)]), select(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 12u)], global1[_wgslsmith_index_u32(4294967295u, 12u)]), vec3<bool>(global1[_wgslsmith_index_u32(var_0, 12u)], false, false), vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(4294967295u, 12u)])), true), 77456u != (~arg_3 >> (_wgslsmith_mod_u32(0u, global3[_wgslsmith_index_u32(1u, 14u)]) % 32u))), global0[_wgslsmith_index_u32(~max(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_1, global3[_wgslsmith_index_u32(var_0 & arg_3, 14u)]), 14u)], var_0), 1u)], Struct_1(-select(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2593i, 64548i, u_input.d, -1i), vec4<i32>(-2147483647i, arg_2, arg_2, arg_2), vec4<i32>(u_input.e, 2147483647i, arg_2, u_input.c.x)), -vec4<i32>(arg_2, arg_2, u_input.d, -7207i), vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(4294967295u, 12u)])), abs((vec2<u32>(var_0, arg_3) << (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u))) >> (max(vec2<u32>(0u, arg_3), vec2<u32>(global3[_wgslsmith_index_u32(4294967295u, 14u)], 1u)) % vec2<u32>(32u))), !select(!vec3<bool>(true, global1[_wgslsmith_index_u32(12359u, 12u)], global1[_wgslsmith_index_u32(u_input.a, 12u)]), vec3<bool>(false, false, true), vec3<bool>(global1[_wgslsmith_index_u32(0u, 12u)], true, false)), true));
    return !select(!(!var_2.c.c), !var_2.c.c, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(min(firstLeadingBit(arg_3), ~4294967295u), 7u)], vec3<u32>(var_0, arg_1, u_input.a)), 12u)]);
}

fn func_1(arg_0: u32, arg_1: bool) -> Struct_3 {
    let var_0 = func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(1546f)), _wgslsmith_f_op_f32(-1148f * -835f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1752f, -1558f))))), func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * 1133f), ~(~1u), 2145f), min(_wgslsmith_mult_i32(max(~u_input.e, firstTrailingBit(-20790i)), _wgslsmith_add_i32(-2147483647i, u_input.e) | ~8651i), _wgslsmith_add_i32(-u_input.d >> (30092u % 32u), 1i)), ~(arg_0 ^ ~_wgslsmith_sub_u32(16981u, u_input.a)));
    var var_1 = Struct_2(Struct_1(abs(firstTrailingBit(vec4<i32>(13825i, u_input.c.x, -2147483647i, u_input.c.x))), _wgslsmith_div_vec2_u32(~(~vec2<u32>(arg_0, 6594u)), ~vec2<u32>(arg_0, 7916u)), var_0, func_5(_wgslsmith_div_vec2_f32(vec2<f32>(-500f, -434f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2099f, -202f))), reverseBits(arg_0), abs(u_input.d), ~global3[_wgslsmith_index_u32(u_input.a, 14u)] >> (~4294967295u % 32u)).x), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-148f, -1109f)), -513f)) + _wgslsmith_f_op_f32(f32(-1f) * -321f)), 2996f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1619f, 167f))))), Struct_1(-abs(~vec4<i32>(u_input.c.x, u_input.e, u_input.c.x, -17442i)), vec2<u32>(firstTrailingBit(u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(1u, 14u)], 4294967295u, 1u, 0u), abs(vec4<u32>(global3[_wgslsmith_index_u32(arg_0, 14u)], 28083u, global3[_wgslsmith_index_u32(0u, 14u)], u_input.a)))), select(select(vec3<bool>(true, var_0.x, false), !vec3<bool>(var_0.x, arg_1, global1[_wgslsmith_index_u32(1u, 12u)]), var_0), var_0, var_0), global1[_wgslsmith_index_u32(4294967295u, 12u)]));
    let var_2 = var_1.a;
    var var_3 = vec2<i32>(-1i, 1i) << (~_wgslsmith_div_vec2_u32(select(var_2.b, vec2<u32>(var_1.a.b.x, var_1.c.b.x), func_5(vec2<f32>(1237f, -827f), 74313u, -2147483647i, 94006u).x), ~(~vec2<u32>(global3[_wgslsmith_index_u32(var_2.b.x, 14u)], arg_0))) % vec2<u32>(32u));
    global2 = array<vec3<u32>, 7>();
    return Struct_3(firstTrailingBit(~(~vec3<u32>(global3[_wgslsmith_index_u32(u_input.a, 14u)], 81179u, var_2.b.x))) >> (select(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, var_2.b.x, global3[_wgslsmith_index_u32(arg_0, 14u)]) & global2[_wgslsmith_index_u32(1u, 7u)], global2[_wgslsmith_index_u32(0u, 7u)] << (global2[_wgslsmith_index_u32(37280u, 7u)] % vec3<u32>(32u))), ~select(vec3<u32>(0u, u_input.a, var_1.c.b.x), vec3<u32>(arg_0, var_2.b.x, 0u), var_0.x), !var_2.c) % vec3<u32>(32u)), var_1.c, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(arg_0, var_2.b.x, var_2.b.x, u_input.b)), vec4<u32>(0u >> (1u % 32u), ~global3[_wgslsmith_index_u32(5349u, 14u)], _wgslsmith_dot_vec2_u32(var_2.b, vec2<u32>(0u, u_input.a)), select(1u, 0u, false))), 12u)] | (var_0.x | false), Struct_1(vec4<i32>(-13284i, -var_2.a.x, 23334i, var_2.a.x), vec2<u32>(26752u, ~_wgslsmith_add_u32(3450u, 51274u)), !vec3<bool>(false, arg_1, var_1.c.c.x || false), !(_wgslsmith_mod_i32(2147483647i, -9311i) > ~var_2.a.x)), select(!vec4<bool>(true, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_2.b.x, var_2.b.x), 12u)], var_2.a.x <= -14903i, true && arg_1), !(!(!vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 12u)], false, false, true))), !(!vec4<bool>(var_2.c.x, false, var_1.a.d, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<u32, 14>();
    let var_0 = func_1(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(~1u, _wgslsmith_add_u32(9162u, _wgslsmith_div_u32(global3[_wgslsmith_index_u32(38078u, 14u)], 1u))), 4294967295u), 14u)], 14u)], 13836u == u_input.b);
    let var_1 = Struct_2(Struct_1(vec4<i32>(-1i) * -firstLeadingBit(vec4<i32>(0i, 0i, var_0.b.a.x, -27056i)), firstLeadingBit(vec2<u32>(u_input.a, 41383u)) >> (min(var_0.d.b | vec2<u32>(22667u, 3429u), firstTrailingBit(vec2<u32>(4294967295u, 23034u))) % vec2<u32>(32u)), func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-644f, 817f) - vec2<f32>(974f, 1052f))), _wgslsmith_dot_vec3_u32(vec3<u32>(58102u, var_0.a.x, u_input.b) ^ var_0.a, global2[_wgslsmith_index_u32(firstTrailingBit(8922u), 7u)]), 14261i, abs(56416u)), var_0.c), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(185f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-741f + 1024f))), _wgslsmith_f_op_f32(floor(-748f))), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2()), _wgslsmith_div_f32(-671f, -2072f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -327f))), 1f)), var_0.d);
    let var_2 = var_0;
    var var_3 = func_1(_wgslsmith_dot_vec2_u32(abs(firstLeadingBit(firstTrailingBit(vec2<u32>(var_1.c.b.x, 4294967295u)))), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, 31902u, global3[_wgslsmith_index_u32(82972u, 14u)]) & vec4<u32>(global3[_wgslsmith_index_u32(0u, 14u)], var_2.b.b.x, var_0.d.b.x, var_1.a.b.x), ~vec4<u32>(var_1.c.b.x, var_1.a.b.x, u_input.b, var_0.d.b.x)), ~0u)), true);
    global0 = array<vec3<f32>, 1>();
    let var_4 = ~max(min(_wgslsmith_mod_vec4_u32(vec4<u32>(var_3.a.x, var_2.d.b.x, 75150u, var_3.d.b.x), vec4<u32>(34338u, var_1.a.b.x, 474u, var_0.b.b.x)) >> (vec4<u32>(1u, var_0.a.x, var_0.b.b.x, 0u) % vec4<u32>(32u)), vec4<u32>(66441u >> (0u % 32u), ~global3[_wgslsmith_index_u32(var_2.a.x, 14u)], _wgslsmith_div_u32(1u, 1u), 28203u)), select(firstLeadingBit(vec4<u32>(u_input.a, var_2.b.b.x, 27098u, global3[_wgslsmith_index_u32(u_input.a, 14u)]) << (vec4<u32>(14236u, 111666u, 442u, 1u) % vec4<u32>(32u))), firstLeadingBit(vec4<u32>(var_1.a.b.x, 13060u, var_1.a.b.x, 0u) | vec4<u32>(0u, var_2.a.x, 21761u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 14u)], 14u)], 14u)])), var_2.e));
    let x = u_input.a;
    s_output = StorageBuffer(~24494u, 0u);
}

