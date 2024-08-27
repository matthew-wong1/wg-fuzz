struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<i32>,
    d: i32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

var<private> global1: Struct_1 = Struct_1(true, 452f, vec3<i32>(29921i, i32(-2147483648), 0i), 2147483647i, vec2<u32>(0u, 23842u));

var<private> global2: f32;

var<private> global3: array<bool, 7> = array<bool, 7>(false, true, false, true, false, true, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>) -> vec2<f32> {
    var var_0 = true;
    let var_1 = Struct_1(global1.e.x >= u_input.b, global1.b, vec3<i32>(arg_0.c.x, global1.d, arg_0.d), 15044i, ~arg_0.e);
    global1 = arg_0;
    let var_2 = arg_0;
    global1 = Struct_1(var_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(ceil(var_1.b))), _wgslsmith_mult_vec3_i32(~(~vec3<i32>(var_1.d, arg_0.d, global1.c.x)), _wgslsmith_add_vec3_i32(vec3<i32>(~var_2.d, global1.c.x, ~global1.d), min(vec3<i32>(var_1.d, u_input.c.x, 2147483647i), arg_0.c))), var_1.c.x, abs(~vec2<u32>(arg_0.e.x, var_2.e.x) & countOneBits(vec2<u32>(4294967295u, 0u))));
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-228f, -373f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.b, _wgslsmith_f_op_f32(floor(306f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-843f + global1.b) + _wgslsmith_f_op_f32(var_2.b * 849f)))));
}

fn func_2() -> vec3<f32> {
    var var_0 = ~countOneBits(select(global1.c.yy, global1.c.yy, select(vec2<bool>(false, global1.a), vec2<bool>(false, global3[_wgslsmith_index_u32(1u, 7u)]), !vec2<bool>(global1.a, global1.a))));
    let var_1 = _wgslsmith_f_op_vec2_f32(func_3(Struct_1(global3[_wgslsmith_index_u32(6135u, 7u)], _wgslsmith_f_op_f32(trunc(global1.b)), _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, -6095i, u_input.a), global1.c), u_input.c.zzx), _wgslsmith_sub_i32(global1.d, reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, global1.d, -1i, 1i), u_input.c))), _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.b, 34330u), global1.e) & _wgslsmith_sub_vec2_u32(reverseBits(global1.e), global1.e)), !select(select(vec2<bool>(global3[_wgslsmith_index_u32(0u, 7u)], true), select(vec2<bool>(false, false), vec2<bool>(false, false), false), all(vec2<bool>(true, global1.a))), vec2<bool>(global1.a, global3[_wgslsmith_index_u32(global1.e.x, 7u)]), global1.a)));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~firstLeadingBit(u_input.b), firstLeadingBit(u_input.b), 28342u), 28u)];
    let var_3 = vec2<i32>(min(~(-(var_0.x << (4294967295u % 32u))), firstTrailingBit(~var_2.c.x)), _wgslsmith_clamp_i32(countOneBits(4115i), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global1.d, u_input.a, var_0.x, -2659i), u_input.c), ~vec4<i32>(u_input.a, u_input.c.x, global1.d, global1.c.x)) & _wgslsmith_sub_i32(-16266i, 28351i), _wgslsmith_add_i32(_wgslsmith_mult_i32(var_2.d, i32(-1i) * -2147483647i), _wgslsmith_div_i32(_wgslsmith_add_i32(25603i, var_2.c.x), ~2147483647i))));
    global0 = array<Struct_1, 28>();
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(round(global1.b))))), 739f, _wgslsmith_div_f32(global1.b, 467f)));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: Struct_1) -> bool {
    let var_0 = vec4<bool>(!(!global3[_wgslsmith_index_u32(87446u, 7u)]), any(vec2<bool>(all(!vec3<bool>(global1.a, global3[_wgslsmith_index_u32(global1.e.x, 7u)], false)), _wgslsmith_f_op_f32(f32(-1f) * -1643f) == arg_2.b)), !(false | (_wgslsmith_f_op_f32(arg_2.b - 139f) < arg_0)), !all(vec3<bool>(any(vec2<bool>(true, global3[_wgslsmith_index_u32(61496u, 7u)])), 4294967295u >= arg_1, any(vec3<bool>(true, arg_2.a, false)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b, global1.b, -248f))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_2())))));
    var var_2 = global0[_wgslsmith_index_u32(min(arg_2.e.x, arg_2.e.x), 28u)];
    var var_3 = select(select(~_wgslsmith_sub_vec4_u32(vec4<u32>(35985u, arg_1, u_input.b, arg_2.e.x), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_1, 0u, arg_1, 4294967295u), vec4<u32>(5717u, arg_1, 1u, var_2.e.x))), min(~min(vec4<u32>(4294967295u, 27446u, 26697u, arg_1), vec4<u32>(u_input.b, arg_2.e.x, 1u, 4294967295u)), max(vec4<u32>(u_input.b, 10294u, arg_1, arg_2.e.x) & vec4<u32>(23498u, arg_1, 1u, 39565u), ~vec4<u32>(global1.e.x, 4294967295u, u_input.b, 33203u))), var_0), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(~8540u, ~u_input.b), var_2.e.x, 0u, var_2.e.x), min(firstTrailingBit(vec4<u32>(u_input.b, 0u, var_2.e.x, 18437u)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.e.x, 6877u, 33648u, arg_1), vec4<u32>(u_input.b, arg_1, global1.e.x, global1.e.x))) ^ select(vec4<u32>(1132u, arg_2.e.x, global1.e.x, 48425u) ^ vec4<u32>(u_input.b, 0u, var_2.e.x, arg_1), vec4<u32>(3342u, arg_1, 125509u, 0u), false)), var_0);
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(-arg_0), var_2.b) * vec4<f32>(_wgslsmith_f_op_f32(floor(arg_2.b)), _wgslsmith_f_op_f32(exp2(var_2.b)), _wgslsmith_f_op_f32(-arg_0), var_2.b))));
    return u_input.a == -37075i;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 7>();
    var var_0 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) - _wgslsmith_f_op_f32(-global1.b)) + 405f), global1.e.x, global0[_wgslsmith_index_u32(37362u, 28u)]);
    let var_1 = global0[_wgslsmith_index_u32(countOneBits(u_input.b), 28u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(select(u_input.c, (u_input.c ^ vec4<i32>(u_input.c.x, 0i, -1i, -26946i)) & _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 0i, u_input.a, global1.c.x), u_input.c), !vec4<bool>(global1.a, true, true, var_1.a)), u_input.c), u_input.c);
}

