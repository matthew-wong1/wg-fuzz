struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 24>;

var<private> global1: vec4<u32>;

var<private> global2: array<u32, 6>;

var<private> global3: i32 = -92426i;

var<private> global4: array<vec2<f32>, 22> = array<vec2<f32>, 22>(vec2<f32>(-1327f, 1304f), vec2<f32>(1181f, 1786f), vec2<f32>(764f, -159f), vec2<f32>(560f, 539f), vec2<f32>(-1067f, -1065f), vec2<f32>(1210f, 536f), vec2<f32>(-687f, -1926f), vec2<f32>(-1000f, 806f), vec2<f32>(1299f, 1191f), vec2<f32>(-277f, 786f), vec2<f32>(-584f, 234f), vec2<f32>(768f, 715f), vec2<f32>(403f, -154f), vec2<f32>(-1648f, 1000f), vec2<f32>(114f, -1342f), vec2<f32>(-359f, 578f), vec2<f32>(522f, 426f), vec2<f32>(-657f, -1000f), vec2<f32>(-267f, -733f), vec2<f32>(2045f, 408f), vec2<f32>(700f, -473f), vec2<f32>(-388f, 638f));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: vec4<u32>, arg_3: Struct_2) -> vec4<i32> {
    global3 = 2147483647i & arg_3.c.d.x;
    return _wgslsmith_mod_vec4_i32(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, _wgslsmith_add_i32(arg_3.b.b, 14220i), firstTrailingBit(17779i), 2147483647i), vec4<i32>(~arg_3.c.d.x, ~29307i, arg_3.b.d.x << (9069u % 32u), -1i))), _wgslsmith_div_vec4_i32(~_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-10000i, -36147i, -53388i, -11821i), vec4<i32>(-1i, 26508i, u_input.a, u_input.a)), _wgslsmith_sub_vec4_i32(vec4<i32>(-3246i, u_input.a, -1i, -47554i), vec4<i32>(14494i, -2147483647i, u_input.a, 2147483647i))), reverseBits(-vec4<i32>(arg_3.b.b, u_input.a, -60778i, 2147483647i))));
}

fn func_2() -> Struct_2 {
    global2 = array<u32, 6>();
    global2 = array<u32, 6>();
    var var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a, 1i, _wgslsmith_add_i32(1i, -2147483647i)), _wgslsmith_div_vec4_i32(~(~vec4<i32>(u_input.a, 1i, u_input.a, -1i)) ^ ~(vec4<i32>(u_input.a, -1i, -714i, 51990i) >> (vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 6u)], 6u)], 0u, 61769u, global2[_wgslsmith_index_u32(0u, 6u)]) % vec4<u32>(32u))), vec4<i32>(-1i, 16004i, _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(u_input.a, u_input.a)), select(vec2<i32>(-1i, -1i), vec2<i32>(u_input.a, u_input.a), false)), _wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.a, 2147483647i), 1i))));
    let var_1 = Struct_1(true, -max(u_input.a, select(abs(u_input.a), u_input.a, true)), any(vec2<bool>(true, true)), abs(vec3<i32>(38345i, _wgslsmith_mod_i32(firstTrailingBit(u_input.a), u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a, 0i, 32997i) << (vec4<u32>(0u, 61507u, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(8977u, 6u)], 6u)]) % vec4<u32>(32u)), func_3(vec4<bool>(true, false, false, true), 941f, global0[_wgslsmith_index_u32(4294967295u, 24u)], Struct_2(vec4<bool>(false, true, true, true), Struct_1(true, u_input.a, false, vec3<i32>(-7124i, -1i, 14656i)), Struct_1(true, u_input.a, true, vec3<i32>(-32985i, u_input.a, -1i)), 1u))))));
    var var_2 = Struct_2(select(select(select(!vec4<bool>(false, var_1.a, var_1.c, false), vec4<bool>(var_1.a, true, var_1.c, var_1.a), false), select(!vec4<bool>(true, true, var_1.a, true), vec4<bool>(var_1.a, var_1.a, false, true), select(vec4<bool>(true, true, var_1.a, false), vec4<bool>(var_1.a, var_1.a, true, var_1.c), var_1.a)), !select(vec4<bool>(var_1.a, false, true, false), vec4<bool>(true, var_1.a, var_1.a, true), var_1.a)), !vec4<bool>(var_1.c == true, var_1.a, !var_1.a, true), !select(select(vec4<bool>(var_1.a, true, var_1.c, true), vec4<bool>(var_1.a, true, var_1.c, false), false), !vec4<bool>(false, var_1.c, var_1.a, true), true)), Struct_1(true, firstLeadingBit(1i), true | var_1.c, max(countOneBits(firstLeadingBit(vec3<i32>(u_input.a, var_1.d.x, 41647i))), -reverseBits(var_1.d))), var_1, 3164u);
    return Struct_2(var_2.a, var_2.b, Struct_1(var_2.b.a, reverseBits(_wgslsmith_dot_vec3_i32(var_1.d, vec3<i32>(1i, u_input.a, 2147483647i))) | -(u_input.a ^ var_2.c.d.x), true, abs(var_2.c.d)), ~(_wgslsmith_dot_vec3_u32(~global1.wwz, countOneBits(global1.xxw)) << (_wgslsmith_div_u32(39715u >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(112301u, 6u)], 6u)], 6u)] % 32u), var_2.d) % 32u)));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_4) -> Struct_2 {
    let var_0 = vec2<i32>(33048i, ~_wgslsmith_dot_vec3_i32(arg_1.c.d, arg_2.a.d));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(553f, 621f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(465f, 1f) + 1000f))));
    let var_2 = Struct_3(-235f, (1u | global1.x) == ~max(~arg_1.d, min(global1.x, 0u)), global1.wy);
    let var_3 = arg_0.a;
    global3 = _wgslsmith_div_i32(reverseBits(var_3.b ^ _wgslsmith_mod_i32(-2147483647i, arg_0.a.b)), reverseBits(-11502i)) << (13351u % 32u);
    return func_2();
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2) -> Struct_2 {
    global2 = array<u32, 6>();
    let var_0 = func_1(Struct_4(func_2().c, vec4<bool>(!(!arg_1.c.c), true, !(true & arg_1.b.c), true)), arg_1, Struct_4(arg_1.c, !(!(!arg_1.a)))).b;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1000f, -134f), -512f, arg_1.b.c | arg_1.a.x))))), false, global1.wz);
    let var_2 = Struct_4(Struct_1(var_0.c || true, arg_0.x, var_0.c, -_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 7233i, arg_1.c.b), arg_1.b.d) ^ _wgslsmith_add_vec3_i32(vec3<i32>(66437i, -31905i, u_input.a), var_0.d | var_0.d)), vec4<bool>(true, any(arg_1.a.xz), func_1(Struct_4(func_2().b, arg_1.a), func_1(Struct_4(Struct_1(true, arg_1.c.d.x, true, arg_1.b.d), vec4<bool>(arg_1.c.a, false, var_1.b, var_0.a)), Struct_2(vec4<bool>(false, true, false, arg_1.a.x), Struct_1(false, arg_1.b.d.x, false, arg_1.b.d), Struct_1(false, 7364i, true, arg_1.b.d), 11835u), Struct_4(arg_1.c, arg_1.a)), Struct_4(Struct_1(var_0.c, var_0.b, arg_1.b.a, var_0.d), vec4<bool>(var_1.b, true, arg_1.c.c, var_0.c))).b.a, !arg_1.c.a));
    var var_3 = vec2<f32>(_wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-236f - var_1.a) - _wgslsmith_f_op_f32(-var_1.a)))), _wgslsmith_f_op_f32(round(856f)));
    return Struct_2(!select(arg_1.a, arg_1.a, arg_1.a), Struct_1(func_1(var_2, Struct_2(var_2.b, func_1(var_2, arg_1, var_2).c, Struct_1(true, arg_0.x, false, var_2.a.d), arg_1.d), Struct_4(var_2.a, !vec4<bool>(arg_1.c.a, false, var_1.b, false))).b.c, -_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.c.d.x, 6814i, 2344i, arg_0.x), vec4<i32>(-42449i, 1i, arg_1.c.d.x, var_0.b), vec4<i32>(-2147483647i, arg_0.x, var_2.a.d.x, var_2.a.b)), vec4<i32>(var_2.a.b, -1i, arg_0.x, 1i) ^ vec4<i32>(arg_0.x, var_0.d.x, -1i, 1i)), all(select(vec3<bool>(false, false, true), !var_2.b.wxy, var_2.a.c)), _wgslsmith_mod_vec3_i32(abs(-vec3<i32>(48600i, var_2.a.d.x, var_0.b)), vec3<i32>(min(2147483647i, -49734i), _wgslsmith_sub_i32(var_2.a.b, var_2.a.b), _wgslsmith_dot_vec4_i32(vec4<i32>(-32728i, 37178i, -6040i, arg_1.c.d.x), vec4<i32>(5465i, var_0.b, 0i, 1i))))), Struct_1(arg_1.a.x, var_0.b, _wgslsmith_f_op_f32(416f + _wgslsmith_div_f32(var_1.a, -547f)) >= var_1.a, _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.x, arg_0.x, -61266i) ^ vec3<i32>(var_0.b, -2147483647i, arg_1.c.b), vec3<i32>(1i, -23861i, arg_1.c.d.x)), max(countOneBits(vec3<i32>(2147483647i, u_input.a, -8610i)), -arg_0))), _wgslsmith_mod_u32(45148u, ~min(var_1.c.x, global1.x)));
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: Struct_2, arg_3: Struct_2) -> vec2<u32> {
    global0 = array<vec4<u32>, 24>();
    return select(global1.wz, global1.wy, func_1(Struct_4(arg_2.b, arg_2.a), arg_2, Struct_4(arg_2.b, func_4(vec3<i32>(-1i, 1i, -21437i), arg_3).a)).b.a | true);
}

fn func_6(arg_0: i32, arg_1: Struct_3, arg_2: Struct_4) -> Struct_1 {
    return func_4(arg_2.a.d ^ arg_2.a.d, func_2()).c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6((~(-21215i) << (_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(18802u, 6u)] ^ 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global1.x, 4294967295u), 6u)], 6u)]) % 32u)) << (global1.x % 32u), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1037f))), true, func_5(-(u_input.a & u_input.a), ~(~1u), func_4(vec3<i32>(2147483647i, -14792i, 27302i), func_1(Struct_4(Struct_1(true, 1i, false, vec3<i32>(-27393i, u_input.a, u_input.a)), vec4<bool>(true, false, true, true)), Struct_2(vec4<bool>(true, false, true, false), Struct_1(false, -1i, false, vec3<i32>(u_input.a, u_input.a, u_input.a)), Struct_1(true, -1i, false, vec3<i32>(-10893i, 2147483647i, -1i)), global2[_wgslsmith_index_u32(global1.x, 6u)]), Struct_4(Struct_1(false, u_input.a, true, vec3<i32>(u_input.a, u_input.a, u_input.a)), vec4<bool>(false, false, false, true)))), Struct_2(vec4<bool>(true, true, true, true), func_2().b, Struct_1(true, u_input.a, false, vec3<i32>(u_input.a, u_input.a, -2406i)), 14987u))), Struct_4(func_4(func_1(Struct_4(Struct_1(false, u_input.a, false, vec3<i32>(u_input.a, u_input.a, 1i)), vec4<bool>(true, true, false, true)), Struct_2(vec4<bool>(true, true, true, true), Struct_1(true, u_input.a, true, vec3<i32>(0i, 0i, u_input.a)), Struct_1(true, u_input.a, true, vec3<i32>(11570i, 1367i, -1i)), 48067u), Struct_4(Struct_1(true, -2147483647i, false, vec3<i32>(u_input.a, 19947i, 2147483647i)), vec4<bool>(false, false, false, true))).c.d, func_2()).c, vec4<bool>(func_1(Struct_4(Struct_1(false, 0i, false, vec3<i32>(81179i, 5896i, u_input.a)), vec4<bool>(false, false, false, true)), func_1(Struct_4(Struct_1(true, u_input.a, true, vec3<i32>(u_input.a, -6203i, -2147483647i)), vec4<bool>(true, true, true, false)), Struct_2(vec4<bool>(false, false, false, true), Struct_1(false, 0i, false, vec3<i32>(33020i, u_input.a, 1i)), Struct_1(false, -33634i, true, vec3<i32>(0i, u_input.a, u_input.a)), global1.x), Struct_4(Struct_1(false, -2147483647i, false, vec3<i32>(-1i, u_input.a, -21027i)), vec4<bool>(true, true, false, true))), Struct_4(Struct_1(false, 30812i, false, vec3<i32>(u_input.a, u_input.a, 2147483647i)), vec4<bool>(false, true, true, true))).c.c, true, !all(vec3<bool>(false, false, true)), func_2().c.a)));
    let var_1 = Struct_1(!(!func_4(-vec3<i32>(u_input.a, -53299i, u_input.a), Struct_2(vec4<bool>(var_0.a, false, true, var_0.a), var_0, var_0, global1.x)).a.x), -(~(-2147483647i)), var_0.a, firstTrailingBit(vec3<i32>(var_0.b, func_3(func_4(var_0.d, Struct_2(vec4<bool>(false, true, var_0.c, true), var_0, var_0, 22658u)).a, _wgslsmith_f_op_f32(f32(-1f) * -1170f), global0[_wgslsmith_index_u32(func_4(vec3<i32>(u_input.a, -2147483647i, u_input.a), Struct_2(vec4<bool>(var_0.c, var_0.a, false, false), var_0, Struct_1(true, 0i, false, var_0.d), global1.x)).d, 24u)], Struct_2(vec4<bool>(var_0.c, true, true, false), var_0, Struct_1(var_0.a, var_0.d.x, var_0.c, var_0.d), global1.x)).x, var_0.d.x)));
    global4 = array<vec2<f32>, 22>();
    var var_2 = -vec4<i32>(select(var_1.d.x, u_input.a ^ var_0.d.x, var_0.c), max(_wgslsmith_mod_i32(-u_input.a, -var_0.b), -func_4(vec3<i32>(u_input.a, 27532i, var_0.b), Struct_2(vec4<bool>(var_1.a, var_1.a, var_0.a, var_0.c), Struct_1(var_1.a, -2147483647i, var_1.c, vec3<i32>(-2147483647i, -1i, u_input.a)), var_1, global1.x)).c.b), ~select(reverseBits(1i), 2147483647i, true), var_1.d.x);
    let var_3 = 4294967295u;
    var var_4 = -1i;
    let var_5 = Struct_3(_wgslsmith_f_op_f32(-1f), !func_4(abs(vec3<i32>(0i, var_2.x, -2147483647i)) | abs(var_1.d), func_1(Struct_4(var_1, vec4<bool>(var_0.a, var_0.a, var_1.a, var_0.c)), func_4(var_2.yzx, Struct_2(vec4<bool>(true, false, var_0.a, var_1.a), var_0, var_0, var_3)), Struct_4(Struct_1(var_1.a, 23958i, true, vec3<i32>(1575i, 11366i, var_0.d.x)), vec4<bool>(true, true, false, true)))).c.c, _wgslsmith_div_vec2_u32(global1.zx, countOneBits(global1.yy)));
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(-var_1.d.x, var_1.b, ~var_0.b, var_2.x), func_5(19662i, ~var_5.c.x, Struct_2(vec4<bool>(func_2().a.x, all(vec3<bool>(false, true, var_5.b)), var_1.a || false, all(vec3<bool>(false, true, var_0.c))), func_1(Struct_4(Struct_1(var_5.b, var_0.d.x, true, vec3<i32>(var_1.b, 1i, -2147483647i)), vec4<bool>(var_0.c, var_0.a, var_1.c, var_0.c)), Struct_2(vec4<bool>(var_5.b, false, var_5.b, true), var_0, var_1, global1.x), Struct_4(Struct_1(var_1.c, var_1.b, var_5.b, vec3<i32>(-13771i, 24760i, var_0.b)), vec4<bool>(var_1.c, var_1.c, false, false))).b, Struct_1(true, _wgslsmith_sub_i32(-2147483647i, -44413i), false, -var_0.d), func_1(Struct_4(Struct_1(false, var_0.d.x, var_1.a, vec3<i32>(var_2.x, -433i, var_0.d.x)), vec4<bool>(true, true, false, false)), Struct_2(vec4<bool>(false, var_0.a, false, var_1.c), var_0, var_0, global1.x), Struct_4(Struct_1(var_5.b, var_0.d.x, var_0.c, var_0.d), vec4<bool>(var_0.a, var_1.a, false, var_5.b))).d), Struct_2(func_2().a, Struct_1(true, ~36483i, var_0.a, select(var_0.d, vec3<i32>(-9081i, var_1.b, var_2.x), vec3<bool>(var_1.a, false, true))), var_0, 0u)).x, _wgslsmith_clamp_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec3_u32(global1.wxz, vec3<u32>(1u, var_3, var_5.c.x)), ~1u), var_5.c, vec2<u32>(22915u, 4294967295u)), -2147483647i);
}

