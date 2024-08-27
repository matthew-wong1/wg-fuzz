struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: bool,
    d: vec3<bool>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<f32>,
    d: bool,
    e: u32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: vec4<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 32>;

var<private> global1: i32;

var<private> global2: u32 = 25075u;

var<private> global3: i32 = -71369i;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>) -> vec3<i32> {
    var var_0 = ~firstTrailingBit(vec4<u32>(1u, 26452u, ~0u, 1u));
    global1 = 1i;
    global3 = u_input.a.x;
    var var_1 = true || (any(!(!vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x))) || (select(arg_1.x, true, all(vec3<bool>(arg_1.x, true, arg_1.x))) | !(-2146f <= arg_0)));
    let var_2 = (vec2<i32>(u_input.a.x, _wgslsmith_add_i32(u_input.a.x << (var_0.x % 32u), 0i)) | _wgslsmith_add_vec2_i32(u_input.a, _wgslsmith_div_vec2_i32(vec2<i32>(-3157i, -28314i) >> (vec2<u32>(var_0.x, var_0.x) % vec2<u32>(32u)), -vec2<i32>(-13959i, u_input.a.x)))) << (vec2<u32>(abs(firstTrailingBit(~var_0.x)), ~reverseBits(~35312u)) % vec2<u32>(32u));
    return vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, 1i), _wgslsmith_add_vec2_i32(var_2, vec2<i32>(var_2.x, 0i))), reverseBits(u_input.a.x), -1i), global0[_wgslsmith_index_u32(var_0.x, 32u)]), var_2.x, min(_wgslsmith_mult_i32(i32(-1i) * -32685i, var_2.x), u_input.a.x));
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_mod_u32(0u, ~1u);
    var var_1 = Struct_1(-func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(522f * -413f)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1070f))), -u_input.a.x);
    let var_2 = countOneBits(select(abs(vec4<u32>(25547u, 27527u, 65807u, 0u)), select(vec4<u32>(var_0, 1u, 4294967295u, 78483u), vec4<u32>(10617u, var_0, var_0, var_0), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true))), vec4<bool>(all(vec3<bool>(false, false, false)), true, true, false))) & vec4<u32>(28900u, ~4294967295u, _wgslsmith_mult_u32(18800u, var_0), abs(_wgslsmith_mod_u32(var_0, 19019u)) >> (5998u % 32u));
    var var_3 = var_1.c;
    var_1 = Struct_1((var_1.a & reverseBits(firstLeadingBit(vec3<i32>(1i, var_1.a.x, var_1.a.x)))) >> ((~abs(vec3<u32>(0u, var_2.x, 4294967295u)) & ~(var_2.ywx >> (var_2.xwy % vec3<u32>(32u)))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(min(1314f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-859f, 1506f)))))), u_input.a.x);
    return 8648i;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<i32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, -489f, -1637f)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-985f, -798f, -956f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(942f, 1200f, -395f) - vec3<f32>(307f, -498f, 591f))))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-687f + 761f)), -298f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(674f, 1131f))))));
    global3 = u_input.a.x;
    var var_1 = Struct_2(Struct_1(vec3<i32>(-arg_1.x, -1i, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(25779i, arg_1.x, u_input.a.x, arg_1.x), arg_1), _wgslsmith_clamp_i32(2147483647i, 0i, 1i))), _wgslsmith_f_op_f32(f32(-1f) * -748f), i32(-1i) * -22877i), (arg_1.xw ^ u_input.a) | (-u_input.a & vec2<i32>(~(-2147483647i), arg_1.x ^ -1i)), arg_0.x, vec3<bool>(any(select(vec3<bool>(arg_0.x, arg_0.x, true), !arg_0, arg_0)), all(vec4<bool>(arg_0.x | arg_0.x, true, arg_0.x, var_0.x != 1000f)), true), ~vec3<i32>(arg_1.x, 2147483647i, ~countOneBits(arg_1.x)));
    var var_2 = Struct_4(true, var_1.a, ~arg_1 & (arg_1 >> (vec4<u32>(~0u, 9905u, 1u, 1u) % vec4<u32>(32u))), ~(~countOneBits(1u)));
    var var_3 = var_1.a;
    return Struct_3(Struct_2(Struct_1(abs(countOneBits(arg_1.zyx)), _wgslsmith_f_op_f32(round(var_0.x)), reverseBits(_wgslsmith_mod_i32(var_2.b.c, var_1.e.x))), arg_1.zw, (~4294967295u & select(var_2.d, var_2.d, var_2.a)) < var_2.d, !select(vec3<bool>(arg_0.x, var_1.c, var_2.a), select(var_1.d, arg_0, true), select(vec3<bool>(var_2.a, var_2.a, false), arg_0, var_1.d)), firstLeadingBit(vec3<i32>(_wgslsmith_div_i32(arg_1.x, var_1.a.c), 68419i, -var_3.a.x))), Struct_2(var_2.b, var_1.e.xx, var_1.c & any(vec4<bool>(var_1.c, false, false, arg_0.x)), arg_0, var_3.a), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_3.b, var_1.a.b), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1526f, 1422f) + var_0.yx)))))), true, min(var_2.d, var_2.d));
}

fn func_1(arg_0: vec2<f32>) -> Struct_3 {
    global3 = ~countOneBits(-5108i) << (~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), countOneBits(vec4<u32>(1u, 0u, 135866u, 1u))) % 32u);
    global3 = (-23015i | _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x), -vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.a.x)), ~select(vec4<i32>(u_input.a.x, -31343i, u_input.a.x, 2147483647i), vec4<i32>(1i, u_input.a.x, 2147483647i, u_input.a.x), false))) << ((~0u >> (1u % 32u)) % 32u);
    var var_0 = func_4(!select(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false), vec3<bool>(any(vec4<bool>(true, false, true, true)), true, true), vec3<bool>(true, true, true)), -vec4<i32>(-func_2(), _wgslsmith_mult_i32(0i, -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i), abs(vec4<i32>(u_input.a.x, u_input.a.x, 0i, -7250i))), u_input.a.x));
    global2 = _wgslsmith_dot_vec2_u32(vec2<u32>(~(~1u), select(1u, var_0.e, var_0.a.c)), vec2<u32>(_wgslsmith_add_u32(abs(var_0.e), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.e, var_0.e), ~vec2<u32>(var_0.e, 0u))), 67139u));
    global3 = -(~14464i);
    return func_4(func_4(func_4(select(!var_0.a.d, var_0.a.d, var_0.a.d), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, 1i, 53406i, -17435i) >> (vec4<u32>(var_0.e, 4294967295u, var_0.e, 0u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, 47019i), vec4<i32>(var_0.b.a.a.x, u_input.a.x, -9322i, var_0.b.a.c)))).a.d, -(vec4<i32>(0i, -2147483647i, u_input.a.x, -27802i) ^ ~vec4<i32>(6289i, var_0.b.b.x, 0i, var_0.a.b.x))).b.d, -(-(vec4<i32>(u_input.a.x, -1i, var_0.b.b.x, 0i) | vec4<i32>(-15478i, -22525i, 2147483647i, -11602i)) << (abs(vec4<u32>(1u, 1u, 1u, var_0.e) ^ vec4<u32>(44268u, 1u, 23513u, 0u)) % vec4<u32>(32u))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<f32>) -> Struct_4 {
    let var_0 = arg_0.a.a;
    global2 = arg_0.e;
    global2 = 4294967295u;
    var var_1 = Struct_1(~vec3<i32>(func_4(!arg_1.d, vec4<i32>(var_0.c, var_0.a.x, arg_0.b.e.x, arg_1.e.x)).a.a.a.x, 3435i, max(-59628i, -var_0.a.x)), _wgslsmith_f_op_f32(min(arg_2.x, _wgslsmith_div_f32(arg_0.c.x, arg_2.x))), func_3(_wgslsmith_f_op_f32(178f * 181f), vec2<bool>(!any(vec3<bool>(true, arg_0.b.c, true)), arg_1.c)).x);
    var var_2 = !(!(!vec2<bool>(!arg_1.c, any(vec4<bool>(arg_0.b.c, true, true, false)))));
    return Struct_4(arg_1.c | func_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1669f, var_0.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.a.b, arg_2.x)))).a.c, func_4(!arg_1.d, reverseBits(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 66339i, -2147483647i, 2147483647i), vec4<i32>(-6674i, var_0.c, 22585i, -2147483647i))))).b.a, -(~_wgslsmith_sub_vec4_i32(~vec4<i32>(arg_0.b.b.x, 18263i, 20932i, var_1.c), firstTrailingBit(vec4<i32>(0i, arg_0.b.a.a.x, 59707i, arg_1.a.a.x)))), _wgslsmith_dot_vec3_u32(select(vec3<u32>(_wgslsmith_sub_u32(arg_0.e, arg_0.e), arg_0.e, 7902u), vec3<u32>(~arg_0.e, 1u, 8870u), all(vec2<bool>(true, true))), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.e, 4294967295u, 0u), vec3<u32>(6345u, 1u, arg_0.e)), vec3<u32>(1u, 1u, 1u), vec3<u32>(arg_0.e, 1515u, arg_0.e) | vec3<u32>(20483u, 1u, arg_0.e)), ~_wgslsmith_add_vec3_u32(vec3<u32>(52853u, arg_0.e, 30186u), vec3<u32>(504u, arg_0.e, 342u)))));
}

fn func_6(arg_0: Struct_4) -> Struct_3 {
    global2 = firstLeadingBit(4294967295u);
    let var_0 = _wgslsmith_sub_i32(abs(func_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1260f, 671f)))))).b.e.x), countOneBits(-2147483647i));
    var var_1 = Struct_1(max(arg_0.b.a, _wgslsmith_div_vec3_i32(~global0[_wgslsmith_index_u32(1u, 32u)] << (min(vec3<u32>(114328u, 1u, 32288u), vec3<u32>(arg_0.d, 4294967295u, arg_0.d)) % vec3<u32>(32u)), -global0[_wgslsmith_index_u32(arg_0.d, 32u)] ^ arg_0.c.zxz)), _wgslsmith_f_op_f32(f32(-1f) * -758f), ~u_input.a.x ^ ~(-24647i));
    let var_2 = ~(~arg_0.d);
    var var_3 = !arg_0.a;
    return Struct_3(func_4(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b, 922f) * vec2<f32>(var_1.b, arg_0.b.b)))).b.d, ~(-(vec4<i32>(28609i, var_1.a.x, arg_0.c.x, -1i) << (vec4<u32>(1u, var_2, var_2, var_2) % vec4<u32>(32u))))).a, Struct_2(func_5(Struct_3(Struct_2(Struct_1(global0[_wgslsmith_index_u32(arg_0.d, 32u)], -790f, arg_0.c.x), vec2<i32>(arg_0.c.x, u_input.a.x), arg_0.a, vec3<bool>(false, false, arg_0.a), var_1.a), func_1(vec2<f32>(var_1.b, 1675f)).a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.b, -1365f)), select(arg_0.a, false, arg_0.a), arg_0.d & 0u), func_4(func_1(vec2<f32>(var_1.b, -220f)).a.d, ~arg_0.c).b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.b.b, var_1.b))))).b, arg_0.b.a.zx, !func_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-428f, arg_0.b.b)))).a.d.x, select(vec3<bool>(any(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, false)), var_1.b <= var_1.b, true), !vec3<bool>(arg_0.a, true, true), vec3<bool>(false, 1468f > var_1.b, arg_0.a & true)), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(func_1(vec2<f32>(arg_0.b.b, -1332f)).b.e, global0[_wgslsmith_index_u32(var_2, 32u)]), var_1.a)), _wgslsmith_div_vec2_f32(func_1(func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(318f, -1000f) * vec2<f32>(-157f, 392f))).c).c, _wgslsmith_f_op_vec2_f32(vec2<f32>(471f, -560f) + vec2<f32>(arg_0.b.b, _wgslsmith_f_op_f32(-var_1.b)))), all(vec4<bool>(any(select(vec4<bool>(true, arg_0.a, arg_0.a, arg_0.a), vec4<bool>(arg_0.a, arg_0.a, true, arg_0.a), false)), arg_0.a, true, !func_1(vec2<f32>(var_1.b, arg_0.b.b)).a.d.x)), max(28749u, arg_0.d));
}

fn func_7(arg_0: Struct_3) -> Struct_1 {
    var var_0 = func_1(arg_0.c);
    var var_1 = vec4<u32>(~1u, 0u | _wgslsmith_div_u32(var_0.e, ~min(arg_0.e, var_0.e)), firstLeadingBit(_wgslsmith_mod_u32(0u, func_4(var_0.b.d, vec4<i32>(48375i, 23669i, 16122i, 34766i)).e) << (func_4(arg_0.b.d, abs(vec4<i32>(-9633i, arg_0.b.b.x, u_input.a.x, -34354i))).e % 32u)), abs(~4294967295u));
    global2 = abs(var_0.e | func_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(arg_0.c, vec2<f32>(arg_0.c.x, 914f), vec2<bool>(arg_0.d, var_0.b.c)))))).e);
    global0 = array<vec3<i32>, 32>();
    global2 = min(_wgslsmith_sub_u32(reverseBits(var_0.e ^ var_0.e) | var_0.e, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.e, var_0.e, arg_0.e, var_1.x) >> (vec4<u32>(arg_0.e, 1u, 4195u, 8418u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(1885u, var_1.x, var_0.e, 17753u), vec4<u32>(0u, var_1.x, var_0.e, 6915u))), ~_wgslsmith_mod_u32(1u, 19867u), ~var_0.e)), abs(4294967295u));
    return arg_0.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 32>();
    var var_0 = func_7(func_6(func_5(func_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-127f, -1940f)))), Struct_2(Struct_1(global0[_wgslsmith_index_u32(52703u, 32u)], -896f, 26789i), vec2<i32>(0i, 1i) ^ u_input.a, true, func_4(vec3<bool>(true, true, true), vec4<i32>(-38654i, u_input.a.x, 0i, u_input.a.x)).b.d, vec3<i32>(-7924i, 4996i, u_input.a.x)), _wgslsmith_div_vec2_f32(vec2<f32>(-450f, -588f), _wgslsmith_div_vec2_f32(vec2<f32>(-332f, 340f), vec2<f32>(246f, 604f))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(min(626f, 1368f)), _wgslsmith_f_op_f32(abs(var_0.b)), -608f), _wgslsmith_f_op_vec4_f32(vec4<f32>(711f, var_0.b, 1000f, 1000f) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-423f, var_0.b, var_0.b, 965f))))))));
    let var_2 = !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec4<bool>(false, true, true, false)), func_5(Struct_3(Struct_2(Struct_1(vec3<i32>(-15471i, u_input.a.x, var_0.c), 1010f, u_input.a.x), vec2<i32>(u_input.a.x, 0i), true, vec3<bool>(true, true, false), global0[_wgslsmith_index_u32(1u, 32u)]), Struct_2(Struct_1(global0[_wgslsmith_index_u32(42948u, 32u)], var_0.b, -2147483647i), u_input.a, true, vec3<bool>(false, false, false), var_0.a), vec2<f32>(var_1.x, 140f), false, 4294967295u), Struct_2(Struct_1(vec3<i32>(12600i, -14333i, var_0.c), 1000f, u_input.a.x), u_input.a, true, vec3<bool>(true, true, false), vec3<i32>(1i, var_0.a.x, u_input.a.x)), vec2<f32>(var_1.x, 1000f)).a, true), vec4<bool>(true, true, true, true)), !vec4<bool>(true, all(vec2<bool>(true, false)), false, all(vec4<bool>(false, true, true, true))), false);
    var_0 = func_5(func_4(var_2.xwy, vec4<i32>(func_3(_wgslsmith_f_op_f32(var_1.x * var_0.b), !vec2<bool>(var_2.x, var_2.x)).x, ~abs(38646i), reverseBits(-2147483647i), ~var_0.c)), Struct_2(func_1(vec2<f32>(_wgslsmith_f_op_f32(abs(var_1.x)), var_1.x)).b.a, vec2<i32>(-16476i, max(-2147483647i & var_0.a.x, max(13737i, var_0.a.x))), any(select(!var_2.zx, func_1(var_1.zx).a.d.yz, var_2.ww)), vec3<bool>((var_0.c ^ -2147483647i) <= 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(7627i, -28995i, u_input.a.x, 0i), vec4<i32>(u_input.a.x, u_input.a.x, -63053i, u_input.a.x)) == _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i), vec2<i32>(-51963i, 2147483647i)), func_6(func_5(Struct_3(Struct_2(Struct_1(vec3<i32>(72309i, -33851i, var_0.c), var_0.b, 44345i), var_0.a.yy, true, vec3<bool>(var_2.x, var_2.x, var_2.x), global0[_wgslsmith_index_u32(58702u, 32u)]), Struct_2(Struct_1(var_0.a, 707f, var_0.c), u_input.a, false, vec3<bool>(true, false, var_2.x), var_0.a), var_1.yx, var_2.x, 1u), Struct_2(Struct_1(vec3<i32>(0i, -1i, 0i), -802f, var_0.a.x), u_input.a, var_2.x, var_2.xww, vec3<i32>(-40998i, var_0.c, u_input.a.x)), var_1.zy)).d), var_0.a), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.b, var_1.x), vec2<f32>(var_1.x, -457f)))))), _wgslsmith_f_op_vec2_f32(-var_1.yy)))).b;
    var var_3 = Struct_3(Struct_2(Struct_1(firstLeadingBit(vec3<i32>(var_0.a.x, var_0.c, 0i)) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.b, -281f))), max(u_input.a.x, _wgslsmith_div_i32(-39763i, var_0.a.x))), u_input.a, var_2.x && var_2.x, vec3<bool>(!any(vec4<bool>(var_2.x, false, true, var_2.x)), false, true), func_4(var_2.zyx, max(~vec4<i32>(var_0.a.x, var_0.a.x, u_input.a.x, 0i), ~vec4<i32>(2147483647i, u_input.a.x, var_0.a.x, -2147483647i))).a.a.a), Struct_2(Struct_1(vec3<i32>(var_0.c, var_0.a.x, 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1366f))), _wgslsmith_sub_i32(u_input.a.x, var_0.a.x)), func_6(Struct_4(true, func_1(var_1.yy).a.a, max(vec4<i32>(-1i, u_input.a.x, 41958i, var_0.a.x), vec4<i32>(var_0.c, var_0.a.x, 39135i, 1i)), func_5(Struct_3(Struct_2(Struct_1(var_0.a, var_0.b, var_0.c), vec2<i32>(u_input.a.x, var_0.a.x), true, var_2.yyw, global0[_wgslsmith_index_u32(1u, 32u)]), Struct_2(Struct_1(vec3<i32>(0i, u_input.a.x, 2147483647i), var_1.x, -18006i), u_input.a, false, vec3<bool>(var_2.x, var_2.x, false), global0[_wgslsmith_index_u32(12092u, 32u)]), var_1.xy, var_2.x, 98768u), Struct_2(Struct_1(var_0.a, 359f, 5477i), vec2<i32>(var_0.c, -2147483647i), false, vec3<bool>(false, true, var_2.x), vec3<i32>(u_input.a.x, var_0.a.x, var_0.c)), var_1.xx).d)).a.e.xx, var_2.x && func_5(func_6(Struct_4(true, Struct_1(vec3<i32>(var_0.a.x, -1i, u_input.a.x), var_1.x, -18582i), vec4<i32>(2147483647i, var_0.a.x, 2147483647i, u_input.a.x), 34300u)), func_1(vec2<f32>(var_1.x, -710f)).b, _wgslsmith_f_op_vec2_f32(step(var_1.zz, vec2<f32>(var_1.x, var_1.x)))).a, !var_2.yxx, func_1(var_1.ww).a.a.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_1.ww)), _wgslsmith_f_op_vec2_f32(-var_1.zx)), vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x))) * var_1.ww), false, ~func_5(Struct_3(func_1(var_1.xz).a, Struct_2(Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), var_1.x, 7383i), u_input.a, var_2.x, vec3<bool>(true, var_2.x, var_2.x), vec3<i32>(-15038i, 1i, var_0.c)), _wgslsmith_f_op_vec2_f32(round(var_1.wy)), false, _wgslsmith_mod_u32(0u, 87372u)), func_6(Struct_4(true, Struct_1(global0[_wgslsmith_index_u32(4294967295u, 32u)], -1258f, var_0.a.x), vec4<i32>(-1i, 41385i, var_0.a.x, 45443i), 13758u)).b, var_1.xy).d);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2068f))), 109f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_f_op_f32(floor(func_7(Struct_3(var_3.b, var_3.b, var_3.c, var_3.a.c, var_3.e)).b)))));
}

