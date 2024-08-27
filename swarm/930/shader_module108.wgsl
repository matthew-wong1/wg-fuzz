struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: bool,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<u32, 7>;

var<private> global2: vec2<f32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: f32) -> bool {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1364f, global2.x, 166f, 127f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1138f, global2.x, 769f, 1376f) * arg_1.a))) - _wgslsmith_f_op_vec4_f32(trunc(arg_0.a))));
    let var_1 = arg_0.a;
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-389f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1570f)))), _wgslsmith_f_op_f32(-global2.x)));
    var var_3 = 16646i;
    var var_4 = select(vec2<bool>(!any(vec3<bool>(true, true, true)), !(false || any(vec3<bool>(false, true, true)))), vec2<bool>(true, true), true);
    return !any(!(!select(vec4<bool>(var_4.x, true, true, var_4.x), vec4<bool>(false, false, var_4.x, true), true)));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    var var_0 = func_3(arg_2, arg_2, arg_2.a.yw, -680f);
    let var_1 = ~arg_3.c;
    global2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x + -1822f) + global2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2.a.x + 830f), global2.x)), all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.a.x))))));
    let var_2 = firstLeadingBit(~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(select(vec4<u32>(4294967295u, 28947u, global1[_wgslsmith_index_u32(4294967295u, 7u)], arg_3.c), vec4<u32>(global1[_wgslsmith_index_u32(30804u, 7u)], arg_3.c, 52454u, var_1), false), vec4<u32>(52959u, arg_3.c, arg_3.b, arg_3.b)), firstLeadingBit(abs(vec4<u32>(83228u, 0u, 9752u, 1u)))));
    var var_3 = ~((((vec2<u32>(35673u, arg_3.c) & vec2<u32>(var_2, var_2)) >> (~vec2<u32>(var_2, global1[_wgslsmith_index_u32(4294967295u, 7u)]) % vec2<u32>(32u))) >> (vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2, 108684u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 7u)], 7u)]), vec3<u32>(global1[_wgslsmith_index_u32(var_1, 7u)], var_1, 4294967295u)), _wgslsmith_div_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], arg_3.b)) % vec2<u32>(32u))) >> (_wgslsmith_sub_vec2_u32(~(~vec2<u32>(0u, var_2)), ~vec2<u32>(global1[_wgslsmith_index_u32(9314u, 7u)], 32150u)) % vec2<u32>(32u)));
    return global2.x;
}

fn func_1() -> vec3<f32> {
    global1 = array<u32, 7>();
    let var_0 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2010f + global2.x) - _wgslsmith_f_op_f32(func_2(-88307i, ~18072i, Struct_2(vec4<f32>(-552f, global2.x, 154f, 822f)), Struct_1(u_input.a.wz, global1[_wgslsmith_index_u32(66505u, 7u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(59280u, 7u)], 7u)])))), global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - _wgslsmith_f_op_f32(global2.x - 1283f))), _wgslsmith_f_op_f32(312f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * global2.x))), Struct_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 408f, -350f, 1846f))))));
    var var_1 = select(vec2<bool>(any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false))), true), !vec2<bool>(all(vec4<bool>(false, true, true, false)), true), select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(any(vec4<bool>(true, true, false, true)), all(vec4<bool>(true, true, false, false))), false));
    let var_2 = vec2<f32>(-658f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.a.x)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2031f) - _wgslsmith_f_op_f32(var_0.b.a.x * global2.x))))));
    let var_3 = ~max(~_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 17208i, -28488i, 2147483647i), u_input.a, _wgslsmith_mod_vec4_i32(vec4<i32>(33207i, -79042i, u_input.a.x, 49004i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), min(_wgslsmith_mod_vec4_i32(u_input.a << (vec4<u32>(global1[_wgslsmith_index_u32(133049u, 7u)], 0u, global1[_wgslsmith_index_u32(1407u, 7u)], 13026u) % vec4<u32>(32u)), vec4<i32>(u_input.a.x, -59682i, 24875i, 1i)), ~(-u_input.a)));
    return vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(f32(-1f) * -1000f))), var_2.x), _wgslsmith_div_f32(146f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + _wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_f32(min(var_2.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -495f))))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: i32) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(abs(global2.x)))), vec2<f32>(284f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.a.x))))) * vec2<f32>(-763f, arg_0.a.x));
    var var_1 = Struct_4(~vec3<u32>(~global1[_wgslsmith_index_u32(abs(50394u), 7u)], ~30049u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)], 7u)], 4294967295u, 0u, global1[_wgslsmith_index_u32(24759u, 7u)])), ~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(33596u, 7u)], 7u)], global1[_wgslsmith_index_u32(35237u, 7u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 7u)], 7u)], 7u)], 7u)], global1[_wgslsmith_index_u32(0u, 7u)]))), all(!vec3<bool>(true, true, all(vec3<bool>(true, false, false)))), arg_0.a.zw);
    var var_2 = Struct_3(arg_0.a, arg_0);
    let var_3 = countOneBits(vec2<i32>(-min(~arg_2, arg_2), -19510i));
    let var_4 = _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(var_1.a, _wgslsmith_mult_vec3_u32(var_1.a, vec3<u32>(1u, 96036u, global1[_wgslsmith_index_u32(var_1.a.x, 7u)]))), _wgslsmith_sub_vec3_u32(~vec3<u32>(global1[_wgslsmith_index_u32(var_1.a.x, 7u)], 1u, 0u), ~vec3<u32>(var_1.a.x, 0u, 4518u))), reverseBits(~global1[_wgslsmith_index_u32(~var_1.a.x, 7u)])), ~(~var_1.a.yz));
    return any(vec3<bool>(var_1.b != var_1.b, var_1.b, !var_1.b)) | (!all(vec3<bool>(false, false, false)) | func_3(Struct_2(var_2.a), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2633f, -1277f, -2823f, arg_0.a.x))), _wgslsmith_f_op_vec2_f32(-var_2.a.zy), _wgslsmith_div_f32(var_2.a.x, _wgslsmith_f_op_f32(-var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(Struct_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-319f, 200f, global2.x, -279f), vec4<f32>(global2.x, global2.x, global2.x, global2.x)))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1())), vec3<f32>(-713f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -352f), global2.x), global2.x))), -58872i);
    var var_0 = Struct_1(max(~vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -55569i), u_input.a.xzz), 0i), min(vec2<i32>(u_input.a.x & u_input.a.x, 40429i), u_input.a.xw)), ~(~_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(~4294967295u, 7u)], ~global1[_wgslsmith_index_u32(29162u, 7u)], 0u)), countOneBits(0u));
    var_0 = Struct_1(_wgslsmith_sub_vec2_i32(var_0.a, -vec2<i32>(0i, var_0.a.x)) << (vec2<u32>(~(~global1[_wgslsmith_index_u32(58252u, 7u)]), 4294967295u) % vec2<u32>(32u)), var_0.c, (select(global1[_wgslsmith_index_u32(~1u, 7u)], var_0.b, select(true, false, false)) >> (var_0.b % 32u)) & ~53013u);
    let var_1 = Struct_4(min(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_add_u32(18549u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.b, 7u)], 7u)]), 1u, ~global1[_wgslsmith_index_u32(4294967295u, 7u)]), vec3<u32>(4294967295u, 41446u, global1[_wgslsmith_index_u32(var_0.c, 7u)]) | _wgslsmith_div_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 7u)], 7u)], 7989u, var_0.c), vec3<u32>(35945u, 50169u, 86672u))), ~vec3<u32>(var_0.c, 1u, _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(var_0.c, 7u)], var_0.c))), ~(~var_0.c) <= (firstLeadingBit(select(1u, global1[_wgslsmith_index_u32(59191u, 7u)], true)) | min(1u, ~1u)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-125f, _wgslsmith_f_op_f32(round(380f)))))));
    let var_2 = 4301u;
    let x = u_input.a;
    s_output = StorageBuffer(54388u, var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-2209f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + global2.x))) + _wgslsmith_f_op_f32(step(global2.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-100f, global2.x, var_1.b))))))));
}

