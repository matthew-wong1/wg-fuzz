struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec4<u32>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 1>;

var<private> global1: vec3<bool>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_2) -> i32 {
    return _wgslsmith_dot_vec2_i32(~firstLeadingBit(vec2<i32>(-40532i, -1i)), ~_wgslsmith_mult_vec2_i32(vec2<i32>(47802i, 0i), ~vec2<i32>(3475i, 21972i))) & abs(abs(-765i));
}

fn func_3() -> vec4<i32> {
    let var_0 = select(select(!vec3<bool>(true, !global1.x, global1.x), select(!select(vec3<bool>(false, global1.x, global1.x), vec3<bool>(false, true, false), true), vec3<bool>(global1.x || true, true, !global1.x), !select(vec3<bool>(global1.x, true, global1.x), vec3<bool>(false, global1.x, true), vec3<bool>(global1.x, global1.x, global1.x))), select(vec3<bool>(true, true, true), !vec3<bool>(global1.x, true, false), !(!vec3<bool>(true, true, global1.x)))), vec3<bool>(true, global1.x, any(vec4<bool>(true, global1.x, true, false))), !(false != !(false | global1.x)));
    global1 = select(var_0, vec3<bool>(true, true, var_0.x), vec3<bool>(236f <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-578f)), _wgslsmith_f_op_f32(trunc(-142f))), true, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.a.x, 0u, u_input.a.x), u_input.a.x) > (_wgslsmith_sub_u32(u_input.a.x, u_input.a.x) | (0u & u_input.a.x))));
    let var_1 = 165f;
    var var_2 = abs(~(-vec4<i32>(_wgslsmith_div_i32(-16094i, 29732i), 1i, -1i, 1i)));
    let var_3 = (vec4<u32>(4294967295u, u_input.a.x, 94417u, u_input.a.x) ^ (max(firstLeadingBit(vec4<u32>(4294967295u, u_input.a.x, 52120u, 1u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 21186u, 0u, 1u), vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x))) & vec4<u32>(1u, ~u_input.a.x, 4294967295u, _wgslsmith_sub_u32(u_input.a.x, 7920u)))) >> (~(~firstTrailingBit(vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x))) % vec4<u32>(32u));
    return min(_wgslsmith_clamp_vec4_i32(-(~_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, var_2.x, -31872i, var_2.x), vec4<i32>(var_2.x, -377i, 38048i, 26973i))), ~vec4<i32>(_wgslsmith_sub_i32(-14033i, var_2.x), 0i, var_2.x, var_2.x), firstLeadingBit(reverseBits(vec4<i32>(var_2.x, var_2.x, 17975i, 0i)))), vec4<i32>(_wgslsmith_dot_vec3_i32(max(var_2.wyz & vec3<i32>(2147483647i, var_2.x, 17009i), ~vec3<i32>(2147483647i, var_2.x, -1i)), _wgslsmith_mult_vec3_i32(-var_2.zwy, -var_2.wyx)), 1i, func_2(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(867f, -293f, var_1, -598f)))), 12203i));
}

fn func_1(arg_0: u32) -> vec2<f32> {
    let var_0 = vec3<i32>(countOneBits(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 0i, 13041i, 26059i), vec4<i32>(2147483647i, -22425i, -2147483647i, 0i)), func_2(Struct_2(global0[_wgslsmith_index_u32(arg_0, 1u)])))), 637i, _wgslsmith_mod_i32(-(~(-29191i)), 2147483647i)) & select(~vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, -55520i, 28494i), global1.x);
    let var_1 = Struct_3(-18817i, vec3<f32>(1f, 1f, 1f), arg_0, func_3(), Struct_1(abs(arg_0), true));
    let var_2 = abs(vec4<i32>(~(-var_1.a), -7420i, _wgslsmith_div_i32(1i, _wgslsmith_mult_i32(-2147483647i, var_0.x)), var_0.x)) & vec4<i32>(-var_0.x, _wgslsmith_add_i32(-(~(-1i)), 1i), _wgslsmith_add_i32((1i & var_1.a) ^ _wgslsmith_div_i32(var_1.a, -41049i), var_0.x ^ func_3().x), 0i);
    let var_3 = select(~u_input.a, ~(~u_input.a), all(!(!(!vec4<bool>(var_1.e.b, false, false, false)))));
    var var_4 = _wgslsmith_f_op_f32(var_1.b.x + -558f);
    return var_1.b.xy;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !(!vec3<bool>(true, true, 0u >= u_input.a.x));
    global0 = array<vec4<f32>, 1>();
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-990f * -863f))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, _wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(533f, 1000f), _wgslsmith_f_op_f32(var_0 * var_0)) + vec2<f32>(1371f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0, -2850f))) * vec2<f32>(-640f, var_0)) - vec2<f32>(-1027f, 1274f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) - vec2<f32>(-262f, -176f)) - _wgslsmith_f_op_vec2_f32(func_1(1u))) - vec2<f32>(var_0, 1f)))));
    let var_2 = _wgslsmith_f_op_f32(-var_0);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-537f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), max(~countOneBits(vec4<u32>(44597u, 12825u, u_input.a.x, u_input.a.x)) & vec4<u32>(~1u, u_input.a.x | 0u, 9196u, _wgslsmith_mult_u32(4294967295u, 1u)), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(53360u, 1u, u_input.a.x, 52394u), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 38632u)) ^ vec4<u32>(86223u, 0u, 0u, 4294967295u), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.a.x, 0u, 1u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1956u)), ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 13820u)))), _wgslsmith_mult_vec4_u32(firstTrailingBit(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<u32>(_wgslsmith_mod_u32(u_input.a.x & 4294967295u, _wgslsmith_mult_u32(u_input.a.x, 0u)), ~35673u, ~(23170u ^ u_input.a.x), u_input.a.x)));
}

