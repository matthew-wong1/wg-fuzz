struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 31>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec4<i32>) -> f32 {
    let var_0 = Struct_4(_wgslsmith_div_i32(-1i, -10788i), Struct_2(Struct_1(arg_0.x, ~4294967295u << (1u % 32u), vec2<f32>(2276f, _wgslsmith_f_op_f32(1000f + 600f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1286f, -877f, 688f, -620f), vec4<f32>(-384f, 673f, -1450f, -122f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-130f, 576f, -163f, 1151f))), false)), false);
    global0 = array<vec4<i32>, 31>();
    return var_0.b.a.d.x;
}

fn func_3(arg_0: Struct_4) -> i32 {
    global0 = array<vec4<i32>, 31>();
    var var_0 = Struct_3(_wgslsmith_mult_i32(u_input.a.x, arg_0.a) >> (4294967295u % 32u), arg_0.b);
    var var_1 = vec3<bool>(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(151f, -612f))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.a.c.x) - _wgslsmith_f_op_f32(round(1471f))) - _wgslsmith_f_op_f32(var_0.b.a.c.x - _wgslsmith_f_op_f32(func_2(u_input.a)))), !all(vec4<bool>(select(true, false, var_0.b.a.e), all(vec2<bool>(arg_0.b.a.e, true)), false, arg_0.c)));
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-110f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -350f))) * _wgslsmith_f_op_f32(f32(-1f) * -273f)) - _wgslsmith_f_op_f32(round(arg_0.b.a.c.x))));
    return arg_0.a;
}

fn func_1(arg_0: vec2<f32>) -> vec3<f32> {
    var var_0 = u_input.a.zzy;
    var var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1474f + -1000f), -668f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_0.x)), _wgslsmith_f_op_f32(-121f * -180f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, -8944i, var_0.x, -1i), global0[_wgslsmith_index_u32(1u, 31u)]))), arg_0.x))), arg_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1524f, arg_0.x), _wgslsmith_f_op_f32(min(arg_0.x, -1325f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), true)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-404f, 505f, 474f), vec3<f32>(var_1.x, 1104f, var_1.x), true)))))));
    let var_3 = Struct_3(_wgslsmith_mult_i32(max(var_0.x, -_wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(0u, 31u)], vec4<i32>(55847i, -2147483647i, var_0.x, 4343i))), func_3(Struct_4(_wgslsmith_mod_i32(var_0.x, 0i), Struct_2(Struct_1(-33955i, 0u, vec2<f32>(var_2.x, -941f), vec4<f32>(-127f, arg_0.x, 242f, 1305f), true)), true))), Struct_2(Struct_1(~(-22102i >> (1u % 32u)), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(45212u, 0u), vec2<u32>(0u, 53537u)), ~vec2<u32>(9917u, 4294967295u)), var_2.zy, vec4<f32>(_wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, true)), var_1.x, _wgslsmith_f_op_f32(-534f + 178f), arg_0.x), any(vec4<bool>(false, false, true, false)))));
    let var_4 = var_0.x;
    return _wgslsmith_div_vec3_f32(var_3.b.a.d.yxx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_3.b.a.d.xxw, vec3<f32>(215f, arg_0.x, -683f), vec3<bool>(true, var_3.b.a.e, false))))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_3.b.a.d.zxw - vec3<f32>(var_2.x, 776f, 317f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-824f, 328f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-469f, 653f) * vec2<f32>(123f, 1276f)))))));
    var var_1 = vec4<i32>(reverseBits(_wgslsmith_mult_i32(min(_wgslsmith_sub_i32(-2147483647i, -38489i), u_input.a.x), select(11968i, -1i, true))), func_3(Struct_4(u_input.a.x, Struct_2(Struct_1(u_input.a.x, 0u, vec2<f32>(var_0.x, var_0.x), vec4<f32>(710f, var_0.x, var_0.x, 1539f), false)), true)), 22283i, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(0i, _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.a.ww, u_input.a.yz)), u_input.a.x, 1i)));
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-146f + var_0.x) * _wgslsmith_f_op_f32(min(var_0.x, var_0.x)))), var_0.x, all(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)))))));
    global0 = array<vec4<i32>, 31>();
    var var_3 = var_0.x;
    var var_4 = min(~abs(~(~9140u)), _wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(1u, 4294967295u, 1u, 86695u)), ~vec4<u32>(1u, 1u, 1u, 1u) | _wgslsmith_clamp_vec4_u32(min(vec4<u32>(1965u, 36804u, 0u, 4294967295u), vec4<u32>(1u, 14496u, 12072u, 1u)), select(vec4<u32>(53801u, 0u, 0u, 1u), vec4<u32>(1u, 34046u, 4289u, 14978u), true), vec4<u32>(0u, 1u, 0u, 81168u))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(firstTrailingBit(firstLeadingBit(0u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 14727u, 4294967295u), ~vec3<u32>(4294967295u, 1u, 4294967295u))), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, 0i, _wgslsmith_sub_i32(~2147483647i, 0i)), vec4<i32>(-1i) * -vec4<i32>(var_1.x, -12309i, var_1.x, u_input.a.x)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2), var_2, any(vec3<bool>(true, false, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_f32(507f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1314f - 533f) * _wgslsmith_f_op_f32(max(-653f, var_0.x))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 481f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(189f - _wgslsmith_f_op_f32(var_0.x * var_2))))));
}

