struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 16> = array<vec3<bool>, 16>(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true));

var<private> global1: array<Struct_1, 3>;

var<private> global2: vec3<bool> = vec3<bool>(false, false, true);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: vec2<bool>) -> u32 {
    var var_0 = false;
    var_0 = true;
    var var_1 = Struct_2(_wgslsmith_div_u32(~0u, ~_wgslsmith_div_u32(u_input.d, ~u_input.c.x)), _wgslsmith_div_vec2_i32(vec2<i32>(min(_wgslsmith_mult_i32(1i, -19285i), firstTrailingBit(-1366i)), abs(abs(u_input.b))), vec2<i32>(_wgslsmith_mod_i32(u_input.b, -2147483647i), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 13790i), vec2<i32>(arg_0, -1i)), ~(-2147483647i)))), global1[_wgslsmith_index_u32(1u, 3u)], Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(357f, 338f, 1840f), _wgslsmith_div_vec3_f32(vec3<f32>(-871f, -1003f, -965f), vec3<f32>(-1281f, 154f, -1000f)))), !select(!vec4<bool>(global2.x, global2.x, true, global2.x), !vec4<bool>(global2.x, true, global2.x, true), !vec4<bool>(true, true, global2.x, false))));
    var var_2 = vec4<u32>(54082u, 2562u, ~abs(1u), abs(abs(var_1.a)));
    var_2 = ~(~vec4<u32>(var_1.a, ~0u, 13852u, ~(~var_1.a)));
    return u_input.a.x;
}

fn func_2() -> f32 {
    var var_0 = !select(vec2<bool>(select(true, true, global2.x), true), vec2<bool>(false, any(select(vec3<bool>(true, true, global2.x), vec3<bool>(true, global2.x, true), vec3<bool>(false, global2.x, global2.x)))), global2.x);
    var var_1 = select(global0[_wgslsmith_index_u32(~0u, 16u)], !vec3<bool>(~1u < ~u_input.a.x, !(true || global2.x), true), all(global2.zx));
    var var_2 = global1[_wgslsmith_index_u32(~45756u, 3u)];
    global2 = vec3<bool>(!all(select(select(vec4<bool>(false, false, false, false), var_2.b, var_2.b), select(var_2.b, var_2.b, false), 1119f < var_2.a.x)), var_2.b.x && select(!any(vec4<bool>(var_0.x, var_0.x, false, var_1.x)), var_1.x, any(select(vec2<bool>(true, var_1.x), vec2<bool>(true, false), var_1.yy))), false);
    var_1 = select(!global0[_wgslsmith_index_u32(_wgslsmith_add_u32(reverseBits(func_3(u_input.b, vec2<bool>(var_2.b.x, var_2.b.x))), 14952u), 16u)], global0[_wgslsmith_index_u32(u_input.c.x, 16u)], any(select(vec4<bool>(false, true != var_2.b.x, false, any(vec4<bool>(var_0.x, var_1.x, false, var_1.x))), !select(vec4<bool>(true, false, var_2.b.x, true), var_2.b, var_0.x), global2.x)));
    return -403f;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: u32, arg_3: Struct_2) -> Struct_1 {
    global2 = arg_3.c.b.zwx;
    let var_0 = Struct_2(~arg_3.a, arg_3.b, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(arg_3.a, abs(arg_2), reverseBits(0u), 0u & arg_3.a)), u_input.c), 3u)], Struct_1(arg_1.a, !(!vec4<bool>(arg_3.c.b.x, arg_3.d.b.x, global2.x, false))));
    var var_1 = vec4<bool>(!(!(true && (var_0.c.b.x && true))), arg_3.c.b.x, global2.x, true);
    global1 = array<Struct_1, 3>();
    global0 = array<vec3<bool>, 16>();
    return arg_1;
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec4<f32>, arg_3: f32) -> vec2<i32> {
    let var_0 = ~reverseBits(13220u);
    global2 = global0[_wgslsmith_index_u32(u_input.c.x, 16u)];
    var var_1 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(func_2()))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0, 275f)) - _wgslsmith_f_op_f32(arg_3 * arg_2.x)) * 1000f)), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-707f, arg_0, arg_2.x) - arg_2.www)), vec3<f32>(_wgslsmith_f_op_f32(-arg_3), 447f, _wgslsmith_f_op_f32(f32(-1f) * -1147f))), select(!vec4<bool>(false, global2.x, global2.x, global2.x), !(!vec4<bool>(global2.x, true, global2.x, global2.x)), vec4<bool>(2147483647i >= u_input.b, !global2.x, true, true))), ~42219u, Struct_2(~156445u, vec2<i32>(u_input.b, 2147483647i), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-715f, arg_0, arg_0))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, arg_2.x, arg_3) + vec3<f32>(1117f, arg_0, -2188f))), vec4<bool>(any(vec3<bool>(global2.x, false, false)), true, select(false, false, global2.x), global2.x)), global1[_wgslsmith_index_u32(~(~u_input.a.x) << (_wgslsmith_dot_vec3_u32(u_input.a, u_input.c.zyw ^ vec3<u32>(1318u, 1u, var_0)) % 32u), 3u)]));
    let var_2 = u_input.a;
    var var_3 = abs(u_input.a);
    return firstLeadingBit(vec2<i32>(u_input.b, -2147483647i));
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: vec4<u32>) -> vec2<i32> {
    var var_0 = arg_1;
    global1 = array<Struct_1, 3>();
    var var_1 = var_0.b;
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 3>();
    global0 = array<vec3<bool>, 16>();
    global1 = array<Struct_1, 3>();
    var var_0 = firstTrailingBit(~vec2<i32>(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-26266i, u_input.b, 22399i, u_input.b)), vec4<i32>(1i, 1i, 1i, u_input.b)), _wgslsmith_mult_i32(-8530i, 5214i)));
    var_0 = vec2<i32>(-1i) * -func_5(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-361f, 1871f))), Struct_2(u_input.c.x & u_input.a.x, func_1(-930f, 63061u, vec4<f32>(751f, -1912f, -1005f, 471f), 1076f), func_4(985f, global1[_wgslsmith_index_u32(u_input.c.x, 3u)], 1u, Struct_2(1u, vec2<i32>(var_0.x, 2147483647i), Struct_1(vec3<f32>(-922f, 160f, 457f), vec4<bool>(true, global2.x, global2.x, false)), global1[_wgslsmith_index_u32(u_input.d, 3u)])), func_4(-759f, global1[_wgslsmith_index_u32(41680u, 3u)], 38725u, Struct_2(1u, vec2<i32>(-2147483647i, 15033i), Struct_1(vec3<f32>(1000f, 1480f, -1000f), vec4<bool>(global2.x, global2.x, true, global2.x)), global1[_wgslsmith_index_u32(1u, 3u)]))), u_input.c);
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), 3u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(u_input.c, max(~vec4<u32>(u_input.c.x, u_input.d, u_input.d, u_input.a.x), u_input.c)), ~firstLeadingBit(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x)) ^ _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.a.x) >> (vec3<u32>(0u, u_input.d, u_input.c.x) % vec3<u32>(32u)), u_input.c.yxx & vec3<u32>(u_input.c.x, u_input.d, u_input.d)), vec3<u32>(u_input.a.x | 59485u, u_input.c.x, 46606u)), 1u, ~reverseBits(~u_input.c.x), u_input.b);
}

