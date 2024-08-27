struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec3<f32>,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<u32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: Struct_1,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8> = array<f32, 8>(2509f, 1289f, -1276f, -231f, 613f, 483f, 1000f, 377f);

var<private> global1: array<Struct_4, 4>;

var<private> global2: array<bool, 18>;

var<private> global3: f32;

var<private> global4: array<Struct_4, 27> = array<Struct_4, 27>(Struct_4(vec3<bool>(false, false, false), vec3<u32>(43064u, 18057u, 0u)), Struct_4(vec3<bool>(true, false, true), vec3<u32>(56615u, 0u, 4294967295u)), Struct_4(vec3<bool>(true, true, true), vec3<u32>(4294967295u, 0u, 0u)), Struct_4(vec3<bool>(true, false, true), vec3<u32>(0u, 19628u, 1u)), Struct_4(vec3<bool>(false, true, false), vec3<u32>(0u, 4294967295u, 24951u)), Struct_4(vec3<bool>(false, false, true), vec3<u32>(39026u, 29172u, 18860u)), Struct_4(vec3<bool>(false, true, false), vec3<u32>(4294967295u, 50298u, 90678u)), Struct_4(vec3<bool>(true, true, false), vec3<u32>(0u, 1u, 21303u)), Struct_4(vec3<bool>(true, false, false), vec3<u32>(1u, 50943u, 25117u)), Struct_4(vec3<bool>(false, false, false), vec3<u32>(1653u, 53035u, 80921u)), Struct_4(vec3<bool>(false, false, false), vec3<u32>(14536u, 68601u, 67108u)), Struct_4(vec3<bool>(true, true, true), vec3<u32>(1u, 0u, 0u)), Struct_4(vec3<bool>(false, false, false), vec3<u32>(21003u, 1u, 4294967295u)), Struct_4(vec3<bool>(false, false, true), vec3<u32>(121174u, 4294967295u, 0u)), Struct_4(vec3<bool>(false, false, true), vec3<u32>(1u, 1u, 75501u)), Struct_4(vec3<bool>(true, false, true), vec3<u32>(1u, 63832u, 4294967295u)), Struct_4(vec3<bool>(false, false, false), vec3<u32>(30658u, 21387u, 11359u)), Struct_4(vec3<bool>(true, false, true), vec3<u32>(18655u, 62125u, 0u)), Struct_4(vec3<bool>(true, true, false), vec3<u32>(1u, 34926u, 57145u)), Struct_4(vec3<bool>(true, false, false), vec3<u32>(4294967295u, 0u, 0u)), Struct_4(vec3<bool>(false, true, true), vec3<u32>(32189u, 4294967295u, 0u)), Struct_4(vec3<bool>(true, true, false), vec3<u32>(0u, 0u, 1u)), Struct_4(vec3<bool>(false, true, true), vec3<u32>(11262u, 1u, 6018u)), Struct_4(vec3<bool>(false, true, true), vec3<u32>(48546u, 24208u, 24442u)), Struct_4(vec3<bool>(false, true, true), vec3<u32>(4294967295u, 45880u, 1u)), Struct_4(vec3<bool>(true, false, false), vec3<u32>(128487u, 3775u, 4294967295u)), Struct_4(vec3<bool>(false, true, true), vec3<u32>(1u, 30699u, 0u)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    global0 = array<f32, 8>();
    global3 = _wgslsmith_f_op_f32(round(-1000f));
    var var_0 = ~vec3<i32>(abs(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(9052i, 51740i, -12792i), vec3<i32>(u_input.b, u_input.b, 36706i)), _wgslsmith_sub_i32(u_input.b, 1i))), 20419i >> (u_input.a.x % 32u), -38141i);
    var var_1 = -var_0.x;
    global2 = array<bool, 18>();
    return 1u >> (u_input.a.x % 32u);
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: Struct_3, arg_3: Struct_3) -> vec2<bool> {
    global4 = array<Struct_4, 27>();
    var var_0 = ~min(vec4<u32>(_wgslsmith_mod_u32(u_input.a.x, arg_0), _wgslsmith_clamp_u32(u_input.a.x, 4294967295u, 15253u), func_3(vec3<bool>(arg_2.b.x, false, global2[_wgslsmith_index_u32(u_input.a.x, 18u)])), abs(u_input.a.x)) ^ vec4<u32>(arg_0, arg_0, ~4294967295u, ~arg_0), ~_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0, u_input.a.x, 0u, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, 1869u, 25952u)), select(vec4<u32>(0u, u_input.a.x, 32347u, 0u), vec4<u32>(15021u, u_input.a.x, 1u, 44384u), vec4<bool>(arg_1, true, true, arg_2.a.x))));
    global4 = array<Struct_4, 27>();
    var_0 = ~max(abs(vec4<u32>(2644u, arg_0, arg_0, 1u)) >> (vec4<u32>(107002u & var_0.x, 4294967295u, abs(var_0.x), 15333u) % vec4<u32>(32u)), min(max(vec4<u32>(arg_0, 0u, 12863u, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(33954u, arg_0, u_input.a.x, 1u), vec4<u32>(u_input.a.x, var_0.x, arg_0, 4294967295u))), max(~vec4<u32>(arg_0, 40149u, 0u, arg_0), ~vec4<u32>(0u, 25703u, 4294967295u, var_0.x))));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(144f, _wgslsmith_f_op_f32(f32(-1f) * -1326f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1816f, -628f)), arg_2.e.a.x))));
    return select(!vec2<bool>(global2[_wgslsmith_index_u32(~(~1u), 18u)], all(vec4<bool>(true, true, arg_1, true))), !select(vec2<bool>(false, global0[_wgslsmith_index_u32(26715u, 8u)] <= global0[_wgslsmith_index_u32(1u, 8u)]), arg_3.e.a, !global2[_wgslsmith_index_u32(u_input.a.x, 18u)]), select(vec2<bool>(arg_3.b.x, select(any(arg_3.a.zz), global2[_wgslsmith_index_u32(1u, 18u)] & false, false)), vec2<bool>(arg_1, arg_3.b.x != all(arg_3.b)), !(!arg_2.a.yz)));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec4<u32>) -> Struct_2 {
    let var_0 = 16371u;
    global0 = array<f32, 8>();
    var var_1 = Struct_2(arg_0.a);
    var var_2 = -vec2<i32>(_wgslsmith_mod_i32(2147483647i, 1i), _wgslsmith_div_i32(u_input.b, 1i) | -28666i) ^ vec2<i32>(firstTrailingBit(22561i), -2147483647i);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-555f, global0[_wgslsmith_index_u32(abs(0u), 8u)], !arg_0.a.x)));
    return Struct_2(vec2<bool>(var_1.a.x, false));
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: vec3<i32>) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(abs(4294967295u), 8u)])), -2042f, true)));
    return _wgslsmith_f_op_vec4_f32(select(vec4<f32>(290f, global0[_wgslsmith_index_u32(select(~u_input.a.x, arg_1, global2[_wgslsmith_index_u32(~abs(9638u), 18u)]), 8u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) - global0[_wgslsmith_index_u32(u_input.a.x, 8u)]), _wgslsmith_f_op_f32(f32(-1f) * -905f)), _wgslsmith_f_op_f32(max(396f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 8u)] * global0[_wgslsmith_index_u32(u_input.a.x, 8u)])))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0[_wgslsmith_index_u32(arg_1, 8u)], -955f, global0[_wgslsmith_index_u32(19792u, 8u)], global0[_wgslsmith_index_u32(1383u, 8u)]))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1514f, global0[_wgslsmith_index_u32(arg_1, 8u)], global0[_wgslsmith_index_u32(15821u, 8u)], global0[_wgslsmith_index_u32(arg_1, 8u)])), false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-481f, 1307f, global0[_wgslsmith_index_u32(22524u, 8u)], 1500f))))), !vec4<bool>(!(global2[_wgslsmith_index_u32(u_input.a.x, 18u)] & false), !(true && global2[_wgslsmith_index_u32(u_input.a.x, 18u)]), any(arg_0.a), false)));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_5(func_4(Struct_2(func_2(10732u, global2[_wgslsmith_index_u32(u_input.a.x, 18u)], Struct_3(vec3<bool>(false, true, false), vec3<bool>(global2[_wgslsmith_index_u32(19310u, 18u)], global2[_wgslsmith_index_u32(u_input.a.x, 18u)], false), vec3<f32>(-1199f, arg_2, -718f), u_input.b, Struct_2(vec2<bool>(false, false))), Struct_3(vec3<bool>(false, false, global2[_wgslsmith_index_u32(2408u, 18u)]), vec3<bool>(global2[_wgslsmith_index_u32(0u, 18u)], global2[_wgslsmith_index_u32(1u, 18u)], true), vec3<f32>(global0[_wgslsmith_index_u32(1u, 8u)], 765f, arg_2), 2147483647i, Struct_2(vec2<bool>(global2[_wgslsmith_index_u32(arg_1, 18u)], true))))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 4294967295u), u_input.a), 8u)], ~(~vec4<u32>(arg_1, arg_1, arg_1, u_input.a.x))), 4294967295u, abs(~(~vec3<i32>(5420i, -48858i, u_input.b))))));
    let var_1 = Struct_5(vec4<i32>(i32(-1i) * -1548i, _wgslsmith_add_i32(u_input.b, 33267i) & (i32(-1i) * -1i), u_input.b, u_input.b), max(firstLeadingBit(~(~vec3<u32>(u_input.a.x, 27815u, 41482u))), ~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, u_input.a.x, 4294967295u, 0u), vec4<u32>(u_input.a.x, 144785u, u_input.a.x, 81477u)), 62659u, 33597u)), Struct_1(vec4<u32>(select(~arg_1, u_input.a.x, global2[_wgslsmith_index_u32(1u, 18u)]), ~4294967295u, func_3(select(vec3<bool>(false, global2[_wgslsmith_index_u32(1u, 18u)], global2[_wgslsmith_index_u32(35572u, 18u)]), vec3<bool>(global2[_wgslsmith_index_u32(arg_1, 18u)], global2[_wgslsmith_index_u32(91147u, 18u)], global2[_wgslsmith_index_u32(1u, 18u)]), vec3<bool>(false, global2[_wgslsmith_index_u32(arg_1, 18u)], global2[_wgslsmith_index_u32(arg_1, 18u)]))), ~(~arg_1))), max(abs(_wgslsmith_sub_u32(arg_1, arg_1)), max(reverseBits(14828u), arg_1)) >> ((u_input.a.x << (~select(arg_1, u_input.a.x, global2[_wgslsmith_index_u32(57534u, 18u)]) % 32u)) % 32u), Struct_2(func_2(_wgslsmith_dot_vec2_u32(u_input.a.yz, ~vec2<u32>(1u, arg_1)), any(func_2(u_input.a.x, false, Struct_3(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 18u)], true, false), vec3<bool>(global2[_wgslsmith_index_u32(0u, 18u)], true, true), var_0.wzy, u_input.b, Struct_2(vec2<bool>(global2[_wgslsmith_index_u32(44272u, 18u)], global2[_wgslsmith_index_u32(u_input.a.x, 18u)]))), Struct_3(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 18u)], global2[_wgslsmith_index_u32(1u, 18u)], true), vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 18u)], global2[_wgslsmith_index_u32(arg_1, 18u)]), var_0.xwz, 27088i, Struct_2(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 18u)], global2[_wgslsmith_index_u32(u_input.a.x, 18u)]))))), Struct_3(vec3<bool>(global2[_wgslsmith_index_u32(29876u, 18u)], global2[_wgslsmith_index_u32(4294967295u, 18u)], global2[_wgslsmith_index_u32(1u, 18u)]), !vec3<bool>(global2[_wgslsmith_index_u32(11466u, 18u)], global2[_wgslsmith_index_u32(43903u, 18u)], false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(arg_1, 8u)], -761f, arg_2)), u_input.b, func_4(Struct_2(vec2<bool>(global2[_wgslsmith_index_u32(arg_1, 18u)], true)), -450f, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 51600u))), Struct_3(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 18u)], global2[_wgslsmith_index_u32(30674u, 18u)], true), !vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 18u)], global2[_wgslsmith_index_u32(arg_1, 18u)]), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0, var_0.x, -355f))), u_input.b, func_4(Struct_2(vec2<bool>(true, false)), 248f, vec4<u32>(4294967295u, 4294967295u, 1u, arg_1))))));
    var var_2 = Struct_4(vec3<bool>(-(i32(-1i) * -4420i) <= -(u_input.b | var_1.a.x), all(vec3<bool>(var_1.e.a.x, false || var_1.e.a.x, all(vec4<bool>(false, false, true, global2[_wgslsmith_index_u32(33976u, 18u)])))), var_0.x != 2071f), ~abs(vec3<u32>(11323u, 47744u, func_3(vec3<bool>(false, var_1.e.a.x, var_1.e.a.x)))));
    global1 = array<Struct_4, 4>();
    let var_3 = func_4(Struct_2(vec2<bool>(true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(firstTrailingBit(66230u), 8u)]) + var_0.x) * arg_2), var_1.c.a);
    return var_3;
}

fn func_6(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec3<u32>) -> u32 {
    global3 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(44223u, firstTrailingBit(5977u & _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2.x, 72232u, arg_2.x, arg_2.x), ~vec4<u32>(6283u, 4294967295u, 4294967295u, u_input.a.x)))), 8u)];
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(18687u, ~(~arg_2.x)), 4u)];
    let var_1 = func_2(arg_2.x, !func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(109u, 8u)] * arg_1.x)), var_0.b.x ^ _wgslsmith_mult_u32(arg_2.x, var_0.b.x), arg_1.x).a.x, Struct_3(select(vec3<bool>(false, false || global2[_wgslsmith_index_u32(4294967295u, 18u)], false), var_0.a, !select(vec3<bool>(false, global2[_wgslsmith_index_u32(5091u, 18u)], global2[_wgslsmith_index_u32(arg_2.x, 18u)]), var_0.a, var_0.a.x)), vec3<bool>(func_4(arg_0, arg_1.x, vec4<u32>(arg_2.x, 36737u, 7510u, u_input.a.x)).a.x, func_1(-263f, 4294967295u, _wgslsmith_f_op_f32(-arg_1.x)).a.x, any(!vec2<bool>(var_0.a.x, var_0.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-135f, 644f, -185f))))) - _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1864f, -1000f, global0[_wgslsmith_index_u32(arg_2.x, 8u)]), vec3<f32>(arg_1.x, arg_1.x, global0[_wgslsmith_index_u32(43409u, 8u)])), _wgslsmith_f_op_vec3_f32(arg_1 * arg_1))), countOneBits(1i), func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(2048f)), _wgslsmith_f_op_f32(-1584f + -466f)), _wgslsmith_div_u32(~u_input.a.x, u_input.a.x), _wgslsmith_f_op_f32(step(-828f, global0[_wgslsmith_index_u32(~75944u, 8u)])))), Struct_3(select(var_0.a, var_0.a, arg_0.a.x), var_0.a, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-558f, global0[_wgslsmith_index_u32(u_input.a.x, 8u)], global0[_wgslsmith_index_u32(0u, 8u)]))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1 - arg_1) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1891f, global0[_wgslsmith_index_u32(u_input.a.x, 8u)], global0[_wgslsmith_index_u32(arg_2.x, 8u)]))))), _wgslsmith_add_i32(u_input.b | _wgslsmith_div_i32(u_input.b, u_input.b), ~(-23754i | u_input.b)), func_4(Struct_2(!arg_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(5457u, 8u)], -436f, var_0.a.x)) - _wgslsmith_div_f32(global0[_wgslsmith_index_u32(arg_2.x, 8u)], -213f)), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(628u, u_input.a.x, 8951u, 1u), vec4<u32>(u_input.a.x, 4294967295u, var_0.b.x, 61144u)), ~vec4<u32>(0u, arg_2.x, u_input.a.x, var_0.b.x))))).x;
    let var_2 = reverseBits(firstLeadingBit(_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, u_input.b, 10725i), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, 17118i, u_input.b), vec3<i32>(u_input.b, u_input.b, 49026i))), vec3<i32>(firstLeadingBit(10047i), _wgslsmith_mod_i32(2147483647i, u_input.b), reverseBits(0i)))));
    var var_3 = ~(-9788i);
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.a.x;
    global0 = array<f32, 8>();
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1223f)))) - -1284f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(func_6(func_1(_wgslsmith_f_op_f32(1000f - -997f), var_0, _wgslsmith_f_op_f32(1000f - -1506f)), vec3<f32>(_wgslsmith_div_f32(-1032f, 1035f), _wgslsmith_f_op_vec4_f32(func_5(Struct_2(vec2<bool>(global2[_wgslsmith_index_u32(0u, 18u)], false)), 1u, vec3<i32>(1907i, 2147483647i, 43704i))).x, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 8u)])), u_input.a), 8u)] - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-1109f)), global0[_wgslsmith_index_u32(102289u | u_input.a.x, 8u)])))))));
    let var_2 = Struct_3(vec3<bool>(!(true && !global2[_wgslsmith_index_u32(3319u, 18u)]), true, func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0, 8u)])), 1u, _wgslsmith_f_op_f32(min(var_1, _wgslsmith_f_op_vec4_f32(func_5(Struct_2(vec2<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 18u)])), 81026u, vec3<i32>(1i, u_input.b, u_input.b))).x))).a.x), vec3<bool>(global2[_wgslsmith_index_u32(0u >> (~var_0 % 32u), 18u)], global2[_wgslsmith_index_u32(606u, 18u)], any(vec3<bool>(true, func_1(global0[_wgslsmith_index_u32(var_0, 8u)], var_0, 708f).a.x, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-596f, 511f, 1f)), ~(-52861i), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0, 8u)]) - _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 1u, 14060u), u_input.a), 8u)]))), _wgslsmith_mult_u32(81618u, firstLeadingBit(u_input.a.x)) | ~(u_input.a.x | var_0), _wgslsmith_f_op_f32(-var_1)));
    global1 = array<Struct_4, 4>();
    global2 = array<bool, 18>();
    let var_3 = vec3<i32>(var_2.d, u_input.b, ~abs(~u_input.b << (_wgslsmith_add_u32(var_0, 4294967295u) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 122f, global0[_wgslsmith_index_u32(var_0, 8u)], 1901f) - vec4<f32>(global0[_wgslsmith_index_u32(19586u, 8u)], 1686f, var_2.c.x, var_2.c.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-242f, 548f, global0[_wgslsmith_index_u32(u_input.a.x, 8u)], 192f), vec4<f32>(var_1, -1117f, var_1, -1805f), vec4<bool>(true, global2[_wgslsmith_index_u32(var_0, 18u)], global2[_wgslsmith_index_u32(u_input.a.x, 18u)], true))))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(1u, 8u)]))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1), 1000f)), _wgslsmith_div_f32(116f, _wgslsmith_f_op_f32(f32(-1f) * -546f)), var_1)), ~(~vec3<i32>(-15356i, 2147483647i, var_2.d)) >> (abs(vec3<u32>(~u_input.a.x, var_0, 97302u)) % vec3<u32>(32u)), _wgslsmith_add_vec4_i32(~vec4<i32>(0i, abs(u_input.b), var_2.d, 1i), vec4<i32>(~firstLeadingBit(0i), var_3.x, -_wgslsmith_mod_i32(-23473i, var_3.x), -reverseBits(u_input.b))), _wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(var_0), u_input.a.x), vec2<u32>(_wgslsmith_add_u32(countOneBits(var_0), _wgslsmith_clamp_u32(u_input.a.x, 60010u, var_0)), ~(~var_0))));
}

