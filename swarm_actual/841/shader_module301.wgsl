struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec3<u32>(73628u, 0u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 7097u, 0u)), Struct_1(vec3<u32>(0u, 82960u, 42508u)), Struct_1(vec3<u32>(31034u, 0u, 40512u)), Struct_1(vec3<u32>(1u, 0u, 138880u)), Struct_1(vec3<u32>(4816u, 26193u, 98498u)), Struct_1(vec3<u32>(25675u, 0u, 4294967295u)), Struct_1(vec3<u32>(95476u, 54578u, 32710u)), Struct_1(vec3<u32>(1u, 4294967295u, 35997u)), Struct_1(vec3<u32>(0u, 1u, 46521u)), Struct_1(vec3<u32>(11733u, 9356u, 0u)), Struct_1(vec3<u32>(4294967295u, 1u, 0u)), Struct_1(vec3<u32>(4294967295u, 8058u, 0u)), Struct_1(vec3<u32>(800u, 4294967295u, 42465u)), Struct_1(vec3<u32>(1u, 37905u, 0u)), Struct_1(vec3<u32>(12227u, 0u, 0u)), Struct_1(vec3<u32>(25062u, 108218u, 29687u)), Struct_1(vec3<u32>(8045u, 0u, 18467u)), Struct_1(vec3<u32>(5709u, 4294967295u, 23136u)), Struct_1(vec3<u32>(12044u, 0u, 55092u)), Struct_1(vec3<u32>(0u, 4294967295u, 1u)), Struct_1(vec3<u32>(10463u, 0u, 68837u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 54821u)), Struct_1(vec3<u32>(37110u, 4294967295u, 0u)), Struct_1(vec3<u32>(0u, 1u, 4045u)), Struct_1(vec3<u32>(12744u, 45833u, 56424u)), Struct_1(vec3<u32>(11004u, 11904u, 71979u)), Struct_1(vec3<u32>(1u, 8393u, 0u)), Struct_1(vec3<u32>(1u, 86818u, 51367u)), Struct_1(vec3<u32>(40358u, 55306u, 1u)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec3<bool>) -> vec4<bool> {
    global0 = array<Struct_1, 30>();
    let var_0 = _wgslsmith_dot_vec3_i32(-vec3<i32>(_wgslsmith_sub_i32(u_input.c.x & 12587i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, 0i, -1i, -1i), vec4<i32>(0i, -24801i, u_input.c.x, u_input.c.x))), -(~u_input.c.x), ~22817i), abs(vec3<i32>(min(24207i, arg_0) | min(6367i, u_input.c.x), -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, u_input.c.x, u_input.c.x, 2147483647i), vec4<i32>(32606i, 1i, arg_0, -2147483647i)), _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.c.x, 10120i), -1i))));
    var var_1 = global0[_wgslsmith_index_u32(u_input.a.x << (_wgslsmith_sub_u32(u_input.a.x, 4294967295u) % 32u), 30u)];
    var var_2 = min(13421u, abs(max(u_input.b.x, countOneBits(select(21740u, u_input.a.x, arg_1.a)))));
    global0 = array<Struct_1, 30>();
    return arg_1.b;
}

fn func_2(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = select(func_3(arg_0, Struct_2(true, arg_2.b), vec3<bool>(_wgslsmith_f_op_f32(select(-297f, 681f, false)) > _wgslsmith_div_f32(1882f, -348f), arg_2.b.x, !any(arg_2.b))), select(vec4<bool>(!arg_2.b.x, arg_2.a, true, true), !select(func_3(2147483647i, arg_2, vec3<bool>(arg_2.a, arg_2.b.x, true)), !arg_2.b, select(vec4<bool>(arg_2.b.x, false, false, false), vec4<bool>(false, false, arg_2.b.x, true), arg_2.b)), true), !arg_2.b);
    var var_1 = Struct_1(firstLeadingBit(~(~u_input.b) << (abs(vec3<u32>(1u, u_input.b.x, 21541u)) % vec3<u32>(32u))));
    let var_2 = _wgslsmith_sub_i32(arg_0, u_input.c.x);
    let var_3 = !select(func_3(reverseBits(-5031i), Struct_2(var_0.x, select(vec4<bool>(arg_2.a, false, var_0.x, arg_2.a), arg_2.b, true)), !func_3(-1i, arg_2, vec3<bool>(false, false, arg_2.b.x)).zwx).yyy, select(var_0.xyz, !func_3(27468i, arg_2, vec3<bool>(true, false, true)).wxw, func_3(arg_0 & var_2, Struct_2(true, vec4<bool>(arg_2.b.x, false, false, false)), var_0.wzy).zyz), !(1u > var_1.a.x));
    return Struct_2(var_0.x, vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1356f, -715f, var_0.x))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(864f, 1025f)) * -451f), !any(!var_0.xyz), select(!var_0.x | all(arg_2.b), all(vec3<bool>(false, var_3.x, arg_2.a)), !(!arg_2.a)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, var_1.a.x) >> (vec4<u32>(var_1.a.x, u_input.b.x, 1u, u_input.b.x) % vec4<u32>(32u)), vec4<u32>(var_1.a.x, var_1.a.x, 1384u, 17876u)) == 0u));
}

fn func_4(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: f32) -> Struct_2 {
    let var_0 = func_2(~u_input.c.x, abs(_wgslsmith_sub_vec3_i32(u_input.c >> (~vec3<u32>(4294967295u, 20895u, 12886u) % vec3<u32>(32u)), ~(u_input.c >> (u_input.b % vec3<u32>(32u))))), func_2(abs(-45443i), vec3<i32>(_wgslsmith_clamp_i32(1i, 4743i, firstTrailingBit(0i)), u_input.c.x | arg_0, -2147483647i), Struct_2(!arg_1.x, select(arg_2.b, !vec4<bool>(false, false, false, arg_2.b.x), func_3(u_input.c.x, arg_2, vec3<bool>(arg_2.b.x, arg_2.a, arg_2.a))))));
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    let var_1 = global0[_wgslsmith_index_u32(~u_input.a.x, 30u)];
    let var_2 = var_0;
    return func_2(arg_0, vec3<i32>(u_input.c.x, arg_0, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, u_input.c.x, arg_0, arg_0) << (vec4<u32>(u_input.b.x, var_1.a.x, u_input.b.x, var_1.a.x) % vec4<u32>(32u)), vec4<i32>(u_input.c.x, arg_0, -1i, -57189i)), vec4<i32>(-1i) * -vec4<i32>(arg_0, arg_0, -11607i, u_input.c.x))), func_2(71320i, countOneBits(~vec3<i32>(arg_0, -1i, 21585i)) | select(u_input.c, min(u_input.c, vec3<i32>(arg_0, -34492i, arg_0)), any(arg_1)), func_2(0i, _wgslsmith_add_vec3_i32(u_input.c, _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c.x, -11978i, u_input.c.x), vec3<i32>(-43469i, 0i, 1i), u_input.c)), arg_2)));
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = func_4(_wgslsmith_add_i32(-37410i, -(~(-25698i))), vec2<bool>(true, true), func_2(2147483647i, _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(21857i, u_input.c.x, u_input.c.x), vec3<i32>(-1i, 1i, u_input.c.x)), -(vec3<i32>(u_input.c.x, 64302i, -15970i) ^ u_input.c)), Struct_2(min(arg_0, 1u) == _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, arg_0, u_input.b.x, 10457u), vec4<u32>(4294967295u, 117274u, 4294967295u, u_input.a.x)), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-993f))));
    var var_1 = vec3<f32>(1f, 1f, 1f);
    var var_2 = ~_wgslsmith_sub_u32(~arg_0 << (u_input.a.x % 32u), ~arg_0);
    var var_3 = global0[_wgslsmith_index_u32(firstTrailingBit(27364u), 30u)];
    global0 = array<Struct_1, 30>();
    return Struct_2(arg_0 >= ~(~abs(u_input.b.x)), !select(!vec4<bool>(var_0.b.x, var_0.a, true, var_0.a), !var_0.b, (u_input.c.x ^ -1i) >= ~44962i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 30>();
    let var_0 = -476f;
    let var_1 = func_1(~9182u);
    global0 = array<Struct_1, 30>();
    let var_2 = !(!(!(var_0 > _wgslsmith_div_f32(var_0, 1022f))));
    let var_3 = countOneBits(u_input.b.yy);
    let x = u_input.a;
    s_output = StorageBuffer(25252i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(493f))), _wgslsmith_f_op_f32(-1015f * _wgslsmith_f_op_f32(var_0 + -1000f)))));
}

