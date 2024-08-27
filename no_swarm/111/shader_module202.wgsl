struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: u32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: Struct_2 = Struct_2(vec3<bool>(true, true, false), vec4<f32>(249f, 2021f, 345f, -736f), vec4<f32>(-1637f, -659f, -1000f, -143f), 18086u, vec4<u32>(0u, 1u, 51646u, 0u));

var<private> global2: Struct_2 = Struct_2(vec3<bool>(true, false, true), vec4<f32>(-1000f, -567f, -464f, 797f), vec4<f32>(-179f, -426f, 1000f, 601f), 1u, vec4<u32>(53886u, 43188u, 98870u, 4294967295u));

var<private> global3: array<i32, 7> = array<i32, 7>(-26288i, -29583i, -1i, -28072i, 68099i, 1i, -15036i);

var<private> global4: array<vec3<f32>, 10>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_2) -> u32 {
    global3 = array<i32, 7>();
    var var_0 = abs(~vec2<i32>(global3[_wgslsmith_index_u32(1u, 7u)], 2147483647i)) & -_wgslsmith_add_vec2_i32(~(vec2<i32>(global3[_wgslsmith_index_u32(u_input.b.x, 7u)], global3[_wgslsmith_index_u32(arg_0.e.x, 7u)]) << (arg_0.e.xy % vec2<u32>(32u))), _wgslsmith_div_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(4294967295u, 7u)], 22458i), vec2<i32>(917i, 37331i)) & countOneBits(vec2<i32>(4959i, 0i)));
    var var_1 = Struct_2(select(global2.a, vec3<bool>(global1.b.x > _wgslsmith_f_op_f32(arg_0.c.x * 1614f), global2.a.x, true), global1.a.x), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1479f, global2.b.x, global1.b.x, global2.b.x))), vec4<f32>(global2.c.x, 221f, 101f, -611f)))), global1.c)), _wgslsmith_f_op_vec4_f32(-global1.c), 4294967295u, max(max(vec4<u32>(select(u_input.b.x, u_input.b.x, global2.a.x), _wgslsmith_mult_u32(u_input.a.x, arg_0.e.x), min(20267u, global2.e.x), ~4294967295u), u_input.b), ~(~_wgslsmith_clamp_vec4_u32(global2.e, u_input.b, global1.e))));
    var var_2 = arg_0;
    var_0 = select(vec2<i32>(~(global3[_wgslsmith_index_u32(0u, 7u)] ^ -1i), var_0.x) >> (~(var_2.e.zw << ((vec2<u32>(1u, arg_0.d) ^ vec2<u32>(var_1.e.x, 245u)) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<i32>(select(abs(abs(-26372i)), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, arg_0.e.x), 56192u & var_2.d), 7u)], false), _wgslsmith_add_i32(_wgslsmith_add_i32(abs(var_0.x), _wgslsmith_sub_i32(var_0.x, 31454i)), -31397i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.c.x)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.b.x))));
    return _wgslsmith_div_u32(~_wgslsmith_div_u32(select(~global2.e.x, ~global1.e.x, true), 9232u), _wgslsmith_mod_u32(_wgslsmith_div_u32(reverseBits(var_2.e.x), ~13839u) ^ 1u, 46975u));
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> vec3<bool> {
    var var_0 = 1i;
    global3 = array<i32, 7>();
    global1 = arg_0;
    let var_1 = !global2.a.yz;
    global2 = arg_0;
    return select(!vec3<bool>(true, false, !any(arg_0.a)), !vec3<bool>(!any(global1.a.yz), arg_0.a.x, false), true);
}

fn func_2(arg_0: vec2<f32>) -> u32 {
    var var_0 = ~global1.d <= global2.e.x;
    let var_1 = ~firstLeadingBit(68006u);
    let var_2 = vec2<i32>(2147483647i, ~(~1i) >> (~_wgslsmith_add_u32(_wgslsmith_div_u32(global2.d, 28065u), global1.e.x) % 32u));
    let var_3 = func_4(Struct_2(!vec3<bool>(false, global1.a.x || global1.a.x, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(global1.c, global2.b), _wgslsmith_div_vec4_f32(global1.c, vec4<f32>(361f, global1.b.x, -1856f, -526f))))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-527f, -1000f, global1.c.x, arg_0.x))), func_3(Struct_2(global1.a, global1.c, global1.c, var_1, u_input.b)), vec4<u32>(20156u, 69u, _wgslsmith_clamp_u32(~global2.e.x, 16601u, 0u >> (var_1 % 32u)), u_input.b.x)), countOneBits(firstTrailingBit(-1i)));
    var var_4 = min((vec4<i32>(_wgslsmith_div_i32(30674i, var_2.x), min(global3[_wgslsmith_index_u32(11147u, 7u)], global3[_wgslsmith_index_u32(global2.e.x, 7u)]), var_2.x, -var_2.x) & ~vec4<i32>(11930i, -50133i, var_2.x, -59585i)) >> (vec4<u32>(50137u, 6208u, 1u, global1.d) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(max(_wgslsmith_mod_vec4_i32(vec4<i32>(var_2.x, -12881i, -803i, 8708i), firstLeadingBit(vec4<i32>(var_2.x, 1i, 45388i, 6345i))), vec4<i32>(6005i, 1i, _wgslsmith_div_i32(2147483647i, var_2.x), _wgslsmith_div_i32(var_2.x, 24779i))), ~vec4<i32>(max(-1i, 37192i), ~(-1i), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_1, global2.e.x, 24344u), vec4<u32>(0u, 37432u, 0u, 0u)), 7u)], var_2.x)));
    return 1u;
}

fn func_5(arg_0: Struct_1) -> f32 {
    global2 = Struct_2(select(func_4(Struct_2(global2.a, vec4<f32>(global1.c.x, global1.b.x, global1.c.x, global2.c.x), _wgslsmith_f_op_vec4_f32(-global2.c), global2.e.x | 108391u, vec4<u32>(1u, 55141u, 0u, 0u) ^ global1.e), -9586i), vec3<bool>(true, true, !all(vec4<bool>(false, global1.a.x, global1.a.x, true))), global2.a), global1.b, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1317f + global1.b.x), global1.c.x, global2.c.x, _wgslsmith_f_op_f32(-1195f - 1097f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1432f, -1304f, 223f, global2.b.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(global2.c.x, global1.c.x)), _wgslsmith_f_op_f32(-1092f - global1.c.x), _wgslsmith_f_op_f32(select(-312f, 232f, global2.a.x)), 1f)))), 50013u, vec4<u32>(~u_input.b.x, abs(_wgslsmith_add_u32(4294967295u, arg_0.c & arg_0.c)), ~((global2.e.x & 0u) >> (~global1.d % 32u)), 86957u));
    global4 = array<vec3<f32>, 10>();
    var var_0 = select(!vec2<bool>(any(vec4<bool>(global2.a.x, global2.a.x, global2.a.x, global1.a.x)), !any(vec2<bool>(true, false))), !vec2<bool>(any(vec4<bool>(global2.a.x, global1.a.x, false, true)) || true, global1.a.x), !(!global2.a.xx));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.x)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.b.x)) - -748f)))) * global2.b.x);
    var var_2 = countOneBits(arg_0.a.x);
    return -1062f;
}

fn func_1() -> vec3<bool> {
    global3 = array<i32, 7>();
    global0 = array<Struct_1, 25>();
    let var_0 = _wgslsmith_f_op_f32(func_5(Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(func_2(vec2<f32>(global2.c.x, global2.c.x)), 7u)], global3[_wgslsmith_index_u32(2981u, 7u)] & global3[_wgslsmith_index_u32(u_input.a.x, 7u)]), vec2<i32>(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(global2.d, 1u), 7u)], 2147483647i >> (global1.e.x % 32u))), _wgslsmith_mod_vec3_i32(select(vec3<i32>(global3[_wgslsmith_index_u32(global2.e.x, 7u)], 4905i, -1i), vec3<i32>(global3[_wgslsmith_index_u32(29814u, 7u)], global3[_wgslsmith_index_u32(global1.d, 7u)], 2147483647i), vec3<bool>(global2.a.x, global2.a.x, true)), firstTrailingBit(vec3<i32>(34609i, global3[_wgslsmith_index_u32(global1.d, 7u)], global3[_wgslsmith_index_u32(92804u, 7u)]))) | vec3<i32>(select(-49344i, global3[_wgslsmith_index_u32(59723u, 7u)], false), -1i | global3[_wgslsmith_index_u32(23367u, 7u)], ~22914i), ~_wgslsmith_sub_u32(select(global2.d, global1.e.x, global2.a.x), ~1u))));
    let var_1 = Struct_1(-(~_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, global3[_wgslsmith_index_u32(u_input.b.x, 7u)]), vec2<i32>(-1i, 1i)) | _wgslsmith_mult_vec2_i32(-vec2<i32>(61729i, -24081i), firstLeadingBit(vec2<i32>(global3[_wgslsmith_index_u32(global2.e.x, 7u)], 0i)))), ~abs(~(~vec3<i32>(global3[_wgslsmith_index_u32(1u, 7u)], global3[_wgslsmith_index_u32(global1.e.x, 7u)], global3[_wgslsmith_index_u32(31997u, 7u)]))), _wgslsmith_mult_u32(func_3(Struct_2(vec3<bool>(global2.a.x, global1.a.x, global2.a.x), _wgslsmith_f_op_vec4_f32(global2.b + vec4<f32>(-246f, var_0, global1.b.x, 1382f)), _wgslsmith_f_op_vec4_f32(global1.c + global2.b), select(global2.e.x, global2.d, true), u_input.b)), global2.e.x));
    return !select(!(!select(vec3<bool>(global1.a.x, false, true), vec3<bool>(global1.a.x, true, global2.a.x), global1.a)), select(!(!vec3<bool>(global1.a.x, false, global2.a.x)), !global2.a, global1.a), !(!vec3<bool>(global1.a.x, false, false)));
}

fn func_6(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    global1 = arg_0;
    let var_0 = arg_0;
    global4 = array<vec3<f32>, 10>();
    var var_1 = abs(arg_2.b);
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, global1.c.x, _wgslsmith_f_op_f32(trunc(arg_0.c.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_div_f32(global1.b.x, arg_1.x))))));
    return Struct_2(vec3<bool>(false, false, func_1().x), _wgslsmith_f_op_vec4_f32(-global1.c), vec4<f32>(194f, 494f, -1096f, _wgslsmith_f_op_f32(arg_1.x - 481f)), arg_2.c, ~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, ~var_0.e.x, 1u, _wgslsmith_add_u32(var_0.d, 88362u)), vec4<u32>(u_input.a.x, ~arg_3.e.x, u_input.a.x, 32347u), ~abs(vec4<u32>(arg_3.d, arg_0.e.x, arg_0.e.x, arg_2.c))));
}

fn func_7(arg_0: Struct_2) -> Struct_2 {
    let var_0 = vec2<u32>(4294967295u, 0u);
    global4 = array<vec3<f32>, 10>();
    global3 = array<i32, 7>();
    global1 = arg_0;
    let var_1 = Struct_2(global2.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(3351f, global1.c.x, global2.b.x, 982f)) + global2.c)), ~global1.d, _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.d, 14597u, 1u, var_0.x), ~vec4<u32>(4294967295u, global1.d, global1.d, 31499u)) << (vec4<u32>(firstLeadingBit(var_0.x), 4115u, global2.e.x ^ 9598u, ~global2.d) % vec4<u32>(32u)), arg_0.e & ~arg_0.e, ~(~(~vec4<u32>(1u, global1.d, 4294967295u, u_input.a.x)))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1215f);
    let var_1 = func_7(func_6(Struct_2(func_1(), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.b * vec4<f32>(165f, global2.b.x, global1.c.x, global2.b.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1062f, global1.c.x, -1392f, global2.b.x) + vec4<f32>(1003f, -1219f, -819f, global2.b.x))), vec4<f32>(_wgslsmith_f_op_f32(-495f * 1047f), global1.c.x, _wgslsmith_f_op_f32(sign(1835f)), -1011f), u_input.b.x, vec4<u32>(u_input.b.x, 28238u, _wgslsmith_mult_u32(global2.e.x, global2.e.x), _wgslsmith_dot_vec3_u32(global2.e.zwy, global2.e.yzx))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(global2.c.xyw, vec3<f32>(global1.b.x, -1000f, global2.c.x)))), _wgslsmith_f_op_vec3_f32(global2.b.wwz + global4[_wgslsmith_index_u32(4294967295u, 10u)]), select(true, false, true))), Struct_1(~firstLeadingBit(vec2<i32>(8956i, global3[_wgslsmith_index_u32(u_input.b.x, 7u)])), abs(vec3<i32>(global3[_wgslsmith_index_u32(44076u, 7u)], -24748i, 1i)), u_input.a.x), Struct_2(vec3<bool>(!global2.a.x, 2147483647i >= global3[_wgslsmith_index_u32(1u, 7u)], !global2.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1151f, 289f, 1000f, 315f), vec4<f32>(-188f, global1.b.x, global2.b.x, 169f), vec4<bool>(global2.a.x, false, global1.a.x, global1.a.x)))), global2.b, 44886u, ~(~vec4<u32>(global1.d, 45882u, 9326u, 4294967295u)))));
    let var_2 = global0[_wgslsmith_index_u32(48692u, 25u)];
    var var_3 = global0[_wgslsmith_index_u32(global2.d, 25u)];
    global3 = array<i32, 7>();
    var var_4 = _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_2.c, u_input.b.x), global1.e.yzw);
    let x = u_input.a;
    s_output = StorageBuffer(-817f);
}

