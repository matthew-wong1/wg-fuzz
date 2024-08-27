struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: f32,
    d: f32,
}

struct Struct_4 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16> = array<u32, 16>(7132u, 77624u, 48908u, 0u, 7366u, 161243u, 85040u, 17272u, 0u, 82779u, 1u, 4294967295u, 21491u, 4294967295u, 1u, 7586u);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1, arg_3: vec4<i32>) -> f32 {
    global0 = array<u32, 16>();
    var var_0 = Struct_2(arg_0.a, arg_0.b);
    let var_1 = vec3<bool>(!(!(arg_2.b && all(vec3<bool>(arg_0.b.a.x, arg_2.b, arg_1)))), !select(all(select(vec4<bool>(arg_0.b.a.x, false, arg_0.b.a.x, false), var_0.b.a, vec4<bool>(true, arg_1, var_0.b.a.x, arg_1))), arg_1, any(var_0.b.a.zy) || !var_0.b.b), all(vec2<bool>(select(!arg_1, var_0.b.b, var_0.b.b), u_input.b.x < global0[_wgslsmith_index_u32(1u, 16u)])));
    let var_2 = -arg_3.yx;
    var var_3 = Struct_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-420f)) * 1436f)))), arg_0.a.x);
    return var_3.a;
}

fn func_2(arg_0: bool) -> f32 {
    global0 = array<u32, 16>();
    var var_0 = -752f;
    var var_1 = ~firstTrailingBit(select(0u, global0[_wgslsmith_index_u32(u_input.b.x, 16u)], arg_0));
    let var_2 = _wgslsmith_f_op_f32(444f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(vec2<f32>(526f, 658f), Struct_1(vec4<bool>(arg_0, arg_0, false, true), arg_0)), false, Struct_1(vec4<bool>(arg_0, true, arg_0, true), arg_0), vec4<i32>(-42122i, -9080i, 35432i, u_input.a)))) + 1095f)));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -685f);
    return 406f;
}

fn func_1(arg_0: Struct_4, arg_1: f32) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(298f * 106f));
    global0 = array<u32, 16>();
    let var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_f_op_f32(func_2(any(vec4<bool>(false, false, false, true)))))), 186f);
    global0 = array<u32, 16>();
    global0 = array<u32, 16>();
    return _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(countOneBits(_wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), countOneBits(vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a)))), firstTrailingBit(~vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(max(~vec4<i32>(u_input.a, 28088i, u_input.a, 58707i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 18880i, 0i, u_input.a), vec4<i32>(23033i, 7412i, -14971i, 0i))), -_wgslsmith_clamp_vec4_i32(vec4<i32>(35236i, 0i, -2147483647i, u_input.a), vec4<i32>(u_input.a, -2147483647i, -2147483647i, -32042i), vec4<i32>(602i, 8114i, -42906i, 1i))), firstLeadingBit(~vec4<i32>(u_input.a, 7250i, 1i, u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(771f, 1738f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(859f, -1723f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(130f, -1546f)))), Struct_1(vec4<bool>(true, true, true, all(vec3<bool>(true, true, true))), true));
    let var_1 = reverseBits(~(min(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, -2147483647i, u_input.a, -90i)) | func_1(Struct_4(-879f, 1092f), var_0.a.x)) ^ ~(vec4<i32>(-1i) * -vec4<i32>(0i, u_input.a, u_input.a, 1i)));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x), var_0.a.x);
    global0 = array<u32, 16>();
    global0 = array<u32, 16>();
    let var_3 = vec4<f32>(1942f, var_2.b, _wgslsmith_div_f32(var_0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.a * -863f), _wgslsmith_f_op_f32(-var_2.b))), _wgslsmith_f_op_f32(round(-240f)))), 797f);
    let var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, abs(u_input.c.x << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7411u, 16u)], 16u)], 16u)] % 32u))), 16u)], max(firstTrailingBit(global0[_wgslsmith_index_u32(129889u, 16u)]), 9781u) & _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 16u)] ^ global0[_wgslsmith_index_u32(2889u, 16u)], 16u)], _wgslsmith_mult_u32(1u, 1u), ~44291u)), ~(u_input.c.x >> (2020u % 32u)), min(_wgslsmith_mult_vec4_i32(var_1 >> (~vec4<u32>(u_input.b.x, global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(u_input.c.x, 16u)], u_input.b.x) % vec4<u32>(32u)), var_1 ^ _wgslsmith_clamp_vec4_i32(var_1, var_1, var_1)), ~var_1));
}

