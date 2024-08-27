struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
}

struct Struct_5 {
    a: vec3<i32>,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
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

var<private> global0: array<bool, 19> = array<bool, 19>(false, true, false, true, true, false, true, true, true, true, false, true, false, false, false, false, false, false, true);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec2<bool>) -> f32 {
    let var_0 = -arg_0.x;
    let var_1 = false;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2035f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1387f))) - -241f), _wgslsmith_f_op_f32(-arg_1.b));
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, -166f, arg_1.b)) - vec3<f32>(-1505f, var_2.x, -1000f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-272f, -725f, var_2.x)), vec3<f32>(var_2.x, -211f, arg_1.b)))) * vec3<f32>(_wgslsmith_f_op_f32(173f + _wgslsmith_f_op_f32(trunc(-140f))), -390f, _wgslsmith_f_op_f32(step(var_2.x, _wgslsmith_f_op_f32(abs(-1000f)))))));
    let var_3 = Struct_5(_wgslsmith_add_vec3_i32(-(~vec3<i32>(-28888i, 8584i, arg_0.x)), vec3<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, 25741i, var_0, var_0), vec4<i32>(var_0, u_input.b, u_input.b, -2147483647i)) ^ arg_2.d, _wgslsmith_add_i32(arg_0.x, u_input.b))), _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(arg_1.b))))), all(vec3<bool>(arg_2.b, !var_1 || any(vec4<bool>(arg_3.x, true, false, arg_2.b)), global0[_wgslsmith_index_u32(firstLeadingBit(arg_2.c), 19u)])));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.b), 1f) + _wgslsmith_f_op_f32(max(-1008f, _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(-1447f + 792f))))));
}

fn func_2() -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3(vec2<i32>(u_input.b, 1i) ^ vec2<i32>(u_input.b, u_input.b), Struct_3(Struct_1(u_input.a, true, 1u, u_input.b), 144f, u_input.b, vec2<u32>(u_input.a, 4294967295u)), Struct_1(12056u, false, 54174u, u_input.b), select(vec2<bool>(global0[_wgslsmith_index_u32(15933u, 19u)], global0[_wgslsmith_index_u32(u_input.a, 19u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 19u)], true), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(u_input.a, 19u)])))), 1f)), vec2<f32>(-1603f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-933f, 288f))))))));
    var var_1 = -u_input.b;
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(var_0 - var_0), all(vec2<bool>(any(select(vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)]), vec3<bool>(false, false, global0[_wgslsmith_index_u32(u_input.a, 19u)]), vec3<bool>(global0[_wgslsmith_index_u32(65951u, 19u)], false, false))), false)));
    let var_3 = -5573i;
    let var_4 = firstLeadingBit(vec3<i32>(_wgslsmith_div_i32(max(var_3, u_input.b), ~u_input.b), 1i, _wgslsmith_mod_i32(-1i, 22113i))) | vec3<i32>(var_3, 0i, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(var_3, var_3)), ~vec2<i32>(var_3, var_3)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, var_3) >> (vec2<u32>(47364u, u_input.a) % vec2<u32>(32u)), abs(vec2<i32>(var_3, 33024i)))));
    return Struct_4(Struct_2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-var_2.a.x), 1187f))), !(u_input.a == u_input.a) | global0[_wgslsmith_index_u32(u_input.a, 19u)]), ~u_input.a, Struct_1(~u_input.a >> (u_input.a % 32u), var_2.b, 60597u, _wgslsmith_dot_vec2_i32(-var_4.zx, _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, var_4.x), var_4.zx)) ^ ((var_3 ^ -8449i) << (u_input.a % 32u))));
}

fn func_1(arg_0: u32, arg_1: f32) -> Struct_4 {
    global0 = array<bool, 19>();
    let var_0 = Struct_5(vec3<i32>(u_input.b >> (1u % 32u), select(-30721i ^ u_input.b, u_input.b, !all(vec4<bool>(false, false, false, global0[_wgslsmith_index_u32(u_input.a, 19u)]))), u_input.b), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -102f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * arg_1) - _wgslsmith_div_f32(arg_1, arg_1))))), ~1i < u_input.b);
    let var_1 = var_0;
    global0 = array<bool, 19>();
    var var_2 = _wgslsmith_mult_i32(~0i, ~abs(_wgslsmith_clamp_i32(var_1.a.x, var_0.a.x, 1i)));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~26954u;
    let var_1 = abs(_wgslsmith_div_vec3_i32(~(~select(vec3<i32>(945i, u_input.b, u_input.b), vec3<i32>(u_input.b, -89637i, u_input.b), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 19u)], false))), ~(-firstTrailingBit(vec3<i32>(u_input.b, u_input.b, -28530i)))));
    let var_2 = func_1(0u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-806f - _wgslsmith_f_op_f32(-1701f + _wgslsmith_f_op_f32(step(1035f, -979f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1069f), 133f)))));
    var var_3 = _wgslsmith_f_op_f32(var_2.a.a.x - func_1(var_2.c.a, -617f).a.a.x);
    let var_4 = _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, 43092i, 16463i, 41054i), (select(vec4<i32>(-25552i, var_1.x, var_1.x, 56705i), vec4<i32>(-1i, 2147483647i, 34599i, 29907i), var_2.c.b) >> (countOneBits(vec4<u32>(5619u, 0u, 21002u, u_input.a)) % vec4<u32>(32u))) & abs(firstLeadingBit(vec4<i32>(var_1.x, -16621i, u_input.b, var_1.x)))), vec4<i32>(-1i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(var_1.x, _wgslsmith_div_i32(-1i, var_1.x)), _wgslsmith_mod_i32(firstTrailingBit(u_input.b), firstTrailingBit(21754i))), countOneBits(~u_input.b), _wgslsmith_sub_i32(u_input.b, -func_1(73955u, var_2.a.a.x).c.d)));
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

