struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec3<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> vec4<u32> {
    return ~_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(arg_1.a, ~max(vec4<u32>(arg_0, 3833u, u_input.b.x, arg_0), vec4<u32>(arg_0, 4294967295u, u_input.b.x, global0[_wgslsmith_index_u32(arg_0, 1u)]))), ~arg_1.a);
}

fn func_3(arg_0: vec2<i32>, arg_1: f32) -> vec2<f32> {
    global0 = array<u32, 1>();
    let var_0 = !any(vec3<bool>(select(select(false, true, true), any(vec4<bool>(false, false, true, false)), all(vec4<bool>(true, false, true, false))), true, any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), true))));
    global0 = array<u32, 1>();
    var var_1 = Struct_2(Struct_1(_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(1u, 1603u, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)])) & vec4<u32>(48095u, 1u, u_input.b.x, 26785u), ~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 1u)], 1u)], 34677u, u_input.b.x, 8006u))), u_input.b.x, arg_0.x, select(!(!select(vec3<bool>(false, var_0, var_0), vec3<bool>(var_0, var_0, true), vec3<bool>(var_0, true, false))), !select(!vec3<bool>(true, var_0, var_0), select(vec3<bool>(var_0, true, true), vec3<bool>(false, false, true), true), select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(false, false, true), vec3<bool>(var_0, var_0, var_0))), var_0));
    var var_2 = _wgslsmith_mod_u32(var_1.a.a.x, 1u);
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-261f, -528f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-125f, 1055f) * vec2<f32>(-1065f, 357f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1, 717f), vec2<f32>(arg_1, -380f), var_1.d.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) + vec2<f32>(arg_1, arg_1)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 512f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(260f, 778f), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-130f, arg_1))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -524f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1, arg_1)))) - _wgslsmith_div_vec2_f32(vec2<f32>(241f, 573f), vec2<f32>(1959f, arg_1)))));
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_add_i32(64344i, i32(-1i) * -21036i);
    let var_1 = Struct_1(func_2(_wgslsmith_add_u32(13074u, abs(20727u)), Struct_1(min(~vec4<u32>(1u, u_input.b.x, global0[_wgslsmith_index_u32(13401u, 1u)], u_input.b.x), vec4<u32>(1u, 1u, global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(20280u, 1u)]) & vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.b.x)))));
    var var_2 = 1f;
    let var_3 = _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(-15096i >> (u_input.b.x % 32u), u_input.a)), arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-562f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(555f)) + 169f)))));
    let var_4 = Struct_2(Struct_1(_wgslsmith_add_vec4_u32(var_1.a, var_1.a)), global0[_wgslsmith_index_u32(28685u, 1u)], u_input.a, vec3<bool>(true, all(vec4<bool>(true, true, true, true)), !((arg_0.x > arg_0.x) & true)));
    return Struct_1(_wgslsmith_div_vec4_u32(min(select(vec4<u32>(u_input.b.x, 21435u, 39635u, u_input.b.x) ^ vec4<u32>(u_input.b.x, var_4.a.a.x, 44493u, global0[_wgslsmith_index_u32(u_input.b.x, 1u)]), var_1.a, !var_4.d.x), ~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 1u, 4294967295u, var_4.a.a.x), var_1.a)), reverseBits(~abs(vec4<u32>(var_4.a.a.x, var_4.a.a.x, 35988u, u_input.b.x)))));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> StorageBuffer {
    var var_0 = Struct_1(countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.a.x, ~0u, arg_0.a.x >> (0u % 32u), global0[_wgslsmith_index_u32(abs(arg_0.a.x), 1u)]), _wgslsmith_mult_vec4_u32(vec4<u32>(31406u, 66917u, u_input.b.x, 0u), ~vec4<u32>(29688u, 1u, 1u, 4294967295u)), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 1u)], 1u)] >> (arg_0.a.x % 32u), arg_0.a.x, ~1u, firstTrailingBit(127174u)))));
    let var_1 = arg_0;
    let var_2 = !vec3<bool>(false, true, !(any(vec2<bool>(true, true)) && all(vec3<bool>(false, false, false))));
    var_0 = var_1;
    var_0 = func_1(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_div_i32(-u_input.a, u_input.a), _wgslsmith_mult_i32(12048i >> (u_input.b.x % 32u), u_input.a)), min(~vec2<i32>(2147483647i, 0i) << ((var_1.a.xz >> (vec2<u32>(18178u, 7521u) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_add_i32(1i, u_input.a), u_input.a))));
    return StorageBuffer(arg_0.a.x, _wgslsmith_mod_vec3_u32(~var_0.a.yyx, vec3<u32>(4294967295u, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(var_1.a.x, 1u)], global0[_wgslsmith_index_u32(1u, 1u)]) ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u | var_0.a.x, 1u)], 1u)], arg_0.a.x)), i32(-1i) * -2147483647i, vec3<f32>(598f, arg_1, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_f_op_f32(f32(-1f) * -662f))))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(330f, -1013f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-500f, 1269f, 1028f)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    let x = u_input.a;
    s_output = func_4(func_1(-(-vec2<i32>(27944i, -1505i) & vec2<i32>(-36377i, u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f)))) - 1000f));
}

