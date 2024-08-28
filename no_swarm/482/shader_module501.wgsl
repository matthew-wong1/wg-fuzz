struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, true, false);

var<private> global1: array<vec2<u32>, 20>;

var<private> global2: array<i32, 32> = array<i32, 32>(51050i, 0i, 0i, -44961i, 0i, -1i, 0i, 0i, 1i, -54446i, -65524i, 1372i, i32(-2147483648), -23724i, i32(-2147483648), -38755i, i32(-2147483648), i32(-2147483648), 0i, i32(-2147483648), 1i, -16258i, -33830i, 40545i, i32(-2147483648), 35807i, 23364i, i32(-2147483648), 2112i, 9524i, 25268i, 10687i);

var<private> global3: vec2<f32> = vec2<f32>(-2191f, -265f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool, arg_1: vec2<u32>) -> bool {
    var var_0 = ~global1[_wgslsmith_index_u32(~reverseBits(u_input.b) & ~arg_1.x, 20u)];
    let var_1 = select(~u_input.a, u_input.d.x, false == arg_0);
    let var_2 = Struct_1(true);
    let var_3 = !vec2<bool>(arg_0, (u_input.b >> (~var_0.x % 32u)) < _wgslsmith_dot_vec2_u32(min(arg_1, vec2<u32>(4294967295u, var_1)), max(u_input.d, vec2<u32>(var_0.x, arg_1.x))));
    global2 = array<i32, 32>();
    return true;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = max(10071i, _wgslsmith_dot_vec3_i32(u_input.e, u_input.e) << (u_input.d.x % 32u));
    var var_1 = !all(select(vec3<bool>(!arg_0.a, u_input.b <= 4294967295u, !global0.x), global0.xzw, -992f < _wgslsmith_f_op_f32(-global3.x)));
    let var_2 = u_input.e.xz << (_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, u_input.a) >> (~vec2<u32>(14226u, u_input.d.x) % vec2<u32>(32u)), ~vec2<u32>(~1u, u_input.d.x)) % vec2<u32>(32u));
    global0 = !vec4<bool>(func_3(false, u_input.d), false, arg_0.a, true);
    var var_3 = Struct_1(all(!global0.ywy));
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec2<f32> {
    var var_0 = max(vec4<i32>(-(~_wgslsmith_div_i32(-23762i, 2147483647i)), global2[_wgslsmith_index_u32(countOneBits(u_input.a), 32u)], _wgslsmith_sub_i32(global2[_wgslsmith_index_u32(u_input.b, 32u)], _wgslsmith_dot_vec3_i32(countOneBits(u_input.e), ~vec3<i32>(u_input.e.x, u_input.e.x, -2147483647i))), global2[_wgslsmith_index_u32(1u, 32u)]), select(~(vec4<i32>(33144i, global2[_wgslsmith_index_u32(u_input.d.x, 32u)], u_input.e.x, global2[_wgslsmith_index_u32(28856u, 32u)]) | vec4<i32>(-2147483647i, global2[_wgslsmith_index_u32(1u, 32u)], -1i, global2[_wgslsmith_index_u32(u_input.b, 32u)])) & ~reverseBits(vec4<i32>(u_input.e.x, u_input.c, global2[_wgslsmith_index_u32(0u, 32u)], global2[_wgslsmith_index_u32(u_input.a, 32u)])), vec4<i32>(u_input.c | u_input.e.x, global2[_wgslsmith_index_u32(min(u_input.a, 1u), 32u)], 1i, -1i) | select(vec4<i32>(-34319i, 0i, u_input.e.x, -1619i), _wgslsmith_sub_vec4_i32(vec4<i32>(-28271i, u_input.e.x, 10185i, global2[_wgslsmith_index_u32(u_input.d.x, 32u)]), vec4<i32>(global2[_wgslsmith_index_u32(u_input.b, 32u)], -2147483647i, 2147483647i, 0i)), select(vec4<bool>(false, arg_1.a, arg_0.a, false), vec4<bool>(global0.x, true, arg_1.a, arg_0.a), false)), select(all(vec4<bool>(false, arg_0.a, false, arg_0.a)), arg_0.a, func_3(arg_1.a | false, ~u_input.d))));
    var var_1 = -u_input.c;
    global2 = array<i32, 32>();
    var var_2 = ~vec2<i32>(~(~global2[_wgslsmith_index_u32(u_input.a, 32u)]) ^ countOneBits(-global2[_wgslsmith_index_u32(55808u, 32u)]), _wgslsmith_dot_vec4_i32(-vec4<i32>(0i, 2147483647i, u_input.e.x, 1i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.e.x, u_input.e.x, u_input.c, global2[_wgslsmith_index_u32(u_input.d.x, 32u)]) | vec4<i32>(1i, 4657i, global2[_wgslsmith_index_u32(27963u, 32u)], -9939i), -vec4<i32>(global2[_wgslsmith_index_u32(u_input.b, 32u)], u_input.e.x, 26076i, var_0.x))));
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, 3215f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-145f, -481f) * vec2<f32>(global3.x, global3.x)))))), vec2<f32>(2344f, -384f)));
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_1 {
    global3 = _wgslsmith_f_op_vec2_f32(func_4(Struct_1(true), func_2(arg_2)));
    let var_0 = arg_2;
    global2 = array<i32, 32>();
    let var_1 = abs(u_input.b) < _wgslsmith_dot_vec4_u32(vec4<u32>(~8954u, ~(~0u), u_input.d.x, ~(~u_input.a)), ~(~vec4<u32>(u_input.a, u_input.a, 0u, 51669u)) >> (select(vec4<u32>(50007u, 0u, u_input.b, 36663u), vec4<u32>(1u, u_input.d.x, 0u, 22580u), !vec4<bool>(arg_2.a, var_0.a, false, global0.x)) % vec4<u32>(32u)));
    let var_2 = _wgslsmith_clamp_vec3_i32(-countOneBits(u_input.e), u_input.e, vec3<i32>(u_input.e.x, 0i, 0i)) | max(-u_input.e, _wgslsmith_clamp_vec3_i32(~abs(vec3<i32>(2147483647i, 0i, arg_1.x)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.e.x, -1i, global2[_wgslsmith_index_u32(1719u, 32u)]), vec3<i32>(u_input.c, -45118i, -1i)), u_input.e));
    return func_2(var_0);
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = func_2(Struct_1(true));
    let var_1 = max(countOneBits(vec3<i32>(-global2[_wgslsmith_index_u32(4294967295u, 32u)] ^ u_input.e.x, _wgslsmith_sub_i32(_wgslsmith_mod_i32(global2[_wgslsmith_index_u32(4294967295u, 32u)], u_input.c), _wgslsmith_add_i32(u_input.e.x, -49318i)), max(2147483647i, 2805i))), u_input.e);
    global3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(653f, global3.x) - vec2<f32>(-674f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x * global3.x)) - _wgslsmith_f_op_f32(f32(-1f) * -874f))));
    global3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, global3.x) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global3.x)) - global3.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global3.x * -1818f), _wgslsmith_f_op_f32(-1130f + global3.x), func_2(Struct_1(false)).a)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, -899f)))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1361f, _wgslsmith_f_op_f32(-363f * -1099f)))), false != (global0.x & var_0.a)));
    let var_2 = _wgslsmith_clamp_u32(u_input.b >> (~(~1u) % 32u), 1u, _wgslsmith_sub_u32(15547u, 1u));
    return func_1(firstTrailingBit(global2[_wgslsmith_index_u32(~4855u, 32u)]), -vec2<i32>(-16691i, 0i), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(u_input.e.x & _wgslsmith_mod_i32(33539i, abs(61949i)), u_input.e.xz, Struct_1(true)));
    let x = u_input.a;
    s_output = StorageBuffer(-790f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1171f)));
}

