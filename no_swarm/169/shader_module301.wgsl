struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec3<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: vec2<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 3> = array<vec4<u32>, 3>(vec4<u32>(1u, 4294967295u, 2050u, 1u), vec4<u32>(48352u, 1u, 0u, 1978u), vec4<u32>(0u, 0u, 382u, 0u));

var<private> global1: vec4<u32>;

var<private> global2: vec2<bool>;

var<private> global3: Struct_1;

var<private> global4: vec3<f32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec2<bool>) -> i32 {
    return -((-16873i << (_wgslsmith_add_u32(u_input.d.x, arg_1) % 32u)) | global3.e.x) | -1i;
}

fn func_3(arg_0: vec3<i32>, arg_1: i32, arg_2: u32, arg_3: vec3<i32>) -> vec3<bool> {
    var var_0 = vec3<i32>(firstTrailingBit(-1080i), 2627i, ~(~2147483647i));
    global0 = array<vec4<u32>, 3>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global3.c.x, -1038f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global4.x + global3.c.x), _wgslsmith_f_op_f32(f32(-1f) * -117f))))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a, global3.c.x, global3.a, 1677f) * vec4<f32>(-537f, 536f, global3.a, -374f)), vec4<f32>(global4.x, 718f, -940f, -1000f), global3.d.x & true)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, -1801f, -292f, -1020f))))));
    global3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(1511f)))) + _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(global4.x * global3.c.x)))), ~_wgslsmith_mod_vec3_i32(~global3.b, min(vec3<i32>(arg_1, arg_0.x, 2147483647i), -vec3<i32>(arg_1, var_0.x, var_0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global3.c.x), 936f, _wgslsmith_f_op_f32(-492f + -1151f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.x, var_2.x, var_2.x), var_2.yyz, vec3<bool>(global2.x, global3.d.x, global3.d.x))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.a, -481f, 1520f) * var_2.wwz), _wgslsmith_f_op_vec3_f32(round(var_2.xyz)), vec3<bool>(global2.x, global2.x, global2.x))), var_2.yyy, !(!global3.d)))), vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1002f, global3.a)) + _wgslsmith_f_op_f32(-global4.x)) >= var_2.x, false, select(true, false, true)), global3.e);
    return !select(select(!global3.d, !select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), global3.d), true), !(!global3.d), true);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec2<u32>) -> bool {
    global0 = array<vec4<u32>, 3>();
    global1 = _wgslsmith_mod_vec4_u32(~vec4<u32>(1u, firstLeadingBit(arg_2.x), ~1u, 4294967295u), u_input.d >> ((global0[_wgslsmith_index_u32(global1.x, 3u)] & vec4<u32>(1u, ~4294967295u, ~arg_2.x, countOneBits(0u))) % vec4<u32>(32u)));
    global3 = arg_0;
    let var_0 = global4.x;
    let var_1 = _wgslsmith_f_op_f32(-arg_0.a);
    return arg_0.d.x;
}

fn func_2(arg_0: f32, arg_1: vec4<f32>) -> bool {
    global2 = vec2<bool>(!global3.d.x, func_4(Struct_1(_wgslsmith_f_op_f32(arg_0 * global3.c.x), vec3<i32>(0i, -5810i, -55272i) ^ _wgslsmith_div_vec3_i32(global3.b, vec3<i32>(-35880i, 26641i, global3.b.x)), vec3<f32>(arg_0, 465f, _wgslsmith_div_f32(global3.c.x, 240f)), func_3(-global3.b, 2147483647i, ~global1.x, ~vec3<i32>(-1i, u_input.b, 1793i)), global3.b.yx), func_1(-782f, global1.x, vec2<bool>(any(vec4<bool>(global2.x, false, global3.d.x, global3.d.x)), global3.d.x)), firstTrailingBit(vec2<u32>(1u, 4294967295u) | global1.yw)));
    let var_0 = vec2<u32>(1u, global1.x);
    global1 = vec4<u32>(47388u, u_input.d.x, u_input.c, ~global1.x) << (select(vec4<u32>(_wgslsmith_dot_vec2_u32(global1.xy << (vec2<u32>(var_0.x, var_0.x) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(u_input.d.wx, vec2<u32>(var_0.x, 4294967295u), global1.wy)), _wgslsmith_sub_u32(_wgslsmith_sub_u32(43148u, 12344u), ~global1.x), reverseBits(0u >> (global1.x % 32u)), _wgslsmith_div_u32(u_input.c, 1u)), _wgslsmith_mod_vec4_u32(reverseBits(u_input.d) >> (vec4<u32>(global1.x, u_input.c, 1902u, global1.x) % vec4<u32>(32u)), ~firstTrailingBit(global0[_wgslsmith_index_u32(global1.x, 3u)])), true) % vec4<u32>(32u));
    global2 = global3.d.xx;
    var var_1 = true;
    return true;
}

fn func_5(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_3, arg_3: vec4<u32>) -> vec3<bool> {
    global1 = select(arg_3, abs(vec4<u32>(abs(u_input.d.x), 4294967295u, arg_3.x ^ arg_3.x, _wgslsmith_add_u32(global1.x, arg_3.x))) ^ global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(48035u, global1.x, arg_3.x, arg_3.x), vec4<u32>(1u, global1.x, 4294967295u, 1u)) ^ 26688u), 3u)], u_input.d.x > arg_3.x);
    return select(arg_2.a.d, !vec3<bool>(!func_4(arg_2.a, 60998i, global1.yz), arg_2.a.d.x, arg_0.x <= arg_2.a.b.x), false);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_1(_wgslsmith_div_f32(global4.x, 1614f), vec3<i32>(global3.e.x, ~u_input.a.x, global3.e.x), global3.c, func_5(_wgslsmith_add_vec4_i32(~(~vec4<i32>(global3.b.x, global3.e.x, u_input.a.x, 0i)), vec4<i32>(u_input.b, _wgslsmith_mod_i32(37711i, -2147483647i), func_1(-787f, global1.x, global3.d.zx), ~(-1i))), global3.d.x & (func_2(792f, vec4<f32>(-382f, global4.x, -748f, global3.a)) | global3.d.x), Struct_3(Struct_1(_wgslsmith_f_op_f32(-global4.x), global3.b >> (vec3<u32>(26705u, global1.x, global1.x) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(400f, 1359f, 1135f), global3.c, global3.d.x)), vec3<bool>(global2.x, false, global2.x), -global3.e), select(min(vec3<i32>(u_input.b, 2147483647i, global3.b.x), global3.b), global3.b, vec3<bool>(true, global3.d.x, false)), Struct_1(_wgslsmith_div_f32(global3.a, global4.x), global3.b & global3.b, global3.c, select(global3.d, vec3<bool>(global3.d.x, false, false), true), vec2<i32>(global3.b.x, global3.e.x)), vec2<f32>(_wgslsmith_f_op_f32(select(global3.c.x, global4.x, global3.d.x)), global4.x), _wgslsmith_f_op_f32(f32(-1f) * -2475f)), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(global1.x, 4294967295u, u_input.c, global1.x)), vec4<u32>(global1.x, 4294967295u, ~u_input.e, u_input.d.x), u_input.d)), -(~(~vec2<i32>(-2147483647i, 0i) & vec2<i32>(1i, global3.e.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(-749f)));
}

