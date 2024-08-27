struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: bool,
    d: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
    e: u32,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
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

var<private> global0: array<Struct_3, 28>;

var<private> global1: array<u32, 8>;

var<private> global2: Struct_1 = Struct_1(false, 40535u, -1i, false, -788f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2(arg_0: f32) -> i32 {
    global0 = array<Struct_3, 28>();
    var var_0 = global2.d;
    var var_1 = global2.c;
    let var_2 = global2.d;
    var var_3 = 0i;
    return global2.c;
}

fn func_1() -> Struct_1 {
    var var_0 = true;
    let var_1 = vec2<bool>(false, all(select(vec2<bool>(global2.a, true), select(select(vec2<bool>(global2.a, global2.a), vec2<bool>(false, false), vec2<bool>(global2.d, global2.a)), vec2<bool>(false, false), vec2<bool>(false, global2.d)), true)));
    global1 = array<u32, 8>();
    global1 = array<u32, 8>();
    let var_2 = _wgslsmith_clamp_i32(_wgslsmith_mult_i32(0i, -countOneBits(global2.c)) << (93385u % 32u), ~countOneBits(_wgslsmith_div_i32(global2.c | 0i, -global2.c)), -func_2(1624f));
    return Struct_1(!var_1.x, ~_wgslsmith_div_u32((1u & global1[_wgslsmith_index_u32(u_input.a.x, 8u)]) >> ((7999u << (global2.b % 32u)) % 32u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, 35338u), vec3<u32>(60917u, 1u, 1u))), _wgslsmith_div_i32(-_wgslsmith_mult_i32(func_2(2595f), firstTrailingBit(16870i)), 0i), global2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.e - global2.e)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1049f));
    let var_1 = !(~_wgslsmith_add_i32(1i, -1i) < -func_1().c);
    global2 = Struct_1(true, countOneBits(u_input.a.x), 1i, var_1 && !(~32577i >= arg_0.c), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.d - -968f))));
    let var_2 = Struct_3(countOneBits(u_input.a.x), arg_0, Struct_1(global2.a, ~1u, -68779i, !arg_1.b.x, _wgslsmith_f_op_f32(-global2.e)), vec4<i32>(_wgslsmith_div_i32(abs(-2008i), -(i32(-1i) * -1i)), ~func_2(-1081f), 82519i, _wgslsmith_mod_i32(-7917i, global2.c)), _wgslsmith_dot_vec4_u32(abs(select(vec4<u32>(15868u, 68633u, global2.b, u_input.a.x), vec4<u32>(u_input.a.x, 37260u, 0u, u_input.a.x), true)), ~(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.b, 0u, 6392u, 0u), vec4<u32>(4294967295u, 1835u, 4294967295u, 1u)) | ~vec4<u32>(0u, 1u, 1u, global2.b))));
    let var_3 = true;
    return countOneBits(reverseBits(min(abs(u_input.a.x), 1u))) <= 0u;
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: Struct_1, arg_3: Struct_3) -> Struct_1 {
    let var_0 = func_1();
    var var_1 = vec3<u32>(~(~(~u_input.a.x)), ~_wgslsmith_div_u32(abs(var_0.b) & _wgslsmith_dot_vec3_u32(vec3<u32>(55719u, arg_2.b, 19923u), vec3<u32>(arg_2.b, arg_2.b, global2.b)), var_0.b), reverseBits(0u));
    let var_2 = !global2.a;
    global2 = arg_2;
    global2 = Struct_1(true, _wgslsmith_mod_u32(_wgslsmith_div_u32(1u, 1u >> (0u % 32u)), ~_wgslsmith_clamp_u32(45867u, u_input.a.x, global2.b)) >> (~_wgslsmith_sub_u32(abs(56900u), var_0.b & 0u) % 32u), firstTrailingBit(~1i), false, _wgslsmith_f_op_f32(round(arg_0.a.x)));
    return Struct_1(true, 10022u, min(abs(2386i), -77555i), _wgslsmith_mod_u32(firstLeadingBit(18184u), ~1u) > (20956u >> (u_input.a.x % 32u)), arg_3.c.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = func_4(Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-379f, global2.e, 1000f, 1489f) * vec4<f32>(global2.e, -1770f, global2.e, global2.e)))) * _wgslsmith_div_vec4_f32(vec4<f32>(var_0.e, var_0.e, -130f, global2.e), vec4<f32>(var_0.e, var_0.e, global2.e, -294f)))), !(!func_3(func_1(), Struct_2(vec3<bool>(global2.a, true, false), vec3<bool>(false, var_0.a, var_0.d), false, 1000f))), Struct_1(true, 36842u, -(-2147483647i << (var_0.b % 32u)), any(vec3<bool>(-254f < var_0.e, !global2.d, true)), 529f), Struct_3(~0u, Struct_1(all(!vec4<bool>(global2.a, var_0.a, true, var_0.d)), ~29724u, 37286i, any(select(vec3<bool>(global2.a, true, var_0.d), vec3<bool>(false, true, true), global2.a)), var_0.e), func_1(), ((vec4<i32>(var_0.c, var_0.c, -1i, 22714i) ^ vec4<i32>(-36618i, -1858i, 2147483647i, var_0.c)) << (vec4<u32>(global2.b, global1[_wgslsmith_index_u32(44852u, 8u)], u_input.a.x, 27027u) % vec4<u32>(32u))) >> (select(vec4<u32>(var_0.b, 1u, var_0.b, 1921u) >> (vec4<u32>(155276u, 0u, global1[_wgslsmith_index_u32(1621u, 8u)], 68244u) % vec4<u32>(32u)), vec4<u32>(4294967295u, 15790u, 33316u, global2.b), !vec4<bool>(var_0.d, false, var_0.a, global2.a)) % vec4<u32>(32u)), global1[_wgslsmith_index_u32(global2.b, 8u)]));
    var var_2 = -select(vec3<i32>(-_wgslsmith_div_i32(global2.c, 2147483647i), -2147483647i, 2147483647i), reverseBits(vec3<i32>(2147483647i, var_0.c, var_0.c) << ((vec3<u32>(global2.b, global1[_wgslsmith_index_u32(69738u, 8u)], u_input.a.x) >> (vec3<u32>(4294967295u, global2.b, 0u) % vec3<u32>(32u))) % vec3<u32>(32u))), any(!(!vec2<bool>(global2.d, var_1.a))));
    let var_3 = u_input.a;
    var_2 = select(countOneBits(vec3<i32>(-countOneBits(2147483647i), _wgslsmith_dot_vec3_i32(select(vec3<i32>(0i, var_1.c, 29199i), vec3<i32>(2147483647i, -1i, -1i), var_0.a), ~vec3<i32>(global2.c, -1i, 1i)), abs(_wgslsmith_div_i32(-30150i, var_0.c)))), _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.c, _wgslsmith_mult_i32(var_0.c, 1i), -2147483647i), _wgslsmith_add_vec3_i32(vec3<i32>(global2.c, var_0.c, 5195i), vec3<i32>(0i, -2147483647i, var_0.c)) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 66615u, global2.b), vec3<u32>(73287u, global1[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(var_1.b, 8u)])) % vec3<u32>(32u))), -(~(~vec3<i32>(global2.c, global2.c, -20213i)))), !(!var_0.d));
    global2 = Struct_1(true, abs(global2.b >> (~firstTrailingBit(55178u) % 32u)), -_wgslsmith_mod_i32(2147483647i, -840i), all(select(!(!vec4<bool>(var_0.d, var_0.d, global2.d, false)), select(vec4<bool>(true, false, var_0.a, var_0.d), vec4<bool>(var_1.d, true, global2.a, true), var_0.a), any(vec3<bool>(true, false, true)) || global2.d)), _wgslsmith_f_op_f32(ceil(var_1.e)));
    let x = u_input.a;
    s_output = StorageBuffer(global2.c, var_2.x);
}

