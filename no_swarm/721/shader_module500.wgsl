struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32;

var<private> global2: array<Struct_2, 1>;

var<private> global3: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(Struct_1(-10681i, vec3<i32>(51049i, -5279i, 1i), vec3<i32>(-71335i, -13995i, -34969i))), Struct_2(Struct_1(-1i, vec3<i32>(1i, 41507i, -24749i), vec3<i32>(26370i, 0i, 2147483647i))), Struct_2(Struct_1(2147483647i, vec3<i32>(0i, -16247i, 1i), vec3<i32>(13091i, 13037i, 2147483647i))), Struct_2(Struct_1(2147483647i, vec3<i32>(1i, 0i, 18510i), vec3<i32>(-43571i, 0i, 1i))), Struct_2(Struct_1(-1i, vec3<i32>(-63309i, 10999i, 72539i), vec3<i32>(0i, -1i, i32(-2147483648)))), Struct_2(Struct_1(21625i, vec3<i32>(-10094i, -34112i, 2147483647i), vec3<i32>(2147483647i, 22612i, 13492i))));

var<private> global4: array<Struct_2, 22>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_3) -> vec3<i32> {
    global2 = array<Struct_2, 1>();
    global0 = Struct_1(_wgslsmith_div_i32(u_input.c.x, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(49569i, -29179i, global0.b.x, -10821i), -vec4<i32>(2147483647i, arg_1.a.c.x, global0.c.x, arg_1.a.b.x)), _wgslsmith_mod_vec4_i32(-vec4<i32>(global0.c.x, arg_1.a.b.x, u_input.c.x, global0.a), u_input.c >> (vec4<u32>(1u, u_input.e, 18681u, 41718u) % vec4<u32>(32u))))), abs(vec3<i32>(-1i) * -vec3<i32>(global0.a, arg_1.a.a, 5347i)), ~(select(vec3<i32>(arg_1.a.b.x, -1i, global0.b.x), abs(arg_2.b), select(true, false, false)) & arg_1.a.b));
    global3 = array<Struct_2, 6>();
    var var_0 = -226f;
    global3 = array<Struct_2, 6>();
    return max(vec3<i32>(47412i, firstLeadingBit(arg_1.a.b.x), global0.a), _wgslsmith_add_vec3_i32(abs(arg_0.a.b), countOneBits(vec3<i32>(_wgslsmith_dot_vec3_i32(arg_2.b, arg_2.b), -1i, arg_0.a.b.x))));
}

fn func_2() -> vec2<bool> {
    global3 = array<Struct_2, 6>();
    global4 = array<Struct_2, 22>();
    global0 = Struct_1(global0.c.x, ~max(vec3<i32>(_wgslsmith_mod_i32(u_input.c.x, global0.c.x), countOneBits(u_input.c.x), countOneBits(1i)), func_3(global3[_wgslsmith_index_u32(42064u, 6u)], global4[_wgslsmith_index_u32(0u, 22u)], Struct_3(vec3<f32>(272f, 172f, 144f), global0.b, false, -1679f))), -(reverseBits(global0.b) | min(vec3<i32>(-9710i, u_input.c.x, global0.b.x), vec3<i32>(-2147483647i, 0i, u_input.c.x))) | max(vec3<i32>(-44858i, -20568i, -11329i), func_3(Struct_2(Struct_1(-37960i, u_input.c.zzw, vec3<i32>(3286i, 2147483647i, 33686i))), global2[_wgslsmith_index_u32(abs(1u), 1u)], Struct_3(vec3<f32>(-1000f, 655f, 1592f), u_input.c.wxx, true, 2034f))));
    global3 = array<Struct_2, 6>();
    var var_0 = vec2<i32>(select(_wgslsmith_mod_i32(u_input.c.x, -1i), global0.b.x, true), -(i32(-1i) * -1i));
    return select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), vec2<bool>(any(vec3<bool>(false, false, false)), false), vec2<bool>(any(vec4<bool>(false, true, true, true)), true)), vec2<bool>(any(select(vec4<bool>(true, false, false, false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false)), false)), false), !((_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, u_input.a, u_input.e), vec3<u32>(16144u, u_input.e, u_input.a)) > u_input.b) && any(vec4<bool>(true, false, false, true))));
}

fn func_1(arg_0: f32, arg_1: vec3<i32>) -> bool {
    var var_0 = !func_2();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -773f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(arg_0)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + arg_0) * _wgslsmith_f_op_f32(f32(-1f) * -211f)))));
    global3 = array<Struct_2, 6>();
    var var_2 = Struct_2(Struct_1(_wgslsmith_add_i32(2147483647i, -global0.c.x << (abs(u_input.a) % 32u)), global0.c, firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(1i, global0.a, 9314i), u_input.c.www))));
    var_2 = Struct_2(var_2.a);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_2, 22>();
    global3 = array<Struct_2, 6>();
    global3 = array<Struct_2, 6>();
    global1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-861f))))));
    global3 = array<Struct_2, 6>();
    let var_0 = Struct_1(_wgslsmith_add_i32(-29022i, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c.x, u_input.c.x, global0.b.x, u_input.c.x), u_input.c)), global0.b, ~_wgslsmith_sub_vec3_i32(global0.b, vec3<i32>(2147483647i, max(11849i, 0i), ~u_input.c.x)));
    let var_1 = select(4294967295u, ~_wgslsmith_dot_vec4_u32(min(vec4<u32>(13516u, u_input.a, 27986u, u_input.e), vec4<u32>(3067u, u_input.b, 14291u, 44080u)) >> (~vec4<u32>(u_input.e, 1u, u_input.b, 4294967295u) % vec4<u32>(32u)), abs(firstTrailingBit(vec4<u32>(4294967295u, u_input.d, u_input.b, u_input.e)))), func_1(-2257f, global0.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1533f, -527f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-191f + -405f), _wgslsmith_f_op_f32(235f + -1000f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1703f - -309f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1124f, -1000f, -658f, -1412f) + vec4<f32>(1193f, -214f, -793f, 853f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(691f, 315f, 1000f, 900f), vec4<f32>(368f, -1823f, -514f, 479f), false)))), vec4<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true)), func_1(539f, global0.b), true, true))));
}

