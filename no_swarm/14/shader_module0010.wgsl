struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(vec4<f32>(-1333f, 171f, -367f, 795f)), Struct_2(vec4<f32>(1223f, -1580f, 411f, 1000f)), Struct_2(vec4<f32>(-1739f, 1000f, -1000f, -200f)), Struct_2(vec4<f32>(193f, 762f, -228f, -178f)), Struct_2(vec4<f32>(1554f, 701f, -1678f, 921f)), Struct_2(vec4<f32>(1620f, -627f, -658f, 1000f)), Struct_2(vec4<f32>(1021f, 1295f, -316f, -1576f)), Struct_2(vec4<f32>(1695f, 195f, 685f, -165f)), Struct_2(vec4<f32>(-2087f, -412f, -335f, 412f)), Struct_2(vec4<f32>(266f, -2399f, 569f, -701f)), Struct_2(vec4<f32>(-997f, 2916f, 1301f, -1028f)), Struct_2(vec4<f32>(-140f, 243f, 1135f, -1366f)), Struct_2(vec4<f32>(207f, -1981f, -1896f, 1007f)), Struct_2(vec4<f32>(-176f, 659f, 880f, -1081f)), Struct_2(vec4<f32>(752f, 1000f, 1444f, 633f)));

var<private> global1: array<vec2<bool>, 9> = array<vec2<bool>, 9>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true));

var<private> global2: array<f32, 5> = array<f32, 5>(294f, 1211f, 1062f, 457f, -809f);

var<private> global3: vec4<f32> = vec4<f32>(908f, -1081f, -549f, -1030f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> i32 {
    let var_0 = Struct_3(Struct_1(~select(_wgslsmith_mod_vec4_i32(vec4<i32>(30452i, u_input.b.x, -16728i, 1i), vec4<i32>(u_input.c, 41932i, 2571i, 0i)), vec4<i32>(1i, u_input.c, 0i, u_input.b.x), vec4<bool>(true, true, true, true))), Struct_1(vec4<i32>(~u_input.e.x, 1i, ~(-2147483647i), _wgslsmith_mod_i32(~7854i, ~u_input.e.x))), select(!vec2<bool>(all(global1[_wgslsmith_index_u32(4294967295u, 9u)]), u_input.e.x == u_input.e.x), select(global1[_wgslsmith_index_u32(~4294967295u, 9u)], select(select(global1[_wgslsmith_index_u32(4294967295u, 9u)], global1[_wgslsmith_index_u32(u_input.a, 9u)], global1[_wgslsmith_index_u32(u_input.a, 9u)]), global1[_wgslsmith_index_u32(1u, 9u)], vec2<bool>(true, false)), global1[_wgslsmith_index_u32(~(u_input.d & u_input.d), 9u)]), any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), any(vec3<bool>(true, false, false))))), Struct_1(vec4<i32>(u_input.e.x, _wgslsmith_sub_i32(u_input.c, u_input.c), u_input.b.x, -2147483647i) << (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, 37839u, 0u, 31063u) & vec4<u32>(u_input.d, 4294967295u, 1u, u_input.a), ~vec4<u32>(u_input.a, u_input.d, u_input.d, 42912u)) % vec4<u32>(32u))), Struct_1(select(-_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, 2147483647i, -5726i, u_input.e.x), vec4<i32>(-2147483647i, -10380i, -31069i, -23174i)), ~(~vec4<i32>(-2147483647i, u_input.c, -31381i, u_input.e.x)), true)));
    let var_1 = var_0;
    let var_2 = Struct_3(Struct_1(~select(abs(vec4<i32>(var_1.a.a.x, 1i, 0i, -5542i)), var_0.a.a, select(vec4<bool>(var_0.c.x, var_1.c.x, false, true), vec4<bool>(var_0.c.x, var_1.c.x, var_1.c.x, true), true))), var_1.e, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(86164u, u_input.a), vec2<u32>(3696u, u_input.a)), u_input.d), u_input.a, ~(~_wgslsmith_sub_u32(u_input.d, u_input.d))), 9u)], var_1.b, var_0.b);
    global2 = array<f32, 5>();
    var var_3 = var_0;
    return _wgslsmith_mod_i32(var_1.d.a.x, -2147483647i);
}

fn func_2() -> Struct_1 {
    var var_0 = vec4<i32>(func_3(), ~(_wgslsmith_mod_i32(-30579i, 20366i) ^ ~_wgslsmith_mult_i32(u_input.b.x, -1i)), u_input.b.x, ~(-25553i) >> (~abs(u_input.a) % 32u));
    let var_1 = _wgslsmith_mod_i32(2147483647i, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(abs(u_input.c), _wgslsmith_div_i32(_wgslsmith_sub_i32(-43448i, var_0.x), _wgslsmith_add_i32(0i, -15532i))), _wgslsmith_div_i32(_wgslsmith_div_i32(var_0.x, var_0.x) ^ (-17386i | var_0.x), -39199i), -u_input.c));
    global1 = array<vec2<bool>, 9>();
    global0 = array<Struct_2, 15>();
    let var_2 = _wgslsmith_div_vec3_i32(~vec3<i32>(0i, -_wgslsmith_add_i32(-1i, var_1), -abs(var_1)), reverseBits(_wgslsmith_clamp_vec3_i32(var_0.yxx, ~_wgslsmith_mult_vec3_i32(vec3<i32>(1i, var_0.x, 52491i), vec3<i32>(var_0.x, -22839i, 21100i)), var_0.yxz)));
    return Struct_1(vec4<i32>(u_input.c, -var_0.x, _wgslsmith_mult_i32(var_1, 127i), -2147483647i));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_1) -> i32 {
    global0 = array<Struct_2, 15>();
    global3 = vec4<f32>(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(arg_2.x, 5u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~arg_2.x | ~u_input.d, 5u)])), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(1924f * global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(max(17443u, arg_2.x), 0u), arg_2.zz << (countOneBits(arg_2.xz) % vec2<u32>(32u))), 5u)]), global2[_wgslsmith_index_u32(arg_2.x, 5u)]);
    var var_0 = Struct_1(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(~abs(arg_1.a), vec4<i32>(arg_3.a.x, firstLeadingBit(arg_1.a.x), 0i, -8979i)), vec4<i32>(u_input.b.x, ~select(0i, 0i, true), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(2147483647i, u_input.b.x)), vec2<i32>(0i, arg_1.a.x)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.a.x, 2147483647i, u_input.b.x), vec3<i32>(arg_1.a.x, arg_1.a.x, 34292i)))));
    var var_1 = min(~arg_3.a.yy, ~select(~vec2<i32>(2147483647i, arg_1.a.x), vec2<i32>(arg_1.a.x, arg_3.a.x), !global1[_wgslsmith_index_u32(0u, 9u)]));
    var var_2 = false;
    return select(1i, -4968i, !(!any(vec2<bool>(true, arg_0)))) << (~arg_2.x % 32u);
}

fn func_1(arg_0: vec2<i32>) -> vec4<bool> {
    return select(vec4<bool>(true, true && all(vec4<bool>(true, true, false, true)), func_4(true, func_2(), ~vec3<u32>(0u, 73830u, u_input.a), Struct_1(vec4<i32>(28116i, u_input.b.x, u_input.c, 0i))) == 68854i, !(!all(vec4<bool>(false, false, false, true)))), !vec4<bool>(true, any(vec4<bool>(true, true, false, false)), true, any(vec2<bool>(true, true))), vec4<bool>(all(vec4<bool>(false, false, false, true)), false, false || !all(vec4<bool>(true, true, false, false)), true || (arg_0.x < -2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), false), select(true, true, false)), vec4<bool>(true, global2[_wgslsmith_index_u32(39178u, 5u)] < global2[_wgslsmith_index_u32(4269u, 5u)], all(vec4<bool>(false, true, true, true)), false)), func_1(firstTrailingBit(vec2<i32>(-26365i, u_input.e.x))), !select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), false), vec4<bool>(true, false, false, false), true)), !select(select(vec4<bool>(false, true, true, false), func_1(vec2<i32>(36585i, -27994i)), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true))), vec4<bool>(true, true, true, true), true), select(true, func_1(max(vec2<i32>(u_input.e.x, 19326i), _wgslsmith_clamp_vec2_i32(vec2<i32>(36757i, u_input.c), vec2<i32>(u_input.b.x, u_input.e.x), vec2<i32>(u_input.c, u_input.c)))).x, true));
    let var_1 = func_2();
    let var_2 = Struct_3(func_2(), var_1, func_1(select(max(vec2<i32>(var_1.a.x, -2147483647i), -u_input.b.zy), ~firstTrailingBit(vec2<i32>(u_input.c, var_1.a.x)), vec2<bool>(all(global1[_wgslsmith_index_u32(1u, 9u)]), !var_0.x))).zy, Struct_1(abs(_wgslsmith_mod_vec4_i32(max(var_1.a, vec4<i32>(u_input.c, u_input.b.x, 0i, var_1.a.x)), vec4<i32>(0i, 0i, -49976i, -48526i)))), Struct_1(_wgslsmith_sub_vec4_i32(firstLeadingBit(var_1.a), ~vec4<i32>(u_input.b.x, -7132i, u_input.b.x, 5633i))));
    let var_3 = var_1;
    global0 = array<Struct_2, 15>();
    var var_4 = Struct_1(~(vec4<i32>(2147483647i, firstTrailingBit(var_1.a.x), ~(-781i), var_3.a.x) & -countOneBits(var_2.e.a)));
    global3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1203f, 1f, global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.a, 46981u) << (_wgslsmith_sub_u32(19121u, ~u_input.d) % 32u), 5u)], -1000f));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(_wgslsmith_clamp_u32(u_input.d, 6652u, 1u) & u_input.d), abs(u_input.a), u_input.d, 4294967295u));
}

