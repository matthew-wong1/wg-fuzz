struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: vec4<f32>,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 4> = array<Struct_3, 4>(Struct_3(vec4<bool>(false, true, true, false)), Struct_3(vec4<bool>(false, true, true, true)), Struct_3(vec4<bool>(false, false, false, true)), Struct_3(vec4<bool>(false, false, false, false)));

var<private> global1: Struct_2;

var<private> global2: Struct_3 = Struct_3(vec4<bool>(false, false, true, true));

var<private> global3: vec3<bool>;

var<private> global4: array<Struct_2, 11>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> vec4<u32> {
    let var_0 = global4[_wgslsmith_index_u32(1u >> (1u % 32u), 11u)];
    global2 = global0[_wgslsmith_index_u32(global1.a.x | ~(~countOneBits(36137u)), 4u)];
    let var_1 = Struct_1(!arg_0.a, !var_0.d.a);
    var var_2 = var_1;
    var var_3 = Struct_1(arg_1.d.b, vec4<bool>(global2.a.x, 1i >= -_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -12767i, -13159i, 40241i), vec4<i32>(-2147483647i, 15308i, 2147483647i, 49150i)), false, var_2.b.x));
    return global1.a;
}

fn func_2() -> vec4<bool> {
    let var_0 = countOneBits(firstLeadingBit(func_3(Struct_3(vec4<bool>(global3.x, false, global2.a.x, false)), global4[_wgslsmith_index_u32(~global1.a.x, 11u)]))) | vec4<u32>(u_input.a.x, countOneBits(min(1u, 6681u)), global1.a.x, 52766u & ~(~global1.a.x));
    let var_1 = vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b + 716f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.c.x)) * -316f)) + 1f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.b)))))), global1.b);
    let var_2 = -2972i;
    let var_3 = Struct_1(select(!(!vec4<bool>(false, false, global2.a.x, false)), !global1.d.b, any(!vec2<bool>(global2.a.x, false))), vec4<bool>(!global1.d.b.x != (_wgslsmith_add_i32(-18032i, var_2) > -1i), true, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)) <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(521f, -1126f))))));
    var var_4 = Struct_3(select(vec4<bool>(global2.a.x, !(!global1.d.a.x), !all(vec2<bool>(false, global1.d.a.x)), global1.d.a.x), global2.a, global2.a.x));
    return !select(var_3.a, select(vec4<bool>(true, var_4.a.x, all(global1.d.b), var_3.a.x), global2.a, !vec4<bool>(global1.e.x, true, global3.x, false)), !(!var_3.b));
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = Struct_1(func_2(), global1.d.b);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-389f, 305f)))) + 2570f), _wgslsmith_f_op_f32(global1.c.x - 1927f), 156f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(global1.c.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b - global1.c.x)))));
    global4 = array<Struct_2, 11>();
    global2 = global0[_wgslsmith_index_u32(~abs(~abs(~4294967295u)), 4u)];
    global3 = vec3<bool>(true, select(!((true != global1.e.x) | global2.a.x), true | all(vec2<bool>(true, global1.d.a.x)), all(global2.a.yx)), (global1.e.x == ((true == global3.x) && true)) & false);
    return Struct_2(firstTrailingBit(abs(vec4<u32>(4294967295u, _wgslsmith_sub_u32(4294967295u, 1u), _wgslsmith_mult_u32(global1.a.x, 1u), reverseBits(37164u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(890f * var_1.x)))) - 643f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(637f - var_1.x), var_1.x, _wgslsmith_f_op_f32(step(669f, global1.c.x)), _wgslsmith_f_op_f32(344f - -1392f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(var_1)), global1.c)))), Struct_1(func_2(), !select(func_2(), vec4<bool>(true, false, global1.e.x, global3.x), vec4<bool>(var_0.a.x, false, true, false))), select(!select(vec2<bool>(false, var_0.b.x), !global1.e, var_0.a.x), vec2<bool>(true, global2.a.x), true));
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: Struct_2, arg_3: Struct_3) -> bool {
    let var_0 = vec2<bool>(!global1.e.x, global1.e.x);
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1.a.x, ~_wgslsmith_sub_u32(1u, u_input.b.x)), 4u)];
    global2 = arg_3;
    let var_2 = -(select(vec4<i32>(-8528i, 1i, 1i, -41549i), vec4<i32>(1i, 1i, 1i, 1i), !vec4<bool>(false, arg_2.e.x, false, false)) >> (~global1.a % vec4<u32>(32u))) | (~(-min(vec4<i32>(2147483647i, 342i, -77738i, 189i), vec4<i32>(43068i, -10045i, -2147483647i, 3375i))) >> (vec4<u32>(~69310u, u_input.b.x, 26387u, ~min(28306u, arg_2.a.x)) % vec4<u32>(32u)));
    global4 = array<Struct_2, 11>();
    return global2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(abs(global1.b));
    let var_1 = 4294967295u;
    var var_2 = Struct_1(global1.d.b, vec4<bool>(select(false, true, func_4(1f, 32187u, func_1(global1.a.x), Struct_3(vec4<bool>(global3.x, false, global3.x, global2.a.x)))), all(func_2().wxy), true, func_4(var_0, var_1, func_1(~0u), Struct_3(!vec4<bool>(false, global2.a.x, true, true)))));
    var var_3 = firstLeadingBit(u_input.b);
    var var_4 = global1.d;
    var var_5 = vec2<i32>(0i, ~_wgslsmith_div_i32(i32(-1i) * -14096i, -7171i));
    let var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.x) - global1.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(1259f, -901f, _wgslsmith_f_op_f32(-var_6)) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -575f), 654f, _wgslsmith_f_op_f32(439f * var_0))));
}

