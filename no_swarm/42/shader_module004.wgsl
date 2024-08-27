struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31> = array<f32, 31>(-1000f, 918f, 1374f, 257f, 1000f, -1138f, 1627f, 1335f, 356f, 342f, -147f, -739f, -642f, -1343f, -155f, 1759f, 156f, 518f, -2562f, 403f, -1000f, 1000f, -1133f, -922f, 702f, -556f, 1029f, -615f, -867f, 620f, 1924f);

var<private> global1: array<u32, 4>;

var<private> global2: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec2<i32>(2879i, 0i)), Struct_1(vec2<i32>(-11717i, 40128i)), Struct_1(vec2<i32>(0i, 0i)), Struct_1(vec2<i32>(2147483647i, -102010i)), Struct_1(vec2<i32>(i32(-2147483648), -31874i)), Struct_1(vec2<i32>(-1i, -1i)), Struct_1(vec2<i32>(9375i, 44139i)), Struct_1(vec2<i32>(1i, -4369i)), Struct_1(vec2<i32>(0i, 61936i)), Struct_1(vec2<i32>(29771i, -37414i)), Struct_1(vec2<i32>(19241i, i32(-2147483648))), Struct_1(vec2<i32>(i32(-2147483648), 0i)), Struct_1(vec2<i32>(-34324i, -6430i)), Struct_1(vec2<i32>(-29570i, -64158i)), Struct_1(vec2<i32>(-13886i, -56035i)), Struct_1(vec2<i32>(27718i, -28435i)), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i)), Struct_1(vec2<i32>(-277i, 34553i)));

var<private> global3: array<i32, 4> = array<i32, 4>(i32(-2147483648), -17253i, -1i, -31029i);

var<private> global4: array<bool, 9>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = all(vec2<bool>(any(vec4<bool>(false, any(vec2<bool>(global4[_wgslsmith_index_u32(u_input.a, 9u)], global4[_wgslsmith_index_u32(0u, 9u)])), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 4u)], 4u)], 4u)] >= 90500u, true)), global4[_wgslsmith_index_u32(~u_input.a, 9u)]));
    let var_1 = global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(3722u, u_input.b) & ~vec2<u32>(22030u, 69661u)), _wgslsmith_div_vec2_u32(vec2<u32>(1u | u_input.b, 32538u << (global1[_wgslsmith_index_u32(1u, 4u)] % 32u)), ~abs(vec2<u32>(88300u, 28859u)))), 4u)], 4u)], 18u)];
    let var_2 = global0[_wgslsmith_index_u32(1u, 31u)];
    global4 = array<bool, 9>();
    var var_3 = arg_0;
    return _wgslsmith_div_u32(~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(u_input.a, 4u)], u_input.b), min(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 4u)], 4u)], global1[_wgslsmith_index_u32(72501u, 4u)]), vec2<u32>(u_input.a, u_input.a))), 4u)], ~(~firstTrailingBit(global1[_wgslsmith_index_u32(u_input.b, 4u)]))) >> (0u % 32u);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = Struct_1(max(vec2<i32>(1i, 1i) >> (max(vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 4u)], global1[_wgslsmith_index_u32(0u, 4u)]) & vec2<u32>(0u, u_input.a), _wgslsmith_mod_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(u_input.b, 4u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(22528u, 4u)], 4u)]), vec2<u32>(46101u, u_input.a))) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(arg_2.a, _wgslsmith_mult_vec2_i32(vec2<i32>(1i, global3[_wgslsmith_index_u32(29863u, 4u)]), arg_0.a))));
    global0 = array<f32, 31>();
    var var_1 = ~vec2<u32>(~0u, global1[_wgslsmith_index_u32(0u, 4u)]);
    let var_2 = -(~2147483647i | ~((-2147483647i >> (global1[_wgslsmith_index_u32(50074u, 4u)] % 32u)) & arg_2.a.x));
    global0 = array<f32, 31>();
    return ~vec4<u32>(~min(1u, 1u), 30528u, 4294967295u, 91155u);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<f32>) -> vec4<i32> {
    global0 = array<f32, 31>();
    var var_0 = true;
    global4 = array<bool, 9>();
    return vec4<i32>(reverseBits(global3[_wgslsmith_index_u32(44148u, 4u)]), firstTrailingBit(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, ~1u, _wgslsmith_add_u32(u_input.b, 38599u), 1u ^ global1[_wgslsmith_index_u32(64078u, 4u)]), func_3(Struct_1(vec2<i32>(0i, 13096i)), _wgslsmith_div_f32(-1257f, global0[_wgslsmith_index_u32(u_input.a, 31u)]), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(reverseBits(u_input.a), 4u)], 18u)])), 4u)]), 2147483647i, ~global3[_wgslsmith_index_u32(1u, 4u)] | _wgslsmith_div_i32(~(~1i), -1i));
}

fn func_4(arg_0: vec4<i32>, arg_1: u32) -> Struct_1 {
    global0 = array<f32, 31>();
    global0 = array<f32, 31>();
    global2 = array<Struct_1, 18>();
    return Struct_1(arg_0.wy);
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> Struct_1 {
    let var_0 = -505f >= global0[_wgslsmith_index_u32(~1u, 31u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(345f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(815f, -1003f)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(arg_0, 31u)], global0[_wgslsmith_index_u32(0u, 31u)])), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0[_wgslsmith_index_u32(4371u, 31u)], -1307f), vec2<f32>(-1116f, 438f), false)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -665f), _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(9694u, 31u)])))));
    return Struct_1(-select(max(vec2<i32>(0i, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0, 4u)], 4u)]), vec2<i32>(arg_1.a.x, arg_2)) & (arg_1.a & arg_1.a), reverseBits(~vec2<i32>(-29220i, global3[_wgslsmith_index_u32(arg_0, 4u)])), any(select(vec3<bool>(true, true, global4[_wgslsmith_index_u32(arg_0, 9u)]), vec3<bool>(true, var_0, var_0), var_0))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 16626u;
    global4 = array<bool, 9>();
    let var_1 = func_5(_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(~abs(global1[_wgslsmith_index_u32(u_input.b, 4u)]), 4u)], 14789u, ~_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(12631u, 4u)], var_0)), vec3<u32>(~countOneBits(u_input.b), _wgslsmith_mult_u32(~u_input.b, func_1(global2[_wgslsmith_index_u32(0u, 18u)])), global1[_wgslsmith_index_u32(reverseBits(3829u), 4u)])), func_4(func_2(!vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 9u)], global4[_wgslsmith_index_u32(var_0, 9u)], false), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-338f, 1828f, 2528f))))), func_3(Struct_1(func_2(vec3<bool>(false, false, false), vec3<f32>(global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(42179u, 31u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0, 4u)], 4u)], 31u)])).yy), _wgslsmith_f_op_f32(f32(-1f) * -1073f), global2[_wgslsmith_index_u32(~u_input.b, 18u)]).x), global3[_wgslsmith_index_u32(~103676u, 4u)], ~(~func_3(Struct_1(vec2<i32>(global3[_wgslsmith_index_u32(u_input.b, 4u)], -63293i)), 325f, Struct_1(vec2<i32>(global3[_wgslsmith_index_u32(4294967295u, 4u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 4u)], 4u)]))).x) != ~_wgslsmith_clamp_u32(var_0, var_0, _wgslsmith_div_u32(global1[_wgslsmith_index_u32(5155u, 4u)], var_0)));
    global1 = array<u32, 4>();
    global0 = array<f32, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(9148i, func_5(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 16981u, 1u, var_0), vec4<u32>(17230u, 0u, u_input.b, var_0)), 4294967295u), func_4(vec4<i32>(var_1.a.x, var_1.a.x, -2147483647i, 8161i) >> (vec4<u32>(u_input.a, 1u, var_0, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 4u)], 4u)]) % vec4<u32>(32u)), ~1u), var_1.a.x, true).a.x, ~(-var_1.a.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(10241i, var_1.a.x, 14220i, 13671i), ~(firstLeadingBit(vec4<i32>(-24026i, var_1.a.x, global3[_wgslsmith_index_u32(35042u, 4u)], -19836i)) ^ vec4<i32>(var_1.a.x, var_1.a.x, -36904i, -2147483647i))), ~(vec2<i32>(-1i) * -(vec2<i32>(var_1.a.x, 0i) << (vec2<u32>(u_input.b, var_0) % vec2<u32>(32u)))));
}

