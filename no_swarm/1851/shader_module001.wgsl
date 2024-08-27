struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: u32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: i32 = -17987i;

var<private> global2: array<bool, 12>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: vec2<u32>) -> f32 {
    var var_0 = ~vec3<u32>(_wgslsmith_dot_vec3_u32(abs(firstTrailingBit(u_input.d.wzy)), _wgslsmith_div_vec3_u32(vec3<u32>(arg_3.x, u_input.d.x, u_input.d.x), u_input.d.zxw)), u_input.d.x, ~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.x, 66004u), vec2<u32>(22400u, 1u)), _wgslsmith_mod_u32(65000u, arg_3.x)));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * arg_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.x)) * _wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_div_f32(arg_1.x, _wgslsmith_div_f32(-992f, -410f))));
    global1 = -56143i;
    global2 = array<bool, 12>();
    let var_1 = vec2<bool>(!global2[_wgslsmith_index_u32(4294967295u, 12u)], any(select(select(arg_0.yz, arg_0.zy, all(vec3<bool>(arg_0.x, true, true))), vec2<bool>(arg_2.b.x > arg_2.a.x, true), arg_0.x && true)));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * 649f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))));
}

fn func_2() -> Struct_1 {
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(604f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.x - -922f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -531f) + -588f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 12u)], global2[_wgslsmith_index_u32(6498u, 12u)], true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 165f, -270f)), Struct_2(vec3<i32>(28598i, 14775i, 2147483647i), vec3<i32>(-26905i, -26935i, 2147483647i)), _wgslsmith_sub_vec2_u32(vec2<u32>(70231u, u_input.b), vec2<u32>(15080u, 16812u))))), 1905f));
    let var_0 = u_input.d;
    let var_1 = vec2<i32>(_wgslsmith_dot_vec3_i32(max(abs(-vec3<i32>(1i, -2147483647i, 2147483647i)), vec3<i32>(-1i, -51103i, 0i)), abs(~vec3<i32>(-2147483647i, -7611i, 34309i))), -(~_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, 0i, -1i), vec4<i32>(1i, -27013i, 35158i, 17102i)), -35741i)));
    global1 = ~(~var_1.x);
    let var_2 = _wgslsmith_sub_vec4_i32(firstTrailingBit(_wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(var_1.x, -16135i, -18451i, -34367i) & vec4<i32>(var_1.x, -29894i, 2147483647i, var_1.x)), vec4<i32>(var_1.x >> (var_0.x % 32u), ~1i, -var_1.x, ~var_1.x))), _wgslsmith_clamp_vec4_i32(~vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, var_1.x, 6996i, 2147483647i), vec4<i32>(-1i, var_1.x, var_1.x, -37372i)), i32(-1i) * -1i, 1i, _wgslsmith_div_i32(-35751i, -1i)), firstLeadingBit(firstTrailingBit(vec4<i32>(2093i, 2147483647i, 32287i, 0i) << (vec4<u32>(u_input.a.x, u_input.c, 24923u, u_input.a.x) % vec4<u32>(32u)))), -reverseBits(-vec4<i32>(var_1.x, var_1.x, 2147483647i, var_1.x))));
    return Struct_1(_wgslsmith_mult_u32(var_0.x, var_0.x), select(select(vec3<bool>(true, any(vec4<bool>(global2[_wgslsmith_index_u32(18761u, 12u)], false, global2[_wgslsmith_index_u32(var_0.x, 12u)], global2[_wgslsmith_index_u32(u_input.a.x, 12u)])), var_0.x < var_0.x), !vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 12u)], global2[_wgslsmith_index_u32(u_input.c, 12u)], global2[_wgslsmith_index_u32(var_0.x, 12u)]), global2[_wgslsmith_index_u32(~var_0.x, 12u)] || !global2[_wgslsmith_index_u32(16948u, 12u)]), select(select(select(vec3<bool>(false, global2[_wgslsmith_index_u32(63626u, 12u)], global2[_wgslsmith_index_u32(u_input.d.x, 12u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(var_0.x, 12u)], false), global2[_wgslsmith_index_u32(0u, 12u)]), !vec3<bool>(global2[_wgslsmith_index_u32(0u, 12u)], global2[_wgslsmith_index_u32(7566u, 12u)], global2[_wgslsmith_index_u32(u_input.b, 12u)]), true), vec3<bool>(true, true, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(39983u, 1u), 12u)]), global2[_wgslsmith_index_u32(abs(u_input.b & var_0.x), 12u)]), select(!(!vec3<bool>(true, global2[_wgslsmith_index_u32(var_0.x, 12u)], true)), select(!vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.b, 12u)], global2[_wgslsmith_index_u32(26996u, 12u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.d.x, 12u)], true), !vec3<bool>(global2[_wgslsmith_index_u32(u_input.c, 12u)], global2[_wgslsmith_index_u32(u_input.d.x, 12u)], true)), vec3<bool>(global2[_wgslsmith_index_u32(var_0.x, 12u)], global2[_wgslsmith_index_u32(4294967295u << (u_input.b % 32u), 12u)], any(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 12u)], false, global2[_wgslsmith_index_u32(var_0.x, 12u)]))))), _wgslsmith_mult_u32(u_input.d.x, ~var_0.x), !select(!select(vec3<bool>(global2[_wgslsmith_index_u32(var_0.x, 12u)], global2[_wgslsmith_index_u32(u_input.d.x, 12u)], global2[_wgslsmith_index_u32(91305u, 12u)]), vec3<bool>(false, false, global2[_wgslsmith_index_u32(var_0.x, 12u)]), global2[_wgslsmith_index_u32(32241u, 12u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(78504u, 12u)] || global2[_wgslsmith_index_u32(5035u, 12u)], any(vec2<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 12u)], global2[_wgslsmith_index_u32(15627u, 12u)]))), any(!vec4<bool>(true, global2[_wgslsmith_index_u32(44440u, 12u)], global2[_wgslsmith_index_u32(u_input.c, 12u)], true))));
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> u32 {
    var var_0 = func_2();
    var_0 = func_2();
    let var_1 = Struct_2(-_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0, arg_0, arg_0) << (u_input.d.wwy % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, arg_0, arg_0), vec3<i32>(-30756i, 1i, -2147483647i))) ^ -vec3<i32>(-arg_0, min(-14737i, arg_0), ~arg_0), ~abs(~(-vec3<i32>(arg_0, arg_0, 1i))));
    var_0 = Struct_1(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(var_0.a, 0u, var_0.a)), _wgslsmith_add_vec3_u32(select(vec3<u32>(arg_1.c, 4294967295u, 1u), vec3<u32>(u_input.b, 47278u, 21849u), 319f == global0.x), select(u_input.d.yyy, ~u_input.d.xwz, var_0.b.x))), arg_1.b, select(14439u & u_input.b, _wgslsmith_sub_u32(0u << (u_input.a.x % 32u), min(45499u, u_input.d.x)) ^ max(1u, 0u ^ arg_1.c), false), !var_0.d);
    var var_2 = Struct_1(~(~var_0.a), !(!var_0.d), 31610u, vec3<bool>(!var_0.b.x, true, false));
    return max(76257u, u_input.c) & u_input.b;
}

fn func_5(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_2 {
    global1 = -70569i;
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -1000f, -1898f, global0.x)))))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -420f, 297f, global0.x) - vec4<f32>(global0.x, global0.x, 184f, global0.x)))))));
    var var_0 = Struct_1(19738u, arg_2.d, ~1u, arg_2.b);
    var var_1 = Struct_2(vec3<i32>(i32(-1i) * -1i, arg_1.x, countOneBits(~42373i | arg_0.x)), vec3<i32>(53618i, abs(arg_0.x | arg_0.x), min(max(22039i, -5525i | arg_0.x), _wgslsmith_add_i32(abs(arg_1.x), arg_0.x))));
    let var_2 = vec2<u32>(var_0.c, 8648u);
    return Struct_2(select(abs(var_1.a), max(abs(vec3<i32>(0i, arg_0.x, -2147483647i)) << (u_input.d.zzy % vec3<u32>(32u)), -_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, -3902i, arg_0.x), var_1.a, arg_0.xzx)), false), _wgslsmith_clamp_vec3_i32(var_1.b, _wgslsmith_clamp_vec3_i32(-arg_0.yyy, -arg_0.wwx, -min(var_1.b, vec3<i32>(arg_0.x, arg_0.x, -2147483647i))), vec3<i32>(-2147483647i, abs(~40667i), arg_1.x)));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: bool) -> Struct_2 {
    var var_0 = func_5(-min(_wgslsmith_sub_vec4_i32(vec4<i32>(19553i, 9899i, 0i, 0i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-3976i, 784i, -1i, 1i), vec4<i32>(1i, 0i, 9580i, 0i), vec4<i32>(-2147483647i, 1i, 2147483647i, -1i))), vec4<i32>(-53504i << (u_input.c % 32u), 1i, -4126i, firstTrailingBit(48731i))), firstLeadingBit(vec2<i32>(-_wgslsmith_div_i32(5590i, 1i), _wgslsmith_dot_vec4_i32(-vec4<i32>(15331i, 3641i, -2147483647i, -9689i), vec4<i32>(80911i, -2147483647i, -1i, 0i)))), Struct_1(abs(func_4(-6413i, func_2())), select(vec3<bool>(true, true, true), !vec3<bool>(false, true, arg_2), vec3<bool>(true, func_2().d.x, arg_2)), 4294967295u, !(!(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 12u)], false, false)))));
    global2 = array<bool, 12>();
    let var_1 = func_5(vec4<i32>(var_0.b.x, _wgslsmith_sub_i32(-43987i, _wgslsmith_mult_i32(-var_0.a.x, -1i)), var_0.b.x >> (arg_0 % 32u), ~1i | ~_wgslsmith_sub_i32(-2147483647i, var_0.b.x)), firstTrailingBit(_wgslsmith_sub_vec2_i32(~(var_0.b.zy ^ vec2<i32>(var_0.b.x, var_0.b.x)), select(firstTrailingBit(var_0.b.xz), vec2<i32>(var_0.a.x, -4401i), select(vec2<bool>(arg_2, false), vec2<bool>(arg_2, global2[_wgslsmith_index_u32(arg_0, 12u)]), false)))), func_2());
    let var_2 = func_2();
    let var_3 = func_5(select(vec4<i32>(abs(_wgslsmith_div_i32(var_0.a.x, 48027i)), abs(~(-14127i)), reverseBits(var_0.a.x), var_1.a.x), -abs(~vec4<i32>(31521i, var_0.b.x, -2147483647i, var_0.a.x)), vec4<bool>(!(0u <= u_input.d.x), any(vec2<bool>(var_2.d.x, var_2.b.x)), func_2().b.x, any(select(vec3<bool>(false, true, global2[_wgslsmith_index_u32(arg_0, 12u)]), var_2.d, var_2.d.x)))), ~func_5(vec4<i32>(-2147483647i, var_1.b.x, 52248i, 37010i), vec2<i32>(-2147483647i, var_1.b.x), func_2()).a.yx ^ vec2<i32>(_wgslsmith_clamp_i32(~56463i, var_1.a.x, max(var_1.b.x, 1i)), max(var_0.b.x, var_0.a.x)), var_2);
    return Struct_2((vec3<i32>(var_0.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, 2147483647i, var_0.b.x, var_1.b.x), vec4<i32>(-15945i, 57546i, var_1.a.x, -13414i)), ~8950i) & _wgslsmith_add_vec3_i32(var_0.a, -vec3<i32>(var_3.b.x, var_0.b.x, var_0.b.x))) | _wgslsmith_div_vec3_i32(var_1.a, abs(var_1.a)), vec3<i32>(~var_0.a.x, select(-(~0i), var_1.b.x & -var_1.b.x, true), 0i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~u_input.d.x, 2125f, false);
    var var_1 = func_5(_wgslsmith_add_vec4_i32(vec4<i32>(min(-1i, ~var_0.a.x), _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(1i, 9761i, var_0.b.x)), _wgslsmith_div_vec3_i32(var_0.b, var_0.b)), _wgslsmith_sub_i32(var_0.a.x, -2147483647i), 2147483647i), -vec4<i32>(var_0.b.x, 2147483647i, 20254i >> (u_input.b % 32u), var_0.b.x)), -reverseBits(vec2<i32>(abs(var_0.b.x), _wgslsmith_mult_i32(var_0.a.x, var_0.b.x))), func_2());
    var var_2 = 39070i;
    var var_3 = vec4<bool>(u_input.a.x == 0u, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(1409f)))) < -1057f, global2[_wgslsmith_index_u32(1u, 12u)], global2[_wgslsmith_index_u32(46563u << (~(_wgslsmith_mult_u32(u_input.a.x, u_input.d.x) | 14344u) % 32u), 12u)]);
    let var_4 = 4436u;
    var var_5 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1739f)));
    var var_6 = Struct_2(var_0.a, var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(~(599u << (_wgslsmith_sub_u32(u_input.b, 33475u) % 32u)) >> (0u % 32u), vec2<i32>(firstTrailingBit(_wgslsmith_dot_vec3_i32(var_0.a, vec3<i32>(var_1.a.x, var_1.b.x, 10138i))), ~(-7932i)), var_6.a, var_4, func_5(select(-vec4<i32>(0i, 0i, 17481i, var_1.b.x), vec4<i32>(var_6.a.x, ~1i, var_0.b.x << (69714u % 32u), _wgslsmith_sub_i32(2147483647i, 9729i)), false), vec2<i32>(i32(-1i) * -var_0.b.x, _wgslsmith_mult_i32(firstLeadingBit(var_6.b.x), 21894i)), Struct_1(var_4, select(select(var_3.xwx, var_3.yww, true), var_3.yzx, select(vec3<bool>(var_3.x, true, false), vec3<bool>(false, false, global2[_wgslsmith_index_u32(u_input.c, 12u)]), false)), ~(~10671u), vec3<bool>(var_6.a.x >= -1i, all(vec3<bool>(true, global2[_wgslsmith_index_u32(var_4, 12u)], global2[_wgslsmith_index_u32(var_4, 12u)])), true))).b.x);
}

