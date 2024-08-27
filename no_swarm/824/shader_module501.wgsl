struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26>;

var<private> global1: i32 = -1i;

var<private> global2: Struct_2;

var<private> global3: Struct_2;

var<private> global4: array<vec2<i32>, 9>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec2<bool>) -> i32 {
    var var_0 = global2.a;
    let var_1 = false;
    var var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(~(vec3<i32>(global3.d.x, 1i, u_input.c) << (vec3<u32>(29273u, 4294967295u, 51560u) % vec3<u32>(32u))), _wgslsmith_div_vec3_i32(u_input.d, vec3<i32>(u_input.c, 1i, global0[_wgslsmith_index_u32(var_0.a.x, 26u)]))), max(vec3<i32>(-1i, ~2147483647i, global0[_wgslsmith_index_u32(98547u, 26u)]), vec3<i32>(-1i) * -vec3<i32>(global3.d.x, global0[_wgslsmith_index_u32(global3.a.a.x, 26u)], global2.c))), ~(-(~u_input.d)));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.b, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1852f, -1454f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global3.a.d)))), !(!vec2<bool>(true, var_1)))) - global2.a.b);
    var_3 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(365f, global2.b)) - vec2<f32>(_wgslsmith_f_op_f32(floor(-629f)), 912f))));
    return global0[_wgslsmith_index_u32(abs(global3.a.a.x), 26u)];
}

fn func_2() -> i32 {
    let var_0 = ~_wgslsmith_clamp_u32(~global3.a.a.x, countOneBits(~u_input.a.x), ~countOneBits(~global2.a.a.x));
    global1 = -9604i;
    let var_1 = 2501f;
    global4 = array<vec2<i32>, 9>();
    let var_2 = Struct_2(global2.a, global2.a.b.x, ~u_input.d.x, _wgslsmith_add_vec2_i32(~global2.d << (global3.a.a.zz % vec2<u32>(32u)), -(max(u_input.d.xx, u_input.d.zz) & u_input.d.zz)));
    return max(_wgslsmith_mod_i32(max(1i, global0[_wgslsmith_index_u32(u_input.a.x, 26u)]) | func_3(vec2<bool>(false, true)), global0[_wgslsmith_index_u32(reverseBits(15522u), 26u)]), ~global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.a.x, global2.a.a.x), 26u)]) ^ -66851i;
}

fn func_1() -> Struct_1 {
    var var_0 = u_input.b;
    var var_1 = vec3<i32>(func_2() & (0i >> (1u % 32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, 0i & u_input.c, ~(-2147483647i), -5187i), countOneBits(~vec4<i32>(-10117i, global3.c, global2.d.x, 0i))), global3.c) << (~vec3<u32>(4294967295u, ~38793u, _wgslsmith_div_u32(~u_input.a.x, 1u)) % vec3<u32>(32u));
    return Struct_1(_wgslsmith_clamp_vec3_u32(select(reverseBits(global2.a.a), vec3<u32>(global3.a.a.x << (u_input.b % 32u), global2.a.a.x, global2.a.a.x), any(vec3<bool>(true, true, true))), select(_wgslsmith_clamp_vec3_u32(firstTrailingBit(global2.a.a), vec3<u32>(0u, 4294967295u, global2.a.a.x), vec3<u32>(global3.a.a.x, global2.a.a.x, 1u)), ~vec3<u32>(13931u, global3.a.a.x, global2.a.a.x), false), vec3<u32>(global3.a.a.x | 22746u, global3.a.a.x, ~global2.a.a.x) ^ ((vec3<u32>(4294967295u, 1u, u_input.b) & global2.a.a) << (global3.a.a % vec3<u32>(32u)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a.d, _wgslsmith_f_op_f32(-1f)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global2.a.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(-842f, -1000f) * global2.a.b))), _wgslsmith_f_op_vec2_f32(global2.a.c.yy - global3.a.b))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(global3.a.c - global2.a.c), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global2.a.b.x, global3.a.d, global3.b))))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b)))), _wgslsmith_f_op_f32(-243f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -1573f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.b.x) - global3.a.d))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.a;
    global4 = array<vec2<i32>, 9>();
    var var_1 = Struct_2(func_1(), -104f, _wgslsmith_clamp_i32(~27300i, i32(-1i) * -250i, 85875i), select(global2.d, _wgslsmith_div_vec2_i32(vec2<i32>(global2.d.x, func_3(vec2<bool>(true, true))), ~(-u_input.d.yy)), select(true, true, true)));
    var var_2 = Struct_2(global2.a, _wgslsmith_f_op_f32(-var_0.e), _wgslsmith_add_i32(~(-(u_input.c << (var_0.a.x % 32u))), global2.d.x), _wgslsmith_div_vec2_i32(~(~u_input.d.yy), ~vec2<i32>(12393i, _wgslsmith_sub_i32(-371i, u_input.c))));
    let var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, 1380f, var_1.a.e, var_2.b)) - vec4<f32>(var_2.b, -594f, var_2.a.c.x, -1592f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2.a.e, global3.a.d, -1329f, 305f), vec4<f32>(var_0.c.x, var_1.a.e, -1000f, global3.b))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.e)), global2.b, _wgslsmith_f_op_f32(select(1301f, _wgslsmith_f_op_f32(var_1.a.b.x + -1488f), true)), global2.a.e)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(900f, -587f, var_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.d) - -1000f)), vec4<f32>(1173f, var_0.d, _wgslsmith_f_op_f32(global3.a.c.x + _wgslsmith_f_op_f32(select(702f, var_1.b, true))), _wgslsmith_div_f32(-1427f, 1f)), !(46755u == var_1.a.a.x)))));
    let var_4 = ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(global3.a.a.x, 56387u, u_input.a.x, global3.a.a.x) | vec4<u32>(4294967295u, global2.a.a.x, 6610u, 1u), ~vec4<u32>(global2.a.a.x, var_2.a.a.x, u_input.b, 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(global3.a.a.x, global2.a.a.x, 24068u, 1u), vec4<u32>(global2.a.a.x, global3.a.a.x, 25433u, global3.a.a.x)))) | vec4<u32>(46251u, 68918u, _wgslsmith_add_u32(var_2.a.a.x, max(u_input.a.x, var_2.a.a.x & var_1.a.a.x)), 36865u);
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.d, u_input.d, vec3<bool>(true, (1u ^ global3.a.a.x) == 0u, true)), 1i << (min(9051u, (57875u ^ global2.a.a.x) << ((global3.a.a.x | 0u) % 32u)) % 32u), var_3.x);
}

