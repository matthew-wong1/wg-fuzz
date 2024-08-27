struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<u32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 10>;

var<private> global1: array<f32, 22> = array<f32, 22>(-267f, -314f, 1141f, -1390f, -1000f, -1188f, -619f, 259f, -208f, -184f, 2430f, -550f, -552f, 452f, 570f, 503f, -1228f, 872f, -1000f, -538f, 833f, 705f);

var<private> global2: array<bool, 20> = array<bool, 20>(false, true, true, false, true, false, false, false, true, true, false, false, true, false, true, true, true, true, false, true);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = 1u;
    var var_1 = Struct_1(arg_1.xy);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-1f), -1070f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1317f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-771f - global1[_wgslsmith_index_u32(4294967295u, 22u)]) - 972f)))));
    global1 = array<f32, 22>();
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_2.xz))));
    return Struct_1(~(~vec2<u32>(~arg_1.x, var_1.a.x)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_1 {
    global0 = array<vec4<u32>, 10>();
    global0 = array<vec4<u32>, 10>();
    var var_0 = ~select(select(max(arg_2, _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, 8138i))), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, arg_2.x), vec2<i32>(61538i, arg_2.x)), select(vec2<bool>(true, true), select(vec2<bool>(true, global2[_wgslsmith_index_u32(19533u, 20u)]), vec2<bool>(global2[_wgslsmith_index_u32(34529u, 20u)], global2[_wgslsmith_index_u32(arg_1.a.x, 20u)]), vec2<bool>(global2[_wgslsmith_index_u32(arg_1.a.x, 20u)], false)), arg_1.a.x >= arg_1.a.x)), _wgslsmith_add_vec2_i32(abs(u_input.a), ~(-vec2<i32>(5177i, u_input.a.x))), 937f <= global1[_wgslsmith_index_u32(~arg_1.a.x, 22u)]);
    var var_1 = _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, -55601i << (1u % 32u), -2147483647i, -29540i), vec4<i32>(var_0.x, 1i, 2147483647i, arg_2.x))), vec3<i32>(92640i, _wgslsmith_sub_i32(-21604i, ~13925i), ~arg_2.x) << (max(~(vec3<u32>(55052u, 1u, 4294967295u) >> (vec3<u32>(1323u, 1u, arg_0.a.x) % vec3<u32>(32u))), vec3<u32>(max(arg_0.a.x, arg_1.a.x), ~1u, func_2(vec3<f32>(global1[_wgslsmith_index_u32(arg_0.a.x, 22u)], 654f, global1[_wgslsmith_index_u32(4294967295u, 22u)]), vec4<u32>(1u, 0u, arg_1.a.x, arg_1.a.x), vec3<bool>(global2[_wgslsmith_index_u32(0u, 20u)], true, true)).a.x)) % vec3<u32>(32u)), reverseBits(abs(max(~vec3<i32>(33404i, arg_2.x, arg_2.x), vec3<i32>(1i, 27924i, 21704i)))));
    var var_2 = true;
    return func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1770f, 1000f, global1[_wgslsmith_index_u32(4294967295u, 22u)]))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(949f, -1979f, global1[_wgslsmith_index_u32(0u, 22u)])) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-804f, -1169f, -1437f) - vec3<f32>(340f, global1[_wgslsmith_index_u32(arg_0.a.x, 22u)], global1[_wgslsmith_index_u32(57177u, 22u)]))), true)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(187f, global1[_wgslsmith_index_u32(arg_1.a.x, 22u)], -1676f) - vec3<f32>(136f, global1[_wgslsmith_index_u32(50035u, 22u)], global1[_wgslsmith_index_u32(74631u, 22u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(1u, 22u)], global1[_wgslsmith_index_u32(4294967295u, 22u)], 1736f) * vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 22u)], 2439f, global1[_wgslsmith_index_u32(arg_0.a.x, 22u)]))))), ~vec4<u32>(_wgslsmith_mod_u32(arg_1.a.x, _wgslsmith_sub_u32(arg_1.a.x, 1u)), arg_0.a.x << (arg_1.a.x % 32u), ~reverseBits(arg_0.a.x), arg_1.a.x), select(!vec3<bool>(true, global2[_wgslsmith_index_u32(~4294967295u, 20u)], false), select(select(!vec3<bool>(global2[_wgslsmith_index_u32(arg_1.a.x, 20u)], global2[_wgslsmith_index_u32(arg_1.a.x, 20u)], true), select(vec3<bool>(true, false, global2[_wgslsmith_index_u32(arg_1.a.x, 20u)]), vec3<bool>(true, false, global2[_wgslsmith_index_u32(arg_0.a.x, 20u)]), true), false), vec3<bool>(!global2[_wgslsmith_index_u32(arg_1.a.x, 20u)], global2[_wgslsmith_index_u32(41416u, 20u)] & global2[_wgslsmith_index_u32(arg_1.a.x, 20u)], false), (global2[_wgslsmith_index_u32(arg_0.a.x, 20u)] & global2[_wgslsmith_index_u32(45650u, 20u)]) | global2[_wgslsmith_index_u32(68962u, 20u)]), !global2[_wgslsmith_index_u32(arg_1.a.x, 20u)]));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(arg_0.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.x), -700f, 30619i < u_input.a.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1567f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(535f - arg_0.d.x) - _wgslsmith_f_op_f32(f32(-1f) * -1506f)), arg_1.x)), vec4<bool>(true, true, all(vec4<bool>(arg_0.b.x, !arg_0.b.x, all(vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x)), !global2[_wgslsmith_index_u32(arg_0.a.a.x, 20u)])), arg_0.b.x)));
    global2 = array<bool, 20>();
    let var_1 = ~(vec2<i32>(u_input.a.x, ~(i32(-1i) * -1i)) | vec2<i32>(u_input.a.x ^ _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 1i), vec2<i32>(u_input.a.x, u_input.a.x)), max(60949i, u_input.a.x)));
    let var_2 = arg_0.d.zw;
    let var_3 = ~arg_0.a.a.x < 36686u;
    return _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.a.a.x, arg_0.c.x << (70133u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(11878u, 0u), arg_0.c.yx)), arg_0.c.wzw), abs(~(~vec3<u32>(1u, arg_0.a.a.x, arg_0.c.x)))) >> (26184u % 32u);
}

fn func_1(arg_0: vec4<u32>, arg_1: f32) -> Struct_3 {
    let var_0 = vec4<bool>(all(!(!(!vec2<bool>(false, global2[_wgslsmith_index_u32(arg_0.x, 20u)])))), global2[_wgslsmith_index_u32(8385u, 20u)], global2[_wgslsmith_index_u32(func_4(Struct_2(func_3(Struct_1(vec2<u32>(arg_0.x, 1u)), func_2(vec3<f32>(arg_1, -822f, -2926f), global0[_wgslsmith_index_u32(arg_0.x, 10u)], vec3<bool>(global2[_wgslsmith_index_u32(1u, 20u)], false, global2[_wgslsmith_index_u32(4294967295u, 20u)])), u_input.a >> (vec2<u32>(arg_0.x, 0u) % vec2<u32>(32u))), vec2<bool>(arg_1 <= 617f, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_0.yz, vec2<u32>(4004u, 0u)), 20u)]), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 1u), vec4<u32>(arg_0.x, 0u, 4294967295u, 48574u), global2[_wgslsmith_index_u32(arg_0.x, 20u)]), firstLeadingBit(vec4<u32>(arg_0.x, arg_0.x, 32619u, arg_0.x)), countOneBits(vec4<u32>(0u, arg_0.x, 35681u, arg_0.x))), _wgslsmith_div_vec4_f32(vec4<f32>(-404f, arg_1, arg_1, global1[_wgslsmith_index_u32(arg_0.x, 22u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(24544u, 22u)], -868f, global1[_wgslsmith_index_u32(4515u, 22u)], global1[_wgslsmith_index_u32(arg_0.x, 22u)])))), vec2<f32>(arg_1, arg_1)), 20u)], global2[_wgslsmith_index_u32(4294967295u, 20u)]);
    global0 = array<vec4<u32>, 10>();
    global0 = array<vec4<u32>, 10>();
    global1 = array<f32, 22>();
    var var_1 = Struct_3(var_0, firstTrailingBit(_wgslsmith_add_u32(~3028u, ~arg_0.x) | (_wgslsmith_dot_vec3_u32(arg_0.yyw, arg_0.wzw) & 4294967295u)));
    return Struct_3(var_1.a, ~_wgslsmith_sub_u32(52534u, 0u));
}

fn func_5(arg_0: f32, arg_1: Struct_3, arg_2: i32, arg_3: f32) -> Struct_1 {
    var var_0 = arg_1.a.x;
    let var_1 = Struct_3(func_1(~vec4<u32>(~arg_1.b, ~arg_1.b, arg_1.b, ~arg_1.b), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(min(arg_1.b, 17421u), 22u)])).a, firstTrailingBit(~(1u | min(arg_1.b, arg_1.b))));
    let var_2 = vec2<i32>(-1i) * -max(-u_input.a & ~vec2<i32>(u_input.a.x, 0i), -vec2<i32>(-1i, arg_2));
    var var_3 = var_1.b;
    let var_4 = Struct_3(select(select(!select(vec4<bool>(arg_1.a.x, true, global2[_wgslsmith_index_u32(arg_1.b, 20u)], var_1.a.x), vec4<bool>(true, var_1.a.x, false, false), vec4<bool>(false, true, var_1.a.x, var_1.a.x)), var_1.a, vec4<bool>(arg_1.a.x == true, global2[_wgslsmith_index_u32(reverseBits(var_1.b), 20u)], false & var_1.a.x, true)), arg_1.a, all(vec2<bool>(false & var_1.a.x, !var_1.a.x))), _wgslsmith_mod_u32(arg_1.b, var_1.b));
    return Struct_1(~(firstTrailingBit(~vec2<u32>(var_1.b, 0u)) & vec2<u32>(0u, ~32410u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(0u, 22u)];
    let var_1 = ~1u;
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(616f, -1000f, _wgslsmith_f_op_f32(select(-2311f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 22u)], global1[_wgslsmith_index_u32(var_1, 22u)])), global2[_wgslsmith_index_u32(~1u, 20u)]))));
    let var_3 = global1[_wgslsmith_index_u32(firstTrailingBit(firstTrailingBit(var_1) << ((~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1, var_1), vec2<u32>(1u, 17546u)) & ~_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(92825u, 10u)], vec4<u32>(var_1, var_1, var_1, var_1))) % 32u)), 22u)];
    let var_4 = func_5(649f, func_1(global0[_wgslsmith_index_u32(var_1, 10u)], global1[_wgslsmith_index_u32(min(var_1, (4294967295u | var_1) | ~var_1), 22u)]), ~(i32(-1i) * -39899i), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(5749u, 22u)]) * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(23834u, 22u)])), _wgslsmith_div_f32(-148f, _wgslsmith_f_op_f32(-1000f * global1[_wgslsmith_index_u32(4294967295u, 22u)]))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_1, 22u)])))))));
    global1 = array<f32, 22>();
    var var_5 = select(~(~vec3<u32>(var_4.a.x, var_1 >> (1u % 32u), 119630u)), ~(~(vec3<u32>(var_1, var_4.a.x, var_1) ^ vec3<u32>(1u, var_4.a.x, var_4.a.x))) << (firstTrailingBit(~select(vec3<u32>(13409u, var_4.a.x, var_1), vec3<u32>(0u, 4294967295u, 1u), global2[_wgslsmith_index_u32(14243u, 20u)])) % vec3<u32>(32u)), true);
    global2 = array<bool, 20>();
    var var_6 = vec3<u32>(var_1, _wgslsmith_sub_u32(var_5.x, var_4.a.x), ~(~_wgslsmith_dot_vec2_u32(var_4.a, var_5.xx)) ^ ~0u);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.zy);
}

