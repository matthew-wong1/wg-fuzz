struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: bool,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec4<u32>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31>;

var<private> global1: array<f32, 24> = array<f32, 24>(878f, 256f, -1112f, -1810f, 586f, 1000f, 742f, 448f, -962f, 2005f, 341f, 520f, 1817f, -1613f, 384f, -1138f, -1000f, -203f, 1063f, -463f, 1338f, 359f, -1107f, -293f);

var<private> global2: vec2<bool>;

var<private> global3: Struct_1 = Struct_1(vec3<i32>(20111i, -34671i, -42854i), vec2<f32>(-1203f, 547f), true, false, 1u);

var<private> global4: array<Struct_2, 31>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>) -> bool {
    global2 = vec2<bool>(false, true);
    global4 = array<Struct_2, 31>();
    global4 = array<Struct_2, 31>();
    global4 = array<Struct_2, 31>();
    let var_0 = true;
    return any(!vec2<bool>(global3.c, all(!vec4<bool>(true, arg_0.d, false, false))));
}

fn func_3() -> u32 {
    global4 = array<Struct_2, 31>();
    global3 = Struct_1(_wgslsmith_mod_vec3_i32((vec3<i32>(-1i, u_input.b.x, 5780i) ^ -global3.a) | vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global3.a.x, u_input.a.x, global0[_wgslsmith_index_u32(32477u, 31u)]), vec3<i32>(5941i, 402i, 1i)), 27085i, _wgslsmith_add_i32(global0[_wgslsmith_index_u32(29034u, 31u)], global0[_wgslsmith_index_u32(global3.e, 31u)])), select(vec3<i32>(~0i, u_input.b.x << (global3.e % 32u), 11440i), u_input.b, !vec3<bool>(global3.d, true, false))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1312f)))) * vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1391f))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~global3.e, 24u)]))), global2.x, false, global3.e);
    global2 = select(vec2<bool>(global3.d, ~(-21190i) <= _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -77196i), vec2<i32>(37600i, 23566i)), firstLeadingBit(u_input.a.x))), vec2<bool>(!global3.c, global2.x), !(global3.e > reverseBits(global3.e)));
    var var_0 = min(~select(vec3<u32>(global3.e, 0u, 4764u) >> (vec3<u32>(87942u, 0u, global3.e) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(global3.e, 103481u, global3.e), vec3<u32>(4294967295u, global3.e, global3.e)), !vec3<bool>(global3.d, global2.x, false)) >> ((~min(vec3<u32>(4294967295u, 4294967295u, global3.e), vec3<u32>(global3.e, global3.e, global3.e)) << (max(~vec3<u32>(0u, global3.e, 1u), reverseBits(vec3<u32>(0u, 79663u, global3.e))) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_div_u32(0u, firstLeadingBit(_wgslsmith_add_u32(1u, global3.e))), ~(~(~global3.e)), 1u));
    var var_1 = Struct_1(_wgslsmith_clamp_vec3_i32(global3.a, u_input.b, _wgslsmith_mult_vec3_i32(global3.a, _wgslsmith_add_vec3_i32(firstLeadingBit(global3.a), u_input.b))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(796f, global3.b.x) + _wgslsmith_f_op_vec2_f32(-global3.b)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(16907u, 24u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global3.b.x, global1[_wgslsmith_index_u32(global3.e, 24u)])))), !select(select(vec2<bool>(global3.c, true), vec2<bool>(false, true), global2.x), !vec2<bool>(true, global3.c), vec2<bool>(true, true)))), any(vec4<bool>(false, true, select(all(vec4<bool>(global3.c, global2.x, true, global2.x)), global2.x, false | global2.x), any(vec2<bool>(false, global2.x)))), global2.x, _wgslsmith_add_u32(0u, var_0.x | select(~var_0.x, _wgslsmith_sub_u32(global3.e, var_0.x), global3.c || global3.d)));
    return var_0.x;
}

fn func_2() -> vec3<u32> {
    let var_0 = vec4<bool>(global2.x, !global2.x, select(global2.x, !any(vec2<bool>(true, global2.x)) || global2.x, func_3() > 6310u), select(firstLeadingBit(-2147483647i), global0[_wgslsmith_index_u32(global3.e, 31u)], select(true, true, true)) > global0[_wgslsmith_index_u32(16003u, 31u)]);
    global4 = array<Struct_2, 31>();
    var var_1 = select(_wgslsmith_dot_vec2_i32(u_input.b.zy, u_input.b.xz), -global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(35871u, 1u), 31u)], true && all(select(!var_0.xx, vec2<bool>(true, true), !vec2<bool>(global3.c, global3.d))));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.b.x, -788f, _wgslsmith_f_op_f32(step(2628f, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(global3.e, 24u)], _wgslsmith_f_op_f32(abs(-1341f)))))), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(global3.b.x, _wgslsmith_f_op_f32(sign(-1076f)))), global3.b.x)), -502f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1322f))), true || any(!vec2<bool>(var_0.x, false))));
    global0 = array<i32, 31>();
    return select(~min(vec3<u32>(global3.e, _wgslsmith_add_u32(global3.e, 0u), global3.e), abs(select(vec3<u32>(1u, global3.e, global3.e), vec3<u32>(global3.e, 4294967295u, 17777u), false))), ~countOneBits(~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, global3.e, global3.e), vec3<u32>(global3.e, 31509u, 4294967295u))), !(!(!(global3.e != 4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 24>();
    global2 = vec2<bool>(false, true);
    var var_0 = ~vec2<u32>(~firstTrailingBit(firstLeadingBit(0u)), 0u);
    let var_1 = Struct_1(vec3<i32>(u_input.a.x, -15070i, _wgslsmith_mod_i32(max(global3.a.x, global3.a.x), firstTrailingBit(global0[_wgslsmith_index_u32(var_0.x, 31u)] >> (var_0.x % 32u)))), global3.b, true, func_1(Struct_2(false, -98442i, vec4<u32>(0u, 48340u, 0u, 45279u) << (vec4<u32>(global3.e, 24703u, global3.e, 16680u) % vec4<u32>(32u)), false), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(609f, global1[_wgslsmith_index_u32(global3.e, 24u)]) + -890f), global3.b.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(24105u, 0u, global3.e), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, global3.e, global3.e), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 10544u, var_0.x), vec3<u32>(global3.e, var_0.x, var_0.x))) << (func_2() % vec3<u32>(32u))));
    var var_2 = global4[_wgslsmith_index_u32(var_0.x << (0u % 32u), 31u)];
    global1 = array<f32, 24>();
    var_0 = vec2<u32>(func_3(), 23497u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(reverseBits(vec2<i32>(global0[_wgslsmith_index_u32(6317u, 31u)], 0i)), ~(vec2<i32>(global0[_wgslsmith_index_u32(var_2.c.x, 31u)], -31703i) | vec2<i32>(u_input.b.x, global3.a.x))) | -var_1.a.xy, 1403f, global3.a.x);
}

