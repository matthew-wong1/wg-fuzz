struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: f32,
    c: vec4<bool>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: bool,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-58137i);

var<private> global1: array<u32, 9> = array<u32, 9>(1u, 74512u, 0u, 8146u, 18641u, 61185u, 1u, 10075u, 0u);

var<private> global2: vec4<u32>;

var<private> global3: array<vec2<f32>, 4> = array<vec2<f32>, 4>(vec2<f32>(-310f, -1106f), vec2<f32>(-1000f, -366f), vec2<f32>(-1098f, -101f), vec2<f32>(154f, 762f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: vec2<bool>, arg_3: vec4<f32>) -> f32 {
    var var_0 = Struct_3(vec4<bool>(arg_2.x, all(!(!vec4<bool>(arg_2.x, true, true, true))), !arg_2.x, true), -1498f);
    global2 = vec4<u32>(1u, ~4294967295u, firstLeadingBit(~1u), u_input.b);
    let var_1 = 1i >= -(~arg_0);
    let var_2 = ~1i;
    var var_3 = select(select(vec4<bool>(false, true, all(vec4<bool>(false, false, true, true)), true), var_0.a, vec4<bool>(any(var_0.a.yzw), !(global1[_wgslsmith_index_u32(u_input.c, 9u)] == global2.x), any(select(var_0.a.yyy, vec3<bool>(var_1, var_1, true), vec3<bool>(arg_2.x, var_0.a.x, var_0.a.x))), arg_2.x)), !select(!(!vec4<bool>(false, arg_2.x, true, true)), vec4<bool>(var_0.a.x, true, !var_0.a.x, true), !arg_2.x), all(var_0.a));
    return -840f;
}

fn func_2() -> Struct_5 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(879f, _wgslsmith_f_op_f32(func_3(u_input.a, -424f, vec2<bool>(true, true), vec4<f32>(1249f, -189f, -1298f, -501f))))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-838f - 476f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(168f - -1336f), _wgslsmith_div_f32(1362f, -182f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1362f)))))), -2364f);
    let var_1 = var_0.zz;
    let var_2 = Struct_1(-(_wgslsmith_add_i32(global0.a, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -32538i, 1i), vec3<i32>(2147483647i, global0.a, -11740i))) | ~abs(u_input.d)));
    let var_3 = -1265f;
    global3 = array<vec2<f32>, 4>();
    return Struct_5(max(vec4<u32>(max(~64041u, u_input.c), 45416u << (global2.x % 32u), global2.x, ~(~u_input.b)), reverseBits(~(~vec4<u32>(global1[_wgslsmith_index_u32(28704u, 9u)], 0u, 0u, global2.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_1))))), all(!vec4<bool>(all(vec3<bool>(true, true, false)), true, any(vec4<bool>(false, true, true, false)), true)), !vec4<bool>(true, any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), true)), false, u_input.d != 1i));
}

fn func_4(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_5) -> f32 {
    let var_0 = -select(~firstLeadingBit(arg_0), global0.a, select(!func_2().d.x, arg_2.d.x, select(arg_1.x & false, u_input.b < global2.x, arg_1.x)));
    let var_1 = false;
    global2 = arg_2.a;
    let var_2 = Struct_1(0i << (_wgslsmith_clamp_u32(~(~0u), ~68876u, arg_2.a.x) % 32u));
    let var_3 = max(_wgslsmith_div_vec3_u32((global2.yxy >> (vec3<u32>(u_input.b, global2.x, 0u) % vec3<u32>(32u))) >> (global2.zyw % vec3<u32>(32u)), global2.xxx), ~(~arg_2.a.xwx));
    return -729f;
}

fn func_1() -> f32 {
    global3 = array<vec2<f32>, 4>();
    global1 = array<u32, 9>();
    let var_0 = !vec4<bool>(false, true, -(~2147483647i) < global0.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(903f * 1470f))) > _wgslsmith_f_op_f32(-851f * -517f));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_4(u_input.d, select(var_0.yw, select(vec2<bool>(true, true), !var_0.yx, !vec2<bool>(true, var_0.x)), select(4121u == global2.x, var_0.x, true)), func_2()))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    let var_1 = ~global2.x;
    global2 = ~select(countOneBits(~vec4<u32>(global2.x, global1[_wgslsmith_index_u32(global2.x, 9u)], 37961u, 4294967295u)), (~vec4<u32>(77297u, var_1, 1u, global2.x) | _wgslsmith_sub_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(u_input.b, 9u)], 45920u, var_1, 1u), vec4<u32>(global1[_wgslsmith_index_u32(1u, 9u)], u_input.c, u_input.c, u_input.b))) ^ firstLeadingBit(vec4<u32>(global1[_wgslsmith_index_u32(9412u, 9u)], var_1, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 9u)], 9u)], 68932u) << (vec4<u32>(1u, global1[_wgslsmith_index_u32(u_input.c, 9u)], 1u, 0u) % vec4<u32>(32u))), vec4<bool>(true && (global1[_wgslsmith_index_u32(4294967295u, 9u)] < 72221u), true, false, true));
    var var_2 = -vec4<i32>(~15075i, ~(u_input.a | _wgslsmith_add_i32(global0.a, u_input.d)), _wgslsmith_div_i32(u_input.d, _wgslsmith_add_i32(global0.a, _wgslsmith_mult_i32(u_input.a, u_input.d))), countOneBits(global0.a << (36596u % 32u)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-410f + _wgslsmith_f_op_f32(sign(770f)))))));
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-235f, -356f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-585f, 517f)) - _wgslsmith_f_op_f32(361f * 1345f)))) - -1012f);
    let var_4 = var_2.xz;
    var var_5 = u_input.c;
    let var_6 = -789f;
    let x = u_input.a;
    s_output = StorageBuffer(-var_2.yy, var_6);
}

