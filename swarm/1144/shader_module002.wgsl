struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
    d: bool,
    e: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec2<bool>,
    d: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_2,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(606f, -1000f, 1000f);

var<private> global1: array<Struct_3, 21>;

var<private> global2: vec2<f32> = vec2<f32>(707f, 1000f);

var<private> global3: vec2<u32> = vec2<u32>(16574u, 10571u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: u32) -> bool {
    global1 = array<Struct_3, 21>();
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(241f, 1494f, 640f))))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, 598f, -733f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-995f, global0.x, global2.x)))))));
    var var_2 = u_input.d;
    global2 = var_1.yz;
    return u_input.a.x == -29625i;
}

fn func_4(arg_0: vec3<f32>, arg_1: u32) -> i32 {
    return _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.a, -u_input.a), vec4<i32>(_wgslsmith_sub_i32(~u_input.a.x, u_input.b), _wgslsmith_add_i32(-_wgslsmith_mod_i32(u_input.b, -1i), abs(u_input.b)), _wgslsmith_dot_vec4_i32(select(reverseBits(vec4<i32>(u_input.b, -2071i, u_input.b, u_input.b)), u_input.a & u_input.a, select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), true)), max(~u_input.a, -u_input.a)), 0i));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: vec2<u32>) -> vec3<bool> {
    var var_0 = firstLeadingBit(-vec3<i32>(reverseBits(arg_0.x), 0i, ~(-1i)));
    var var_1 = arg_0.x;
    var var_2 = Struct_2(select(_wgslsmith_mult_i32(_wgslsmith_mult_i32(_wgslsmith_add_i32(var_0.x, 55666i), _wgslsmith_div_i32(var_0.x, arg_1.x)), -arg_0.x), -var_0.x, true), abs(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, -304f) + vec3<f32>(-401f, 2431f, 636f)) + vec3<f32>(global2.x, 642f, global0.x)), select(~8399u, global3.x, func_3(global3.x, arg_2.x)))), vec2<bool>(true, true), ~global3.x);
    var var_3 = Struct_4(Struct_1(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(13270u, u_input.d.x, global3.x, 49825u)), ~vec4<u32>(1u, global3.x, 0u, arg_2.x) << (~vec4<u32>(u_input.c.x, global3.x, 4294967295u, 4294967295u) % vec4<u32>(32u))), 4294967295u, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(828f)))), true, select(!(!var_2.c), !vec2<bool>(var_2.c.x, var_2.c.x), true)), Struct_3(!(!(!vec2<bool>(var_2.c.x, var_2.c.x))), vec3<u32>(_wgslsmith_add_u32(var_2.d, abs(1u)), ~1u, u_input.d.x), Struct_1(_wgslsmith_add_u32(global3.x, 35120u ^ u_input.d.x), var_2.d, _wgslsmith_f_op_f32(ceil(1000f)), false, vec2<bool>(110901u < global3.x, any(vec2<bool>(false, var_2.c.x)))), Struct_2(-66726i, 0i, var_2.c, global3.x), vec3<bool>(!(!var_2.c.x), var_2.c.x, var_2.c.x)));
    let var_4 = _wgslsmith_clamp_vec2_u32(firstTrailingBit(arg_2), _wgslsmith_div_vec2_u32(vec2<u32>(~32869u, select(~u_input.c.x, ~10083u, false)), vec2<u32>(global3.x, ~(~44036u))), vec2<u32>(_wgslsmith_div_u32(reverseBits(u_input.d.x), ~var_2.d) ^ u_input.c.x, 1u));
    return vec3<bool>(all(!select(var_3.b.e, var_3.b.e, true)), all(select(!vec3<bool>(true, false, var_2.c.x), vec3<bool>(u_input.a.x <= 53551i, all(vec3<bool>(var_3.a.e.x, true, false)), true), select(var_3.b.e, var_3.b.e, false))), any(vec3<bool>(true, true, true)));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> bool {
    let var_0 = (_wgslsmith_mod_u32(u_input.d.x, ~(~global3.x)) >> (_wgslsmith_mult_u32(92245u, ~(~u_input.c.x)) % 32u)) & ~31160u;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.c, _wgslsmith_f_op_f32(-arg_1.c), arg_1.c), _wgslsmith_div_vec3_f32(vec3<f32>(global2.x, 185f, global2.x), _wgslsmith_div_vec3_f32(vec3<f32>(1000f, global2.x, -555f), vec3<f32>(global2.x, 2338f, global2.x))), select(func_2(u_input.a.zy, vec4<i32>(1i, 1i, u_input.a.x, u_input.b), u_input.d.yz), !vec3<bool>(arg_0.x, arg_1.e.x, arg_1.d), arg_0.x & arg_0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(700f, arg_1.c, global0.x)))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(581f, arg_1.c, 1807f))), vec3<f32>(global0.x, global0.x, -734f)))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, var_1.x, 1000f) * vec3<f32>(global0.x, -1000f, 1912f))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -528f), var_1.x, 1f))));
    let var_3 = vec2<i32>(_wgslsmith_dot_vec4_i32(firstLeadingBit(countOneBits(-vec4<i32>(1i, u_input.a.x, -33786i, u_input.a.x))), vec4<i32>(-2147483647i, -max(u_input.a.x, 1i), u_input.a.x, 33324i)), u_input.a.x);
    global3 = countOneBits(~((vec2<u32>(62913u, arg_1.a) & ~vec2<u32>(var_0, 4294967295u)) >> (vec2<u32>(9256u, 0u) % vec2<u32>(32u))));
    return true;
}

fn func_5(arg_0: vec2<bool>) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * global2.x)), -899f, arg_0.x)))) - -171f);
    global3 = u_input.d.zz;
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.yz + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0.x - -923f), -207f) + vec2<f32>(_wgslsmith_f_op_f32(max(global2.x, global0.x)), _wgslsmith_f_op_f32(trunc(global2.x))))));
    let var_1 = arg_0;
    let var_2 = -22445i;
    return ~(~countOneBits(vec2<u32>(_wgslsmith_mult_u32(global3.x, 4294967295u), ~u_input.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~(~func_5(vec2<bool>(func_1(vec2<bool>(false, false), Struct_1(u_input.d.x, global3.x, -812f, true, vec2<bool>(true, false))), true)));
    global3 = vec2<u32>(_wgslsmith_add_u32(~countOneBits(~global3.x), abs(~(u_input.d.x ^ u_input.c.x))), ~_wgslsmith_dot_vec2_u32(~(vec2<u32>(u_input.d.x, 4294967295u) | u_input.c.yy), ~vec2<u32>(u_input.d.x, global3.x)));
    var var_0 = global0.x;
    global1 = array<Struct_3, 21>();
    global1 = array<Struct_3, 21>();
    var var_1 = Struct_4(Struct_1(u_input.d.x, firstTrailingBit(1u), _wgslsmith_f_op_f32(f32(-1f) * -529f), global2.x < global2.x, vec2<bool>(any(vec2<bool>(true, false)), !(global0.x < 1000f))), global1[_wgslsmith_index_u32(30683u, 21u)]);
    var var_2 = _wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(44322u, global3.x, 46847u, 8156u), vec4<u32>(4294967295u, global3.x, u_input.d.x, 30759u)), 10642u) >> ((_wgslsmith_mod_u32(abs(~u_input.d.x), 2811u) ^ ~(~(~1u))) % 32u);
    let var_3 = var_1.a;
    global3 = ~(~vec2<u32>(0u, _wgslsmith_dot_vec3_u32(~u_input.d, vec3<u32>(u_input.c.x, 19759u, 34881u))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_u32(4294967295u, global3.x), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.x))), _wgslsmith_div_f32(1003f, _wgslsmith_f_op_f32(-451f + global2.x)), _wgslsmith_f_op_f32(step(-573f, _wgslsmith_f_op_f32(min(global2.x, var_3.c)))), _wgslsmith_f_op_f32(-var_1.b.c.c)))));
}

