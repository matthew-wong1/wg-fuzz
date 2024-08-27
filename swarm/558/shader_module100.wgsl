struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: u32,
    d: vec4<u32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 28458u;

var<private> global1: array<vec3<bool>, 7> = array<vec3<bool>, 7>(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false));

var<private> global2: array<vec2<f32>, 25> = array<vec2<f32>, 25>(vec2<f32>(1125f, 313f), vec2<f32>(519f, 1104f), vec2<f32>(298f, 1478f), vec2<f32>(1256f, 1145f), vec2<f32>(-1390f, 1000f), vec2<f32>(624f, 750f), vec2<f32>(-641f, 241f), vec2<f32>(1015f, -1408f), vec2<f32>(1336f, -1543f), vec2<f32>(-962f, -800f), vec2<f32>(-490f, -412f), vec2<f32>(920f, 808f), vec2<f32>(1308f, -375f), vec2<f32>(1928f, -769f), vec2<f32>(1764f, -419f), vec2<f32>(-251f, 253f), vec2<f32>(-482f, 830f), vec2<f32>(-742f, -883f), vec2<f32>(671f, 2090f), vec2<f32>(979f, -370f), vec2<f32>(1566f, -1325f), vec2<f32>(611f, 723f), vec2<f32>(-472f, -1088f), vec2<f32>(-1600f, -1614f), vec2<f32>(282f, 694f));

var<private> global3: array<vec3<i32>, 12>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: i32) -> u32 {
    let var_0 = -_wgslsmith_div_vec2_i32(arg_2.a.a.xz, countOneBits(-arg_2.a.a.zz));
    var var_1 = ~_wgslsmith_add_u32(1u, u_input.c);
    let var_2 = 1i;
    let var_3 = Struct_2(Struct_1(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-42047i, arg_3, u_input.b, u_input.b), vec4<i32>(-77080i, 18842i, arg_2.a.b, arg_3)) & ~(-1i), 0i | var_2, ~(~0i)), abs(-var_2)), ~vec4<u32>(reverseBits(u_input.a) & u_input.c, _wgslsmith_add_u32(u_input.c, u_input.a << (59989u % 32u)), _wgslsmith_mult_u32(33691u, u_input.a), ~0u), Struct_1(firstTrailingBit(arg_2.a.a), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i >> (u_input.a % 32u), ~10455i, firstLeadingBit(var_2), _wgslsmith_clamp_i32(var_2, u_input.b, u_input.b)), abs(_wgslsmith_mod_vec4_i32(vec4<i32>(var_2, arg_3, 1i, var_2), vec4<i32>(u_input.b, 2147483647i, u_input.b, 0i))))));
    global3 = array<vec3<i32>, 12>();
    return var_3.b.x;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: u32, arg_3: i32) -> f32 {
    global0 = arg_2;
    global2 = array<vec2<f32>, 25>();
    let var_0 = Struct_3(Struct_1(_wgslsmith_mod_vec3_i32(reverseBits(firstTrailingBit(arg_1)), ~global3[_wgslsmith_index_u32(~arg_2, 12u)]), -42163i ^ arg_1.x), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -554f)), -1163f), _wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.c, func_3(559f, vec3<f32>(382f, 1475f, 1706f), Struct_3(Struct_1(vec3<i32>(-2147483647i, -47210i, arg_1.x), arg_3), global2[_wgslsmith_index_u32(arg_0.x, 25u)], 1353f), u_input.b)), 25u)])), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1062f, _wgslsmith_f_op_f32(f32(-1f) * -175f)) + _wgslsmith_f_op_f32(f32(-1f) * -705f)));
    global1 = array<vec3<bool>, 7>();
    let var_1 = vec3<i32>(-55666i << (~arg_0.x % 32u), -20576i, -9467i);
    return _wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(select(var_0.b.x, -835f, true & select(false, false, false))));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: i32) -> bool {
    let var_0 = (arg_0 == arg_0) && !(_wgslsmith_add_u32(~arg_1, 4294967295u) == min(arg_1, _wgslsmith_mod_u32(u_input.a, 0u)));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-186f - -1521f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(vec3<u32>(1u, 41817u, arg_1), vec3<i32>(arg_2, arg_2, u_input.b), arg_1, 0i)))), _wgslsmith_div_f32(arg_0, arg_0)))), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(arg_0, arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -1340f), all(global1[_wgslsmith_index_u32(0u, 7u)]))))));
    var var_2 = 123105u;
    let var_3 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-117f - arg_0)), -1000f), var_1.x), -938f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1381f)) - -1381f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(513f))))));
    let var_4 = Struct_1(~global3[_wgslsmith_index_u32(select(1u ^ abs(arg_1), _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1, arg_1), max(vec2<u32>(4294967295u, u_input.a), vec2<u32>(4294967295u, 0u))), var_0), 12u)], arg_2);
    return !(!var_0);
}

fn func_4(arg_0: vec3<u32>, arg_1: bool) -> bool {
    global0 = arg_0.x;
    global3 = array<vec3<i32>, 12>();
    let var_0 = Struct_3(Struct_1(global3[_wgslsmith_index_u32(42180u, 12u)], u_input.b >> (arg_0.x % 32u)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(112f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-155f * -1000f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(661f)) - -997f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-854f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1108f * 683f))))));
    let var_1 = vec2<bool>(arg_1, !any(global1[_wgslsmith_index_u32(3838u, 7u)]));
    let var_2 = true;
    return var_2;
}

fn func_5(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_1 {
    return Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -firstLeadingBit(vec3<i32>(u_input.b, u_input.b, -1i)), max(reverseBits(vec3<i32>(arg_2.b, arg_2.b, 1i)), vec3<i32>(-39904i, -1i, _wgslsmith_mult_i32(arg_2.b, 2147483647i)))), _wgslsmith_dot_vec4_i32(-(_wgslsmith_mod_vec4_i32(vec4<i32>(-6780i, -22588i, u_input.b, u_input.b), vec4<i32>(u_input.b, arg_2.b, 39016i, arg_2.b)) & vec4<i32>(arg_2.b, u_input.b, -30181i, arg_2.a.x)), _wgslsmith_add_vec4_i32(firstLeadingBit(countOneBits(vec4<i32>(arg_2.a.x, u_input.b, -1i, arg_2.a.x))), vec4<i32>(~u_input.b, -u_input.b, arg_2.b, 0i))));
}

fn func_6(arg_0: bool, arg_1: Struct_1) -> Struct_4 {
    var var_0 = arg_1;
    global3 = array<vec3<i32>, 12>();
    let var_1 = vec2<u32>(_wgslsmith_clamp_u32(abs(~0u), min(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 1u, u_input.c), vec3<u32>(u_input.a, 61148u, 0u)), _wgslsmith_div_u32(107115u, u_input.a)), ~4294967295u), ~_wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.c, u_input.c)), min(~vec2<u32>(7657u, u_input.a), vec2<u32>(u_input.a, u_input.c))));
    var var_2 = vec2<bool>(true, !(u_input.b > ((-1i ^ var_0.b) | reverseBits(-2389i))));
    var var_3 = 931f;
    return Struct_4(func_5(vec4<bool>(true, true, firstTrailingBit(u_input.b) > 25193i, true), global2[_wgslsmith_index_u32(u_input.c, 25u)], Struct_1(_wgslsmith_mult_vec3_i32(var_0.a, _wgslsmith_mod_vec3_i32(vec3<i32>(1i, u_input.b, 2147483647i), vec3<i32>(u_input.b, 83142i, -12846i))), ~abs(-29832i))), Struct_3(arg_1, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1477f, 686f)) + _wgslsmith_f_op_vec2_f32(step(global2[_wgslsmith_index_u32(u_input.a, 25u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(471f, 1492f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-910f)) * 885f)), 4294967295u, ~vec4<u32>(~1u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, 1u, u_input.c, 1u), vec4<u32>(610u, 1u, 34777u, u_input.c)), reverseBits(vec4<u32>(22906u, 12362u, 4294967295u, u_input.a))), u_input.a, u_input.c), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(~vec3<u32>(75558u, u_input.a, u_input.a)), ~(vec3<u32>(u_input.a, 3591u, var_1.x) >> (vec3<u32>(1u, var_1.x, 4294967295u) % vec3<u32>(32u)))) >> (~(~25469u) % 32u), 7u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<i32>, 12>();
    let var_0 = func_6(any(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 10635u, u_input.c), vec3<u32>(9045u, 1u, u_input.a)), ~vec3<u32>(4294967295u, 39564u, 1u)), reverseBits(~vec3<u32>(0u, 0u, 0u))), 7u)]), func_5(vec4<bool>(true, all(vec2<bool>(true, false)), func_4(~vec3<u32>(76267u, 4294967295u, u_input.a), func_1(-1794f, u_input.c, u_input.b)), false), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -156f), -794f) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1191f), _wgslsmith_f_op_f32(-766f - -1052f))), Struct_1(global3[_wgslsmith_index_u32(func_3(347f, vec3<f32>(-786f, -1000f, -1402f), Struct_3(Struct_1(vec3<i32>(15382i, -65380i, u_input.b), u_input.b), global2[_wgslsmith_index_u32(u_input.c, 25u)], 1441f), 0i), 12u)] >> ((vec3<u32>(u_input.c, 1u, u_input.c) ^ vec3<u32>(4343u, 0u, u_input.a)) % vec3<u32>(32u)), -53704i)));
    var var_1 = all(vec3<bool>(true, !var_0.e.x, !(!(!var_0.e.x))));
    global0 = ~(~(min(u_input.c, u_input.c) >> (12648u % 32u))) & min(min(var_0.c, reverseBits(min(var_0.c, 0u))), _wgslsmith_div_u32(~(~u_input.c), var_0.d.x));
    var var_2 = _wgslsmith_sub_vec2_u32(abs(~(~(var_0.d.yz >> (vec2<u32>(u_input.c, 0u) % vec2<u32>(32u))))), firstLeadingBit(abs(abs(var_0.d.ww >> (var_0.d.wz % vec2<u32>(32u))))));
    var var_3 = _wgslsmith_f_op_f32(sign(-1000f));
    var var_4 = var_0;
    var_3 = var_4.b.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.a.b, _wgslsmith_sub_vec4_u32(min(max(func_6(false, var_4.a).d, select(vec4<u32>(var_2.x, u_input.a, 18512u, var_0.d.x), vec4<u32>(1u, var_2.x, var_2.x, var_4.d.x), false)), var_4.d), vec4<u32>(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 1u), var_4.d.zw)), 39800u, ~_wgslsmith_mult_u32(var_0.d.x, var_4.c), 74185u)));
}

