struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: u32,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, false);

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(-13348i, vec3<i32>(-20154i, 0i, -17106i), vec3<u32>(1u, 4294967295u, 6814u)), Struct_1(0i, vec3<i32>(-19329i, -20192i, 34570i), vec3<u32>(117468u, 25861u, 4294967295u)), Struct_1(i32(-2147483648), vec3<i32>(0i, 2147483647i, 2147483647i), vec3<u32>(10920u, 4294967295u, 35878u)), Struct_1(-3756i, vec3<i32>(0i, 2147483647i, -1i), vec3<u32>(57589u, 0u, 10077u)), Struct_1(1i, vec3<i32>(-1i, 2147483647i, 0i), vec3<u32>(4294967295u, 1u, 40123u)), Struct_1(-13406i, vec3<i32>(-11384i, 13895i, -65212i), vec3<u32>(4294967295u, 0u, 13830u)), Struct_1(-15281i, vec3<i32>(i32(-2147483648), 0i, 13801i), vec3<u32>(70036u, 1u, 4294967295u)), Struct_1(-1i, vec3<i32>(2147483647i, -20014i, -1i), vec3<u32>(81598u, 98361u, 19521u)), Struct_1(0i, vec3<i32>(18826i, -43299i, 69840i), vec3<u32>(34375u, 42357u, 0u)), Struct_1(38383i, vec3<i32>(i32(-2147483648), 37695i, 5069i), vec3<u32>(0u, 1189u, 1u)), Struct_1(13321i, vec3<i32>(10085i, i32(-2147483648), 21467i), vec3<u32>(1u, 4294967295u, 4294967295u)), Struct_1(-45877i, vec3<i32>(i32(-2147483648), -15891i, 2147483647i), vec3<u32>(16720u, 4294967295u, 1u)), Struct_1(i32(-2147483648), vec3<i32>(2147483647i, -1i, -860i), vec3<u32>(70684u, 1u, 0u)), Struct_1(1i, vec3<i32>(17652i, 2147483647i, -1i), vec3<u32>(28247u, 14372u, 4294967295u)), Struct_1(17414i, vec3<i32>(-31194i, -19941i, 1i), vec3<u32>(26522u, 22280u, 4294967295u)), Struct_1(29611i, vec3<i32>(-5656i, -36620i, 2147483647i), vec3<u32>(1u, 67777u, 44361u)));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec2<u32>) -> vec2<f32> {
    let var_0 = Struct_2(Struct_1(0i << (arg_2.x % 32u), select(u_input.a >> (firstLeadingBit(arg_1.d.c) % vec3<u32>(32u)), reverseBits(abs(arg_1.b)), all(vec4<bool>(global0.x, true, global0.x, false))), vec3<u32>(~arg_1.a.c.x, 44900u, _wgslsmith_clamp_u32(arg_1.c, arg_2.x, 82u) ^ ~arg_2.x)), _wgslsmith_mod_vec3_i32(-u_input.a, select(u_input.a, arg_1.b, select(!vec3<bool>(global0.x, false, global0.x), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(true, false, true), vec3<bool>(global0.x, global0.x, true)), !vec3<bool>(true, global0.x, false)))), _wgslsmith_clamp_u32(arg_1.c, arg_2.x, ~1u << ((arg_2.x & arg_1.d.c.x) % 32u)), arg_1.a, _wgslsmith_f_op_f32(arg_0 + 1327f));
    global1 = array<Struct_1, 16>();
    var var_1 = vec2<bool>(any(!global0.zx), true);
    var_1 = select(!(!(!select(global0.yz, vec2<bool>(global0.x, false), vec2<bool>(global0.x, false)))), !(!global0.xy), global0.yz);
    var var_2 = vec4<u32>(73484u, 1u, 11595u, ~1u ^ _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, arg_2.x, 0u, 1u), ~vec4<u32>(75008u, 50384u, 0u, 1u)), select(~vec4<u32>(var_0.a.c.x, 52474u, arg_1.c, var_0.c), ~vec4<u32>(arg_1.d.c.x, arg_1.d.c.x, 4294967295u, 1u), select(vec4<bool>(var_1.x, var_1.x, true, true), vec4<bool>(false, false, var_1.x, global0.x), var_1.x))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, -513f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_1.e)))))) * vec2<f32>(arg_0, 920f));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: bool) -> vec3<bool> {
    var var_0 = ~vec3<u32>(arg_1.x, 115856u, _wgslsmith_div_u32(arg_1.x & (38040u | arg_0.c), arg_0.a.c.x));
    var var_1 = arg_1.x;
    var var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1528f), arg_0.e))), arg_0, _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(~var_0.zz, var_0.xx), ~vec2<u32>(arg_1.x, var_0.x), arg_0.d.c.zz))));
    let var_4 = 6570u;
    return select(vec3<bool>(any(!global0.xz) == global0.x, all(vec3<bool>(false | global0.x, arg_2, global0.x)), true), !select(select(vec3<bool>(global0.x, true, true), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(arg_2, arg_2, false)), !(!vec3<bool>(true, arg_2, true)), any(vec3<bool>(arg_2, arg_2, arg_2))), !(!select(vec3<bool>(false, false, arg_2), !vec3<bool>(global0.x, false, arg_2), true)));
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: i32, arg_3: bool) -> Struct_1 {
    global1 = array<Struct_1, 16>();
    global0 = !(!select(!select(vec3<bool>(global0.x, global0.x, arg_3), vec3<bool>(global0.x, true, false), vec3<bool>(arg_3, false, arg_3)), !func_2(Struct_2(global1[_wgslsmith_index_u32(arg_1.x, 16u)], u_input.a, 1u, global1[_wgslsmith_index_u32(arg_0, 16u)], 1367f), arg_1.xy, global0.x), vec3<bool>(any(vec3<bool>(arg_3, arg_3, true)), global0.x, arg_3)));
    global1 = array<Struct_1, 16>();
    global1 = array<Struct_1, 16>();
    global1 = array<Struct_1, 16>();
    return Struct_1(16402i, vec3<i32>(_wgslsmith_mod_i32(~arg_2, ~31408i), abs(-51639i), _wgslsmith_clamp_i32(-19117i, -arg_2, _wgslsmith_div_i32(-1i, -16613i)) ^ _wgslsmith_mult_i32(u_input.b.x, u_input.a.x)), abs(abs(firstTrailingBit(vec3<u32>(0u, arg_1.x, 1u)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_2 {
    global0 = vec3<bool>(true, !(!global0.x), global0.x);
    let var_0 = Struct_2(Struct_1(u_input.b.x, (_wgslsmith_mult_vec3_i32(arg_0.b, vec3<i32>(0i, 27859i, arg_0.a)) << (vec3<u32>(arg_0.c.x, arg_0.c.x, 1u) % vec3<u32>(32u))) | u_input.a, ~_wgslsmith_clamp_vec3_u32(firstLeadingBit(arg_2.c), vec3<u32>(arg_2.c.x, 46148u, arg_0.c.x), ~arg_2.c)), u_input.a, arg_0.c.x & 4294967295u, Struct_1(_wgslsmith_div_i32(u_input.b.x, firstLeadingBit(arg_0.a)), select(-(~u_input.a), -arg_2.b, vec3<bool>(!global0.x, true, global0.x)), arg_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1080f + arg_3.x), _wgslsmith_f_op_f32(ceil(arg_3.x))))));
    return Struct_2(arg_0, -firstLeadingBit(firstLeadingBit(-vec3<i32>(1i, arg_2.b.x, arg_0.a))), ~17785u, arg_2, var_0.e);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: vec3<i32>) -> vec2<i32> {
    let var_0 = arg_1;
    var var_1 = !select(select(vec4<bool>(true, false, true, false), select(select(vec4<bool>(false, true, global0.x, true), vec4<bool>(arg_2.x, true, false, false), vec4<bool>(arg_2.x, false, true, false)), vec4<bool>(false, true, false, arg_2.x), true), global0.x), !select(vec4<bool>(global0.x, global0.x, global0.x, arg_2.x), vec4<bool>(true, false, true, true), !vec4<bool>(true, arg_2.x, arg_2.x, false)), true);
    let var_2 = _wgslsmith_mod_vec4_u32(max(abs(max(vec4<u32>(50700u, 21774u, 1u, arg_0.c.x), vec4<u32>(var_0.c, 41794u, 4294967295u, var_0.a.c.x))), ~(~vec4<u32>(4294967295u, 45989u, 18643u, 0u))), vec4<u32>(func_4(arg_0, _wgslsmith_f_op_vec4_f32(vec4<f32>(-3143f, arg_1.e, 485f, arg_1.e) + vec4<f32>(arg_1.e, var_0.e, arg_1.e, arg_1.e)), Struct_1(-15838i, arg_3, arg_0.c), _wgslsmith_f_op_vec2_f32(func_3(1000f, Struct_2(Struct_1(1i, vec3<i32>(arg_1.d.b.x, -1i, arg_0.b.x), arg_1.a.c), arg_3, arg_1.d.c.x, Struct_1(u_input.a.x, arg_0.b, var_0.a.c), 1613f), arg_0.c.zy))).a.c.x, 4294967295u, _wgslsmith_add_u32(4294967295u, 0u), arg_1.c)) ^ ~(~(~vec4<u32>(arg_0.c.x, var_0.c, arg_1.c, 92505u) << (vec4<u32>(1u, var_0.c, var_0.a.c.x, arg_0.c.x) % vec4<u32>(32u))));
    let var_3 = Struct_2(Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(-var_0.a.b, u_input.a), func_1(22446u, var_2.zzy, _wgslsmith_dot_vec2_i32(var_0.b.yy, arg_1.d.b.yx), true).b), -arg_1.a.b, ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(var_0.c, 4294967295u, arg_1.d.c.x), arg_0.c, var_0.a.c)), ~firstLeadingBit(arg_3), _wgslsmith_mod_u32(~(~arg_1.c), arg_1.d.c.x), Struct_1(29356i, min(func_1(1u | var_2.x, vec3<u32>(1u, var_0.a.c.x, 0u), 11028i, !var_1.x).b, func_1(_wgslsmith_mult_u32(1u, var_2.x), abs(vec3<u32>(1u, 87222u, 1u)), min(40523i, arg_1.d.b.x), false).b), var_0.a.c), -1000f);
    let var_4 = Struct_1(2147483647i, ~vec3<i32>(var_3.d.a, 1i, ~2147483647i), abs(vec3<u32>(1u, var_0.c, ~arg_0.c.x)));
    return ~vec2<i32>(-_wgslsmith_sub_i32(var_4.a, i32(-1i) * -26239i), u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec2_i32(~u_input.b, func_5(Struct_1(u_input.b.x, _wgslsmith_mod_vec3_i32(~vec3<i32>(-59808i, u_input.c, u_input.c), max(u_input.a, vec3<i32>(-18291i, u_input.c, u_input.b.x))), _wgslsmith_mod_vec3_u32(select(vec3<u32>(42626u, 4294967295u, 32243u), vec3<u32>(1u, 4294967295u, 0u), global0.x), vec3<u32>(0u, 0u, 81727u))), func_4(global1[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(0u, 14255u)), 16u)], vec4<f32>(1f, 1f, 1f, 1f), func_1(1u, ~vec3<u32>(58023u, 4294967295u, 0u), u_input.a.x << (57372u % 32u), true), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-736f, 722f)))), select(vec2<bool>(select(global0.x, global0.x, false), false), !(!global0.xy), false), vec3<i32>(select(u_input.a.x >> (0u % 32u), u_input.c, true), u_input.a.x, abs(-56371i))));
    let var_1 = func_2(Struct_2(func_4(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(26273u, 9169u, 19721u), vec3<u32>(1u, 1u, 4294967295u)), 16u)], vec4<f32>(-1236f, _wgslsmith_f_op_f32(ceil(1448f)), -1148f, _wgslsmith_f_op_f32(f32(-1f) * -1268f)), global1[_wgslsmith_index_u32(~12255u, 16u)], _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1666f, -177f))))).a, select(vec3<i32>(u_input.c, 1i, _wgslsmith_mod_i32(13040i, var_0)), vec3<i32>(abs(u_input.b.x), -u_input.b.x, -26623i), select(vec3<bool>(global0.x, false, global0.x), !vec3<bool>(global0.x, global0.x, global0.x), global0.x)), 56010u << (1u % 32u), Struct_1(0i, abs(u_input.a >> (vec3<u32>(0u, 65886u, 0u) % vec3<u32>(32u))), vec3<u32>(22338u, 28486u, 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -375f))), vec2<u32>(75166u | (select(608u, 4294967295u, false) | _wgslsmith_dot_vec4_u32(vec4<u32>(15625u, 74499u, 1u, 11546u), vec4<u32>(12153u, 0u, 34430u, 1u))), ~(~1u) << (~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 35897u), vec3<u32>(44295u, 66429u, 1u)) % 32u)), true).zy;
    global1 = array<Struct_1, 16>();
    let var_2 = global1[_wgslsmith_index_u32(func_1(4294967295u, ~abs(func_4(global1[_wgslsmith_index_u32(36396u, 16u)], vec4<f32>(-466f, 1000f, 277f, 1217f), Struct_1(-44032i, vec3<i32>(var_0, -6277i, var_0), vec3<u32>(4294967295u, 22618u, 7093u)), vec2<f32>(1326f, 246f)).a.c) ^ ~vec3<u32>(~9342u, firstTrailingBit(0u), ~4294967295u), ~23453i, true).c.x, 16u)];
    var var_3 = func_4(Struct_1(-func_4(global1[_wgslsmith_index_u32(1u ^ var_2.c.x, 16u)], _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-890f, -723f, -558f, -508f))), Struct_1(2147483647i, u_input.a, var_2.c), vec2<f32>(-573f, 175f)).a.b.x, abs(var_2.b), abs(var_2.c) & _wgslsmith_clamp_vec3_u32(countOneBits(var_2.c), vec3<u32>(56417u, var_2.c.x, var_2.c.x), vec3<u32>(36355u, 1u, var_2.c.x))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-559f, 1110f, -114f, -1109f), vec4<f32>(196f, 928f, -450f, -381f), var_1.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(107f, 1209f, 737f, 1526f)))))), Struct_1(_wgslsmith_mult_i32(-2147483647i << (var_2.c.x % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(28052i, u_input.b.x), var_2.b.xy)) | (var_2.b.x & 1i), func_1(4294967295u, _wgslsmith_add_vec3_u32(~vec3<u32>(0u, var_2.c.x, var_2.c.x), vec3<u32>(12396u, 0u, var_2.c.x)), (1i >> (0u % 32u)) & _wgslsmith_clamp_i32(-29703i, -2147483647i, u_input.b.x), true).b, ~var_2.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(-551f, 1388f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(277f, 1000f) - vec2<f32>(1298f, 1099f))))))).d;
    let var_4 = Struct_2(Struct_1(min(firstLeadingBit(-2147483647i), var_0), vec3<i32>(u_input.c, ~(-21250i), 0i), firstLeadingBit(abs(~var_2.c))), _wgslsmith_clamp_vec3_i32(u_input.a, _wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(20472i, -1i, var_2.a) >> (var_3.c % vec3<u32>(32u))) << (countOneBits(firstTrailingBit(var_3.c)) % vec3<u32>(32u)), vec3<i32>(-24989i, ~_wgslsmith_mod_i32(var_3.b.x, 25927i), 0i)), var_2.c.x, global1[_wgslsmith_index_u32(~1u, 16u)], _wgslsmith_f_op_f32(-253f + _wgslsmith_f_op_f32(908f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2019f, 121f, global0.x))))));
    var var_5 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(var_4.e, Struct_2(Struct_1(-7937i, var_2.b, var_2.c), var_2.b, 1u, Struct_1(var_3.a, var_3.b, var_2.c), var_4.e), vec2<u32>(var_3.c.x, var_4.c))).x * var_4.e) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1321f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(2291f, _wgslsmith_f_op_f32(var_4.e - var_4.e)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(180f + -175f), _wgslsmith_f_op_f32(1269f + var_4.e))) + var_4.e))));
    let var_6 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_5.x, var_5.x, var_6.e) - vec3<f32>(var_5.x, 840f, 1000f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(320f, -1482f, 2079f) + vec3<f32>(1091f, var_5.x, var_4.e))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.e, var_6.e, -666f)))), _wgslsmith_add_i32(~(~(~2147483647i)), -1i | u_input.b.x));
}

