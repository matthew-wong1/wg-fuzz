struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 34691u, 34104u, 14837u);

var<private> global1: vec2<u32> = vec2<u32>(42723u, 4294967295u);

var<private> global2: array<i32, 24> = array<i32, 24>(-1726i, -43009i, -10553i, -34233i, 0i, 2147483647i, 0i, 2147483647i, 1i, 0i, 1i, 43481i, -1i, 2147483647i, 17428i, i32(-2147483648), -22171i, 2147483647i, 2147483647i, 0i, -31161i, 15236i, -1i, 20103i);

var<private> global3: array<vec2<i32>, 9>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1) -> vec4<i32> {
    global0 = ~(~_wgslsmith_mult_vec4_u32(max(vec4<u32>(u_input.b.x, global0.x, 9597u, global1.x), vec4<u32>(global1.x, 0u, 0u, 1u)) >> (~vec4<u32>(4294967295u, global0.x, global1.x, 24294u) % vec4<u32>(32u)), firstLeadingBit(~vec4<u32>(6953u, u_input.b.x, u_input.b.x, global0.x))));
    let var_0 = arg_2;
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -563f));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_2, arg_0.a.x))), arg_2.b.x, arg_1, _wgslsmith_f_op_f32(round(1694f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(112f, arg_2.b.x, arg_1, var_0.b.x)))));
    return max(countOneBits(vec4<i32>(-46909i >> (u_input.b.x % 32u), -2147483647i | var_0.a.x, var_0.c | -1i, global2[_wgslsmith_index_u32(0u, 24u)] | -2147483647i)), countOneBits(_wgslsmith_mult_vec4_i32(var_0.a, arg_2.a)) | vec4<i32>(global2[_wgslsmith_index_u32(~34687u, 24u)], u_input.a.x, 1i, ~global2[_wgslsmith_index_u32(global0.x, 24u)])) | countOneBits(vec4<i32>(_wgslsmith_sub_i32(-2147483647i, arg_2.c), global2[_wgslsmith_index_u32(70377u, 24u)], (u_input.a.x >> (1u % 32u)) & ~(-16704i), -42441i >> (~global1.x % 32u)));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = vec4<i32>(-65298i, arg_1.a.x, _wgslsmith_dot_vec4_i32(firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(35259i, arg_1.c, 0i, u_input.a.x) & arg_1.a, arg_1.a)), func_3(Struct_2(_wgslsmith_f_op_vec3_f32(arg_1.b.yzy - vec3<f32>(arg_1.b.x, arg_1.b.x, arg_1.b.x)), select(vec3<bool>(arg_0.x, false, false), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), arg_0.x), all(vec3<bool>(arg_0.x, false, true))), _wgslsmith_f_op_f32(-1207f - _wgslsmith_f_op_f32(ceil(1000f))), Struct_1(_wgslsmith_add_vec4_i32(arg_1.a, vec4<i32>(2147483647i, 26623i, -44844i, arg_1.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, 704f, -923f, -387f)), 14866i))), u_input.a.x);
    let var_1 = !(!vec4<bool>(-2643f < arg_1.b.x, arg_0.x, false, arg_0.x));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.b.x)) + arg_1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -815f))), 520f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.b.x, arg_1.b.x)) * _wgslsmith_f_op_f32(1000f + -298f)))));
    let var_3 = _wgslsmith_div_f32(783f, _wgslsmith_f_op_f32(-var_2));
    global0 = ~(~select(vec4<u32>(4294967295u, firstTrailingBit(72943u), firstTrailingBit(global1.x), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, u_input.b.x, 0u), vec3<u32>(global0.x, 4294967295u, global0.x))), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.x, u_input.b.x, 1u, global0.x), vec4<u32>(global1.x, u_input.b.x, global0.x, u_input.b.x), vec4<u32>(global0.x, 1u, u_input.b.x, u_input.b.x)), vec4<u32>(88843u, 0u, 35918u, global0.x)), any(vec3<bool>(var_1.x, var_1.x, arg_0.x))));
    return Struct_1(vec4<i32>(~_wgslsmith_sub_i32(29669i, arg_1.c) << (~global0.x % 32u), ~(-(u_input.a.x ^ -12036i)), _wgslsmith_div_i32(abs(-67159i | global2[_wgslsmith_index_u32(12709u, 24u)]), var_0.x << (0u % 32u)), ~(-41698i)), vec4<f32>(arg_1.b.x, _wgslsmith_f_op_f32(abs(var_2)), _wgslsmith_f_op_f32(arg_1.b.x + 187f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(642f, var_3, var_1.x)) * 634f))), firstTrailingBit(-_wgslsmith_sub_i32(_wgslsmith_clamp_i32(15636i, -62284i, -100381i), var_0.x)));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: u32) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-arg_0.b.zyz), vec3<bool>(!all(vec3<bool>(false, false, false)) & true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.b.x), -1283f)) > -1052f, true), false);
    let var_1 = func_2(var_0.b.zz, arg_0);
    let var_2 = select(vec4<bool>(var_0.b.x != any(vec4<bool>(var_0.b.x, var_0.b.x, false, var_0.c)), var_0.b.x, var_0.c, any(!(!vec4<bool>(var_0.b.x, false, false, true)))), !vec4<bool>(any(var_0.b), true, !(var_0.b.x && var_0.c), !any(vec4<bool>(var_0.c, var_0.b.x, var_0.b.x, false))), var_0.c);
    let var_3 = !(abs(firstTrailingBit(abs(arg_0.a.x))) == 0i);
    global0 = reverseBits(vec4<u32>(0u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, 39656u, arg_2, global0.x), countOneBits(vec4<u32>(8168u, global1.x, 79294u, arg_2))), u_input.b.x, 30663u));
    return var_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-(vec4<i32>(u_input.a.x, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global1.x, global1.x), 24u)], max(-42822i, 0i), -63583i) & _wgslsmith_add_vec4_i32(vec4<i32>(0i, global2[_wgslsmith_index_u32(global0.x, 24u)], -2147483647i, global2[_wgslsmith_index_u32(4294967295u, 24u)]) & vec4<i32>(u_input.a.x, 0i, global2[_wgslsmith_index_u32(global1.x, 24u)], -44399i), ~vec4<i32>(global2[_wgslsmith_index_u32(25726u, 24u)], global2[_wgslsmith_index_u32(4294967295u, 24u)], 2147483647i, u_input.a.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1451f, 775f, 486f, -689f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(vec4<i32>(-10987i, global2[_wgslsmith_index_u32(global1.x, 24u)], u_input.a.x, 11956i), vec4<f32>(-1290f, 153f, 513f, 1256f), 0i), 0i, 0u))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1211f, -606f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(307f, -1589f) - 827f)), !any(select(vec2<bool>(false, true), vec2<bool>(false, false), true)))), _wgslsmith_mult_i32(i32(-1i) * -2147483647i, 0i));
    var var_1 = Struct_2(var_0.b.zyy, vec3<bool>(select(any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true))), select(true, false, u_input.a.x == u_input.a.x), true), true, all(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.x, var_0.b.x))) > -1272f);
    let var_2 = -2147483647i;
    let var_3 = !(!var_1.b.x);
    var var_4 = ~(-(~var_0.a));
    var var_5 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(var_1.a, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.a.x, -2453f, var_1.a.x)))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -671f), _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1048f)))), var_1.b, var_1.c);
    var var_6 = Struct_2(vec3<f32>(-791f, _wgslsmith_f_op_f32(var_0.b.x * 1266f), var_5.a.x), !var_1.b, !(-abs(var_4.x) != global2[_wgslsmith_index_u32(2314u, 24u)]));
    let var_7 = reverseBits(global0.zxy);
    global2 = array<i32, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(-var_0.c, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_0.b))), ~vec2<u32>(_wgslsmith_div_u32(var_7.x, u_input.b.x), abs(countOneBits(global0.x))));
}

