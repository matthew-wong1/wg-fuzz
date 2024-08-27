struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: bool,
    d: vec2<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 24> = array<vec4<u32>, 24>(vec4<u32>(49697u, 3679u, 4294967295u, 0u), vec4<u32>(1u, 79308u, 0u, 1u), vec4<u32>(0u, 29174u, 0u, 6853u), vec4<u32>(1u, 29174u, 0u, 4294967295u), vec4<u32>(46145u, 2404u, 42542u, 61849u), vec4<u32>(55197u, 1u, 34928u, 58542u), vec4<u32>(16994u, 4294967295u, 10984u, 135121u), vec4<u32>(0u, 12747u, 38691u, 0u), vec4<u32>(55418u, 50126u, 4294967295u, 1u), vec4<u32>(32972u, 51690u, 17859u, 1u), vec4<u32>(12769u, 0u, 24665u, 4294967295u), vec4<u32>(1u, 0u, 29964u, 1u), vec4<u32>(4294967295u, 8383u, 47443u, 82646u), vec4<u32>(4294967295u, 8954u, 21264u, 0u), vec4<u32>(0u, 78135u, 4294967295u, 68970u), vec4<u32>(0u, 1u, 26271u, 4294967295u), vec4<u32>(4294967295u, 11367u, 30139u, 0u), vec4<u32>(4294967295u, 0u, 3286u, 4294967295u), vec4<u32>(23973u, 1u, 48756u, 21935u), vec4<u32>(40845u, 47025u, 23963u, 0u), vec4<u32>(1u, 12614u, 1u, 1u), vec4<u32>(10893u, 0u, 4294967295u, 20158u), vec4<u32>(40036u, 1u, 0u, 0u), vec4<u32>(1u, 0u, 112959u, 22353u));

var<private> global1: array<i32, 18> = array<i32, 18>(8959i, -18461i, -23068i, -1i, -1i, 1i, i32(-2147483648), 2147483647i, i32(-2147483648), 1i, 3904i, -1i, 13847i, -32911i, -31709i, 1i, -1i, 1i);

var<private> global2: array<i32, 17>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: f32) -> vec3<bool> {
    global0 = array<vec4<u32>, 24>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 + 200f) - arg_2), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1314f), -553f), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(step(-582f, -784f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, arg_2, -136f) + vec3<f32>(703f, 1315f, -1000f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(267f, 255f, 1000f))))));
    let var_1 = u_input.c;
    global0 = array<vec4<u32>, 24>();
    global1 = array<i32, 18>();
    return select(!select(!select(vec3<bool>(arg_1, arg_1, false), vec3<bool>(false, false, true), arg_1), vec3<bool>(true, true, true), true), vec3<bool>((u_input.c << (_wgslsmith_div_u32(4294967295u, u_input.c) % 32u)) > max(~u_input.c, u_input.c), select(!(!arg_1), arg_1 == arg_1, select(arg_1, arg_1, any(vec4<bool>(arg_1, false, arg_1, true)))), any(vec2<bool>(true, arg_2 >= arg_2))), all(!(!select(vec4<bool>(arg_1, arg_1, true, arg_1), vec4<bool>(arg_1, arg_1, arg_1, true), false))));
}

fn func_2(arg_0: vec2<bool>, arg_1: i32, arg_2: f32) -> Struct_2 {
    let var_0 = !func_3(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 17u)], u_input.d.x, -58434i), firstTrailingBit(u_input.d)), u_input.d ^ max(u_input.d, u_input.d)), !(_wgslsmith_f_op_f32(f32(-1f) * -104f) != _wgslsmith_f_op_f32(arg_2 + arg_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)) - arg_2));
    let var_1 = Struct_2(Struct_1(u_input.c, select(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c)), u_input.c, u_input.c, ~u_input.c), _wgslsmith_add_vec4_u32(~global0[_wgslsmith_index_u32(u_input.c, 24u)], vec4<u32>(u_input.c, 1u, u_input.c, 4294967295u)), arg_0.x), all(var_0.xz), _wgslsmith_mod_vec2_u32(abs(vec2<u32>(18766u, 53182u)), select(~vec2<u32>(31458u, u_input.c), vec2<u32>(u_input.c, u_input.c) & vec2<u32>(u_input.c, 48337u), any(var_0.zx))), arg_0), _wgslsmith_f_op_f32(ceil(491f)), !vec3<bool>(_wgslsmith_f_op_f32(floor(arg_2)) >= _wgslsmith_f_op_f32(ceil(arg_2)), any(!vec3<bool>(true, arg_0.x, false)), var_0.x), Struct_1(6414u ^ u_input.c, global0[_wgslsmith_index_u32(4294967295u, 24u)], !any(select(vec4<bool>(var_0.x, var_0.x, arg_0.x, true), vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(false, var_0.x, arg_0.x, var_0.x))), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(22153u, 4294967295u), vec2<u32>(3626u, u_input.c), reverseBits(vec2<u32>(50521u, u_input.c))), vec2<bool>(!(u_input.c > 84150u), true)), Struct_1(u_input.c, ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, u_input.c, 4294967295u, 4294967295u) | vec4<u32>(4294967295u, 32505u, u_input.c, 44928u), vec4<u32>(u_input.c, 32435u, 51388u, 0u) ^ global0[_wgslsmith_index_u32(u_input.c, 24u)]), true, abs(firstLeadingBit(vec2<u32>(u_input.c, u_input.c))) << (~abs(vec2<u32>(41750u, u_input.c)) % vec2<u32>(32u)), vec2<bool>(firstLeadingBit(global2[_wgslsmith_index_u32(1u, 17u)]) != global1[_wgslsmith_index_u32(u_input.c, 18u)], var_0.x)));
    let var_2 = var_1.a.c;
    let var_3 = var_1;
    let var_4 = Struct_1(_wgslsmith_sub_u32(16158u, select(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.e.a, 15537u, 4294967295u, var_3.d.d.x), global0[_wgslsmith_index_u32(var_1.a.a, 24u)]), var_1.d.a, var_0.x)), reverseBits(_wgslsmith_clamp_vec4_u32(~global0[_wgslsmith_index_u32(0u, 24u)] >> ((var_3.a.b << (vec4<u32>(55468u, 63161u, 0u, 5231u) % vec4<u32>(32u))) % vec4<u32>(32u)), ~var_3.a.b, vec4<u32>(1u >> (u_input.c % 32u), ~var_1.d.a, var_1.a.b.x, 4294967295u))), arg_0.x, _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_3.e.b.x, ~var_3.a.b.x), ~var_1.e.d & (vec2<u32>(1u, 4294967295u) << (var_1.e.b.zy % vec2<u32>(32u)))), vec2<u32>(~1u, ~var_1.e.d.x) ^ vec2<u32>(_wgslsmith_div_u32(1u, 109705u), firstTrailingBit(var_1.d.d.x))), select(!vec2<bool>(any(vec4<bool>(var_1.e.e.x, var_0.x, true, true)), any(vec2<bool>(var_1.a.c, false))), !func_3(~u_input.d, all(vec2<bool>(true, true)), arg_2).zx, var_1.d.e));
    return Struct_2(Struct_1(1u, countOneBits(vec4<u32>(1u, u_input.c, 81754u, _wgslsmith_add_u32(var_3.a.b.x, var_4.a))), var_3.b < var_3.b, _wgslsmith_mult_vec2_u32(vec2<u32>(var_3.d.b.x, u_input.c), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, var_1.a.a), vec2<u32>(var_4.a, 0u))) >> (_wgslsmith_div_vec2_u32(~var_1.e.d, ~vec2<u32>(33857u, var_4.a)) % vec2<u32>(32u)), func_3(select(vec3<i32>(2147483647i, arg_1, global2[_wgslsmith_index_u32(var_3.d.a, 17u)]), u_input.d, select(var_4.c, var_4.c, false)), var_2, var_1.b).yy), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1195f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.b))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) - -910f))), var_3.c, Struct_1(1u, ~var_3.a.b, true, (var_3.d.b.zy >> (~var_4.b.ww % vec2<u32>(32u))) << (var_1.e.b.zz % vec2<u32>(32u)), !select(var_1.d.e, func_3(u_input.d, true, 1000f).zx, true)), Struct_1(47479u, _wgslsmith_sub_vec4_u32(global0[_wgslsmith_index_u32(max(~50367u, _wgslsmith_mod_u32(1u, 4044u)), 24u)], vec4<u32>(~var_3.e.a, 1u, _wgslsmith_clamp_u32(u_input.c, 58850u, 53518u), var_3.a.a)), !select(true, var_1.e.e.x, true), select(vec2<u32>(u_input.c, 9772u), countOneBits(var_1.a.b.zz), select(arg_0, var_1.c.xz, vec2<bool>(arg_0.x, var_3.c.x))) >> (vec2<u32>(1u, var_3.d.a >> (1u % 32u)) % vec2<u32>(32u)), vec2<bool>(select(var_3.c.x, true, var_2), var_1.a.e.x & (47539u < var_1.e.d.x))));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = arg_0;
    var_0 = arg_0;
    var var_1 = Struct_1(_wgslsmith_sub_u32(var_0.d.b.x, 1u), vec4<u32>(firstTrailingBit(_wgslsmith_dot_vec2_u32(var_0.e.b.xy, ~vec2<u32>(arg_0.d.b.x, 0u))), 26982u, _wgslsmith_dot_vec2_u32(arg_0.a.d, vec2<u32>(25745u, _wgslsmith_mult_u32(0u, arg_0.a.a))), _wgslsmith_sub_u32(_wgslsmith_mult_u32(4294967295u, u_input.c), abs(0u & arg_0.a.a))), true, abs(arg_0.e.b.xw), arg_0.a.e);
    global0 = array<vec4<u32>, 24>();
    global1 = array<i32, 18>();
    return Struct_1(select(u_input.c, ~(~46577u), all(var_0.c)), var_0.e.b, var_1.e.x, vec2<u32>(var_1.a, 25078u), func_2(var_1.e, global1[_wgslsmith_index_u32(max(abs(func_2(vec2<bool>(false, arg_0.e.c), global2[_wgslsmith_index_u32(arg_0.a.d.x, 17u)], -317f).a.a), _wgslsmith_div_u32(_wgslsmith_mult_u32(var_0.a.a, var_0.a.b.x), ~25442u)), 18u)], _wgslsmith_f_op_f32(-var_0.b)).a.e);
}

fn func_1(arg_0: vec4<bool>) -> i32 {
    let var_0 = u_input.a == ~(-2147483647i);
    let var_1 = Struct_2(func_4(func_2(!arg_0.yz, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(0u, 17u)], u_input.a, global2[_wgslsmith_index_u32(u_input.c, 17u)], global1[_wgslsmith_index_u32(u_input.c, 18u)]), vec4<i32>(global1[_wgslsmith_index_u32(0u, 18u)], -2147483647i, global1[_wgslsmith_index_u32(36723u, 18u)], -30466i)), abs(vec4<i32>(global2[_wgslsmith_index_u32(u_input.c, 17u)], global2[_wgslsmith_index_u32(33660u, 17u)], 14114i, global1[_wgslsmith_index_u32(u_input.c, 18u)]))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1454f, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1272f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-179f, -551f)) * -1417f), true || !var_0))), arg_0.zzy, Struct_1(firstLeadingBit(u_input.c), vec4<u32>(4009u, ~1u, u_input.c, func_4(Struct_2(Struct_1(41888u, vec4<u32>(u_input.c, 15230u, u_input.c, u_input.c), false, vec2<u32>(4294967295u, 6611u), vec2<bool>(var_0, var_0)), -759f, vec3<bool>(true, false, true), Struct_1(u_input.c, global0[_wgslsmith_index_u32(u_input.c, 24u)], false, vec2<u32>(u_input.c, u_input.c), arg_0.yy), Struct_1(u_input.c, global0[_wgslsmith_index_u32(0u, 24u)], true, vec2<u32>(0u, 24679u), arg_0.xw))).a) >> (global0[_wgslsmith_index_u32(~u_input.c, 24u)] % vec4<u32>(32u)), false, vec2<u32>(u_input.c, abs(15654u)), func_3(u_input.d, arg_0.x, -1198f).zz), func_4(Struct_2(func_4(func_2(arg_0.yz, global1[_wgslsmith_index_u32(99274u, 18u)], 145f)), _wgslsmith_f_op_f32(f32(-1f) * -2752f), func_3(u_input.d, any(arg_0.xz), _wgslsmith_f_op_f32(sign(1026f))), Struct_1(firstLeadingBit(0u), vec4<u32>(102749u, u_input.c, u_input.c, u_input.c) & vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), !var_0, vec2<u32>(u_input.c, 1u) << (vec2<u32>(18605u, 3271u) % vec2<u32>(32u)), vec2<bool>(false, arg_0.x)), func_4(Struct_2(Struct_1(u_input.c, vec4<u32>(u_input.c, 0u, u_input.c, u_input.c), var_0, vec2<u32>(0u, u_input.c), arg_0.ww), -2273f, arg_0.yzy, Struct_1(43515u, global0[_wgslsmith_index_u32(45093u, 24u)], true, vec2<u32>(u_input.c, 4294967295u), arg_0.wz), Struct_1(u_input.c, global0[_wgslsmith_index_u32(4082u, 24u)], false, vec2<u32>(1u, u_input.c), arg_0.zy))))));
    let var_2 = -global1[_wgslsmith_index_u32(u_input.c, 18u)];
    let var_3 = func_2(vec2<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) + var_1.b) < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-421f - 1889f), var_1.b))), -1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(var_1.b + var_1.b)))));
    let var_4 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-220f, -197f, 835f, var_1.b)), vec4<f32>(1230f, -149f, 1000f, var_1.b)) - vec4<f32>(_wgslsmith_f_op_f32(round(-120f)), var_1.b, var_3.b, var_3.b)))));
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -268f))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(203f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(255f - -1000f), _wgslsmith_f_op_f32(488f * -427f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(575f * 1457f) - _wgslsmith_f_op_f32(1431f * 1563f)) - _wgslsmith_f_op_f32(f32(-1f) * -2239f))));
    let x = u_input.a;
    s_output = StorageBuffer(select(-10601i, func_1(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), all(vec3<bool>(false, true, false)))), false), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-466f, 103f)) * _wgslsmith_f_op_f32(f32(-1f) * -575f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1324f + -1177f) + 1180f))))), _wgslsmith_f_op_f32(368f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -437f))), 1u ^ u_input.c);
}

