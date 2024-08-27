struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
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

var<private> global0: vec2<bool>;

var<private> global1: array<vec4<u32>, 9>;

var<private> global2: vec3<bool>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1923f - 194f)))), 980f, _wgslsmith_f_op_f32(-1686f - _wgslsmith_f_op_f32(select(613f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(595f, 517f))), all(select(vec3<bool>(arg_2.x, global0.x, global2.x), arg_2.wzz, arg_2.wyw))))));
    var var_1 = u_input.c;
    let var_2 = -609f;
    let var_3 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -339f));
    var var_4 = _wgslsmith_mult_i32(i32(-1i) * -46665i, ~(-(~arg_0)));
    return _wgslsmith_mod_vec3_i32(reverseBits(_wgslsmith_mult_vec3_i32(u_input.a, u_input.a)), abs(vec3<i32>(select(-32992i, 1i, true), _wgslsmith_mult_i32(arg_0 | -42005i, _wgslsmith_dot_vec2_i32(u_input.a.xz, arg_1.c.zx)), arg_0)));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<f32>) -> bool {
    var var_0 = Struct_2(_wgslsmith_div_vec3_i32(~reverseBits(firstLeadingBit(u_input.a)), reverseBits(vec3<i32>(_wgslsmith_mult_i32(2147483647i, u_input.c), -8851i, -u_input.a.x))), Struct_1(~(_wgslsmith_mod_vec3_u32(u_input.b.xxx, u_input.b.zww) ^ _wgslsmith_mod_vec3_u32(u_input.b.xzx, u_input.b.xzx))), _wgslsmith_mod_vec3_i32(u_input.a, func_3(-(i32(-1i) * -12543i), Struct_2(u_input.a >> (u_input.b.yww % vec3<u32>(32u)), Struct_1(vec3<u32>(u_input.d, u_input.b.x, u_input.b.x)), ~vec3<i32>(-1i, u_input.a.x, -16047i), Struct_1(u_input.b.ywz)), !arg_0, Struct_1(vec3<u32>(5483u, 0u, 1u)))), Struct_1(countOneBits(vec3<u32>(54794u, u_input.d ^ u_input.b.x, 1u))));
    global2 = vec3<bool>(!any(!(!vec3<bool>(global2.x, true, true))), all(!select(vec4<bool>(global2.x, global0.x, false, false), select(arg_0, vec4<bool>(global0.x, true, true, global0.x), vec4<bool>(arg_0.x, arg_0.x, global2.x, true)), all(vec3<bool>(global2.x, global0.x, global0.x)))), arg_0.x);
    let var_1 = ~var_0.c.x;
    let var_2 = Struct_2(vec3<i32>(var_1, var_1, 0i), var_0.d, vec3<i32>(0i, ((2147483647i >> (u_input.d % 32u)) << (9976u % 32u)) ^ ((-1i << (0u % 32u)) | _wgslsmith_mod_i32(19276i, u_input.a.x)), u_input.a.x), var_0.d);
    var var_3 = var_1;
    return any(arg_0.ww) && global0.x;
}

fn func_1(arg_0: vec3<f32>) -> vec3<bool> {
    global0 = vec2<bool>(!(func_2(!vec4<bool>(global2.x, global0.x, global2.x, global0.x), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(383f, 220f, arg_0.x, arg_0.x), vec4<f32>(-1000f, -142f, arg_0.x, -1130f)))) && global0.x), select(global2.x, global0.x, any(!select(vec3<bool>(global2.x, global2.x, false), vec3<bool>(global2.x, false, global2.x), true))));
    global2 = !vec3<bool>(false, global0.x, global2.x);
    var var_0 = firstTrailingBit(45970u);
    global0 = select(global2.zy, vec2<bool>(global2.x, all(select(vec2<bool>(global0.x, global0.x), !vec2<bool>(global2.x, global0.x), vec2<bool>(true, true)))), !global2.xz);
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(step(-1220f, _wgslsmith_f_op_f32(abs(arg_0.x)))), global2.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -480f) + _wgslsmith_div_f32(arg_0.x, arg_0.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-424f * -776f), 317f))));
    return vec3<bool>(true, global2.x & global0.x, global2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(vec4<u32>(u_input.d, 16910u, ~(firstTrailingBit(u_input.d) ^ u_input.b.x), u_input.b.x));
    let var_1 = -(reverseBits(vec4<i32>(-2147483647i, 2147483647i, u_input.c, -18532i) | -vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, -17401i)) >> (min(vec4<u32>(~var_0.a.x, ~1u, 0u, 27202u), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 0u, 17258u) ^ u_input.b, reverseBits(vec4<u32>(4294967295u, 4294967295u, 9973u, 1u)))) % vec4<u32>(32u)));
    global2 = select(!vec3<bool>(true, true, any(select(global2.zx, vec2<bool>(true, global0.x), true))), !vec3<bool>(all(select(vec4<bool>(true, global0.x, true, global0.x), vec4<bool>(false, global2.x, global0.x, true), vec4<bool>(global0.x, false, false, true))), true, true), select(vec3<bool>(global2.x, true, all(!vec4<bool>(global2.x, global0.x, global0.x, true))), func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-318f, -1630f, 1147f), vec3<f32>(-1444f, 786f, 125f))))), select(vec3<bool>(true, global0.x, true), select(func_1(vec3<f32>(1301f, 362f, -194f)), !vec3<bool>(global0.x, false, global0.x), !vec3<bool>(global0.x, global0.x, global0.x)), !select(true, true, global0.x))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(461f, 595f, global2.x)), 2050f)))) + _wgslsmith_f_op_f32(1691f + _wgslsmith_f_op_f32(floor(1f))));
    global1 = array<vec4<u32>, 9>();
    var var_3 = min(u_input.b.yyy, u_input.b.wyx);
    var var_4 = Struct_1(u_input.b.wxw);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(-285f)));
}

