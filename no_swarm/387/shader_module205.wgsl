struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

var<private> global1: vec4<u32> = vec4<u32>(0u, 67049u, 0u, 49316u);

var<private> global2: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> f32 {
    var var_0 = reverseBits(max(vec4<i32>(u_input.d.x, _wgslsmith_sub_i32(u_input.d.x << (0u % 32u), _wgslsmith_div_i32(u_input.d.x, -2147483647i)), firstLeadingBit(_wgslsmith_mult_i32(u_input.d.x, 1i)), u_input.d.x), ~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), vec4<i32>(-2147483647i, u_input.d.x, u_input.d.x, -1i)) ^ vec4<i32>(i32(-1i) * -14447i, 1i, i32(-1i) * -2147483647i, _wgslsmith_clamp_i32(u_input.d.x, 0i, u_input.d.x))));
    var var_1 = false;
    global2 = select(select(select(vec3<bool>(global2.x | global2.x, true, all(vec2<bool>(false, global2.x))), vec3<bool>(select(false, true, global2.x), global2.x, all(vec3<bool>(global2.x, global2.x, false))), all(vec3<bool>(global2.x, global2.x, false))), select(vec3<bool>(any(vec3<bool>(false, false, true)), true, 1u < global1.x), select(!vec3<bool>(global2.x, false, global2.x), vec3<bool>(true, global2.x, global2.x), any(vec4<bool>(global2.x, global2.x, false, global2.x))), !any(vec4<bool>(global2.x, true, global2.x, global2.x))), !vec3<bool>(global2.x && global2.x, global2.x, true)), !vec3<bool>(all(!vec4<bool>(false, true, global2.x, global2.x)), min(var_0.x, u_input.d.x) == _wgslsmith_dot_vec3_i32(var_0.yyw, var_0.xyx), true), vec3<bool>(any(!vec2<bool>(global2.x, global2.x)), true || global2.x, false));
    var var_2 = true || all(global2.xz);
    var_1 = !(!(global2.x == ((global2.x & false) && true)));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-413f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -929f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1275f)), -1000f) * _wgslsmith_div_f32(-514f, -1000f)))));
}

fn func_2() -> Struct_1 {
    global0 = array<Struct_1, 9>();
    let var_0 = !vec3<bool>(any(!vec4<bool>(false, global2.x, global2.x, true)), global2.x & any(select(global2.zz, global2.xz, vec2<bool>(false, false))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(1000f, 365f)), _wgslsmith_f_op_f32(func_3()))) > _wgslsmith_f_op_f32(1f * 1000f));
    var var_1 = global0[_wgslsmith_index_u32(0u, 9u)];
    let var_2 = global0[_wgslsmith_index_u32(countOneBits(var_1.a.x), 9u)];
    return global0[_wgslsmith_index_u32(u_input.e, 9u)];
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: u32) -> vec2<bool> {
    let var_0 = func_2();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.b.x, 1091f, false)))))) * _wgslsmith_f_op_f32(-424f - 1506f));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b - vec3<f32>(-379f, var_0.b.x, var_1)))));
    var var_3 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>((u_input.d.x & u_input.d.x) ^ reverseBits(u_input.d.x), ~_wgslsmith_div_i32(-2147483647i, u_input.d.x), -_wgslsmith_sub_i32(u_input.d.x, u_input.d.x), _wgslsmith_div_i32(-u_input.d.x, -u_input.d.x)), _wgslsmith_add_vec4_i32(min(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x) | vec4<i32>(-18180i, 0i, 2147483647i, 4420i), vec4<i32>(-37738i, u_input.d.x, u_input.d.x, u_input.d.x)), firstLeadingBit(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x)))), 0i, u_input.d.x, _wgslsmith_dot_vec2_i32(reverseBits(u_input.d), ~vec2<i32>(-2147483647i, u_input.d.x)) << (arg_0 % 32u));
    global0 = array<Struct_1, 9>();
    return !(!(!global2.xx));
}

fn func_4(arg_0: vec2<bool>, arg_1: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-159f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -262f)))) - _wgslsmith_f_op_f32(-1000f + -753f)));
    return Struct_1(~(~(~vec4<u32>(global1.x, global1.x, 490u, u_input.e))) & ~func_2().a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -448f))), -2144f, -708f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(select(func_1(1u, u_input.b.x, max(4294967295u, _wgslsmith_sub_u32(global1.x, u_input.c))), vec2<bool>(true, func_1(max(13396u, u_input.e), 4294967295u, 4294967295u).x), all(select(select(vec4<bool>(global2.x, global2.x, true, true), vec4<bool>(global2.x, global2.x, true, false), vec4<bool>(global2.x, false, global2.x, global2.x)), select(vec4<bool>(global2.x, true, true, true), vec4<bool>(false, false, global2.x, global2.x), true), all(vec4<bool>(global2.x, global2.x, global2.x, false))))), !(!global2.x));
    var var_1 = _wgslsmith_f_op_f32(ceil(-1181f));
    var var_2 = global0[_wgslsmith_index_u32(func_4(global2.xz, global2.x).a.x, 9u)];
    let var_3 = global1.x;
    var var_4 = u_input.d.x;
    var_4 = reverseBits(~min(select(-2147483647i, 2147483647i, true), _wgslsmith_div_i32(reverseBits(u_input.d.x), 15726i)));
    var_2 = var_0;
    var var_5 = !(!(!select(select(vec4<bool>(false, false, global2.x, false), vec4<bool>(false, global2.x, true, global2.x), vec4<bool>(true, global2.x, false, true)), !vec4<bool>(global2.x, false, global2.x, global2.x), !vec4<bool>(global2.x, global2.x, global2.x, global2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1437f + var_0.b.x), _wgslsmith_f_op_f32(floor(var_0.b.x))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.b.x, -246f), var_2.b.yz) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1197f, -796f) - vec2<f32>(-1000f, -694f)))), var_0.b.xz)));
}

