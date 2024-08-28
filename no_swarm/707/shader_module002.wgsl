struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<f32>, 29> = array<vec2<f32>, 29>(vec2<f32>(-580f, -287f), vec2<f32>(280f, 1233f), vec2<f32>(-496f, 996f), vec2<f32>(1074f, -780f), vec2<f32>(-429f, -446f), vec2<f32>(-933f, 271f), vec2<f32>(-626f, -1516f), vec2<f32>(-1166f, -271f), vec2<f32>(-1730f, -719f), vec2<f32>(577f, -1000f), vec2<f32>(620f, -1945f), vec2<f32>(1912f, -733f), vec2<f32>(-1269f, 106f), vec2<f32>(1211f, -1481f), vec2<f32>(-1254f, 1474f), vec2<f32>(346f, 1981f), vec2<f32>(-818f, -396f), vec2<f32>(-452f, -1933f), vec2<f32>(-1000f, 1000f), vec2<f32>(-1362f, -1000f), vec2<f32>(-3021f, -2223f), vec2<f32>(212f, 184f), vec2<f32>(903f, 675f), vec2<f32>(-1246f, 1271f), vec2<f32>(-510f, -539f), vec2<f32>(2896f, 2074f), vec2<f32>(-116f, 1167f), vec2<f32>(1000f, 1000f), vec2<f32>(-458f, -2475f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> f32 {
    global0 = !any(select(vec3<bool>(true, all(vec4<bool>(true, true, false, true)), true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), false));
    var var_0 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(34689u, abs(4294967295u << (u_input.a.x % 32u)), ~0u), u_input.a.wxx);
    var var_1 = -1172f;
    var var_2 = _wgslsmith_sub_u32(u_input.a.x, abs(_wgslsmith_div_u32(u_input.a.x >> (u_input.a.x % 32u), ~71793u)) << (((_wgslsmith_sub_u32(4294967295u, u_input.a.x) & ~0u) >> (~(~u_input.a.x) % 32u)) % 32u));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1438f * -1255f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2247f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(1f)))));
    return _wgslsmith_f_op_f32(max(665f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(314f, 559f)) - -878f) - 1000f))));
}

fn func_2(arg_0: f32) -> bool {
    let var_0 = Struct_4(global1[_wgslsmith_index_u32(u_input.a.x, 29u)], Struct_2(Struct_1(~u_input.a.zy, vec3<i32>(_wgslsmith_add_i32(-8209i, 0i), ~95923i, _wgslsmith_div_i32(-14658i, -15830i)), u_input.a.x, (vec2<i32>(1i, -10167i) >> (vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u))) | -vec2<i32>(1i, 55976i)), true, Struct_1(vec2<u32>(~u_input.a.x, u_input.a.x >> (4294967295u % 32u)), firstTrailingBit(vec3<i32>(1i, 1i, 1i)), ~4294967295u, ~vec2<i32>(1i, 1i)), Struct_1(u_input.a.zw, countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(6406i, 1684i, 46434i), vec3<i32>(2147483647i, 8049i, -5154i))), ~4294967295u, -_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(2147483647i, 9710i)))));
    global0 = false;
    global1 = array<vec2<f32>, 29>();
    global0 = var_0.b.b;
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * var_0.a.x) + _wgslsmith_div_f32(234f, arg_0)) - -1000f), _wgslsmith_f_op_f32(sign(arg_0)), var_0.a.x)));
    return all(select(vec4<bool>(false, 824f > var_0.a.x, all(vec3<bool>(var_0.b.b, var_0.b.b, var_0.b.b)), all(select(vec4<bool>(var_0.b.b, false, var_0.b.b, var_0.b.b), vec4<bool>(false, false, true, true), vec4<bool>(var_0.b.b, false, true, var_0.b.b)))), vec4<bool>(!var_0.b.b, var_0.b.b, false, all(!vec3<bool>(var_0.b.b, var_0.b.b, true))), var_0.b.b));
}

fn func_1(arg_0: i32, arg_1: f32) -> Struct_1 {
    global1 = array<vec2<f32>, 29>();
    let var_0 = func_2(_wgslsmith_f_op_f32(round(-614f)));
    let var_1 = 4294967295u;
    let var_2 = Struct_3(Struct_1(vec2<u32>(0u, ~(~u_input.a.x)), vec3<i32>(firstLeadingBit(i32(-1i) * -5259i), arg_0, -30894i), abs(_wgslsmith_add_u32(var_1, 48480u)), -vec2<i32>(firstLeadingBit(arg_0), ~arg_0)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1, 916f, arg_1))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_1, 238f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1), -1184f, arg_1) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1374f, arg_1, -939f), vec3<f32>(arg_1, arg_1, -414f)) + vec3<f32>(-730f, 1098f, -2085f))), select(vec3<bool>(any(vec4<bool>(var_0, false, var_0, var_0)), true, var_0), !vec3<bool>(var_0, false, true), any(vec2<bool>(var_0, false))))));
    var var_3 = select(select(vec3<bool>(func_2(866f), all(vec3<bool>(true, var_0, false)), !any(vec3<bool>(false, false, var_0))), vec3<bool>(var_0, !any(vec3<bool>(var_0, false, true)), all(!vec2<bool>(var_0, false))), vec3<bool>(false, arg_1 > _wgslsmith_f_op_f32(-arg_1), true)), !select(select(select(vec3<bool>(true, var_0, false), vec3<bool>(var_0, false, true), vec3<bool>(true, var_0, var_0)), vec3<bool>(var_0, var_0, false), var_0), vec3<bool>(true, var_0, var_0), true), vec3<bool>(var_0, !var_0, false));
    return var_2.a;
}

fn func_4(arg_0: Struct_5, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: Struct_3) -> Struct_4 {
    global0 = false;
    var var_0 = -2092f;
    var var_1 = true;
    var var_2 = !select(!(!vec3<bool>(false, arg_0.a.b.b, arg_2.x)), vec3<bool>(~arg_3.a.b.x != (-37385i << (arg_0.e.c.c % 32u)), !arg_0.e.b, true), select(select(select(vec3<bool>(true, false, arg_2.x), vec3<bool>(false, false, true), vec3<bool>(false, false, arg_2.x)), select(vec3<bool>(true, true, arg_0.d), vec3<bool>(arg_0.a.b.b, true, true), vec3<bool>(false, arg_0.e.b, true)), true), vec3<bool>(false, true, all(arg_2)), _wgslsmith_f_op_f32(max(arg_1.b.x, 178f)) == -182f));
    let var_3 = arg_0;
    return var_3.a;
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: Struct_5, arg_3: vec3<f32>) -> Struct_3 {
    global1 = array<vec2<f32>, 29>();
    global0 = !((arg_3.x < arg_3.x) | all(select(vec4<bool>(arg_2.e.b, arg_2.e.b, true, arg_2.e.b), vec4<bool>(arg_2.a.b.b, arg_2.e.b, arg_2.a.b.b, arg_2.d), false))) != true;
    let var_0 = Struct_5(arg_2.a, Struct_1(~vec2<u32>(~u_input.a.x, 11012u), vec3<i32>(~1i, arg_2.a.b.d.b.x, ~(~(-49814i))), u_input.a.x, ~arg_2.a.b.a.b.yy), Struct_1(countOneBits(abs(firstTrailingBit(vec2<u32>(1u, u_input.a.x)))), -vec3<i32>(arg_2.b.b.x, ~arg_2.a.b.c.b.x, arg_2.c.d.x), ~27115u, vec2<i32>(arg_2.c.d.x, arg_2.e.a.b.x)), true, Struct_2(func_4(Struct_5(func_4(Struct_5(Struct_4(global1[_wgslsmith_index_u32(u_input.a.x, 29u)], arg_2.e), Struct_1(vec2<u32>(u_input.a.x, u_input.a.x), arg_2.a.b.a.b, 0u, arg_2.a.b.d.d), arg_2.b, true, arg_2.a.b), Struct_3(arg_2.b, arg_3), vec2<bool>(arg_2.e.b, false), Struct_3(Struct_1(u_input.a.wz, vec3<i32>(arg_2.b.d.x, arg_2.c.d.x, arg_2.b.d.x), arg_0, vec2<i32>(arg_2.e.d.b.x, 21457i)), vec3<f32>(-1282f, arg_3.x, arg_1))), func_4(arg_2, Struct_3(Struct_1(vec2<u32>(0u, 46229u), vec3<i32>(12829i, 2147483647i, arg_2.b.b.x), 0u, vec2<i32>(38682i, arg_2.b.b.x)), vec3<f32>(arg_2.a.a.x, -948f, -587f)), vec2<bool>(arg_2.e.b, false), Struct_3(arg_2.b, arg_3)).b.c, arg_2.b, arg_2.e.b, func_4(arg_2, Struct_3(arg_2.a.b.c, arg_3), vec2<bool>(false, true), Struct_3(Struct_1(vec2<u32>(1u, arg_2.a.b.c.a.x), vec3<i32>(-2147483647i, -23009i, arg_2.e.d.d.x), u_input.a.x, arg_2.e.a.b.yz), arg_3)).b), Struct_3(Struct_1(u_input.a.wy, arg_2.a.b.d.b, 1u, arg_2.b.d), _wgslsmith_f_op_vec3_f32(min(arg_3, vec3<f32>(987f, 557f, arg_2.a.a.x)))), vec2<bool>(arg_2.d, !arg_2.a.b.b), Struct_3(arg_2.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(536f, -1000f, arg_1)))).b.a, false, arg_2.b, func_4(arg_2, Struct_3(func_4(arg_2, Struct_3(arg_2.c, vec3<f32>(arg_1, arg_1, arg_2.a.a.x)), vec2<bool>(false, false), Struct_3(arg_2.a.b.d, arg_3)).b.c, _wgslsmith_f_op_vec3_f32(max(arg_3, arg_3))), select(select(vec2<bool>(arg_2.d, true), vec2<bool>(true, arg_2.d), arg_2.e.b), !vec2<bool>(arg_2.e.b, arg_2.d), vec2<bool>(arg_2.a.b.b, arg_2.a.b.b)), Struct_3(arg_2.e.d, _wgslsmith_div_vec3_f32(vec3<f32>(arg_3.x, 591f, 398f), arg_3))).b.a));
    global1 = array<vec2<f32>, 29>();
    var var_1 = Struct_3(arg_2.a.b.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(1383f * arg_3.x), _wgslsmith_f_op_f32(-903f - arg_3.x), _wgslsmith_f_op_f32(arg_2.a.a.x + arg_3.x)))) - vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1 * arg_1))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.a.a.x, 366f) + func_4(arg_2, Struct_3(Struct_1(arg_2.c.a, vec3<i32>(var_0.a.b.a.d.x, -3916i, arg_2.b.d.x), 1u, arg_2.e.c.b.xz), vec3<f32>(var_0.a.a.x, arg_3.x, var_0.a.a.x)), vec2<bool>(true, arg_2.e.b), Struct_3(Struct_1(vec2<u32>(4294967295u, u_input.a.x), arg_2.b.b, 4949u, vec2<i32>(0i, var_0.e.c.d.x)), vec3<f32>(var_0.a.a.x, 1638f, -615f))).a.x), 1361f)));
    return Struct_3(func_1((_wgslsmith_dot_vec3_i32(arg_2.a.b.d.b, vec3<i32>(var_0.a.b.d.d.x, var_0.b.b.x, var_0.b.b.x)) | _wgslsmith_add_i32(arg_2.b.b.x, var_0.b.d.x)) | -2147483647i, 566f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1735f, arg_3.x, -1000f))))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-403f, -485f, 113f), var_1.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(u_input.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-294f)))), -1232f), Struct_5(func_4(Struct_5(Struct_4(global1[_wgslsmith_index_u32(u_input.a.x, 29u)], Struct_2(Struct_1(vec2<u32>(53453u, 12708u), vec3<i32>(-15852i, -1i, -43448i), u_input.a.x, vec2<i32>(72543i, -1i)), true, Struct_1(vec2<u32>(19643u, u_input.a.x), vec3<i32>(10901i, -2147483647i, -2147483647i), u_input.a.x, vec2<i32>(-2147483647i, -84546i)), Struct_1(u_input.a.yw, vec3<i32>(-18931i, 25973i, -64063i), 34348u, vec2<i32>(-49368i, 31506i)))), func_1(1i, 838f), func_1(-25966i, -522f), true, Struct_2(Struct_1(vec2<u32>(0u, u_input.a.x), vec3<i32>(7469i, 42620i, -1i), 4294967295u, vec2<i32>(-2147483647i, -9620i)), true, Struct_1(u_input.a.zw, vec3<i32>(2147483647i, -1i, -1i), 4294967295u, vec2<i32>(2147483647i, -9213i)), Struct_1(vec2<u32>(u_input.a.x, 6160u), vec3<i32>(35133i, -57652i, -10277i), u_input.a.x, vec2<i32>(-2147483647i, 54860i)))), Struct_3(func_1(0i, 1278f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(805f, 1207f, -456f))), select(vec2<bool>(true, true), vec2<bool>(false, true), false), Struct_3(Struct_1(u_input.a.wz, vec3<i32>(-1i, -23791i, 34425i), u_input.a.x, vec2<i32>(-18428i, -4278i)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(203f, -1090f, -1102f), vec3<f32>(108f, 763f, 223f))))), Struct_1(_wgslsmith_div_vec2_u32(func_4(Struct_5(Struct_4(global1[_wgslsmith_index_u32(u_input.a.x, 29u)], Struct_2(Struct_1(u_input.a.wx, vec3<i32>(-34991i, 2147483647i, 1i), u_input.a.x, vec2<i32>(-2147483647i, 0i)), true, Struct_1(u_input.a.yx, vec3<i32>(53739i, 36715i, -25318i), u_input.a.x, vec2<i32>(-9829i, -2147483647i)), Struct_1(u_input.a.ww, vec3<i32>(-1i, 7470i, 17323i), 2916u, vec2<i32>(5432i, 56802i)))), Struct_1(vec2<u32>(1u, 4294967295u), vec3<i32>(-22668i, 0i, 9332i), 1u, vec2<i32>(-2147483647i, -1i)), Struct_1(u_input.a.zz, vec3<i32>(0i, 1i, -9660i), u_input.a.x, vec2<i32>(1i, -65013i)), false, Struct_2(Struct_1(u_input.a.yy, vec3<i32>(-2147483647i, 2147483647i, 2147483647i), 15289u, vec2<i32>(-8642i, 1i)), true, Struct_1(vec2<u32>(u_input.a.x, 4294967295u), vec3<i32>(1i, 1i, 59122i), u_input.a.x, vec2<i32>(-1i, 0i)), Struct_1(u_input.a.zz, vec3<i32>(1i, 2147483647i, 4178i), u_input.a.x, vec2<i32>(-2147483647i, -2147483647i)))), Struct_3(Struct_1(u_input.a.ww, vec3<i32>(2147483647i, 4208i, 0i), 78918u, vec2<i32>(-2792i, -1i)), vec3<f32>(-741f, -1000f, -917f)), vec2<bool>(false, false), Struct_3(Struct_1(u_input.a.xx, vec3<i32>(52984i, 1i, -2147483647i), 4294967295u, vec2<i32>(1i, 2147483647i)), vec3<f32>(-331f, 349f, 1350f))).b.a.a, ~u_input.a.wx), func_4(Struct_5(Struct_4(vec2<f32>(-369f, -591f), Struct_2(Struct_1(u_input.a.yy, vec3<i32>(17994i, 44309i, -2147483647i), u_input.a.x, vec2<i32>(0i, -14599i)), false, Struct_1(vec2<u32>(0u, 67796u), vec3<i32>(1i, -32912i, -51349i), 9928u, vec2<i32>(1i, -1i)), Struct_1(vec2<u32>(54626u, u_input.a.x), vec3<i32>(2147483647i, 2147483647i, 1i), 4294967295u, vec2<i32>(-31229i, 1i)))), Struct_1(vec2<u32>(22211u, 1u), vec3<i32>(28804i, -1i, 1i), 35966u, vec2<i32>(-2147483647i, -98514i)), Struct_1(u_input.a.wy, vec3<i32>(-1i, -19153i, 0i), u_input.a.x, vec2<i32>(1i, 50068i)), false, Struct_2(Struct_1(u_input.a.yw, vec3<i32>(-1301i, 25018i, -2147483647i), u_input.a.x, vec2<i32>(-39362i, -53961i)), true, Struct_1(u_input.a.yz, vec3<i32>(-47163i, -1i, 23822i), 47185u, vec2<i32>(-10725i, 38066i)), Struct_1(u_input.a.wz, vec3<i32>(1i, 1848i, 24030i), u_input.a.x, vec2<i32>(0i, -1i)))), Struct_3(Struct_1(u_input.a.wy, vec3<i32>(-27530i, 9709i, 33975i), 4294967295u, vec2<i32>(-899i, -70694i)), vec3<f32>(-139f, 896f, 117f)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), Struct_3(Struct_1(vec2<u32>(0u, u_input.a.x), vec3<i32>(20735i, 0i, 0i), 0u, vec2<i32>(-1i, -23794i)), vec3<f32>(1415f, 262f, 548f))).b.a.b, 2719u, _wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(-2147483647i, 17191i)), -vec2<i32>(2147483647i, -49206i))), func_1(29398i, 1778f), !(true && func_4(Struct_5(Struct_4(global1[_wgslsmith_index_u32(u_input.a.x, 29u)], Struct_2(Struct_1(u_input.a.wx, vec3<i32>(1i, 11304i, -2147483647i), 0u, vec2<i32>(-1i, 1i)), false, Struct_1(vec2<u32>(u_input.a.x, 0u), vec3<i32>(-1i, 2147483647i, -11493i), 2974u, vec2<i32>(13708i, 38958i)), Struct_1(vec2<u32>(56867u, u_input.a.x), vec3<i32>(2147483647i, -2147483647i, 2147483647i), u_input.a.x, vec2<i32>(1i, -192i)))), Struct_1(u_input.a.xz, vec3<i32>(31316i, 55421i, -2147483647i), u_input.a.x, vec2<i32>(-50503i, -18344i)), Struct_1(vec2<u32>(1u, u_input.a.x), vec3<i32>(1i, 13501i, 29063i), 1u, vec2<i32>(2147483647i, 2362i)), true, Struct_2(Struct_1(vec2<u32>(12379u, u_input.a.x), vec3<i32>(-1i, -2147483647i, -4969i), 70496u, vec2<i32>(1i, 0i)), false, Struct_1(vec2<u32>(0u, 12525u), vec3<i32>(-1i, 12745i, 1i), u_input.a.x, vec2<i32>(-1i, 33873i)), Struct_1(u_input.a.yw, vec3<i32>(44406i, 2147483647i, 8449i), u_input.a.x, vec2<i32>(36700i, 0i)))), Struct_3(Struct_1(u_input.a.yw, vec3<i32>(-2147483647i, -2147483647i, 37284i), u_input.a.x, vec2<i32>(26387i, -2707i)), vec3<f32>(-1495f, 237f, 1620f)), vec2<bool>(false, true), Struct_3(Struct_1(u_input.a.xy, vec3<i32>(-23957i, 0i, -2147483647i), 0u, vec2<i32>(1i, -2147483647i)), vec3<f32>(1000f, 1880f, -517f))).b.b), func_4(Struct_5(Struct_4(vec2<f32>(778f, -243f), Struct_2(Struct_1(vec2<u32>(50281u, 0u), vec3<i32>(-56645i, -9363i, -22510i), 9826u, vec2<i32>(-1i, 40290i)), false, Struct_1(u_input.a.xx, vec3<i32>(19460i, -40222i, -24063i), 0u, vec2<i32>(-2147483647i, -1i)), Struct_1(u_input.a.zy, vec3<i32>(-18256i, 1i, -1i), 41592u, vec2<i32>(30987i, -5947i)))), Struct_1(u_input.a.zx, vec3<i32>(51037i, 9684i, 0i), u_input.a.x, vec2<i32>(-20990i, 8301i)), func_1(26919i, 681f), func_4(Struct_5(Struct_4(vec2<f32>(-1080f, 828f), Struct_2(Struct_1(u_input.a.xw, vec3<i32>(-2147483647i, -2401i, 28373i), 4294967295u, vec2<i32>(-2147483647i, 19192i)), true, Struct_1(u_input.a.yz, vec3<i32>(-8631i, -5649i, -1i), 0u, vec2<i32>(28238i, -68217i)), Struct_1(vec2<u32>(u_input.a.x, u_input.a.x), vec3<i32>(22716i, -2147483647i, -52283i), 27466u, vec2<i32>(-2147483647i, -2147483647i)))), Struct_1(vec2<u32>(4294967295u, 0u), vec3<i32>(-2147483647i, 0i, -3855i), u_input.a.x, vec2<i32>(39160i, -2147483647i)), Struct_1(u_input.a.zx, vec3<i32>(1i, -1i, 973i), u_input.a.x, vec2<i32>(-4070i, -1i)), false, Struct_2(Struct_1(vec2<u32>(u_input.a.x, u_input.a.x), vec3<i32>(-38405i, 2147483647i, -1i), 4294967295u, vec2<i32>(-2147483647i, -6278i)), false, Struct_1(vec2<u32>(6479u, 1u), vec3<i32>(0i, 24790i, 2147483647i), 22042u, vec2<i32>(57896i, -52455i)), Struct_1(u_input.a.wy, vec3<i32>(4235i, 2147483647i, -1i), 21178u, vec2<i32>(-1i, -1i)))), Struct_3(Struct_1(u_input.a.zz, vec3<i32>(-31946i, 8451i, 1i), 4294967295u, vec2<i32>(-1i, 15427i)), vec3<f32>(-430f, -1091f, 200f)), vec2<bool>(false, false), Struct_3(Struct_1(u_input.a.ww, vec3<i32>(-2147483647i, 16350i, -1i), 4294967295u, vec2<i32>(0i, -14967i)), vec3<f32>(-609f, -594f, -636f))).b.b, Struct_2(Struct_1(u_input.a.ww, vec3<i32>(20891i, 1i, -9796i), u_input.a.x, vec2<i32>(-1i, -10259i)), false, Struct_1(u_input.a.zx, vec3<i32>(-37816i, -27659i, -1i), 2519u, vec2<i32>(0i, 0i)), Struct_1(vec2<u32>(4294967295u, 36026u), vec3<i32>(-43850i, 2147483647i, 1i), 14781u, vec2<i32>(2147483647i, 10385i)))), Struct_3(Struct_1(vec2<u32>(66179u, u_input.a.x), vec3<i32>(0i, -45859i, -2147483647i), 4294967295u, vec2<i32>(0i, -1i)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1404f, 1000f, 710f)))), vec2<bool>(true, true), Struct_3(Struct_1(u_input.a.xw, vec3<i32>(-2147483647i, 1i, -6836i), u_input.a.x, vec2<i32>(0i, 0i)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-124f, -1560f, -193f), vec3<f32>(-451f, 634f, 259f))))).b), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(1007f, -2792f), -475f, _wgslsmith_f_op_f32(select(-1184f, -688f, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(325f, -445f, -633f)))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(952f, -1032f, 508f), vec3<f32>(-1567f, -1405f, -141f)))))))));
    var var_1 = func_4(Struct_5(func_4(Struct_5(func_4(Struct_5(Struct_4(global1[_wgslsmith_index_u32(u_input.a.x, 29u)], Struct_2(var_0.a, true, var_0.a, var_0.a)), Struct_1(u_input.a.wz, var_0.a.b, var_0.a.c, vec2<i32>(var_0.a.d.x, var_0.a.b.x)), Struct_1(u_input.a.zy, var_0.a.b, u_input.a.x, vec2<i32>(0i, -1i)), false, Struct_2(var_0.a, false, var_0.a, var_0.a)), Struct_3(var_0.a, var_0.b), vec2<bool>(false, false), Struct_3(var_0.a, vec3<f32>(1132f, 172f, 546f))), var_0.a, func_4(Struct_5(Struct_4(vec2<f32>(680f, 1199f), Struct_2(Struct_1(u_input.a.wx, vec3<i32>(var_0.a.d.x, -17945i, var_0.a.d.x), u_input.a.x, var_0.a.b.xx), true, Struct_1(var_0.a.a, var_0.a.b, 4294967295u, var_0.a.b.xz), var_0.a)), Struct_1(vec2<u32>(58915u, var_0.a.c), var_0.a.b, 853u, vec2<i32>(var_0.a.b.x, 1248i)), var_0.a, true, Struct_2(Struct_1(vec2<u32>(var_0.a.c, u_input.a.x), vec3<i32>(-12560i, -2147483647i, var_0.a.d.x), 60840u, vec2<i32>(var_0.a.d.x, -6934i)), true, Struct_1(var_0.a.a, vec3<i32>(2147483647i, var_0.a.b.x, 11542i), u_input.a.x, vec2<i32>(54692i, 34447i)), Struct_1(vec2<u32>(1280u, 19322u), vec3<i32>(var_0.a.d.x, var_0.a.d.x, var_0.a.d.x), 50693u, vec2<i32>(var_0.a.b.x, 1906i)))), Struct_3(var_0.a, vec3<f32>(364f, 1081f, var_0.b.x)), vec2<bool>(true, true), Struct_3(Struct_1(vec2<u32>(var_0.a.c, var_0.a.c), vec3<i32>(57009i, 1i, -4762i), var_0.a.c, vec2<i32>(1i, -2147483647i)), var_0.b)).b.d, true, func_4(Struct_5(Struct_4(vec2<f32>(var_0.b.x, 748f), Struct_2(Struct_1(vec2<u32>(21423u, u_input.a.x), vec3<i32>(-56695i, var_0.a.b.x, -27081i), 12237u, vec2<i32>(var_0.a.d.x, 35045i)), false, var_0.a, Struct_1(vec2<u32>(64621u, 0u), vec3<i32>(2147483647i, 11037i, var_0.a.b.x), var_0.a.a.x, vec2<i32>(-7458i, -1i)))), Struct_1(u_input.a.ww, vec3<i32>(var_0.a.d.x, -2147483647i, var_0.a.b.x), 29076u, vec2<i32>(-24121i, -1i)), var_0.a, true, Struct_2(var_0.a, true, Struct_1(vec2<u32>(u_input.a.x, 1u), vec3<i32>(var_0.a.d.x, 31914i, var_0.a.d.x), 57898u, var_0.a.d), Struct_1(vec2<u32>(20881u, 0u), vec3<i32>(-2147483647i, var_0.a.d.x, var_0.a.b.x), 0u, vec2<i32>(var_0.a.b.x, 11447i)))), Struct_3(var_0.a, var_0.b), vec2<bool>(false, true), Struct_3(Struct_1(vec2<u32>(11527u, u_input.a.x), var_0.a.b, u_input.a.x, var_0.a.d), vec3<f32>(var_0.b.x, var_0.b.x, -1000f))).b), Struct_3(func_1(var_0.a.b.x, 1469f), vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x)), vec2<bool>(true, true), func_5(~18541u, var_0.b.x, Struct_5(Struct_4(vec2<f32>(var_0.b.x, var_0.b.x), Struct_2(var_0.a, false, Struct_1(vec2<u32>(4294967295u, var_0.a.c), vec3<i32>(var_0.a.b.x, var_0.a.d.x, var_0.a.d.x), u_input.a.x, var_0.a.b.xy), var_0.a)), var_0.a, var_0.a, false, Struct_2(var_0.a, false, var_0.a, Struct_1(vec2<u32>(32902u, 4531u), var_0.a.b, 26523u, var_0.a.b.zz))), var_0.b)), Struct_1(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, var_0.a.a.x), vec2<u32>(32597u, var_0.a.c)), var_0.a.a), ~(~vec3<i32>(-1i, 1i, var_0.a.d.x)), ~firstLeadingBit(var_0.a.c), var_0.a.d & func_5(0u, var_0.b.x, Struct_5(Struct_4(vec2<f32>(var_0.b.x, -407f), Struct_2(var_0.a, false, var_0.a, Struct_1(var_0.a.a, var_0.a.b, var_0.a.a.x, var_0.a.d))), Struct_1(var_0.a.a, var_0.a.b, 534u, var_0.a.d), var_0.a, false, Struct_2(var_0.a, false, var_0.a, Struct_1(u_input.a.zy, var_0.a.b, u_input.a.x, vec2<i32>(var_0.a.d.x, -11571i)))), var_0.b).a.d), Struct_1(~func_4(Struct_5(Struct_4(vec2<f32>(-469f, -549f), Struct_2(Struct_1(u_input.a.wz, var_0.a.b, u_input.a.x, var_0.a.d), true, Struct_1(var_0.a.a, vec3<i32>(var_0.a.b.x, var_0.a.b.x, 63449i), u_input.a.x, var_0.a.d), var_0.a)), var_0.a, Struct_1(u_input.a.zz, var_0.a.b, 0u, vec2<i32>(19842i, 2308i)), false, Struct_2(Struct_1(var_0.a.a, var_0.a.b, u_input.a.x, var_0.a.b.yx), false, var_0.a, Struct_1(vec2<u32>(14004u, 4758u), vec3<i32>(var_0.a.d.x, var_0.a.b.x, var_0.a.b.x), 1u, var_0.a.b.xy))), Struct_3(Struct_1(vec2<u32>(u_input.a.x, 0u), vec3<i32>(0i, var_0.a.d.x, 21510i), var_0.a.c, vec2<i32>(2147483647i, -2147483647i)), var_0.b), vec2<bool>(true, true), Struct_3(Struct_1(vec2<u32>(var_0.a.c, 0u), vec3<i32>(-2147483647i, var_0.a.d.x, -1i), u_input.a.x, var_0.a.d), vec3<f32>(var_0.b.x, var_0.b.x, 907f))).b.d.a, var_0.a.b, 66066u, var_0.a.b.yx), true, func_4(Struct_5(Struct_4(global1[_wgslsmith_index_u32(var_0.a.c, 29u)], Struct_2(var_0.a, true, var_0.a, Struct_1(var_0.a.a, vec3<i32>(var_0.a.d.x, 35285i, 3458i), 60696u, vec2<i32>(-1i, var_0.a.d.x)))), var_0.a, Struct_1(u_input.a.yw, var_0.a.b, 1u, vec2<i32>(0i, 3503i)), -1000f <= var_0.b.x, func_4(Struct_5(Struct_4(var_0.b.zz, Struct_2(var_0.a, true, var_0.a, Struct_1(u_input.a.ww, vec3<i32>(var_0.a.b.x, -1i, var_0.a.b.x), u_input.a.x, var_0.a.b.zx))), var_0.a, var_0.a, false, Struct_2(Struct_1(var_0.a.a, var_0.a.b, u_input.a.x, vec2<i32>(var_0.a.d.x, -1i)), false, Struct_1(vec2<u32>(57934u, var_0.a.c), var_0.a.b, 12699u, var_0.a.b.zy), Struct_1(vec2<u32>(var_0.a.a.x, u_input.a.x), var_0.a.b, var_0.a.a.x, var_0.a.d))), Struct_3(Struct_1(var_0.a.a, vec3<i32>(-1i, 0i, 2147483647i), u_input.a.x, vec2<i32>(var_0.a.d.x, var_0.a.b.x)), vec3<f32>(var_0.b.x, var_0.b.x, 1000f)), vec2<bool>(true, false), Struct_3(Struct_1(var_0.a.a, var_0.a.b, u_input.a.x, vec2<i32>(-39825i, 2147483647i)), vec3<f32>(170f, -335f, 486f))).b), Struct_3(Struct_1(vec2<u32>(4294967295u, 4294967295u), var_0.a.b, 1u, var_0.a.b.yx), vec3<f32>(699f, var_0.b.x, 230f)), vec2<bool>(true, true), Struct_3(var_0.a, vec3<f32>(var_0.b.x, -1580f, var_0.b.x))).b), Struct_3(var_0.a, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -295f), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.b.x, var_0.b.x))), _wgslsmith_f_op_f32(select(var_0.b.x, _wgslsmith_f_op_f32(var_0.b.x + var_0.b.x), true)))), vec2<bool>(func_5(1u, -2659f, Struct_5(Struct_4(vec2<f32>(1349f, var_0.b.x), Struct_2(Struct_1(vec2<u32>(40462u, 0u), var_0.a.b, 4294967295u, var_0.a.b.xx), false, Struct_1(u_input.a.xw, var_0.a.b, 0u, var_0.a.d), var_0.a)), var_0.a, var_0.a, true, Struct_2(Struct_1(u_input.a.yy, var_0.a.b, var_0.a.a.x, vec2<i32>(var_0.a.b.x, var_0.a.b.x)), false, Struct_1(vec2<u32>(18145u, u_input.a.x), var_0.a.b, u_input.a.x, vec2<i32>(var_0.a.b.x, 21808i)), Struct_1(vec2<u32>(var_0.a.c, u_input.a.x), vec3<i32>(33998i, -21020i, 1i), 62228u, var_0.a.d))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(432f, var_0.b.x, var_0.b.x))).b.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1612f, var_0.b.x, true))), !(!select(false, false, true))), Struct_3(var_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_0.b, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-382f, 412f, var_0.b.x), var_0.b)), true))))).b;
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, 101f))))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-335f, -1000f) * _wgslsmith_f_op_f32(f32(-1f) * -572f)), var_0.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_0.b.x, 574f)))), _wgslsmith_f_op_f32(f32(-1f) * -288f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(var_0.b.x + -1126f), _wgslsmith_f_op_f32(func_3()), -1695f), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(207f - var_0.b.x) - var_0.b.x), var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.b.x))), var_0.b.x))));
    var var_3 = var_0.a;
    let var_4 = func_4(Struct_5(func_4(Struct_5(Struct_4(var_2.zx, Struct_2(Struct_1(var_1.c.a, vec3<i32>(-2147483647i, -29517i, 2147483647i), u_input.a.x, vec2<i32>(-29223i, 1i)), var_1.b, Struct_1(var_3.a, vec3<i32>(var_1.a.d.x, var_0.a.b.x, var_3.d.x), var_3.c, var_3.d), Struct_1(var_3.a, var_1.c.b, var_3.c, var_0.a.b.yx))), Struct_1(vec2<u32>(var_0.a.a.x, 4294967295u), var_1.d.b, u_input.a.x, var_1.c.b.xy), func_1(81150i, 1055f), var_1.b || true, Struct_2(Struct_1(vec2<u32>(var_3.c, 3294u), vec3<i32>(var_0.a.d.x, var_0.a.d.x, var_1.c.b.x), var_3.a.x, vec2<i32>(2147483647i, -2147483647i)), true, var_1.a, var_1.a)), Struct_3(Struct_1(vec2<u32>(1u, var_1.c.a.x), vec3<i32>(-2147483647i, 32794i, var_3.b.x), 4294967295u, var_3.d), vec3<f32>(456f, var_2.x, -218f)), vec2<bool>(true, !var_1.b), func_5(1u ^ u_input.a.x, _wgslsmith_f_op_f32(select(var_0.b.x, var_2.x, true)), Struct_5(Struct_4(global1[_wgslsmith_index_u32(u_input.a.x, 29u)], Struct_2(Struct_1(var_3.a, var_0.a.b, 107693u, vec2<i32>(var_1.a.b.x, var_3.b.x)), true, var_0.a, var_0.a)), var_0.a, var_1.c, var_1.b, Struct_2(Struct_1(var_0.a.a, var_0.a.b, 3407u, var_1.a.b.zy), var_1.b, var_0.a, Struct_1(var_3.a, var_0.a.b, var_3.c, var_1.d.d))), var_0.b)), Struct_1(u_input.a.xz, select(var_0.a.b, vec3<i32>(-1i, 15425i, var_3.d.x), select(vec3<bool>(false, var_1.b, true), vec3<bool>(var_1.b, var_1.b, false), false)), ~0u, var_3.d), func_5(abs(var_0.a.c), var_0.b.x, Struct_5(Struct_4(vec2<f32>(var_0.b.x, -528f), Struct_2(Struct_1(vec2<u32>(var_0.a.c, var_0.a.c), vec3<i32>(48014i, var_3.b.x, var_3.d.x), 36342u, var_1.c.b.xz), var_1.b, var_1.a, var_0.a)), var_1.d, var_1.d, any(vec3<bool>(false, var_1.b, true)), func_4(Struct_5(Struct_4(var_0.b.zx, Struct_2(var_0.a, true, var_0.a, Struct_1(vec2<u32>(52996u, var_0.a.a.x), vec3<i32>(var_1.d.d.x, -2147483647i, 32848i), var_1.c.c, vec2<i32>(var_3.d.x, -72020i)))), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec3<i32>(21131i, var_0.a.d.x, var_1.a.b.x), 0u, var_0.a.b.yz), Struct_1(var_1.c.a, var_3.b, var_3.a.x, vec2<i32>(var_3.d.x, 11699i)), true, Struct_2(Struct_1(vec2<u32>(var_1.d.a.x, var_0.a.a.x), var_3.b, var_1.c.a.x, vec2<i32>(var_1.c.b.x, var_0.a.b.x)), true, var_1.a, var_1.a)), Struct_3(var_1.d, var_2.wwz), vec2<bool>(true, true), Struct_3(Struct_1(var_0.a.a, vec3<i32>(-852i, 1i, 1i), 21253u, var_0.a.b.zx), vec3<f32>(983f, -947f, var_2.x))).b), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(var_0.b * vec3<f32>(-488f, -1351f, var_0.b.x))))).a, true, Struct_2(var_0.a, all(select(vec2<bool>(false, false), vec2<bool>(var_1.b, false), true)), func_4(Struct_5(Struct_4(var_2.zy, Struct_2(Struct_1(vec2<u32>(0u, var_3.c), var_3.b, 0u, var_3.b.yz), true, var_0.a, var_1.a)), var_0.a, var_1.d, var_1.b, Struct_2(var_0.a, var_1.b, var_0.a, Struct_1(vec2<u32>(4294967295u, u_input.a.x), var_1.a.b, u_input.a.x, vec2<i32>(var_0.a.b.x, 1i)))), func_5(4689u, 121f, Struct_5(Struct_4(vec2<f32>(var_2.x, 624f), Struct_2(var_1.c, false, var_0.a, var_1.d)), var_1.c, Struct_1(var_0.a.a, vec3<i32>(var_1.a.d.x, -4555i, var_3.d.x), var_0.a.c, vec2<i32>(var_1.d.b.x, 53224i)), true, Struct_2(var_1.c, true, var_0.a, Struct_1(var_3.a, var_0.a.b, 1u, var_3.d))), vec3<f32>(var_0.b.x, var_0.b.x, -570f)), !vec2<bool>(var_1.b, var_1.b), func_5(43160u, var_2.x, Struct_5(Struct_4(vec2<f32>(var_0.b.x, -161f), Struct_2(Struct_1(var_1.a.a, var_0.a.b, 1u, var_0.a.b.zz), false, Struct_1(var_3.a, vec3<i32>(var_1.c.d.x, 13376i, var_0.a.b.x), 4294967295u, vec2<i32>(6666i, 1i)), Struct_1(vec2<u32>(var_0.a.c, var_1.c.c), vec3<i32>(0i, -1i, var_3.b.x), 0u, var_1.c.d))), var_1.d, var_1.a, false, Struct_2(var_0.a, var_1.b, var_0.a, var_1.d)), var_2.xxy)).b.a, var_0.a)), Struct_3(var_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1737f, var_0.b.x, 371f)))))), select(vec2<bool>(false, all(!vec4<bool>(var_1.b, var_1.b, var_1.b, false))), !select(select(vec2<bool>(false, false), vec2<bool>(var_1.b, false), false), select(vec2<bool>(var_1.b, true), vec2<bool>(true, var_1.b), var_1.b), false), !(!(!vec2<bool>(var_1.b, var_1.b)))), func_5(4294967295u, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-var_0.b.x))))), Struct_5(func_4(Struct_5(Struct_4(var_0.b.xy, Struct_2(var_1.c, false, var_0.a, Struct_1(u_input.a.zx, var_0.a.b, 86618u, vec2<i32>(71327i, -18859i)))), Struct_1(vec2<u32>(var_3.c, var_3.a.x), vec3<i32>(var_1.d.d.x, -1i, 2147483647i), var_3.a.x, var_0.a.d), var_1.c, var_1.b, Struct_2(var_0.a, var_1.b, var_1.c, Struct_1(var_3.a, vec3<i32>(4110i, var_1.d.d.x, var_3.b.x), 19613u, var_0.a.d))), Struct_3(var_0.a, vec3<f32>(var_0.b.x, -1908f, var_0.b.x)), !vec2<bool>(var_1.b, false), Struct_3(Struct_1(vec2<u32>(u_input.a.x, var_0.a.c), var_0.a.b, 4294967295u, var_1.d.b.zz), vec3<f32>(var_2.x, var_0.b.x, 199f))), var_0.a, var_0.a, !all(vec2<bool>(var_1.b, var_1.b)), Struct_2(Struct_1(vec2<u32>(0u, var_1.c.a.x), vec3<i32>(-22322i, var_1.c.d.x, -23776i), 1u, vec2<i32>(var_3.b.x, 1i)), func_2(var_2.x), Struct_1(vec2<u32>(23299u, var_1.a.c), vec3<i32>(var_0.a.d.x, var_3.b.x, var_3.b.x), var_1.a.a.x, var_0.a.d), Struct_1(u_input.a.wx, vec3<i32>(var_1.a.b.x, var_1.c.d.x, -5200i), var_3.a.x, var_0.a.d))), _wgslsmith_f_op_vec3_f32(select(var_0.b, vec3<f32>(_wgslsmith_f_op_f32(275f * var_2.x), var_0.b.x, -386f), select(vec3<bool>(false, var_1.b, false), vec3<bool>(true, false, false), false))))).b;
    let var_5 = vec2<u32>(~(~(8701u ^ var_4.d.a.x) & ~(1u | var_3.a.x)), 24548u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.xww, func_4(Struct_5(Struct_4(vec2<f32>(var_2.x, -127f), Struct_2(Struct_1(u_input.a.yw, var_4.c.b, 77821u, var_4.a.d), true, var_4.a, Struct_1(var_4.d.a, vec3<i32>(4192i, -298i, var_0.a.b.x), var_4.c.a.x, var_1.a.d))), var_1.a, func_5(1u, 879f, Struct_5(Struct_4(vec2<f32>(var_0.b.x, var_0.b.x), Struct_2(Struct_1(var_3.a, var_1.a.b, u_input.a.x, vec2<i32>(-1i, 0i)), false, var_1.c, var_4.c)), Struct_1(vec2<u32>(17646u, var_0.a.a.x), var_3.b, var_5.x, vec2<i32>(27672i, var_1.c.d.x)), var_4.a, false, var_4), _wgslsmith_f_op_vec3_f32(-var_0.b)).a, var_4.b & (var_2.x >= var_0.b.x), Struct_2(func_1(-1i, var_2.x), var_1.b, Struct_1(var_0.a.a, vec3<i32>(34381i, -42609i, var_3.b.x), u_input.a.x, vec2<i32>(2147483647i, 28482i)), func_4(Struct_5(Struct_4(vec2<f32>(-613f, 1056f), var_4), Struct_1(var_3.a, vec3<i32>(var_4.a.d.x, var_4.c.b.x, var_3.b.x), 3907u, var_4.a.d), var_0.a, false, Struct_2(var_0.a, true, var_0.a, var_0.a)), Struct_3(Struct_1(var_3.a, vec3<i32>(2147483647i, var_0.a.b.x, 33467i), var_1.a.c, vec2<i32>(var_3.b.x, 19416i)), var_2.zwx), vec2<bool>(true, var_1.b), Struct_3(var_4.a, var_2.yxx)).b.d)), Struct_3(var_1.d, var_2.xzx), vec2<bool>(false, reverseBits(0u) == (4294967295u << (var_5.x % 32u))), Struct_3(func_5(var_0.a.c, _wgslsmith_f_op_f32(-1945f + var_2.x), Struct_5(Struct_4(var_2.xw, var_4), var_0.a, Struct_1(var_4.a.a, var_4.d.b, 0u, var_4.c.d), true, Struct_2(Struct_1(var_5, var_1.a.b, var_1.a.a.x, vec2<i32>(var_1.a.d.x, -16931i)), true, var_0.a, Struct_1(vec2<u32>(u_input.a.x, 1u), vec3<i32>(2147483647i, var_3.d.x, 26263i), var_1.d.c, vec2<i32>(2147483647i, var_0.a.d.x)))), var_0.b).a, _wgslsmith_f_op_vec3_f32(-var_2.xyy))).b.a.d.x, vec2<u32>(1u, firstLeadingBit(var_0.a.a.x)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(var_2)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2)));
}

