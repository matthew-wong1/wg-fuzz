struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32 = 776u;

var<private> global2: array<f32, 19>;

var<private> global3: vec4<u32> = vec4<u32>(51975u, 17529u, 1u, 17373u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = global0.b;
    var var_1 = vec2<bool>(false, any(!select(vec2<bool>(true, true), vec2<bool>(false, false), true)));
    global2 = array<f32, 19>();
    var var_2 = _wgslsmith_dot_vec4_u32(reverseBits(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 15371u, global3.x, global3.x), vec4<u32>(996u, global0.a, arg_1.a, global0.a), vec4<u32>(u_input.a.x, global3.x, u_input.a.x, 15908u)))), firstTrailingBit(firstLeadingBit(vec4<u32>(arg_0.a, 1u, global0.a, 4201u))));
    global3 = ~(~(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a, 16193u, arg_1.a, 0u), vec4<u32>(0u, arg_1.a, 1u, global3.x)) & _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.a, global0.a, 0u, arg_0.a), vec4<u32>(arg_1.a, global0.a, 12733u, 41057u), vec4<u32>(global0.a, arg_0.a, global0.a, u_input.a.x)))) & ~_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a.x, 4294967295u, global3.x, global0.a), countOneBits(vec4<u32>(u_input.a.x, 1u, 4294967295u, u_input.a.x))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a, u_input.a.x, 4294967295u, arg_0.a), vec4<u32>(0u, global3.x, global0.a, arg_0.a)));
    return arg_0;
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec2<i32>, arg_3: bool) -> vec3<bool> {
    let var_0 = !(!(!(!select(vec4<bool>(arg_3, true, arg_3, true), vec4<bool>(false, false, true, false), false))));
    global2 = array<f32, 19>();
    let var_1 = false;
    var var_2 = func_2(Struct_1(global3.x, 496f, global0.c), Struct_1(firstLeadingBit(~arg_0), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(~u_input.a.x, 19u)], global2[_wgslsmith_index_u32(arg_1, 19u)])), reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_2.x, global0.c.x, -51301i, arg_2.x), vec4<i32>(-59757i, 2147483647i, -21919i, global0.c.x)))));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.b))) + _wgslsmith_f_op_f32(select(-2759f, _wgslsmith_div_f32(global2[_wgslsmith_index_u32(arg_0, 19u)], var_2.b), false)))), _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(1u, 19u)])), -737f);
    return select(var_0.zwy, select(!var_0.yzy, select(!var_0.xxw, !vec3<bool>(arg_3, var_1, false), false), true), true);
}

fn func_3(arg_0: vec3<bool>, arg_1: i32, arg_2: bool, arg_3: vec4<bool>) -> i32 {
    let var_0 = Struct_1(select(_wgslsmith_dot_vec4_u32(firstLeadingBit(select(vec4<u32>(69725u, 37147u, 28696u, u_input.a.x), vec4<u32>(1u, 28201u, global3.x, 0u), false)), ~vec4<u32>(global0.a, 68190u, global0.a, global0.a)), ~(~global3.x) >> (_wgslsmith_clamp_u32(~global0.a, ~global3.x, global3.x) % 32u), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -848f))), global0.c);
    global2 = array<f32, 19>();
    let var_1 = Struct_1(_wgslsmith_div_u32(var_0.a, firstLeadingBit(reverseBits(74u))), _wgslsmith_div_f32(-678f, _wgslsmith_f_op_f32(f32(-1f) * -860f)), firstLeadingBit(-vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.c.x, arg_1, -47653i, arg_1), global0.c), _wgslsmith_mult_i32(global0.c.x, arg_1), -6873i, ~(-1i))));
    var var_2 = var_0;
    var var_3 = var_2.a;
    return var_0.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~global0.a, _wgslsmith_clamp_u32(global3.x, 0u, 1u)), 19u)])), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f - global2[_wgslsmith_index_u32(12168u, 19u)]), _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~global3.zzw, global3.zwx), 19u)])))));
    var var_1 = Struct_1(191u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.b + _wgslsmith_f_op_f32(-global0.b)))) + _wgslsmith_div_f32(-835f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(997f, global0.b))))), -vec4<i32>(_wgslsmith_div_i32(global0.c.x, 1i), func_3(func_1(global3.x, 0u, global0.c.yx, true), -47171i, true, vec4<bool>(true, false, true, true)), -max(-1i, global0.c.x), global0.c.x));
    let var_2 = u_input.a.x;
    var var_3 = vec3<u32>(u_input.a.x, ~6212u >> ((global3.x >> (4294967295u % 32u)) % 32u), func_2(func_2(Struct_1(firstLeadingBit(1u), _wgslsmith_f_op_f32(min(1000f, 930f)), global0.c), func_2(func_2(Struct_1(0u, var_1.b, global0.c), Struct_1(global3.x, var_1.b, vec4<i32>(22802i, -2147483647i, 0i, -1i))), Struct_1(50103u, 857f, var_1.c))), Struct_1(~min(var_1.a, 37168u), -194f, _wgslsmith_add_vec4_i32(vec4<i32>(-1i, 2147483647i, global0.c.x, var_1.c.x), vec4<i32>(-2147483647i, 48102i, global0.c.x, -2147483647i)))).a);
    let x = u_input.a;
    s_output = StorageBuffer(abs(1u), global3.wyy, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-861f, global0.b, 1581f, global2[_wgslsmith_index_u32(1u, 19u)]) + vec4<f32>(622f, -1877f, -111f, var_1.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global0.b, 1092f, 565f) - vec4<f32>(var_1.b, global2[_wgslsmith_index_u32(var_2, 19u)], global2[_wgslsmith_index_u32(var_2, 19u)], global2[_wgslsmith_index_u32(var_2, 19u)])), vec4<bool>(false, false, false, true))))), _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -600f)))));
}

