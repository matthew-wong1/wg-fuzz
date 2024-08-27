struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<bool>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
    c: Struct_3,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28> = array<u32, 28>(0u, 0u, 48108u, 54334u, 54255u, 1u, 8151u, 1484u, 4294967295u, 1u, 11739u, 1u, 41175u, 4294967295u, 33152u, 17796u, 25662u, 40413u, 8392u, 0u, 58271u, 39996u, 0u, 1u, 0u, 4294967295u, 42034u, 0u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2) -> vec2<u32> {
    let var_0 = abs(countOneBits(-2147483647i));
    let var_1 = Struct_5(abs(4294967295u), arg_0.a, Struct_3(vec4<f32>(178f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-264f))), 1856f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(361f + -271f), _wgslsmith_f_op_f32(step(-246f, 503f)), arg_0.a.a))), !vec4<bool>(any(vec3<bool>(arg_0.a.c, false, true)), true, true, true)), arg_0, arg_0);
    var var_2 = Struct_4(22769u);
    global0 = array<u32, 28>();
    let var_3 = arg_0.b.wx;
    return ~countOneBits(_wgslsmith_mod_vec2_u32(var_3, vec2<u32>(1u, var_3.x)));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: f32) -> vec4<f32> {
    let var_0 = vec4<i32>(~_wgslsmith_sub_i32(u_input.a.x, 2147483647i), 0i, -_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.e.x, 6536i), u_input.a.ww), _wgslsmith_sub_i32(reverseBits(~arg_0.e.x) << (firstLeadingBit(30574u) % 32u), u_input.a.x | 31856i));
    return vec4<f32>(_wgslsmith_f_op_f32(arg_2 - 1000f), -1001f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(964f - arg_2), _wgslsmith_f_op_f32(f32(-1f) * -947f))))), -667f);
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: f32, arg_3: Struct_5) -> bool {
    let var_0 = countOneBits(~(-39524i));
    let var_1 = abs(((reverseBits(arg_3.b.e) | _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -32104i, arg_3.e.a.e.x, 20825i), vec4<i32>(var_0, 2147483647i, -34340i, arg_3.d.c.x))) | firstLeadingBit(u_input.a ^ vec4<i32>(1i, u_input.a.x, arg_3.b.e.x, var_0))) >> (~_wgslsmith_add_vec4_u32(arg_3.e.b << (vec4<u32>(arg_1.b.x, global0[_wgslsmith_index_u32(10504u, 28u)], arg_3.a, 0u) % vec4<u32>(32u)), reverseBits(arg_1.b)) % vec4<u32>(32u)));
    global0 = array<u32, 28>();
    var var_2 = arg_3.d;
    global0 = array<u32, 28>();
    return select(var_2.a.c, false, !(1181f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + -347f))));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: Struct_4) -> bool {
    global0 = array<u32, 28>();
    var var_0 = min(-1i, u_input.a.x);
    var var_1 = arg_0;
    let var_2 = Struct_1(func_5(_wgslsmith_f_op_vec4_f32(func_4(Struct_1(arg_0 || false, 4294967295u, true, func_3(Struct_2(Struct_1(false, 75561u, false, vec2<u32>(4294967295u, 52402u), vec4<i32>(arg_1, u_input.a.x, arg_1, u_input.a.x)), vec4<u32>(arg_2.a, 67398u, arg_2.a, 136922u), u_input.a)), u_input.a), arg_1, 1f)), Struct_2(Struct_1(false, max(13254u, 82265u), all(vec4<bool>(arg_0, true, arg_0, arg_0)), vec2<u32>(24326u, global0[_wgslsmith_index_u32(arg_2.a, 28u)]), u_input.a), vec4<u32>(arg_2.a, global0[_wgslsmith_index_u32(25330u, 28u)], arg_2.a, ~1u), max(u_input.a, vec4<i32>(u_input.a.x, 39435i, u_input.a.x, -53301i))), 519f, Struct_5(~global0[_wgslsmith_index_u32(arg_2.a, 28u)], Struct_1(arg_0 & arg_0, 1u, arg_0 && false, vec2<u32>(25114u, 1u), u_input.a), Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(238f, -906f, 1000f, 1000f) * vec4<f32>(-147f, -2249f, 903f, 1839f)), vec4<bool>(arg_0, true, true, arg_0)), Struct_2(Struct_1(false, 42145u, arg_0, vec2<u32>(arg_2.a, 0u), u_input.a), vec4<u32>(global0[_wgslsmith_index_u32(arg_2.a, 28u)], global0[_wgslsmith_index_u32(arg_2.a, 28u)], arg_2.a, 0u), u_input.a ^ u_input.a), Struct_2(Struct_1(arg_0, 1u, true, vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_2.a, 28u)], 28u)], 4152u), u_input.a), vec4<u32>(arg_2.a, 10307u, global0[_wgslsmith_index_u32(arg_2.a, 28u)], arg_2.a), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, arg_1, arg_1, -2147483647i), u_input.a)))), _wgslsmith_dot_vec2_u32(abs(select(vec2<u32>(52938u, 5746u), _wgslsmith_add_vec2_u32(vec2<u32>(0u, arg_2.a), vec2<u32>(arg_2.a, arg_2.a)), any(vec2<bool>(false, false)))), ~reverseBits(min(vec2<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 28u)], 28u)]), vec2<u32>(0u, 28391u)))), false, ~_wgslsmith_add_vec2_u32(~vec2<u32>(arg_2.a, arg_2.a), vec2<u32>(32027u, arg_2.a)) & (_wgslsmith_mult_vec2_u32(~vec2<u32>(arg_2.a, global0[_wgslsmith_index_u32(1u, 28u)]), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_2.a, arg_2.a), vec2<u32>(1u, 1u))) >> (~(~vec2<u32>(0u, 0u)) % vec2<u32>(32u))), vec4<i32>(2147483647i ^ u_input.a.x, -55833i, -2147483647i, _wgslsmith_mult_i32(-_wgslsmith_add_i32(20145i, u_input.a.x), arg_1)));
    let var_3 = u_input.a.xzz >> (~_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(abs(vec3<u32>(1u, 4294967295u, global0[_wgslsmith_index_u32(var_2.b, 28u)])), vec3<u32>(1u, arg_2.a, 69817u)), vec3<u32>(0u, abs(var_2.d.x), _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(var_2.d.x, 28u)], global0[_wgslsmith_index_u32(var_2.d.x, 28u)]))) % vec3<u32>(32u));
    return true;
}

fn func_6(arg_0: i32, arg_1: vec4<i32>) -> Struct_2 {
    let var_0 = select(vec2<u32>(1u, ~(~_wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 28u)], 28u)], 28u)], 28u)], 28u)], 62969u))), ~(~(vec2<u32>(53446u, global0[_wgslsmith_index_u32(1u, 28u)]) | max(vec2<u32>(0u, 36030u), vec2<u32>(1u, 61296u)))), vec2<bool>((-3433i | arg_0) <= abs(_wgslsmith_mod_i32(1i, 31725i)), true));
    let var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(153f, 2256f, 1000f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec4_f32(func_4(Struct_1(true, 1u, false, vec2<u32>(global0[_wgslsmith_index_u32(55389u, 28u)], 58302u), vec4<i32>(0i, -1i, 18388i, u_input.a.x)), -11374i, _wgslsmith_div_f32(-1296f, -954f))).xxx)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1000f, 199f) - vec3<f32>(439f, -619f, 1403f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-433f, 1685f, 238f)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, -650f, -1516f), vec3<f32>(1058f, 362f, 405f)))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(516f, 234f, true)), _wgslsmith_f_op_f32(abs(-1781f)), 1018f) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -433f), 601f, _wgslsmith_f_op_f32(f32(-1f) * -1350f))))));
    global0 = array<u32, 28>();
    var var_2 = !select(select(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true)), !select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true)), true), vec4<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(1u, 28u)], 12212u), 28u)] >= var_0.x, true, !any(vec2<bool>(false, false))), select(vec4<bool>(var_1.x == -194f, all(vec3<bool>(true, true, false)), true, true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), false), true), vec4<bool>(true, true, true, true)));
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -677f), -1131f, _wgslsmith_f_op_f32(var_1.x - -1046f), _wgslsmith_f_op_f32(f32(-1f) * -273f))), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, var_2.x), vec4<bool>(var_2.x, true, var_2.x, false)), vec4<bool>(false, !var_2.x, true, false), vec4<bool>(all(vec3<bool>(true, true, var_2.x)), 397f < var_1.x, true, var_2.x)), select(select(vec4<bool>(false, true, var_2.x, var_2.x), vec4<bool>(false, false, var_2.x, false), vec4<bool>(true, true, false, true)), !vec4<bool>(false, true, true, var_2.x), !vec4<bool>(var_2.x, var_2.x, false, var_2.x)), _wgslsmith_f_op_f32(step(-574f, var_1.x)) > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(793f + var_1.x)))));
    return Struct_2(Struct_1((_wgslsmith_div_u32(0u, var_0.x) ^ 65452u) < global0[_wgslsmith_index_u32(0u, 28u)], 20919u, (abs(var_0.x) <= firstLeadingBit(var_0.x)) | var_3.b.x, ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(60068u, 4294967295u), var_0)), vec4<i32>(-arg_0, select(firstTrailingBit(58826i), 1i, false & var_2.x), 0i, arg_0)), abs(abs(vec4<u32>(max(101493u, 43471u), global0[_wgslsmith_index_u32(var_0.x, 28u)], ~0u, _wgslsmith_div_u32(var_0.x, 41574u)))), u_input.a);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1) -> Struct_1 {
    global0 = array<u32, 28>();
    global0 = array<u32, 28>();
    var var_0 = arg_1;
    var var_1 = all(arg_0.b);
    var var_2 = func_6(firstLeadingBit(var_0.e.x), countOneBits(select(u_input.a << (_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, global0[_wgslsmith_index_u32(38790u, 28u)], arg_1.b, global0[_wgslsmith_index_u32(var_0.b, 28u)]), vec4<u32>(arg_1.b, 1u, 4294967295u, 0u), vec4<u32>(101423u, global0[_wgslsmith_index_u32(1u, 28u)], arg_1.b, arg_1.b)) % vec4<u32>(32u)), var_0.e, func_2(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1.b, 28u)], 28u)] != global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.d.x, 28u)], 28u)], 28u)], var_0.e.x, Struct_4(var_0.b)))));
    return Struct_1(true, ~abs(4294967295u), any(!select(vec2<bool>(true, var_0.a), vec2<bool>(var_0.c, var_2.a.a), func_5(vec4<f32>(arg_0.a.x, arg_0.a.x, -545f, 549f), Struct_2(arg_1, vec4<u32>(arg_1.d.x, var_0.b, 4294967295u, var_2.a.b), var_2.a.e), 184f, Struct_5(global0[_wgslsmith_index_u32(0u, 28u)], arg_1, Struct_3(vec4<f32>(804f, arg_0.a.x, arg_0.a.x, 1558f), arg_0.b), Struct_2(var_2.a, vec4<u32>(61917u, arg_1.d.x, global0[_wgslsmith_index_u32(1u, 28u)], var_0.b), vec4<i32>(-26132i, 18957i, 3756i, var_0.e.x)), Struct_2(Struct_1(false, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], arg_0.b.x, var_2.a.d, vec4<i32>(var_2.c.x, var_2.a.e.x, -22328i, var_2.a.e.x)), var_2.b, vec4<i32>(2147483647i, var_0.e.x, 37121i, u_input.a.x)))))), reverseBits(~firstLeadingBit(var_0.d)), u_input.a);
}

fn func_7(arg_0: u32, arg_1: bool, arg_2: Struct_1) -> vec4<bool> {
    global0 = array<u32, 28>();
    global0 = array<u32, 28>();
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-725f, 240f, 2505f, 1462f), vec4<f32>(-855f, -502f, -353f, -315f))), _wgslsmith_div_vec4_f32(vec4<f32>(-1386f, -507f, 1528f, 1556f), vec4<f32>(990f, -1000f, 1839f, -953f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1483f, -1484f, -1698f, 1244f) * vec4<f32>(_wgslsmith_f_op_f32(min(-960f, -470f)), 1026f, 1f, _wgslsmith_f_op_f32(f32(-1f) * -705f))))));
    let var_1 = func_6(i32(-1i) * -2147483647i, arg_2.e);
    global0 = array<u32, 28>();
    return select(vec4<bool>(var_1.a.a, arg_1, false, true), vec4<bool>(false, false, arg_1, arg_1), vec4<bool>(arg_2.a, 1064f <= _wgslsmith_f_op_f32(-var_0.x), func_6(19538i, vec4<i32>(var_1.a.e.x, reverseBits(arg_2.e.x), u_input.a.x, 0i)).a.a, !(_wgslsmith_f_op_f32(-var_0.x) == _wgslsmith_f_op_f32(var_0.x + var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(!vec4<bool>(true, true, 16209u > global0[_wgslsmith_index_u32(57002u, 28u)], true), select(func_7(global0[_wgslsmith_index_u32(1u, 28u)], true, func_1(Struct_3(vec4<f32>(1000f, -326f, 218f, -156f), vec4<bool>(false, false, false, false)), Struct_1(true, 1u, false, vec2<u32>(4294967295u, 4294967295u), u_input.a))), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false)), true), true);
    let var_1 = func_6(0i, _wgslsmith_div_vec4_i32(countOneBits(~vec4<i32>(-1i, 0i, 0i, u_input.a.x)), firstTrailingBit(_wgslsmith_sub_vec4_i32(~u_input.a, ~vec4<i32>(5792i, u_input.a.x, u_input.a.x, -7080i))))).c.x;
    global0 = array<u32, 28>();
    var var_2 = Struct_5(firstLeadingBit(global0[_wgslsmith_index_u32(35656u, 28u)]), func_6(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(u_input.a.yz | u_input.a.yz, u_input.a.yw & vec2<i32>(28934i, 2147483647i)), u_input.a.x), ~abs(u_input.a)).a, Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), vec4<bool>(func_2(all(var_0.zxx), -1i, Struct_4(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3421u, 28u)], 28u)], 28u)])), !(var_1 >= u_input.a.x), false, var_0.x && var_0.x)), Struct_2(func_1(Struct_3(vec4<f32>(303f, -635f, -521f, 1236f), !vec4<bool>(var_0.x, true, true, false)), Struct_1(!var_0.x, global0[_wgslsmith_index_u32(4468u, 28u)], func_5(vec4<f32>(-324f, 997f, 761f, -939f), Struct_2(Struct_1(true, 18647u, false, vec2<u32>(55283u, global0[_wgslsmith_index_u32(6173u, 28u)]), vec4<i32>(1i, u_input.a.x, -13093i, var_1)), vec4<u32>(14283u, global0[_wgslsmith_index_u32(28502u, 28u)], 6525u, 68925u), u_input.a), -1828f, Struct_5(global0[_wgslsmith_index_u32(0u, 28u)], Struct_1(var_0.x, global0[_wgslsmith_index_u32(4294967295u, 28u)], false, vec2<u32>(global0[_wgslsmith_index_u32(24419u, 28u)], 1u), vec4<i32>(0i, -41188i, u_input.a.x, -18227i)), Struct_3(vec4<f32>(-1577f, 670f, -1539f, 248f), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), Struct_2(Struct_1(false, 1u, var_0.x, vec2<u32>(4294967295u, 1u), u_input.a), vec4<u32>(global0[_wgslsmith_index_u32(69633u, 28u)], 90236u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23975u, 28u)], 28u)], 28u)], 4294967295u), u_input.a), Struct_2(Struct_1(true, 4294967295u, false, vec2<u32>(1u, 53739u), vec4<i32>(var_1, var_1, u_input.a.x, u_input.a.x)), vec4<u32>(54769u, 36156u, global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(50256u, 28u)]), u_input.a))), ~vec2<u32>(8542u, 43571u), vec4<i32>(u_input.a.x, var_1, var_1, var_1))), abs(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(0u, 28u)], 63826u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 28u)], 28u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 28u)], 28u)], 28u)], 28u)]), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3264u, 28u)], 28u)], 28u)], 28u)], 28u)], 28u)], global0[_wgslsmith_index_u32(30828u, 28u)], 1u, 1u)), func_6(u_input.a.x, u_input.a).b)), vec4<i32>(-min(53295i, -2147483647i), u_input.a.x, -_wgslsmith_mult_i32(u_input.a.x, -1i), firstTrailingBit(_wgslsmith_mod_i32(u_input.a.x, var_1)))), Struct_2(func_6(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.a.x), -u_input.a.yx), _wgslsmith_mod_vec4_i32(firstTrailingBit(u_input.a), -vec4<i32>(u_input.a.x, 0i, u_input.a.x, -1i))).a, ~vec4<u32>(141388u, global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(97257u, 28u)], 28u)], 57787u) ^ min(firstTrailingBit(vec4<u32>(global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 28u)], 28u)], 28u)], 12191u, 79736u)), firstLeadingBit(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29256u, 28u)], 28u)], 28u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(57378u, 28u)], 28u)], global0[_wgslsmith_index_u32(10670u, 28u)]))), vec4<i32>(-2147483647i, firstLeadingBit(65555i), var_1, _wgslsmith_dot_vec4_i32(vec4<i32>(10393i, 4055i, -2147483647i, 32057i), -u_input.a))));
    let var_3 = var_2.e;
    var_2 = Struct_5(~reverseBits(0u), var_3.a, Struct_3(vec4<f32>(var_2.c.a.x, _wgslsmith_f_op_f32(step(-578f, _wgslsmith_f_op_f32(round(var_2.c.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c.a.x * var_2.c.a.x) + _wgslsmith_f_op_f32(var_2.c.a.x + var_2.c.a.x)), var_2.c.a.x), vec4<bool>(any(var_0.zx), var_2.b.a, any(select(vec4<bool>(var_2.e.a.c, var_3.a.c, var_3.a.a, false), var_2.c.b, var_2.b.c)), true)), var_2.d, func_6(-2147483647i, -u_input.a));
    let var_4 = var_2.e;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.x);
}

