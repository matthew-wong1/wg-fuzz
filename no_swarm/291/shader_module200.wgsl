struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20> = array<i32, 20>(i32(-2147483648), 8572i, 2147483647i, 2147483647i, i32(-2147483648), 1810i, -1i, i32(-2147483648), i32(-2147483648), 0i, -74012i, -1i, 1i, 2147483647i, 30571i, i32(-2147483648), 15606i, 0i, i32(-2147483648), -191i);

var<private> global1: u32 = 31141u;

var<private> global2: array<u32, 31> = array<u32, 31>(94614u, 1u, 24503u, 1u, 2777u, 0u, 1u, 1u, 1u, 0u, 0u, 1u, 24560u, 1u, 31728u, 1u, 15469u, 39182u, 42177u, 17496u, 11155u, 1u, 1u, 0u, 13547u, 54012u, 6889u, 27976u, 4294967295u, 1u, 29659u);

var<private> global3: Struct_1 = Struct_1(2147483647i);

var<private> global4: array<vec2<i32>, 17>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, _wgslsmith_f_op_f32(min(665f, 225f)), -516f, -743f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(674f, -386f, 690f, -1276f) - vec4<f32>(-741f, 763f, -1683f, -479f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-208f, -1135f, 1261f, -1181f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 316f, 1324f, 328f), vec4<f32>(-110f, -288f, -266f, 666f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1598f, 2136f, -668f, -1223f)))))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-570f, 195f, -888f, -1992f) + vec4<f32>(1505f, -1622f, 103f, -750f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-709f, -792f, -414f, -918f)))), vec4<f32>(1f, 1f, 1f, 1f))))));
    let var_1 = select(!select(select(select(arg_0, vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), arg_0), !vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), !vec4<bool>(true, arg_0.x, false, true)), !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), true && !arg_0.x), vec4<bool>(arg_0.x, arg_0.x, true, false && arg_0.x), select(!arg_0, arg_0, arg_0));
    let var_2 = _wgslsmith_add_i32(max(countOneBits(-2147483647i), 11466i), arg_3.a);
    var var_3 = vec3<u32>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(firstLeadingBit(global2[_wgslsmith_index_u32(96862u, 31u)]), 12117u), 31u)], ~select(~firstLeadingBit(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(6183u, 31u)], 31u)]), 4294967295u, var_1.x), countOneBits(abs(~abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 31u)], 31u)], 31u)], 31u)]))));
    var var_4 = Struct_1(-1i);
    return _wgslsmith_dot_vec3_i32(arg_2, arg_2);
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    global1 = 1u;
    global3 = Struct_1(func_3(vec4<bool>(any(vec2<bool>(false, false)), any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false))), false, any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false))), Struct_1(_wgslsmith_div_i32(-60386i, 5267i | global3.a)), -(_wgslsmith_mod_vec3_i32(vec3<i32>(global3.a, 31098i, 62932i), vec3<i32>(global3.a, 2147483647i, -84190i)) ^ vec3<i32>(5975i, -33088i, 1i)), Struct_1(u_input.a.x)));
    var var_0 = 21554u;
    let var_1 = select(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec4<bool>(true, true, true, false))), !vec4<bool>(true, all(vec2<bool>(true, false)), true, true), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 1i), vec2<i32>(global0[_wgslsmith_index_u32(9682u, 20u)], global3.a)), _wgslsmith_sub_i32(u_input.a.x, global0[_wgslsmith_index_u32(0u, 20u)])) < global0[_wgslsmith_index_u32(arg_0.x, 20u)]), vec4<bool>(false, true, (countOneBits(arg_0.x) >> (~global2[_wgslsmith_index_u32(4294967295u, 31u)] % 32u)) <= _wgslsmith_sub_u32(max(11172u, 4294967295u), 30314u), true), any(select(vec3<bool>(true, select(false, false, false), true), vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(false, true, false)), any(vec4<bool>(false, true, true, false)), any(vec2<bool>(false, true))))));
    global0 = array<i32, 20>();
    return Struct_1(~(~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -1409i, global3.a), vec3<i32>(u_input.a.x, u_input.a.x, global3.a) ^ vec3<i32>(-4127i, global3.a, -2147483647i))));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global3 = func_2(abs(select(~vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(0u, 31u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 31u)], 31u)]) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(59359u, 31u)], 31u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 31u)], 31u)], 31u)], 31u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 31u)], 31u)], 31u)], 31u)], 31u)]), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(50041u, 31u)], 31u)], 31u)], 31u)], global2[_wgslsmith_index_u32(136401u, 31u)])) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(59954u, 1u, 86215u) >> (vec3<u32>(global2[_wgslsmith_index_u32(1u, 31u)], 29519u, global2[_wgslsmith_index_u32(0u, 31u)]) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(6049u, 31u)], 31u)], 31u)], 0u, 4294967295u), vec3<u32>(0u, 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(5780u, 31u)], 31u)], 31u)], 31u)]))), true)));
    let var_0 = func_2(vec3<u32>(global2[_wgslsmith_index_u32(35636u, 31u)], select(1u, _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(815u, 31u)], 31u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(44352u, 31u)], 31u)]), true), 8470u) << (vec3<u32>(firstLeadingBit(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(25086u, 31u)], 31u)], 31u)], 31u)]) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(59236u, 52211u, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 31u)], 31u)], 31u)], 31u)], 31u)], 31u)]), vec4<u32>(1u, 4294967295u, 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 31u)], 31u)], 31u)], 31u)], 31u)])), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 39645u, global2[_wgslsmith_index_u32(0u, 31u)]), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(1u, 31u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 31u)], 31u)], 31u)], 31u)], 31u)], 31u)], 31u)]), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], 31u)], 4294967295u, 4294967295u))), 19934u) % vec3<u32>(32u)));
    var var_1 = func_2(_wgslsmith_mod_vec3_u32(~(vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 31u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 31u)], 31u)], 31u)], 31u)], 31u)], 1u) >> (~vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 31u)], 31u)], 31u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 31u)], 31u)], 31u)], 31u)], 31u)], 31u)], 31u)], 4294967295u) % vec3<u32>(32u))), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, global2[_wgslsmith_index_u32(countOneBits(4294967295u), 31u)], max(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 31u)], 31u)], 31u)], global2[_wgslsmith_index_u32(1u, 31u)])), vec3<u32>(4294967295u, 83884u, 1u))));
    global0 = array<i32, 20>();
    global4 = array<vec2<i32>, 17>();
    return func_2(firstTrailingBit(_wgslsmith_add_vec3_u32(max(vec3<u32>(503u, global2[_wgslsmith_index_u32(20004u, 31u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 31u)], 31u)]), vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(1u, 31u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(16449u, 31u)], 31u)])), vec3<u32>(countOneBits(79259u), 1u, ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 31u)], 31u)]))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec2<u32> {
    global1 = ~global2[_wgslsmith_index_u32(4294967295u, 31u)];
    global2 = array<u32, 31>();
    global2 = array<u32, 31>();
    global2 = array<u32, 31>();
    global0 = array<i32, 20>();
    return vec2<u32>(_wgslsmith_clamp_u32(~(~_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(4294967295u, 31u)], 41177u)), firstTrailingBit(1u), global2[_wgslsmith_index_u32(~(~global2[_wgslsmith_index_u32(34857u, 31u)] | 4294967295u), 31u)]), reverseBits(countOneBits(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(0u, 31u)], global2[_wgslsmith_index_u32(47844u, 31u)], 1u, 0u), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(45623u, 31u)], 31u)], 31u)], global2[_wgslsmith_index_u32(4294967295u, 31u)], global2[_wgslsmith_index_u32(87362u, 31u)], global2[_wgslsmith_index_u32(74556u, 31u)]))))));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: f32) -> StorageBuffer {
    global0 = array<i32, 20>();
    var var_0 = all(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), false));
    let var_1 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_clamp_i32(firstTrailingBit(-1i), 0i, global3.a), -global0[_wgslsmith_index_u32(77018u, 20u)] & max(global3.a, global0[_wgslsmith_index_u32(arg_1.x, 20u)])), u_input.a.x), 42525i);
    var var_2 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(round(arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-920f)))), 646f)));
    var_0 = true;
    return StorageBuffer(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(reverseBits(arg_1.x), global2[_wgslsmith_index_u32(4294967295u ^ global2[_wgslsmith_index_u32(4963u, 31u)], 31u)]), arg_1), vec2<u32>(4294967295u, 33170u) >> (~_wgslsmith_mult_vec2_u32(arg_1, arg_1) % vec2<u32>(32u))), 17u)], -13359i, ~0u, select((_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(9148u, 31u)], 31u)], 31u)], 31u)], 28226u, 51793u) & ~global2[_wgslsmith_index_u32(43802u, 31u)]) ^ ~(arg_1.x << (40405u % 32u)), arg_1.x, true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 20>();
    let x = u_input.a;
    s_output = func_5(Struct_1(-global0[_wgslsmith_index_u32(~(~global2[_wgslsmith_index_u32(1u, 31u)]), 20u)]), func_4(Struct_1(-2147483647i), func_1(Struct_1(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], 20u)] << (46264u % 32u)))), _wgslsmith_f_op_f32(max(-131f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1013f, 1f)) * _wgslsmith_div_f32(142f, 1187f)))));
}

