struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29>;

var<private> global1: array<Struct_1, 14>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<f32> {
    var var_0 = vec3<bool>(select(any(select(vec2<bool>(true, false), vec2<bool>(true, true), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(361f, 1166f, true))) >= 310f, any(vec2<bool>(true, true)) & any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)))), true, abs(~75447i) == ~_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(~u_input.d, 29u)], firstTrailingBit(-559i)));
    var var_1 = true;
    var var_2 = !vec3<bool>(var_0.x, true, false);
    global0 = array<i32, 29>();
    var var_3 = Struct_4(!select(select(!vec3<bool>(false, var_2.x, var_2.x), !vec3<bool>(false, true, var_2.x), false), select(!vec3<bool>(var_0.x, var_0.x, false), select(vec3<bool>(var_2.x, false, var_0.x), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), select(vec3<bool>(true, false, var_0.x), vec3<bool>(var_0.x, true, var_2.x), var_2.x)), !(var_2.x & var_0.x)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1614f, 717f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -723f), -1007f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1062f)))), vec4<f32>(_wgslsmith_f_op_f32(-1172f + _wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-999f * 1245f), _wgslsmith_f_op_f32(max(-1048f, 249f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1000f, -425f)), _wgslsmith_f_op_f32(978f + -410f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(450f)) - _wgslsmith_f_op_f32(-2198f + 996f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1143f, _wgslsmith_f_op_f32(-402f + 333f), -235f, -1688f)))));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-465f, 1032f, true))), -571f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1744f, -645f))), _wgslsmith_f_op_f32(f32(-1f) * -598f)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(func_3()))))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-974f, 2016f, -1000f, 133f)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-133f, 821f, -720f, -1073f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1062f, 2049f, -1309f, -1367f) - vec4<f32>(684f, -136f, -619f, -1000f)))))));
    global0 = array<i32, 29>();
    let var_1 = u_input.b;
    var var_2 = ~(-abs(~vec3<i32>(global0[_wgslsmith_index_u32(u_input.d, 29u)], 22623i, -2147483647i)));
    var var_3 = Struct_5(~countOneBits(abs(min(vec3<i32>(1i, global0[_wgslsmith_index_u32(u_input.d, 29u)], -22076i), vec3<i32>(global0[_wgslsmith_index_u32(55321u, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)], -3379i)))));
    return global1[_wgslsmith_index_u32(u_input.e.x, 14u)];
}

fn func_1() -> Struct_3 {
    global1 = array<Struct_1, 14>();
    global1 = array<Struct_1, 14>();
    return Struct_3(true, ~firstTrailingBit(global0[_wgslsmith_index_u32(u_input.e.x, 29u)]), 0i, func_2());
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: f32, arg_3: u32) -> Struct_2 {
    let var_0 = arg_2;
    global1 = array<Struct_1, 14>();
    let var_1 = _wgslsmith_f_op_f32(arg_2 * -1792f);
    global0 = array<i32, 29>();
    let var_2 = ~_wgslsmith_sub_vec2_i32((vec2<i32>(-1i) * -vec2<i32>(0i, -20246i)) >> (vec2<u32>(arg_0.d.a, arg_3) % vec2<u32>(32u)), ~(~(vec2<i32>(global0[_wgslsmith_index_u32(arg_1, 29u)], global0[_wgslsmith_index_u32(1u, 29u)]) ^ vec2<i32>(2147483647i, arg_0.c))));
    return Struct_2(Struct_1(func_2().a, arg_0.d.b, var_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(), 0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -463f)) * 460f)), 102528u);
    var var_1 = func_1();
    let var_2 = abs(var_1.c);
    global0 = array<i32, 29>();
    let var_3 = _wgslsmith_mult_u32(u_input.a.x, func_4(Struct_3(true, 2147483647i, 21068i, func_4(Struct_3(var_1.a, var_2, 1i, var_0.a), 0u, 262f, 74424u).a), func_1().d.b.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1000f)))), func_1().d.a).a.b.x) == ~u_input.e.x;
    global0 = array<i32, 29>();
    global1 = array<Struct_1, 14>();
    var_0 = Struct_2(func_2());
    let x = u_input.a;
    s_output = StorageBuffer(~(vec4<i32>(-1i) * -vec4<i32>(-1i, 1i, global0[_wgslsmith_index_u32(4294967295u, 29u)], -2147483647i)), ~(6494i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(-31323i, 28778i), -vec2<i32>(11758i, -56680i))), vec2<u32>(22355u, var_0.a.a), -1i);
}

