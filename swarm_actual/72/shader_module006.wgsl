struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
    d: vec4<f32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: vec3<bool> = vec3<bool>(false, true, true);

var<private> global2: array<vec2<f32>, 25>;

var<private> global3: array<u32, 13> = array<u32, 13>(0u, 0u, 112664u, 1u, 4294967295u, 110257u, 19540u, 20597u, 4294967295u, 1u, 11696u, 4294967295u, 13967u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: f32, arg_3: bool) -> f32 {
    let var_0 = !select(!select(vec2<bool>(arg_1.x, false), select(vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(arg_1.x, true), arg_0.yy), !global1.zz), select(!(!arg_0.zz), !global1.yy, select(global1.zz, !vec2<bool>(true, arg_0.x), any(vec3<bool>(arg_1.x, true, arg_1.x)))), !select(select(vec2<bool>(global1.x, arg_0.x), vec2<bool>(false, false), vec2<bool>(arg_3, true)), arg_0.xx, true));
    let var_1 = countOneBits(firstTrailingBit(2147483647i));
    global3 = array<u32, 13>();
    let var_2 = arg_2;
    global1 = select(vec3<bool>(_wgslsmith_add_i32(firstTrailingBit(u_input.b.x), ~u_input.d.x) > ~select(39944i, u_input.b.x, false), arg_3 & ((0u >> (u_input.c % 32u)) <= countOneBits(4294967295u)), arg_3), select(!(!select(vec3<bool>(false, global1.x, arg_3), vec3<bool>(arg_3, global1.x, false), false)), select(vec3<bool>(false, var_0.x, !global1.x), arg_0, !select(arg_0, arg_1, false)), arg_0.x), all(arg_0));
    return arg_2;
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    var var_0 = Struct_1(-1758f, abs(34133u ^ arg_0.b), arg_1, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-904f, arg_0.c, arg_0.a, -461f), vec4<f32>(arg_1, arg_0.c, arg_1, -238f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(760f, _wgslsmith_f_op_f32(-579f + -1825f), _wgslsmith_f_op_f32(arg_1 + -2186f), _wgslsmith_f_op_f32(-arg_1)))), min(_wgslsmith_mult_vec4_i32(arg_0.e, -(u_input.d | arg_0.e)), u_input.d));
    global2 = array<vec2<f32>, 25>();
    global2 = array<vec2<f32>, 25>();
    let var_1 = Struct_2(Struct_1(-518f, 0u, -1032f, var_0.d, select(-var_0.e, -reverseBits(vec4<i32>(arg_0.e.x, 37384i, u_input.b.x, -1i)), vec4<bool>(global1.x | false, false, true, true && global1.x))), -8583i, arg_0);
    var var_2 = arg_0;
    return Struct_1(_wgslsmith_f_op_f32(func_3(vec3<bool>(false, all(vec2<bool>(global1.x, global1.x)), !any(vec4<bool>(true, false, true, false))), !(!(!vec3<bool>(global1.x, true, global1.x))), arg_1, global1.x)), ~(~var_2.b), 550f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_1.a.d), arg_0.d)))), ~(~(var_1.a.e >> (vec4<u32>(39541u, var_2.b, arg_0.b, 0u) % vec4<u32>(32u))) | var_1.a.e));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: i32) -> vec3<u32> {
    var var_0 = Struct_1(1f, ~countOneBits(~u_input.a), -328f, _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.a, _wgslsmith_f_op_f32(min(444f, -262f)), arg_2.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), arg_2.d), vec4<i32>(i32(-1i) * -1i, arg_2.e.x, _wgslsmith_dot_vec4_i32(arg_2.e << (_wgslsmith_clamp_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(0u, 13u)], arg_2.b, 1u, 4294967295u), vec4<u32>(global3[_wgslsmith_index_u32(10859u, 13u)], 1u, global3[_wgslsmith_index_u32(0u, 13u)], 4294967295u), vec4<u32>(29084u, arg_2.b, arg_0.x, 0u)) % vec4<u32>(32u)), ~(arg_2.e >> (vec4<u32>(15610u, 0u, 1u, 53015u) % vec4<u32>(32u)))), arg_2.e.x));
    var var_1 = func_2(arg_2, -664f);
    let var_2 = -10720i;
    let var_3 = _wgslsmith_div_i32(-1i, -2147483647i);
    var var_4 = -var_0.e;
    return vec3<u32>(var_1.b ^ u_input.c, _wgslsmith_clamp_u32(1u, var_0.b, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.b, 30799u, 53702u), abs(vec3<u32>(arg_2.b, 76496u, var_0.b)))), _wgslsmith_sub_u32(~(~var_0.b) >> (_wgslsmith_sub_u32(arg_0.x, 29707u) % 32u), abs(arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<f32>, 25>();
    var var_0 = ~(~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(13945u, 4294967295u, 1u, 1u) & vec4<u32>(1u, global3[_wgslsmith_index_u32(76374u, 13u)], 45177u, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(1u, 13u)], 65539u, 62036u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c, 13u)], 13u)]), vec4<u32>(u_input.a, 86985u, global3[_wgslsmith_index_u32(4294967295u, 13u)], 4294967295u)))));
    var_0 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.e, ~(func_1(vec3<u32>(0u, u_input.e.x, 29074u), global1.yz, Struct_1(-1000f, 121321u, 536f, vec4<f32>(-1137f, 1008f, -227f, 839f), u_input.d), u_input.b.x) << ((vec3<u32>(u_input.e.x, u_input.e.x, 42860u) & u_input.e) % vec3<u32>(32u)))), global3[_wgslsmith_index_u32(~(~1u), 13u)]);
    var var_1 = _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(i32(-1i) * -2147483647i, -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 53827i), vec2<i32>(u_input.b.x, u_input.d.x)), ~48817i), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.d.x, 0i), _wgslsmith_dot_vec2_i32(u_input.d.wz, vec2<i32>(u_input.d.x, 0i))), u_input.b.x, ~_wgslsmith_mod_i32(u_input.b.x, 29003i), ~(-u_input.b.x))), -firstTrailingBit(vec4<i32>(_wgslsmith_sub_i32(1i, 43237i), u_input.b.x ^ u_input.d.x, 1i, ~1i)));
    let var_2 = _wgslsmith_f_op_f32(max(-197f, 322f));
    var var_3 = false;
    var_0 = _wgslsmith_sub_u32(0u, global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~select(42538u, u_input.e.x, global1.x), func_2(Struct_1(var_2, 4294967295u, var_2, vec4<f32>(var_2, var_2, 1416f, -924f), vec4<i32>(u_input.d.x, 21731i, -1i, 26676i)), _wgslsmith_f_op_f32(2372f * -1790f)).b), 13u)] ^ 10187u);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_clamp_i32(firstLeadingBit(_wgslsmith_mult_i32(2147483647i, u_input.b.x)), max(26766i, u_input.d.x), u_input.b.x), 4072i, _wgslsmith_mod_i32(var_1.x, u_input.d.x), -max(vec3<i32>(-u_input.d.x, ~u_input.b.x, abs(-2005i)), vec3<i32>(i32(-1i) * -15788i, var_1.x, _wgslsmith_clamp_i32(u_input.b.x, var_1.x, 1i))), abs(u_input.e.yx));
}

