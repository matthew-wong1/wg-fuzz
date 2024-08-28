struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<f32, 1>;

var<private> global2: Struct_1 = Struct_1(1u, vec2<i32>(i32(-2147483648), -34262i), vec3<f32>(-1729f, 1000f, -1287f));

var<private> global3: vec2<bool>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec3<f32> {
    let var_0 = Struct_1(abs(~43666u), vec2<i32>(28206i, global0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c.x, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~global2.a, 1u)]), global1[_wgslsmith_index_u32(4294967295u, 1u)])));
    return global2.c;
}

fn func_4(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = !(!vec3<bool>(true, any(vec2<bool>(global3.x, false)), false));
    global3 = var_0.yx;
    global0 = u_input.b;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.c.x)));
    let var_2 = ~u_input.c.yz;
    return vec3<bool>(false, global3.x, !var_0.x);
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    global3 = vec2<bool>(global2.c.x >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-978f + global2.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1762f)) + -688f) >= _wgslsmith_f_op_f32(-global2.c.x));
    var var_0 = func_4(Struct_1(u_input.a, vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(48597i, -1i, 63166i, global2.b.x), vec4<i32>(1i, -42605i, global2.b.x, u_input.b.x)), reverseBits(u_input.b)), u_input.d >> ((u_input.c.x | 31845u) % 32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) + global2.c)));
    let var_1 = vec4<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(-global2.b.x >> (u_input.c.x % 32u), -13282i & _wgslsmith_div_i32(26721i, u_input.b.x)), _wgslsmith_add_i32(~(~(-2147483647i)), _wgslsmith_clamp_i32(-u_input.b.x, -12565i, firstLeadingBit(4490i)))), _wgslsmith_clamp_i32(-_wgslsmith_div_i32(~2147483647i, ~global2.b.x), 65917i, _wgslsmith_mult_i32(1i, _wgslsmith_dot_vec2_i32(global0.wy, vec2<i32>(global0.x, u_input.b.x)))), _wgslsmith_div_i32(u_input.d, -27598i >> ((74766u | _wgslsmith_clamp_u32(1u, global2.a, 0u)) % 32u)), -170i);
    var var_2 = true;
    let var_3 = Struct_1(~u_input.c.x, -vec2<i32>(_wgslsmith_sub_i32(global2.b.x ^ var_1.x, 2147483647i), 2147483647i), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-643f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(118196u, 1u)] + global1[_wgslsmith_index_u32(3178u, 1u)]), _wgslsmith_f_op_f32(-global2.c.x)) - global2.c), _wgslsmith_f_op_vec3_f32(-global2.c), arg_0.x)));
    return var_3;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    return Struct_1(abs(_wgslsmith_mod_u32(~_wgslsmith_sub_u32(30939u, global2.a), select(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(4294967295u, global2.a, 11850u)), 124144u, true))), vec2<i32>(global0.x, -max(max(global2.b.x, u_input.d), _wgslsmith_mod_i32(-2147483647i, -40210i))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c.x, 1587f, global1[_wgslsmith_index_u32(1u, 1u)]) * arg_0.c)))))));
}

fn func_1(arg_0: f32) -> bool {
    global1 = array<f32, 1>();
    let var_0 = func_5(func_2(!select(vec3<bool>(true, true, true), !vec3<bool>(true, global3.x, false), true | global3.x)));
    global1 = array<f32, 1>();
    var var_1 = select(vec3<bool>(true, func_4(func_2(vec3<bool>(global3.x, false, true))).x, true), !vec3<bool>(_wgslsmith_mod_i32(global0.x, var_0.b.x) >= 1i, !global3.x, global3.x), global3.x);
    let var_2 = global3.x;
    return any(!vec2<bool>(!var_1.x, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.x;
    global3 = !(!(!select(vec2<bool>(global3.x, true), vec2<bool>(true, global3.x), global3.x && global3.x)));
    global0 = u_input.b;
    var_0 = u_input.b.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.x)), global1[_wgslsmith_index_u32(firstTrailingBit(40150u & global2.a), 1u)]), vec2<f32>(_wgslsmith_f_op_f32(round(-828f)), global2.c.x), select(vec2<bool>(all(vec4<bool>(global3.x, global3.x, true, global3.x)), func_1(-1595f)), !vec2<bool>(global3.x, false), select(!vec2<bool>(true, global3.x), !vec2<bool>(global3.x, global3.x), vec2<bool>(global3.x, global3.x))))) - _wgslsmith_f_op_vec2_f32(step(global2.c.xz, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.c.x))), -1000f))));
    let var_2 = func_2(func_4(Struct_1(~1u, firstLeadingBit(~global0.yx), global2.c)));
    let var_3 = 0u;
    let var_4 = !vec3<bool>(func_4(Struct_1(~var_3, ~vec2<i32>(u_input.b.x, global0.x), global2.c)).x, global3.x, var_2.a > _wgslsmith_mod_u32(firstTrailingBit(1u), countOneBits(1u)));
    let x = u_input.a;
    s_output = StorageBuffer(-127f, select(_wgslsmith_mult_vec3_u32(u_input.c >> (vec3<u32>(60036u, var_3, 4294967295u) % vec3<u32>(32u)), u_input.c) << (_wgslsmith_clamp_vec3_u32(abs(u_input.c), max(vec3<u32>(1u, 56240u, u_input.c.x), vec3<u32>(u_input.a, var_2.a, 0u)), ~vec3<u32>(5521u, 51249u, 15550u)) % vec3<u32>(32u)), u_input.c, !vec3<bool>(true || var_4.x, !global3.x, func_1(-1209f))));
}

