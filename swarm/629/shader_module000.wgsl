struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: vec2<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<vec2<u32>, 1>;

var<private> global2: array<i32, 7>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<i32> {
    return reverseBits(vec4<i32>(_wgslsmith_clamp_i32(1i, abs(global2[_wgslsmith_index_u32(u_input.a, 7u)]), ~(-2147483647i)), global2[_wgslsmith_index_u32(4294967295u, 7u)], global2[_wgslsmith_index_u32(countOneBits(10836u), 7u)], 3788i) << (vec4<u32>(10584u, u_input.b.x, u_input.a, 32844u) % vec4<u32>(32u)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    let var_0 = countOneBits(select(func_3(), ~vec4<i32>(-79157i, 0i, 58971i, global2[_wgslsmith_index_u32(u_input.a, 7u)]), select(!vec4<bool>(true, arg_0.b, arg_1.b, arg_1.b), !vec4<bool>(false, true, arg_1.b, false), !arg_1.b)) << (_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(16057u, 4294967295u, arg_1.c.x, arg_1.a.a.x), vec4<u32>(arg_1.a.a.x, 1u, 3130u, 0u)), vec4<u32>(arg_0.a.a.x, ~arg_1.c.x, abs(0u), 0u)) % vec4<u32>(32u)));
    global2 = array<i32, 7>();
    var var_1 = _wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(~u_input.b, u_input.b), u_input.b), firstLeadingBit(~(~vec3<u32>(arg_1.a.a.x, u_input.a, arg_1.a.a.x) | u_input.b)));
    let var_2 = ~(-var_0.x);
    var var_3 = -368f;
    return Struct_1(u_input.b.xy);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(round(2725f)), _wgslsmith_f_op_f32(-2724f * -106f), _wgslsmith_f_op_f32(-1066f - -359f), global0.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(174f, global0.x, 539f, 355f) - vec4<f32>(-1458f, global0.x, -996f, -1842f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, 814f, 1829f, global0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 1637f, global0.x)), select(vec4<bool>(arg_1.b, arg_1.b, arg_1.b, arg_1.b), vec4<bool>(arg_1.b, arg_1.b, arg_1.b, true), true))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, 530f)))))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(var_0))), var_0)));
    var var_1 = Struct_2(func_2(Struct_2(func_2(arg_1, arg_1), arg_1.b, select(vec2<u32>(arg_0.a.x, 11278u), ~vec2<u32>(u_input.a, arg_1.a.a.x), !vec2<bool>(arg_1.b, false))), arg_1), reverseBits(~abs(-18212i)) <= ((-global2[_wgslsmith_index_u32(935u, 7u)] >> (select(0u, u_input.b.x, arg_1.b) % 32u)) & 2147483647i), ~vec2<u32>(arg_3.x, 55700u));
    let var_2 = Struct_1(firstLeadingBit(vec2<u32>(u_input.a, abs(4294967295u))));
    var_1 = Struct_2(var_2, true, max(~vec2<u32>(~23075u, ~85654u), vec2<u32>(~arg_3.x, 4294967295u << (arg_0.a.x % 32u)) << (arg_1.a.a % vec2<u32>(32u))));
    return Struct_1(vec2<u32>(1u, ~4294967295u));
}

fn func_5(arg_0: Struct_1, arg_1: f32) -> f32 {
    var var_0 = Struct_1(u_input.b.zy ^ arg_0.a);
    var var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(~_wgslsmith_mult_u32(~var_0.a.x, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(115423u, 4929u, 15210u), abs(vec3<u32>(var_0.a.x, 0u, 62286u))) & 88260u, ~arg_0.a.x << (1u % 32u), _wgslsmith_sub_u32(1u, var_0.a.x)), reverseBits(max(vec4<u32>(~4294967295u, 4294967295u, 9160u, select(var_0.a.x, 0u, false)), _wgslsmith_add_vec4_u32(vec4<u32>(arg_0.a.x, u_input.b.x, var_0.a.x, 4294967295u), vec4<u32>(var_0.a.x, u_input.b.x, arg_0.a.x, 0u)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 0u, 0u, 52776u), vec4<u32>(8579u, var_0.a.x, 0u, var_0.a.x)) % vec4<u32>(32u)))));
    let var_2 = !(!(!all(vec4<bool>(false, true, false, false))));
    var_1 = ~(_wgslsmith_mod_vec4_u32(~(vec4<u32>(var_1.x, var_1.x, 1u, 0u) ^ vec4<u32>(arg_0.a.x, u_input.b.x, arg_0.a.x, 7513u)), max(select(vec4<u32>(arg_0.a.x, 0u, u_input.a, 1u), vec4<u32>(4294967295u, arg_0.a.x, 35797u, 31305u), var_2), ~vec4<u32>(var_0.a.x, var_1.x, u_input.b.x, var_0.a.x))) ^ ~vec4<u32>(1u, 4294967295u, _wgslsmith_add_u32(42260u, var_1.x), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, 70847u, var_1.x), u_input.b)));
    let var_3 = arg_0;
    return _wgslsmith_f_op_f32(-955f - _wgslsmith_f_op_f32(-global0.x));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<f32>) -> Struct_2 {
    var var_0 = 49238u;
    let var_1 = -arg_0;
    global1 = array<vec2<u32>, 1>();
    let var_2 = Struct_2(Struct_1(vec2<u32>(0u, ~11896u)), any(!(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)))), _wgslsmith_mod_vec2_u32(u_input.b.yx, ~_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.a, u_input.b.x), vec2<u32>(u_input.a, 1u))));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(638f, global0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-1503f)))), _wgslsmith_f_op_f32(func_5(func_4(func_2(var_2, Struct_2(Struct_1(global1[_wgslsmith_index_u32(1u, 1u)]), false, u_input.b.xx)), Struct_2(Struct_1(vec2<u32>(u_input.a, 66u)), true, u_input.b.zy), vec2<i32>(-26750i, -2147483647i), vec3<u32>(1u, 0u, 13410u)), global0.x))));
    return Struct_2(Struct_1(global1[_wgslsmith_index_u32(var_2.a.a.x, 1u)]), all(!vec4<bool>(true, var_2.b | var_2.b, var_2.b, false)), ~(vec2<u32>(firstTrailingBit(u_input.b.x), 0u) << (_wgslsmith_div_vec2_u32(u_input.b.zz, vec2<u32>(1u, 55243u)) % vec2<u32>(32u))));
}

fn func_6(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(705f, global0.x, 296f, 501f), vec4<f32>(444f, global0.x, global0.x, global0.x), false))) - vec4<f32>(1f, 1f, 1f, 1f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-792f, global0.x))), -1046f, global0.x, -602f), !vec4<bool>(!arg_2.b, !arg_0, any(vec2<bool>(arg_1.b, arg_0)), true)))));
    var var_1 = Struct_1(vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(global1[_wgslsmith_index_u32(~u_input.a, 1u)], ~vec2<u32>(u_input.b.x, 113934u)), func_2(func_1(vec2<i32>(-26417i, global2[_wgslsmith_index_u32(86998u, 7u)]), vec4<f32>(1136f, 862f, var_0.x, var_0.x)), Struct_2(arg_2.a, false, vec2<u32>(81766u, 4294967295u))).a), ~75030u));
    var var_2 = 7772i < -_wgslsmith_sub_i32(reverseBits(_wgslsmith_clamp_i32(1i, -66487i, -2147483647i)), countOneBits(_wgslsmith_clamp_i32(1i, -18269i, 0i)));
    var var_3 = _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-global0.x));
    return arg_1.b;
}

fn func_7(arg_0: vec2<bool>) -> StorageBuffer {
    var var_0 = ~min(~(max(vec4<u32>(112u, u_input.b.x, u_input.b.x, u_input.a), vec4<u32>(1u, u_input.a, u_input.b.x, u_input.b.x)) >> (vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.a) % vec4<u32>(32u))), reverseBits(abs(vec4<u32>(u_input.a, 0u, 44256u, 1u) & vec4<u32>(u_input.a, 8949u, u_input.b.x, u_input.b.x))));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-564f, global0.x, false))));
    global1 = array<vec2<u32>, 1>();
    let var_2 = u_input.b.x;
    var var_3 = vec2<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(693i, ~(-8198i)), func_3().yx));
    return StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global0.x, global0.x))) + 1649f), _wgslsmith_f_op_f32(global0.x - 109f)), func_3().wx, _wgslsmith_f_op_f32(round(global0.x)), ~vec2<u32>(reverseBits(_wgslsmith_clamp_u32(u_input.a, 0u, var_0.x)), ~_wgslsmith_add_u32(u_input.b.x, u_input.a)), max(_wgslsmith_clamp_vec2_i32(select(vec2<i32>(2147483647i, -1i), vec2<i32>(-2147483647i, var_3.x) >> (var_0.yx % vec2<u32>(32u)), !vec2<bool>(arg_0.x, false)), vec2<i32>(reverseBits(-12448i), _wgslsmith_add_i32(var_3.x, var_3.x)), vec2<i32>(var_3.x, var_3.x)), select(~vec2<i32>(-1i, var_3.x), ~_wgslsmith_add_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(106609u, 7u)], 4586i), vec2<i32>(var_3.x, var_3.x)), arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1000f;
    let x = u_input.a;
    s_output = func_7(vec2<bool>(true, !func_6(true, func_1(vec2<i32>(-2147483647i, 14722i), vec4<f32>(global0.x, -694f, 1724f, global0.x)), Struct_2(Struct_1(vec2<u32>(0u, u_input.b.x)), false, vec2<u32>(8473u, u_input.b.x)))));
}

