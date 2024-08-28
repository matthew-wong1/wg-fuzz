struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, false);

var<private> global1: vec4<i32> = vec4<i32>(-41228i, 75799i, -11266i, 2147483647i);

var<private> global2: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec3<bool>(true, false, true), i32(-2147483648)), Struct_1(vec3<bool>(false, true, true), i32(-2147483648)), Struct_1(vec3<bool>(true, true, true), 45748i), Struct_1(vec3<bool>(true, false, false), -35572i), Struct_1(vec3<bool>(true, false, true), -46430i), Struct_1(vec3<bool>(true, true, false), -7669i), Struct_1(vec3<bool>(true, false, false), i32(-2147483648)), Struct_1(vec3<bool>(false, true, false), 25151i), Struct_1(vec3<bool>(true, false, false), -2249i), Struct_1(vec3<bool>(true, true, true), -1i), Struct_1(vec3<bool>(true, false, false), -1i), Struct_1(vec3<bool>(false, false, false), -11406i), Struct_1(vec3<bool>(true, true, true), 0i), Struct_1(vec3<bool>(true, false, true), -32576i), Struct_1(vec3<bool>(false, true, true), 2147483647i), Struct_1(vec3<bool>(true, true, true), -1i), Struct_1(vec3<bool>(false, false, false), 14646i), Struct_1(vec3<bool>(true, true, false), 13783i), Struct_1(vec3<bool>(false, true, true), -11875i), Struct_1(vec3<bool>(false, false, true), 1i), Struct_1(vec3<bool>(true, false, true), -1i), Struct_1(vec3<bool>(true, false, true), -51945i), Struct_1(vec3<bool>(false, true, false), -1i), Struct_1(vec3<bool>(true, false, true), -39458i), Struct_1(vec3<bool>(true, true, true), -53544i), Struct_1(vec3<bool>(false, false, false), -7060i), Struct_1(vec3<bool>(true, true, false), 1i), Struct_1(vec3<bool>(true, true, false), -40909i), Struct_1(vec3<bool>(true, false, true), 2147483647i), Struct_1(vec3<bool>(false, false, true), 1i), Struct_1(vec3<bool>(true, true, false), -11282i), Struct_1(vec3<bool>(true, false, false), 2147483647i));

var<private> global3: vec3<i32> = vec3<i32>(1i, 0i, 2147483647i);

var<private> global4: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec3<bool>(true, false, true), -16i), Struct_1(vec3<bool>(true, false, false), i32(-2147483648)), Struct_1(vec3<bool>(false, false, true), 18797i), Struct_1(vec3<bool>(true, true, true), -1i), Struct_1(vec3<bool>(false, true, true), -25295i), Struct_1(vec3<bool>(false, false, false), -5360i), Struct_1(vec3<bool>(true, true, false), 0i), Struct_1(vec3<bool>(true, false, false), 2147483647i), Struct_1(vec3<bool>(true, true, true), 0i), Struct_1(vec3<bool>(false, false, true), -94323i), Struct_1(vec3<bool>(false, false, false), i32(-2147483648)), Struct_1(vec3<bool>(false, false, true), 0i), Struct_1(vec3<bool>(true, false, false), 2147483647i), Struct_1(vec3<bool>(false, true, true), 1i), Struct_1(vec3<bool>(false, true, false), 12915i), Struct_1(vec3<bool>(false, true, true), 1i), Struct_1(vec3<bool>(true, true, true), -24944i), Struct_1(vec3<bool>(true, true, false), 1i), Struct_1(vec3<bool>(true, false, true), -1i));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: vec2<f32>, arg_3: u32) -> bool {
    var var_0 = Struct_1(select(!(!select(vec3<bool>(true, false, global0.x), vec3<bool>(arg_1, global0.x, false), global0.x)), vec3<bool>(true, global0.x, any(!vec4<bool>(false, arg_1, arg_1, true))), !vec3<bool>(arg_1, any(vec4<bool>(global0.x, false, arg_1, false)), all(vec3<bool>(false, arg_1, true)))), -1i);
    var var_1 = select(global3.yy, -_wgslsmith_sub_vec2_i32(vec2<i32>(global1.x ^ 1i, ~global3.x), -vec2<i32>(u_input.b.x, 29341i)), -2147483647i <= u_input.b.x);
    global0 = select(select(!var_0.a, var_0.a, !(global0.x & var_0.a.x) && !any(vec3<bool>(false, var_0.a.x, global0.x))), select(select(vec3<bool>(arg_3 == arg_0.x, true, global3.x < global1.x), vec3<bool>(!global0.x, var_0.a.x, !arg_1), vec3<bool>(true, !global0.x, true)), var_0.a, vec3<bool>(true, any(vec3<bool>(false, var_0.a.x, false)), true)), select(var_0.a, vec3<bool>(all(global0.xz) | true, true, reverseBits(0u) != (arg_3 << (8040u % 32u))), false));
    let var_2 = -802f;
    let var_3 = !select(!select(vec3<bool>(true, true, true), vec3<bool>(arg_1, false, arg_1), true), var_0.a, any(vec4<bool>(any(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)), false, true, !global0.x)));
    return !((var_3.x & var_0.a.x) == true);
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec3<f32>) -> f32 {
    let var_0 = Struct_1(!(!select(arg_1.a, vec3<bool>(global0.x, true, true), vec3<bool>(arg_1.a.x, false, false))), (_wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.b.x, -1i, 2147483647i), ~52464i) ^ max(-arg_1.b, 3677i)) | 2147483647i);
    global2 = array<Struct_1, 32>();
    let var_1 = (4040u != select(select(4294967295u, _wgslsmith_dot_vec2_u32(u_input.c.wz, u_input.c.wx), true), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(64407u, 63903u), ~u_input.a, _wgslsmith_add_u32(u_input.a, 1u)), func_3(vec3<u32>(9894u, 1u, u_input.c.x), false, vec2<f32>(-374f, arg_2.x), firstLeadingBit(29861u)))) && !var_0.a.x;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x));
    global0 = !vec3<bool>(var_0.a.x, all(!(!vec2<bool>(true, var_0.a.x))), global0.x);
    return _wgslsmith_f_op_f32(450f - _wgslsmith_div_f32(1472f, 1346f));
}

fn func_1(arg_0: vec4<u32>) -> vec2<i32> {
    global0 = vec3<bool>(select(false, (arg_0.x >= arg_0.x) | (true && global0.x), !(!global0.x)), true, global0.x);
    var var_0 = -(~_wgslsmith_mult_i32(~_wgslsmith_add_i32(global3.x, 47961i), u_input.b.x));
    let var_1 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1371f), 1461f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(330f, Struct_1(vec3<bool>(true, global0.x, global0.x), u_input.b.x), vec3<f32>(1000f, -1000f, 126f))) + _wgslsmith_f_op_f32(-874f * -629f)))), _wgslsmith_f_op_f32(-680f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(400f))))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1569f + 138f)), 1995f, 3682f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2184f, _wgslsmith_f_op_f32(f32(-1f) * -765f), _wgslsmith_f_op_f32(177f * 317f)))))));
    var_0 = ~_wgslsmith_mult_i32(countOneBits(_wgslsmith_clamp_i32(-1286i, -37903i, global3.x)), -reverseBits(u_input.b.x)) << (~(~arg_0.x) % 32u);
    let var_2 = global1.wxy;
    return global3.zz;
}

fn func_4(arg_0: vec2<i32>) -> u32 {
    global3 = ~global1.xwy;
    let var_0 = -1i;
    let var_1 = abs(-firstTrailingBit(-u_input.b)) & vec3<i32>(1i, arg_0.x, -10707i);
    let var_2 = global4[_wgslsmith_index_u32(u_input.a, 19u)];
    global1 = min(min(-(abs(vec4<i32>(u_input.b.x, -1i, var_2.b, -2147483647i)) >> (u_input.c % vec4<u32>(32u))), vec4<i32>(-1i, ~(-10307i), (var_1.x & -1i) ^ ~0i, 0i)), countOneBits(select(vec4<i32>(~arg_0.x, global3.x, _wgslsmith_dot_vec2_i32(u_input.b.yz, global1.zw), ~(-30165i)), abs(-vec4<i32>(37533i, var_1.x, 24709i, global3.x)), !var_2.a.x)));
    return select(~select(_wgslsmith_clamp_u32(_wgslsmith_add_u32(32285u, u_input.c.x), ~u_input.c.x, _wgslsmith_add_u32(u_input.c.x, 0u)), _wgslsmith_add_u32(1u, 1u), !any(vec2<bool>(true, var_2.a.x))), 1u, !(false & (_wgslsmith_f_op_f32(156f + -667f) > _wgslsmith_f_op_f32(round(489f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_u32(52328u, func_4(func_1(~(~u_input.c))));
    let var_1 = Struct_1(vec3<bool>(-u_input.b.x > select(2147483647i & global1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, global1.x), global1.zw), any(vec3<bool>(global0.x, global0.x, false))), select(~u_input.a > _wgslsmith_dot_vec2_u32(u_input.c.xx, vec2<u32>(66236u, u_input.a)), all(select(vec2<bool>(true, false), global0.xx, vec2<bool>(global0.x, global0.x))), func_3(u_input.c.yxw, false, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, 584f))), 64831u)), !(any(vec3<bool>(false, false, true)) | all(vec4<bool>(true, global0.x, global0.x, false)))), global1.x);
    let var_2 = Struct_1(var_1.a, u_input.b.x);
    let var_3 = Struct_1(!(!(!(!var_1.a))), i32(-1i) * 0i);
    let var_4 = global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, _wgslsmith_clamp_u32(0u, 1u, u_input.a)), vec2<u32>(func_4(select(global1.zy, vec2<i32>(1i, var_2.b), true)), u_input.a)), _wgslsmith_mult_u32(u_input.a, ~(~0u))), 19u)];
    let var_5 = var_1;
    var var_6 = 216f;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c);
}

