struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: f32,
    d: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec4<i32>,
    d: vec3<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 19> = array<vec3<u32>, 19>(vec3<u32>(30233u, 4294967295u, 27438u), vec3<u32>(0u, 0u, 57120u), vec3<u32>(1u, 6775u, 0u), vec3<u32>(4294967295u, 54363u, 34688u), vec3<u32>(4379u, 0u, 1u), vec3<u32>(49325u, 4294967295u, 1u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(0u, 1u, 0u), vec3<u32>(131761u, 12130u, 16027u), vec3<u32>(89277u, 14946u, 1u), vec3<u32>(31710u, 1u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 33880u), vec3<u32>(20588u, 33580u, 0u), vec3<u32>(1u, 68604u, 489u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(25474u, 3081u, 0u), vec3<u32>(0u, 572u, 31986u), vec3<u32>(17389u, 13629u, 0u), vec3<u32>(96472u, 72930u, 52689u));

var<private> global1: array<vec2<i32>, 12> = array<vec2<i32>, 12>(vec2<i32>(39232i, 23537i), vec2<i32>(-1i, 38620i), vec2<i32>(1i, 37008i), vec2<i32>(0i, -19220i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(2147483647i, 38812i), vec2<i32>(100096i, -5450i), vec2<i32>(1i, -60836i), vec2<i32>(1i, 29386i), vec2<i32>(57980i, 14741i), vec2<i32>(1i, 21463i), vec2<i32>(37981i, 40037i));

var<private> global2: vec3<i32>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3) -> bool {
    let var_0 = Struct_1(1243f != _wgslsmith_f_op_f32(1113f * arg_0.c), ~abs(reverseBits(_wgslsmith_add_vec3_i32(arg_0.d, vec3<i32>(u_input.a, -1i, -51508i)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1043f, 961f, -321f)))))))));
    global1 = array<vec2<i32>, 12>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(max(arg_0.c, arg_0.c)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -221f)) * _wgslsmith_f_op_f32(-arg_0.c)), arg_0.d ^ -(var_0.b & _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 63071i, 2147483647i), arg_0.d, var_0.b)), var_0.c);
    let var_2 = vec2<u32>(4294967295u, _wgslsmith_dot_vec4_u32(~max(~vec4<u32>(0u, 10976u, 6373u, 0u), select(vec4<u32>(4294967295u, 36971u, 4294967295u, 4294967295u), vec4<u32>(30000u, 11896u, 74799u, 91769u), arg_0.b.b)), ~vec4<u32>(1u, 1u, 1u, 1u)));
    var var_3 = vec4<u32>(~max(abs(1u), var_2.x), var_2.x << (var_2.x % 32u), _wgslsmith_dot_vec3_u32(~min(vec3<u32>(var_2.x, 0u, 4294967295u) >> (vec3<u32>(58299u, 29322u, 24130u) % vec3<u32>(32u)), abs(vec3<u32>(var_2.x, 4294967295u, var_2.x))), select(vec3<u32>(50294u, 55776u, 1u), global0[_wgslsmith_index_u32(6923u, 19u)], var_0.a) ^ ~(~vec3<u32>(var_2.x, var_2.x, 1u))), 0u);
    return !arg_0.b.a.x;
}

fn func_2(arg_0: vec4<bool>) -> bool {
    let var_0 = Struct_4(Struct_2(vec4<bool>(false, arg_0.x, func_3(Struct_3(global2.x, Struct_2(vec4<bool>(arg_0.x, true, arg_0.x, true), vec4<bool>(arg_0.x, arg_0.x, false, false)), -256f, vec3<i32>(u_input.a, global2.x, -49009i))), !arg_0.x), arg_0), Struct_3(global2.x, Struct_2(!arg_0, !(!vec4<bool>(arg_0.x, false, true, true))), _wgslsmith_f_op_f32(round(1055f)), vec3<i32>(~u_input.a, -35522i, u_input.a)), _wgslsmith_mod_vec4_i32(max(vec4<i32>(0i, 2147483647i, global2.x, 11706i) & vec4<i32>(-2147483647i, global2.x, -58754i, global2.x), reverseBits(vec4<i32>(u_input.a, global2.x, -21794i, global2.x) >> (vec4<u32>(0u, 1u, 1u, 33946u) % vec4<u32>(32u)))), _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(2147483647i, u_input.a, u_input.a, -48212i)), reverseBits(vec4<i32>(1i, 1i, 2147483647i, u_input.a))), vec4<i32>(global2.x, 7025i, global2.x, 1i))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1000f)))))), _wgslsmith_f_op_f32(f32(-1f) * -248f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 476f)))), Struct_1(arg_0.x, vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, 0i, u_input.a, global2.x), -vec4<i32>(u_input.a, -1i, -1910i, u_input.a)), -2147483647i, -4104i ^ _wgslsmith_mod_i32(u_input.a, u_input.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(409f, -138f, 769f) - vec3<f32>(1000f, -977f, 956f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1202f, -608f, -1564f)) - vec3<f32>(-1115f, 395f, 1000f)))));
    var var_1 = _wgslsmith_add_u32(19795u, abs(_wgslsmith_dot_vec3_u32(~vec3<u32>(11191u, 9578u, 4294967295u), vec3<u32>(4294967295u, 79285u, 4294967295u)) | _wgslsmith_add_u32(abs(1u), 1u)));
    let var_2 = var_0.c.x;
    global0 = array<vec3<u32>, 19>();
    global2 = select(var_0.e.b, -var_0.b.d | -select(vec3<i32>(u_input.a, var_0.b.a, -29183i), vec3<i32>(var_2, -35881i, 1i), true), select(arg_0.wyx, var_0.a.b.wwy, !vec3<bool>(arg_0.x, arg_0.x, false))) ^ ~var_0.b.d;
    return true;
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: i32) -> u32 {
    var var_0 = Struct_3(global2.x, arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-989f)) * _wgslsmith_f_op_f32(trunc(-646f))) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_mult_vec3_i32(~min(vec3<i32>(u_input.a, -34470i, 1i), vec3<i32>(global2.x, -2358i, -2147483647i)), ~(vec3<i32>(-2147483647i, u_input.a, -2147483647i) >> (vec3<u32>(26809u, arg_0.x, 1u) % vec3<u32>(32u)))));
    global1 = array<vec2<i32>, 12>();
    let var_1 = Struct_4(Struct_2(vec4<bool>(arg_1.b.x || all(var_0.b.a.zyw), true, true, var_0.b.b.x), vec4<bool>(!func_2(vec4<bool>(arg_1.b.x, true, arg_1.b.x, true)), false, var_0.b.a.x && all(vec2<bool>(var_0.b.b.x, arg_1.a.x)), any(select(vec3<bool>(var_0.b.b.x, true, true), vec3<bool>(arg_1.b.x, arg_1.b.x, true), vec3<bool>(true, var_0.b.b.x, arg_1.b.x))))), Struct_3(_wgslsmith_clamp_i32(~(-1i), 0i, -10i), var_0.b, 140f, _wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(var_0.a, global2.x, -91117i)), countOneBits(firstLeadingBit(var_0.d)))), -_wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(1i, 9778i, 1i, arg_2)), select(vec4<i32>(1i, global2.x, 59088i, -32448i), vec4<i32>(u_input.a, 28770i, global2.x, global2.x), vec4<bool>(true, arg_1.b.x, false, arg_1.a.x)), firstLeadingBit(vec4<i32>(1i, -1i, -2147483647i, 1i))) & ~_wgslsmith_add_vec4_i32(vec4<i32>(14571i, u_input.a, global2.x, 0i), vec4<i32>(0i, arg_2, -2147483647i, global2.x) << (vec4<u32>(arg_0.x, arg_0.x, 13265u, arg_0.x) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.c, 425f, var_0.c), vec3<f32>(var_0.c, var_0.c, 811f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.c, -1000f, 1000f), vec3<f32>(var_0.c, var_0.c, var_0.c), false)), !vec3<bool>(arg_1.a.x, var_0.b.b.x, false)))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1175f, var_0.c, var_0.c))))), Struct_1(true, var_0.d, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1015f, 526f, var_0.c), _wgslsmith_div_vec3_f32(vec3<f32>(-1403f, 725f, var_0.c), vec3<f32>(var_0.c, -1570f, var_0.c)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-270f, var_0.c, -1780f) + vec3<f32>(858f, var_0.c, 2049f))), vec3<bool>(true, true, arg_1.a.x)))));
    let var_2 = vec2<u32>(~arg_0.x, 1u) >> (arg_0.yx % vec2<u32>(32u));
    let var_3 = arg_0.x;
    return max(arg_0.x, firstLeadingBit(~32052u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 12>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -853f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1240f * 1965f)))));
    global0 = array<vec3<u32>, 19>();
    var var_1 = global1[_wgslsmith_index_u32(28619u, 12u)] & -vec2<i32>(global2.x, global2.x);
    global0 = array<vec3<u32>, 19>();
    var_1 = max(_wgslsmith_sub_vec2_i32(vec2<i32>(~(~(-30733i)), _wgslsmith_mod_i32(global2.x, global2.x | -9326i)), global2.zy), _wgslsmith_mod_vec2_i32(global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(func_1(global0[_wgslsmith_index_u32(4294967295u, 19u)], Struct_2(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false)), var_1.x), 1u), 12u)], vec2<i32>(-abs(var_1.x), var_1.x)));
    global0 = array<vec3<u32>, 19>();
    var var_2 = any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)) && true;
    global2 = firstLeadingBit(vec3<i32>(~_wgslsmith_dot_vec2_i32(-global2.yz, vec2<i32>(22374i, -14134i)), _wgslsmith_add_i32(var_1.x, _wgslsmith_div_i32(global2.x, 1i)), _wgslsmith_sub_i32(var_1.x, 0i)));
    let x = u_input.a;
    s_output = StorageBuffer(global2.x, abs(reverseBits(-(vec3<i32>(2219i, global2.x, -27788i) >> (global0[_wgslsmith_index_u32(0u, 19u)] % vec3<u32>(32u))))), vec3<i32>(max(~(-var_1.x), 2147483647i), ~(~(global2.x << (1u % 32u))), var_1.x));
}

