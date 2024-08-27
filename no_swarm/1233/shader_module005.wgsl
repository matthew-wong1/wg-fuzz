struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec3<f32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<f32>, 13>;

var<private> global2: array<vec2<i32>, 30> = array<vec2<i32>, 30>(vec2<i32>(-16429i, -35848i), vec2<i32>(-4549i, 49033i), vec2<i32>(18353i, 40121i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(79264i, i32(-2147483648)), vec2<i32>(46060i, 2147483647i), vec2<i32>(34441i, -22826i), vec2<i32>(-38824i, -1i), vec2<i32>(-28938i, -67792i), vec2<i32>(46777i, -14725i), vec2<i32>(1i, -1i), vec2<i32>(31771i, 2147483647i), vec2<i32>(-1i, 1i), vec2<i32>(-23920i, -35982i), vec2<i32>(-1i, 17671i), vec2<i32>(3816i, 0i), vec2<i32>(i32(-2147483648), -15949i), vec2<i32>(7252i, -1i), vec2<i32>(2147483647i, -1i), vec2<i32>(8617i, -6032i), vec2<i32>(i32(-2147483648), 47344i), vec2<i32>(0i, 2147483647i), vec2<i32>(5370i, 1i), vec2<i32>(1i, 0i), vec2<i32>(1i, 48857i), vec2<i32>(0i, 23975i), vec2<i32>(0i, -88339i), vec2<i32>(1i, 0i), vec2<i32>(-30223i, -56381i), vec2<i32>(-1i, -1i));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec4<bool> {
    global2 = array<vec2<i32>, 30>();
    var var_0 = 1u;
    global2 = array<vec2<i32>, 30>();
    global0 = arg_2;
    let var_1 = true;
    return vec4<bool>(false, arg_2.c, var_1, any(select(!(!vec4<bool>(false, arg_2.c, true, false)), !select(vec4<bool>(false, false, true, arg_1.c), vec4<bool>(arg_2.c, arg_3.c, global0.c, false), vec4<bool>(arg_0.b.c, arg_3.c, arg_2.c, arg_3.c)), !select(vec4<bool>(true, arg_1.c, arg_3.c, true), vec4<bool>(arg_2.c, false, arg_2.c, false), arg_0.b.c))));
}

fn func_2(arg_0: bool, arg_1: vec3<i32>) -> vec3<f32> {
    var var_0 = vec2<i32>(_wgslsmith_sub_i32(68601i, arg_1.x) | u_input.c, firstTrailingBit(-70410i));
    var var_1 = select(!select(vec4<bool>(true, all(vec2<bool>(arg_0, true)), 0u >= u_input.b.x, global0.c || arg_0), vec4<bool>(u_input.b.x <= 0u, !arg_0, all(vec3<bool>(arg_0, global0.c, true)), true), arg_0), select(func_3(Struct_2(_wgslsmith_f_op_vec3_f32(max(global0.b.xxw, global1[_wgslsmith_index_u32(17523u, 13u)])), Struct_1(global0.a, vec4<f32>(global0.b.x, global0.b.x, -276f, global0.b.x), true), global1[_wgslsmith_index_u32(~u_input.b.x, 13u)], global0.b.x), Struct_1(-1i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, -734f, 128f, -1190f)), true), Struct_1(u_input.c, vec4<f32>(-1806f, global0.b.x, 1267f, global0.b.x), global0.c), Struct_1(global0.a | -2147483647i, _wgslsmith_f_op_vec4_f32(-global0.b), true)), vec4<bool>(arg_0, false && any(vec2<bool>(true, false)), any(select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, false), vec2<bool>(false, true))), func_3(Struct_2(vec3<f32>(402f, 299f, global0.b.x), Struct_1(global0.a, global0.b, true), global1[_wgslsmith_index_u32(u_input.b.x, 13u)], -117f), Struct_1(u_input.a, vec4<f32>(global0.b.x, 795f, 421f, -1142f), global0.c), Struct_1(u_input.a, vec4<f32>(global0.b.x, -618f, global0.b.x, 1000f), arg_0), Struct_1(arg_1.x, global0.b, arg_0)).x), arg_0), select(!(!(!vec4<bool>(arg_0, false, true, false))), func_3(Struct_2(vec3<f32>(global0.b.x, 1096f, -974f), Struct_1(var_0.x, vec4<f32>(global0.b.x, -235f, 1284f, global0.b.x), global0.c), _wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(19443u, 13u)] * global0.b.zyy), -831f), Struct_1(1i, vec4<f32>(global0.b.x, global0.b.x, -679f, global0.b.x), global0.c), Struct_1(1i, vec4<f32>(global0.b.x, 1626f, 404f, global0.b.x), !arg_0), Struct_1(u_input.a, _wgslsmith_div_vec4_f32(global0.b, vec4<f32>(global0.b.x, -670f, -622f, global0.b.x)), all(vec3<bool>(false, true, arg_0)))), false | arg_0));
    var var_2 = Struct_2(global1[_wgslsmith_index_u32(countOneBits(u_input.b.x) << (_wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(15443u, u_input.b.x, u_input.b.x, 0u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), ~vec4<u32>(u_input.b.x, 28791u, u_input.b.x, u_input.b.x) & ~vec4<u32>(u_input.b.x, u_input.b.x, 23327u, u_input.b.x)) % 32u), 13u)], Struct_1(_wgslsmith_mod_i32(19239i, ~abs(-33941i)), vec4<f32>(global0.b.x, _wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(step(-1000f, 246f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) + _wgslsmith_div_f32(423f, global0.b.x))), ~_wgslsmith_mult_i32(arg_1.x, 29530i) < _wgslsmith_clamp_i32(arg_1.x & -1i, var_0.x, -9918i)), _wgslsmith_div_vec3_f32(global0.b.xzy, vec3<f32>(_wgslsmith_f_op_f32(step(-845f, _wgslsmith_f_op_f32(-global0.b.x))), -246f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) + -813f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-687f, 821f)), global0.b.x)));
    let var_3 = vec3<i32>(1i, _wgslsmith_div_i32(~reverseBits(_wgslsmith_clamp_i32(var_0.x, u_input.a, -19302i)), 1i), -var_2.b.a);
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -1255f);
    return _wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 13u)]);
}

fn func_1(arg_0: vec4<i32>, arg_1: u32, arg_2: vec3<bool>, arg_3: bool) -> Struct_1 {
    let var_0 = arg_2.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, 1845f, 1000f)), _wgslsmith_f_op_vec3_f32(func_2(global0.c, arg_0.wwy))))))));
    var var_2 = vec4<bool>(!(~(~u_input.a) > _wgslsmith_sub_i32(34371i, u_input.a)), true, !(true || global0.c), true);
    var_2 = func_3(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f + global0.b.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.x + var_1.x), var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), Struct_1(~global0.a, vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(var_1.x - -1290f), _wgslsmith_f_op_f32(var_1.x - var_1.x)), false), _wgslsmith_f_op_vec3_f32(global0.b.wyw * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.b.x, -640f, 621f))))), var_1.x), Struct_1(countOneBits(1i << (u_input.b.x % 32u)), _wgslsmith_f_op_vec4_f32(global0.b - _wgslsmith_f_op_vec4_f32(-global0.b)), arg_3), Struct_1(countOneBits(2147483647i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.b.x - var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -179f), _wgslsmith_f_op_f32(floor(global0.b.x)), _wgslsmith_f_op_f32(-global0.b.x))), true), Struct_1(-1i, global0.b, -1000f <= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x)))));
    var var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-106f, var_1.x, _wgslsmith_f_op_vec3_f32(func_2(arg_1 > 1u, arg_0.zxw)).x)), Struct_1(u_input.c, _wgslsmith_f_op_vec4_f32(-global0.b), !(true & arg_2.x) || (u_input.a == 2147483647i)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(min(global0.b.x, global0.b.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(global1[_wgslsmith_index_u32(arg_1, 13u)]))))), -531f);
    return Struct_1(arg_0.x, _wgslsmith_div_vec4_f32(vec4<f32>(global0.b.x, _wgslsmith_f_op_f32(311f + -180f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * global0.b.x)), var_1.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.b.b.x, -547f, var_3.b.b.x, 709f) - var_3.b.b))) * global0.b)), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-((_wgslsmith_mult_vec4_i32(vec4<i32>(43490i, u_input.a, 17881i, u_input.a), vec4<i32>(2147483647i, -1i, global0.a, u_input.c)) & select(vec4<i32>(global0.a, -28008i, u_input.a, u_input.c), vec4<i32>(1i, -1i, 1i, -2147483647i), vec4<bool>(global0.c, false, global0.c, false))) | ((vec4<i32>(global0.a, u_input.a, 74315i, global0.a) >> (vec4<u32>(u_input.b.x, 0u, 4294967295u, 26375u) % vec4<u32>(32u))) ^ vec4<i32>(global0.a, global0.a, -15759i, u_input.c))), u_input.b.x, !select(vec3<bool>(all(vec2<bool>(true, global0.c)), true, false), !select(vec3<bool>(false, false, global0.c), vec3<bool>(true, true, global0.c), vec3<bool>(false, false, global0.c)), select(vec3<bool>(true, global0.c, true), !vec3<bool>(global0.c, false, global0.c), select(vec3<bool>(global0.c, false, global0.c), vec3<bool>(true, global0.c, global0.c), false))), all(!select(select(vec2<bool>(false, global0.c), vec2<bool>(false, true), global0.c), !vec2<bool>(global0.c, true), true)));
    let var_1 = Struct_2(vec3<f32>(523f, -672f, global0.b.x), var_0, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.b.wxx)))), _wgslsmith_f_op_vec3_f32(func_2(true, _wgslsmith_mod_vec3_i32(vec3<i32>(~u_input.c, var_0.a << (50236u % 32u), _wgslsmith_div_i32(1i, var_0.a)), select(vec3<i32>(u_input.a, 1i, global0.a), vec3<i32>(var_0.a, global0.a, 2147483647i), false) | ~vec3<i32>(13889i, 219i, u_input.c)))).x);
    global2 = array<vec2<i32>, 30>();
    var var_2 = _wgslsmith_div_i32(abs(global0.a), 24814i);
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_2(!all(!vec2<bool>(false, global0.c)), abs(vec3<i32>(-4112i, var_0.a, 1i) ^ ~vec3<i32>(var_0.a, var_0.a, var_0.a)))).x, _wgslsmith_f_op_f32(global0.b.x * var_1.d));
    let var_4 = -_wgslsmith_div_i32(~var_0.a, -51133i);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(global0.a), _wgslsmith_mod_vec4_i32(vec4<i32>(-var_1.b.a, ~var_1.b.a, abs(var_0.a), _wgslsmith_mod_i32(6987i, 19823i)), vec4<i32>(_wgslsmith_sub_i32(var_4, var_1.b.a), global0.a, _wgslsmith_add_i32(1i, 42531i), u_input.c >> (u_input.b.x % 32u))) ^ _wgslsmith_clamp_vec4_i32(-vec4<i32>(var_0.a, var_1.b.a, 1i, var_0.a), vec4<i32>(~u_input.a, global0.a, -var_4, ~0i), ~(vec4<i32>(2147483647i, 23646i, var_0.a, -2147483647i) & vec4<i32>(2147483647i, global0.a, 25540i, u_input.c))), ~_wgslsmith_mult_u32(abs(_wgslsmith_mod_u32(4294967295u, u_input.b.x)), 16503u));
}

