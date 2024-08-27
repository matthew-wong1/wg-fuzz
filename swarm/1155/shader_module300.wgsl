struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<vec2<bool>, 8> = array<vec2<bool>, 8>(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false));

var<private> global2: Struct_2 = Struct_2(true, Struct_1(vec4<i32>(2147483647i, -8248i, 7436i, -1i)), Struct_1(vec4<i32>(1i, 8080i, 1i, 1i)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    return global2.c;
}

fn func_1(arg_0: vec3<i32>, arg_1: f32) -> i32 {
    global2 = Struct_2(global2.a, Struct_1(abs(global2.c.a << (_wgslsmith_sub_vec4_u32(vec4<u32>(13906u, u_input.c, 19573u, u_input.c), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c)) % vec4<u32>(32u)))), func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-811f, 411f), vec2<f32>(arg_1, arg_1), vec2<bool>(true, global2.a))), vec2<f32>(494f, arg_1)) * vec2<f32>(_wgslsmith_f_op_f32(step(arg_1, -2434f)), 1529f))));
    global0 = -(-_wgslsmith_clamp_vec4_i32(global2.b.a, vec4<i32>(-2147483647i, u_input.d.x, u_input.b.x, global0.x) | global2.b.a, ~vec4<i32>(global0.x, arg_0.x, global0.x, -27667i)) >> (vec4<u32>(1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c, u_input.c), ~vec2<u32>(44872u, u_input.c)), 224u, ~(~4294967295u)) % vec4<u32>(32u)));
    let var_0 = vec4<i32>(-(2147483647i << (_wgslsmith_mod_u32(6376u, u_input.c) % 32u)), global0.x | arg_0.x, 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-12224i, -1370i << (u_input.c % 32u)), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1))).a.xx)) & (_wgslsmith_add_vec4_i32(vec4<i32>(1i, _wgslsmith_div_i32(-18889i, -5053i), ~(-5902i), arg_0.x), vec4<i32>(-15213i, -2147483647i, -13235i, _wgslsmith_dot_vec2_i32(arg_0.xz, vec2<i32>(u_input.d.x, arg_0.x)))) & _wgslsmith_mod_vec4_i32(global2.c.a, _wgslsmith_mult_vec4_i32(-global2.c.a, ~global2.b.a)));
    let var_1 = vec3<f32>(262f, 1000f, -378f);
    return 0i;
}

fn func_3(arg_0: Struct_2) -> Struct_1 {
    var var_0 = abs(select(max(global2.c.a.ywx, _wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(3668i, arg_0.c.a.x, global0.x) >> (vec3<u32>(u_input.c, 4294967295u, 19321u) % vec3<u32>(32u)))), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.b.a.x, -31867i, 6675i), vec3<i32>(global2.b.a.x, arg_0.c.a.x, -31293i), u_input.b) | vec3<i32>(~(-40151i), ~23453i, 2806i << (u_input.c % 32u)), !arg_0.a));
    global1 = array<vec2<bool>, 8>();
    global1 = array<vec2<bool>, 8>();
    let var_1 = u_input.b.x;
    let var_2 = vec4<bool>(!arg_0.a, true, true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -298f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1325f * 409f))))) != _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(977f)))), 530f, false)));
    return global2.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~vec4<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(-19861i, 62366i), _wgslsmith_sub_vec2_i32(vec2<i32>(964i, 39641i), vec2<i32>(-1i, u_input.b.x))), ~func_1(countOneBits(vec3<i32>(3667i, -2147483647i, 29471i)), _wgslsmith_f_op_f32(-1036f * -187f)), global2.c.a.x, global2.c.a.x);
    global2 = Struct_2(global2.a || (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1236f - -169f) - 308f) < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-770f * 715f)))), func_3(Struct_2(false, global2.b, Struct_1(vec4<i32>(47917i, 1i, -2147483647i, -43029i)))), func_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(993f, -889f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1215f, -957f)), true)), vec2<f32>(_wgslsmith_f_op_f32(step(-1000f, 434f)), -1791f), !vec2<bool>(true, global2.a)))));
    let var_0 = Struct_2((global2.a | select(true, select(global2.a, true, false), all(global1[_wgslsmith_index_u32(u_input.c, 8u)]))) && false, global2.b, func_3(Struct_2(global2.a, func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-522f, -209f) - vec2<f32>(357f, -712f))), func_3(Struct_2(true, global2.c, Struct_1(global2.c.a))))));
    var var_1 = _wgslsmith_dot_vec3_u32(max(~(vec3<u32>(u_input.c, u_input.c, 4294967295u) & vec3<u32>(u_input.c, u_input.c, u_input.c)) & ~(~vec3<u32>(0u, u_input.c, u_input.c)), ~firstLeadingBit(vec3<u32>(4294967295u, u_input.c, u_input.c) & vec3<u32>(1u, u_input.c, u_input.c))), ~(vec3<u32>(firstTrailingBit(u_input.c), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(0u, 0u)), firstTrailingBit(79108u)) >> (~(~vec3<u32>(u_input.c, u_input.c, u_input.c)) % vec3<u32>(32u))));
    global1 = array<vec2<bool>, 8>();
    let var_2 = select(!vec3<bool>(all(!vec4<bool>(true, global2.a, true, false)), any(vec3<bool>(false, true, false)), all(select(vec4<bool>(false, var_0.a, false, true), vec4<bool>(global2.a, var_0.a, global2.a, false), global2.a))), vec3<bool>(true, true, true), any(select(vec3<bool>(global2.a, var_0.a, true), select(vec3<bool>(var_0.a, false, true), vec3<bool>(true, false, global2.a), global2.a), all(!vec3<bool>(global2.a, var_0.a, true)))));
    global2 = Struct_2(true, func_3(var_0), var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(round(498f))), global0.xyz, ~abs(select(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), _wgslsmith_clamp_vec4_u32(vec4<u32>(54760u, 1u, u_input.c, u_input.c), vec4<u32>(u_input.c, 13662u, 63197u, u_input.c), vec4<u32>(u_input.c, 1u, u_input.c, 48382u)), select(vec4<bool>(global2.a, true, global2.a, false), vec4<bool>(true, var_2.x, false, var_0.a), vec4<bool>(var_0.a, global2.a, var_2.x, var_0.a)))));
}

