struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28>;

var<private> global1: array<Struct_1, 22>;

var<private> global2: array<u32, 19>;

var<private> global3: array<Struct_1, 17>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: bool, arg_3: i32) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(arg_0.c.c + arg_0.b.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.a, arg_0.c.c.x))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.c.x, arg_0.c.c.x)) * vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_0.b.a)), _wgslsmith_f_op_f32(arg_0.c.c.x - 1913f)))), vec2<f32>(-1432f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.c.x + -1123f) - -377f), arg_0.b.c.x))));
    var var_1 = arg_0;
    return firstTrailingBit(vec4<i32>(-1i, _wgslsmith_mod_i32(-global0[_wgslsmith_index_u32(1u, 28u)], u_input.a.x), firstTrailingBit(abs(36860i)), arg_3));
}

fn func_3(arg_0: u32) -> i32 {
    global3 = array<Struct_1, 17>();
    global0 = array<i32, 28>();
    let var_0 = vec4<i32>(firstLeadingBit(countOneBits(~(-77395i))), -38686i >> (~(~arg_0) % 32u), ~156i << (abs(global2[_wgslsmith_index_u32(min(global2[_wgslsmith_index_u32(arg_0, 19u)], 1u), 19u)]) % 32u), abs(-1i));
    let var_1 = _wgslsmith_mod_i32(var_0.x, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(var_0.ww, (u_input.a.zy >> (vec2<u32>(global2[_wgslsmith_index_u32(arg_0, 19u)], 66506u) % vec2<u32>(32u))) & ~vec2<i32>(u_input.a.x, 1i)), _wgslsmith_sub_i32(u_input.a.x, _wgslsmith_mult_i32(64771i | global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(abs(0u), 28u)]))));
    global2 = array<u32, 19>();
    return u_input.a.x;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<u32>) -> vec4<f32> {
    global1 = array<Struct_1, 22>();
    var var_0 = Struct_3(all(select(vec2<bool>(true, true), !(!vec2<bool>(true, arg_1.b)), !arg_1.b)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - arg_1.a) + 727f)), arg_1.b, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_2.a.zy), _wgslsmith_f_op_vec2_f32(abs(arg_2.d.c)), vec2<bool>(all(vec2<bool>(arg_1.b, true)), arg_1.b)))), global3[_wgslsmith_index_u32(countOneBits(min(31696u, _wgslsmith_mult_u32(4294967295u, arg_3.x) & _wgslsmith_div_u32(89231u, 1u))), 17u)]);
    var var_1 = ~(37154i & ~(~(~arg_2.b.x)));
    let var_2 = select(_wgslsmith_mult_vec4_u32(~vec4<u32>(arg_3.x, 4294967295u, 94443u, global2[_wgslsmith_index_u32(arg_3.x, 19u)]) >> (_wgslsmith_div_vec4_u32(vec4<u32>(arg_3.x, arg_3.x, global2[_wgslsmith_index_u32(78337u, 19u)], arg_3.x), ~vec4<u32>(1u, arg_3.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(27032u, 19u)], 19u)])) % vec4<u32>(32u)), countOneBits(select(~vec4<u32>(899u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_3.x, 19u)], 19u)], global2[_wgslsmith_index_u32(8220u, 19u)], arg_3.x), _wgslsmith_mod_vec4_u32(vec4<u32>(82030u, arg_3.x, 4294967295u, 0u), vec4<u32>(global2[_wgslsmith_index_u32(1u, 19u)], global2[_wgslsmith_index_u32(1u, 19u)], arg_3.x, 28955u)), vec4<bool>(arg_1.b, var_0.a, true, arg_2.c)))), vec4<u32>(_wgslsmith_div_u32(1u, global2[_wgslsmith_index_u32(1u, 19u)]), _wgslsmith_sub_u32(~7320u, arg_3.x), 0u, select(global2[_wgslsmith_index_u32(~10765u, 19u)], global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(arg_3.x & 64726u, 19u)], ~16577u), 19u)], arg_1.b)), !arg_2.c & !(!(arg_2.d.b || var_0.a)));
    let var_3 = Struct_1(506f, any(select(vec3<bool>(arg_2.d.b, true, arg_1.b), !select(vec3<bool>(arg_1.b, false, false), vec3<bool>(var_0.a, var_0.b.b, true), vec3<bool>(true, var_0.c.b, false)), true)), arg_1.c);
    return arg_2.a;
}

fn func_1(arg_0: f32, arg_1: bool) -> Struct_2 {
    global3 = array<Struct_1, 17>();
    global1 = array<Struct_1, 22>();
    global2 = array<u32, 19>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, global0[_wgslsmith_index_u32(13263u, 28u)], u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, global0[_wgslsmith_index_u32(67820u, 28u)], u_input.a.x, u_input.a.x)), ~func_2(Struct_3(true, Struct_1(arg_0, false, vec2<f32>(554f, -1000f)), Struct_1(913f, arg_1, vec2<f32>(arg_0, -593f))), vec2<u32>(1u, 3899u), arg_1, u_input.a.x), vec4<i32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~0u, 19u)], 28u)], func_3(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1185u, 19u)], 19u)], 19u)], 19u)]), ~u_input.a.x, u_input.a.x)), Struct_1(arg_0, arg_1, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(808f, 609f) - vec2<f32>(arg_0, 1528f)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-715f, arg_0), vec2<f32>(arg_0, -802f))))), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-498f, -1000f, arg_0, -677f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(253f, arg_0, arg_0, 1299f) - vec4<f32>(-1588f, 400f, arg_0, arg_0))), vec2<i32>(1i, 1i), any(!vec4<bool>(arg_1, arg_1, arg_1, arg_1)), Struct_1(-269f, select(false, arg_1, arg_1), vec2<f32>(-1038f, arg_0))), vec3<u32>(1u, 46232u, 1u))), select(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, abs(u_input.a.x)), -vec2<i32>(-17739i, 6164i), vec2<i32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(25657u, 8390u), 19u)], 28u)], i32(-1i) * -26911i)), ~abs(vec2<i32>(u_input.a.x, 7212i)), true), all(!vec2<bool>(arg_1, any(vec2<bool>(true, arg_1)))), Struct_1(arg_0, all(vec2<bool>(false, select(arg_1, arg_1, arg_1))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, arg_0), _wgslsmith_f_op_vec2_f32(vec2<f32>(-882f, arg_0) + vec2<f32>(1000f, arg_0)), any(vec2<bool>(arg_1, false)))))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(827f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) * -605f))), false, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, var_0.d.c.x)))), var_0.a.zy));
    return Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2819f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1000f)), 311f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(var_0.a.x + var_0.d.c.x)), var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.c.x + var_0.d.a), var_0.a.x)))), min(-var_0.b, u_input.a.xx), true, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0, var_0.a.x, true)) + 1000f), var_1.b, _wgslsmith_f_op_vec4_f32(func_4(-func_2(Struct_3(false, Struct_1(-1269f, var_1.b, var_0.a.ww), Struct_1(var_0.d.a, false, var_1.c)), vec2<u32>(0u, 66166u), true, -22201i), var_1, Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -604f, -288f, -1445f), var_0.a), u_input.a.yx & vec2<i32>(var_0.b.x, global0[_wgslsmith_index_u32(0u, 28u)]), !arg_1, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(16555u, 19u)], 19u)], global2[_wgslsmith_index_u32(67869u, 19u)]), 17u)]), _wgslsmith_div_vec3_u32(min(vec3<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(49022u, 19u)], 19u)], 19u)], 19u)], 19u)], 1u), vec3<u32>(4294967295u, 0u, global2[_wgslsmith_index_u32(0u, 19u)])), vec3<u32>(global2[_wgslsmith_index_u32(15238u, 19u)], global2[_wgslsmith_index_u32(16148u, 19u)], 0u)))).yw));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 17>();
    let var_0 = ~_wgslsmith_mult_vec2_u32(firstLeadingBit(~vec2<u32>(1917u, 0u) & select(vec2<u32>(90574u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(29525u, 19u)], 19u)]), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 19u)], 19u)], 19u)], 1u), false)), ~vec2<u32>(112737u, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(70015u, global2[_wgslsmith_index_u32(0u, 19u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 19u)], 19u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 19u)]), vec4<u32>(0u, 71891u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 19u)], 19u)], global2[_wgslsmith_index_u32(4294967295u, 19u)])), 19u)]));
    var var_1 = ~(~(~var_0.x));
    let var_2 = _wgslsmith_dot_vec4_i32(-select(-vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 28u)], u_input.a.x, u_input.a.x, 1i), -vec4<i32>(0i, 0i, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 19u)], 28u)], 36141i), all(vec2<bool>(true, false))) >> (vec4<u32>(1u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 6006u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(26037u, 19u)], 19u)]), vec3<u32>(24166u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 19u)], 19u)], 19u)], 19u)], 1u)), reverseBits(global2[_wgslsmith_index_u32(var_0.x, 19u)])), 39900u, _wgslsmith_mod_u32(_wgslsmith_add_u32(32033u, 1u), ~29474u)) % vec4<u32>(32u)), vec4<i32>(global0[_wgslsmith_index_u32(abs(global2[_wgslsmith_index_u32(60271u, 19u)]), 28u)] ^ global0[_wgslsmith_index_u32(~0u, 28u)], ~(2147483647i | global0[_wgslsmith_index_u32(0u, 28u)]), -52817i, -u_input.a.x) & (vec4<i32>(-u_input.a.x, min(-1i, u_input.a.x), 35169i, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, global2[_wgslsmith_index_u32(1u, 19u)], global2[_wgslsmith_index_u32(13461u, 19u)]), vec3<u32>(4294967295u, 0u, 35056u)), 28u)]) & vec4<i32>(u_input.a.x, _wgslsmith_mult_i32(2147483647i, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(48791u, 19u)], 28u)]), ~(-2147483647i), 2147483647i)));
    global0 = array<i32, 28>();
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1966f, 1934f, 340f, 158f)), vec4<f32>(1f, 1f, 1f, 1f), vec4<bool>(true, false, false, true)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(741f, 489f, -417f, 487f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-662f, -1220f, 676f, -204f) + vec4<f32>(748f, -743f, -1385f, 131f))), true))), vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-911f * -655f)), -1450f, _wgslsmith_f_op_f32(-1655f - _wgslsmith_div_f32(-934f, -302f))));
    var var_4 = func_1(-153f, true);
    var var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mult_vec2_i32((u_input.a.xy << (var_0 % vec2<u32>(32u))) >> (vec2<u32>(var_0.x, 1u) % vec2<u32>(32u)), u_input.a.xy));
}

