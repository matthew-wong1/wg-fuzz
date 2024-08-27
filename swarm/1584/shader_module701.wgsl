struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
    c: i32,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27>;

var<private> global1: vec2<bool> = vec2<bool>(false, false);

var<private> global2: array<vec3<i32>, 17>;

var<private> global3: array<u32, 3>;

var<private> global4: Struct_2 = Struct_2(11509i);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: vec3<i32>, arg_3: f32) -> Struct_2 {
    global3 = array<u32, 3>();
    var var_0 = _wgslsmith_f_op_f32(arg_3 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-664f + 1294f)))) - arg_3));
    var var_1 = Struct_3(Struct_2(select(0i, -58752i, true)));
    global2 = array<vec3<i32>, 17>();
    global4 = arg_0.d;
    return Struct_2(31808i);
}

fn func_3() -> vec3<i32> {
    let var_0 = Struct_5(func_1(Struct_4(u_input.b << (countOneBits(vec3<u32>(global3[_wgslsmith_index_u32(u_input.c, 3u)], u_input.a, global3[_wgslsmith_index_u32(u_input.c, 3u)])) % vec3<u32>(32u)), Struct_2(~(-5346i)), 1i, func_1(Struct_4(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 27u)], global0[_wgslsmith_index_u32(24960u, 27u)], global4.a), Struct_2(u_input.b.x), -2147483647i, Struct_2(global0[_wgslsmith_index_u32(u_input.c, 27u)])), vec2<u32>(1u, 4294967295u), vec3<i32>(0i, -17083i, global4.a), _wgslsmith_f_op_f32(f32(-1f) * -1514f))), ~vec2<u32>(reverseBits(4294967295u), _wgslsmith_add_u32(global3[_wgslsmith_index_u32(23421u, 3u)], global3[_wgslsmith_index_u32(0u, 3u)])), max(-(vec3<i32>(-1i, global0[_wgslsmith_index_u32(47090u, 27u)], global0[_wgslsmith_index_u32(45517u, 27u)]) >> (vec3<u32>(97239u, global3[_wgslsmith_index_u32(1u, 3u)], u_input.c) % vec3<u32>(32u))), vec3<i32>(abs(0i), u_input.b.x, global4.a)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1000f, 1093f)), _wgslsmith_f_op_f32(sign(1033f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(606f * 821f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1571f)) - 837f));
    var var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1136f, -1000f, -701f) - vec3<f32>(420f, var_0.b, var_0.b))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, 1667f, var_0.b)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.b, 1216f, -1376f))), !vec3<bool>(global1.x, global1.x, global1.x)))) + vec3<f32>(var_0.b, var_0.b, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(max(877f, var_0.b))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(235f, var_0.b, -847f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_0.b, var_0.b)), true)), vec3<f32>(-420f, _wgslsmith_f_op_f32(var_0.b - -644f), _wgslsmith_f_op_f32(-var_0.b))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1119f, var_0.b, -330f)))), global1.x))));
    var var_2 = vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(global2[_wgslsmith_index_u32(~u_input.c, 17u)], global2[_wgslsmith_index_u32(firstTrailingBit(57069u), 17u)]), -vec3<i32>(u_input.b.x, -2147483647i, -5700i)) ^ -2147483647i, global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(0u, 3u)], ~7135u), 27u)] & ~0i, countOneBits(abs(firstTrailingBit(var_0.a.a))), ~(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~85522u, 3u)], 27u)] | _wgslsmith_add_i32(-2147483647i & global0[_wgslsmith_index_u32(u_input.c, 27u)], -2147483647i)));
    var var_3 = Struct_2(-global4.a);
    return ~vec3<i32>(-_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(var_2.zz, vec2<i32>(12057i, -26586i), u_input.b.xx), var_2.yx), u_input.b.x, _wgslsmith_dot_vec2_i32(-var_2.yw, -select(var_2.ww, u_input.b.zy, global1.x)));
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_4(_wgslsmith_sub_vec3_i32(select(arg_0.yyy, select(vec3<i32>(arg_0.x, -27425i, -6168i), max(vec3<i32>(1i, 0i, 56411i), vec3<i32>(2147483647i, u_input.b.x, 34834i)), !vec3<bool>(false, true, global1.x)), vec3<bool>(global1.x, !global1.x, false)), arg_0.wyw), Struct_2(i32(-1i) * -1i), -_wgslsmith_mod_i32(global4.a, ~select(global0[_wgslsmith_index_u32(u_input.a, 27u)], -11483i, false)), func_1(Struct_4(_wgslsmith_add_vec3_i32(vec3<i32>(-11732i, global4.a, u_input.b.x), func_3()), func_1(Struct_4(vec3<i32>(global4.a, 62536i, global0[_wgslsmith_index_u32(66110u, 27u)]), Struct_2(global4.a), -1i, Struct_2(1i)), _wgslsmith_add_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(0u, 3u)], 4294967295u), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(8951u, 3u)], 3u)], u_input.c)), -global2[_wgslsmith_index_u32(80051u, 17u)], -982f), u_input.b.x, Struct_2(abs(-2147483647i))), ~(~vec2<u32>(1u, global3[_wgslsmith_index_u32(u_input.a, 3u)])), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, ~abs(30718u)), 17u)], 499f));
    global0 = array<i32, 27>();
    var var_1 = 49609u;
    let var_2 = select(countOneBits(_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.b, ~vec3<i32>(global4.a, arg_0.x, 21422i)), _wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(global0[_wgslsmith_index_u32(5937u, 27u)], arg_0.x, u_input.b.x)), min(vec3<i32>(-8276i, 39307i, u_input.b.x), vec3<i32>(arg_0.x, global0[_wgslsmith_index_u32(0u, 27u)], 2147483647i))), global2[_wgslsmith_index_u32(~70962u, 17u)])), reverseBits(vec3<i32>(-10612i, ~u_input.b.x, i32(-1i) * -27513i)), 26998u < _wgslsmith_div_u32(~0u, global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, 74823u, firstLeadingBit(u_input.a)), 3u)]));
    global4 = func_1(var_0, ~(~_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a, 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(41036u, 4294967295u), vec2<u32>(global3[_wgslsmith_index_u32(11265u, 3u)], 0u)), ~vec2<u32>(0u, 22705u))), var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-307f - 735f) + _wgslsmith_f_op_f32(sign(-604f)))) - 1f));
    return Struct_1(~select(var_0.a, vec3<i32>(i32(-1i) * -8680i, -20659i, _wgslsmith_div_i32(0i, 28689i)), global1.x), ~global3[_wgslsmith_index_u32(~u_input.c >> (0u % 32u), 3u)] > _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(4294967295u, 7833u)), ~vec2<u32>(global3[_wgslsmith_index_u32(u_input.a, 3u)], u_input.c)), ~global3[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 3u)]), reverseBits(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global3[_wgslsmith_index_u32(6387u, 3u)]), select(vec2<u32>(38079u, global3[_wgslsmith_index_u32(0u, 3u)]), vec2<u32>(61989u, 0u), vec2<bool>(global1.x, true)))), !any(select(select(vec2<bool>(true, true), vec2<bool>(false, global1.x), global1.x), vec2<bool>(true, true), any(vec3<bool>(global1.x, true, global1.x)))));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: f32) -> vec2<bool> {
    var var_0 = _wgslsmith_clamp_vec4_i32(~(-reverseBits(~vec4<i32>(0i, arg_1.a.x, -20473i, arg_1.a.x))), abs(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), ~u_input.b.xx), func_2(select(vec4<i32>(97143i, 0i, global4.a, global4.a), vec4<i32>(7585i, -1i, 9073i, -1i), vec4<bool>(global1.x, false, arg_1.d, global1.x))).a.x, ~_wgslsmith_add_i32(global4.a, arg_1.a.x), reverseBits(_wgslsmith_clamp_i32(u_input.b.x, global0[_wgslsmith_index_u32(80392u, 27u)], arg_0.a.a)))), -(~(vec4<i32>(arg_0.a.a, global4.a, u_input.b.x, arg_0.a.a) | (vec4<i32>(arg_0.a.a, global4.a, -2147483647i, global0[_wgslsmith_index_u32(0u, 27u)]) | vec4<i32>(24356i, 2147483647i, 50316i, arg_1.a.x)))));
    let var_1 = -24957i;
    var_0 = vec4<i32>(func_1(Struct_4(func_3(), arg_0.a, ~arg_0.a.a, func_1(Struct_4(vec3<i32>(1i, -1i, 7489i), arg_0.a, var_0.x, Struct_2(1i)), firstTrailingBit(vec2<u32>(1u, 58757u)), -vec3<i32>(var_0.x, u_input.b.x, arg_0.a.a), _wgslsmith_f_op_f32(-arg_3))), vec2<u32>(~reverseBits(global3[_wgslsmith_index_u32(10201u, 3u)]), ~4294967295u), ~_wgslsmith_div_vec3_i32(abs(vec3<i32>(-2147483647i, arg_1.a.x, 0i)), firstLeadingBit(u_input.b)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 + arg_0.b)), -2063f, arg_2.x))).a, abs(func_1(Struct_4(firstLeadingBit(u_input.b), func_1(Struct_4(global2[_wgslsmith_index_u32(1443u, 17u)], Struct_2(-1574i), -23269i, arg_0.a), vec2<u32>(u_input.c, 1u), vec3<i32>(global4.a, arg_0.a.a, arg_0.a.a), arg_3), arg_0.a.a, Struct_2(-43089i)), ~(~vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c, 3u)], 3u)], 11990u)), ~(~arg_1.a), -1425f).a), ~_wgslsmith_mult_i32(13573i, _wgslsmith_sub_i32(abs(9109i), firstTrailingBit(23305i))), -42903i);
    var_0 = min(vec4<i32>(-2147483647i, ~(arg_1.a.x << (_wgslsmith_sub_u32(arg_1.c, 4294967295u) % 32u)), -1i, 3794i), firstLeadingBit(vec4<i32>(-(30644i >> (0u % 32u)), select(u_input.b.x, global0[_wgslsmith_index_u32(arg_1.c, 27u)], false), global4.a, -41151i)));
    global3 = array<u32, 3>();
    return !(!(!(!select(arg_2, vec2<bool>(true, arg_1.d), vec2<bool>(true, arg_2.x)))));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_5, arg_2: Struct_5) -> StorageBuffer {
    var var_0 = Struct_5(func_1(Struct_4(~vec3<i32>(global4.a, global0[_wgslsmith_index_u32(1u, 27u)], u_input.b.x), arg_1.a, global0[_wgslsmith_index_u32(abs(70575u), 27u)], func_1(Struct_4(global2[_wgslsmith_index_u32(u_input.c, 17u)], Struct_2(2147483647i), -46429i, arg_2.a), countOneBits(vec2<u32>(u_input.a, u_input.a)), global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c, 3u)], 17u)] & global2[_wgslsmith_index_u32(45438u, 17u)], arg_2.b)), _wgslsmith_mult_vec2_u32(vec2<u32>(~u_input.a, u_input.c), select(vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 142701u) ^ vec2<u32>(u_input.c, 1u), 1u >= u_input.c)), _wgslsmith_mult_vec3_i32(~(~u_input.b), (global2[_wgslsmith_index_u32(13022u, 17u)] ^ vec3<i32>(2147483647i, global4.a, global4.a)) ^ vec3<i32>(1i, 0i, -2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2424f))) + arg_1.b)), arg_2.b);
    let var_1 = Struct_1(u_input.b, all(select(vec3<bool>(var_0.a.a >= global0[_wgslsmith_index_u32(22305u, 27u)], global1.x, all(vec4<bool>(false, true, true, true))), vec3<bool>(!global1.x, true, global1.x), true)), global3[_wgslsmith_index_u32(u_input.c, 3u)], true);
    let var_2 = (~vec2<u32>(1u, ~56044u) | ~vec2<u32>(5097u, func_2(vec4<i32>(arg_1.a.a, global0[_wgslsmith_index_u32(u_input.c, 27u)], global4.a, 8860i)).c)) & (((~vec2<u32>(57291u, 0u) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))) << (abs(vec2<u32>(var_1.c, 4294967295u) ^ vec2<u32>(global3[_wgslsmith_index_u32(34309u, 3u)], 38781u)) % vec2<u32>(32u))) & _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(0u, 1u) << (vec2<u32>(global3[_wgslsmith_index_u32(0u, 3u)], 49836u) % vec2<u32>(32u))));
    return StorageBuffer(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b)), -457f)) + arg_2.b), ~_wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -5066i, u_input.b.x, -38990i), vec4<i32>(-1i, global4.a, -2147483647i, u_input.b.x)), i32(-1i) * -2147483647i), 0i), -(vec4<i32>(-var_1.a.x, firstTrailingBit(var_1.a.x), func_2(vec4<i32>(-32031i, global4.a, 1i, u_input.b.x)).a.x, _wgslsmith_mod_i32(48772i, global0[_wgslsmith_index_u32(0u, 27u)])) | _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.a.a, u_input.b.x, -16608i, 1i), vec4<i32>(arg_1.a.a, 5825i, -2147483647i, arg_2.a.a)), ~vec4<i32>(-2843i, -1i, global4.a, 27501i))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<bool>(global1.x, global1.x);
    let x = u_input.a;
    s_output = func_5(select(func_4(Struct_5(func_1(Struct_4(global2[_wgslsmith_index_u32(u_input.a, 17u)], Struct_2(global4.a), 1i, Struct_2(global0[_wgslsmith_index_u32(32988u, 27u)])), vec2<u32>(71834u, 40859u), u_input.b, -1507f), _wgslsmith_div_f32(594f, 2592f)), func_2(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 27u)], -2147483647i, 8109i, u_input.b.x) << (vec4<u32>(0u, 111103u, u_input.a, global3[_wgslsmith_index_u32(64031u, 3u)]) % vec4<u32>(32u))), vec2<bool>(true, true), 1529f), func_4(Struct_5(func_1(Struct_4(vec3<i32>(2147483647i, 1i, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 3u)], 3u)], 27u)]), Struct_2(22949i), global4.a, Struct_2(0i)), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], 3u)], 4294967295u), vec3<i32>(-51050i, 2147483647i, -53882i), 183f), 776f), func_2(firstTrailingBit(vec4<i32>(u_input.b.x, -1i, global0[_wgslsmith_index_u32(u_input.a, 27u)], -1i))), !(!vec2<bool>(global1.x, global1.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(1217f, 388f, global1.x)), _wgslsmith_f_op_f32(-825f * 1064f), !global1.x))), !any(!vec4<bool>(global1.x, global1.x, global1.x, global1.x))), Struct_5(Struct_2(u_input.b.x), -1164f), Struct_5(Struct_2(global4.a | global0[_wgslsmith_index_u32(~4294967295u, 27u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(227f * _wgslsmith_f_op_f32(floor(196f))))));
}

