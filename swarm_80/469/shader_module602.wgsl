struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: Struct_1,
    d: f32,
    e: vec2<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(-7249i), Struct_2(62456i), Struct_2(0i), Struct_2(0i), Struct_2(2147483647i), Struct_2(-14334i), Struct_2(-24307i), Struct_2(2147483647i), Struct_2(1i), Struct_2(23571i), Struct_2(-10455i), Struct_2(-15076i), Struct_2(13037i), Struct_2(1i), Struct_2(2147483647i));

var<private> global1: Struct_4 = Struct_4(vec4<i32>(2147483647i, 44962i, -1874i, -27678i), vec3<bool>(false, false, false));

var<private> global2: array<f32, 2>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> f32 {
    let var_0 = global1.b;
    global2 = array<f32, 2>();
    var var_1 = Struct_3(u_input.a.wzy & _wgslsmith_sub_vec3_i32(firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(33710i, u_input.a.x, 2147483647i), global1.a.zyx)), min(u_input.a.xwz, global1.a.xyx & global1.a.yyz)), _wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.a.x, -2147483647i << (0u % 32u), 0i), -_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.a.x), u_input.a.ww), -2147483647i)), Struct_1(vec2<bool>(false, true & (-898f <= global2[_wgslsmith_index_u32(u_input.c.x, 2u)])), vec3<i32>(u_input.a.x, global1.a.x, 24377i)), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(~u_input.d.x, 2u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-540f, -876f))), select(select(select(vec2<bool>(global1.b.x, true), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(global1.b.x, var_0.x), false), false), select(var_0.zy, !var_0.yy, select(vec2<bool>(false, var_0.x), vec2<bool>(global1.b.x, true), global1.b.x)), global1.b.zz), global1.b.zz, select(!(!vec2<bool>(global1.b.x, var_0.x)), var_0.xy, !any(var_0.yz))));
    var var_2 = global1.b.x;
    var var_3 = Struct_4(firstLeadingBit(-(~global1.a)), select(vec3<bool>(true, !(var_1.d > global2[_wgslsmith_index_u32(1u, 2u)]), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 2u)]) != _wgslsmith_f_op_f32(min(-120f, -329f))), global1.b, global1.b));
    return -115f;
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: vec4<bool>, arg_3: bool) -> vec3<bool> {
    var var_0 = Struct_4(vec4<i32>(u_input.a.x, 14869i, firstTrailingBit(firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(global1.a.x, global1.a.x)))), select(global1.a.x << (0u % 32u), 1i, any(!vec2<bool>(global1.b.x, false)))), global1.b);
    var var_1 = Struct_3(~countOneBits(_wgslsmith_sub_vec3_i32(arg_1.a.www, vec3<i32>(u_input.a.x, global1.a.x, -10784i)) ^ -global1.a.zyy), ~(_wgslsmith_dot_vec4_i32(select(u_input.a, global1.a, vec4<bool>(true, global1.b.x, true, global1.b.x)), arg_1.a << (arg_0 % vec4<u32>(32u))) ^ u_input.a.x), Struct_1(global1.b.zz, vec3<i32>(_wgslsmith_mult_i32(-arg_1.a.x, abs(arg_1.a.x)), _wgslsmith_sub_i32(_wgslsmith_sub_i32(0i, 29118i), _wgslsmith_div_i32(u_input.a.x, arg_1.a.x)), select(-3812i, 2147483647i, !arg_1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_0.x, 2u)] - 1000f)))), vec2<bool>(false, -149f > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_0.x, 2u)])))));
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + global2[_wgslsmith_index_u32(4294967295u, 2u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(26031u, arg_0.x), arg_0.wx), 2u)] - _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(0u, 2u)], global2[_wgslsmith_index_u32(u_input.b.x, 2u)]))) * _wgslsmith_f_op_f32(func_3())), 428f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(-1615f, var_1.d, 418f), vec3<f32>(403f, -450f, -1000f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(2230f, var_1.d, global2[_wgslsmith_index_u32(1u, 2u)]), vec3<f32>(1991f, 1646f, var_1.d))))))));
    let var_3 = 20586u;
    global0 = array<Struct_2, 15>();
    return !(!arg_2.yzw);
}

fn func_1(arg_0: vec3<i32>) -> vec3<f32> {
    var var_0 = true;
    global1 = Struct_4(firstLeadingBit(global1.a), select(global1.b, select(select(select(vec3<bool>(global1.b.x, global1.b.x, global1.b.x), vec3<bool>(global1.b.x, global1.b.x, global1.b.x), true), func_2(vec4<u32>(u_input.d.x, u_input.b.x, u_input.b.x, u_input.b.x), Struct_4(global1.a, global1.b), vec4<bool>(global1.b.x, false, global1.b.x, false), false), true), global1.b, !global1.b), !(!all(vec4<bool>(false, false, false, true)))));
    global2 = array<f32, 2>();
    var var_1 = true;
    global0 = array<Struct_2, 15>();
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(696f, 447f, 331f)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 2u)], global2[_wgslsmith_index_u32(u_input.d.x, 2u)], global2[_wgslsmith_index_u32(0u, 2u)]) + vec3<f32>(1526f, 166f, 553f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-922f, -1939f, global2[_wgslsmith_index_u32(u_input.d.x, 2u)]) - vec3<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 2u)], -127f, 1627f)), u_input.a.x >= -2147483647i)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(0u, 2u)], 1122f, 555f) - vec3<f32>(-1097f, global2[_wgslsmith_index_u32(24235u, 2u)], global2[_wgslsmith_index_u32(1u, 2u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-122f, 742f, global2[_wgslsmith_index_u32(u_input.d.x, 2u)]))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-499f, 1000f, -578f)) * _wgslsmith_f_op_vec3_f32(func_1(vec3<i32>(global1.a.x, u_input.a.x, 2147483647i)))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-845f, -611f, 321f) + vec3<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 2u)], 430f, -1000f)))))) + vec3<f32>(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(~u_input.b.x, 2u)], global2[_wgslsmith_index_u32(u_input.b.x, 2u)]), _wgslsmith_f_op_f32(-1864f - global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.d.x, u_input.d.x), 2u)]), 2080f));
    var var_1 = 17397u;
    let var_2 = true;
    var var_3 = Struct_3(global1.a.yzx, 14412i, Struct_1(!global1.b.yz, ~(-u_input.a.xxx) ^ (vec3<i32>(u_input.a.x, 7917i, -15587i) | vec3<i32>(-25119i, u_input.a.x, -36214i))), global2[_wgslsmith_index_u32(u_input.c.x, 2u)], select(!(!(!global1.b.zx)), func_2(vec4<u32>(u_input.b.x, u_input.d.x, ~0u, _wgslsmith_mod_u32(u_input.d.x, 4294967295u)), Struct_4(u_input.a, vec3<bool>(false, global1.b.x, var_2)), !vec4<bool>(var_2, false, false, global1.b.x), true).zx, true));
    let var_4 = ~u_input.c.x;
    var_3 = Struct_3(var_3.a, i32(-1i) * -1i, Struct_1(!global1.b.zy, global1.a.yzz), _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c, _wgslsmith_clamp_vec2_u32(~u_input.c, _wgslsmith_mult_vec2_u32(u_input.c, u_input.d), u_input.b | vec2<u32>(u_input.c.x, u_input.d.x))), 2u)])), var_3.e);
    global2 = array<f32, 2>();
    let var_5 = Struct_2(-9029i);
    let x = u_input.a;
    s_output = StorageBuffer(var_4, abs(var_4), var_5.a, ~(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_4, 1u, 1u, var_4), vec4<u32>(var_4, 59170u, 52959u, 1u)))));
}

