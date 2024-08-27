struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 14> = array<vec2<bool>, 14>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true));

var<private> global1: array<vec2<u32>, 22> = array<vec2<u32>, 22>(vec2<u32>(51760u, 0u), vec2<u32>(928u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(35740u, 9164u), vec2<u32>(19674u, 29577u), vec2<u32>(1u, 4294967295u), vec2<u32>(46658u, 1u), vec2<u32>(1u, 31472u), vec2<u32>(57515u, 0u), vec2<u32>(7652u, 22444u), vec2<u32>(0u, 1u), vec2<u32>(32369u, 35446u), vec2<u32>(43339u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 21606u), vec2<u32>(5824u, 52313u), vec2<u32>(11072u, 5813u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 0u), vec2<u32>(0u, 0u));

var<private> global2: vec2<f32> = vec2<f32>(-716f, 193f);

var<private> global3: array<vec4<i32>, 29>;

var<private> global4: array<u32, 23>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_4) -> u32 {
    let var_0 = Struct_1(~65165i, ~global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~4294967295u), select(~98088u, firstLeadingBit(24493u), select(true, false, true))), 23u)]);
    var var_1 = (max(~1u, min(abs(var_0.b), ~4294967295u)) ^ firstTrailingBit(70528u)) < var_0.b;
    global0 = array<vec2<bool>, 14>();
    let var_2 = _wgslsmith_mod_vec4_u32(~_wgslsmith_add_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(var_0.b, 123313u, var_0.b, 4294967295u), vec4<u32>(0u, 1u, 1u, arg_1.b)), vec4<u32>(1u, arg_2.a.x, var_0.b & 39635u, _wgslsmith_div_u32(4294967295u, arg_2.a.x))), vec4<u32>(_wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(21927u, 23u)], arg_1.b, 4294967295u, arg_2.a.x), vec4<u32>(arg_2.a.x, 61906u, var_0.b, arg_2.a.x), vec4<u32>(var_0.b, var_0.b, arg_2.b.b, global4[_wgslsmith_index_u32(0u, 23u)])), ~abs(vec4<u32>(17745u, global4[_wgslsmith_index_u32(var_0.b, 23u)], 68491u, 0u))), global4[_wgslsmith_index_u32(31435u, 23u)], var_0.b, 0u));
    var var_3 = vec2<i32>(-arg_1.a, var_0.a) & -vec2<i32>(select(arg_2.b.a, -1i, false), -(~u_input.a));
    return 4294967295u;
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.a, u_input.b.x, u_input.b.x), _wgslsmith_sub_vec3_i32(u_input.b, u_input.b)), max(~min(2147483647i, 0i), -3768i), _wgslsmith_div_i32(1i, abs(u_input.b.x))), u_input.b, -_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(select(vec3<i32>(u_input.b.x, -2147483647i, -1i), u_input.b, true), u_input.b), vec3<i32>(-675i, ~28195i, ~25577i)));
    var var_1 = Struct_1(-firstTrailingBit(30556i << (global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 23u)], 23u)] >> (24301u % 32u), 23u)] % 32u)), ~global4[_wgslsmith_index_u32(17143u, 23u)]);
    global2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-402f))), global2.x);
    global3 = array<vec4<i32>, 29>();
    var var_2 = Struct_1(countOneBits(-max(-28962i, u_input.a) << (func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(1668f, global2.x, -1000f) + vec3<f32>(global2.x, -363f, 958f)), Struct_1(2147483647i, 11545u), Struct_2(vec3<u32>(global4[_wgslsmith_index_u32(var_1.b, 23u)], var_1.b, var_1.b), Struct_1(-33894i, var_1.b), global3[_wgslsmith_index_u32(25606u, 29u)]), Struct_4(global2.x, global2.x, vec4<f32>(260f, -638f, global2.x, 769f))) % 32u)), ~(1u << (((var_1.b >> (2026u % 32u)) >> (var_1.b % 32u)) % 32u)));
    return Struct_1(24852i, var_2.b);
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_3) -> Struct_1 {
    let var_0 = Struct_2(arg_0.zwy, func_2(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), true)), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(~73244u, _wgslsmith_add_u32(arg_0.x, arg_0.x), _wgslsmith_div_u32(62713u, 24563u)), ~(~vec3<u32>(global4[_wgslsmith_index_u32(33316u, 23u)], 4294967295u, global4[_wgslsmith_index_u32(0u, 23u)])), false), ~_wgslsmith_sub_vec3_u32(select(vec3<u32>(arg_0.x, 10504u, global4[_wgslsmith_index_u32(0u, 23u)]), arg_0.zxx, true), vec3<u32>(14653u, arg_0.x, global4[_wgslsmith_index_u32(1u, 23u)]))), 29u)]);
    global3 = array<vec4<i32>, 29>();
    let var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(arg_1.a)), -698f))) - _wgslsmith_div_f32(arg_1.a, _wgslsmith_f_op_f32(ceil(-1205f)))), _wgslsmith_f_op_f32(exp2(arg_1.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.a))), global2.x, arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)))));
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(2687f)))), var_1.b, true)));
    return var_0.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec2<u32>, arg_3: bool) -> Struct_2 {
    var var_0 = !vec2<bool>(arg_3, true);
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + -387f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a))), ~abs(select(vec4<i32>(14469i, arg_0.a, -2147483647i, -35539i), vec4<i32>(arg_0.a, arg_0.a, arg_0.a, -2147483647i), var_0.x) | global3[_wgslsmith_index_u32(func_1(vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 23u)], 23u)], 23u)], 0u, arg_2.x, arg_0.b), Struct_3(arg_1.b, global3[_wgslsmith_index_u32(1u, 29u)])).b, 29u)]));
    global2 = _wgslsmith_f_op_vec2_f32(step(arg_1.c.yx, arg_1.c.yy));
    let var_2 = Struct_2(_wgslsmith_sub_vec3_u32(vec3<u32>(firstTrailingBit(arg_2.x), 50995u, ~reverseBits(31083u)), min(_wgslsmith_sub_vec3_u32(~vec3<u32>(global4[_wgslsmith_index_u32(arg_0.b, 23u)], 50143u, global4[_wgslsmith_index_u32(0u, 23u)]), min(vec3<u32>(1u, 45497u, arg_0.b), vec3<u32>(arg_0.b, 35417u, 24816u))), countOneBits(vec3<u32>(arg_0.b, 4294967295u, arg_2.x)))), func_1(~select(vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 23u)], 23u)], global4[_wgslsmith_index_u32(4294967295u, 23u)], 3308u, arg_0.b), _wgslsmith_div_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(0u, 23u)], 8347u, 1u, arg_2.x), vec4<u32>(1u, arg_2.x, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_0.b, 23u)], 23u)], arg_2.x)), any(vec4<bool>(var_0.x, false, false, false))), Struct_3(_wgslsmith_div_f32(1541f, _wgslsmith_f_op_f32(var_1.a * var_1.a)), _wgslsmith_mult_vec4_i32(var_1.b, vec4<i32>(1i, var_1.b.x, u_input.b.x, arg_0.a)) >> (~vec4<u32>(arg_0.b, global4[_wgslsmith_index_u32(0u, 23u)], 73921u, 0u) % vec4<u32>(32u)))), select(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(firstLeadingBit(arg_2.x & 1u), 19829u), 29u)], var_1.b, !vec4<bool>(any(vec3<bool>(arg_3, var_0.x, arg_3)), all(vec3<bool>(true, var_0.x, var_0.x)), any(vec3<bool>(var_0.x, false, arg_3)), false)));
    let var_3 = Struct_1(var_2.c.x, arg_2.x);
    return Struct_2(var_2.a, func_1(~(max(vec4<u32>(var_3.b, 4294967295u, var_3.b, global4[_wgslsmith_index_u32(50153u, 23u)]), vec4<u32>(0u, var_3.b, 26778u, 4294967295u)) | vec4<u32>(var_3.b, 4294967295u, 7737u, arg_2.x)), var_1), -var_2.c >> (reverseBits(max(vec4<u32>(arg_0.b, global4[_wgslsmith_index_u32(arg_2.x, 23u)], arg_0.b, 13212u) >> (vec4<u32>(global4[_wgslsmith_index_u32(var_2.a.x, 23u)], var_2.b.b, arg_2.x, 0u) % vec4<u32>(32u)), vec4<u32>(arg_2.x, arg_2.x, arg_0.b, var_3.b) | vec4<u32>(var_3.b, 4294967295u, 99844u, 0u))) % vec4<u32>(32u)));
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: i32) -> Struct_1 {
    let var_0 = ~(~select(firstTrailingBit(~global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 23u)], 23u)], 22u)]), arg_0.a.xz, vec2<bool>(true, true)));
    var var_1 = Struct_1(select(_wgslsmith_dot_vec2_i32(arg_0.c.zy, func_4(Struct_1(25705i, 10102u), Struct_4(arg_1, 710f, vec4<f32>(global2.x, global2.x, -1000f, 605f)), var_0, true).c.zz), _wgslsmith_sub_i32(_wgslsmith_sub_i32(arg_2, 3435i) & (47697i << (arg_0.b.b % 32u)), 49729i), arg_1 == _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(global2.x, 445f, false)), arg_1))), 1u);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-246f))), arg_0.c);
    global3 = array<vec4<i32>, 29>();
    let var_3 = -347f;
    return func_2(select(select(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), false), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), true), select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true)), any(vec2<bool>(false, true)))), vec4<bool>(any(select(global0[_wgslsmith_index_u32(var_1.b, 14u)], vec2<bool>(true, false), vec2<bool>(false, false))), false, true, any(vec4<bool>(true, false, true, true)) == false), any(select(select(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_0.a.x, 23u)], 14u)], vec2<bool>(true, true), global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(var_0.x, 23u)], 14u)]), global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(7886u, 23u)], 23u)], 14u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(1u, 23u)], var_1.b, 45599u, 58889u), vec4<u32>(16362u, arg_0.b.b, arg_0.b.b, arg_0.b.b)), 14u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(func_1(countOneBits(abs(vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(19447u, 23u)], 23u)], 23u)], global4[_wgslsmith_index_u32(13028u, 23u)], global4[_wgslsmith_index_u32(79446u, 23u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], 23u)]))), Struct_3(global2.x, global3[_wgslsmith_index_u32(0u, 29u)])), Struct_4(604f, global2.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, -1000f, global2.x)) - _wgslsmith_div_vec4_f32(vec4<f32>(global2.x, global2.x, global2.x, 1978f), vec4<f32>(-1606f, 574f, global2.x, 400f)))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(1u, 4294967295u, global4[_wgslsmith_index_u32(1u, 23u)])), vec3<u32>(30807u, ~global4[_wgslsmith_index_u32(6427u, 23u)], 35679u >> (global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 23u)], 23u)], 23u)], 23u)] % 32u))), 22u)], !any(select(vec2<bool>(false, true), global0[_wgslsmith_index_u32(0u, 14u)], global0[_wgslsmith_index_u32(71268u, 14u)]))), -1900f, u_input.a);
    global1 = array<vec2<u32>, 22>();
    global4 = array<u32, 23>();
    let var_1 = ~vec2<u32>(_wgslsmith_add_u32(min(_wgslsmith_mult_u32(var_0.b, 32309u), ~64457u), global4[_wgslsmith_index_u32(24889u, 23u)]), global4[_wgslsmith_index_u32(var_0.b, 23u)]);
    var var_2 = func_4(func_2(!vec4<bool>(var_0.a <= 0i, any(global0[_wgslsmith_index_u32(var_1.x, 14u)]), false, any(vec2<bool>(false, false)))), Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + global2.x)), 742f)), global2.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.x, global2.x, global2.x, global2.x), vec4<f32>(global2.x, -437f, 1226f, 124f), vec4<bool>(false, true, false, false))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(887f, 1047f, 1059f, global2.x))))), var_1 | abs(vec2<u32>(var_0.b, var_1.x)), !all(select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), true), true)));
    let var_3 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1380f + 381f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, 1000f))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(768f, 490f), global2.x) - global2.x)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(126f, 1331f, global2.x, 102f), vec4<f32>(global2.x, 1108f, global2.x, -613f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2.x, global2.x, 744f, global2.x))))))))));
    let var_4 = vec3<i32>(-10068i, select(_wgslsmith_mult_i32(func_1(vec4<u32>(27241u, 11035u, 0u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(76444u, 23u)], 23u)], 23u)]), Struct_3(-149f, var_2.c)).a, u_input.b.x), var_2.b.a, any(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstLeadingBit(0u), select(var_2.b.b, global4[_wgslsmith_index_u32(var_2.b.b, 23u)], true)), 14u)])), var_2.b.a);
    let var_5 = 54928u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(var_3.c, var_3.c))))), global2.x, u_input.b);
}

