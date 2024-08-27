struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: vec3<f32>,
    d: i32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: Struct_3,
    d: Struct_2,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 16>;

var<private> global1: array<u32, 15> = array<u32, 15>(4174u, 118285u, 4294967295u, 66267u, 12684u, 4294967295u, 15548u, 96763u, 21803u, 0u, 1u, 1u, 48184u, 4294967295u, 60340u);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = arg_1.a;
    global0 = array<i32, 16>();
    return -_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.d, 2147483647i | global0[_wgslsmith_index_u32(36630u, 16u)], -19504i), abs(vec3<i32>(-2147483647i, 0i, 68698i) << (arg_2.yzz % vec3<u32>(32u)))) >> ((reverseBits(~u_input.b) >> (~vec3<u32>(firstTrailingBit(var_0.d.x), arg_1.a.d.x, ~17985u) % vec3<u32>(32u))) % vec3<u32>(32u));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: i32) -> Struct_2 {
    global1 = array<u32, 15>();
    let var_0 = -(select(vec3<i32>(2147483647i, -34863i, u_input.c) ^ (vec3<i32>(u_input.c, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(60641u, 15u)], 16u)], -12236i) << (u_input.b % vec3<u32>(32u))), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(19369i, arg_3, arg_3), vec3<i32>(arg_2.c, arg_2.c, -1i)), select(vec3<i32>(arg_0.x, -2147483647i, u_input.a), vec3<i32>(u_input.a, 1i, 0i), arg_1)), select(!arg_1, !arg_1, arg_2.c >= u_input.a)) ^ (func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-606f, -136f)), Struct_4(Struct_3(arg_2, Struct_1(arg_0, false, 2147483647i), vec4<f32>(-2230f, 1024f, 709f, 1076f), u_input.b.zy), vec3<f32>(226f, -1000f, -817f), vec3<f32>(225f, -1206f, 734f), -5821i), ~vec4<u32>(68208u, 4294967295u, global1[_wgslsmith_index_u32(35077u, 15u)], u_input.b.x), arg_2) << (~max(u_input.b, vec3<u32>(u_input.b.x, 3254u, global1[_wgslsmith_index_u32(69966u, 15u)])) % vec3<u32>(32u))));
    let var_1 = ~18272u;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(955f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(2153f)), -1091f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1995f, 2390f) + vec2<f32>(897f, 660f)) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(666f, -1000f))))), !arg_1.yz)));
    var var_3 = Struct_2(!any(!arg_1));
    return Struct_2(arg_1.x);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_5(firstLeadingBit(~vec3<i32>(0i, ~(-10744i), -u_input.a)), vec2<bool>(arg_2.x, false), Struct_3(Struct_1(reverseBits(vec2<i32>(u_input.c, global0[_wgslsmith_index_u32(9069u, 16u)]) << (u_input.b.zx % vec2<u32>(32u))), true, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_0.x), select(vec2<u32>(global1[_wgslsmith_index_u32(arg_0.x, 15u)], 0u), vec2<u32>(arg_0.x, global1[_wgslsmith_index_u32(arg_0.x, 15u)]), vec2<bool>(arg_1.a, true))), 16u)]), Struct_1(-(vec2<i32>(29594i, global0[_wgslsmith_index_u32(1u, 16u)]) >> (arg_0.zz % vec2<u32>(32u))), !any(vec2<bool>(arg_1.a, true)), u_input.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(987f, 1519f, -685f, -1533f), vec4<f32>(1454f, 1103f, 140f, 1079f), false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1327f, -163f, 679f, 796f)))), abs(_wgslsmith_sub_vec2_u32(~u_input.b.yy, vec2<u32>(4294967295u, 0u)))), arg_1, Struct_3(Struct_1(-min(vec2<i32>(-54333i, -54741i), vec2<i32>(u_input.c, -17052i)), true, -1i), Struct_1(vec2<i32>(41097i, func_3(vec2<f32>(934f, -495f), Struct_4(Struct_3(Struct_1(vec2<i32>(0i, -2147483647i), arg_1.a, -64497i), Struct_1(vec2<i32>(global0[_wgslsmith_index_u32(106521u, 16u)], u_input.c), arg_1.a, 2147483647i), vec4<f32>(-347f, 1857f, 939f, 1243f), u_input.b.zy), vec3<f32>(1000f, 665f, 1503f), vec3<f32>(475f, -134f, 1265f), 2147483647i), vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 4294967295u), Struct_1(vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(4294967295u, 16u)]), true, u_input.a)).x), arg_1.a, _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(~1u, 16u)], u_input.c)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1813f, -553f, 144f, -1000f)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, 425f, -1000f, 584f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-639f, -1406f, 1000f, -392f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 455f, 1273f, -1079f)))), vec2<u32>(arg_0.x, reverseBits(global1[_wgslsmith_index_u32(78507u, 15u)])) >> (u_input.b.yz % vec2<u32>(32u))));
    var_0 = Struct_5(-(~select(var_0.a, -var_0.a, vec3<bool>(var_0.b.x, arg_2.x, true))), select(select(vec2<bool>(!arg_2.x, global0[_wgslsmith_index_u32(1u, 16u)] < global0[_wgslsmith_index_u32(22726u, 16u)]), vec2<bool>(all(var_0.b), var_0.e.c.x > var_0.e.c.x), _wgslsmith_f_op_f32(select(var_0.c.c.x, var_0.c.c.x, true)) < var_0.e.c.x), select(!var_0.b, arg_2.xx, select(select(vec2<bool>(true, var_0.b.x), vec2<bool>(false, var_0.e.b.b), arg_1.a), select(var_0.b, var_0.b, vec2<bool>(arg_2.x, true)), select(arg_2.xx, vec2<bool>(arg_2.x, true), vec2<bool>(arg_2.x, arg_1.a)))), vec2<bool>(!all(vec3<bool>(var_0.d.a, true, arg_2.x)), all(vec2<bool>(var_0.e.b.b, var_0.b.x)))), var_0.c, func_2(~var_0.c.a.a, select(select(!vec3<bool>(false, var_0.b.x, var_0.c.b.b), !vec3<bool>(var_0.d.a, var_0.d.a, true), !arg_2.xzw), !vec3<bool>(arg_2.x, arg_1.a, true), arg_2.wwz), var_0.e.a, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -48218i), vec2<i32>(1i, var_0.a.x) | vec2<i32>(u_input.a, 38064i)) | global0[_wgslsmith_index_u32(arg_0.x, 16u)]), var_0.e);
    var var_1 = Struct_1(_wgslsmith_mod_vec2_i32(min(var_0.e.a.a, -(var_0.c.a.a & var_0.e.b.a)), var_0.a.yx), arg_2.x, 1i);
    var var_2 = Struct_2(var_0.b.x);
    var var_3 = Struct_3(var_0.e.b, Struct_1(_wgslsmith_div_vec2_i32(firstTrailingBit(-vec2<i32>(u_input.c, var_0.e.b.a.x)), var_1.a), all(vec4<bool>(arg_1.a, var_0.e.b.b, arg_1.a, true)), func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.c.c.zy - vec2<f32>(var_0.e.c.x, -1403f))), Struct_4(Struct_3(Struct_1(vec2<i32>(0i, -31662i), var_2.a, var_1.a.x), var_0.e.b, var_0.c.c, vec2<u32>(12036u, arg_0.x)), vec3<f32>(170f, var_0.c.c.x, var_0.c.c.x), _wgslsmith_f_op_vec3_f32(trunc(var_0.c.c.xwx)), 2147483647i), abs(~vec4<u32>(var_0.e.d.x, 1u, 19767u, 1u)), Struct_1(countOneBits(var_0.e.b.a), var_2.a, ~global0[_wgslsmith_index_u32(1u, 16u)])).x), vec4<f32>(var_0.c.c.x, _wgslsmith_f_op_f32(var_0.c.c.x + -776f), var_0.c.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -206f) - var_0.e.c.x)), _wgslsmith_mult_vec2_u32(~var_0.c.d, ((vec2<u32>(31308u, var_0.e.d.x) ^ vec2<u32>(58321u, 4294967295u)) ^ arg_0.xy) & select(_wgslsmith_div_vec2_u32(u_input.b.yy, vec2<u32>(var_0.e.d.x, 49578u)), u_input.b.zz | arg_0.xz, var_0.b)));
    return var_3.a;
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_5, arg_3: vec4<u32>) -> Struct_1 {
    global0 = array<i32, 16>();
    global0 = array<i32, 16>();
    let var_0 = vec3<bool>(any(arg_2.b), all(select(vec4<bool>(arg_1.b && arg_0.x, all(vec3<bool>(false, true, false)), any(vec2<bool>(false, arg_2.c.a.b)), func_4(arg_3, Struct_2(false), vec4<bool>(arg_2.c.b.b, true, false, true)).b), select(!vec4<bool>(true, false, true, arg_1.b), !vec4<bool>(arg_0.x, true, arg_0.x, true), select(vec4<bool>(arg_0.x, arg_1.b, arg_0.x, arg_1.b), vec4<bool>(false, arg_2.d.a, arg_1.b, arg_0.x), vec4<bool>(false, arg_1.b, false, true))), !arg_2.c.b.b)), !((arg_2.e.c.x != _wgslsmith_f_op_f32(floor(132f))) && arg_0.x));
    let var_1 = !(!(firstTrailingBit(_wgslsmith_mod_i32(u_input.c, 11963i)) < _wgslsmith_mod_i32(-global0[_wgslsmith_index_u32(u_input.b.x, 16u)], global0[_wgslsmith_index_u32(~10723u, 16u)])));
    let var_2 = Struct_2(~(~arg_2.c.d.x) == _wgslsmith_clamp_u32(_wgslsmith_sub_u32(~0u, 13193u), max(firstLeadingBit(arg_2.e.d.x), _wgslsmith_mult_u32(34930u, 7058u)), 12267u));
    return func_4(vec4<u32>((~0u & _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(arg_2.e.d.x, 15u)], arg_2.e.d.x)) & _wgslsmith_clamp_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 15u)], 15u)], global1[_wgslsmith_index_u32(arg_3.x, 15u)]), ~1u, 9368u << (arg_3.x % 32u)), 31606u, u_input.b.x, u_input.b.x), Struct_2(true), select(!(!vec4<bool>(arg_2.d.a, arg_2.d.a, arg_1.b, true)), select(vec4<bool>(arg_2.b.x, var_2.a, 4294967295u < global1[_wgslsmith_index_u32(u_input.b.x, 15u)], arg_1.b), select(!vec4<bool>(false, var_1, false, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, false, false), vec4<bool>(false, true, true, false)), select(vec4<bool>(var_1, false, var_0.x, arg_1.b), !vec4<bool>(true, true, arg_0.x, true), var_1)), select(select(select(vec4<bool>(var_2.a, arg_2.d.a, arg_1.b, var_1), vec4<bool>(false, false, arg_0.x, false), vec4<bool>(var_2.a, true, var_0.x, true)), vec4<bool>(var_2.a, true, var_2.a, var_2.a), select(vec4<bool>(var_1, true, arg_0.x, true), vec4<bool>(var_1, arg_0.x, true, true), vec4<bool>(true, false, arg_2.b.x, var_0.x))), select(!vec4<bool>(arg_1.b, true, arg_1.b, true), select(vec4<bool>(false, var_0.x, true, true), vec4<bool>(true, var_0.x, arg_0.x, arg_2.b.x), vec4<bool>(false, false, var_2.a, true)), false), 31405i >= arg_2.e.b.a.x)));
}

fn func_1(arg_0: u32) -> Struct_2 {
    global0 = array<i32, 16>();
    let var_0 = Struct_5(firstLeadingBit(abs(vec3<i32>(_wgslsmith_add_i32(2147483647i, 0i), 2147483647i, u_input.a))), vec2<bool>(any(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), false), vec4<bool>(false, false, true, false), true)), all(select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), false), vec4<bool>(true, true, true, true)))), Struct_3(func_5(vec3<bool>(true, 0i != global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 15u)], 16u)], true), func_4(vec4<u32>(44112u, 18358u, 4294967295u, 18202u), func_2(vec2<i32>(u_input.a, -35260i), vec3<bool>(true, true, true), Struct_1(vec2<i32>(2147483647i, -1i), false, 1i), 49227i), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true))), Struct_5(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, u_input.c, 0i), vec3<i32>(2147483647i, 1i, 17636i)), select(vec2<bool>(true, false), vec2<bool>(false, true), false), Struct_3(Struct_1(vec2<i32>(1i, global0[_wgslsmith_index_u32(arg_0, 16u)]), false, 2147483647i), Struct_1(vec2<i32>(u_input.c, 2147483647i), true, global0[_wgslsmith_index_u32(4294967295u, 16u)]), vec4<f32>(-1969f, -1000f, -1071f, 752f), vec2<u32>(u_input.b.x, arg_0)), Struct_2(true), Struct_3(Struct_1(vec2<i32>(global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(3461u, 16u)]), false, global0[_wgslsmith_index_u32(8825u, 16u)]), Struct_1(vec2<i32>(31504i, u_input.c), false, 37077i), vec4<f32>(1636f, 2439f, -1130f, -188f), vec2<u32>(6707u, 1u))), _wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(39169u, 4294967295u, arg_0, arg_0)), vec4<u32>(u_input.b.x, global1[_wgslsmith_index_u32(1u, 15u)], 4294967295u, arg_0))), Struct_1(select(vec2<i32>(35407i, 0i), vec2<i32>(-1i, u_input.a), vec2<bool>(true, true)) >> (~u_input.b.zz % vec2<u32>(32u)), false, min(63092i, -u_input.c)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(241f * 167f)), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(1000f * -544f)), -664f, _wgslsmith_f_op_f32(abs(1f))), countOneBits(reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(12704u, 15u)], 0u), vec2<u32>(4294967295u, arg_0))))), func_2(vec2<i32>(11995i, func_4(vec4<u32>(51825u, u_input.b.x, u_input.b.x, 0u), func_2(vec2<i32>(-67364i, u_input.a), vec3<bool>(true, true, false), Struct_1(vec2<i32>(1i, -69388i), true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 15u)], 16u)]), -15405i), vec4<bool>(true, true, true, true)).a.x), vec3<bool>(true, all(vec4<bool>(true, true, true, true)), false), func_5(vec3<bool>(true, true, true), func_4(~vec4<u32>(56709u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0, 15u)], 15u)], global1[_wgslsmith_index_u32(9565u, 15u)], u_input.b.x), func_2(vec2<i32>(0i, -39i), vec3<bool>(true, true, true), Struct_1(vec2<i32>(global0[_wgslsmith_index_u32(17176u, 16u)], 36520i), false, 21290i), 4518i), vec4<bool>(false, true, false, true)), Struct_5(vec3<i32>(9680i, 1i, 5549i) >> (vec3<u32>(global1[_wgslsmith_index_u32(7774u, 15u)], global1[_wgslsmith_index_u32(u_input.b.x, 15u)], 36480u) % vec3<u32>(32u)), vec2<bool>(true, true), Struct_3(Struct_1(vec2<i32>(-1i, -12103i), false, 981i), Struct_1(vec2<i32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0, 15u)], 15u)], 15u)], 16u)], global0[_wgslsmith_index_u32(u_input.b.x, 16u)]), true, 12209i), vec4<f32>(-222f, -1000f, -273f, 1000f), vec2<u32>(29204u, global1[_wgslsmith_index_u32(1u, 15u)])), Struct_2(false), Struct_3(Struct_1(vec2<i32>(28957i, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 15u)], 15u)], 16u)]), true, u_input.a), Struct_1(vec2<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 16u)], -58697i), true, u_input.a), vec4<f32>(1726f, 2614f, 190f, -455f), vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(0u, 15u)]))), min(vec4<u32>(u_input.b.x, 22750u, 2967u, arg_0) ^ vec4<u32>(arg_0, 1u, arg_0, global1[_wgslsmith_index_u32(arg_0, 15u)]), firstTrailingBit(vec4<u32>(55992u, 0u, arg_0, 3307u)))), abs(~_wgslsmith_clamp_i32(20857i, global0[_wgslsmith_index_u32(arg_0, 16u)], u_input.a))), Struct_3(Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(32378u, 16u)]), vec2<i32>(-2147483647i, -57647i)) ^ vec2<i32>(global0[_wgslsmith_index_u32(arg_0, 16u)], global0[_wgslsmith_index_u32(arg_0, 16u)]), func_5(vec3<bool>(true, true, true), func_5(vec3<bool>(false, false, true), Struct_1(vec2<i32>(u_input.a, 38077i), true, 30386i), Struct_5(vec3<i32>(36309i, 9122i, -62006i), vec2<bool>(true, true), Struct_3(Struct_1(vec2<i32>(12556i, u_input.c), false, u_input.a), Struct_1(vec2<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 16u)], u_input.c), false, global0[_wgslsmith_index_u32(1u, 16u)]), vec4<f32>(-1141f, -1084f, 1612f, -339f), vec2<u32>(global1[_wgslsmith_index_u32(arg_0, 15u)], arg_0)), Struct_2(true), Struct_3(Struct_1(vec2<i32>(u_input.c, -55832i), false, global0[_wgslsmith_index_u32(4294967295u, 16u)]), Struct_1(vec2<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 16u)], -10229i), true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(64628u, 15u)], 16u)]), vec4<f32>(679f, 132f, 568f, -294f), vec2<u32>(1u, arg_0))), vec4<u32>(69312u, 0u, arg_0, 64705u)), Struct_5(vec3<i32>(0i, u_input.c, -18536i), vec2<bool>(true, false), Struct_3(Struct_1(vec2<i32>(-20815i, global0[_wgslsmith_index_u32(47247u, 16u)]), true, global0[_wgslsmith_index_u32(0u, 16u)]), Struct_1(vec2<i32>(4126i, u_input.a), false, 0i), vec4<f32>(105f, -1272f, -828f, -563f), vec2<u32>(global1[_wgslsmith_index_u32(22912u, 15u)], 0u)), Struct_2(false), Struct_3(Struct_1(vec2<i32>(u_input.a, -17081i), false, u_input.c), Struct_1(vec2<i32>(37114i, -4573i), true, 10605i), vec4<f32>(381f, -1000f, 1000f, 1000f), vec2<u32>(u_input.b.x, 1u))), vec4<u32>(4294967295u, arg_0, arg_0, 0u) << (vec4<u32>(8030u, u_input.b.x, u_input.b.x, arg_0) % vec4<u32>(32u))).b, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 15u)], 16u)]), Struct_1(vec2<i32>(~u_input.a, global0[_wgslsmith_index_u32(0u, 16u)]), all(vec4<bool>(false, true, true, true)) && func_2(vec2<i32>(40478i, 2147483647i), vec3<bool>(true, true, true), Struct_1(vec2<i32>(u_input.a, 0i), false, -26625i), -14732i).a, ~(-2147483647i & global0[_wgslsmith_index_u32(arg_0, 16u)])), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-850f * 906f), _wgslsmith_f_op_f32(max(336f, 1057f)))), _wgslsmith_f_op_f32(-1087f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -794f), _wgslsmith_f_op_f32(floor(-790f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-461f))))), u_input.b.zz << (u_input.b.zz % vec2<u32>(32u))));
    global1 = array<u32, 15>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(403f, _wgslsmith_f_op_f32(var_0.e.c.x - 412f), _wgslsmith_div_f32(-475f, var_0.e.c.x), _wgslsmith_f_op_f32(step(-291f, var_0.e.c.x))), vec4<f32>(_wgslsmith_f_op_f32(step(var_0.e.c.x, -152f)), -296f, -1000f, _wgslsmith_f_op_f32(ceil(306f))))));
    let var_2 = func_2(vec2<i32>(~_wgslsmith_sub_i32(u_input.c, 0i), ~(~_wgslsmith_sub_i32(u_input.c, u_input.a))), !select(vec3<bool>(true, var_0.d.a, func_5(vec3<bool>(true, false, var_0.b.x), var_0.e.a, Struct_5(vec3<i32>(u_input.c, 24243i, u_input.a), vec2<bool>(true, true), Struct_3(Struct_1(vec2<i32>(global0[_wgslsmith_index_u32(1u, 16u)], 0i), var_0.e.b.b, u_input.a), var_0.c.a, var_1, vec2<u32>(u_input.b.x, 53222u)), var_0.d, var_0.c), vec4<u32>(1u, arg_0, u_input.b.x, u_input.b.x)).b), !(!vec3<bool>(var_0.c.a.b, false, var_0.d.a)), true), func_4(~min(select(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 13735u), vec4<u32>(4294967295u, 1u, arg_0, 4294967295u), vec4<bool>(var_0.d.a, var_0.b.x, var_0.d.a, var_0.e.b.b)), ~vec4<u32>(1u, u_input.b.x, arg_0, 1u)), var_0.d, !vec4<bool>(true, func_5(vec3<bool>(false, var_0.b.x, false), var_0.c.a, var_0, vec4<u32>(50306u, global1[_wgslsmith_index_u32(1u, 15u)], arg_0, u_input.b.x)).b, true, true)), 2147483647i);
    return Struct_2(true);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_3) -> vec3<f32> {
    global1 = array<u32, 15>();
    let var_0 = countOneBits(vec4<i32>(u_input.a, arg_1.b.c, (func_3(vec2<f32>(-1227f, -1493f), Struct_4(arg_1, vec3<f32>(-1000f, -183f, arg_1.c.x), vec3<f32>(1429f, arg_1.c.x, 1122f), arg_1.a.c), vec4<u32>(1u, arg_1.d.x, 31648u, arg_1.d.x), arg_1.b).x << (0u % 32u)) ^ global0[_wgslsmith_index_u32(14133u, 16u)], reverseBits(36943i)));
    let var_1 = Struct_4(Struct_3(arg_1.b, func_4(~(vec4<u32>(0u, 0u, 1u, global1[_wgslsmith_index_u32(0u, 15u)]) & vec4<u32>(0u, 7152u, 4294967295u, u_input.b.x)), func_2(func_5(vec3<bool>(false, true, arg_0.a), arg_1.b, Struct_5(vec3<i32>(-1i, arg_1.a.a.x, 35904i), vec2<bool>(arg_0.a, false), Struct_3(arg_1.b, arg_1.b, arg_1.c, arg_1.d), Struct_2(arg_0.a), Struct_3(arg_1.a, arg_1.b, vec4<f32>(arg_1.c.x, arg_1.c.x, 400f, 2155f), u_input.b.zz)), vec4<u32>(arg_1.d.x, u_input.b.x, 4186u, global1[_wgslsmith_index_u32(u_input.b.x, 15u)])).a, !vec3<bool>(true, arg_0.a, true), func_4(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 15u)], global1[_wgslsmith_index_u32(0u, 15u)], 14298u, u_input.b.x), Struct_2(arg_1.b.b), vec4<bool>(false, false, false, arg_0.a)), var_0.x << (4294967295u % 32u)), vec4<bool>(true, arg_0.a, 4294967295u <= arg_1.d.x, true)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(690f, 942f, arg_1.c.x, arg_1.c.x), vec4<f32>(arg_1.c.x, 1050f, 160f, arg_1.c.x)) - _wgslsmith_f_op_vec4_f32(-arg_1.c)))), arg_1.d >> (~vec2<u32>(arg_1.d.x, 4294967295u) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.c.wyz + vec3<f32>(_wgslsmith_div_f32(-345f, -472f), arg_1.c.x, 1035f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.c.x)) - arg_1.c.x), -938f))), -16528i);
    return _wgslsmith_f_op_vec3_f32(var_1.b * var_1.a.c.xxy);
}

fn func_7(arg_0: u32, arg_1: i32, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_1 {
    global1 = array<u32, 15>();
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_2.x - -398f), _wgslsmith_f_op_vec3_f32(func_6(Struct_2(arg_3.b), Struct_3(arg_3, Struct_1(arg_3.a, false, arg_1), vec4<f32>(726f, arg_2.x, -239f, arg_2.x), vec2<u32>(4294967295u, arg_0)))).x, _wgslsmith_f_op_f32(-arg_2.x), arg_2.x)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_vec3_f32(func_6(Struct_2(arg_3.b), Struct_3(Struct_1(arg_3.a, arg_3.b, global0[_wgslsmith_index_u32(21751u, 16u)]), Struct_1(vec2<i32>(-1i, u_input.a), true, arg_1), vec4<f32>(1018f, -1000f, arg_2.x, arg_2.x), vec2<u32>(4294967295u, 1u)))).x, -363f, _wgslsmith_div_f32(arg_2.x, 1000f), arg_2.x), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(418f, -483f, -2077f, 1023f), vec4<f32>(613f, 967f, arg_2.x, arg_2.x)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(835f, arg_2.x, 1000f, 865f))))), select(vec4<bool>(arg_3.b, false, arg_3.b, true), select(vec4<bool>(arg_3.b, arg_3.b, true, arg_3.b), vec4<bool>(true, arg_3.b, arg_3.b, arg_3.b), true), all(vec3<bool>(true, arg_3.b, arg_3.b)))))), vec4<bool>(arg_3.b, all(!vec3<bool>(arg_3.b, false, false)), func_5(vec3<bool>(arg_3.b, arg_3.b, false), func_4(vec4<u32>(arg_0, global1[_wgslsmith_index_u32(0u, 15u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(23900u, 15u)], 15u)], 15u)], 33822u), Struct_2(true), vec4<bool>(true, arg_3.b, arg_3.b, false)), Struct_5(vec3<i32>(-45455i, u_input.a, arg_1), vec2<bool>(false, arg_3.b), Struct_3(Struct_1(arg_3.a, arg_3.b, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], 16u)]), arg_3, vec4<f32>(-387f, 650f, arg_2.x, arg_2.x), vec2<u32>(39969u, u_input.b.x)), Struct_2(arg_3.b), Struct_3(Struct_1(arg_3.a, false, -24527i), Struct_1(arg_3.a, arg_3.b, 0i), vec4<f32>(arg_2.x, arg_2.x, arg_2.x, -1302f), u_input.b.yy)), ~vec4<u32>(0u, global1[_wgslsmith_index_u32(u_input.b.x, 15u)], global1[_wgslsmith_index_u32(arg_0, 15u)], 4294967295u)).a.x < func_3(arg_2.xz, Struct_4(Struct_3(arg_3, Struct_1(vec2<i32>(-21320i, arg_1), arg_3.b, arg_1), vec4<f32>(arg_2.x, arg_2.x, -1492f, 1353f), u_input.b.yy), vec3<f32>(-825f, -399f, 506f), arg_2, 1i), vec4<u32>(11763u, u_input.b.x, u_input.b.x, global1[_wgslsmith_index_u32(u_input.b.x, 15u)]), func_4(vec4<u32>(77085u, 4294967295u, global1[_wgslsmith_index_u32(u_input.b.x, 15u)], u_input.b.x), Struct_2(arg_3.b), vec4<bool>(arg_3.b, true, false, false))).x, true)));
    let var_1 = vec3<bool>(false, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(704f)), 1f), _wgslsmith_f_op_f32(f32(-1f) * -1684f))) < _wgslsmith_f_op_vec3_f32(func_6(Struct_2(func_4(vec4<u32>(global1[_wgslsmith_index_u32(25608u, 15u)], 1u, 14432u, 1u), Struct_2(true), vec4<bool>(false, arg_3.b, arg_3.b, arg_3.b)).b), Struct_3(Struct_1(vec2<i32>(u_input.c, arg_1), arg_3.b, global0[_wgslsmith_index_u32(49765u, 16u)]), func_4(vec4<u32>(17890u, u_input.b.x, 22832u, 60911u), Struct_2(false), vec4<bool>(false, true, false, arg_3.b)), _wgslsmith_f_op_vec4_f32(var_0 * vec4<f32>(-867f, -2434f, var_0.x, -583f)), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, arg_0), u_input.b.zz)))).x, any(vec2<bool>(false, true)));
    let var_2 = arg_3;
    let var_3 = Struct_3(func_4(_wgslsmith_mod_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0, 0u, 46232u, 81068u), vec4<u32>(2383u, 4294967295u, 1u, u_input.b.x), vec4<u32>(4294967295u, u_input.b.x, arg_0, 19441u)), abs(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, arg_0, 58532u, arg_0), vec4<u32>(global1[_wgslsmith_index_u32(31300u, 15u)], global1[_wgslsmith_index_u32(0u, 15u)], u_input.b.x, 4294967295u)))), func_2(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, arg_1) >> (u_input.b.yy % vec2<u32>(32u)), var_2.a & arg_3.a), !vec3<bool>(arg_3.b, var_2.b, var_1.x), Struct_1(vec2<i32>(global0[_wgslsmith_index_u32(22345u, 16u)], arg_3.a.x) | var_2.a, true, -2147483647i), 0i), !select(select(vec4<bool>(false, true, false, arg_3.b), vec4<bool>(false, true, arg_3.b, false), vec4<bool>(var_2.b, false, true, true)), vec4<bool>(arg_3.b, true, arg_3.b, arg_3.b), func_1(global1[_wgslsmith_index_u32(u_input.b.x, 15u)]).a)), Struct_1(_wgslsmith_add_vec2_i32(~_wgslsmith_mult_vec2_i32(arg_3.a, vec2<i32>(-1i, var_2.a.x)), vec2<i32>(reverseBits(var_2.c), -50203i)), true, 68165i), var_0, vec2<u32>(firstLeadingBit(u_input.b.x) | arg_0, ~global1[_wgslsmith_index_u32(u_input.b.x, 15u)]));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 73380u;
    var var_1 = func_7(firstTrailingBit(4294967295u), 2147483647i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(-537f, -1065f, false)), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -148f))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_6(func_1(var_0), Struct_3(Struct_1(vec2<i32>(u_input.c, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 15u)], 16u)]), false, u_input.c), Struct_1(vec2<i32>(u_input.c, 18753i), true, u_input.c), vec4<f32>(809f, -1000f, 1501f, 318f), u_input.b.yx)))))), Struct_1(_wgslsmith_clamp_vec2_i32(~vec2<i32>(20833i, global0[_wgslsmith_index_u32(var_0, 16u)]), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 87350i), vec2<i32>(-43715i, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(75035u, 15u)], 16u)])), vec2<i32>(-35348i, -17570i)) >> (~(~vec2<u32>(var_0, 26096u)) % vec2<u32>(32u)), false, _wgslsmith_add_i32(~global0[_wgslsmith_index_u32(~27781u, 16u)], _wgslsmith_dot_vec4_i32(abs(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 16u)], 0i, u_input.a, global0[_wgslsmith_index_u32(49275u, 16u)])), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 2147483647i, 0i, u_input.a), vec4<i32>(-30517i, u_input.c, u_input.a, 1i))))));
    let var_2 = vec2<u32>(firstTrailingBit(max(u_input.b.x, ~var_0)), global1[_wgslsmith_index_u32(4294967295u, 15u)]);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1000f))))), -1184f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-1220f)))));
    let var_4 = all(vec3<bool>(var_1.b, false, func_4(~(~vec4<u32>(u_input.b.x, var_2.x, var_0, 0u)), Struct_2(true), !(!vec4<bool>(false, false, var_1.b, var_1.b))).b));
    let x = u_input.a;
    s_output = StorageBuffer(select(~min(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 15u)], 15u)], 62499u) ^ (_wgslsmith_mult_u32(u_input.b.x, global1[_wgslsmith_index_u32(var_2.x, 15u)]) >> (91389u % 32u)), countOneBits(var_0), !(func_4(vec4<u32>(var_2.x, 0u, var_2.x, global1[_wgslsmith_index_u32(var_0, 15u)]), Struct_2(false), vec4<bool>(false, false, false, var_4)).b | all(vec3<bool>(true, false, false)))), ~select(max(global1[_wgslsmith_index_u32(6940u, 15u)], 22446u) << (select(var_0, var_0, var_1.b) % 32u), _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.b.x, 17186u), 30567u), var_4), global0[_wgslsmith_index_u32(var_0, 16u)] >> (~(0u ^ u_input.b.x) % 32u), ~(~min(~0u, firstLeadingBit(var_0))), _wgslsmith_sub_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(3176u, 15u)], var_2.x), var_2) ^ var_2);
}

