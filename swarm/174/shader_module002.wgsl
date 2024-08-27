struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11> = array<i32, 11>(63060i, 15013i, 6508i, 2147483647i, 31524i, 0i, i32(-2147483648), 0i, 36302i, -12829i, -1i);

var<private> global1: vec4<i32>;

var<private> global2: Struct_1 = Struct_1(vec3<bool>(true, false, false));

var<private> global3: array<Struct_2, 25>;

var<private> global4: array<Struct_2, 31>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: bool) -> vec2<u32> {
    var var_0 = u_input.e.x;
    let var_1 = global4[_wgslsmith_index_u32(_wgslsmith_add_u32(firstTrailingBit(_wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, 37259u), arg_1.c.x)), ~0u) & select(arg_1.c.x, ~_wgslsmith_div_u32(1u, arg_1.c.x | 66803u), true), 31u)];
    global3 = array<Struct_2, 25>();
    let var_2 = arg_1;
    let var_3 = -1000f;
    return vec2<u32>(0u, ~arg_1.d.x);
}

fn func_1(arg_0: f32, arg_1: i32) -> vec2<u32> {
    var var_0 = ~vec4<i32>(arg_1, 36538i, global0[_wgslsmith_index_u32(~(u_input.c.x << (0u % 32u)) ^ u_input.d.x, 11u)], u_input.a);
    global4 = array<Struct_2, 31>();
    global0 = array<i32, 11>();
    let var_1 = ~max(0u, u_input.d.x);
    global3 = array<Struct_2, 25>();
    return _wgslsmith_mult_vec2_u32(select(vec2<u32>(~4294967295u, ~1u), ~(~vec2<u32>(4294967295u, var_1) >> (abs(vec2<u32>(var_1, u_input.c.x)) % vec2<u32>(32u))), select(vec2<bool>(!global2.a.x, any(global2.a)), select(vec2<bool>(false, true), select(global2.a.yx, global2.a.zy, vec2<bool>(false, global2.a.x)), true), false)), func_2(!(!(!vec4<bool>(true, true, true, global2.a.x))), Struct_3(global3[_wgslsmith_index_u32(1u, 25u)], _wgslsmith_dot_vec4_i32(vec4<i32>(34410i, u_input.a, 46667i, global0[_wgslsmith_index_u32(var_1, 11u)]), select(vec4<i32>(-41715i, -23898i, global1.x, global0[_wgslsmith_index_u32(0u, 11u)]), vec4<i32>(arg_1, global1.x, var_0.x, 1i), vec4<bool>(false, global2.a.x, true, false))), countOneBits(firstLeadingBit(u_input.c.xw)), u_input.c.www), true));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: Struct_3, arg_3: f32) -> Struct_4 {
    return Struct_4(_wgslsmith_div_vec4_i32(select(~vec4<i32>(20519i, 34052i, u_input.b, arg_2.a.b.x) | ~vec4<i32>(16875i, 0i, 8419i, u_input.a), abs(countOneBits(vec4<i32>(0i, global1.x, arg_2.a.b.x, -3762i))), !(arg_2.a.c.a.x == false)), select(max(vec4<i32>(0i, -1i, 5119i, -24416i), vec4<i32>(global1.x, global0[_wgslsmith_index_u32(arg_0, 11u)], global0[_wgslsmith_index_u32(arg_2.c.x, 11u)], -40578i)) | abs(vec4<i32>(global0[_wgslsmith_index_u32(0u, 11u)], 2147483647i, global0[_wgslsmith_index_u32(arg_0, 11u)], 1i)), vec4<i32>(-1i) * -vec4<i32>(-2147483647i, -1i, global0[_wgslsmith_index_u32(arg_2.d.x, 11u)], arg_2.b), true)), arg_2.a.a, _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, ~arg_2.b, reverseBits(12861i), global1.x), firstTrailingBit(vec4<i32>(-16391i, 0i << (0u % 32u), 15696i, u_input.b)), countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 32085i, -2147483647i, global0[_wgslsmith_index_u32(39762u, 11u)]), vec4<i32>(global1.x, 2147483647i, -6730i, global1.x) & vec4<i32>(u_input.a, global1.x, global0[_wgslsmith_index_u32(1u, 11u)], u_input.b)))), global1.zxw, global3[_wgslsmith_index_u32(arg_2.d.x, 25u)]);
}

fn func_4(arg_0: Struct_4) -> Struct_1 {
    var var_0 = arg_0.b.x;
    global2 = Struct_1(select(global2.a, !vec3<bool>(10113i < global1.x, 1i == arg_0.c.x, any(vec4<bool>(global2.a.x, arg_0.e.c.a.x, global2.a.x, arg_0.e.c.a.x))), !func_3(~u_input.c.x, -817f, Struct_3(global4[_wgslsmith_index_u32(u_input.d.x, 31u)], -2147483647i, u_input.e, u_input.c.yyz), 425f).e.c.a));
    var_0 = _wgslsmith_div_f32(-265f, _wgslsmith_f_op_f32(f32(-1f) * -884f));
    var var_1 = 0i;
    global2 = func_3(31187u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.e.a.x + -1224f)), _wgslsmith_f_op_f32(-837f * -1360f))), Struct_3(global4[_wgslsmith_index_u32(u_input.e.x, 31u)], 1i, _wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(1u, 25231u)), reverseBits(u_input.d)) & u_input.d, ~u_input.c.zxx), _wgslsmith_div_f32(-359f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-800f - _wgslsmith_div_f32(1824f, -987f))))).e.c;
    return Struct_1(select(global2.a, !func_3(~47868u, arg_0.b.x, Struct_3(Struct_2(vec2<f32>(arg_0.e.a.x, 1173f), vec2<i32>(arg_0.a.x, 36759i), Struct_1(arg_0.e.c.a)), -1i, u_input.c.yy, u_input.c.xzy), _wgslsmith_f_op_f32(arg_0.e.a.x - arg_0.e.a.x)).e.c.a, select(arg_0.e.c.a.x, (arg_0.b.x >= 1000f) && !arg_0.e.c.a.x, _wgslsmith_clamp_i32(7893i, 6713i, -40549i) <= -2327i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(min(-(_wgslsmith_mult_i32(-1i, u_input.b) >> (_wgslsmith_mult_u32(u_input.c.x, 0u) % 32u)), 57997i));
    var var_1 = func_4(func_3(_wgslsmith_mod_u32(select(u_input.c.x, u_input.d.x, true) ^ _wgslsmith_mod_u32(35088u, 4294967295u), u_input.d.x), 1105f, Struct_3(global4[_wgslsmith_index_u32(firstTrailingBit(~u_input.e.x), 31u)], ~_wgslsmith_mod_i32(u_input.b, u_input.b), func_1(_wgslsmith_f_op_f32(select(-241f, -1000f, global2.a.x)), _wgslsmith_div_i32(2147483647i, global1.x)), u_input.c.xwz), 1220f));
    var var_2 = Struct_1(vec3<bool>(true, !any(global2.a.yz) || true, !var_1.a.x));
    global4 = array<Struct_2, 31>();
    var var_3 = !(global0[_wgslsmith_index_u32(~1u, 11u)] > ~firstLeadingBit(-2147483647i));
    var var_4 = Struct_1(!select(!global2.a, vec3<bool>(var_2.a.x, true, u_input.c.x <= u_input.d.x), !global2.a));
    var var_5 = ~global0[_wgslsmith_index_u32(~min(select(u_input.d.x, 95551u, false), ~28148u), 11u)] << (u_input.c.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(-686f)), ~abs(~vec2<u32>(4294967295u, 7128u) << (u_input.d % vec2<u32>(32u))));
}

