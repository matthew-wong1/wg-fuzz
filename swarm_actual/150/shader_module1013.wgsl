struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16>;

var<private> global1: vec3<f32>;

var<private> global2: array<Struct_1, 32>;

var<private> global3: array<u32, 6>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_2) -> vec3<u32> {
    global0 = array<f32, 16>();
    global0 = array<f32, 16>();
    let var_0 = Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_2.a.d.x, 1u), 32u)], Struct_1(_wgslsmith_clamp_i32(_wgslsmith_div_i32(arg_2.b.a, _wgslsmith_div_i32(-1i, 2147483647i)), 11039i, ~(-1i)), arg_2.a.d.zx, _wgslsmith_div_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(abs(1397f)), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_2.c.b.x, u_input.a), 16u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-628f, 750f, arg_1))), vec3<u32>(global3[_wgslsmith_index_u32(reverseBits(reverseBits(u_input.d)), 6u)], 1u, global3[_wgslsmith_index_u32(~4294967295u, 6u)])), global2[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(43700u, 1u)) | (_wgslsmith_mult_u32(~arg_2.a.d.x, global3[_wgslsmith_index_u32(132220u, 6u)] ^ u_input.d) >> (select(_wgslsmith_sub_u32(u_input.d, 12900u), 105679u, true) % 32u)), 32u)]);
    var var_1 = global1.x;
    global3 = array<u32, 6>();
    return vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(4294967295u, 0u), var_0.c.d.x), u_input.d, 1u);
}

fn func_3() -> vec3<u32> {
    let var_0 = firstLeadingBit(4294967295u);
    let var_1 = Struct_1(u_input.b, _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(38825u, 4294967295u), select(select(vec2<u32>(0u, var_0), vec2<u32>(51454u, var_0), false), abs(vec2<u32>(4294967295u, u_input.a)), u_input.a == 1u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(var_0, 30568u) & vec2<u32>(25912u, 72344u), vec2<u32>(u_input.d, 0u)), ~vec2<u32>(u_input.d, var_0))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(310f, global1.x, global0[_wgslsmith_index_u32(1u, 16u)]) - vec3<f32>(global1.x, global0[_wgslsmith_index_u32(5264u, 16u)], global0[_wgslsmith_index_u32(34986u, 16u)])), vec3<f32>(global1.x, global1.x, global0[_wgslsmith_index_u32(1u, 16u)])))))), ~reverseBits((vec3<u32>(40218u, 4294967295u, 4294967295u) >> (vec3<u32>(4294967295u, 0u, global3[_wgslsmith_index_u32(10700u, 6u)]) % vec3<u32>(32u))) ^ ~vec3<u32>(u_input.a, var_0, 18242u)));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(892f))));
    let var_3 = Struct_3(1i, ~firstTrailingBit((vec4<i32>(u_input.b, 0i, u_input.b, var_1.a) ^ vec4<i32>(u_input.c, 32825i, var_1.a, var_1.a)) | vec4<i32>(2147483647i, u_input.b, var_1.a, 1i)), global2[_wgslsmith_index_u32(~(~4294967295u), 32u)]);
    global1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-2029f, global1.x, -1513f))))), var_3.c.c, -1i != _wgslsmith_mod_i32(1i, _wgslsmith_clamp_i32(u_input.b, u_input.c, -2356i))))));
    return firstLeadingBit(var_1.d);
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    global3 = array<u32, 6>();
    var var_0 = arg_0.c;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(739f * -994f) * global1.x), _wgslsmith_f_op_f32(arg_0.c.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - global0[_wgslsmith_index_u32(4524u, 16u)])))), var_0.x);
    let var_2 = 1u;
    var var_3 = var_2;
    return Struct_3(countOneBits(-25307i), (max(min(vec4<i32>(-26348i, -14926i, u_input.b, -32134i), vec4<i32>(u_input.c, arg_0.a, u_input.b, u_input.b)), -vec4<i32>(arg_0.a, u_input.c, 13889i, arg_0.a)) & _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.a, u_input.c, 23126i, 47852i), vec4<i32>(u_input.b, 40283i, -1i, -42876i), vec4<i32>(u_input.c, 1i, arg_0.a, arg_0.a)), vec4<i32>(20961i, u_input.b, -9485i, arg_0.a))) & (_wgslsmith_sub_vec4_i32(vec4<i32>(0i, arg_0.a, u_input.b, 2147483647i) & vec4<i32>(-11348i, u_input.b, arg_0.a, arg_0.a), vec4<i32>(arg_0.a, u_input.b, -66306i, 0i) >> (vec4<u32>(var_2, 4294967295u, 1u, 4294967295u) % vec4<u32>(32u))) | _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(42280i, -2147483647i, -1i, -18951i)), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, arg_0.a, u_input.c, -1i), vec4<i32>(1i, arg_0.a, -14006i, arg_0.a)))), Struct_1(_wgslsmith_div_i32(-50884i, u_input.b), arg_0.b, _wgslsmith_f_op_vec3_f32(-var_1), arg_0.d));
}

fn func_1(arg_0: f32, arg_1: vec2<u32>, arg_2: vec2<u32>) -> Struct_2 {
    let var_0 = func_4(Struct_1(_wgslsmith_add_i32(-(1i ^ u_input.c), _wgslsmith_mod_i32(u_input.c, u_input.b)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.a) ^ vec2<u32>(49813u, 4294967295u), vec2<u32>(1u, 0u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 16u)], _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(arg_2.x, 16u)])), _wgslsmith_f_op_f32(f32(-1f) * -1449f))), (vec3<u32>(4294967295u, arg_2.x, arg_1.x) ^ ~vec3<u32>(arg_1.x, 0u, u_input.d)) << ((func_2(vec3<i32>(33850i, u_input.c, u_input.b), arg_0, Struct_2(global2[_wgslsmith_index_u32(31962u, 32u)], global2[_wgslsmith_index_u32(1u, 32u)], Struct_1(u_input.c, vec2<u32>(u_input.a, 0u), vec3<f32>(arg_0, arg_0, 603f), vec3<u32>(4376u, 60310u, 8932u)))) | func_3()) % vec3<u32>(32u))));
    let var_1 = Struct_1(-3216i, _wgslsmith_mod_vec2_u32(vec2<u32>(36591u, abs(9973u)), ~vec2<u32>(1u, ~arg_2.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -321f))), _wgslsmith_f_op_f32(375f - _wgslsmith_f_op_f32(exp2(arg_0))), _wgslsmith_f_op_f32(-198f - _wgslsmith_f_op_f32(f32(-1f) * -1150f)))), var_0.c.d);
    global2 = array<Struct_1, 32>();
    let var_2 = select(!select(vec3<bool>(true, var_0.a < 46379i, any(vec4<bool>(false, true, false, false))), vec3<bool>(true, global1.x == -760f, all(vec3<bool>(false, true, true))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, false, false), all(vec3<bool>(false, true, true)))), select(vec3<bool>(true, false, true), !vec3<bool>(var_1.c.x == global1.x, true, false), vec3<bool>(true, any(vec3<bool>(true, true, true)), true)), all(select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, true), true), any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), true)))));
    let var_3 = Struct_4(-vec2<i32>(~var_0.b.x, -var_0.b.x) >> (~func_4(Struct_1(0i, vec2<u32>(4294967295u, arg_2.x), vec3<f32>(var_1.c.x, var_1.c.x, global1.x), var_1.d)).c.d.zy % vec2<u32>(32u)));
    return Struct_2(var_1, func_4(func_4(Struct_1(u_input.c << (11001u % 32u), vec2<u32>(1u, 0u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(618f, global0[_wgslsmith_index_u32(var_1.b.x, 16u)], -1113f)), var_0.c.d & vec3<u32>(1u, 0u, 19134u))).c).c, global2[_wgslsmith_index_u32(0u, 32u)]);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool, arg_3: vec3<i32>) -> vec4<bool> {
    let var_0 = !vec3<bool>(_wgslsmith_mod_u32(~u_input.d, u_input.d) <= _wgslsmith_dot_vec2_u32(max(vec2<u32>(46364u, 29343u), arg_0.a.b), vec2<u32>(4294967295u, arg_1.c.b.x)), all(!select(vec2<bool>(false, true), vec2<bool>(arg_2, true), arg_2)), arg_2);
    let var_1 = func_4(Struct_1(abs(func_4(arg_0.a).b.x), select(arg_0.c.b >> (vec2<u32>(65950u, 4294967295u) % vec2<u32>(32u)), abs(vec2<u32>(arg_1.b.d.x, arg_0.c.d.x)), select(vec2<bool>(var_0.x, false), !vec2<bool>(var_0.x, true), all(var_0.xy))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, arg_1.b.c.x, 870f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.c.x, arg_1.b.c.x, 421f))), arg_1.b.c)), select(~vec3<u32>(0u, u_input.d, u_input.d), func_1(_wgslsmith_f_op_f32(-global1.x), arg_1.b.d.xy, vec2<u32>(33875u, arg_1.a.b.x) >> (vec2<u32>(u_input.d, 60332u) % vec2<u32>(32u))).b.d, arg_1.b.b.x <= global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_1.c.b.x, global3[_wgslsmith_index_u32(3962u, 6u)]), arg_0.c.d), 6u)])));
    let var_2 = Struct_2(Struct_1(-_wgslsmith_add_i32(_wgslsmith_sub_i32(-22351i, 17284i), u_input.b), arg_1.b.d.xz, _wgslsmith_f_op_vec3_f32(var_1.c.c * arg_1.b.c), func_4(func_4(Struct_1(-31820i, arg_1.a.b, vec3<f32>(634f, -111f, global0[_wgslsmith_index_u32(arg_0.c.d.x, 16u)]), arg_1.c.d)).c).c.d), func_4(Struct_1(-63015i, arg_0.b.d.zz, _wgslsmith_f_op_vec3_f32(func_1(arg_0.c.c.x, arg_1.b.b, vec2<u32>(arg_1.c.b.x, 4294967295u)).b.c + func_4(arg_0.b).c.c), ~abs(vec3<u32>(arg_0.a.b.x, u_input.a, 4294967295u)))).c, Struct_1(_wgslsmith_add_i32(14991i, i32(-1i) * -9363i), arg_0.b.b, _wgslsmith_f_op_vec3_f32(-arg_1.c.c), arg_0.c.d));
    global0 = array<f32, 16>();
    global2 = array<Struct_1, 32>();
    return !(!(!select(select(vec4<bool>(var_0.x, arg_2, false, true), vec4<bool>(var_0.x, arg_2, true, true), vec4<bool>(false, arg_2, true, arg_2)), !vec4<bool>(var_0.x, false, var_0.x, false), 15732i > var_1.b.x)));
}

fn func_6(arg_0: u32, arg_1: bool) -> u32 {
    let var_0 = vec2<f32>(global0[_wgslsmith_index_u32(countOneBits(499u), 16u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 16u)] * global0[_wgslsmith_index_u32(46774u, 16u)]))) - _wgslsmith_f_op_f32(-1151f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(65180u, 16u)]) * _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(1u, 16u)]))))));
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0[_wgslsmith_index_u32(805u, 16u)], 283f, 370f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(786f, var_0.x, global1.x)))), func_4(Struct_1(-29860i, vec2<u32>(0u, 0u), vec3<f32>(1867f, global0[_wgslsmith_index_u32(u_input.d, 16u)], 967f), vec3<u32>(global3[_wgslsmith_index_u32(u_input.d, 6u)], 22393u, 25132u))).c.c)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(219f)), _wgslsmith_div_f32(global1.x, -1000f), var_0.x) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(arg_0, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)], global1.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-110f, -629f, global1.x) + vec3<f32>(-144f, -614f, -870f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, 374f, global1.x))) * vec3<f32>(global1.x, -191f, -1000f))))));
    var var_1 = Struct_1(-_wgslsmith_sub_i32(u_input.b, abs(reverseBits(u_input.c))), vec2<u32>(~arg_0, global3[_wgslsmith_index_u32(countOneBits(21066u), 6u)]) & vec2<u32>(countOneBits(82099u), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 5908u, arg_0), vec3<u32>(global3[_wgslsmith_index_u32(arg_0, 6u)], u_input.a, 71743u)), _wgslsmith_div_u32(arg_0, u_input.d))), vec3<f32>(_wgslsmith_f_op_f32(216f * 805f), _wgslsmith_f_op_f32(-func_4(func_4(global2[_wgslsmith_index_u32(0u, 32u)]).c).c.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -144f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0, 16u)]), global0[_wgslsmith_index_u32(~4294967295u, 16u)])))), func_3());
    var_1 = global2[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(min(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, u_input.d), ~vec2<u32>(u_input.d, 0u)) >> (_wgslsmith_mod_u32(select(4294967295u, 13902u, true), u_input.a) % 32u), 6u)], reverseBits(4294967295u)), 6u)], 32u)];
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1116f - 1f))), _wgslsmith_f_op_f32(1649f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(var_1.b.x, 16u)], 2573f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-949f - -1012f) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(var_1.c.x, global1.x))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) - _wgslsmith_f_op_f32(ceil(190f)))))));
    return ~var_1.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~global3[_wgslsmith_index_u32(4294967295u, 6u)];
    var_0 = func_6(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a, u_input.d, 1u) >> (vec3<u32>(1u, u_input.d, 6846u) % vec3<u32>(32u))), ~vec3<u32>(0u, u_input.a, global3[_wgslsmith_index_u32(u_input.a, 6u)])), all(func_5(func_1(global0[_wgslsmith_index_u32(68640u, 16u)], vec2<u32>(u_input.d, 7707u), vec2<u32>(global3[_wgslsmith_index_u32(u_input.d, 6u)], 0u)), func_1(global0[_wgslsmith_index_u32(1u, 16u)], vec2<u32>(global3[_wgslsmith_index_u32(104529u, 6u)], 1u), vec2<u32>(4294967295u, u_input.a)), true, vec3<i32>(u_input.c, u_input.c, u_input.b) >> (vec3<u32>(0u, u_input.d, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 6u)], 6u)]) % vec3<u32>(32u))))) >> (~global3[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 1u), 6u)] % 32u);
    var var_1 = Struct_1(u_input.b, ~(~(select(vec2<u32>(global3[_wgslsmith_index_u32(1u, 6u)], 1u), vec2<u32>(global3[_wgslsmith_index_u32(u_input.a, 6u)], global3[_wgslsmith_index_u32(u_input.a, 6u)]), vec2<bool>(false, true)) >> (max(vec2<u32>(45533u, global3[_wgslsmith_index_u32(u_input.d, 6u)]), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(2145u, 6u)], 6u)], 6u)], global3[_wgslsmith_index_u32(0u, 6u)])) % vec2<u32>(32u)))), vec3<f32>(_wgslsmith_f_op_f32(trunc(-864f)), global1.x, _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(max(9600u << (global3[_wgslsmith_index_u32(u_input.d, 6u)] % 32u), max(4294967295u, global3[_wgslsmith_index_u32(59006u, 6u)])), 16u)]))), ~vec3<u32>(firstLeadingBit(4294967295u), global3[_wgslsmith_index_u32(func_6(global3[_wgslsmith_index_u32(4294967295u, 6u)] & 150852u, true), 6u)], func_3().x));
    var var_2 = func_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(815f * -853f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.d.x, u_input.d, 40861u), var_1.d), 16u)])), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(687f - global1.x))))))), vec2<u32>(~(~_wgslsmith_mult_u32(var_1.d.x, 1u)), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 6u)], 6u)]), var_1.d.zx);
    var var_3 = Struct_2(func_4(global2[_wgslsmith_index_u32(~0u, 32u)]).c, var_2.b, func_1(var_1.c.x, ~var_1.d.xy, ~min(var_1.d.zx, abs(vec2<u32>(var_1.d.x, 4294967295u)))).b);
    var_1 = var_3.b;
    var_1 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(24966u, 6u)], ~6151u), 16u)] * _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x * var_2.c.c.x), _wgslsmith_f_op_f32(max(683f, var_1.c.x)))) * _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_mod_vec2_u32(firstTrailingBit(~var_1.d.yy), vec2<u32>(29412u, abs(7797u))) | ~vec2<u32>(29611u, ~77971u), reverseBits(var_3.c.d.xz)).c;
    let x = u_input.a;
    s_output = StorageBuffer(select(-(~(-vec3<i32>(var_1.a, 1i, -40999i))), -vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_3.b.a, var_1.a), vec2<i32>(var_1.a, -19865i)), _wgslsmith_add_i32(var_3.c.a, -1i), var_1.a), func_5(func_1(var_3.a.c.x, _wgslsmith_mod_vec2_u32(vec2<u32>(var_2.b.b.x, 4294967295u), var_1.d.xy), ~var_3.b.d.zy), func_1(_wgslsmith_f_op_f32(-var_1.c.x), vec2<u32>(var_1.d.x, global3[_wgslsmith_index_u32(60631u, 6u)]), var_3.a.d.xz), (-28995i >> (var_1.d.x % 32u)) > var_2.c.a, _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, u_input.b, var_1.a) | vec3<i32>(2480i, var_2.c.a, var_1.a), select(vec3<i32>(-21995i, var_3.a.a, 14195i), vec3<i32>(u_input.b, var_2.b.a, var_2.a.a), vec3<bool>(false, false, true)))).wwz), vec3<i32>(-var_3.c.a, 1i, -max(firstLeadingBit(-1i), abs(var_3.a.a))), select(_wgslsmith_add_i32(var_2.b.a, i32(-1i) * -2147483647i), func_4(func_4(Struct_1(-19070i, var_1.b, vec3<f32>(var_1.c.x, global1.x, var_1.c.x), vec3<u32>(u_input.a, 2800u, 18612u))).c).b.x, true || any(select(vec2<bool>(true, false), vec2<bool>(true, false), false))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.b.c.x + _wgslsmith_f_op_f32(f32(-1f) * -1563f)))), -1000f), -(~(-1i) >> (~_wgslsmith_sub_u32(var_3.a.d.x, var_1.b.x) % 32u)));
}

