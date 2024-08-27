struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<i32>,
    d: u32,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(2147483647i));

var<private> global1: f32 = -202f;

var<private> global2: Struct_4 = Struct_4(4294967295u, vec3<f32>(283f, -284f, -1046f));

var<private> global3: array<i32, 5> = array<i32, 5>(-43479i, 1i, 1i, -12838i, 0i);

var<private> global4: i32 = 44312i;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> vec3<f32> {
    let var_0 = Struct_1(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(max(arg_0.d ^ arg_0.d, countOneBits(0u)), 4294967295u, 1u, min(125617u, arg_0.d) | global2.a), vec4<u32>(select(global2.a, 1u, true), 7803u, global2.a, arg_0.d) & vec4<u32>(_wgslsmith_div_u32(global2.a, global2.a), ~arg_0.d, 0u | arg_0.d, min(17119u, global2.a))), 5u)]);
    var var_1 = !select(vec3<bool>(true, true, false), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false)), all(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, false), true)));
    let var_2 = global2.a;
    let var_3 = arg_0;
    let var_4 = 19498u;
    return global2.b;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<i32>) -> vec3<f32> {
    let var_0 = global0.a;
    global4 = global3[_wgslsmith_index_u32(286u, 5u)];
    global1 = _wgslsmith_f_op_f32(global2.b.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(351f))) + _wgslsmith_f_op_f32(global2.b.x - _wgslsmith_div_f32(global2.b.x, global2.b.x)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_3(Struct_3(Struct_2(Struct_1(var_0.a)), Struct_2(Struct_1(arg_1.x)), arg_1, 4294967295u), arg_1.x)))) * vec3<f32>(2665f, -649f, _wgslsmith_f_op_f32(global2.b.x * -879f)))))));
    global1 = _wgslsmith_f_op_f32(var_1.x * 208f);
    return global2.b;
}

fn func_1() -> vec3<bool> {
    let var_0 = Struct_4(1u, _wgslsmith_f_op_vec3_f32(func_2(select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), false), vec4<bool>(true, false, true, false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true))), vec4<bool>(true, true, true, true), all(vec4<bool>(true, true, true, true))), vec3<i32>(countOneBits(0i), _wgslsmith_add_i32(global3[_wgslsmith_index_u32(3603u, 5u)], global3[_wgslsmith_index_u32(~4294967295u, 5u)]), 10726i))));
    let var_1 = _wgslsmith_add_i32(abs(-33135i), ~(~abs(global3[_wgslsmith_index_u32(global2.a, 5u)] >> (4294967295u % 32u))));
    var var_2 = global0.a;
    var var_3 = -1845f;
    var_3 = _wgslsmith_f_op_f32(max(1626f, -638f));
    return select(!(!vec3<bool>(false, any(vec3<bool>(true, false, false)), true)), vec3<bool>(!select(true, any(vec4<bool>(false, true, true, true)), false), !any(vec2<bool>(true, true)), true), vec3<bool>(firstLeadingBit(0u) > countOneBits(_wgslsmith_mult_u32(global2.a, var_0.a)), true, any(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = global0.a.a;
    global0 = Struct_2(global0.a);
    var var_0 = select(!func_1(), select(!vec3<bool>(true, true, all(vec4<bool>(false, false, false, true))), func_1(), func_1().x), !vec3<bool>(!(global3[_wgslsmith_index_u32(4294967295u, 5u)] == global3[_wgslsmith_index_u32(0u, 5u)]), all(vec2<bool>(true, true)), true));
    var var_1 = global0.a;
    var var_2 = Struct_3(Struct_2(global0.a), Struct_2(Struct_1(countOneBits(-2147483647i))), _wgslsmith_sub_vec3_i32(u_input.a, u_input.a), ~global2.a);
    let var_3 = 0i;
    let var_4 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-851f, global2.b.x) * _wgslsmith_f_op_vec2_f32(global2.b.yz + global2.b.xz)), global2.b.xy, var_0.x)))));
    var var_5 = Struct_4(~var_2.d >> (25118u % 32u), global2.b);
    let var_6 = var_2.c.x | -_wgslsmith_mod_i32(-26571i, -6952i);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(countOneBits(firstLeadingBit(1i)), ~(-1i >> (global2.a % 32u)) ^ _wgslsmith_add_i32(u_input.a.x, -var_1.a), _wgslsmith_dot_vec2_i32(firstLeadingBit(-vec2<i32>(u_input.a.x, var_1.a)), -_wgslsmith_div_vec2_i32(vec2<i32>(-1i, var_3), var_2.c.yz))), vec4<i32>(-countOneBits(countOneBits(-1i)), var_3, global0.a.a, _wgslsmith_add_i32(1i & ~u_input.a.x, ~global3[_wgslsmith_index_u32(639u, 5u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.x + _wgslsmith_f_op_f32(round(-209f))) - 929f));
}

