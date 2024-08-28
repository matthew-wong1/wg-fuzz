struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: f32,
    c: Struct_2,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 4>;

var<private> global1: u32 = 6281u;

var<private> global2: vec2<i32>;

var<private> global3: array<vec3<bool>, 20>;

var<private> global4: array<i32, 17>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec4<u32>) -> f32 {
    let var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(0i, global4[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_3.x ^ 3725u, _wgslsmith_dot_vec2_u32(u_input.a.zx, arg_3.xw)), 17u)], firstTrailingBit(_wgslsmith_div_i32(global4[_wgslsmith_index_u32(18496u, 17u)], arg_1.b)), -(-50066i & arg_1.b)) & _wgslsmith_div_vec4_i32(select(vec4<i32>(16115i, -44117i, global2.x, global4[_wgslsmith_index_u32(u_input.a.x, 17u)]), select(vec4<i32>(arg_1.b, global4[_wgslsmith_index_u32(91807u, 17u)], 39282i, 2147483647i), vec4<i32>(global2.x, -50287i, global4[_wgslsmith_index_u32(arg_3.x, 17u)], 1i), vec4<bool>(true, false, arg_1.c, false)), vec4<bool>(arg_1.c, arg_1.c, arg_0.x, true)), vec4<i32>(40744i, arg_2.x, arg_1.b, global4[_wgslsmith_index_u32(arg_1.a.x, 17u)]) & vec4<i32>(1i, global4[_wgslsmith_index_u32(u_input.a.x, 17u)], global4[_wgslsmith_index_u32(arg_3.x, 17u)], arg_2.x)), abs(vec4<i32>(countOneBits(arg_1.b), -2147483647i, ~global2.x, _wgslsmith_mod_i32(6327i, 1i))));
    var var_1 = 4294967295u;
    var var_2 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-163f + 1307f)) - -1536f), 1f, _wgslsmith_f_op_f32(f32(-1f) * -864f), -926f), vec4<u32>(~(~_wgslsmith_sub_u32(0u, arg_1.a.x)), _wgslsmith_mod_u32(~u_input.a.x, abs(arg_3.x)), min(arg_3.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 16200u, u_input.a.x, 81905u), vec4<u32>(8613u, arg_1.a.x, 4294967295u, 26141u)), arg_3 << (arg_3 % vec4<u32>(32u)))), u_input.a.x), all(global3[_wgslsmith_index_u32(arg_1.a.x, 20u)]) != true);
    var var_3 = all(global3[_wgslsmith_index_u32(~44058u | (~(var_2.b.x & arg_3.x) >> (~1u % 32u)), 20u)]);
    let var_4 = Struct_2(arg_1);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.x - var_2.a.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x - 714f)))) * var_2.a.x);
}

fn func_2() -> Struct_5 {
    var var_0 = !(!all(vec3<bool>(true, true, true))) && all(vec4<bool>(true, true, true, true));
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<bool>(true, true), Struct_1(u_input.a.yxz, -1i, true), vec2<i32>(4129i, 1i), u_input.a)) + _wgslsmith_f_op_f32(1807f - 927f)))))));
    return Struct_5(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_div_f32(-481f, -1377f), -1000f, _wgslsmith_f_op_f32(min(-1367f, 489f)), 2040f))))), u_input.a, any(select(select(vec2<bool>(false, false), vec2<bool>(true, true), all(vec3<bool>(true, true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true)), any(global3[_wgslsmith_index_u32(14447u, 20u)]))));
}

fn func_1(arg_0: vec2<u32>) -> u32 {
    global1 = ~4209u;
    var var_0 = func_2();
    global2 = vec2<i32>(_wgslsmith_add_i32(37539i, global2.x), _wgslsmith_clamp_i32(global4[_wgslsmith_index_u32(~var_0.b.x, 17u)], 0i, 2147483647i)) & vec2<i32>(global4[_wgslsmith_index_u32(var_0.b.x, 17u)], ~(~(-1i)));
    let var_1 = var_0.a.x;
    global4 = array<i32, 17>();
    return 23822u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1677f);
    let var_1 = abs(vec2<u32>(_wgslsmith_mod_u32(u_input.a.x, func_1(select(vec2<u32>(u_input.a.x, 89271u), vec2<u32>(u_input.a.x, u_input.a.x), false))), _wgslsmith_div_u32(func_1(select(u_input.a.yz, u_input.a.xz, vec2<bool>(false, true))), (u_input.a.x >> (0u % 32u)) >> (max(u_input.a.x, 50976u) % 32u))));
    global2 = _wgslsmith_sub_vec2_i32(-(~select(max(vec2<i32>(global2.x, 0i), vec2<i32>(global2.x, global2.x)), vec2<i32>(1i, global2.x) >> (var_1 % vec2<u32>(32u)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)))), countOneBits(vec2<i32>(2147483647i, 2147483647i)));
    let var_2 = 1u;
    global2 = vec2<i32>(32800i, global2.x);
    let var_3 = Struct_4(vec4<i32>(global2.x << (~u_input.a.x % 32u), max(~max(global2.x, global4[_wgslsmith_index_u32(52176u, 17u)]), _wgslsmith_div_i32(-1i, 2147483647i)), -2773i, 1976i), var_0, Struct_2(Struct_1(vec3<u32>(var_1.x, _wgslsmith_mult_u32(45023u, var_2), countOneBits(var_2)), global4[_wgslsmith_index_u32(29125u, 17u)], any(vec4<bool>(true, true, false, true)) || false)));
    global1 = 0u;
    global4 = array<i32, 17>();
    var var_4 = Struct_3(select(!select(select(vec3<bool>(var_3.c.a.c, false, true), global3[_wgslsmith_index_u32(1u, 20u)], var_3.c.a.c), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, 0u), 20u)], global3[_wgslsmith_index_u32(~79451u, 20u)]), global3[_wgslsmith_index_u32(var_3.c.a.a.x & reverseBits(40282u), 20u)], any(vec2<bool>(func_2().c, true))));
    let x = u_input.a;
    s_output = StorageBuffer((var_1.x << (~(28297u << (var_1.x % 32u)) % 32u)) >> (4294967295u % 32u), abs(_wgslsmith_dot_vec4_i32(~min(var_3.a, var_3.a), var_3.a)), -176f);
}

