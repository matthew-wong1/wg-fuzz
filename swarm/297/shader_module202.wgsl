struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 32>;

var<private> global1: array<vec4<bool>, 27>;

var<private> global2: Struct_1 = Struct_1(vec4<i32>(-1i, 62571i, 1i, i32(-2147483648)), vec4<u32>(8563u, 54620u, 30098u, 15051u));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> i32 {
    global1 = array<vec4<bool>, 27>();
    global1 = array<vec4<bool>, 27>();
    var var_0 = -347f;
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(897f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-539f * -473f)), -2096f, -757f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1893f - -839f), 1101f, _wgslsmith_f_op_f32(-995f * -740f), -321f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(505f, -998f, 1000f, 515f)))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1328f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1557f), -857f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(187f, -995f, 400f, 396f)))))));
    let var_2 = select(select(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~4294967295u), abs(u_input.b), firstTrailingBit(global2.b.x)), 27u)], select(vec4<bool>(any(global1[_wgslsmith_index_u32(arg_2.b.x, 27u)]), arg_1.a.x <= u_input.a, any(vec2<bool>(false, false)), 25883u == arg_1.b.x), !(!global1[_wgslsmith_index_u32(arg_0.x, 27u)]), select(!global1[_wgslsmith_index_u32(23458u, 27u)], select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), global1[_wgslsmith_index_u32(arg_2.b.x, 27u)]), all(vec4<bool>(false, true, false, true)))), any(select(vec4<bool>(false, true, false, true), global1[_wgslsmith_index_u32(u_input.b, 27u)], false))), vec4<bool>(all(vec2<bool>(true, any(global1[_wgslsmith_index_u32(4294967295u, 27u)]))), select(true, true, select(true, true, false) | all(vec2<bool>(true, true))), true, any(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))))), select(!vec4<bool>(true, true, all(vec4<bool>(false, false, false, true)), true), vec4<bool>(true, !(var_1.x >= -1000f), true, true), global1[_wgslsmith_index_u32(u_input.b, 27u)]));
    return _wgslsmith_sub_i32(arg_3, ~_wgslsmith_sub_i32(-(i32(-1i) * -1i), ~(-26918i)));
}

fn func_2() -> Struct_1 {
    global2 = Struct_1(vec4<i32>(~(func_3(vec2<u32>(0u, global2.b.x), Struct_1(vec4<i32>(-37855i, 32418i, u_input.a, global2.a.x), vec4<u32>(65477u, u_input.b, 50770u, 47450u)), Struct_1(vec4<i32>(u_input.a, -48430i, -3510i, 55440i), global2.b), 0i) << (max(4294967295u, 1u) % 32u)), _wgslsmith_clamp_i32(-1i, _wgslsmith_dot_vec3_i32(global2.a.wyx >> (vec3<u32>(62210u, 0u, global2.b.x) % vec3<u32>(32u)), firstTrailingBit(global2.a.xzy)), abs(_wgslsmith_mult_i32(u_input.a, u_input.a))), abs(min(firstTrailingBit(-19218i), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(0i, 31647i)))), ~u_input.a), _wgslsmith_add_vec4_u32(global2.b, global2.b));
    let var_0 = select(select(vec2<bool>(all(vec2<bool>(true, true)), any(global1[_wgslsmith_index_u32(4294967295u, 27u)]) || true), vec2<bool>(any(vec2<bool>(true, true)), any(vec3<bool>(true, false, false))), vec2<bool>(true, true)), select(select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(false, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(false, true, true))), vec2<bool>(true, true)), vec2<bool>(_wgslsmith_mod_i32(2147483647i, -14376i) < u_input.a, all(vec3<bool>(true, true, true))), true), !select(vec2<bool>(true, true), vec2<bool>(true, true), true));
    var var_1 = _wgslsmith_mod_i32(u_input.a, _wgslsmith_sub_i32(2147483647i, 4284i)) > ~1i;
    var var_2 = abs(~_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), global2.a.zz) ^ ~(-(~global2.a.xw)));
    var var_3 = ~(vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(var_2.x, -2147483647i, u_input.a, var_2.x), global2.a), abs(~global2.a.x), 82966i, -1i | max(var_2.x, -15796i)) & global2.a);
    return Struct_1(reverseBits(vec4<i32>(func_3(~global2.b.yx, Struct_1(global2.a, global2.b), Struct_1(vec4<i32>(u_input.a, 7436i, -2147483647i, var_3.x), vec4<u32>(u_input.b, global2.b.x, 1u, u_input.b)), abs(0i)), firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 25626i, -2147483647i), global2.a.xwx)), -32761i, ~var_2.x)), select(global2.b, reverseBits(global2.b), all(var_0)));
}

fn func_1() -> Struct_1 {
    global1 = array<vec4<bool>, 27>();
    global2 = Struct_1((global2.a << (~global2.b % vec4<u32>(32u))) & global2.a, _wgslsmith_add_vec4_u32(min(min(~global2.b, vec4<u32>(67806u, global2.b.x, u_input.b, 92842u)), _wgslsmith_clamp_vec4_u32(max(vec4<u32>(u_input.b, 0u, 0u, u_input.b), vec4<u32>(global2.b.x, global2.b.x, 4294967295u, u_input.b)), _wgslsmith_clamp_vec4_u32(global2.b, vec4<u32>(1u, 11940u, 46616u, 54574u), global2.b), select(global2.b, global2.b, false))), global2.b ^ global2.b));
    var var_0 = global2.b.xw;
    let var_1 = func_2();
    let var_2 = !(!select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), _wgslsmith_dot_vec4_i32(global2.a, var_1.a) > ~var_1.a.x));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(-global2.a, vec4<u32>(20767u, 1u, 53770u, reverseBits(~_wgslsmith_sub_u32(u_input.b, 4294967295u))));
    let var_0 = func_1();
    let var_1 = func_2();
    var var_2 = u_input.b;
    var var_3 = func_2().b.wy;
    let var_4 = _wgslsmith_dot_vec3_i32(vec3<i32>(-18993i, 2147483647i, reverseBits(~(-global2.a.x))), select(_wgslsmith_add_vec3_i32(global0[_wgslsmith_index_u32(1u, 32u)] >> ((vec3<u32>(global2.b.x, 5657u, global2.b.x) >> (var_1.b.yyz % vec3<u32>(32u))) % vec3<u32>(32u)), select(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, global2.a.x, global2.a.x), global0[_wgslsmith_index_u32(11336u, 32u)]), vec3<i32>(var_1.a.x, global2.a.x, 0i), vec3<bool>(true, true, true))), global2.a.xyw, !all(select(global1[_wgslsmith_index_u32(var_0.b.x, 27u)], global1[_wgslsmith_index_u32(var_0.b.x, 27u)], global1[_wgslsmith_index_u32(7910u, 27u)]))));
    var var_5 = true;
    var var_6 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1769f, 211f), vec2<f32>(1522f, -1333f)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, -984f)))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 863f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(min(~var_1.b.yyw, vec3<u32>(var_3.x, ~var_1.b.x, 63796u)) ^ firstTrailingBit(var_0.b.yyy), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_6.x, var_6.x) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_6.x, 430f))))) + vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(var_6.x)))), var_6.x)));
}

