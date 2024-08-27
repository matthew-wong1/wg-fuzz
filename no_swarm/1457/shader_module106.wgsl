struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 21> = array<vec3<bool>, 21>(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false));

var<private> global1: Struct_4 = Struct_4(0i, -1022f, vec4<u32>(75289u, 0u, 4294967295u, 1u), true, Struct_2(Struct_1(vec2<f32>(374f, -115f), vec2<u32>(4294967295u, 0u), 24548u), vec3<u32>(1u, 4294967295u, 1u)));

var<private> global2: bool = false;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: f32, arg_3: vec2<i32>) -> u32 {
    let var_0 = arg_0.a;
    global2 = true;
    var var_1 = vec4<bool>(global1.d, all(select(!select(vec4<bool>(global1.d, global1.d, false, global1.d), vec4<bool>(false, false, global1.d, false), vec4<bool>(false, global1.d, false, false)), vec4<bool>(any(global0[_wgslsmith_index_u32(arg_0.b.x, 21u)]), true, !global1.d, global1.d), global1.d || (arg_0.a.a.x > arg_2))), select(global1.d, reverseBits(arg_0.b.x) > _wgslsmith_dot_vec4_u32(vec4<u32>(40876u, var_0.c, 51135u, var_0.c), vec4<u32>(16031u, 33530u, 0u, 1u)), (-1i ^ arg_3.x) >= u_input.a) | (false || global1.d), global1.d);
    return _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(global1.e.b, vec3<u32>(firstLeadingBit(4294967295u), 4294967295u, 3613u)), global1.e.b, global1.e.b), ~(~(~global1.c.wzz & arg_0.b)));
}

fn func_2(arg_0: bool, arg_1: vec2<i32>) -> u32 {
    let var_0 = Struct_4(_wgslsmith_div_i32(max(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(global1.a, 1i, 14341i, u_input.b.x)), -vec4<i32>(-2147483647i, arg_1.x, arg_1.x, 9874i)), ~_wgslsmith_add_i32(u_input.b.x, 31055i)), 1i), global1.e.a.a.x, reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(~15994u, global1.c.x, _wgslsmith_sub_u32(global1.c.x, global1.c.x), ~global1.c.x), vec4<u32>(~global1.e.a.b.x, func_3(Struct_2(global1.e.a, vec3<u32>(50826u, global1.c.x, 0u)), vec2<i32>(-1i, -17263i), 1009f, arg_1), global1.c.x, 1u))), global1.d, global1.e);
    global0 = array<vec3<bool>, 21>();
    let var_1 = var_0;
    return var_1.e.b.x;
}

fn func_1(arg_0: vec2<f32>, arg_1: bool) -> StorageBuffer {
    var var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(abs(~1u), ~4294967295u >> ((24943u ^ global1.e.b.x) % 32u), func_2(true, min(u_input.b.xx, u_input.b.zy))) ^ reverseBits(~53463u), 21u)];
    let var_1 = Struct_4(global1.a, _wgslsmith_f_op_f32(exp2(global1.b)), ~(global1.c << (~vec4<u32>(global1.e.b.x, global1.e.b.x, 33990u, 25125u) % vec4<u32>(32u))), true, global1.e);
    global2 = var_0.x;
    let var_2 = Struct_3(_wgslsmith_div_f32(-284f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(global1.b, 748f)))), _wgslsmith_div_f32(var_1.e.a.a.x, 1000f))), global1.e.a);
    var var_3 = Struct_2(var_2.b, vec3<u32>(~23416u, 10138u, ~var_2.b.b.x));
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b - var_1.e.a.a.x) - _wgslsmith_f_op_f32(var_2.a - var_3.a.a.x))) * _wgslsmith_f_op_f32(var_3.a.a.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.e.a.a.x)) - _wgslsmith_f_op_f32(sign(1992f))))), reverseBits((vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, -75302i) >> (vec4<u32>(var_2.b.b.x, var_2.b.c, var_2.b.c, var_3.a.c) % vec4<u32>(32u))) & -_wgslsmith_mult_vec4_i32(vec4<i32>(global1.a, var_1.a, 36975i, u_input.b.x), vec4<i32>(1i, u_input.b.x, -8647i, 1i))), _wgslsmith_div_vec3_u32(var_1.c.xwx, countOneBits(var_3.b) & global1.e.b), firstTrailingBit(u_input.a ^ _wgslsmith_add_i32(firstTrailingBit(4686i), abs(0i))), -27289i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.e.a.a.x, 174f) * _wgslsmith_f_op_f32(round(539f))), global1.e.a.a.x), global1.e.a.a.x < 1032f);
}

