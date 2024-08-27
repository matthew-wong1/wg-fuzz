struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec3<bool>;

var<private> global2: vec3<i32>;

var<private> global3: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(false, 1i, -371f, vec2<f32>(-646f, -377f)), Struct_1(false, 1i, -1826f, vec2<f32>(1314f, 568f)), Struct_1(false, -27220i, -1465f, vec2<f32>(-364f, -621f)), Struct_1(false, i32(-2147483648), -323f, vec2<f32>(-1000f, -833f)), Struct_1(true, 14542i, -187f, vec2<f32>(-795f, 971f)), Struct_1(true, 29281i, -150f, vec2<f32>(568f, -1502f)), Struct_1(true, i32(-2147483648), 346f, vec2<f32>(906f, 749f)), Struct_1(true, 2147483647i, 764f, vec2<f32>(-2295f, 347f)), Struct_1(false, -16761i, 1287f, vec2<f32>(-646f, -367f)), Struct_1(true, 10176i, 1000f, vec2<f32>(-1409f, -581f)), Struct_1(false, 2147483647i, -1152f, vec2<f32>(-1000f, -1000f)), Struct_1(true, 2391i, -112f, vec2<f32>(-2127f, -267f)), Struct_1(false, -12303i, 580f, vec2<f32>(635f, 1675f)), Struct_1(true, 18580i, 1353f, vec2<f32>(1000f, -431f)), Struct_1(false, 1i, -1188f, vec2<f32>(308f, -1000f)), Struct_1(false, -1i, 1858f, vec2<f32>(-2372f, -371f)), Struct_1(true, -9082i, 569f, vec2<f32>(707f, -1085f)), Struct_1(true, -25576i, -496f, vec2<f32>(-2716f, 785f)), Struct_1(true, -39130i, 1617f, vec2<f32>(508f, 249f)));

var<private> global4: bool = true;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1) -> vec4<u32> {
    global1 = select(!(!(!(!vec3<bool>(true, global1.x, global1.x)))), !select(vec3<bool>(global1.x, all(vec3<bool>(true, global1.x, true)), true), select(vec3<bool>(arg_1.a, global1.x, false), select(vec3<bool>(arg_1.a, false, arg_1.a), vec3<bool>(global1.x, arg_1.a, global1.x), vec3<bool>(true, false, true)), arg_1.a), !(!vec3<bool>(false, false, arg_1.a))), select(!(!vec3<bool>(false, false, global1.x)), !select(select(vec3<bool>(true, false, global1.x), vec3<bool>(global1.x, arg_1.a, global1.x), global1.x), !vec3<bool>(false, false, arg_1.a), !vec3<bool>(true, arg_1.a, global1.x)), select(!(!vec3<bool>(global1.x, true, false)), vec3<bool>(!arg_1.a, true, global1.x), !(!vec3<bool>(arg_1.a, arg_1.a, arg_1.a)))));
    let var_0 = arg_1;
    global4 = arg_1.b < ~(-9730i);
    global1 = vec3<bool>(!(!any(vec3<bool>(var_0.a, global1.x, false)) | global1.x), true, var_0.a);
    return _wgslsmith_div_vec4_u32(vec4<u32>(~53151u, 58665u, 0u, _wgslsmith_mult_u32(firstLeadingBit(98618u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 17642u), vec3<u32>(1u, 1u, 0u)))), ~(~vec4<u32>(1u, 1u, 1u, 1u))) << (vec4<u32>(max(~0u, _wgslsmith_add_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(19072u, 48472u, 1u, 4501u), vec4<u32>(90045u, 17350u, 46490u, 0u)))), abs(firstLeadingBit(1u)), _wgslsmith_sub_u32(14108u, select(~4294967295u, ~37883u, true)), 4294967295u) % vec4<u32>(32u));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: vec4<f32>) -> bool {
    global0 = 7137u;
    var var_0 = global3[_wgslsmith_index_u32(arg_0.x, 19u)];
    var var_1 = global3[_wgslsmith_index_u32(arg_1.x, 19u)];
    let var_2 = global1.yz;
    var_0 = global3[_wgslsmith_index_u32(~arg_0.x, 19u)];
    return true;
}

fn func_2(arg_0: vec2<f32>, arg_1: f32) -> bool {
    let var_0 = _wgslsmith_sub_i32(~(-abs(1i ^ u_input.a)), _wgslsmith_div_i32(countOneBits(0i & _wgslsmith_sub_i32(u_input.a, u_input.a)), ~_wgslsmith_mod_i32(-2147483647i, u_input.a ^ -11807i)));
    var var_1 = !vec3<bool>(all(!(!vec4<bool>(true, global1.x, global1.x, global1.x))), func_4(select(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 9842u, 47553u, 0u), vec4<u32>(17681u, 43536u, 1u, 75251u)), vec4<bool>(false, false, global1.x, true)), func_3(vec2<f32>(arg_0.x, -246f), global3[_wgslsmith_index_u32(countOneBits(1u), 19u)]), vec4<f32>(-729f, _wgslsmith_f_op_f32(sign(290f)), arg_0.x, arg_1)), !global1.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, _wgslsmith_f_op_f32(arg_0.x - -1039f), _wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, true)), 143f)) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2075f) * _wgslsmith_f_op_f32(183f * arg_1)), arg_0.x, -155f, arg_1)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -214f, arg_1, 411f) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1336f, arg_0.x, arg_1, arg_1), vec4<f32>(1445f, arg_0.x, arg_0.x, arg_0.x)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1, arg_0.x, 689f, 1702f), vec4<f32>(418f, -725f, arg_0.x, arg_0.x))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1, 568f, 256f, 362f))), var_1.x && global1.x)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, -1668f, arg_0.x, arg_1), vec4<f32>(1132f, -1268f, -1233f, 1726f), false)))));
    let var_3 = var_2.zxz;
    let var_4 = !vec4<bool>(true, true, global1.x, global1.x);
    return var_4.x;
}

fn func_1() -> f32 {
    var var_0 = any(select(select(select(!vec4<bool>(global1.x, global1.x, true, true), !vec4<bool>(true, global1.x, global1.x, false), func_2(vec2<f32>(-1331f, -1492f), 704f)), !vec4<bool>(false, false, global1.x, true), all(vec3<bool>(false, false, true))), select(vec4<bool>(global1.x, true || global1.x, global1.x, any(global1.yy)), vec4<bool>(global1.x | true, global1.x, global1.x & false, any(global1.zy)), global1.x), select(!select(vec4<bool>(false, true, global1.x, global1.x), vec4<bool>(true, global1.x, true, true), vec4<bool>(global1.x, global1.x, global1.x, true)), select(vec4<bool>(true, global1.x, false, true), !vec4<bool>(true, true, false, global1.x), any(vec3<bool>(false, global1.x, false))), !select(vec4<bool>(false, global1.x, global1.x, global1.x), vec4<bool>(true, false, global1.x, global1.x), global1.x))));
    let var_1 = Struct_1(global1.x, -37274i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(642f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-495f * -1331f), _wgslsmith_f_op_f32(728f * 1280f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(197f, -595f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1440f, -561f))))));
    let var_2 = var_1.d;
    var var_3 = ~_wgslsmith_add_vec2_i32(abs(vec2<i32>(1i, 2147483647i)), _wgslsmith_mod_vec2_i32(global2.yz, -vec2<i32>(global2.x, 34331i)));
    var_3 = ~max(global2.xz, _wgslsmith_mod_vec2_i32(vec2<i32>(~38193i, u_input.a), global2.yz));
    return -382f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(461f))) + 157f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-577f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-173f))), false)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, 520f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1()))))), _wgslsmith_f_op_f32(667f * _wgslsmith_f_op_f32(f32(-1f) * -1984f)));
    let var_2 = global3[_wgslsmith_index_u32(var_0, 19u)];
    let var_3 = var_1.xxx;
    global1 = select(!vec3<bool>(!var_2.a | (var_0 > var_0), !var_2.a, 514f >= _wgslsmith_f_op_f32(floor(-757f))), vec3<bool>(1u < var_0, true, !var_2.a), vec3<bool>(!any(!vec3<bool>(global1.x, true, var_2.a)), any(global1.yz), var_2.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(19508i, var_2.b, -1i, var_2.b), vec4<i32>(global2.x, 4349i, global2.x, global2.x)), min(u_input.b, 45779i)), _wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.b, var_2.b), u_input.b | global2.x)), ~global2.xy, _wgslsmith_clamp_vec2_i32(vec2<i32>(var_2.b, -19270i), ~vec2<i32>(global2.x, var_2.b), global2.zx)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0, 24329u, var_0), ~vec3<u32>(8068u, var_0, var_0) | _wgslsmith_mod_vec3_u32(~vec3<u32>(var_0, var_0, 42759u), ~vec3<u32>(28751u, 4729u, 18513u))));
}

