struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1> = array<bool, 1>(true);

var<private> global1: Struct_3;

var<private> global2: Struct_2 = Struct_2(-31318i, Struct_1(vec3<bool>(true, false, true), 50641i));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: Struct_2) -> i32 {
    var var_0 = u_input.b;
    var var_1 = select(select(select(arg_1.a.a.zz, !(!vec2<bool>(global2.b.a.x, true)), !global2.b.a.xy), select(select(!vec2<bool>(false, global2.b.a.x), vec2<bool>(arg_2.b.a.x, false), true), arg_2.b.a.xx, any(global1.a.a.xx)), false), vec2<bool>(any(select(select(global2.b.a.yy, vec2<bool>(false, false), vec2<bool>(true, true)), global1.a.a.zz, select(vec2<bool>(false, true), arg_2.b.a.xy, arg_1.a.a.yy))), global2.b.a.x), global0[_wgslsmith_index_u32(u_input.b, 1u)]);
    global1 = arg_1;
    var_0 = u_input.b;
    let var_2 = arg_1;
    return u_input.a;
}

fn func_2(arg_0: vec4<i32>) -> Struct_3 {
    global2 = Struct_2(arg_0.x, Struct_1(global2.b.a, global1.a.b));
    global1 = Struct_3(Struct_1(global1.a.a, -55746i), vec4<i32>(firstTrailingBit(-1i), func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(518f, -281f, 637f))), Struct_3(Struct_1(global1.a.a, u_input.a), ~vec4<i32>(-1i, -1i, -1i, u_input.a)), Struct_2(-3301i, Struct_1(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 1u)], global0[_wgslsmith_index_u32(u_input.b, 1u)]), 0i))), global1.b.x, 24984i ^ _wgslsmith_div_i32(firstTrailingBit(-6255i), 53301i)));
    var var_0 = global2.b.a;
    let var_1 = _wgslsmith_f_op_f32(trunc(1570f));
    let var_2 = Struct_3(Struct_1(select(vec3<bool>(true, all(vec2<bool>(global1.a.a.x, var_0.x)), false), global1.a.a, true), min(~(-57929i), global2.a)), -(~_wgslsmith_div_vec4_i32(~vec4<i32>(u_input.a, global1.a.b, global2.a, arg_0.x), global1.b)));
    return var_2;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: i32) -> vec4<f32> {
    global0 = array<bool, 1>();
    let var_0 = global2.b;
    global1 = func_2(global1.b & abs(vec4<i32>(u_input.a, -12092i, var_0.b, global2.a) | ~vec4<i32>(0i, 0i, u_input.a, 2147483647i)));
    var var_1 = _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_div_i32(u_input.a, global1.b.x), ~(-1i), -global1.b.x, abs(-1i)) & global1.b, global1.b), _wgslsmith_add_vec4_i32(~reverseBits(vec4<i32>(2147483647i, arg_2, -1i, global1.a.b)), select(arg_0, vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.a.b, 44593i, -2147483647i, arg_2), vec4<i32>(0i, u_input.a, 2147483647i, -1i)), max(arg_2, var_0.b), select(global1.b.x, arg_2, false), global2.a), !select(vec4<bool>(false, global2.b.a.x, false, var_0.a.x), vec4<bool>(arg_1.x, global1.a.a.x, false, false), false))), abs(arg_0));
    var var_2 = u_input.a;
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(130f, _wgslsmith_f_op_f32(f32(-1f) * -1898f), _wgslsmith_f_op_f32(311f * -1000f), -519f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-510f, -3334f, 2270f, -1114f) + vec4<f32>(1000f, -633f, -862f, -979f)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(483f, 216f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -187f), _wgslsmith_f_op_f32(abs(-1328f)), true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(874f, 302f, global0[_wgslsmith_index_u32(4294967295u, 1u)])), _wgslsmith_f_op_f32(770f - -133f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(182f, -643f, global0[_wgslsmith_index_u32(u_input.b, 1u)])) + _wgslsmith_div_f32(-771f, 237f))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(260f, -1017f, -431f, -209f), vec4<f32>(-875f, -1223f, -274f, 475f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(649f, 1022f, -1000f, 269f), vec4<f32>(-2276f, -2453f, -519f, -1000f)))))))), func_2(arg_0).a.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 1>();
    let var_0 = global1.a;
    let var_1 = global2.b.a.yz;
    global1 = Struct_3(Struct_1(select(!(!vec3<bool>(global2.b.a.x, false, var_0.a.x)), select(global2.b.a, vec3<bool>(var_1.x, global2.b.a.x, global0[_wgslsmith_index_u32(u_input.b, 1u)]), select(global2.b.a, vec3<bool>(false, var_0.a.x, global1.a.a.x), vec3<bool>(false, false, global1.a.a.x))), all(vec2<bool>(var_1.x, var_0.a.x))), ~(-1i)), firstTrailingBit(global1.b));
    global0 = array<bool, 1>();
    let var_2 = select(~vec3<u32>(u_input.b, u_input.b, 1u), select(select(abs(vec3<u32>(47817u, 36528u, 1u)), ~vec3<u32>(67545u, 34849u, 13774u), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, u_input.b), 1u)]), ~(~vec3<u32>(1u, u_input.b, u_input.b)), select(var_0.a, var_0.a, vec3<bool>(true, true, global1.a.a.x))), true & any(select(vec4<bool>(false, false, true, true), vec4<bool>(global0[_wgslsmith_index_u32(0u, 1u)], false, false, global1.a.a.x), global2.b.a.x))) & ~(~min(~vec3<u32>(u_input.b, u_input.b, 129076u), vec3<u32>(36896u, u_input.b, u_input.b)));
    global0 = array<bool, 1>();
    let var_3 = abs(-2147483647i);
    let var_4 = global1.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_sub_vec4_i32(vec4<i32>(global1.a.b, u_input.a, var_0.b, var_0.b), vec4<i32>(global2.a, var_0.b, -1715i, 39004i)) ^ -global1.b, vec2<bool>(-8096i >= var_0.b, var_1.x || var_0.a.x), 1i)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1543f, -346f, 489f, -395f)))), u_input.b, -1i, var_2, min(abs(-vec3<i32>(2147483647i, var_3, 29091i)), -_wgslsmith_add_vec3_i32(vec3<i32>(var_4.b, u_input.a, -33521i), global1.b.xwy >> (var_2 % vec3<u32>(32u)))));
}

