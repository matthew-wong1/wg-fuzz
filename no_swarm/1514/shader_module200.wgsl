struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: Struct_2;

var<private> global2: Struct_1 = Struct_1(54699u, vec3<u32>(70569u, 7642u, 1u));

var<private> global3: array<bool, 7> = array<bool, 7>(true, true, false, false, false, true, false);

var<private> global4: vec4<u32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2) -> f32 {
    global0 = array<Struct_1, 7>();
    let var_0 = all(select(vec4<bool>(true || arg_0.x, global3[_wgslsmith_index_u32(firstTrailingBit(~arg_1.a.b.x), 7u)], false, global3[_wgslsmith_index_u32(global4.x | global4.x, 7u)]), !(!select(vec4<bool>(arg_0.x, arg_0.x, global3[_wgslsmith_index_u32(arg_1.a.b.x, 7u)], false), vec4<bool>(false, arg_0.x, global3[_wgslsmith_index_u32(global1.a.a, 7u)], arg_0.x), arg_0.x)), global3[_wgslsmith_index_u32(abs(global2.a), 7u)] && true));
    let var_1 = 1u;
    let var_2 = vec4<u32>(max(_wgslsmith_dot_vec4_u32(u_input.a ^ u_input.a, ~u_input.a) | global2.a, max(~(~4294967295u), countOneBits(global4.x))), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 0u, 4294967295u, arg_1.a.a), vec4<u32>(max(1u, global4.x), ~reverseBits(global4.x), ~reverseBits(u_input.b), firstLeadingBit(~global1.a.a))), 49890u, _wgslsmith_dot_vec2_u32(~vec2<u32>(global2.b.x, 1u), reverseBits(u_input.a.zy)) << (_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(global4.xy, global4.zx) << (2052u % 32u), reverseBits(_wgslsmith_dot_vec3_u32(u_input.a.yyw, u_input.a.yzy))) % 32u));
    let var_3 = _wgslsmith_f_op_f32(step(385f, -367f));
    return _wgslsmith_f_op_f32(var_3 - -826f);
}

fn func_2() -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<bool>(1u >= global1.a.a, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2.b.x, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), 7u)], any(vec4<bool>(global3[_wgslsmith_index_u32(53474u, 7u)], global3[_wgslsmith_index_u32(u_input.d, 7u)], false, false))), Struct_2(global0[_wgslsmith_index_u32(4294967295u, 7u)]))));
    var var_1 = _wgslsmith_clamp_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, 2147483647i, u_input.c), vec3<i32>(-22511i, 10441i, 1i), min(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(-1i, 2147483647i, -4307i))), vec3<i32>(countOneBits(u_input.c), ~countOneBits(-2147483647i), 48227i), vec3<i32>(~(-u_input.c), abs(-47263i), 38826i)) ^ _wgslsmith_mod_vec3_i32(abs(vec3<i32>(2147483647i, 1i, u_input.c)) >> (_wgslsmith_mod_vec3_u32(max(global1.a.b, vec3<u32>(12140u, global2.a, global2.b.x)), vec3<u32>(global4.x, global4.x, global1.a.a) & global2.b) % vec3<u32>(32u)), abs(vec3<i32>(i32(-1i) * -1i, -45831i, ~(-1i))));
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1972f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(465f, 347f) - -981f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -206f))) - 469f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-135f))))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: u32, arg_2: vec2<u32>, arg_3: vec4<bool>) -> Struct_1 {
    global1 = Struct_2(Struct_1(~global2.b.x, ~vec3<u32>(1u, arg_2.x, _wgslsmith_dot_vec3_u32(global2.b, global1.a.b))));
    global0 = array<Struct_1, 7>();
    let var_0 = max(_wgslsmith_clamp_i32(i32(-1i) * -(i32(-1i) * -14373i), abs(u_input.c), ~(~1i)), 0i);
    var var_1 = vec3<i32>(max(_wgslsmith_clamp_i32(abs(-1i), i32(-1i) * -45389i, -40796i) & var_0, -1i), var_0, _wgslsmith_dot_vec2_i32(-vec2<i32>(firstTrailingBit(var_0), _wgslsmith_add_i32(13575i, var_0)), countOneBits(firstTrailingBit(vec2<i32>(var_0, u_input.c)) >> (firstTrailingBit(vec2<u32>(global4.x, 1u)) % vec2<u32>(32u)))));
    global2 = global0[_wgslsmith_index_u32(countOneBits(u_input.b), 7u)];
    return global0[_wgslsmith_index_u32(~(~(~(~_wgslsmith_sub_u32(arg_1, 3959u)))), 7u)];
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: f32, arg_3: Struct_2) -> i32 {
    global2 = func_4(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2()) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2)))), vec2<f32>(arg_2, -235f))), global1.a.b.x, arg_0, !select(!vec4<bool>(false, false, global3[_wgslsmith_index_u32(0u, 7u)], global3[_wgslsmith_index_u32(arg_3.a.b.x, 7u)]), !select(vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 7u)], true, global3[_wgslsmith_index_u32(global2.a, 7u)], false), vec4<bool>(false, global3[_wgslsmith_index_u32(global2.a, 7u)], false, global3[_wgslsmith_index_u32(arg_3.a.b.x, 7u)]), vec4<bool>(false, true, global3[_wgslsmith_index_u32(global2.a, 7u)], global3[_wgslsmith_index_u32(arg_0.x, 7u)])), vec4<bool>(global3[_wgslsmith_index_u32(20000u, 7u)], true, !global3[_wgslsmith_index_u32(global4.x, 7u)], all(vec4<bool>(global3[_wgslsmith_index_u32(3263u, 7u)], true, global3[_wgslsmith_index_u32(arg_3.a.b.x, 7u)], global3[_wgslsmith_index_u32(arg_0.x, 7u)])))));
    global3 = array<bool, 7>();
    return ~2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(~(-func_1(vec2<u32>(u_input.b, 0u), -vec2<i32>(-2147483647i, 22782i), -1786f, Struct_2(Struct_1(61709u, u_input.a.xxz)))));
    global4 = firstTrailingBit(vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(global1.a.a, 1577u), ~4294967295u), global4.x, ~(~global1.a.a)), 73536u, 4294967295u, abs(global2.b.x)));
    global2 = func_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -524f)), -188f), ~_wgslsmith_mod_u32(~global2.b.x ^ ~0u, 1u), ~vec2<u32>(~_wgslsmith_clamp_u32(38765u, 64686u, 1u), ~min(global2.b.x, 72055u)), !(!vec4<bool>(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2.a, global2.b.x, 0u), 7u)], false, any(vec4<bool>(true, true, true, global3[_wgslsmith_index_u32(13953u, 7u)])), true)));
    let var_1 = u_input.c;
    global2 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(333f, -628f), vec2<f32>(1422f, 763f))))) + vec2<f32>(1f, 1f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-254f, -466f) + vec2<f32>(-1000f, -810f))))), firstLeadingBit(global1.a.b.x), func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 900f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1363f) * vec2<f32>(-906f, -775f)), !vec2<bool>(global3[_wgslsmith_index_u32(global1.a.b.x, 7u)], true))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(112f, -363f)))), global1.a.a, u_input.a.xw | vec2<u32>(global2.b.x, ~4294967295u), !select(vec4<bool>(global3[_wgslsmith_index_u32(global4.x, 7u)], false, global3[_wgslsmith_index_u32(57318u, 7u)], true), select(vec4<bool>(false, false, global3[_wgslsmith_index_u32(global4.x, 7u)], global3[_wgslsmith_index_u32(0u, 7u)]), vec4<bool>(global3[_wgslsmith_index_u32(22937u, 7u)], global3[_wgslsmith_index_u32(73465u, 7u)], global3[_wgslsmith_index_u32(u_input.a.x, 7u)], false), vec4<bool>(global3[_wgslsmith_index_u32(global1.a.a, 7u)], false, true, false)), vec4<bool>(false, true, global3[_wgslsmith_index_u32(global4.x, 7u)], global3[_wgslsmith_index_u32(0u, 7u)]))).b.xy, select(select(select(select(vec4<bool>(true, global3[_wgslsmith_index_u32(42486u, 7u)], global3[_wgslsmith_index_u32(34278u, 7u)], global3[_wgslsmith_index_u32(global4.x, 7u)]), vec4<bool>(true, global3[_wgslsmith_index_u32(global1.a.a, 7u)], global3[_wgslsmith_index_u32(u_input.d, 7u)], true), global3[_wgslsmith_index_u32(global2.a, 7u)]), !vec4<bool>(false, global3[_wgslsmith_index_u32(0u, 7u)], false, false), all(vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 7u)], false, global3[_wgslsmith_index_u32(global4.x, 7u)], true))), !vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 7u)], true, false, true), select(vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.b, 7u)], global3[_wgslsmith_index_u32(1u, 7u)], global3[_wgslsmith_index_u32(1u, 7u)]), !vec4<bool>(global3[_wgslsmith_index_u32(53148u, 7u)], global3[_wgslsmith_index_u32(1u, 7u)], false, false), global3[_wgslsmith_index_u32(global1.a.b.x ^ global4.x, 7u)])), vec4<bool>(global3[_wgslsmith_index_u32(global2.a, 7u)], true, false, global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~global2.b.x, global4.x), 7u)]), vec4<bool>(true, any(select(vec3<bool>(false, global3[_wgslsmith_index_u32(global1.a.b.x, 7u)], global3[_wgslsmith_index_u32(1u, 7u)]), vec3<bool>(false, true, true), global3[_wgslsmith_index_u32(4294967295u, 7u)])), global3[_wgslsmith_index_u32(17809u, 7u)], true)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-300f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(267f - -1553f), _wgslsmith_f_op_f32(-1000f - -2242f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-972f - 351f), _wgslsmith_f_op_f32(abs(733f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2047f, -392f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-233f * -1184f))))));
    global1 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(global1.a.b.yz << (~vec2<u32>(58666u, 12660u) % vec2<u32>(32u))), vec2<u32>(_wgslsmith_clamp_u32(123745u, countOneBits(4294967295u), _wgslsmith_clamp_u32(global1.a.a, 1u, 46572u)), 16850u)), 7u)]);
    var_0 = -reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(-2147483647i, -12065i, u_input.c), var_1, u_input.c >> (global1.a.a % 32u)), vec3<i32>(~u_input.c, 43241i, u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-828f)) * _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(abs(784f)))), _wgslsmith_f_op_f32(f32(-1f) * -571f), _wgslsmith_f_op_vec2_f32(func_2()).x, _wgslsmith_div_f32(123f, var_2.x)), firstTrailingBit(~_wgslsmith_add_vec2_i32(min(vec2<i32>(u_input.c, 2147483647i), vec2<i32>(var_1, u_input.c)), vec2<i32>(0i, 12325i))));
}

