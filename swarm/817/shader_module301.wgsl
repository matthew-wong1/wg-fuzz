struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<i32>(15825i, 2147483647i));

var<private> global1: bool = true;

var<private> global2: u32 = 0u;

var<private> global3: vec4<bool> = vec4<bool>(true, false, false, false);

var<private> global4: array<f32, 9>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: vec4<u32>, arg_3: Struct_2) -> f32 {
    let var_0 = abs(_wgslsmith_clamp_u32(44503u, abs(35144u) >> (arg_0.a.x % 32u), ~(~4294967295u))) & 1u;
    var var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_3.b.wzy))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(arg_0.a.x, 9u)]), _wgslsmith_div_f32(279f, arg_0.b.x), -1000f))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1, -1000f))), _wgslsmith_f_op_f32(arg_3.b.x + _wgslsmith_f_op_f32(-arg_3.b.x)), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_0, arg_0.a.x, var_0), arg_2.xxw), arg_2.xyy & vec3<u32>(arg_3.a.x, 1u, 24257u)), 9u)])), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(2359f + arg_0.b.x))), _wgslsmith_f_op_f32(-705f - _wgslsmith_f_op_f32(sign(2180f))), global4[_wgslsmith_index_u32(0u, 9u)])));
    let var_2 = var_1.b;
    global0 = Struct_3(vec2<i32>(-global0.a.x, global0.a.x));
    let var_3 = _wgslsmith_mult_vec4_i32(u_input.b, min(select(~vec4<i32>(global0.a.x, u_input.b.x, u_input.a.x, u_input.a.x), _wgslsmith_sub_vec4_i32(vec4<i32>(global0.a.x, u_input.b.x, -1i, -113623i), u_input.b), !(!vec4<bool>(false, global3.x, false, global3.x))), vec4<i32>(u_input.b.x, u_input.b.x, 0i, ~(-global0.a.x))));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2178f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-372f - -1176f))) * 1005f);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(590f, -1509f, -1388f)))));
    var var_1 = Struct_2(~vec2<u32>(1u, 1u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-831f, global4[_wgslsmith_index_u32(81730u, 9u)], -304f, 1871f), vec4<f32>(global4[_wgslsmith_index_u32(61720u, 9u)], 329f, global4[_wgslsmith_index_u32(0u, 9u)], var_0.a.x), vec4<bool>(global3.x, global3.x, true, global3.x))), vec4<f32>(-794f, var_0.a.x, var_0.a.x, -1000f), global3.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1667f, var_0.a.x, global4[_wgslsmith_index_u32(4294967295u, 9u)], -930f)))) - vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(vec2<u32>(8081u, 0u), vec4<f32>(var_0.a.x, -1000f, 279f, global4[_wgslsmith_index_u32(4294967295u, 9u)])), _wgslsmith_f_op_f32(min(global4[_wgslsmith_index_u32(4294967295u, 9u)], var_0.a.x)), vec4<u32>(1u, 1u, 1u, 1u), Struct_2(vec2<u32>(93885u, 4294967295u), vec4<f32>(global4[_wgslsmith_index_u32(35290u, 9u)], -798f, -660f, -1000f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global4[_wgslsmith_index_u32(1744u, 9u)])), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(0u, 9u)] - 1282f)), _wgslsmith_f_op_f32(floor(438f)), var_0.a.x)));
    let var_2 = select(u_input.a, _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global0.a.x, 0i), select(_wgslsmith_sub_vec2_i32(u_input.a, vec2<i32>(-4136i, global0.a.x)), vec2<i32>(-2147483647i, 83984i), true)), vec2<i32>(47068i, u_input.a.x)), global3.xw);
    var var_3 = u_input.b;
    var var_4 = vec3<bool>(true, all(select(vec4<bool>(global3.x, false || global3.x, any(global3.wz), var_3.x <= u_input.b.x), !(!vec4<bool>(global3.x, false, global3.x, global3.x)), select(select(vec4<bool>(global3.x, false, true, false), vec4<bool>(global3.x, global3.x, global3.x, false), true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, global3.x, true), false), select(vec4<bool>(false, true, false, true), vec4<bool>(global3.x, false, true, true), vec4<bool>(false, global3.x, global3.x, false))))), !(global3.x & global3.x));
    return Struct_2(vec2<u32>(select(var_1.a.x, abs(~var_1.a.x), false), var_1.a.x), _wgslsmith_f_op_vec4_f32(var_1.b * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.x), global4[_wgslsmith_index_u32(1u, 9u)], _wgslsmith_f_op_f32(ceil(var_1.b.x)), var_1.b.x))));
}

fn func_1(arg_0: vec3<u32>) -> vec4<u32> {
    var var_0 = func_2();
    let var_1 = Struct_2(arg_0.xx, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(var_0.b, var_0.b), _wgslsmith_f_op_vec4_f32(var_0.b + var_0.b)), vec4<f32>(-241f, _wgslsmith_f_op_f32(round(var_0.b.x)), var_0.b.x, _wgslsmith_f_op_f32(min(var_0.b.x, var_0.b.x)))))));
    var var_2 = max(arg_0, vec3<u32>(reverseBits(~(~var_0.a.x)), 15085u, arg_0.x << (var_0.a.x % 32u)));
    var var_3 = Struct_3(~((global0.a | vec2<i32>(1i, 2836i)) << (var_1.a % vec2<u32>(32u))));
    let var_4 = 413f;
    return abs(~vec4<u32>(firstTrailingBit(1u), 1u, 4294967295u, ~(~0u)));
}

fn func_4(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_1, arg_3: vec4<u32>) -> vec3<f32> {
    let var_0 = func_2();
    var var_1 = ~(~arg_3.x);
    global1 = any(!(!select(vec2<bool>(true, global3.x), global3.zw, false))) && any(!global3.xz);
    global1 = !(!any(select(select(global3.wy, global3.zx, global3.yw), vec2<bool>(true, true), global3.x)));
    global3 = select(vec4<bool>((true | (arg_2.a.x != -901f)) | all(vec3<bool>(false, global3.x, false)), true, any(!select(vec4<bool>(true, true, false, true), vec4<bool>(global3.x, global3.x, global3.x, true), vec4<bool>(global3.x, global3.x, global3.x, global3.x))), any(select(vec4<bool>(true, global3.x, true, true), select(vec4<bool>(true, global3.x, true, global3.x), vec4<bool>(global3.x, global3.x, false, global3.x), vec4<bool>(true, global3.x, global3.x, global3.x)), false))), !vec4<bool>(select(any(vec3<bool>(true, global3.x, global3.x)), global3.x, global3.x), any(select(vec2<bool>(global3.x, global3.x), vec2<bool>(false, global3.x), vec2<bool>(false, global3.x))), any(global3.ww), global3.x), select(global3.x, var_0.a.x >= (35413u << (1u % 32u)), !global3.x) | false);
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(func_4(u_input.b.zyy, _wgslsmith_f_op_f32(ceil(1f)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(2845u, 9u)]), _wgslsmith_f_op_f32(276f - global4[_wgslsmith_index_u32(1u, 9u)]), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(33660u, 9u)]))), func_1(vec3<u32>(28255u, 4294967295u, ~31169u)))));
    let var_1 = var_0.a.x;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.a));
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.a.x - var_0.a.x), _wgslsmith_f_op_f32(ceil(var_0.a.x)), _wgslsmith_f_op_f32(-936f + var_0.a.x), var_2.a.x) - func_2().b), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(min(var_0.a.x, 600f)), _wgslsmith_f_op_f32(var_0.a.x * -918f), _wgslsmith_div_f32(global4[_wgslsmith_index_u32(66970u, 9u)], -301f), _wgslsmith_f_op_f32(var_2.a.x - global4[_wgslsmith_index_u32(62113u, 9u)])), vec4<f32>(-1000f, -175f, 465f, _wgslsmith_div_f32(691f, var_0.a.x)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, 270f, -446f, -1000f))) - vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.a.x)), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(1u, 9u)]), _wgslsmith_f_op_f32(1000f + var_2.a.x), 696f)), vec4<f32>(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-337f * 813f)), -403f, _wgslsmith_f_op_f32(step(global4[_wgslsmith_index_u32(func_2().a.x, 9u)], _wgslsmith_f_op_f32(321f - -511f)))), vec4<bool>(all(select(global3.wz, global3.yx, false)), global3.x, !global3.x & global3.x, false))));
    var_3 = vec4<f32>(func_2().b.x, global4[_wgslsmith_index_u32(~(~countOneBits(~20551u)), 9u)], var_3.x, 2159f);
    let var_4 = 1u << (_wgslsmith_div_u32(~0u, func_1(~_wgslsmith_clamp_vec3_u32(vec3<u32>(54435u, 28128u, 7904u), vec3<u32>(1u, 0u, 0u), vec3<u32>(81006u, 30092u, 0u))).x) % 32u);
    var_3 = vec4<f32>(var_2.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1111f), _wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(func_3(Struct_2(_wgslsmith_mod_vec2_u32(vec2<u32>(var_4, 86881u), vec2<u32>(81338u, 37754u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(var_4, 9u)], var_3.x, 1000f, var_0.a.x))), 1543f, vec4<u32>(firstTrailingBit(1u), var_4, ~var_4, ~4294967295u), Struct_2(~vec2<u32>(var_4, 4294967295u), func_2().b)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(833f, global4[_wgslsmith_index_u32(var_4, 9u)]) + -1489f), _wgslsmith_f_op_f32(max(-854f, -938f)), true)))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec4_u32(~firstTrailingBit(vec4<u32>(var_4, 22036u, 0u, var_4)), _wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(var_4, 4294967295u, 1u, 65553u)), vec4<u32>(var_4, 0u, var_4, var_4) ^ vec4<u32>(var_4, 0u, var_4, var_4))), global0.a.x ^ global0.a.x);
}

