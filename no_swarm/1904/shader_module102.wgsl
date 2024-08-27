struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 1> = array<vec4<bool>, 1>(vec4<bool>(true, false, false, true));

var<private> global1: Struct_2;

var<private> global2: Struct_1;

var<private> global3: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(2147483647i), Struct_2(11959i), Struct_2(1i), Struct_2(-32024i), Struct_2(-59220i), Struct_2(-8544i), Struct_2(-26770i), Struct_2(-56983i), Struct_2(1541i), Struct_2(-39884i), Struct_2(-1i), Struct_2(-65568i), Struct_2(27144i), Struct_2(53490i), Struct_2(-12164i), Struct_2(0i));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> u32 {
    let var_0 = vec3<u32>(19362u, ~(~(~u_input.b.x)), _wgslsmith_dot_vec4_u32(~(~(vec4<u32>(global2.b, global2.b, u_input.b.x, u_input.c) ^ vec4<u32>(u_input.b.x, 1u, 0u, u_input.b.x))), vec4<u32>(global2.b, u_input.c, ~global2.b, 1u)));
    let var_1 = ~u_input.c;
    global3 = array<Struct_2, 16>();
    let var_2 = !vec2<bool>(select(false, true, all(global0[_wgslsmith_index_u32(33784u, 1u)]) && any(vec3<bool>(true, true, false))), true);
    global1 = Struct_2(~global2.a << (1u % 32u));
    return 4294967295u;
}

fn func_2(arg_0: u32, arg_1: f32) -> vec2<i32> {
    global2 = Struct_1(((reverseBits(-5515i) << (global2.b % 32u)) | 2147483647i) ^ 1i, u_input.b.x);
    let var_0 = vec3<u32>(arg_0, _wgslsmith_dot_vec2_u32(~select(vec2<u32>(u_input.b.x, 1u), u_input.b, false), ~vec2<u32>(45716u, global2.b)), global2.b) & ~vec3<u32>(u_input.b.x, u_input.b.x, func_3());
    var var_1 = 256f;
    let var_2 = ~(~_wgslsmith_clamp_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(global1.a, 35081i), global2.a & global2.a), _wgslsmith_clamp_i32(firstLeadingBit(u_input.d.x), global1.a, firstTrailingBit(global1.a)), 50105i));
    global1 = global3[_wgslsmith_index_u32(countOneBits(_wgslsmith_div_u32(69294u, 1u)), 16u)];
    return vec2<i32>(3080i, global2.a);
}

fn func_1() -> Struct_1 {
    let var_0 = global3[_wgslsmith_index_u32(global2.b, 16u)];
    let var_1 = !all(vec3<bool>(false, 24343i > (-2147483647i << (u_input.c % 32u)), true));
    global3 = array<Struct_2, 16>();
    var var_2 = global3[_wgslsmith_index_u32(43181u, 16u)];
    var var_3 = -2147483647i > (var_0.a >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, ~1u, ~global2.b, global2.b), ~(vec4<u32>(0u, u_input.b.x, 4294967295u, 0u) | vec4<u32>(8051u, 0u, 1u, 1u))) % 32u));
    return Struct_1(_wgslsmith_dot_vec2_i32(firstTrailingBit(firstLeadingBit(vec2<i32>(16476i, 12945i))), -func_2(global2.b, 1591f)) | var_0.a, u_input.b.x);
}

fn func_4(arg_0: vec3<f32>, arg_1: i32, arg_2: u32, arg_3: Struct_1) -> i32 {
    var var_0 = ~(countOneBits(vec3<u32>(~arg_2, arg_3.b, firstLeadingBit(4294967295u))) | ((vec3<u32>(33327u, u_input.c, arg_3.b) << (~vec3<u32>(arg_3.b, arg_3.b, 1u) % vec3<u32>(32u))) | ~_wgslsmith_div_vec3_u32(vec3<u32>(78955u, 4294967295u, global2.b), vec3<u32>(4294967295u, arg_3.b, arg_3.b))));
    global2 = Struct_1(~(~(~(~(-60901i)))), u_input.b.x);
    let var_1 = select(vec3<bool>(true, true & !all(vec3<bool>(false, false, true)), true), vec3<bool>(false, true | (1i == (-6182i << (global2.b % 32u))), true), false);
    var var_2 = _wgslsmith_f_op_f32(arg_0.x - -1052f);
    global2 = func_1();
    return global2.a;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> i32 {
    global1 = Struct_2(~1i);
    var var_0 = func_1();
    var_0 = func_1();
    global0 = array<vec4<bool>, 1>();
    let var_1 = arg_0;
    return firstTrailingBit(~_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.a, arg_1.a, u_input.d.x, -17369i), ~vec4<i32>(arg_0.a, u_input.d.x, -1i, 5935i)), _wgslsmith_add_vec4_i32(abs(vec4<i32>(-31413i, 0i, 2147483647i, u_input.d.x)), vec4<i32>(u_input.a.x, 2147483647i, -10498i, 12138i))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 16>();
    global3 = array<Struct_2, 16>();
    let var_0 = -364f;
    global3 = array<Struct_2, 16>();
    var var_1 = 1u;
    var_1 = firstLeadingBit(1u);
    var var_2 = vec2<i32>(_wgslsmith_sub_i32(-19785i, abs(global2.a)) ^ -(~_wgslsmith_clamp_i32(0i, global1.a, -17711i)), func_5(Struct_1(global2.a, ~u_input.c), Struct_1(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 921f, var_0)), global2.a & u_input.d.x, global2.b >> (u_input.c % 32u), func_1()), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b.x, 4294967295u), max(vec3<u32>(4294967295u, 4294967295u, u_input.b.x), vec3<u32>(u_input.b.x, global2.b, 91703u)))), _wgslsmith_f_op_f32(183f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))));
    var var_3 = 5705u;
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.c));
}

