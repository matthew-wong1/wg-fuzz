struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: bool,
    d: bool,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: f32,
    d: vec2<i32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 24> = array<vec3<u32>, 24>(vec3<u32>(57541u, 0u, 4294967295u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(0u, 75569u, 36133u), vec3<u32>(14404u, 44453u, 89770u), vec3<u32>(34115u, 0u, 4294967295u), vec3<u32>(25229u, 0u, 0u), vec3<u32>(46189u, 4294967295u, 8259u), vec3<u32>(49425u, 4294967295u, 27602u), vec3<u32>(0u, 1u, 31453u), vec3<u32>(0u, 64603u, 51016u), vec3<u32>(1u, 4294967295u, 50761u), vec3<u32>(52409u, 5656u, 60036u), vec3<u32>(28474u, 0u, 31625u), vec3<u32>(1u, 4294967295u, 79987u), vec3<u32>(23297u, 0u, 0u), vec3<u32>(35709u, 1u, 8154u), vec3<u32>(1u, 0u, 69487u), vec3<u32>(17070u, 1u, 1599u), vec3<u32>(1u, 27337u, 2629u), vec3<u32>(22031u, 2201u, 3966u), vec3<u32>(4294967295u, 17440u, 0u), vec3<u32>(0u, 0u, 17655u), vec3<u32>(35655u, 1u, 1u), vec3<u32>(0u, 4294967295u, 1u));

var<private> global1: array<i32, 19>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec3<u32>) -> bool {
    global1 = array<i32, 19>();
    let var_0 = vec2<bool>(true, true);
    global1 = array<i32, 19>();
    var var_1 = ~((~_wgslsmith_add_vec4_u32(vec4<u32>(1u, arg_0.x, u_input.b.x, arg_0.x), vec4<u32>(u_input.b.x, arg_0.x, arg_0.x, 13168u)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(40592u, 4294967295u, arg_0.x, 4294967295u), vec4<u32>(u_input.b.x, 4294967295u, arg_0.x, 87969u)) % vec4<u32>(32u))) | firstLeadingBit(vec4<u32>(4294967295u, 1u, 0u, 12069u) ^ vec4<u32>(u_input.b.x, 12603u, arg_0.x, 1u)));
    global0 = array<vec3<u32>, 24>();
    return true;
}

fn func_3(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_1) -> vec2<f32> {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.e.x, _wgslsmith_div_f32(arg_2.b.x, arg_2.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(850f - arg_2.e.x) + 126f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(619f, _wgslsmith_f_op_f32(arg_2.b.x - 1267f), _wgslsmith_f_op_f32(round(arg_2.b.x)), _wgslsmith_div_f32(arg_2.e.x, _wgslsmith_f_op_f32(arg_2.e.x * 330f)))));
    var var_1 = Struct_2(var_0.yyx, vec3<bool>(~64112u > ~u_input.b.x, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2.b.x)))))), firstLeadingBit(-vec2<i32>(-11961i, global1[_wgslsmith_index_u32(29051u, 19u)])) << (u_input.b % vec2<u32>(32u)), 55174i);
    var var_2 = Struct_2(var_1.a, !select(var_1.b, vec3<bool>(var_1.e < 1i, all(arg_2.a.xy), false), true), var_1.a.x, _wgslsmith_mult_vec2_i32(select(var_1.d, ~vec2<i32>(0i, 0i), arg_2.a.x), var_1.d), _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(1u, 19u)], min(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(var_1.e, -6611i, var_1.e, 0i)), -vec4<i32>(var_1.e, 1i, var_1.e, -28556i)), _wgslsmith_dot_vec2_i32(firstLeadingBit(var_1.d), var_1.d))));
    let var_3 = _wgslsmith_f_op_f32(max(arg_2.b.x, _wgslsmith_div_f32(296f, 1f)));
    var var_4 = Struct_2(_wgslsmith_div_vec3_f32(var_0.xxz, _wgslsmith_f_op_vec3_f32(abs(var_1.a))), !var_2.b, _wgslsmith_f_op_f32(f32(-1f) * -105f), var_1.d, ~abs(11267i));
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(min(arg_2.b.x, var_4.a.x)))), 111f)), var_0.x);
}

fn func_1(arg_0: f32, arg_1: i32) -> Struct_1 {
    global1 = array<i32, 19>();
    var var_0 = 4294967295u;
    var var_1 = Struct_1(select(!vec3<bool>(func_2(vec3<u32>(6047u, u_input.b.x, u_input.b.x)), true, all(vec2<bool>(false, true))), !select(vec3<bool>(true, false, false), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), true), false), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1654f) - -686f), arg_0), u_input.b.x != (_wgslsmith_clamp_u32(u_input.b.x, countOneBits(0u), ~4294967295u) | u_input.b.x), arg_0 > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0), any(vec3<bool>(true, false, false))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)))) - _wgslsmith_f_op_vec2_f32(func_3(vec3<bool>(false, false, true), false, Struct_1(vec3<bool>(false, true, false), vec2<f32>(1000f, arg_0), false, true, vec2<f32>(arg_0, -1379f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)))));
    let var_2 = Struct_1(var_1.a, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-932f, var_1.b.x))), var_1.b))))), var_1.c, var_1.c, var_1.b);
    var var_3 = Struct_1(var_2.a, var_1.b, any(select(!(!var_1.a), !(!var_1.a), !all(vec2<bool>(false, var_1.a.x)))), select(any(!select(vec3<bool>(false, var_2.d, var_2.a.x), var_2.a, var_1.c)), false, true), vec2<f32>(2186f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.e.x * 584f), _wgslsmith_f_op_f32(f32(-1f) * -1582f))));
    return Struct_1(!(!select(vec3<bool>(var_1.c, false, var_2.d), !var_1.a, var_2.a)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_1.e)) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(741f, var_1.b.x)))) + _wgslsmith_f_op_vec2_f32(func_3(select(var_2.a, vec3<bool>(false, var_3.a.x, var_1.c), var_2.a), var_2.d, Struct_1(vec3<bool>(true, var_1.c, var_3.c), vec2<f32>(-460f, var_3.e.x), false, true, var_2.b)))), _wgslsmith_div_vec2_f32(var_2.e, var_3.b)), all(!vec2<bool>(func_2(vec3<u32>(28453u, u_input.b.x, u_input.b.x)), !var_2.c)), select(false, var_3.a.x, all(select(var_2.a.zy, vec2<bool>(var_2.c, false), true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_2.b))));
}

fn func_4(arg_0: Struct_1) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(932f, arg_0.e.x, arg_0.b.x, arg_0.b.x) * vec4<f32>(arg_0.e.x, arg_0.b.x, arg_0.e.x, -268f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(576f, -1490f, 1407f, -1307f) * vec4<f32>(arg_0.b.x, arg_0.e.x, 1234f, -352f)))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, arg_0.e.x, -363f, arg_0.b.x)))))));
    var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-327f, arg_0.b.x, arg_0.e.x != -545f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1023f)))), _wgslsmith_f_op_f32(-977f - _wgslsmith_f_op_f32(-arg_0.b.x))), var_0.x, 202f, var_0.x);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))));
    var var_2 = !(!select(select(select(vec4<bool>(arg_0.c, false, arg_0.a.x, false), vec4<bool>(arg_0.c, false, true, false), vec4<bool>(true, arg_0.c, false, false)), vec4<bool>(arg_0.d, false, true, true), vec4<bool>(arg_0.c, true, arg_0.c, true)), vec4<bool>(763f == var_1, -688f != var_0.x, -15099i >= global1[_wgslsmith_index_u32(u_input.b.x, 19u)], select(false, arg_0.c, true)), true | !arg_0.c));
    var var_3 = ~u_input.b.x;
    return StorageBuffer(-global1[_wgslsmith_index_u32(1u, 19u)], vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(var_1, arg_0.e.x)), 323f)), var_0.x, -187f), ~max(~abs(vec4<i32>(20287i, -2147483647i, 2811i, 2147483647i)), select(vec4<i32>(u_input.a, global1[_wgslsmith_index_u32(u_input.b.x, 19u)], 1694i, global1[_wgslsmith_index_u32(1u, 19u)]), vec4<i32>(-1i, -6744i, 2147483647i, global1[_wgslsmith_index_u32(4294967295u, 19u)]), false) & abs(vec4<i32>(u_input.a, global1[_wgslsmith_index_u32(4294967295u, 19u)], u_input.a, -2147483647i))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-582f, -1794f) + _wgslsmith_f_op_f32(105f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1057f - -950f), _wgslsmith_f_op_f32(-var_1))))), _wgslsmith_div_vec2_f32(var_0.yw, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(301f, 296f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(true, any(vec2<bool>(true, -24956i <= global1[_wgslsmith_index_u32(u_input.b.x, 19u)])), true);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1487f);
    let var_2 = ~firstLeadingBit(u_input.b.x);
    var_0 = !select(select(select(!vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, true, true), vec3<bool>(var_0.x, var_0.x, true)), select(!vec3<bool>(var_0.x, var_0.x, false), select(vec3<bool>(false, false, var_0.x), vec3<bool>(false, false, var_0.x), vec3<bool>(var_0.x, true, false)), var_0.x | var_0.x), select(select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, false, var_0.x), true), !vec3<bool>(false, var_0.x, var_0.x), !vec3<bool>(var_0.x, true, var_0.x))), vec3<bool>(var_0.x, !(!var_0.x), true), select(vec3<bool>(!var_0.x, !var_0.x, false), vec3<bool>(var_1 != var_1, true, all(vec2<bool>(var_0.x, var_0.x))), false & !var_0.x));
    global1 = array<i32, 19>();
    global0 = array<vec3<u32>, 24>();
    let var_3 = false;
    var var_4 = var_1;
    let var_5 = var_2;
    let x = u_input.a;
    s_output = func_4(func_1(_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-325f * var_1)))), _wgslsmith_div_i32(i32(-1i) * -1i, u_input.a)));
}

