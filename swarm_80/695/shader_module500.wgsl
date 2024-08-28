struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(true, i32(-2147483648), 780f, vec3<f32>(-187f, 1132f, -769f)));

var<private> global1: bool;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_1) -> vec2<f32> {
    let var_0 = _wgslsmith_sub_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.b, 10782i, _wgslsmith_mod_i32(-16245i, arg_0.b)), vec3<i32>(19615i, arg_0.b, -33773i) << (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 4294967295u, u_input.a)) % vec3<u32>(32u))), vec3<i32>(~(-arg_0.b & ~2147483647i), -abs(2147483647i), ~(i32(-1i) * -8688i)));
    var var_1 = ~vec3<u32>(reverseBits(37487u), abs(~0u), _wgslsmith_add_u32(~(~9113u), 13352u));
    global1 = true;
    var var_2 = !any(!(!(!vec2<bool>(arg_0.a, false))));
    let var_3 = _wgslsmith_f_op_f32(trunc(arg_0.d.x));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.c, 376f), vec2<f32>(-1000f, arg_0.d.x))) - _wgslsmith_f_op_vec2_f32(arg_0.d.xx - _wgslsmith_f_op_vec2_f32(ceil(arg_0.d.xz)))))));
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> bool {
    var var_0 = abs(vec4<i32>(max(arg_1.b >> (u_input.a % 32u), i32(-1i) * -11741i), countOneBits(abs(-3932i)), 2147483647i, ~arg_1.b)) ^ vec4<i32>(arg_1.b, -arg_1.b, arg_1.b, -1i);
    var var_1 = arg_1;
    let var_2 = !select(!(!(!vec3<bool>(arg_1.a, true, var_1.a))), !vec3<bool>(var_1.a, false, !arg_1.a), vec3<bool>(arg_1.a, _wgslsmith_f_op_f32(round(arg_1.c)) == _wgslsmith_f_op_f32(max(var_1.c, var_1.d.x)), arg_0));
    var var_3 = arg_1;
    var var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(var_3.d.x, var_1.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c, 799f) * var_3.d.yz)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.d.x, 798f), arg_1.d.yy, vec2<bool>(true, true))))), select(var_2.zz, select(var_2.zy, var_2.yy, arg_0), vec2<bool>(true, true)))) - _wgslsmith_f_op_vec2_f32(func_3(Struct_1(var_1.a || var_2.x, var_3.b, -124f, var_1.d)))), _wgslsmith_div_vec2_f32(vec2<f32>(-1645f, _wgslsmith_f_op_f32(1342f + _wgslsmith_div_f32(1851f, var_3.c))), var_1.d.xz));
    return false;
}

fn func_1(arg_0: f32) -> Struct_1 {
    global0 = array<Struct_1, 1>();
    var var_0 = true;
    var var_1 = global0[_wgslsmith_index_u32(u_input.a, 1u)];
    let var_2 = var_1.a;
    let var_3 = Struct_1(all(!vec4<bool>(all(vec3<bool>(var_1.a, true, var_1.a)), u_input.a != u_input.a, true, func_2(true, Struct_1(true, -43664i, 800f, var_1.d)))), _wgslsmith_clamp_i32(countOneBits(var_1.b), 0i, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-44611i, var_1.b, var_1.b, -4113i), vec4<i32>(var_1.b, var_1.b, var_1.b, 36431i)), vec4<i32>(var_1.b, var_1.b, var_1.b, var_1.b)) << (~_wgslsmith_dot_vec2_u32(vec2<u32>(8960u, u_input.a), vec2<u32>(u_input.a, 30693u)) % 32u)), var_1.d.x, _wgslsmith_div_vec3_f32(var_1.d, _wgslsmith_f_op_vec3_f32(var_1.d * var_1.d)));
    return Struct_1(false, -(i32(-1i) * -1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), var_1.d.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(350f, var_3.c, 1156f)) + vec3<f32>(-380f, var_3.d.x, 532f))) + var_3.d));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<bool>, arg_3: vec3<f32>) -> f32 {
    let var_0 = !vec3<bool>(func_2(arg_0.a, Struct_1(u_input.a < u_input.a, _wgslsmith_mult_i32(39762i, 13199i), _wgslsmith_f_op_f32(round(arg_1.x)), _wgslsmith_f_op_vec3_f32(arg_0.d * vec3<f32>(308f, arg_3.x, 987f)))), all(select(vec4<bool>(true, arg_2.x, false, arg_0.a), select(vec4<bool>(true, true, arg_0.a, arg_2.x), arg_2, arg_0.a), false)), !arg_0.a);
    let var_1 = global0[_wgslsmith_index_u32(min(firstLeadingBit(1u >> (max(u_input.a, 7793u) % 32u)), 4294967295u), 1u)];
    var var_2 = arg_1.xy;
    var var_3 = Struct_1(var_1.a, arg_0.b, 1107f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.x, var_1.c, -1030f))))))));
    var var_4 = func_1(arg_1.x);
    return 212f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(346f))), -694f);
    global0 = array<Struct_1, 1>();
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_4(func_1(_wgslsmith_div_f32(var_0.x, var_0.x)), vec4<f32>(_wgslsmith_f_op_f32(max(-1728f, var_0.x)), -903f, _wgslsmith_f_op_f32(-var_0.x), var_0.x), vec4<bool>(true, true, true, true), vec3<f32>(147f, -670f, _wgslsmith_f_op_f32(var_0.x + var_0.x)))), 399f, _wgslsmith_f_op_f32(func_4(func_1(-398f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -1325f, -562f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1513f, var_0.x, var_0.x, 801f))), vec4<bool>(func_1(var_0.x).a, true, true, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-803f, -700f, var_0.x))))) + vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), 1441f));
    var var_2 = 53365u;
    let var_3 = global0[_wgslsmith_index_u32(0u >> (0u % 32u), 1u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(var_3.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(250f, 990f, var_1.x)))), vec3<bool>(any(vec2<bool>(var_3.a, true)), func_2(var_3.a, global0[_wgslsmith_index_u32(6822u, 1u)]), var_3.a))), _wgslsmith_dot_vec3_i32(vec3<i32>(abs(max(var_3.b, 2147483647i)), 21285i, 0i), ~_wgslsmith_mult_vec3_i32(vec3<i32>(-60099i, var_3.b, var_3.b) & vec3<i32>(var_3.b, 0i, var_3.b), firstLeadingBit(vec3<i32>(-2147483647i, -19623i, -8903i)))), reverseBits(select(vec2<i32>(1i, 1i), reverseBits(vec2<i32>(var_3.b, -29399i)), select(vec2<bool>(var_3.a, var_3.a), vec2<bool>(var_3.a, var_3.a), vec2<bool>(var_3.a, var_3.a))) ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(var_3.b, var_3.b) & vec2<i32>(var_3.b, var_3.b), ~vec2<i32>(-1i, -68739i), vec2<i32>(71794i, 21971i))), _wgslsmith_mult_vec3_u32(~firstLeadingBit(vec3<u32>(53291u, 51753u, 26945u)), min(max(vec3<u32>(u_input.a, 27902u, u_input.a), vec3<u32>(u_input.a, 22542u, u_input.a)), vec3<u32>(u_input.a, u_input.a, u_input.a))) & ~((vec3<u32>(45709u, u_input.a, 1u) << (vec3<u32>(u_input.a, 1u, u_input.a) % vec3<u32>(32u))) ^ _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(u_input.a, 55030u, u_input.a))));
}

