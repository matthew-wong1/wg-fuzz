struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec4<bool>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: u32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14>;

var<private> global1: vec3<bool> = vec3<bool>(false, false, false);

var<private> global2: f32 = -1494f;

var<private> global3: array<vec3<i32>, 10> = array<vec3<i32>, 10>(vec3<i32>(0i, 0i, -1i), vec3<i32>(1i, 25832i, -1i), vec3<i32>(2147483647i, 75641i, 26424i), vec3<i32>(21177i, -38294i, 1i), vec3<i32>(47694i, i32(-2147483648), 1i), vec3<i32>(2147483647i, -30859i, 1i), vec3<i32>(-24197i, 44107i, -11200i), vec3<i32>(-1i, 0i, i32(-2147483648)), vec3<i32>(34736i, 38975i, -25707i), vec3<i32>(0i, 2147483647i, 3405i));

var<private> global4: array<vec4<bool>, 32> = array<vec4<bool>, 32>(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> i32 {
    global3 = array<vec3<i32>, 10>();
    global3 = array<vec3<i32>, 10>();
    let var_0 = Struct_1(-(-2147483647i ^ -u_input.b), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 1u, min(15383u, abs(4294967295u)), ~(~0u)), abs(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 8701u, 0u, u_input.a), vec4<u32>(22955u, u_input.a, u_input.a, 56810u))), ~_wgslsmith_sub_vec4_u32(~vec4<u32>(5767u, u_input.a, 54350u, u_input.a), abs(vec4<u32>(u_input.a, 1u, u_input.a, 4294967295u)))), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(vec3<u32>(u_input.a, 0u, u_input.a) ^ vec3<u32>(89340u, u_input.a, u_input.a)), ~reverseBits(vec3<u32>(0u, u_input.a, 27689u)) | ~firstLeadingBit(vec3<u32>(1u, u_input.a, 1u))), 32u)], _wgslsmith_dot_vec3_u32(abs(vec3<u32>(44069u, 4294967295u, 1u)), firstTrailingBit(abs(vec3<u32>(u_input.a, u_input.a, 1u)))), global0[_wgslsmith_index_u32(1u, 14u)]);
    global4 = array<vec4<bool>, 32>();
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-515f, global0[_wgslsmith_index_u32(var_0.d, 14u)], global0[_wgslsmith_index_u32(~31594u, 14u)])) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(885f, 686f, 439f))))))), !var_0.c.zzz, u_input.a, max(reverseBits(reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, 81405u)))), var_0.b.wz));
    return _wgslsmith_mult_i32(var_0.a, ~(~u_input.b));
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: u32, arg_3: Struct_3) -> Struct_2 {
    var var_0 = vec4<i32>(_wgslsmith_sub_i32(u_input.b, arg_3.a.x & (i32(-1i) * -51313i)), -1i, func_3(), ~2147483647i);
    global2 = global0[_wgslsmith_index_u32(arg_2, 14u)];
    var var_1 = Struct_3(arg_1.a, 1i);
    let var_2 = Struct_3((var_1.a << ((vec4<u32>(u_input.a, 76825u, u_input.a, arg_2) & vec4<u32>(4294967295u, u_input.a, 4294967295u, 45725u)) % vec4<u32>(32u))) >> (~(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 1u, 72032u, arg_2), vec4<u32>(0u, 1u, 40632u, 1u)) | vec4<u32>(u_input.a, 3454u, u_input.a, 1u)) % vec4<u32>(32u)), 0i);
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -783f);
    return Struct_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-286f, -1398f, -861f) * vec3<f32>(1132f, var_3, var_3)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1426f, 531f, 200f))))))), !select(!vec3<bool>(global1.x, false, global1.x), select(vec3<bool>(true, true, true), !vec3<bool>(global1.x, false, true), global1.x), select(any(global1.xx), true, var_0.x <= arg_1.b)), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, arg_0), _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(27389u, 17672u, 25874u), vec3<u32>(4294967295u, u_input.a, arg_0)), select(vec3<u32>(68197u, 40939u, 874u), vec3<u32>(arg_0, 3200u, 4294967295u), global1.x)))), ~reverseBits(~vec2<u32>(u_input.a, 9235u)));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: i32) -> f32 {
    let var_0 = global1.x && global1.x;
    var var_1 = 831f;
    var var_2 = ~15996u;
    let var_3 = func_2(~(~_wgslsmith_dot_vec4_u32(max(vec4<u32>(arg_0.c, arg_2.d.x, arg_2.d.x, arg_2.d.x), vec4<u32>(arg_2.c, 4294967295u, arg_2.d.x, 1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, 30307u, 0u), vec4<u32>(82591u, 0u, arg_2.c, u_input.a), vec4<u32>(arg_2.d.x, arg_2.d.x, 20952u, arg_2.c)))), Struct_3(_wgslsmith_div_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, -39761i, -37803i, -60682i), vec4<i32>(-40568i, 2147483647i, -2147483647i, -2147483647i)), vec4<i32>(_wgslsmith_mod_i32(arg_3, -2147483647i), 57142i, abs(-6541i), u_input.b & -2489i)), ~_wgslsmith_clamp_i32(_wgslsmith_sub_i32(29617i, u_input.b), _wgslsmith_mult_i32(-2147483647i, u_input.b), 0i)), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, ~4294967295u, _wgslsmith_clamp_u32(4294967295u, 4294967295u, 4294967295u), u_input.a), select(vec4<u32>(35479u ^ arg_0.d.x, arg_2.d.x >> (arg_0.d.x % 32u), _wgslsmith_sub_u32(arg_0.d.x, 4294967295u), arg_2.c), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.d.x, 0u, 1u, arg_0.d.x) << (vec4<u32>(54247u, arg_0.d.x, arg_0.d.x, u_input.a) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(4294967295u, arg_2.c, 33364u, 0u))), !arg_2.b.x)), Struct_3(-reverseBits(vec4<i32>(u_input.b, arg_3, 1986i, u_input.b)) ^ -(~vec4<i32>(4458i, arg_3, 0i, u_input.b)), u_input.b));
    var var_4 = Struct_3(vec4<i32>(-(i32(-1i) * -14848i), i32(-1i) * -14033i, 16026i, countOneBits(_wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, 0i, 9690i), select(global3[_wgslsmith_index_u32(arg_0.c, 10u)], global3[_wgslsmith_index_u32(var_3.d.x, 10u)], var_3.b)))), max(1582i, (u_input.b >> (~arg_2.d.x % 32u)) << (25829u % 32u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(817f * var_3.a.x), arg_2.a.x)))));
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: vec2<u32>, arg_3: vec4<f32>) -> i32 {
    var var_0 = Struct_2(vec3<f32>(-1000f, _wgslsmith_f_op_f32(1268f * _wgslsmith_f_op_f32(func_4(func_2(20231u, Struct_3(vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.b), 65809i), 4700u, Struct_3(vec4<i32>(-1i, -1i, u_input.b, u_input.b), u_input.b)), _wgslsmith_div_vec4_f32(arg_3, arg_3), func_2(12068u, Struct_3(vec4<i32>(u_input.b, u_input.b, 6010i, 2040i), 0i), 0u, Struct_3(vec4<i32>(-40436i, -35887i, -14031i, u_input.b), 3347i)), select(35179i, u_input.b, global1.x)))), _wgslsmith_f_op_f32(select(func_2(_wgslsmith_clamp_u32(arg_2.x, arg_0.x, 5503u), Struct_3(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), 2147483647i), 4294967295u & u_input.a, Struct_3(vec4<i32>(25255i, u_input.b, -1i, u_input.b), u_input.b)).a.x, -405f, global1.x))), vec3<bool>(false, false, false), ~u_input.a, vec2<u32>(_wgslsmith_mult_u32(~4294967295u, 20199u), 47894u));
    let var_1 = _wgslsmith_add_vec3_u32(~vec3<u32>(1u, 4294967295u, 110916u) << (reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, arg_0.x, 21716u), vec3<u32>(35044u, arg_2.x, 25884u))) % vec3<u32>(32u)), vec3<u32>(var_0.d.x, ~0u << (~u_input.a % 32u), ~53323u)) | ~(~(~firstLeadingBit(vec3<u32>(var_0.c, var_0.d.x, 55710u))));
    var var_2 = Struct_2(var_0.a, vec3<bool>(true, true, true), ((39927u | ~var_0.c) ^ _wgslsmith_mod_u32(~arg_2.x, 0u)) | var_1.x, vec2<u32>(_wgslsmith_mod_u32(var_1.x, var_0.d.x), reverseBits(~117908u)) ^ ~abs(~var_0.d));
    var var_3 = _wgslsmith_clamp_u32(abs(4294967295u) ^ _wgslsmith_mult_u32(_wgslsmith_sub_u32(arg_0.x | 1u, ~22121u), 0u), var_0.d.x, 1u);
    global2 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(_wgslsmith_clamp_u32(61671u, var_2.d.x, arg_2.x), _wgslsmith_mod_u32(1u, var_2.d.x))), vec2<u32>(29609u, reverseBits(0u)) ^ var_0.d), 14u)]);
    return u_input.b;
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> Struct_3 {
    let var_0 = !func_2(_wgslsmith_sub_u32(select(~u_input.a, arg_2.d, true), 1u >> (~arg_1 % 32u)), Struct_3(firstTrailingBit(vec4<i32>(arg_2.a, -52122i, -1i, arg_2.a) >> (vec4<u32>(arg_2.d, arg_2.b.x, 4294967295u, 1u) % vec4<u32>(32u))), reverseBits(18898i)), ~_wgslsmith_dot_vec2_u32(arg_2.b.xx, ~vec2<u32>(1u, 4294967295u)), Struct_3(~(vec4<i32>(arg_2.a, -2147483647i, -31514i, -6953i) ^ vec4<i32>(arg_2.a, 2739i, 0i, arg_2.a)), 0i | ~arg_2.a)).b.yy;
    let var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>(countOneBits(-28110i), arg_2.a, ~_wgslsmith_sub_i32(arg_2.a, arg_2.a), 1i) >> (vec4<u32>(11375u, arg_2.d, 4294967295u, ~(~41488u)) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(arg_2.a, u_input.b, arg_2.a), _wgslsmith_sub_vec3_i32(vec3<i32>(5998i, -35742i, arg_2.a), global3[_wgslsmith_index_u32(arg_1, 10u)])) ^ (arg_2.a >> (~0u % 32u)), _wgslsmith_clamp_i32(-36666i, -_wgslsmith_add_i32(arg_2.a, arg_2.a), _wgslsmith_div_i32(-36422i, ~u_input.b)), arg_2.a, u_input.b));
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_1, 1u) >> (28055u % 32u), 14u)] + arg_3), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(arg_1, 14u)], arg_3))))))));
    var var_3 = vec2<i32>(select(_wgslsmith_sub_i32(~(-1i), _wgslsmith_add_i32(arg_2.a, 7791i) >> (_wgslsmith_div_u32(arg_0, arg_2.d) % 32u)), u_input.b, true), abs(var_1.x));
    var_3 = var_1.zz;
    return Struct_3(vec4<i32>(_wgslsmith_mult_i32(-59695i, ~arg_2.a >> (~arg_2.b.x % 32u)), arg_2.a, arg_2.a, -2147483647i), firstTrailingBit(_wgslsmith_dot_vec4_i32(var_1, var_1)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(1u, 13422u, Struct_1(_wgslsmith_add_i32(u_input.b, func_1(vec2<u32>(u_input.a, u_input.a), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, u_input.a), 14u)], countOneBits(vec2<u32>(u_input.a, 35529u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(81503u, 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)], -1034f, global0[_wgslsmith_index_u32(4294967295u, 14u)]) + vec4<f32>(global0[_wgslsmith_index_u32(0u, 14u)], 1000f, global0[_wgslsmith_index_u32(23955u, 14u)], global0[_wgslsmith_index_u32(u_input.a, 14u)])))), select(vec4<u32>(abs(4294967295u), max(u_input.a, u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(52931u, u_input.a, u_input.a, 1u), vec4<u32>(u_input.a, 25187u, u_input.a, 0u)), 1u), select(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.a, 23687u, u_input.a), vec4<u32>(u_input.a, u_input.a, 10684u, u_input.a)), firstLeadingBit(vec4<u32>(u_input.a, u_input.a, 42613u, 28921u)), all(global4[_wgslsmith_index_u32(0u, 32u)])), ~u_input.b < u_input.b), vec4<bool>(global1.x, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 14u)]) <= 1000f, !global1.x || false, true || global1.x), 1u, -285f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) * _wgslsmith_div_f32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 0u), 14u)], _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(4294967295u, 14u)])))), func_2(u_input.a, Struct_3(reverseBits(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), -1i), _wgslsmith_sub_u32(4294967295u, 47934u << (u_input.a % 32u)), Struct_3(vec4<i32>(0i, u_input.b, 15477i, -1i), ~u_input.b)).a.x));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1414f, -658f, global0[_wgslsmith_index_u32(0u, 14u)]) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-504f, -3283f, global0[_wgslsmith_index_u32(u_input.a, 14u)])))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 14u)], -694f, global0[_wgslsmith_index_u32(u_input.a, 14u)]))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 14u)], global0[_wgslsmith_index_u32(13569u, 14u)], -489f)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1511f, -597f, global0[_wgslsmith_index_u32(u_input.a, 14u)]), vec3<f32>(166f, global0[_wgslsmith_index_u32(u_input.a, 14u)], 1105f))))), true))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * global0[_wgslsmith_index_u32(u_input.a, 14u)]) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(94986u, 14u)]))), _wgslsmith_f_op_f32(max(-1019f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-865f * global0[_wgslsmith_index_u32(11999u, 14u)]) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), global0[_wgslsmith_index_u32(u_input.a, 14u)]));
    global2 = var_1.x;
    let var_2 = !select(vec3<bool>(true, true, false), !(!vec3<bool>(false, global1.x, global1.x)), !vec3<bool>(any(global4[_wgslsmith_index_u32(u_input.a, 32u)]), true, any(global1.yx)));
    let var_3 = any(vec3<bool>(any(global4[_wgslsmith_index_u32(41246u, 32u)]), false, !(!global1.x & false)));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_mod_i32(~u_input.b, -_wgslsmith_dot_vec2_i32(var_0.a.yy, var_0.a.ww)), -_wgslsmith_dot_vec4_i32(var_0.a, _wgslsmith_sub_vec4_i32(var_0.a, vec4<i32>(u_input.b, 1i, 14494i, u_input.b)))), -14247i, -u_input.b << (_wgslsmith_add_u32(~1u, u_input.a) % 32u), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_2(6294u, Struct_3(vec4<i32>(0i, u_input.b, u_input.b, u_input.b), u_input.b), u_input.a, Struct_3(vec4<i32>(-1i, 0i, var_0.b, var_0.a.x), -1i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1603f, -628f, 318f, 107f) * vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 14u)], 1101f, global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(u_input.a, 14u)])), Struct_2(vec3<f32>(562f, -1319f, 551f), vec3<bool>(var_2.x, global1.x, var_3), u_input.a, vec2<u32>(u_input.a, u_input.a)), _wgslsmith_clamp_i32(var_0.b, var_0.a.x, 19828i))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(532f, 1535f)) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 14u)] - var_1.x))), 969f)), vec2<f32>(global0[_wgslsmith_index_u32(15294u, 14u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a | u_input.a, 14u)]))));
}

