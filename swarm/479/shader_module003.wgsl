struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: i32 = -34125i;

var<private> global3: array<u32, 5> = array<u32, 5>(1u, 0u, 0u, 1u, 9309u);

var<private> global4: array<vec4<u32>, 27>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> vec3<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(631f, global1.a.x, global1.a.x), vec3<f32>(global0.a.x, _wgslsmith_f_op_f32(floor(global1.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -625f)))) + global1.a), -u_input.a > (_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -2147483647i, 0i), abs(u_input.d)) | 0i));
    global0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(max(global0.a.x, var_0.a.x))))), _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -295f) - _wgslsmith_f_op_f32(exp2(var_0.a.x)))))), all(!vec4<bool>(true, global1.b, global1.b | true, true)));
    var var_1 = select(u_input.c.xxy, ~vec3<u32>(4294967295u, 23198u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 1u), vec2<u32>(25413u, u_input.b.x))), !(true || global1.b) & var_0.b);
    let var_2 = vec3<u32>(u_input.b.x, _wgslsmith_dot_vec4_u32(~(~select(global4[_wgslsmith_index_u32(u_input.c.x, 27u)], u_input.c, true)), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(global4[_wgslsmith_index_u32(4294967295u, 27u)], global4[_wgslsmith_index_u32(u_input.b.x, 27u)]), _wgslsmith_add_vec4_u32(global4[_wgslsmith_index_u32(1u, 27u)], u_input.c)), _wgslsmith_div_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(1u, 5u)], global3[_wgslsmith_index_u32(1u, 5u)], global3[_wgslsmith_index_u32(8767u, 5u)], 0u), _wgslsmith_div_vec4_u32(vec4<u32>(0u, global3[_wgslsmith_index_u32(4294967295u, 5u)], global3[_wgslsmith_index_u32(48430u, 5u)], u_input.c.x), vec4<u32>(var_1.x, 1u, 4294967295u, var_1.x))))), var_1.x);
    var_0 = Struct_1(var_0.a, false != select(false, global1.b, var_0.b == global0.b));
    return u_input.d & countOneBits(_wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.a, u_input.d.x, 0i), -u_input.d) >> (vec3<u32>(var_1.x, 116589u, var_2.x) % vec3<u32>(32u)));
}

fn func_2() -> bool {
    var var_0 = select(func_3(), _wgslsmith_div_vec3_i32(u_input.d, vec3<i32>(_wgslsmith_sub_i32(-51377i, 21800i), 1i, u_input.d.x)), !select(!vec3<bool>(global0.b, false, global0.b), select(select(vec3<bool>(global1.b, true, false), vec3<bool>(global0.b, global1.b, false), vec3<bool>(global0.b, false, global1.b)), select(vec3<bool>(global1.b, global0.b, false), vec3<bool>(global0.b, global0.b, false), vec3<bool>(true, true, global1.b)), all(vec2<bool>(true, global1.b))), global0.b));
    var var_1 = select(select(select(vec2<bool>(all(vec4<bool>(true, global1.b, global1.b, global0.b)), global1.b), select(vec2<bool>(true, true), select(vec2<bool>(global1.b, true), vec2<bool>(global0.b, global0.b), global0.b), !vec2<bool>(false, global0.b)), true || (global0.a.x <= 2321f)), !select(vec2<bool>(true, global1.b), vec2<bool>(global0.b, global0.b), false), select(vec2<bool>(any(vec2<bool>(global0.b, false)), false), select(vec2<bool>(true, true), vec2<bool>(true, global1.b), false), select(select(vec2<bool>(global1.b, global0.b), vec2<bool>(true, false), vec2<bool>(global0.b, true)), select(vec2<bool>(true, true), vec2<bool>(true, global1.b), false), any(vec3<bool>(global0.b, global0.b, true))))), vec2<bool>(u_input.e.x <= countOneBits(min(-2147483647i, u_input.e.x)), false), select(vec2<bool>(any(select(vec2<bool>(false, global1.b), vec2<bool>(global0.b, global1.b), vec2<bool>(global0.b, false))), max(81661u, 1u) != ~u_input.c.x), vec2<bool>(!(-979f < global1.a.x), global0.b), !global1.b));
    global1 = Struct_1(global1.a, false);
    let var_2 = !select(vec3<bool>(all(!vec2<bool>(var_1.x, false)), !(false && global1.b), all(vec4<bool>(true, true, true, true))), vec3<bool>(!select(true, global1.b, var_1.x), global3[_wgslsmith_index_u32(12404u, 5u)] > reverseBits(1u), !(!global0.b)), (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 5u)] << (40154u % 32u)) >= abs(min(1u, global3[_wgslsmith_index_u32(u_input.c.x, 5u)])));
    let var_3 = _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(~67019u & (u_input.c.x & 44492u), u_input.b.x), min(vec2<u32>(abs(127u), ~10805u), vec2<u32>(u_input.b.x, u_input.c.x))), vec2<u32>(0u, _wgslsmith_mult_u32(u_input.c.x, u_input.b.x)) & firstTrailingBit(~(~u_input.b)));
    return 859f > global1.a.x;
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = -u_input.d;
    let var_1 = !(~_wgslsmith_sub_u32(u_input.c.x, firstTrailingBit(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c.x, 5u)], 5u)])) < global3[_wgslsmith_index_u32(~arg_0, 5u)]);
    let var_2 = u_input.b.x;
    global3 = array<u32, 5>();
    var var_3 = select(vec3<bool>(any(!(!vec2<bool>(global0.b, global0.b))), global0.b, func_2()), select(!select(!vec3<bool>(false, var_1, var_1), select(vec3<bool>(true, false, var_1), vec3<bool>(true, true, global0.b), vec3<bool>(true, false, var_1)), select(vec3<bool>(true, global0.b, global0.b), vec3<bool>(true, true, false), vec3<bool>(var_1, false, global0.b))), vec3<bool>(true, !global1.b, any(select(vec3<bool>(false, false, true), vec3<bool>(false, global0.b, global1.b), vec3<bool>(global1.b, global0.b, global1.b)))), select(!select(vec3<bool>(true, global0.b, var_1), vec3<bool>(global0.b, false, false), vec3<bool>(global1.b, true, false)), select(vec3<bool>(var_1, global1.b, false), vec3<bool>(global0.b, true, true), false), !vec3<bool>(global1.b, var_1, global0.b))), any(select(vec2<bool>(all(vec2<bool>(true, global0.b)), true), !select(vec2<bool>(false, true), vec2<bool>(false, global1.b), vec2<bool>(false, var_1)), var_1)));
    return 653f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(962f, 1746f, global0.a.x, 145f), vec4<f32>(1264f, global0.a.x, global1.a.x, -421f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, 485f, -264f, 991f))), global1.b)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c & abs(~vec4<u32>(u_input.b.x, 50149u, 1u, global3[_wgslsmith_index_u32(44027u, 5u)])), countOneBits(firstTrailingBit(~(-u_input.a))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.a.x, _wgslsmith_f_op_f32(max(-749f, -742f)), global1.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.x, var_0.x, var_0.x) + vec3<f32>(-110f, 1000f, var_0.x)) * global0.a)), select(vec3<bool>(any(vec3<bool>(false, false, false)), any(vec4<bool>(global0.b, global1.b, global1.b, true)), global1.b), select(vec3<bool>(global1.b, global1.b, global0.b), select(vec3<bool>(true, true, false), vec3<bool>(global0.b, true, global1.b), vec3<bool>(false, global1.b, global1.b)), true), vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global3[_wgslsmith_index_u32(u_input.b.x, 5u)])) * -1283f))));
}

