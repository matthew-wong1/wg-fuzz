struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1> = array<i32, 1>(27236i);

var<private> global1: array<vec2<i32>, 12>;

var<private> global2: Struct_1 = Struct_1(391f, vec4<i32>(19524i, 0i, -19378i, 19712i));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_1(arg_0: bool, arg_1: vec4<f32>) -> vec3<u32> {
    global1 = array<vec2<i32>, 12>();
    var var_0 = false;
    var var_1 = 4294967295u;
    let var_2 = ~u_input.d;
    return vec3<u32>(4294967295u, u_input.a, u_input.a);
}

fn func_3() -> vec4<bool> {
    global2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1358f), vec4<i32>(countOneBits(-u_input.d.x), _wgslsmith_add_i32(global2.b.x, u_input.e.x), abs(global0[_wgslsmith_index_u32(~u_input.a << (~u_input.a % 32u), 1u)]), reverseBits(countOneBits(global0[_wgslsmith_index_u32(u_input.a, 1u)])) & u_input.e.x));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a - global2.a) + -450f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.a), -159f)))), vec4<i32>(2147483647i, -global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, 9529u), 1u)], -20171i, 25745i) | global2.b);
    global2 = Struct_1(var_0.a, min(vec4<i32>(i32(-1i) * -global2.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(10445i, -1i, -1i, global0[_wgslsmith_index_u32(1u, 1u)]) >> (vec4<u32>(u_input.a, 4294967295u, 49855u, u_input.a) % vec4<u32>(32u)), ~vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 1u)], global2.b.x, -1i, global0[_wgslsmith_index_u32(1u, 1u)])), ~(-23331i) | -global0[_wgslsmith_index_u32(u_input.a, 1u)], select(-2147483647i, -1i, true)), vec4<i32>(global0[_wgslsmith_index_u32(reverseBits(firstLeadingBit(u_input.a)), 1u)], global0[_wgslsmith_index_u32(countOneBits(u_input.a << (0u % 32u)), 1u)], select(abs(17362i), ~(-2147483647i), all(vec2<bool>(true, false))), firstTrailingBit(_wgslsmith_add_i32(global2.b.x, -2147483647i)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(2218f, -1000f, 262f, var_0.a))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a, global2.a, global2.a, -1000f) + vec4<f32>(global2.a, global2.a, 2281f, 2150f))), vec4<f32>(879f, _wgslsmith_f_op_f32(var_0.a * -811f), _wgslsmith_f_op_f32(select(-969f, global2.a, true)), _wgslsmith_f_op_f32(-383f + -814f))))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-305f))), u_input.e);
    return vec4<bool>(true, !(true || any(select(vec2<bool>(true, false), vec2<bool>(true, true), true))), !any(vec2<bool>(true, true)), true);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = arg_1.a;
    let var_1 = func_3();
    var var_2 = arg_2;
    global0 = array<i32, 1>();
    var var_3 = var_1.x;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2426f) * global2.a), vec4<i32>(_wgslsmith_mod_i32(~global2.b.x, -30249i << (u_input.a % 32u)), 2147483647i, 2270i, u_input.e.x | _wgslsmith_add_i32(global2.b.x, global2.b.x))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2954f, _wgslsmith_f_op_f32(-global2.a)))), _wgslsmith_mod_vec4_i32(vec4<i32>(47i, u_input.c ^ u_input.d.x, global0[_wgslsmith_index_u32(~u_input.a, 1u)], u_input.b), global2.b)), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.a), global2.a)), global2.a), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(1u, 1u)], -2147483647i, global0[_wgslsmith_index_u32(u_input.a, 1u)]) ^ u_input.d, u_input.d)), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.a, u_input.a, u_input.a) & vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 6699u)), ~func_1(true, vec4<f32>(global2.a, global2.a, -998f, -266f))), u_input.a ^ (~u_input.a << ((u_input.a << (66869u % 32u)) % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_sub_i32((var_0.b.x >> (1u % 32u)) | _wgslsmith_div_i32(1i, var_0.b.x), 24720i), firstTrailingBit((u_input.b << (select(4294967295u, 1u, true) % 32u)) << (countOneBits(~4294967295u) % 32u)), _wgslsmith_sub_vec4_i32(-(global2.b >> (abs(vec4<u32>(4294967295u, u_input.a, u_input.a, 21068u)) % vec4<u32>(32u))), -_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(global2.b, vec4<i32>(-1903i, global2.b.x, u_input.b, var_0.b.x)), var_0.b)), -895f, ~vec2<u32>(_wgslsmith_sub_u32(~u_input.a, firstLeadingBit(31990u)), ~u_input.a));
}

