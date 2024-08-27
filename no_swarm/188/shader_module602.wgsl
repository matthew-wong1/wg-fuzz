struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: bool,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
}

struct Struct_4 {
    a: i32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12> = array<u32, 12>(88196u, 4294967295u, 23382u, 0u, 0u, 51780u, 33403u, 4294967295u, 9659u, 4294967295u, 64799u, 4294967295u);

var<private> global1: bool;

var<private> global2: array<bool, 21> = array<bool, 21>(true, true, true, true, true, false, true, true, true, false, true, false, true, false, true, true, false, false, true, true, true);

var<private> global3: array<u32, 31>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: Struct_1, arg_3: bool) -> f32 {
    var var_0 = firstTrailingBit(vec2<i32>(abs(~73228i), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(2147483647i, 30868i)), -vec2<i32>(0i, -2147483647i))));
    global0 = array<u32, 12>();
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -990f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(arg_2.a))))) != _wgslsmith_f_op_f32(sign(arg_2.a));
    var var_1 = ~(_wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(19411i, 0i) & vec2<i32>(-2147483647i, var_0.x)), _wgslsmith_mult_vec2_i32(~vec2<i32>(20597i, var_0.x), vec2<i32>(9284i, -2147483647i) | vec2<i32>(var_0.x, -13636i))) >> (vec2<u32>(4294967295u, _wgslsmith_dot_vec3_u32(max(vec3<u32>(0u, 13152u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(25099u, 12u)], 12u)]), u_input.a), vec3<u32>(4294967295u, 81076u, global3[_wgslsmith_index_u32(1u, 31u)]))) % vec2<u32>(32u)));
    let var_2 = 0i;
    return arg_2.a;
}

fn func_2() -> Struct_3 {
    var var_0 = !vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, ~72415u) << (~select(global3[_wgslsmith_index_u32(11979u, 31u)], 0u, true) % 32u), 21u)], _wgslsmith_f_op_f32(-481f - _wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(u_input.d, 21u)], false, Struct_1(-2379f, vec3<bool>(false, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 12u)], 21u)], false), true, vec2<u32>(u_input.a.x, u_input.d)), global2[_wgslsmith_index_u32(0u, 21u)]))) != _wgslsmith_f_op_f32(f32(-1f) * -272f), all(vec2<bool>(false && global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 12u)], 21u)], select(true, global2[_wgslsmith_index_u32(29685u, 21u)], false))));
    global1 = !global2[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x) << (min(u_input.d, 1u) % 32u), 21u)];
    global2 = array<bool, 21>();
    return Struct_3(0u, ~_wgslsmith_add_i32(_wgslsmith_mod_i32(select(-2147483647i, 2147483647i, false), ~(-17402i)), ~(~(-2147483647i))));
}

fn func_1(arg_0: vec4<u32>, arg_1: u32) -> f32 {
    var var_0 = func_2();
    var var_1 = vec2<i32>(func_2().b, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(24328i, 51691i), vec2<i32>(var_0.b, var_0.b)), _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-6787i, var_0.b), vec2<i32>(var_0.b, var_0.b)), _wgslsmith_mod_vec2_i32(vec2<i32>(var_0.b, var_0.b), vec2<i32>(-45626i, 40515i))))) ^ _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i) ^ vec2<i32>(var_0.b, var_0.b), vec2<i32>(0i, var_0.b)) >> (vec2<u32>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(546u, 31u)], 37550u), 31u)], 12u)], _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 1u), vec2<u32>(global0[_wgslsmith_index_u32(arg_1, 12u)], 50947u))) % vec2<u32>(32u)), (min(vec2<i32>(var_0.b, -49150i), vec2<i32>(var_0.b, -41305i)) >> (min(vec2<u32>(var_0.a, global0[_wgslsmith_index_u32(65295u, 12u)]), u_input.a.yz) % vec2<u32>(32u))) & ~max(vec2<i32>(-7288i, -17417i), vec2<i32>(1i, var_0.b)));
    var_1 = abs(vec2<i32>(var_0.b & var_1.x, 0i));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -248f);
    let var_3 = _wgslsmith_clamp_i32(1i, var_0.b ^ var_0.b, _wgslsmith_mult_i32(countOneBits(_wgslsmith_mult_i32(var_0.b, var_0.b)), -_wgslsmith_dot_vec3_i32(vec3<i32>(-55602i, var_0.b, var_1.x), vec3<i32>(var_0.b, var_1.x, var_1.x))));
    return _wgslsmith_f_op_f32(abs(1274f));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: bool) -> Struct_4 {
    global3 = array<u32, 31>();
    let var_0 = 1338f;
    global3 = array<u32, 31>();
    var var_1 = vec2<bool>(true, true);
    var_1 = arg_1.b.b.zz;
    return Struct_4(~min(1i, -(~12393i)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0, -516f)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(vec4<u32>(20320u, 0u, u_input.c, 5463u), 4294967295u))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -611f))), _wgslsmith_f_op_f32(func_1(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, global3[_wgslsmith_index_u32(27486u, 31u)], 4294967295u, global3[_wgslsmith_index_u32(u_input.a.x, 31u)]), vec4<u32>(0u, u_input.b, u_input.d, 47254u))), ~firstTrailingBit(global3[_wgslsmith_index_u32(5961u, 31u)]))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1537f, 1128f)), _wgslsmith_f_op_f32(func_1(vec4<u32>(global0[_wgslsmith_index_u32(1u, 12u)], 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], 31u)], 1u), 1u)))))), Struct_2(Struct_1(_wgslsmith_f_op_f32(932f - _wgslsmith_f_op_f32(abs(-1218f))), vec3<bool>(select(true, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], 12u)], 31u)], 21u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 12u)], 21u)]), !global2[_wgslsmith_index_u32(4294967295u, 21u)], global2[_wgslsmith_index_u32(~38549u, 21u)]), true, u_input.a.yy), Struct_1(_wgslsmith_f_op_f32(-2505f - -220f), select(select(vec3<bool>(false, true, true), vec3<bool>(global2[_wgslsmith_index_u32(23667u, 21u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 12u)], 31u)], 21u)], false), vec3<bool>(global2[_wgslsmith_index_u32(8084u, 21u)], global2[_wgslsmith_index_u32(0u, 21u)], true)), select(vec3<bool>(true, true, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 31u)], 21u)]), vec3<bool>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(244u, 31u)], 31u)], 21u)], global2[_wgslsmith_index_u32(0u, 21u)], true), vec3<bool>(global2[_wgslsmith_index_u32(66810u, 21u)], global2[_wgslsmith_index_u32(47503u, 21u)], global2[_wgslsmith_index_u32(41418u, 21u)])), !vec3<bool>(true, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(61474u, 31u)], 21u)], global2[_wgslsmith_index_u32(8806u, 21u)])), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(648u, 12u)], 12u)], 31u)], 12u)] & 90018u, 21u)], vec2<u32>(0u, ~985u)), Struct_1(_wgslsmith_f_op_f32(-486f - -375f), vec3<bool>(global2[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(50491u, 12u)], 21u)], !global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 31u)], 21u)], true), !(!global2[_wgslsmith_index_u32(57257u, 21u)]), vec2<u32>(_wgslsmith_clamp_u32(64766u, 6977u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(226u, 12u)], 12u)]), ~1u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-379f, 1968f)) * _wgslsmith_div_vec2_f32(vec2<f32>(774f, 559f), vec2<f32>(1051f, 296f))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 700f)))))), global2[_wgslsmith_index_u32(func_2().a, 21u)]);
    global0 = array<u32, 12>();
    global1 = any(select(!(!select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 21u)], false, global2[_wgslsmith_index_u32(u_input.b, 21u)], false), vec4<bool>(false, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 31u)], 21u)], global2[_wgslsmith_index_u32(4294967295u, 21u)], global2[_wgslsmith_index_u32(0u, 21u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.c, 21u)], true, global2[_wgslsmith_index_u32(21224u, 21u)]))), select(select(select(vec4<bool>(true, global2[_wgslsmith_index_u32(2893u, 21u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(103392u, 12u)], 21u)], global2[_wgslsmith_index_u32(1u, 21u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(62067u, 21u)], true, global2[_wgslsmith_index_u32(u_input.d, 21u)]), vec4<bool>(true, true, global2[_wgslsmith_index_u32(u_input.c, 21u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 31u)], 21u)])), !vec4<bool>(true, false, false, global2[_wgslsmith_index_u32(9808u, 21u)]), !global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 31u)], 21u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 21u)] & global2[_wgslsmith_index_u32(u_input.d, 21u)], all(vec3<bool>(false, false, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(11785u, 31u)], 21u)])), true), global2[_wgslsmith_index_u32(1u, 21u)]), vec4<bool>(any(vec4<bool>(false, global2[_wgslsmith_index_u32(39653u, 21u)], false, true)), any(vec4<bool>(global2[_wgslsmith_index_u32(50980u, 21u)], false, global2[_wgslsmith_index_u32(97751u, 21u)], false)), false, any(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 21u)], false)))));
    var var_1 = var_0.b.x;
    let var_2 = !any(!(!(!vec3<bool>(false, false, global2[_wgslsmith_index_u32(0u, 21u)]))));
    var var_3 = !vec2<bool>(_wgslsmith_sub_i32(-25195i, var_0.a) > 19265i, global2[_wgslsmith_index_u32(max(u_input.c, _wgslsmith_dot_vec4_u32(select(vec4<u32>(15020u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8523u, 12u)], 12u)], 1u, global3[_wgslsmith_index_u32(93819u, 31u)]), vec4<u32>(1u, 4294967295u, 14197u, global0[_wgslsmith_index_u32(4294967295u, 12u)]), var_2), _wgslsmith_sub_vec4_u32(vec4<u32>(7509u, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(44399u, 12u)], 31u)], global0[_wgslsmith_index_u32(4294967295u, 12u)], global0[_wgslsmith_index_u32(59237u, 12u)]), vec4<u32>(1u, 101479u, 4294967295u, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(66016u, 12u)], 12u)], 31u)])))), 21u)]);
    var_1 = _wgslsmith_div_f32(227f, _wgslsmith_f_op_f32(-1f));
    let var_4 = -(~_wgslsmith_add_vec2_i32(~(-vec2<i32>(1i, 2147483647i)), countOneBits(~vec2<i32>(var_0.a, 1i))));
    let var_5 = 32132i;
    let x = u_input.a;
    s_output = StorageBuffer(abs(1i), vec4<i32>(abs(-2147483647i), _wgslsmith_mod_i32(_wgslsmith_div_i32(var_5, var_5), 3654i | var_5), 1i, var_4.x));
}

