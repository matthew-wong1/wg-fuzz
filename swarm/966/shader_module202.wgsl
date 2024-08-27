struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec4<f32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
    c: vec3<u32>,
    d: Struct_1,
    e: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
    c: vec2<u32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 25> = array<vec4<bool>, 25>(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false));

var<private> global1: array<Struct_3, 20>;

var<private> global2: array<vec4<u32>, 22>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: bool) -> f32 {
    let var_0 = select(!vec4<bool>(arg_2, (u_input.a ^ u_input.a) >= ~arg_1.a.a.e, arg_2, any(!vec4<bool>(arg_2, true, false, true))), global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_mult_u32(arg_1.a.a.d, 46207u)), 25u)], !all(!(!vec2<bool>(arg_2, false))));
    global1 = array<Struct_3, 20>();
    global1 = array<Struct_3, 20>();
    var var_1 = arg_1.a;
    var var_2 = Struct_4(!vec2<bool>(all(vec4<bool>(false, arg_2, false, false)), var_0.x), arg_1, var_1.b, arg_1.a.a, ~0u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.a.d & 59531u, 66779u, 1u, 1u), global2[_wgslsmith_index_u32(1168u & var_1.b.x, 22u)]) % 32u));
    return _wgslsmith_f_op_f32(select(arg_1.a.a.b, -381f, var_0.x));
}

fn func_2(arg_0: i32, arg_1: f32) -> Struct_2 {
    global1 = array<Struct_3, 20>();
    let var_0 = Struct_1(min(-_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 7139i, arg_0, 0i), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0, -2147483647i, 13628i, arg_0), vec4<i32>(-1i, 8917i, u_input.a, -1i)), vec4<i32>(u_input.a, -1i, u_input.a, u_input.a)), reverseBits(vec4<i32>(1i, abs(arg_0), arg_0, -41109i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(924f))))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(ceil(arg_1)), _wgslsmith_f_op_f32(func_3(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0, -12333i), vec2<i32>(u_input.a, 1i), vec2<i32>(25103i, -1i)), Struct_3(Struct_2(Struct_1(vec4<i32>(-2256i, u_input.a, arg_0, 2147483647i), -1103f, vec4<f32>(arg_1, arg_1, arg_1, arg_1), 7321u, u_input.a), vec3<u32>(42292u, 1u, 24416u)), u_input.a), true))))), _wgslsmith_mult_u32(~1u, ~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 87426u, 4294967295u), vec3<u32>(1u, 0u, 31548u)), ~1u)), -_wgslsmith_mult_i32(~_wgslsmith_clamp_i32(7752i, arg_0, -6151i), reverseBits(i32(-1i) * -2147483647i)));
    let var_1 = ~global2[_wgslsmith_index_u32(firstLeadingBit(reverseBits(var_0.d)), 22u)];
    global2 = array<vec4<u32>, 22>();
    let var_2 = Struct_1(vec4<i32>(1i, ~1i, -(~(u_input.a & arg_0)), firstLeadingBit(-u_input.a)), arg_1, vec4<f32>(arg_1, 300f, 948f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 - 279f), var_0.c.x))), select(_wgslsmith_div_u32(var_1.x, _wgslsmith_clamp_u32(var_0.d, var_1.x, 33739u)) | var_1.x, _wgslsmith_sub_u32(29774u, var_0.d), true), ~(-5307i));
    return Struct_2(var_2, _wgslsmith_div_vec3_u32(firstLeadingBit(select(var_1.yyw, vec3<u32>(var_2.d, var_2.d, var_2.d), true)), vec3<u32>(81936u, var_2.d, min(_wgslsmith_clamp_u32(var_0.d, var_0.d, var_0.d), ~22481u))));
}

fn func_1(arg_0: vec3<u32>) -> bool {
    global2 = array<vec4<u32>, 22>();
    global1 = array<Struct_3, 20>();
    var var_0 = ~global2[_wgslsmith_index_u32(~arg_0.x, 22u)];
    global0 = array<vec4<bool>, 25>();
    var var_1 = Struct_5(func_2(_wgslsmith_add_i32(u_input.a, _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.a, u_input.a), ~u_input.a)), 593f), false, vec2<u32>(~(~(~8469u)), firstTrailingBit(countOneBits(arg_0.x >> (arg_0.x % 32u)))), ~firstTrailingBit(57092u));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 20>();
    let var_0 = !select(true, func_1(vec3<u32>(1u, 1u, 1u)), !select(true, true, func_1(vec3<u32>(4294967295u, 0u, 72066u))));
    global2 = array<vec4<u32>, 22>();
    var var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(-(~u_input.a), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, -2147483647i), vec3<i32>(-27749i, u_input.a, u_input.a)), -41864i)), select(-2147483647i ^ -u_input.a, u_input.a, var_0), u_input.a & 0i, u_input.a), vec4<i32>(_wgslsmith_clamp_i32(u_input.a, min(0i, u_input.a), abs(u_input.a)), -u_input.a, 32333i, 0i) & -_wgslsmith_mod_vec4_i32(vec4<i32>(0i, u_input.a, u_input.a, u_input.a), vec4<i32>(1790i, u_input.a, u_input.a, -4438i)));
    var var_2 = (_wgslsmith_sub_u32(select(~63530u, 4294967295u, false), ~1u) >> (0u % 32u)) << (reverseBits(74907u) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(min(_wgslsmith_mult_u32(min(34189u, 4294967295u), 1u), _wgslsmith_mult_u32(firstLeadingBit(17672u), max(24663u, 12051u))), 0u, _wgslsmith_sub_u32(~_wgslsmith_mod_u32(4294967295u, 7661u), 1u), ~1u), -vec4<i32>(_wgslsmith_clamp_i32(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, var_1.x), vec3<i32>(u_input.a, 2147483647i, -25032i)), u_input.a), u_input.a, ~var_1.x, u_input.a), 2494u);
}

