struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: bool,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<i32>;

var<private> global2: array<vec3<f32>, 31>;

var<private> global3: u32 = 8994u;

var<private> global4: Struct_2 = Struct_2(vec3<i32>(2147483647i, -504i, 5941i));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec3<bool> {
    global1 = _wgslsmith_clamp_vec4_i32(max(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, 2147483647i), vec2<i32>(50577i, arg_1.a.x)), select(u_input.b, 5713i, arg_1.b), u_input.c, 7350i), ~countOneBits(vec4<i32>(u_input.c, 11120i, arg_1.a.x, arg_1.a.x))) >> (~vec4<u32>(_wgslsmith_mod_u32(u_input.e.x, 28782u), 4294967295u, 21733u, ~4294967295u) % vec4<u32>(32u)), max(u_input.a, _wgslsmith_mult_vec4_i32(vec4<i32>(global4.a.x, 1i, global4.a.x, u_input.a.x) ^ u_input.a, firstLeadingBit(u_input.a)) << (min(~vec4<u32>(10895u, u_input.e.x, u_input.e.x, 6497u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e.x, u_input.e.x, 5875u, 4294967295u), vec4<u32>(u_input.e.x, 0u, u_input.e.x, u_input.e.x))) % vec4<u32>(32u))), ~vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(0i, -36720i, -50864i), _wgslsmith_dot_vec4_i32(arg_1.a, arg_1.a)), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.x, global1.x, global1.x, 13952i), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.a.x, 0i, global1.x, -11398i), arg_1.a)), _wgslsmith_div_i32(_wgslsmith_mult_i32(1i, arg_1.a.x), 2147483647i), global1.x));
    global2 = array<vec3<f32>, 31>();
    let var_0 = firstLeadingBit(u_input.a.x);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-855f)), -356f)), _wgslsmith_f_op_f32(sign(arg_0)));
    let var_2 = (i32(-1i) * -(i32(-1i) * -2147483647i)) | var_0;
    return vec3<bool>(true, arg_1.d.x, !(_wgslsmith_sub_u32(~u_input.e.x, _wgslsmith_add_u32(u_input.e.x, u_input.e.x)) >= ~_wgslsmith_clamp_u32(9125u, u_input.e.x, u_input.e.x)));
}

fn func_4(arg_0: u32, arg_1: vec3<bool>, arg_2: i32, arg_3: Struct_2) -> vec2<bool> {
    var var_0 = vec3<i32>(_wgslsmith_clamp_i32(-57850i, abs(u_input.c), 57977i), -(~u_input.b), _wgslsmith_sub_i32(countOneBits(-23611i), _wgslsmith_sub_i32(min(31733i, 7943i), ~38470i))) << (reverseBits(vec3<u32>(0u, 26930u, ~(~4294967295u))) % vec3<u32>(32u));
    global1 = -u_input.a;
    var var_1 = _wgslsmith_f_op_f32(select(1000f, 329f, any(select(vec4<bool>(all(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true)), arg_1.x, true, all(arg_1.zy)), vec4<bool>(arg_1.x, true, arg_1.x, true), vec4<bool>(false, any(vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), any(arg_1), arg_1.x)))));
    var var_2 = vec3<i32>(31240i, -1i, -21115i);
    global1 = vec4<i32>(_wgslsmith_div_i32(~select(-2147483647i & global4.a.x, u_input.c, all(vec4<bool>(false, arg_1.x, true, false))), select(var_0.x | ~var_0.x, _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(global4.a.x, arg_2)), -var_0.xx), !(!arg_1.x))), firstTrailingBit(i32(-1i) * -_wgslsmith_dot_vec2_i32(u_input.a.yz, vec2<i32>(0i, arg_3.a.x))), global4.a.x, 1i);
    return vec2<bool>(!(arg_1.x || (-325f >= _wgslsmith_f_op_f32(floor(1425f)))), arg_1.x);
}

fn func_2(arg_0: i32) -> vec2<u32> {
    global4 = Struct_2(~_wgslsmith_mod_vec3_i32(select(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0, -39022i, -4330i), vec3<i32>(u_input.a.x, 2147483647i, -1i)), ~vec3<i32>(-2147483647i, u_input.a.x, arg_0), true), reverseBits(firstTrailingBit(u_input.a.yyx))));
    var var_0 = true;
    global2 = array<vec3<f32>, 31>();
    var var_1 = Struct_1(firstLeadingBit(countOneBits(-(u_input.a & vec4<i32>(1i, -2147483647i, u_input.b, global4.a.x)))), false, true, func_4(_wgslsmith_mod_u32(u_input.e.x, ~_wgslsmith_clamp_u32(u_input.e.x, u_input.e.x, u_input.e.x)), select(vec3<bool>(false, true, true), func_3(-668f, Struct_1(vec4<i32>(u_input.b, 13029i, 5028i, global1.x), false, true, vec2<bool>(false, false))), vec3<bool>(true, true, true)), abs(2147483647i), Struct_2(min(vec3<i32>(-51160i, arg_0, u_input.b), select(global1.zwz, vec3<i32>(5983i, -54786i, 0i), vec3<bool>(false, true, true))))));
    var_1 = Struct_1(u_input.a, any(!select(vec2<bool>(true, var_1.b), vec2<bool>(true, true), var_1.d)), var_1.b, select(!var_1.d, vec2<bool>(false, !(!var_1.c)), var_1.b));
    return vec2<u32>(select(u_input.e.x, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x), vec4<u32>(u_input.e.x, u_input.e.x, 51612u, 1u)), vec4<u32>(u_input.e.x, 8230u, 24800u, u_input.e.x)) | u_input.e.x, any(!(!vec4<bool>(false, var_1.b, var_1.d.x, true)))), 5823u);
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_clamp_vec2_i32(global1.zw, global1.zx, ~global4.a.xy ^ _wgslsmith_div_vec2_i32(vec2<i32>(-17591i, -6645i) >> (func_2(-17190i) % vec2<u32>(32u)), -vec2<i32>(29735i, -27661i)));
    global1 = vec4<i32>(var_0.x, -24139i, ~global4.a.x >> (51031u % 32u), ~_wgslsmith_mod_i32(~abs(-2147483647i), u_input.c));
    global0 = 405f;
    var var_1 = Struct_2(global4.a);
    let var_2 = countOneBits(0u);
    return true;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: bool) -> Struct_2 {
    let var_0 = func_4(_wgslsmith_add_u32(u_input.e.x, min(u_input.e.x, 15146u)), select(vec3<bool>(!arg_0.b, select(false, func_4(57474u, arg_1.yyz, arg_0.a.x, Struct_2(global1.wxz)).x, arg_1.x), all(select(vec2<bool>(arg_2, true), vec2<bool>(arg_1.x, true), arg_0.d))), vec3<bool>(true, true, true), all(select(select(arg_1, vec4<bool>(false, false, true, arg_1.x), arg_1), select(arg_1, arg_1, arg_1.x), arg_0.d.x && arg_1.x))), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(-(vec4<i32>(2147483647i, arg_0.a.x, u_input.d.x, arg_0.a.x) | vec4<i32>(1i, arg_0.a.x, -2147483647i, 28123i)), _wgslsmith_mod_vec4_i32(u_input.a, -vec4<i32>(arg_0.a.x, -6911i, u_input.d.x, 0i))), u_input.a.x), Struct_2(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(abs(vec3<i32>(1i, -56848i, arg_0.a.x)), u_input.a.wyw | u_input.a.yxw), vec3<i32>(_wgslsmith_dot_vec3_i32(arg_0.a.yyy, vec3<i32>(u_input.a.x, 1i, 0i)), select(11022i, -2147483647i, true), u_input.a.x)))).x;
    var var_1 = _wgslsmith_clamp_i32(_wgslsmith_mult_i32(3869i, global4.a.x), arg_0.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global4.a.x, _wgslsmith_div_i32(global1.x, -1i)), vec2<i32>(min(17916i, -1840i), _wgslsmith_dot_vec4_i32(arg_0.a, u_input.a)))) | firstLeadingBit(1i);
    let var_2 = Struct_2(~_wgslsmith_clamp_vec3_i32(global1.zxw, -(~global4.a), vec3<i32>(u_input.c, _wgslsmith_mult_i32(-6104i, u_input.a.x), 1i >> (u_input.e.x % 32u))));
    var_1 = _wgslsmith_mult_i32(-1i, global4.a.x);
    var var_3 = u_input.a.xxz;
    return Struct_2(vec3<i32>(abs(-81662i | var_3.x) << (abs(~4294967295u) % 32u), var_3.x | ~(-10531i), firstLeadingBit(global1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_5(Struct_1(u_input.a, false, func_1(), vec2<bool>(!select(false, false, true), false)), vec4<bool>(any(!select(vec2<bool>(true, true), vec2<bool>(false, false), false)), false, false, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(global1.yxz, vec3<i32>(-2147483647i, -39676i, global1.x)), 1i) != -(~global1.x)), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1890f), 199f))), Struct_1(u_input.a | countOneBits(vec4<i32>(u_input.c, global4.a.x, 8457i, global4.a.x)), false, true, vec2<bool>(false, all(vec4<bool>(false, true, false, true))))).x);
    let var_0 = Struct_2(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(global4.a.x, 1i, 1i, 0i)), ~vec4<i32>(-1i, 0i, 337i, u_input.c)), abs(countOneBits(-1i)), _wgslsmith_mult_i32(-global1.x, -u_input.d.x)), -countOneBits(u_input.a.wyw)));
    global3 = u_input.e.x;
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(444f, _wgslsmith_f_op_f32(f32(-1f) * -598f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-1638f, -1741f, false)), _wgslsmith_f_op_f32(trunc(-1054f)))))), 1639f));
    let var_2 = !(!select(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), true));
    var var_3 = !select(vec2<bool>(func_4(~u_input.e.x, select(var_2, vec3<bool>(var_2.x, var_2.x, true), var_2), countOneBits(2147483647i), var_0).x, var_2.x), !(!var_2.xx), vec2<bool>(func_1(), true));
    global2 = array<vec3<f32>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_1, var_1, -1020f) + vec4<f32>(var_1, var_1, 1677f, var_1)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, -320f, var_1, 1085f) * vec4<f32>(var_1, -235f, 923f, var_1)))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1261f, var_1, -1227f, var_1)), vec4<f32>(var_1, var_1, var_1, -1021f))))), vec3<u32>(u_input.e.x, 22247u, u_input.e.x), u_input.e.x & 0u, firstLeadingBit(firstTrailingBit(_wgslsmith_sub_vec3_i32(global1.wyx, global4.a))));
}

