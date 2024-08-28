struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
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

var<private> global0: array<vec3<bool>, 25> = array<vec3<bool>, 25>(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true));

var<private> global1: array<i32, 7> = array<i32, 7>(14256i, 1i, 0i, -1i, 15604i, 1i, -10727i);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: Struct_4) -> vec2<u32> {
    var var_0 = arg_2.a;
    var var_1 = select(firstTrailingBit(-(var_0.b.b ^ var_0.b.b)) > abs(22553i), true, arg_0.x);
    let var_2 = arg_2.b << (_wgslsmith_add_u32(~abs(firstLeadingBit(75175u)), _wgslsmith_sub_u32(~arg_2.b, _wgslsmith_clamp_u32(0u, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, arg_2.b, arg_2.b), vec4<u32>(arg_2.b, arg_2.b, 61964u, arg_2.b))))) % 32u);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(442f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.a.x - _wgslsmith_f_op_f32(abs(189f))))));
    var var_4 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3)), var_3)), arg_2.a.b);
    return reverseBits(vec2<u32>(~(~_wgslsmith_mod_u32(36113u, arg_2.b)), 25444u));
}

fn func_2(arg_0: bool) -> Struct_2 {
    global0 = array<vec3<bool>, 25>();
    global1 = array<i32, 7>();
    var var_0 = max(vec2<u32>(~(~firstTrailingBit(37523u)), _wgslsmith_sub_u32(_wgslsmith_div_u32(4294967295u, _wgslsmith_div_u32(11414u, 9836u)), 4162u)), _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), ~func_3(vec3<bool>(false, true, true), vec4<bool>(arg_0, arg_0, true, arg_0), Struct_4(Struct_2(-889f, Struct_1(vec4<f32>(3219f, 1000f, -282f, 819f), u_input.a.x)), 40458u, Struct_1(vec4<f32>(-856f, 117f, -249f, -344f), 43120i), Struct_3(vec3<i32>(u_input.a.x, -1i, global1[_wgslsmith_index_u32(4294967295u, 7u)]))))), vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(1u, 61918u), firstTrailingBit(22405u)), 35628u)));
    let var_1 = Struct_3(abs(countOneBits(vec3<i32>(-1i, u_input.a.x, u_input.a.x)) | (vec3<i32>(global1[_wgslsmith_index_u32(1u, 7u)], 37589i, u_input.a.x) << (vec3<u32>(1u, var_0.x, 1u) % vec3<u32>(32u)))) >> (abs(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, 28848u, var_0.x), vec3<u32>(var_0.x, 25353u, var_0.x)), firstLeadingBit(vec3<u32>(4294967295u, 1u, var_0.x)))) % vec3<u32>(32u)));
    let var_2 = _wgslsmith_sub_vec2_u32(firstLeadingBit(abs(~vec2<u32>(1u, 0u))), ~vec2<u32>(~(~35097u), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<u32>(10938u, 4294967295u, 10652u, 23477u)), 13625u)));
    return Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(634f + -446f) + _wgslsmith_div_f32(-1739f, -2257f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1016f))), _wgslsmith_f_op_f32(step(-915f, _wgslsmith_f_op_f32(floor(-281f))))))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2299f, 1249f, -1464f, 1052f))), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(0u, 7u)], var_1.a.x, 0i), vec4<i32>(35656i, -27703i, 1i, -3012i) & vec4<i32>(0i, 81265i, var_1.a.x, -1i)), 1i)));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: i32, arg_3: vec4<u32>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(arg_1.x + arg_1.x);
    var var_1 = func_2(any(select(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0.x, arg_0.x), 25u)], select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), select(global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(69573u, 25u)], global0[_wgslsmith_index_u32(arg_0.x, 25u)])), select(select(global0[_wgslsmith_index_u32(arg_3.x, 25u)], vec3<bool>(true, false, false), vec3<bool>(true, false, false)), vec3<bool>(false, false, false), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_0.x, 104214u, 1u), 25u)]))));
    var var_2 = (true & select(true, any(select(vec2<bool>(false, true), vec2<bool>(false, false), true)), select(true, arg_3.x <= 1u, true))) | !any(vec2<bool>(true, true));
    var var_3 = _wgslsmith_add_u32(~(_wgslsmith_add_u32(arg_3.x, arg_3.x >> (22737u % 32u)) | (~arg_3.x | ~arg_0.x)), _wgslsmith_add_u32(9068u, _wgslsmith_mult_u32(1u, arg_0.x)));
    var var_4 = arg_1;
    return Struct_4(func_2(all(vec4<bool>(true, true, true, true))), ~arg_0.x, Struct_1(var_1.b.a, _wgslsmith_div_i32(0i, arg_2)), Struct_3(~(~_wgslsmith_add_vec3_i32(vec3<i32>(0i, arg_2, 9805i), vec3<i32>(-1i, u_input.a.x, global1[_wgslsmith_index_u32(arg_0.x, 7u)])))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec4<u32>) -> u32 {
    let var_0 = abs(arg_0.b);
    let var_1 = (-785f == arg_0.a.a) || select(any(select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, true), true), true)), all(vec4<bool>(true, true, true, true)), select(any(!global0[_wgslsmith_index_u32(10004u, 25u)]), all(vec2<bool>(true, false)), any(global0[_wgslsmith_index_u32(~25445u, 25u)])));
    return _wgslsmith_div_u32(55927u, ~firstLeadingBit(29568u) | var_0);
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: vec3<i32>, arg_3: Struct_4) -> Struct_3 {
    let var_0 = func_1(max(firstLeadingBit(~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1, arg_1, arg_3.b, 36985u), vec4<u32>(43330u, 1u, 1u, arg_1))), ~vec4<u32>(func_1(vec4<u32>(arg_1, arg_1, 4268u, 52647u), arg_3.c.a.yx, arg_0, vec4<u32>(arg_1, arg_3.b, arg_1, arg_3.b)).b, _wgslsmith_mod_u32(46392u, arg_1), arg_3.b, ~1u)), _wgslsmith_f_op_vec2_f32(-arg_3.c.a.zx), func_2(false).b.b, vec4<u32>(countOneBits(~_wgslsmith_sub_u32(0u, arg_1)), abs(firstTrailingBit(1u)), arg_3.b, 5508u)).d;
    let var_1 = !select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), arg_3.b >= arg_1), vec2<bool>(true, true)), !vec2<bool>(true, all(vec2<bool>(false, false))), vec2<bool>(true, true));
    var var_2 = ~(-14720i);
    var var_3 = 0u;
    let var_4 = arg_3.c.a.x;
    return Struct_3(_wgslsmith_add_vec3_i32(-abs(~arg_2), max(_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(arg_2, vec3<i32>(arg_0, -5918i, -2147483647i)), var_0.a), -(vec3<i32>(arg_3.c.b, global1[_wgslsmith_index_u32(31197u, 7u)], arg_0) & arg_3.d.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 33697u;
    var var_1 = func_5(_wgslsmith_add_i32(abs(-2147483647i | (u_input.a.x & 0i)), i32(-1i) * -27361i), func_4(func_1(vec4<u32>(_wgslsmith_mult_u32(var_0, var_0), 1u, var_0, _wgslsmith_div_u32(4294967295u, var_0)), vec2<f32>(1f, 1f), global1[_wgslsmith_index_u32(reverseBits(var_0) | countOneBits(var_0), 7u)], abs(~vec4<u32>(1u, 39061u, 1u, var_0))), func_2(select(false, false, true) & true), select(abs(vec4<u32>(var_0, var_0, var_0, 1u)), firstLeadingBit(vec4<u32>(1u, var_0, 4294967295u, var_0)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), true)) ^ ~(~vec4<u32>(76774u, var_0, var_0, var_0))), vec3<i32>(7784i, ~global1[_wgslsmith_index_u32(24607u, 7u)] << (var_0 % 32u), global1[_wgslsmith_index_u32(~16969u, 7u)]) ^ _wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(u_input.a.x, global1[_wgslsmith_index_u32(83614u, 7u)], u_input.a.x)), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(var_0, 7u)], u_input.a.x, -82987i), vec3<i32>(global1[_wgslsmith_index_u32(var_0, 7u)], global1[_wgslsmith_index_u32(var_0, 7u)], global1[_wgslsmith_index_u32(17974u, 7u)])), vec3<i32>(38081i, u_input.a.x, 37077i))), Struct_4(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-475f - 659f)), func_1(~vec4<u32>(3224u, 37771u, 24079u, var_0), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-931f, -2562f), vec2<f32>(654f, -1743f), vec2<bool>(false, true))), -20895i, vec4<u32>(4294967295u, var_0, 48631u, 0u)).a.b), 0u, func_2(any(select(vec2<bool>(true, false), vec2<bool>(false, false), true))).b, func_1(_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(48623u, var_0, var_0, 10441u)), countOneBits(vec4<u32>(1u, var_0, 4294967295u, 0u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-575f, 871f) * vec2<f32>(-1534f, 497f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(643f, -294f))), -16048i, countOneBits(vec4<u32>(4294967295u, var_0, var_0, 43083u) << (vec4<u32>(639u, 12625u, 22878u, 16342u) % vec4<u32>(32u)))).d));
    global0 = array<vec3<bool>, 25>();
    var var_2 = vec4<i32>(~(0i ^ ~u_input.a.x), _wgslsmith_mult_i32(_wgslsmith_sub_i32(1i, max(u_input.a.x, u_input.a.x)), _wgslsmith_dot_vec2_i32(max(vec2<i32>(1i, 48900i), u_input.a), abs(vec2<i32>(u_input.a.x, u_input.a.x)))) & -49914i, _wgslsmith_dot_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(-557i, -1i, -40110i, 2147483647i), vec4<i32>(global1[_wgslsmith_index_u32(var_0, 7u)], u_input.a.x, u_input.a.x, var_1.a.x)), -max(abs(vec4<i32>(0i, 19008i, global1[_wgslsmith_index_u32(61956u, 7u)], global1[_wgslsmith_index_u32(var_0, 7u)])), vec4<i32>(u_input.a.x, var_1.a.x, var_1.a.x, -2147483647i) & vec4<i32>(global1[_wgslsmith_index_u32(var_0, 7u)], -10631i, -25809i, u_input.a.x))), 1i);
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_div_f32(2835f, 834f)), _wgslsmith_f_op_f32(abs(-297f))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

