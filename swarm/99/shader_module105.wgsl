struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
    c: Struct_2,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<i32>;

var<private> global2: array<f32, 32>;

var<private> global3: array<Struct_4, 3>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4) -> vec2<f32> {
    var var_0 = Struct_3(arg_1.c, ~_wgslsmith_sub_vec4_u32(arg_1.b.c >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 1u), arg_1.b.c, vec4<u32>(4294967295u, 21730u, arg_0.b.c.x, 17339u)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_sub_u32(4294967295u, arg_1.b.c.x), ~29570u, firstTrailingBit(0u), 0u & arg_0.b.c.x)), arg_1.b, Struct_2(arg_0.b.a, select(arg_0.b.b, select(!arg_0.b.b, arg_1.b.b, !arg_0.b.b), arg_1.b.b.x), arg_1.b.c), Struct_1(_wgslsmith_f_op_f32(436f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 32u)] + global2[_wgslsmith_index_u32(u_input.a, 32u)]), _wgslsmith_f_op_f32(abs(1383f)))))));
    let var_1 = Struct_3(_wgslsmith_sub_i32(_wgslsmith_add_i32(-31590i, ~_wgslsmith_div_i32(-41488i, global1.x)), 1i), ~_wgslsmith_mod_vec4_u32(vec4<u32>(12971u, u_input.a, arg_1.b.c.x, 10510u) << (vec4<u32>(u_input.a, 1u, 116700u, arg_1.b.c.x) % vec4<u32>(32u)), ~(vec4<u32>(u_input.a, arg_1.b.c.x, u_input.a, 0u) & vec4<u32>(arg_0.b.c.x, 24293u, 42447u, arg_1.b.c.x))), Struct_2(Struct_1(-175f), var_0.d.b, vec4<u32>(arg_1.b.c.x, ~1u << (var_0.c.c.x % 32u), select(~1u, reverseBits(0u), true), arg_1.b.c.x)), arg_0.b, Struct_1(_wgslsmith_f_op_f32(floor(336f))));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_1.a), -1000f));
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(-global0.a), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(278f)))), vec3<bool>(!all(vec2<bool>(true, false)), false, false), abs(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)))), _wgslsmith_sub_i32(~u_input.c.x, ~(~_wgslsmith_mod_i32(u_input.c.x, u_input.d))));
    let var_1 = var_0;
    global1 = countOneBits(~u_input.c.zx);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_3(Struct_4(_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(var_0.b.c.x, 32u)])), var_0.b, _wgslsmith_add_i32(-1079i, 38762i)), var_0)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-136f, var_0.a) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1315f, -566f))))) - vec2<f32>(global2[_wgslsmith_index_u32(1u, 32u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(699f)) + 345f))));
    var var_3 = var_1.b.c.x;
    return Struct_3(var_0.c, ~(var_0.b.c << (~vec4<u32>(u_input.a, 0u, var_1.b.c.x, u_input.a) % vec4<u32>(32u))), var_1.b, var_0.b, var_0.b.a);
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec2<u32>, arg_3: f32) -> bool {
    global2 = array<f32, 32>();
    let var_0 = func_2();
    global1 = vec2<i32>(u_input.d, -_wgslsmith_add_i32(-31950i, var_0.a));
    global1 = u_input.c.zx;
    let var_1 = arg_2.x;
    return all(var_0.d.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec3<bool>(true, 2147483647i < (global1.x | u_input.d), select(true, u_input.a <= 0u, false)), vec3<bool>(all(vec3<bool>(true, true, true)), true || func_1(u_input.a, u_input.a, vec2<u32>(1u, 1u), global0.a), true), true), vec3<bool>(u_input.b.x >= _wgslsmith_dot_vec3_i32(max(u_input.c, u_input.b), vec3<i32>(global1.x, global1.x, u_input.c.x)), any(vec3<bool>(all(vec2<bool>(false, true)), all(vec2<bool>(false, true)), func_2().c.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 32u)] - -1099f)) < _wgslsmith_f_op_f32(abs(global0.a))), all(func_2().c.b));
    var var_1 = _wgslsmith_clamp_u32(4294967295u, 4294967295u, u_input.a);
    var_1 = ~(~u_input.a);
    let var_2 = Struct_4(global2[_wgslsmith_index_u32(u_input.a, 32u)], func_2().d, abs(global1.x) & -15839i);
    let var_3 = var_2.b;
    var var_4 = reverseBits(-_wgslsmith_mod_i32(global1.x, _wgslsmith_mod_i32(8050i, 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_mult_vec4_u32(abs(var_3.c), reverseBits(~var_2.b.c)), firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(var_3.c.x, 0u, 0u, u_input.a) | var_2.b.c, vec4<u32>(var_3.c.x, u_input.a, 78099u, 33275u))), vec4<bool>(!(!var_0.x), u_input.d <= abs(var_2.c), true, false)), vec3<f32>(global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -457f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1148f + -1258f) * var_3.a.a)), global0.a), _wgslsmith_clamp_i32(-11764i, -97473i, global1.x));
}

