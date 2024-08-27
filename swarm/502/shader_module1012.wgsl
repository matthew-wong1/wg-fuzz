struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
    c: vec3<bool>,
    d: Struct_2,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 11597i;

var<private> global1: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)));

var<private> global2: array<vec2<i32>, 2>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32, arg_3: u32) -> f32 {
    let var_0 = arg_1.a;
    global1 = array<Struct_1, 27>();
    var var_1 = max(arg_2, ~_wgslsmith_div_u32(arg_2, ~9534u ^ _wgslsmith_mult_u32(0u, u_input.b.x)));
    var var_2 = Struct_1(vec2<bool>(!all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false))), true));
    let var_3 = global1[_wgslsmith_index_u32(~u_input.b.x, 27u)];
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-167f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-604f, _wgslsmith_f_op_f32(abs(-240f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -790f), -1603f))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-699f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1002f * 1122f)), true)), _wgslsmith_f_op_f32(f32(-1f) * -1481f), false)));
}

fn func_2(arg_0: vec2<u32>, arg_1: u32) -> Struct_3 {
    var var_0 = Struct_2(abs(firstTrailingBit(_wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.a.x, -13873i), ~u_input.a.x))));
    let var_1 = firstLeadingBit(~select(vec3<u32>(~u_input.b.x, arg_0.x, firstLeadingBit(60829u)), max(~vec3<u32>(arg_1, arg_0.x, arg_0.x), ~vec3<u32>(u_input.b.x, arg_1, arg_1)), select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), true)));
    let var_2 = global1[_wgslsmith_index_u32(36740u, 27u)];
    var var_3 = global1[_wgslsmith_index_u32(u_input.b.x, 27u)];
    global1 = array<Struct_1, 27>();
    return Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_2(var_0.a), Struct_2(u_input.a.x), 1u, 0u)), _wgslsmith_f_op_f32(f32(-1f) * -452f)), _wgslsmith_f_op_f32(457f + _wgslsmith_f_op_f32(f32(-1f) * -1633f)), 280f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1264f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-1184f, 931f, 351f, -629f), vec4<f32>(652f, -944f, -2065f, -812f)), vec4<f32>(1000f, -249f, -1988f, -623f))))), -45251i, vec3<bool>(1i != _wgslsmith_div_i32(~u_input.a.x, u_input.a.x), var_2.a.x, !var_2.a.x), Struct_2(u_input.a.x), ~u_input.a.yz >> (arg_0 % vec2<u32>(32u)));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec4<i32>, arg_3: Struct_3) -> Struct_2 {
    var var_0 = arg_3;
    global0 = _wgslsmith_dot_vec2_i32(arg_2.zw, arg_2.xz);
    var_0 = func_2(min(~(~max(vec2<u32>(4294967295u, 13677u), vec2<u32>(u_input.b.x, 0u))), vec2<u32>(~u_input.b.x & firstLeadingBit(u_input.b.x), u_input.b.x)), 4294967295u << (u_input.b.x % 32u));
    var_0 = arg_3;
    let var_1 = _wgslsmith_f_op_f32(-arg_1.x);
    return func_2(u_input.b, _wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.b.x, _wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.b), firstTrailingBit(u_input.b)), u_input.b.x), u_input.b.x)).d;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2) -> Struct_2 {
    global1 = array<Struct_1, 27>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(709f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-1447f, -1207f, true)))), 2737f, -552f))));
    let var_1 = _wgslsmith_clamp_vec3_i32(firstLeadingBit(-abs(vec3<i32>(u_input.a.x, -23347i, 19779i))), -_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i >> (u_input.b.x % 32u), u_input.a.x, select(-11418i, arg_1.a, false)), vec3<i32>(countOneBits(arg_0.x), arg_0.x, _wgslsmith_add_i32(arg_0.x, -590i))), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.a, 22101i, -2147483647i), _wgslsmith_add_vec3_i32(~vec3<i32>(-13370i, 23931i, 1i), -vec3<i32>(u_input.a.x, u_input.a.x, arg_0.x))) >> (vec3<u32>(abs(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, u_input.b.x))), _wgslsmith_mult_u32(23000u, 0u & u_input.b.x), abs(u_input.b.x)) % vec3<u32>(32u)));
    var var_2 = Struct_1(!(!func_2(~u_input.b, ~1u).c.yy));
    let var_3 = global1[_wgslsmith_index_u32(1u, 27u)];
    return Struct_2(_wgslsmith_clamp_i32(~_wgslsmith_div_i32(-1i, abs(-37917i)), _wgslsmith_mod_i32(~arg_0.x, max(_wgslsmith_sub_i32(arg_1.a, 3094i), arg_0.x)), countOneBits(1618i)));
}

fn func_5(arg_0: Struct_2, arg_1: bool) -> Struct_3 {
    let var_0 = select(select(vec4<bool>(true, false, true, func_2(u_input.b, 4294967295u).c.x | all(vec3<bool>(true, false, arg_1))), select(vec4<bool>(arg_1, all(vec3<bool>(true, true, arg_1)), u_input.b.x < 39809u, any(vec3<bool>(true, false, arg_1))), select(vec4<bool>(false, arg_1, arg_1, true), select(vec4<bool>(true, true, arg_1, false), vec4<bool>(false, true, true, true), vec4<bool>(arg_1, true, false, arg_1)), !vec4<bool>(true, arg_1, true, arg_1)), select(select(vec4<bool>(true, true, true, arg_1), vec4<bool>(arg_1, false, true, false), vec4<bool>(arg_1, arg_1, arg_1, true)), select(vec4<bool>(arg_1, false, false, true), vec4<bool>(arg_1, arg_1, true, arg_1), arg_1), false)), vec4<bool>(!(!arg_1), arg_1, false, any(vec2<bool>(arg_1, arg_1)))), !(!vec4<bool>(true || arg_1, all(vec2<bool>(arg_1, arg_1)), false, any(vec4<bool>(arg_1, true, arg_1, false)))), any(select(vec4<bool>(arg_1 | true, arg_1, arg_1, !arg_1), vec4<bool>(any(vec4<bool>(true, true, arg_1, arg_1)), arg_1, true, false), true == !arg_1)));
    var var_1 = vec4<bool>(true, true, var_0.x, any(func_2(abs(u_input.b), select(firstLeadingBit(0u), u_input.b.x, arg_1 && true)).c));
    var_1 = !select(select(select(var_0, !vec4<bool>(false, true, true, var_0.x), !var_0), var_0, -2612f >= _wgslsmith_f_op_f32(sign(-870f))), vec4<bool>(false, true, arg_1, true), arg_1 | any(var_0.yy));
    var var_2 = global1[_wgslsmith_index_u32(select(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, abs(~u_input.b.x), _wgslsmith_mult_u32(24827u, _wgslsmith_dot_vec2_u32(u_input.b, u_input.b)), 4294967295u), ~((vec4<u32>(0u, u_input.b.x, 1987u, u_input.b.x) >> (vec4<u32>(4294967295u, 15786u, u_input.b.x, u_input.b.x) % vec4<u32>(32u))) << (min(vec4<u32>(0u, u_input.b.x, 64745u, 4294967295u), vec4<u32>(2520u, u_input.b.x, 4294967295u, 0u)) % vec4<u32>(32u)))), 1734u, arg_1), 27u)];
    var var_3 = true;
    return func_2(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, 1u), _wgslsmith_add_vec2_u32(select(vec2<u32>(1u, 1u), vec2<u32>(u_input.b.x, 1u) & vec2<u32>(0u, u_input.b.x), false), vec2<u32>(1u, _wgslsmith_div_u32(u_input.b.x, u_input.b.x)))), ~_wgslsmith_mult_u32(u_input.b.x, u_input.b.x));
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_3) -> i32 {
    let var_0 = vec2<u32>(u_input.b.x, ~countOneBits(1u));
    var var_1 = ~reverseBits(func_2(min(firstLeadingBit(vec2<u32>(0u, arg_0.x)), vec2<u32>(arg_0.x, 4294967295u)), 4294967295u ^ var_0.x).e);
    global2 = array<vec2<i32>, 2>();
    var_1 = global2[_wgslsmith_index_u32(u_input.b.x, 2u)];
    var var_2 = u_input.b.x;
    return func_4(min(_wgslsmith_sub_vec4_i32(u_input.a, select(_wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(1i, u_input.a.x, -14267i, var_1.x)), vec4<i32>(u_input.a.x, -1i, 0i, 1i), false)), vec4<i32>(~_wgslsmith_mod_i32(arg_1.b, -34795i), -func_4(u_input.a, Struct_2(50098i)).a, arg_1.b, -(u_input.a.x ^ u_input.a.x))), Struct_2(u_input.a.x)).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 71708u;
    global0 = func_6(abs(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 66217u)), func_5(func_4(u_input.a, func_1(Struct_1(vec2<bool>(true, true)), vec3<f32>(-139f, 1637f, 1000f), u_input.a, Struct_3(vec4<f32>(1000f, -343f, 1213f, -1111f), u_input.a.x, vec3<bool>(false, true, true), Struct_2(u_input.a.x), global2[_wgslsmith_index_u32(0u, 2u)]))), !any(vec2<bool>(false, false)))) ^ firstLeadingBit(_wgslsmith_mult_i32(1i | u_input.a.x, u_input.a.x));
    let var_1 = 1014f;
    var var_2 = Struct_1(vec2<bool>(false, true));
    global2 = array<vec2<i32>, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f)))), vec3<u32>(var_0, u_input.b.x << (u_input.b.x % 32u), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 5384u, 13982u, u_input.b.x), vec4<u32>(var_0, 1u, 45839u, 49429u)) | _wgslsmith_div_u32(167u, var_0))));
}

