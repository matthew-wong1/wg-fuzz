struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29>;

var<private> global1: vec3<i32>;

var<private> global2: Struct_1;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: bool, arg_1: vec3<bool>, arg_2: vec4<f32>) -> Struct_2 {
    var var_0 = -479f;
    var var_1 = reverseBits(global1.x ^ global2.b.x) <= global2.b.x;
    global1 = -global2.b.zzz;
    let var_2 = arg_1.yz;
    var var_3 = !var_2;
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(arg_2.yxw)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, -345f, arg_2.x)))), 991f);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_2) -> Struct_2 {
    var var_0 = arg_1;
    let var_1 = global1.yz;
    global1 = _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(select(~vec3<i32>(28947i, 1908i, 1i), vec3<i32>(-2147483647i, -2147483647i, global2.b.x), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true)) >> (vec3<u32>(select(global2.a.x, 2388u, false), global2.a.x, global2.a.x) % vec3<u32>(32u)), abs(~global2.b.wzx)), _wgslsmith_sub_vec3_i32(-_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, var_1.x, -5572i), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, -15405i, u_input.a), global2.b.xzz), vec3<i32>(global1.x, -35322i, -1i)), global2.b.xxx));
    let var_2 = Struct_1(firstTrailingBit(~global2.a), global2.b);
    var var_3 = _wgslsmith_f_op_f32(-var_0.b);
    return global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, ~57287u), 29u)];
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32, arg_3: Struct_2) -> f32 {
    global2 = arg_1;
    let var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(57939u, 21054u), 29u)];
    var var_1 = func_1(!select(true, true, true), vec3<bool>((_wgslsmith_div_f32(var_0.a.x, var_0.a.x) <= _wgslsmith_f_op_f32(floor(754f))) & false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-arg_0.a.x)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) - _wgslsmith_div_f32(-1899f, 354f)), !(reverseBits(arg_1.a.x) == 1u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_3.b, -895f, 1809f, 163f)))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.x, -283f)), _wgslsmith_f_op_f32(f32(-1f) * -335f), _wgslsmith_f_op_f32(f32(-1f) * -1441f), -415f)));
    var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1307f, var_0.a.x, arg_0.b), var_1.a, vec3<bool>(false, true, true)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(906f, 1980f, 2761f) + vec3<f32>(arg_0.b, -339f, -160f)))), vec3<f32>(709f, var_0.a.x, arg_0.a.x))), var_1.a.x);
    global1 = vec3<i32>(u_input.a, -1i, 2147483647i);
    return var_0.b;
}

fn func_4(arg_0: f32, arg_1: i32) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(-arg_0);
    let var_1 = Struct_1(~global2.a, -(select(global2.b, _wgslsmith_mult_vec4_i32(vec4<i32>(0i, 36962i, u_input.a, -1i), global2.b), vec4<bool>(true, true, true, true)) & vec4<i32>(48173i, global1.x, countOneBits(global1.x), -1i)));
    let var_2 = _wgslsmith_clamp_vec4_i32(~firstTrailingBit(-abs(global2.b)), ~global2.b, ~reverseBits(_wgslsmith_div_vec4_i32(global2.b, global2.b) ^ ~global2.b));
    var var_3 = var_1.b;
    var_3 = vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_3.x, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a, u_input.a), vec3<i32>(var_2.x, 26596i, 1i))), vec2<i32>(max(arg_1, var_1.b.x), u_input.a ^ -8115i) ^ -(~vec2<i32>(u_input.a, -30503i))), 0i, ~1i, -45078i);
    return StorageBuffer(0i, -659f, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(global2.a.x, 29u)], Struct_1(global2.a, vec4<i32>(global1.x, u_input.a, 19433i, var_1.b.x)), 4294967295u, global0[_wgslsmith_index_u32(global2.a.x >> (4294967295u % 32u), 29u)])), 104f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(Struct_2(vec3<f32>(-446f, -1104f, -1624f), arg_0), Struct_1(var_1.a, var_1.b), global2.a.x, global0[_wgslsmith_index_u32(var_1.a.x, 29u)])), func_1(true, vec3<bool>(true, false, false), vec4<f32>(-1499f, arg_0, arg_0, arg_0)).a.x, all(vec2<bool>(false, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -674f) - -761f)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1042f), 1568f, arg_0, _wgslsmith_f_op_f32(ceil(arg_0)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(vec2<i32>(0i, -9534i));
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_f32(func_3(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-413f, 140f, -469f))), func_1(true, vec3<bool>(true, true, true), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-664f, -690f, -1000f, 1071f), vec4<f32>(-936f, -1000f, -508f, 1589f))))), Struct_1(global2.a, -global2.b), ~25309u & _wgslsmith_clamp_u32(1u, ~1u, firstTrailingBit(global2.a.x)), global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(global2.a.x, ~58340u), 29u)])), -45543i);
}

