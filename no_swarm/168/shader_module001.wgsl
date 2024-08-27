struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec3<bool>(true, false, true), 13897u));

var<private> global1: Struct_1 = Struct_1(vec3<bool>(true, false, true), 5211u);

var<private> global2: vec4<i32>;

var<private> global3: vec2<i32>;

var<private> global4: Struct_1 = Struct_1(vec3<bool>(false, true, true), 80877u);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec2<i32> {
    var var_0 = vec4<u32>(92123u, select(global4.b, _wgslsmith_sub_u32(u_input.b & ~u_input.e.x, 1u), !any(global1.a.zy) | global4.a.x), _wgslsmith_add_u32(reverseBits(~_wgslsmith_div_u32(u_input.b, 4294967295u)), ~79362u & (global1.b << (4294967295u % 32u))), global4.b);
    var var_1 = Struct_1(vec3<bool>(true, global4.a.x, all(!global4.a) | global4.a.x), ~(~global4.b));
    global1 = global0[_wgslsmith_index_u32(max(~_wgslsmith_mod_u32(1u, global1.b), select(1u, max(~(~global1.b), firstTrailingBit(_wgslsmith_clamp_u32(global4.b, var_1.b, 0u))), global1.a.x)), 1u)];
    global2 = select(select(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, global3.x, 1i, 0i), vec4<i32>(-1i, 0i, -2147483647i, global3.x)) | ~vec4<i32>(global3.x, u_input.a, 45170i, global3.x), firstLeadingBit(vec4<i32>(u_input.d, -2147483647i, 21767i, u_input.a) << (vec4<u32>(4294967295u, 1u, var_1.b, var_1.b) % vec4<u32>(32u))), var_1.a.x & (var_1.b == 5268u)), firstTrailingBit(vec4<i32>(-2147483647i, global2.x, ~(-2147483647i), max(global3.x, 15340i))), select(vec4<bool>(global4.a.x, true & global1.a.x, global1.a.x, var_1.a.x), !select(vec4<bool>(global4.a.x, global4.a.x, false, var_1.a.x), vec4<bool>(global4.a.x, false, true, true), global1.a.x), vec4<bool>(all(vec2<bool>(global1.a.x, false)), select(global1.a.x, true, false), !global1.a.x, false))) << (vec4<u32>(~var_1.b, ~global4.b, global1.b, global1.b) % vec4<u32>(32u));
    var_0 = vec4<u32>(~(~firstLeadingBit(global1.b)), var_1.b, ~_wgslsmith_div_u32(global1.b, _wgslsmith_sub_u32(~var_1.b, 4294967295u << (u_input.e.x % 32u))), min(~global1.b, ~(global4.b | global4.b) & var_0.x));
    return vec2<i32>(-(i32(-1i) * -u_input.d), -(~_wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, u_input.a, 1i, -40999i) | vec4<i32>(global3.x, 5782i, u_input.d, u_input.a), _wgslsmith_mult_vec4_i32(vec4<i32>(global2.x, global3.x, -15977i, u_input.d), vec4<i32>(2147483647i, global2.x, u_input.d, -2147483647i)))));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(firstLeadingBit(_wgslsmith_add_i32(reverseBits(global2.x), _wgslsmith_add_i32(global2.x, arg_1))), ~global2.x), _wgslsmith_div_vec2_i32(-min(vec2<i32>(global2.x, 14878i) ^ global2.xy, countOneBits(vec2<i32>(-53458i, global2.x))), countOneBits(-func_3())));
    var var_1 = ~4294967295u;
    var var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(reverseBits(select(u_input.e, u_input.e, global1.a.x)) & vec4<u32>(reverseBits(arg_0.b), 90775u, 4294967295u, min(global1.b, global4.b)), u_input.e), 1u)];
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f))), 718f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -268f), _wgslsmith_f_op_f32(-1520f + 1196f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(581f, 1095f))))));
    let var_4 = Struct_1(!global1.a, 35864u);
    return global0[_wgslsmith_index_u32(firstLeadingBit(~29992u), 1u)];
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec3<u32>) -> bool {
    global1 = arg_0;
    let var_0 = arg_0;
    global3 = global2.zy;
    let var_1 = global0[_wgslsmith_index_u32(select(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(u_input.e, u_input.e), ~_wgslsmith_dot_vec3_u32(u_input.e.ywz, u_input.e.xwx) ^ ~(~var_0.b)), func_2(global0[_wgslsmith_index_u32(global4.b << (abs(38498u) % 32u), 1u)], 1i, arg_0).b, false), 1u)];
    global0 = array<Struct_1, 1>();
    return true;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(!vec3<bool>(true, arg_0.a.x, global4.a.x), 22820u);
    global4 = func_2(Struct_1(vec3<bool>(false, func_4(Struct_1(vec3<bool>(false, true, global1.a.x), 0u), vec4<bool>(global1.a.x, false, var_0.a.x, global4.a.x), u_input.e.zxy) | arg_0.a.x, global1.a.x), _wgslsmith_dot_vec4_u32(abs(_wgslsmith_mod_vec4_u32(u_input.e, vec4<u32>(arg_0.b, 1u, global4.b, u_input.b))), u_input.e)), ~(i32(-1i) * -(~u_input.a)), arg_0);
    var var_1 = 1i;
    global0 = array<Struct_1, 1>();
    let var_2 = vec4<bool>(arg_0.a.x, true, (global2.x ^ 1i) > global2.x, !(global4.a.x && all(func_2(arg_0, -8837i, arg_0).a)));
    return Struct_1(select(vec3<bool>(var_0.a.x, func_4(func_2(arg_0, global2.x, arg_0), vec4<bool>(global4.a.x, var_0.a.x, var_2.x, true), vec3<u32>(0u, 0u, 4294967295u)), false), global4.a, true), 4294967295u);
}

fn func_1(arg_0: f32, arg_1: f32) -> Struct_1 {
    global0 = array<Struct_1, 1>();
    global4 = Struct_1(global1.a, firstLeadingBit(4294967295u));
    let var_0 = func_5(Struct_1(vec3<bool>(func_4(func_2(global0[_wgslsmith_index_u32(u_input.c, 1u)], global2.x, Struct_1(global1.a, u_input.e.x)), !vec4<bool>(true, global4.a.x, global4.a.x, global1.a.x), u_input.e.zyz), true, false), ~54540u));
    let var_1 = _wgslsmith_dot_vec4_u32(u_input.e | abs(u_input.e), u_input.e);
    global2 = ~vec4<i32>(global3.x, u_input.a, 80194i, ~_wgslsmith_sub_i32(_wgslsmith_div_i32(global3.x, global3.x), _wgslsmith_clamp_i32(0i, global2.x, -53807i)));
    return Struct_1(vec3<bool>(true, false, (1i < _wgslsmith_mult_i32(global3.x, 963i)) == !(global3.x > global2.x)), 13059u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.x ^ -_wgslsmith_mult_i32(1i, global3.x);
    var var_1 = func_1(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -479f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-1847f)))));
    let var_2 = func_2(global0[_wgslsmith_index_u32(u_input.c, 1u)], -39243i, func_2(global0[_wgslsmith_index_u32(global1.b, 1u)], max(_wgslsmith_mult_i32(1i, -2147483647i), abs(abs(-20145i))), global0[_wgslsmith_index_u32(113507u, 1u)]));
    var var_3 = false;
    global4 = Struct_1(!func_2(func_5(Struct_1(vec3<bool>(false, var_2.a.x, true), u_input.b)), ~1i, var_2).a, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~var_1.b, _wgslsmith_div_u32(43373u, global4.b), u_input.b, _wgslsmith_mod_u32(global4.b, 21661u)), _wgslsmith_mult_vec4_u32(vec4<u32>(54626u, 4294967295u, global1.b, 25016u), vec4<u32>(var_1.b, global4.b, 30104u, 0u))), 4294967295u));
    let var_4 = Struct_1(global4.a, ~firstTrailingBit(_wgslsmith_dot_vec2_u32(u_input.e.xw, u_input.e.xw)));
    let x = u_input.a;
    s_output = StorageBuffer(~1i, select(vec2<u32>(1u, _wgslsmith_mult_u32(reverseBits(global1.b), countOneBits(18513u))), vec2<u32>(firstTrailingBit(global1.b), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.b, 25023u, 40776u, 1u), u_input.e), _wgslsmith_mod_vec4_u32(vec4<u32>(global4.b, 58681u, 53600u, global4.b), u_input.e))), func_2(var_4, ~var_0, Struct_1(var_4.a, 1u)).a.x & (~0u <= _wgslsmith_clamp_u32(u_input.b, 79717u, u_input.b))), -1283f);
}

