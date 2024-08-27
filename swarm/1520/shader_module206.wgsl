struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<u32>,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
    c: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_1,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(406f, -590f, -251f);

var<private> global1: array<f32, 8>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: vec2<bool>) -> u32 {
    let var_0 = select(select(select(!(!vec4<bool>(false, arg_2.x, false, false)), select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_2.x, true, arg_0, arg_0), arg_2.x), arg_2.x), select(select(select(vec4<bool>(arg_0, arg_0, arg_2.x, true), vec4<bool>(arg_0, true, arg_0, true), vec4<bool>(true, arg_2.x, arg_0, arg_2.x)), select(vec4<bool>(arg_2.x, arg_0, true, false), vec4<bool>(arg_2.x, arg_2.x, true, false), vec4<bool>(arg_0, arg_0, false, arg_2.x)), true), vec4<bool>(false, arg_2.x, all(arg_2), false), vec4<bool>(false, any(vec4<bool>(true, false, true, arg_2.x)), !arg_2.x, all(vec3<bool>(arg_2.x, false, arg_0)))), any(vec4<bool>(true, true, true, true))), vec4<bool>(true, all(select(vec3<bool>(true, arg_0, true), vec3<bool>(false, true, arg_2.x), vec3<bool>(true, arg_2.x, true))) || any(vec4<bool>(arg_0, arg_0, arg_2.x, true)), all(vec3<bool>(arg_0 || arg_2.x, true, all(arg_2))), !(!(34394i != arg_1))), any(select(!(!vec3<bool>(false, arg_0, arg_2.x)), vec3<bool>(arg_2.x, arg_2.x, arg_2.x), arg_2.x)));
    let var_1 = false;
    var var_2 = Struct_5(Struct_2(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~(1u ^ u_input.a), 8u)] - -463f), var_0.yzx, Struct_1(vec2<u32>(0u, firstTrailingBit(0u))), Struct_1(~(~vec2<u32>(u_input.a, u_input.a))), Struct_1(min(vec2<u32>(37502u, 64882u), vec2<u32>(26150u, u_input.a)))), vec4<i32>(arg_1, abs(-arg_1), reverseBits(9252i), ~arg_1 >> (0u % 32u)) << (min(max(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 98077u, 2164u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 0u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), vec4<u32>(12596u, 29556u, u_input.a, u_input.a))), max(~vec4<u32>(u_input.a, u_input.a, 96746u, 110342u), ~vec4<u32>(u_input.a, 4294967295u, u_input.a, 13296u))) % vec4<u32>(32u)), Struct_1(min(abs(vec2<u32>(4294967295u, 6596u) ^ vec2<u32>(4294967295u, u_input.a)), ~max(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, u_input.a)))), vec3<i32>(4494i, ~1i, arg_1));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1[_wgslsmith_index_u32(0u, 8u)], var_2.a.a, global0.x), vec3<f32>(2464f, global1[_wgslsmith_index_u32(u_input.a, 8u)], 407f), var_0.zzx)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(u_input.a, 8u)], var_2.a.a, global0.x) - vec3<f32>(global1[_wgslsmith_index_u32(14422u, 8u)], var_2.a.a, global0.x)), all(vec2<bool>(false, var_0.x)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 383f, -1000f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 8u)], -964f, var_2.a.a))), var_0.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-981f, global1[_wgslsmith_index_u32(0u, 8u)], 1000f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.a.a, -397f, 888f)))) + vec3<f32>(var_2.a.a, global0.x, global0.x))));
    let var_3 = _wgslsmith_add_u32(u_input.a, _wgslsmith_div_u32(~(~u_input.a), ~u_input.a));
    return 62322u;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_5) -> bool {
    var var_0 = arg_1.a.b.x;
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1293f, 1632f, 1247f) + vec3<f32>(383f, -1157f, 2071f)) - vec3<f32>(global1[_wgslsmith_index_u32(1u, 8u)], arg_1.a.a, -359f))) * vec3<f32>(2171f, -641f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(abs(1u), 8u)] + _wgslsmith_f_op_f32(341f * -218f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x))) * arg_1.a.a), arg_1.a.a, _wgslsmith_f_op_f32(ceil(global0.x))));
    let var_2 = ~_wgslsmith_mod_u32(42311u, func_3(true, 16559i, select(vec2<bool>(false, arg_0.x), arg_1.a.b.zx, false))) >> ((~(~(arg_1.c.a.x ^ 1u)) & func_3(arg_1.a.b.x, abs(reverseBits(arg_1.d.x)), !select(arg_0, vec2<bool>(arg_1.a.b.x, arg_0.x), vec2<bool>(arg_1.a.b.x, false)))) % 32u);
    var var_3 = arg_1.b.x ^ arg_1.b.x;
    var_0 = any(select(select(select(select(vec2<bool>(true, false), vec2<bool>(true, arg_1.a.b.x), arg_0), select(vec2<bool>(arg_1.a.b.x, false), vec2<bool>(arg_0.x, arg_0.x), false), arg_0), vec2<bool>(any(vec3<bool>(true, false, false)), true), arg_1.b.x <= 1i), arg_1.a.b.yz, vec2<bool>(!all(vec4<bool>(false, arg_0.x, arg_0.x, true)), arg_1.a.b.x)));
    return arg_1.a.b.x;
}

fn func_1(arg_0: u32, arg_1: f32) -> Struct_3 {
    var var_0 = true;
    var_0 = all(select(vec3<bool>(true, true, _wgslsmith_f_op_f32(step(-1000f, global1[_wgslsmith_index_u32(u_input.a, 8u)])) > 1114f), !vec3<bool>(true, all(vec2<bool>(true, false)), false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(select(false, false, false), true, all(vec4<bool>(false, true, true, true))))));
    global1 = array<f32, 8>();
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-arg_1), vec3<bool>(select(false, func_2(vec2<bool>(false, true), Struct_5(Struct_2(-286f, vec3<bool>(true, false, false), Struct_1(vec2<u32>(arg_0, 1u)), Struct_1(vec2<u32>(u_input.a, u_input.a)), Struct_1(vec2<u32>(4294967295u, u_input.a))), vec4<i32>(-37144i, 12658i, 2147483647i, -63329i), Struct_1(vec2<u32>(arg_0, 14574u)), vec3<i32>(2147483647i, 33230i, 1i))), all(vec2<bool>(true, true))), func_2(vec2<bool>(true, false), Struct_5(Struct_2(166f, vec3<bool>(true, true, true), Struct_1(vec2<u32>(u_input.a, u_input.a)), Struct_1(vec2<u32>(arg_0, 1u)), Struct_1(vec2<u32>(arg_0, 1u))), vec4<i32>(-26058i, -1i, -1i, 2147483647i), Struct_1(vec2<u32>(0u, u_input.a)), vec3<i32>(1i, -17052i, 0i))) && true, select(51467u, 4294967295u, true) >= ~1u), Struct_1(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(arg_0, 51781u), vec2<u32>(4294967295u, 19838u)), ~vec2<u32>(0u, u_input.a))), Struct_1(~(~vec2<u32>(0u, 4294967295u))), Struct_1(vec2<u32>(select(arg_0, arg_0, false), max(arg_0, 4294967295u)))), Struct_1(select(vec2<u32>(min(u_input.a, 5997u), ~0u), _wgslsmith_add_vec2_u32(~vec2<u32>(0u, u_input.a), countOneBits(vec2<u32>(25277u, u_input.a))), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, false)))), ~reverseBits(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, 19365u, u_input.a), vec3<u32>(0u, 0u, 4294967295u)), abs(vec3<u32>(u_input.a, u_input.a, 16405u)))), _wgslsmith_mod_u32(arg_0, ~0u), Struct_2(-1000f, select(vec3<bool>(any(vec2<bool>(false, true)), true, func_2(vec2<bool>(true, true), Struct_5(Struct_2(405f, vec3<bool>(false, false, true), Struct_1(vec2<u32>(1u, 36865u)), Struct_1(vec2<u32>(0u, u_input.a)), Struct_1(vec2<u32>(arg_0, 0u))), vec4<i32>(2147483647i, 5049i, 16538i, -44533i), Struct_1(vec2<u32>(1u, u_input.a)), vec3<i32>(63204i, -30497i, 12670i)))), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), true), Struct_1(~_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0, u_input.a), vec2<u32>(u_input.a, arg_0))), Struct_1(abs(vec2<u32>(4294967295u, 4294967295u)) | ~vec2<u32>(6303u, arg_0)), Struct_1(max(~vec2<u32>(1u, 1u), ~vec2<u32>(arg_0, 13487u)))));
    global1 = array<f32, 8>();
    return Struct_3(var_1.a, Struct_1(~var_1.b.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, func_3(var_1.e.b.x, -2147483647i, var_1.e.b.xx) ^ abs(arg_0), max(4294967295u, max(var_1.d, 0u))), vec3<u32>(var_1.d, min(max(83497u, 36947u), min(var_1.b.a.x, 19848u)), _wgslsmith_mult_u32(_wgslsmith_sub_u32(31018u, u_input.a), arg_0 | 4294967295u)), var_1.c | ~(~var_1.c)), arg_0, Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~var_1.a.c.a.x, 8u)]), arg_1)), vec3<bool>(true, true, true), var_1.b, Struct_1(vec2<u32>(select(23345u, 4294967295u, false), arg_0)), Struct_1(vec2<u32>(_wgslsmith_sub_u32(var_1.a.c.a.x, arg_0), u_input.a))));
}

fn func_4(arg_0: u32, arg_1: vec4<bool>, arg_2: i32, arg_3: Struct_3) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global0.zy))));
    let var_1 = !arg_1.x;
    var var_2 = arg_2 < reverseBits(firstLeadingBit(-37717i));
    var var_3 = _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(abs(firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 14029u, 1u, u_input.a), vec4<u32>(1590u, 0u, 4294967295u, u_input.a)))), ~(~vec4<u32>(43102u, 333u, 37261u, arg_3.a.e.a.x)) | (firstLeadingBit(vec4<u32>(arg_3.e.d.a.x, 1u, 4294967295u, 4294967295u)) | countOneBits(vec4<u32>(u_input.a, 0u, 53997u, u_input.a)))), ~abs(_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.a, arg_0, 29667u) >> (vec4<u32>(arg_0, arg_0, u_input.a, arg_3.e.d.a.x) % vec4<u32>(32u)), ~vec4<u32>(arg_3.b.a.x, 28808u, arg_0, arg_0))));
    var var_4 = _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(abs(-1i), -2147483647i ^ arg_2), vec2<i32>(arg_2, 1i)), arg_2), ~vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2, -1i), vec2<i32>(-55048i, -19695i)), arg_2));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a.a) + _wgslsmith_f_op_f32(global0.x * global1[_wgslsmith_index_u32(arg_3.c.x, 8u)])) - 815f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -872f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -511f))), vec3<f32>(_wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(648f * -680f) + global0.x), global1[_wgslsmith_index_u32(24934u, 8u)]), _wgslsmith_div_f32(-2204f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 8u)])) >= _wgslsmith_f_op_f32(func_4(u_input.a, vec4<bool>(true, true, true, true), 0i, func_1(u_input.a, -1740f))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1857f, global0.x, global0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, -1231f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(global0.x, global1[_wgslsmith_index_u32(u_input.a, 8u)]), _wgslsmith_f_op_f32(-647f - 220f), func_1(u_input.a, global1[_wgslsmith_index_u32(u_input.a, 8u)]).e.a)))));
    var var_2 = select(-(-vec4<i32>(0i, 1i, -11540i, -1i) | (abs(vec4<i32>(1i, 7581i, 0i, -1i)) << (vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u)))), (countOneBits(min(vec4<i32>(42725i, -2147483647i, 39277i, -1i), vec4<i32>(73574i, 4493i, -27193i, 0i))) << ((abs(vec4<u32>(4294967295u, 1u, 23060u, 1u)) << (~vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u))) << (vec4<u32>(~_wgslsmith_clamp_u32(0u, u_input.a, 0u), ~(~0u), func_3(false, 1i, vec2<bool>(false, false)), u_input.a) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-881f + _wgslsmith_f_op_f32(min(1157f, -1000f))) >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.x - 600f), var_1.x)));
    let var_3 = global0.yy;
    var var_4 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(floor(var_1.x))), global1[_wgslsmith_index_u32(~u_input.a, 8u)], firstTrailingBit(min(vec4<i32>(-35901i, max(var_2.x, var_2.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, 1i, 1i, var_2.x), vec4<i32>(-26393i, 15744i, var_2.x, -1i)), _wgslsmith_add_i32(var_2.x, var_2.x)), _wgslsmith_mod_vec4_i32(~vec4<i32>(var_2.x, var_2.x, var_2.x, var_2.x), ~vec4<i32>(2147483647i, -2147483647i, 35303i, 0i)))), ~select(vec3<u32>(u_input.a, u_input.a, u_input.a), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(68185u, 41711u, u_input.a)), _wgslsmith_add_vec3_u32(vec3<u32>(85175u, u_input.a, 4294967295u), vec3<u32>(u_input.a, 19612u, u_input.a))), func_2(select(vec2<bool>(true, true), vec2<bool>(false, true), false), Struct_5(Struct_2(var_1.x, vec3<bool>(true, true, false), Struct_1(vec2<u32>(59589u, 19554u)), Struct_1(vec2<u32>(0u, u_input.a)), Struct_1(vec2<u32>(u_input.a, 4294967295u))), vec4<i32>(-2147483647i, -64621i, -2147483647i, var_2.x), Struct_1(vec2<u32>(u_input.a, 1u)), var_2.yxw))), u_input.a);
}

