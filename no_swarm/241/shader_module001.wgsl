struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
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

var<private> global0: f32;

var<private> global1: array<vec2<bool>, 23> = array<vec2<bool>, 23>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true));

var<private> global2: vec4<i32> = vec4<i32>(-19683i, 39616i, i32(-2147483648), 14230i);

var<private> global3: i32 = 32184i;

var<private> global4: array<vec4<bool>, 2> = array<vec4<bool>, 2>(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec4<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(932f, -828f))) - _wgslsmith_f_op_f32(step(-1345f, _wgslsmith_f_op_f32(f32(-1f) * -269f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1095f + -1000f) - -1340f) + 627f))));
    global2 = _wgslsmith_add_vec4_i32(abs(firstTrailingBit(vec4<i32>(arg_1.c.x, arg_0, 2147483647i, arg_0 | u_input.b.x))), vec4<i32>(2147483647i, i32(-1i) * -40868i, _wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, 2147483647i, u_input.a.x, arg_2.x), reverseBits(vec4<i32>(arg_1.c.x, -32325i, arg_2.x, 1i))), reverseBits(1i >> (arg_1.a.x % 32u))) >> (abs(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.c), vec2<u32>(arg_1.a.x, 108311u)), arg_1.a.x | 27269u, select(1u, arg_1.a.x, true), _wgslsmith_add_u32(arg_1.a.x, arg_1.a.x))) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-418f, var_0, 1045f, var_0)))), vec4<f32>(_wgslsmith_div_f32(-825f, -1000f), -1000f, var_0, 128f))))) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(var_0)))), _wgslsmith_f_op_f32(f32(-1f) * -462f), _wgslsmith_f_op_f32(408f + var_0), _wgslsmith_div_f32(282f, _wgslsmith_f_op_f32(var_0 - var_0))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1999f), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(step(var_0, var_0)), var_0), vec4<f32>(_wgslsmith_div_f32(var_0, var_0), _wgslsmith_f_op_f32(1388f * 459f), _wgslsmith_f_op_f32(var_0 * var_0), var_0), true != arg_1.b.x))));
    var var_2 = firstLeadingBit(abs(arg_1.c.xx));
    global1 = array<vec2<bool>, 23>();
    return false;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32, arg_3: bool) -> vec3<bool> {
    global3 = ~arg_0.b.c.x;
    var var_0 = global4[_wgslsmith_index_u32(~arg_0.b.a.x, 2u)];
    let var_1 = arg_0;
    var var_2 = firstLeadingBit(vec4<u32>(4294967295u, _wgslsmith_dot_vec2_u32(abs(var_1.b.a.zz), reverseBits(_wgslsmith_mult_vec2_u32(arg_0.b.a.yz, vec2<u32>(arg_1.a.x, 51750u)))), 68073u, 0u));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(1013f, 1384f) - vec2<f32>(-1323f, 1844f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-781f, -1973f)))))))));
    return arg_1.b;
}

fn func_2(arg_0: vec2<i32>) -> bool {
    global0 = -1274f;
    var var_0 = 2147483647i;
    let var_1 = Struct_1(~vec4<u32>(60354u, ~u_input.d, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.c, 78328u)), max(vec2<u32>(u_input.c, 25729u), vec2<u32>(29069u, 24073u))), 64434u), select(!vec3<bool>(true, u_input.d <= 22850u, any(vec2<bool>(false, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(all(vec4<bool>(false, true, false, false)), all(vec2<bool>(true, false)), all(vec3<bool>(false, false, false)))), func_4(Struct_2(arg_0.x, Struct_1(vec4<u32>(16001u, 22196u, u_input.d, u_input.c), vec3<bool>(true, true, false), u_input.a), true), Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(35841u, 8651u, 0u, 895u), vec4<u32>(u_input.d, 0u, 33068u, u_input.d)), vec3<bool>(true, true, true), vec4<i32>(39841i, 23495i, u_input.b.x, 50074i)), u_input.c, func_3(_wgslsmith_div_i32(-39582i, u_input.a.x), Struct_1(vec4<u32>(1u, u_input.d, 0u, 63846u), vec3<bool>(false, false, false), vec4<i32>(23454i, 49505i, 1i, arg_0.x)), -u_input.a))), vec4<i32>(-1i, firstLeadingBit(~(-12515i << (1u % 32u))), -_wgslsmith_mod_i32(35984i, -55614i), global2.x));
    var_0 = u_input.a.x;
    let var_2 = Struct_2(-60036i, var_1, true);
    return var_2.c;
}

fn func_1(arg_0: Struct_1) -> f32 {
    global2 = u_input.a;
    let var_0 = Struct_1(vec4<u32>(1795u, min(_wgslsmith_sub_u32(~u_input.c, 0u), 11693u), u_input.d, firstLeadingBit(~8463u)), vec3<bool>(any(select(vec2<bool>(arg_0.b.x, false), vec2<bool>(true, arg_0.b.x), global1[_wgslsmith_index_u32(max(arg_0.a.x, u_input.d), 23u)])), any(global1[_wgslsmith_index_u32(u_input.c, 23u)]) & all(!global4[_wgslsmith_index_u32(u_input.c, 2u)]), !(func_2(vec2<i32>(1i, u_input.a.x)) || true)), select(abs(vec4<i32>(abs(u_input.b.x), ~956i, _wgslsmith_add_i32(-5422i, arg_0.c.x), abs(27037i))), _wgslsmith_div_vec4_i32(firstTrailingBit(countOneBits(u_input.a)), vec4<i32>(firstTrailingBit(u_input.b.x), 2147483647i, 1i, -1i)), !select(global4[_wgslsmith_index_u32(arg_0.a.x, 2u)], !global4[_wgslsmith_index_u32(95282u, 2u)], true)));
    var var_1 = !var_0.b.xz;
    var_1 = !(!func_4(Struct_2(_wgslsmith_mult_i32(-1i, -14141i), Struct_1(var_0.a, var_0.b, var_0.c), !var_0.b.x), arg_0, max(abs(4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 36232u), var_0.a.yw)), u_input.a.x < var_0.c.x).yz);
    let var_2 = max(select(~countOneBits(2147483647i) >> (firstTrailingBit(1u) % 32u), _wgslsmith_sub_i32(-_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(arg_0.c.x, -1i, global2.x, arg_0.c.x)), -2147483647i), any(!(!vec4<bool>(true, true, false, var_0.b.x)))), 1i);
    return _wgslsmith_f_op_f32(f32(-1f) * -255f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-208f, _wgslsmith_f_op_f32(-599f * _wgslsmith_f_op_f32(round(-739f))))) + -280f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(Struct_1(vec4<u32>(30335u, u_input.d, u_input.d, u_input.c), vec3<bool>(false, false, false), u_input.a)))))) - _wgslsmith_f_op_f32(func_1(Struct_1(~vec4<u32>(4294967295u, 26176u, 9413u, u_input.c), vec3<bool>(true, true, true), vec4<i32>(u_input.b.x, u_input.b.x, u_input.a.x, global2.x))))));
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(671f, 801f, 368f, -1024f), vec4<f32>(-827f, -604f, -1000f, 193f))))))));
    global1 = array<vec2<bool>, 23>();
    var var_1 = u_input.d;
    let var_2 = vec4<u32>(_wgslsmith_mod_u32(~(u_input.d >> (43820u % 32u)), u_input.c), u_input.c, 1u, 0u) << (min(~select(vec4<u32>(u_input.d, 4294967295u, 10509u, 4294967295u), vec4<u32>(u_input.d, 0u, u_input.d, u_input.c), true) >> (abs(vec4<u32>(4294967295u, u_input.d, 64829u, 7175u)) % vec4<u32>(32u)), abs(firstLeadingBit(vec4<u32>(u_input.c, 1219u, 4658u, 31997u)))) % vec4<u32>(32u));
    let var_3 = Struct_1(~var_2, !vec3<bool>(any(vec3<bool>(false, true, true)), true, false), vec4<i32>(_wgslsmith_mod_i32(u_input.a.x, ~(-52612i)), ~global2.x, 1i, -2147483647i) ^ (firstLeadingBit(-u_input.a) << (~(vec4<u32>(u_input.c, 4294967295u, var_2.x, u_input.c) << (var_2 % vec4<u32>(32u))) % vec4<u32>(32u))));
    let var_4 = 1i;
    let var_5 = ~firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(firstLeadingBit(var_2.x), 90280u), var_2.xy));
    global4 = array<vec4<bool>, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(max(-vec2<i32>(-26929i, global2.x), abs(~global2.yw << (vec2<u32>(var_2.x, 27263u) % vec2<u32>(32u)))), 0u);
}

