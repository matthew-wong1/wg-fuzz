struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_2,
    c: vec3<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
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

var<private> global0: vec2<i32> = vec2<i32>(14496i, -42752i);

var<private> global1: array<vec4<i32>, 1>;

var<private> global2: vec3<f32> = vec3<f32>(671f, 800f, 215f);

var<private> global3: array<Struct_4, 19>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = !(!select(select(vec4<bool>(true, true, arg_0.a, true), vec4<bool>(true, arg_0.a, true, false), 46526i > u_input.c), !select(vec4<bool>(arg_0.a, true, false, arg_0.a), vec4<bool>(true, true, arg_0.a, true), vec4<bool>(false, false, arg_0.a, arg_0.a)), select(vec4<bool>(true, false, true, true), vec4<bool>(false, arg_0.a, true, arg_0.a), !vec4<bool>(false, false, arg_0.a, arg_0.a))));
    global3 = array<Struct_4, 19>();
    global2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1447f + -770f))), -1788f, _wgslsmith_f_op_f32(-global2.x)));
    let var_1 = Struct_2(Struct_1(true, select(select(_wgslsmith_div_vec4_u32(arg_0.b, vec4<u32>(0u, 0u, 1u, arg_0.e)), arg_0.b, false), arg_0.b, !var_0.x), vec4<i32>(global0.x | reverseBits(18680i), global0.x, firstLeadingBit(u_input.c << (arg_0.e % 32u)), -(~arg_0.c.x)), vec3<i32>(_wgslsmith_sub_i32(1i, abs(u_input.c)), ~(global0.x | global0.x), 1i), arg_0.b.x), var_0.yzw, !vec4<bool>(var_0.x, _wgslsmith_sub_i32(60102i, global0.x) != u_input.c, arg_0.a, arg_0.a));
    var var_2 = firstLeadingBit(u_input.c) & reverseBits(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(-19947i, -72629i, var_1.a.c.x, -2147483647i), global1[_wgslsmith_index_u32(countOneBits(var_1.a.b.x), 1u)]), reverseBits(vec4<i32>(-2147483647i, arg_0.d.x, arg_0.d.x, 0i)) >> (var_1.a.b % vec4<u32>(32u))));
    return -1986f;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<bool>) -> vec3<bool> {
    global2 = arg_0.wzz;
    global2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_0.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(Struct_1(false, vec4<u32>(7509u, 4294967295u, 8391u, u_input.a.x), vec4<i32>(-26776i, 12066i, global0.x, 2147483647i), vec3<i32>(u_input.c, global0.x, -17949i), 22279u))))), _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_vec3_f32(select(arg_0.yxy, vec3<f32>(1053f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(651f + global2.x) * arg_0.x), _wgslsmith_f_op_f32(-1864f - 1000f)), true)));
    var var_0 = Struct_3(vec2<i32>(global0.x, _wgslsmith_dot_vec3_i32(~_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, global0.x, -31547i), vec3<i32>(global0.x, -1i, 2147483647i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(24479i, global0.x, 58313i), vec3<i32>(global0.x, global0.x, u_input.c) >> (u_input.a % vec3<u32>(32u)), countOneBits(vec3<i32>(u_input.c, u_input.c, 2147483647i))))));
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, arg_0.x)))));
    let var_1 = global3[_wgslsmith_index_u32(u_input.a.x & u_input.b, 19u)];
    return select(!vec3<bool>(37660u <= (var_1.b.a.e >> (20288u % 32u)), !any(vec2<bool>(true, true)), arg_1.x), select(var_1.b.c.wwz, !var_1.b.c.xyx, false), !(!all(var_1.a)));
}

fn func_1(arg_0: u32) -> Struct_4 {
    let var_0 = select(!vec3<bool>(select(true, true, true), any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), true)), true), vec3<bool>(all(vec4<bool>(true, true, true, true)), 1000f == _wgslsmith_f_op_f32(step(-1122f, global2.x)), all(vec4<bool>(true, select(true, true, false), false, true))), select(!select(func_2(vec4<f32>(global2.x, -537f, 1125f, global2.x), vec2<bool>(false, true)), func_2(vec4<f32>(-1050f, global2.x, 1473f, 984f), vec2<bool>(false, true)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false)), select(vec3<bool>(true, true, select(true, true, false)), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)))), func_2(vec4<f32>(911f, _wgslsmith_f_op_f32(ceil(-484f)), -2043f, global2.x), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 210f, 363f, global2.x)), vec2<bool>(true, true)).xx)));
    let var_1 = vec3<u32>(_wgslsmith_sub_u32(67238u, u_input.a.x << (arg_0 % 32u)), ~(~abs(_wgslsmith_div_u32(arg_0, u_input.a.x))), 50342u);
    global2 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global2.x)), -938f), _wgslsmith_f_op_f32(min(-380f, _wgslsmith_f_op_f32(floor(global2.x)))), _wgslsmith_f_op_f32(799f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(false, vec4<u32>(999u, var_1.x, u_input.b, 4294967295u), vec4<i32>(u_input.c, 1i, u_input.c, 57859i), vec3<i32>(u_input.c, 1i, global0.x), u_input.b))))));
    var var_2 = Struct_3(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, -21786i >> (u_input.b % 32u), global0.x, -1i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, global0.x, 40336i, -2147483647i), -vec4<i32>(-2147483647i, global0.x, 0i, u_input.c))), min(~_wgslsmith_div_i32(u_input.c, 2382i), 0i)));
    let var_3 = countOneBits(-20441i ^ u_input.c);
    return Struct_4(var_0, Struct_2(Struct_1(!var_0.x & var_0.x, select(vec4<u32>(var_1.x, 1u, 54053u, u_input.b) << (vec4<u32>(var_1.x, arg_0, var_1.x, var_1.x) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(arg_0, 0u, 116169u, u_input.b)), true), ~vec4<i32>(u_input.c, var_2.a.x, 0i, -5428i), -vec3<i32>(1i, 8908i, 36656i) << (max(u_input.a, vec3<u32>(35552u, var_1.x, arg_0)) % vec3<u32>(32u)), arg_0), func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -387f, global2.x, global2.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(174f, 670f, global2.x, -687f), vec4<f32>(global2.x, 635f, global2.x, -515f), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)))), var_0.zy), !(!(!vec4<bool>(var_0.x, var_0.x, false, var_0.x)))), vec3<f32>(global2.x, _wgslsmith_f_op_f32(f32(-1f) * -1840f), -1172f), Struct_1(any(var_0), ~select(select(vec4<u32>(4294967295u, 15023u, 4294967295u, u_input.a.x), vec4<u32>(0u, 9929u, 157729u, var_1.x), vec4<bool>(var_0.x, false, true, var_0.x)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, var_1.x, 0u, 0u), vec4<u32>(var_1.x, arg_0, 4294967295u, 1u)), select(vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(false, true, var_0.x, false), vec4<bool>(true, true, var_0.x, var_0.x))), _wgslsmith_mult_vec4_i32(global1[_wgslsmith_index_u32(50916u, 1u)], _wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(var_3, 1i, var_2.a.x, u_input.c)), max(global1[_wgslsmith_index_u32(u_input.a.x, 1u)], global1[_wgslsmith_index_u32(var_1.x, 1u)]), -vec4<i32>(var_2.a.x, -2147483647i, -17819i, u_input.c))), _wgslsmith_div_vec3_i32(-min(vec3<i32>(var_3, -1i, -1i), vec3<i32>(2147483647i, -37883i, var_2.a.x)), vec3<i32>(-var_3, _wgslsmith_sub_i32(0i, var_3), u_input.c)), ~(~var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.a.x, 0u, firstTrailingBit(u_input.a.x)) ^ ~u_input.a.x, _wgslsmith_dot_vec3_u32(u_input.a, u_input.a)));
    var var_1 = _wgslsmith_f_op_f32(-2641f + -1277f);
    global2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(func_1(var_0.d.e).c)), vec3<f32>(2269f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -387f)), _wgslsmith_f_op_f32(-1141f + var_0.c.x)));
    let var_2 = select(false, true, any(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, 1872f, 1092f, -2302f) * vec4<f32>(var_0.c.x, global2.x, -1262f, 1153f)), !vec2<bool>(var_0.a.x, var_0.b.c.x)).xx)) == ((true & var_0.a.x) || var_0.b.a.a);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_div_f32(-408f, _wgslsmith_f_op_f32(-var_0.c.x))), _wgslsmith_f_op_f32(floor(-447f))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(Struct_1(var_0.d.a, var_0.b.a.b, var_0.d.c, var_0.d.c.yww, var_0.b.a.e)))))))));
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -257f), _wgslsmith_f_op_f32(var_0.c.x * -2079f), global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.x)))))));
    let var_5 = var_4.xwy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(-1007f)));
}

