struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: vec2<bool>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 28>;

var<private> global1: Struct_2;

var<private> global2: vec4<i32> = vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, 28058i);

var<private> global3: Struct_4 = Struct_4(0u, Struct_1(26351u), 0i, vec2<bool>(true, true), vec4<bool>(false, true, true, true));

var<private> global4: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(43900u), Struct_1(4294967295u), Struct_1(20847u), Struct_1(1u), Struct_1(4294967295u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<u32>) -> f32 {
    global1 = Struct_2(global1.b.x, vec4<f32>(-893f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.a, _wgslsmith_div_f32(-436f, global1.a))) * _wgslsmith_f_op_f32(-global1.a)), _wgslsmith_div_f32(-767f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), global1.a));
    var var_0 = arg_1.x;
    let var_1 = 1u;
    global2 = _wgslsmith_clamp_vec4_i32(vec4<i32>(17077i, global3.c, u_input.a.x, global3.c), vec4<i32>(firstLeadingBit(_wgslsmith_sub_i32(_wgslsmith_mult_i32(global3.c, 83402i), 0i >> (arg_1.x % 32u))), -(~global3.c), -2147483647i, min(u_input.a.x, _wgslsmith_div_i32(~1i, abs(global3.c)))), -abs(select(vec4<i32>(0i, u_input.a.x, global3.c, global2.x), vec4<i32>(-24439i, global2.x, -17480i, -29908i), global3.e) >> (vec4<u32>(arg_1.x, var_1, 1945u, 1u) % vec4<u32>(32u))));
    let var_2 = vec3<u32>(select(var_1, _wgslsmith_add_u32(~abs(4294967295u), ~(u_input.b.x | 4294967295u)), arg_1.x >= countOneBits(0u)), u_input.b.x, firstTrailingBit(global3.b.a));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1191f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(447f - _wgslsmith_f_op_f32(trunc(1359f))))));
}

fn func_2(arg_0: f32, arg_1: i32) -> bool {
    global0 = array<vec4<u32>, 28>();
    var var_0 = Struct_1(13319u);
    global1 = Struct_2(arg_0, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3(global3.e.xz, _wgslsmith_mod_vec4_u32(global0[_wgslsmith_index_u32(2987u, 28u)], vec4<u32>(1u, global3.b.a, 1u, var_0.a)))), arg_0, _wgslsmith_f_op_f32(sign(arg_0)), arg_0) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1235f, _wgslsmith_f_op_f32(315f * global1.a), _wgslsmith_f_op_f32(ceil(1080f)), global1.a))));
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(arg_0)), arg_0));
    let var_2 = global3.e;
    return global3.d.x;
}

fn func_4(arg_0: f32, arg_1: vec3<f32>, arg_2: vec3<bool>) -> vec4<bool> {
    var var_0 = arg_2.xx;
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0))), abs(~(~global2.wxy)), Struct_2(_wgslsmith_f_op_f32(func_3(select(select(vec2<bool>(false, false), vec2<bool>(true, true), arg_2.x), vec2<bool>(true, var_0.x), arg_2.xy), global0[_wgslsmith_index_u32(countOneBits(u_input.b.x), 28u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(489f, _wgslsmith_f_op_f32(f32(-1f) * -585f), _wgslsmith_f_op_f32(round(arg_0)), arg_0))));
    let var_2 = arg_2;
    var var_3 = vec4<bool>(!(all(vec2<bool>(true, true)) == any(select(vec3<bool>(arg_2.x, var_2.x, arg_2.x), vec3<bool>(arg_2.x, arg_2.x, true), arg_2))), true, all(select(vec2<bool>(any(global3.e), arg_2.x), global3.e.xy, vec2<bool>(238f >= arg_0, false))), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-130f + arg_1.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1946f, arg_1.x)) * _wgslsmith_f_op_f32(abs(var_1.a)))), firstLeadingBit(_wgslsmith_sub_i32(global2.x, abs(var_1.b.x)))));
    let var_4 = vec4<u32>(~(~_wgslsmith_add_u32(37075u, u_input.b.x)), global3.b.a, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~(~u_input.b), u_input.b), u_input.b), u_input.b.x | 4294967295u);
    return !(!global3.e);
}

fn func_5(arg_0: bool, arg_1: Struct_3, arg_2: vec4<bool>) -> Struct_4 {
    global3 = Struct_4(abs(u_input.b.x), global4[_wgslsmith_index_u32((u_input.b.x | select(1u, ~8602u, !arg_2.x)) >> (global3.a % 32u), 5u)], abs(~_wgslsmith_add_i32(arg_1.b.x, arg_1.b.x)), arg_2.yy, !global3.e);
    global1 = arg_1.c;
    let var_0 = Struct_1(29423u);
    global2 = ~firstLeadingBit(-(vec4<i32>(-1i) * -vec4<i32>(arg_1.b.x, global3.c, 0i, 77261i)));
    var var_1 = vec4<bool>(arg_2.x, arg_0, arg_2.x, true);
    return Struct_4(global3.a, Struct_1(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec3_u32(u_input.b, u_input.b) >> (max(var_0.a, 13096u) % 32u))), -1i, var_1.xy, !vec4<bool>(global3.e.x, any(select(var_1.xzx, global3.e.ywy, false)), any(select(vec4<bool>(arg_2.x, arg_0, global3.e.x, arg_2.x), vec4<bool>(false, arg_0, true, var_1.x), global3.e)), var_1.x));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: bool, arg_3: bool) -> vec4<bool> {
    global4 = array<Struct_1, 5>();
    let var_0 = func_5(global3.e.x, arg_1, func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -154f), global1.a), _wgslsmith_f_op_vec3_f32(global1.b.xzw * global1.b.xzx), vec3<bool>(!global3.e.x, false, func_2(-1023f, -19773i) & global3.e.x)));
    let var_1 = ~(~(~vec4<u32>(0u, global3.b.a, 32732u, u_input.b.x) ^ vec4<u32>(var_0.b.a, var_0.a, 45930u, u_input.b.x)) << (~vec4<u32>(global3.b.a >> (21704u % 32u), 501u, _wgslsmith_mult_u32(global3.b.a, 41104u), 0u) % vec4<u32>(32u)));
    global4 = array<Struct_1, 5>();
    global4 = array<Struct_1, 5>();
    return global3.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(global1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2088f - 398f), -1123f)) * global1.a));
    global2 = -(~(~select(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, global2.x, global3.c, -38751i), vec4<i32>(u_input.a.x, 36088i, global3.c, global3.c)), abs(vec4<i32>(-23010i, u_input.a.x, -1i, -111677i)), func_1(global1.b.xzx, Struct_3(-458f, vec3<i32>(u_input.a.x, global3.c, u_input.a.x), Struct_2(global1.a, global1.b)), global3.e.x, global3.d.x))));
    global0 = array<vec4<u32>, 28>();
    var var_1 = Struct_3(-501f, global2.yyx, Struct_2(_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(round(-630f))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1185f), _wgslsmith_f_op_f32(floor(-946f)), all(global3.e.wxx))), 180f, _wgslsmith_div_f32(1901f, global1.a), _wgslsmith_f_op_f32(f32(-1f) * -704f))));
    let var_2 = -(reverseBits(vec4<i32>(46277i, global3.c ^ global3.c, abs(54908i), -2147483647i)) >> (vec4<u32>(~56990u, ~54444u, abs(global3.b.a | 4294967295u), 0u) % vec4<u32>(32u)));
    let var_3 = func_5(false, Struct_3(_wgslsmith_f_op_f32(var_1.c.b.x + _wgslsmith_f_op_f32(-var_0)), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(global2.xwx, global2.zxz), ~var_1.b) << (firstTrailingBit(~vec3<u32>(u_input.b.x, global3.a, u_input.b.x)) % vec3<u32>(32u)), var_1.c), vec4<bool>(all(!global3.e), select(global3.d.x, func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, 1110f, 1164f)), Struct_3(var_1.c.a, vec3<i32>(global3.c, global2.x, global2.x), var_1.c), global3.e.x, !global3.d.x).x, true), !any(!global3.e.yxx), !(global3.e.x | true))).b;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.b.xy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -438f), -880f))), _wgslsmith_add_u32(var_3.a ^ ~4319u, _wgslsmith_add_u32(global3.a, ~(global3.b.a >> (1u % 32u)))), -1i);
}

