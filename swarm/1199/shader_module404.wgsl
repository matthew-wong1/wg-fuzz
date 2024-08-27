struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<i32, 30>;

var<private> global2: u32 = 49875u;

var<private> global3: array<vec3<u32>, 1>;

var<private> global4: Struct_2 = Struct_2(vec2<u32>(6549u, 2665u), 2147483647i, -233f);

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: f32, arg_3: vec2<u32>) -> u32 {
    global4 = arg_1.d;
    var var_0 = arg_1.d;
    global4 = arg_1.d;
    let var_1 = arg_1.d;
    let var_2 = arg_1.d.a.x ^ abs(u_input.d);
    return _wgslsmith_mod_u32(~_wgslsmith_div_u32(~u_input.d, 65052u), countOneBits(global4.a.x)) ^ u_input.a;
}

fn func_2() -> Struct_2 {
    global4 = Struct_2(select(~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, 4294967295u, 29066u), vec4<u32>(99075u, 4294967295u, 855u, 9166u)), func_3(global4.a, Struct_3(Struct_1(false, u_input.e), vec3<bool>(true, false, false), 413f, Struct_2(global4.a, global1[_wgslsmith_index_u32(4294967295u, 30u)], global4.c)), -960f, vec2<u32>(u_input.d, global4.a.x))), ~global4.a, !vec2<bool>(false, any(vec2<bool>(true, true)))), _wgslsmith_mult_i32(_wgslsmith_mult_i32(global4.b, -select(-1i, global4.b, false)), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-6170i, -12288i, 10084i), firstLeadingBit(vec3<i32>(u_input.b, u_input.e, -6294i))), -countOneBits(vec3<i32>(global4.b, 2147483647i, 11986i)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    global4 = Struct_2(vec2<u32>(u_input.a, reverseBits(1u)), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, select(global1[_wgslsmith_index_u32(4294967295u, 30u)], 17952i, true), i32(-1i) * -1i, -global4.b), vec4<i32>(-global4.b, global1[_wgslsmith_index_u32(4294967295u, 30u)] << (30068u % 32u), ~(-35376i), global4.b)), abs(firstLeadingBit(u_input.c & global1[_wgslsmith_index_u32(u_input.d, 30u)]))), -1150f);
    let var_0 = select(!(!vec3<bool>(any(vec4<bool>(true, true, false, true)), 48523i > global1[_wgslsmith_index_u32(u_input.d, 30u)], true)), select(vec3<bool>(true, true, true), !(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true))), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false))), true);
    var var_1 = global0.x;
    var var_2 = _wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, 172u), 30u)], select(26048i, min(2147483647i, global4.b), true), 2064i | _wgslsmith_sub_i32(-2147483647i, global1[_wgslsmith_index_u32(0u, 30u)]), 1i)), vec4<i32>(global4.b, global1[_wgslsmith_index_u32(10336u, 30u)], _wgslsmith_clamp_i32(-71748i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(42162u, 30u)], 10647i, u_input.c), vec4<i32>(5297i, global1[_wgslsmith_index_u32(1u, 30u)], u_input.e, -36882i)), global1[_wgslsmith_index_u32(countOneBits(u_input.d), 30u)]), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-12993i, -1i), vec2<i32>(1i, global4.b)), 2147483647i)) << (~vec4<u32>(_wgslsmith_mod_u32(global4.a.x, 330u), ~0u, 21988u, 1u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(countOneBits(u_input.d), 30u)], _wgslsmith_sub_i32(0i, reverseBits(-1i)), -(~global4.b), -_wgslsmith_dot_vec2_i32(vec2<i32>(global4.b, -1i), vec2<i32>(-12105i, global1[_wgslsmith_index_u32(0u, 30u)]))), vec4<i32>(1i, global1[_wgslsmith_index_u32(global4.a.x >> (reverseBits(1u) % 32u), 30u)], _wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(u_input.d, 30u)], 26890i, -1882i, -68893i), vec4<i32>(-31249i, u_input.e, 2147483647i, u_input.e)) & _wgslsmith_add_i32(7767i, -2147483647i), -39780i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, global4.b, -1i, -2147483647i) << ((vec4<u32>(global4.a.x, global4.a.x, 5127u, u_input.d) & vec4<u32>(1u, 3078u, global4.a.x, 0u)) % vec4<u32>(32u)), ~(-vec4<i32>(-49113i, 1i, -1613i, -11793i)))));
    return Struct_2(global4.a, ~var_2.x, global0.x);
}

fn func_1() -> Struct_2 {
    var var_0 = global4.c;
    var var_1 = Struct_2(firstLeadingBit(firstLeadingBit(vec2<u32>(11578u, global4.a.x | 0u))), _wgslsmith_clamp_i32(-2147483647i | _wgslsmith_mod_i32(-28729i, global4.b), -36495i, -global1[_wgslsmith_index_u32(~7455u, 30u)]) << (select(global4.a.x, _wgslsmith_mult_u32(_wgslsmith_add_u32(66327u, 0u), ~u_input.a), all(select(vec2<bool>(false, false), vec2<bool>(false, false), false))) % 32u), 1f);
    global2 = 24018u;
    var var_2 = _wgslsmith_f_op_f32(-var_1.c);
    var var_3 = Struct_1(false, 1i);
    return func_2();
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: f32) -> vec3<i32> {
    var var_0 = func_1().a;
    let var_1 = Struct_3(Struct_1(any(vec4<bool>(arg_2.a, all(vec2<bool>(arg_2.a, arg_2.a)), false, true)), -(i32(-1i) * -21764i)), select(vec3<bool>(arg_2.a || arg_2.a, true, false), !select(vec3<bool>(arg_2.a, arg_2.a, false), select(vec3<bool>(arg_2.a, arg_2.a, true), vec3<bool>(false, arg_2.a, false), vec3<bool>(false, true, true)), vec3<bool>(arg_2.a, arg_2.a, arg_2.a)), (arg_2.b >= (i32(-1i) * -25694i)) | any(!vec4<bool>(arg_2.a, arg_2.a, arg_2.a, arg_2.a))), 1178f, Struct_2((global4.a << (global4.a % vec2<u32>(32u))) << (_wgslsmith_add_vec2_u32(select(arg_1.zy, global4.a, true), _wgslsmith_mult_vec2_u32(global4.a, vec2<u32>(u_input.a, 37782u))) % vec2<u32>(32u)), 0i, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.c)))));
    let var_2 = min(arg_0.a.x, ~firstLeadingBit(var_0.x) << (83169u % 32u));
    var var_3 = countOneBits(~(~(~arg_1)));
    var var_4 = !(!vec4<bool>(all(select(vec4<bool>(var_1.a.a, var_1.a.a, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, var_1.b.x, false, var_1.a.a))), arg_2.a, true, !(!var_1.b.x)));
    return abs(vec3<i32>(-9393i, -(~func_2().b), _wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, -26596i, arg_2.b, var_1.a.b), firstTrailingBit(max(vec4<i32>(24476i, global4.b, 21445i, global4.b), vec4<i32>(arg_2.b, arg_2.b, 31271i, u_input.e))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.yx;
    let var_1 = true;
    let var_2 = !var_1;
    global3 = array<vec3<u32>, 1>();
    let var_3 = func_4(func_1(), vec4<u32>(global4.a.x, 4294967295u, ~(~(~1u)), ~_wgslsmith_mod_u32(global4.a.x, abs(global4.a.x))), Struct_1(var_1 || all(vec3<bool>(var_2, false, true)), _wgslsmith_sub_i32(_wgslsmith_add_i32(firstTrailingBit(46730i), -1061i | global4.b), 64481i)), -178f);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-func_2().c), global0.x)), global4.c)) + _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-1680f)), -104f))))));
    let var_5 = global3[_wgslsmith_index_u32(41117u, 1u)];
    global3 = array<vec3<u32>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global4.c * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, var_0.x))), -247f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1686f, var_0.x, global4.c) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-487f, -589f, -1875f) * vec3<f32>(global4.c, var_0.x, -1798f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1055f, -2248f, global0.x)))))), 24075i, ~firstTrailingBit(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, -36856i), var_3.xz), -var_3.xy)));
}

