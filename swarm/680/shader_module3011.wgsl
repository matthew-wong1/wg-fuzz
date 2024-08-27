struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: Struct_2,
    d: vec3<bool>,
}

struct Struct_4 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<f32>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 26> = array<vec2<bool>, 26>(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false));

var<private> global1: array<Struct_2, 29>;

var<private> global2: array<u32, 16>;

var<private> global3: array<vec4<i32>, 29> = array<vec4<i32>, 29>(vec4<i32>(-4345i, 1i, -4212i, 15664i), vec4<i32>(-5777i, -53181i, i32(-2147483648), i32(-2147483648)), vec4<i32>(34497i, 2147483647i, 2147483647i, -2266i), vec4<i32>(-1i, 27526i, 13268i, 2147483647i), vec4<i32>(65184i, 2147483647i, 36741i, -27468i), vec4<i32>(-39027i, 0i, -7970i, 0i), vec4<i32>(2147483647i, 1i, -1i, 2147483647i), vec4<i32>(-37735i, -167i, 1i, 0i), vec4<i32>(25540i, -75813i, 23089i, -23878i), vec4<i32>(-1i, 0i, 24316i, 31901i), vec4<i32>(-1i, 6524i, i32(-2147483648), 22882i), vec4<i32>(-36756i, -995i, 10274i, 1i), vec4<i32>(1i, 19997i, -15495i, -9597i), vec4<i32>(-22193i, 23024i, -5029i, -1i), vec4<i32>(-6457i, -2830i, 58856i, 1i), vec4<i32>(i32(-2147483648), 2147483647i, -1i, i32(-2147483648)), vec4<i32>(35369i, -32754i, -27810i, 63660i), vec4<i32>(-49510i, -98587i, i32(-2147483648), 58967i), vec4<i32>(0i, -1i, 23430i, -30751i), vec4<i32>(-13354i, 9110i, -65266i, 0i), vec4<i32>(29907i, 0i, -2351i, 0i), vec4<i32>(-20041i, 38570i, 16198i, 2147483647i), vec4<i32>(-9801i, 1209i, -31408i, 6671i), vec4<i32>(-1139i, 20124i, 2147483647i, 29014i), vec4<i32>(-82676i, 1i, 66143i, i32(-2147483648)), vec4<i32>(13520i, 1i, -40114i, 53621i), vec4<i32>(0i, i32(-2147483648), i32(-2147483648), 19821i), vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, 1i), vec4<i32>(2042i, -17703i, -48808i, 1i));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_5, arg_1: vec4<bool>, arg_2: i32, arg_3: f32) -> vec4<i32> {
    let var_0 = Struct_4(1856f, vec3<u32>(~abs(~39925u), ~(1u << (global2[_wgslsmith_index_u32(13355u, 16u)] % 32u)) << (global2[_wgslsmith_index_u32(arg_0.a.b.x, 16u)] % 32u), 53503u));
    let var_1 = max(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(46894i, ~0i, _wgslsmith_mult_i32(5383i, u_input.a.x)), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_2, arg_2, arg_2), vec3<i32>(-2147483647i, arg_0.c, 1i), vec3<i32>(-27798i, 0i, arg_2))), _wgslsmith_clamp_i32(arg_0.c, ~_wgslsmith_div_i32(0i, -166i), reverseBits(u_input.c))), ~_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, arg_2), vec2<i32>(368i, -9552i)));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(trunc(1269f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.a - -752f))))), -1000f, arg_0.a.a.x);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1316f + -473f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-770f, -1878f, true)))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a - arg_3), _wgslsmith_f_op_f32(-var_0.a)), arg_3))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(828f * var_2.x)), -791f);
    let var_4 = !(!arg_1.xxw);
    return -_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(1i, -56151i, -443i, -2147483647i)), vec4<i32>(_wgslsmith_sub_i32(u_input.c, 0i), -1972i, 42000i, ~4793i)) | countOneBits(~global3[_wgslsmith_index_u32(0u, 29u)]);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> i32 {
    var var_0 = global3[_wgslsmith_index_u32(1u, 29u)];
    var_0 = vec4<i32>(-28664i, ~arg_1.b.x, var_0.x, abs(2147483647i));
    global0 = array<vec2<bool>, 26>();
    var_0 = min(~vec4<i32>(~27881i, firstTrailingBit(firstTrailingBit(50480i)), var_0.x, arg_0.a.x), ~global3[_wgslsmith_index_u32(_wgslsmith_div_u32(firstLeadingBit(1u), arg_1.a), 29u)]);
    global3 = array<vec4<i32>, 29>();
    return _wgslsmith_add_i32(u_input.c, _wgslsmith_mod_i32(2147483647i, abs(var_0.x)) >> (_wgslsmith_dot_vec3_u32(arg_1.d.b, ~arg_1.d.b) % 32u));
}

fn func_2() -> Struct_3 {
    let var_0 = func_4(Struct_3(_wgslsmith_mod_vec4_i32(func_3(Struct_5(Struct_1(vec3<f32>(587f, -127f, 701f), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(36113u, 16u)], 16u)], 16u)], 16u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(23462u, 16u)], 16u)], 16u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 16u)], 16u)]), true), vec2<f32>(1255f, 2365f), -1i), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), false), reverseBits(-16871i), _wgslsmith_f_op_f32(674f - 3196f)), vec4<i32>(0i, firstTrailingBit(u_input.a.x), -u_input.b, 20092i << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 16u)], 16u)] % 32u))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-958f, -230f) * vec2<f32>(-910f, -382f)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, -738f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(351f, -485f) * vec2<f32>(-2026f, 295f))))), Struct_2(21859u, -(~u_input.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(229f, -277f, -465f))) * _wgslsmith_div_vec3_f32(vec3<f32>(143f, -665f, -414f), vec3<f32>(1164f, -560f, 1000f))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(243f, -715f, 964f)), vec3<u32>(0u, 0u, 26195u), true)), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)))), Struct_2(~min(abs(4294967295u), global2[_wgslsmith_index_u32(0u, 16u)] ^ global2[_wgslsmith_index_u32(4294967295u, 16u)]), u_input.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-199f - 229f)), 423f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, -605f)))), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(127f, 478f, -481f))), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 16u)], 16u)], 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(73218u, 16u)], 16u)]), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 4294967295u, global2[_wgslsmith_index_u32(5010u, 16u)]), vec3<u32>(19172u, 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(7078u, 16u)], 16u)], 16u)], 16u)], 16u)])), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 16u)], 16u)], 16u)], 16u)], 55770u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 16u)], 16u)])), true)));
    var var_1 = Struct_1(vec3<f32>(-524f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-157f, 640f)) - _wgslsmith_f_op_f32(max(-264f, 1050f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(487f * 1233f), _wgslsmith_f_op_f32(-385f + 101f))))), vec3<u32>(1u, 4294967295u, _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(1u, 16u)], 16201u)), false);
    let var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x - var_1.a.x) + var_1.a.x))), min(~(~abs(var_1.b)), vec3<u32>(global2[_wgslsmith_index_u32(max(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], global2[_wgslsmith_index_u32(4294967295u, 16u)]), _wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(13631u, 16u)], var_1.b.x, 0u, var_1.b.x), vec4<u32>(61935u, var_1.b.x, var_1.b.x, global2[_wgslsmith_index_u32(66468u, 16u)]))), 16u)], _wgslsmith_dot_vec3_u32(vec3<u32>(64480u, 0u, var_1.b.x), max(var_1.b, var_1.b)), ~global2[_wgslsmith_index_u32(var_1.b.x, 16u)] | ~var_1.b.x)));
    let var_3 = Struct_4(-708f, _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(reverseBits(var_2.b), firstTrailingBit(vec3<u32>(var_1.b.x, 4294967295u, 0u) << (var_2.b % vec3<u32>(32u)))), vec3<u32>(26876u, ~max(14803u, 1u), _wgslsmith_div_u32(70632u, 4294967295u))));
    global0 = array<vec2<bool>, 26>();
    return Struct_3(vec4<i32>(-2147483647i, _wgslsmith_sub_i32(-u_input.b, 0i), 0i, reverseBits(-28655i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_3.a + -507f), _wgslsmith_f_op_f32(abs(1000f))) - vec2<f32>(var_2.a, -635f)), global1[_wgslsmith_index_u32(0u, 29u)], select(!(!select(vec3<bool>(false, false, true), vec3<bool>(true, var_1.c, true), false)), select(vec3<bool>(any(vec2<bool>(var_1.c, var_1.c)), true, !var_1.c), select(vec3<bool>(var_1.c, false, false), vec3<bool>(true, var_1.c, var_1.c), true), true), true));
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = func_2();
    let var_1 = !vec2<bool>(!(!var_0.d.x), var_0.a.x == -func_2().a.x);
    global1 = array<Struct_2, 29>();
    global3 = array<vec4<i32>, 29>();
    return func_2().c.d;
}

fn func_5(arg_0: Struct_1) -> f32 {
    global2 = array<u32, 16>();
    let var_0 = Struct_4(arg_0.a.x, select(arg_0.b, ~arg_0.b, select(!(!vec3<bool>(arg_0.c, false, true)), vec3<bool>(true, true, arg_0.c & arg_0.c), func_2().c.a > reverseBits(41684u))));
    var var_1 = Struct_4(1126f, _wgslsmith_sub_vec3_u32(var_0.b, abs(_wgslsmith_mod_vec3_u32(vec3<u32>(9663u, arg_0.b.x, arg_0.b.x), var_0.b << (vec3<u32>(0u, var_0.b.x, 1u) % vec3<u32>(32u))))));
    let var_2 = i32(-1i) * -17742i;
    let var_3 = false;
    return arg_0.a.x;
}

fn func_6(arg_0: Struct_4, arg_1: Struct_4) -> StorageBuffer {
    let var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(select(~1i, _wgslsmith_sub_i32(-51685i, u_input.b), true), u_input.a.x, u_input.a.x, -1i), _wgslsmith_div_vec4_i32(~select(_wgslsmith_mult_vec4_i32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(16241u, 16u)], 29u)], vec4<i32>(u_input.a.x, u_input.c, u_input.b, 11015i)), _wgslsmith_sub_vec4_i32(global3[_wgslsmith_index_u32(arg_0.b.x, 29u)], global3[_wgslsmith_index_u32(arg_1.b.x, 29u)]), true), -vec4<i32>(1i, 4663i, u_input.b, -1i) ^ _wgslsmith_sub_vec4_i32(~global3[_wgslsmith_index_u32(arg_0.b.x, 29u)], max(vec4<i32>(2147483647i, -1i, 2147483647i, -1i), vec4<i32>(u_input.b, u_input.c, 2147483647i, u_input.a.x)))));
    global2 = array<u32, 16>();
    var var_1 = arg_0.b.zx;
    var var_2 = _wgslsmith_sub_vec2_i32(var_0.xz, u_input.a);
    var_1 = vec2<u32>(0u, ~arg_0.b.x);
    return StorageBuffer(~u_input.a.x | (i32(-1i) * -1i), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(-921f, vec3<u32>(24425u, global2[_wgslsmith_index_u32(1u, 16u)], firstLeadingBit(~0u)));
    global0 = array<vec2<bool>, 26>();
    global2 = array<u32, 16>();
    global3 = array<vec4<i32>, 29>();
    global2 = array<u32, 16>();
    global0 = array<vec2<bool>, 26>();
    let x = u_input.a;
    s_output = func_6(Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(func_1(-2357f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * var_0.a))), _wgslsmith_clamp_vec3_u32(max(~var_0.b, vec3<u32>(1u, 0u, global2[_wgslsmith_index_u32(var_0.b.x, 16u)])), vec3<u32>(_wgslsmith_dot_vec3_u32(var_0.b, vec3<u32>(var_0.b.x, 4294967295u, 4294967295u)), 1u, countOneBits(1u)), func_1(var_0.a).b)), Struct_4(var_0.a, func_1(_wgslsmith_f_op_f32(-446f + 427f)).b));
}

