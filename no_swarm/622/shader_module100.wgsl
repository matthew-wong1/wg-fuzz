struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 21> = array<vec4<u32>, 21>(vec4<u32>(1u, 0u, 0u, 47829u), vec4<u32>(0u, 1u, 30307u, 56647u), vec4<u32>(1u, 1u, 4294967295u, 61485u), vec4<u32>(0u, 28830u, 0u, 0u), vec4<u32>(4294967295u, 2752u, 11243u, 18102u), vec4<u32>(28859u, 0u, 0u, 0u), vec4<u32>(6939u, 47709u, 74215u, 26038u), vec4<u32>(0u, 16290u, 1u, 35880u), vec4<u32>(61903u, 9113u, 40002u, 70962u), vec4<u32>(0u, 5049u, 46597u, 15684u), vec4<u32>(15218u, 4294967295u, 41903u, 1u), vec4<u32>(19570u, 4294967295u, 4294967295u, 1u), vec4<u32>(45433u, 27636u, 1u, 64190u), vec4<u32>(0u, 1u, 4294967295u, 2855u), vec4<u32>(93969u, 4294967295u, 1u, 4294967295u), vec4<u32>(63143u, 8413u, 41592u, 0u), vec4<u32>(4294967295u, 48282u, 0u, 84994u), vec4<u32>(4294967295u, 48246u, 12985u, 4294967295u), vec4<u32>(1343u, 0u, 10531u, 20037u), vec4<u32>(10843u, 13673u, 1u, 0u), vec4<u32>(4294967295u, 37314u, 4670u, 44569u));

var<private> global1: i32;

var<private> global2: array<vec4<f32>, 25>;

var<private> global3: array<vec2<bool>, 21> = array<vec2<bool>, 21>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec2<bool>, arg_1: f32, arg_2: i32) -> bool {
    let var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(0i, 1i, arg_2), (-(~u_input.b) >> ((~vec3<u32>(u_input.c, 13821u, u_input.c) & select(vec3<u32>(u_input.c, 4294967295u, u_input.c), vec3<u32>(11149u, u_input.c, 26884u), vec3<bool>(false, arg_0.x, false))) % vec3<u32>(32u))) & u_input.b);
    global2 = array<vec4<f32>, 25>();
    global2 = array<vec4<f32>, 25>();
    global3 = array<vec2<bool>, 21>();
    global1 = -21807i;
    return all(select(select(vec2<bool>(arg_0.x & arg_0.x, true), select(!arg_0, vec2<bool>(arg_0.x, true), arg_0.x), arg_0), select(arg_0, global3[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 27175u), 21u)], select(vec2<bool>(arg_0.x, false), !global3[_wgslsmith_index_u32(u_input.c, 21u)], arg_0.x)), arg_0));
}

fn func_2() -> bool {
    var var_0 = Struct_1(countOneBits(~(vec2<u32>(u_input.c, 0u) ^ reverseBits(vec2<u32>(1u, 759u)))), -u_input.a >> (4294967295u % 32u));
    let var_1 = Struct_1(var_0.a, abs(4947i));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -210f), 403f))) * -1086f);
    let var_3 = !vec3<bool>(!(1i >= firstTrailingBit(-1i)), true, !(true || func_3(global3[_wgslsmith_index_u32(u_input.c, 21u)], -247f, 0i)));
    var_0 = Struct_1(vec2<u32>(var_0.a.x, (13727u ^ var_1.a.x) << (var_0.a.x % 32u)), _wgslsmith_div_i32(~21360i << (~(var_1.a.x & 1u) % 32u), -34462i));
    return !var_3.x;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(select(~firstTrailingBit(vec2<u32>(1u, u_input.c) << (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u))), vec2<u32>(u_input.c, u_input.c), !func_2()), u_input.b.x);
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-208f, -530f)), _wgslsmith_f_op_f32(-113f * -130f), _wgslsmith_f_op_f32(1475f - -716f), _wgslsmith_f_op_f32(-352f - -870f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-215f, 1023f, 2083f, 1157f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1057f, -655f, 244f, 1000f)), vec4<f32>(_wgslsmith_f_op_f32(ceil(269f)), _wgslsmith_f_op_f32(f32(-1f) * -163f), -1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(864f * -360f), 1016f, false))))));
    var_0 = Struct_1(min(min(countOneBits(var_0.a) | firstLeadingBit(vec2<u32>(4073u, var_0.a.x)), var_0.a >> ((vec2<u32>(u_input.c, u_input.c) << (var_0.a % vec2<u32>(32u))) % vec2<u32>(32u))), var_0.a), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(34481i, _wgslsmith_mod_i32(-36753i, -u_input.b.x), max(2147483647i ^ u_input.b.x, firstTrailingBit(-8733i))), -min(-47408i, var_0.b), select(min(~u_input.b.x, 1i >> (var_0.a.x % 32u)), u_input.a, false)));
    let var_2 = Struct_1(countOneBits(~(var_0.a >> (var_0.a % vec2<u32>(32u)))), ~abs(-1i));
    var var_3 = var_1.x;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 21>();
    let var_0 = Struct_1(~(~abs(vec2<u32>(u_input.c, u_input.c))), -2147483647i);
    var var_1 = func_1();
    var var_2 = Struct_1(~max(vec2<u32>(var_1.a.x, ~var_0.a.x), vec2<u32>(1u, _wgslsmith_add_u32(0u, var_1.a.x))), _wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -60116i, -58565i, ~u_input.a) << (vec3<u32>(countOneBits(0u), 56726u >> (var_0.a.x % 32u), 32003u) % vec3<u32>(32u)), vec3<i32>(abs(u_input.b.x), u_input.a, _wgslsmith_add_i32(u_input.b.x, var_1.b)) << (min(vec3<u32>(1u, 0u, 4294967295u) & vec3<u32>(var_1.a.x, var_0.a.x, 1u), select(vec3<u32>(41567u, 51182u, 1943u), vec3<u32>(var_0.a.x, var_0.a.x, 0u), true)) % vec3<u32>(32u))));
    var var_3 = _wgslsmith_div_vec4_i32(-reverseBits(vec4<i32>(var_0.b, -1i, -1i, -2147483647i) >> (global0[_wgslsmith_index_u32(2288u, 21u)] % vec4<u32>(32u))), select(vec4<i32>(-4215i, -var_1.b, ~1i, abs(19288i)), vec4<i32>(max(1i, var_1.b), ~var_0.b, firstLeadingBit(-26396i), _wgslsmith_dot_vec3_i32(u_input.b, u_input.b)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), any(global3[_wgslsmith_index_u32(1u, 21u)])))) ^ ~_wgslsmith_div_vec4_i32(-select(vec4<i32>(37769i, var_0.b, 2147483647i, var_0.b), vec4<i32>(-2147483647i, var_0.b, 1i, var_1.b), vec4<bool>(false, false, true, true)), _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.b, var_0.b, var_0.b, var_0.b), vec4<i32>(var_0.b, u_input.a, var_2.b, 37048i), vec4<i32>(var_2.b, var_1.b, -2147483647i, var_2.b)), _wgslsmith_sub_vec4_i32(vec4<i32>(15280i, var_0.b, 48425i, 3038i), vec4<i32>(u_input.a, 2147483647i, var_1.b, 22061i)), -vec4<i32>(var_0.b, -8604i, 0i, -5295i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-383f, -1000f, 1274f))))))), _wgslsmith_mod_vec3_u32(vec3<u32>(firstTrailingBit(u_input.c), ~1u >> (u_input.c % 32u), 10380u), reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(6030u, 1u, var_0.a.x), vec3<u32>(9667u, var_2.a.x, 9460u)) >> (vec3<u32>(var_1.a.x, 4294967295u, 4294967295u) % vec3<u32>(32u)))), reverseBits(-var_2.b), ~var_3.wyx, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-495f, _wgslsmith_f_op_f32(-276f + 1151f), -812f, _wgslsmith_f_op_f32(947f - 100f)) + global2[_wgslsmith_index_u32(abs(abs(34977u)), 25u)]) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2229f, 577f, 807f, -1000f)), _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(u_input.c, 25u)])))))));
}

