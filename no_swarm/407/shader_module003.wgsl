struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: f32,
    d: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct Struct_4 {
    a: f32,
    b: f32,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23>;

var<private> global1: Struct_1 = Struct_1(391f, false);

var<private> global2: array<Struct_5, 28>;

var<private> global3: array<i32, 10>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: f32) -> u32 {
    global1 = Struct_1(global1.a, arg_1);
    global0 = array<i32, 23>();
    var var_0 = vec3<bool>(!(!all(!vec2<bool>(global1.b, false))), false, true);
    return ~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(select(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(8619u, 4294967295u), var_0.x), u_input.a.zy) << ((firstTrailingBit(arg_0.zy) >> (_wgslsmith_div_vec2_u32(vec2<u32>(39412u, arg_0.x), vec2<u32>(arg_0.x, arg_0.x)) % vec2<u32>(32u))) % vec2<u32>(32u)), ~(~vec2<u32>(4294967295u, u_input.a.x)));
}

fn func_2(arg_0: vec3<f32>) -> vec4<bool> {
    let var_0 = global2[_wgslsmith_index_u32(32969u, 28u)];
    var var_1 = vec2<bool>(true, global1.b);
    let var_2 = _wgslsmith_mult_i32(5820i, global3[_wgslsmith_index_u32(~(func_3(_wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)), 6957i > global3[_wgslsmith_index_u32(u_input.a.x, 10u)], global1.a) >> (78063u % 32u)), 10u)]);
    let var_3 = Struct_5(-countOneBits(vec3<i32>(-43943i, _wgslsmith_add_i32(999i, var_0.a.x), _wgslsmith_mod_i32(49221i, var_0.a.x))));
    return select(!select(select(select(vec4<bool>(var_1.x, var_1.x, global1.b, global1.b), vec4<bool>(var_1.x, var_1.x, false, false), true), select(vec4<bool>(false, false, global1.b, false), vec4<bool>(global1.b, global1.b, false, var_1.x), global1.b), select(vec4<bool>(var_1.x, false, false, global1.b), vec4<bool>(false, true, true, false), vec4<bool>(global1.b, false, global1.b, true))), !vec4<bool>(false, global1.b, var_1.x, true), var_1.x), select(!vec4<bool>(true & global1.b, !var_1.x, true, global1.b || var_1.x), vec4<bool>(global1.a != _wgslsmith_f_op_f32(ceil(global1.a)), true, !(u_input.a.x <= u_input.a.x), var_3.a.x != min(var_0.a.x, -31197i)), !var_1.x), select(true, _wgslsmith_f_op_f32(floor(1758f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * -312f)), global1.b));
}

fn func_1(arg_0: vec2<u32>) -> vec2<bool> {
    var var_0 = global3[_wgslsmith_index_u32(u_input.a.x, 10u)];
    var var_1 = vec3<bool>(true, !(!global1.b) && global1.b, all(func_2(vec3<f32>(global1.a, _wgslsmith_f_op_f32(2106f + global1.a), _wgslsmith_f_op_f32(f32(-1f) * -1034f)))));
    let var_2 = var_1.x;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(global1.a, 1034f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a * global1.a))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, global1.a, -523f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, global1.a, 1272f))))), !(!(!vec3<bool>(global1.b, var_1.x, false))))));
    global1 = Struct_1(_wgslsmith_f_op_f32(-global1.a), any(select(!select(vec3<bool>(false, true, var_1.x), vec3<bool>(global1.b, var_1.x, false), var_1.x), !(!vec3<bool>(global1.b, false, global1.b)), !var_1.x)));
    return !func_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.a, var_3.x, global1.a)))))))).wx;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 10>();
    global0 = array<i32, 23>();
    var var_0 = func_1(~u_input.a.zx);
    var var_1 = select(!func_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, -544f, global1.a), vec3<f32>(772f, global1.a, global1.a), var_0.x))).zx, vec2<bool>(!(!any(vec3<bool>(global1.b, global1.b, var_0.x))), any(!func_2(vec3<f32>(global1.a, global1.a, global1.a)).yxx)), false);
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(global1.a * -412f), global1.b), select(vec4<bool>(var_1.x, false, var_0.x, true), vec4<bool>(var_1.x, all(select(vec3<bool>(true, var_1.x, var_0.x), vec3<bool>(false, var_0.x, false), vec3<bool>(true, global1.b, false))), true, global1.b), !(!select(vec4<bool>(true, true, var_0.x, var_1.x), vec4<bool>(false, true, global1.b, false), vec4<bool>(false, var_0.x, false, var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.a, global1.a))) * _wgslsmith_f_op_f32(f32(-1f) * -357f))), _wgslsmith_dot_vec4_i32(vec4<i32>(~(-1i), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, ~1u), 23u)], 29632i, ~_wgslsmith_mod_i32(-20792i, 10537i)), vec4<i32>(reverseBits(0i ^ global3[_wgslsmith_index_u32(1u, 10u)]), global0[_wgslsmith_index_u32(~(~u_input.a.x), 23u)], firstLeadingBit(global0[_wgslsmith_index_u32(u_input.a.x, 23u)]), global3[_wgslsmith_index_u32(77174u, 10u)])));
    var_1 = vec2<bool>(true, true && global1.b);
    let var_3 = select(var_2.b.wy, vec2<bool>(var_0.x && all(!vec2<bool>(global1.b, global1.b)), all(vec4<bool>(!var_0.x, all(vec4<bool>(var_1.x, global1.b, false, var_2.a.b)), false && global1.b, false))), vec2<bool>(true, all(var_2.b) || global1.b));
    let x = u_input.a;
    s_output = StorageBuffer(-abs(vec3<i32>(1i, var_2.d, var_2.d)) >> (u_input.a % vec3<u32>(32u)), global1.a, reverseBits(0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-1200f, -292f)), _wgslsmith_div_f32(global1.a, global1.a))) + 1563f), _wgslsmith_clamp_vec4_u32((_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(33608u, u_input.a.x, 4294967295u, 11025u)) ^ vec4<u32>(u_input.a.x, 0u, 1u, u_input.a.x)) & (select(vec4<u32>(u_input.a.x, 1u, 4294967295u, u_input.a.x), vec4<u32>(1u, 0u, u_input.a.x, u_input.a.x), var_0.x) | vec4<u32>(34863u, 34515u, u_input.a.x, u_input.a.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(~u_input.a.x, ~52071u, u_input.a.x, ~1u), vec4<u32>(countOneBits(u_input.a.x), ~u_input.a.x, u_input.a.x, 1u)), vec4<u32>(u_input.a.x, 76824u, ~(48091u & u_input.a.x), ~firstLeadingBit(34511u))));
}

