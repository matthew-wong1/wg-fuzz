struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_4 {
    a: f32,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<i32>(1i, 2147483647i), 0u, vec3<bool>(false, true, false)));

var<private> global1: array<u32, 32> = array<u32, 32>(4294967295u, 4294967295u, 9114u, 19990u, 4294967295u, 4294967295u, 10909u, 0u, 4294967295u, 0u, 61638u, 0u, 59269u, 61228u, 4294967295u, 4294967295u, 1u, 94261u, 4294967295u, 4294967295u, 35453u, 1u, 0u, 1u, 1u, 48057u, 4294967295u, 97859u, 71433u, 1u, 787u, 13451u);

var<private> global2: u32;

var<private> global3: i32 = 61763i;

var<private> global4: Struct_4;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_1(arg_0: bool) -> u32 {
    let var_0 = global4.c.c;
    return countOneBits(_wgslsmith_sub_u32(~abs(_wgslsmith_mod_u32(global0.a.b, 61587u)), ~(~39719u >> ((u_input.b.x >> (global4.c.b % 32u)) % 32u))));
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(102f, _wgslsmith_f_op_f32(round(global4.a)), _wgslsmith_f_op_f32(trunc(global4.a)), -269f) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.a, global4.a, global4.a, -197f)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, global4.a, -838f, global4.a))))))));
    var var_1 = reverseBits(~select(u_input.b, firstTrailingBit(u_input.b), vec2<bool>(true, true)) >> (_wgslsmith_mult_vec2_u32(min(vec2<u32>(64924u, 58519u), vec2<u32>(global4.c.b, 0u) ^ u_input.b), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global4.c.b, 0u, global1[_wgslsmith_index_u32(global4.c.b, 32u)]), vec3<u32>(global1[_wgslsmith_index_u32(global0.a.b, 32u)], global0.a.b, 4294967295u)), u_input.b.x << (global1[_wgslsmith_index_u32(u_input.b.x, 32u)] % 32u))) % vec2<u32>(32u)));
    let var_2 = Struct_1(-global4.c.a, var_1.x, select(global4.c.c, select(!select(global4.c.c, vec3<bool>(true, false, global4.c.c.x), vec3<bool>(global0.a.c.x, global4.c.c.x, global4.c.c.x)), !vec3<bool>(global0.a.c.x, global4.c.c.x, false), select(global0.a.c, !global4.c.c, true)), select(global0.a.c, !vec3<bool>(false, false, global0.a.c.x), vec3<bool>(global0.a.c.x, !global4.c.c.x, any(vec2<bool>(true, false))))));
    var var_3 = 9824u >> (_wgslsmith_sub_u32(abs(countOneBits(~var_2.b)), abs(_wgslsmith_clamp_u32(reverseBits(global1[_wgslsmith_index_u32(34816u, 32u)]), firstLeadingBit(global1[_wgslsmith_index_u32(18155u, 32u)]), global4.c.b))) % 32u);
    var var_4 = Struct_3(~abs(vec3<i32>(-80480i, u_input.c, var_2.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1073f));
    return !(all(!vec2<bool>(global0.a.c.x, global0.a.c.x)) & true) || global4.c.c.x;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: bool, arg_3: vec3<i32>) -> Struct_1 {
    global3 = abs(-42230i);
    let var_0 = Struct_5(Struct_1(-(~_wgslsmith_div_vec2_i32(global0.a.a, vec2<i32>(-2147483647i, global0.a.a.x))), 32666u, !global4.c.c), ~vec4<u32>(64268u, countOneBits(u_input.b.x << (arg_1 % 32u)), arg_0, firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(global4.b.x, global0.a.b, 53322u), vec3<u32>(u_input.a.x, 1u, 27262u)))), global0.a, Struct_3(~(-vec3<i32>(arg_3.x, global0.a.a.x, 48656i)) >> (~_wgslsmith_mod_vec3_u32(vec3<u32>(global4.b.x, 13110u, 0u), vec3<u32>(1u, 4294967295u, 1u)) % vec3<u32>(32u)), -446f));
    global2 = global0.a.b;
    global4 = Struct_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1153f + global4.a), -1042f, false)), ~global4.b, Struct_1(_wgslsmith_mod_vec2_i32(-vec2<i32>(global4.c.a.x, u_input.c), reverseBits(select(var_0.c.a, vec2<i32>(global0.a.a.x, arg_3.x), true))), max(11216u, ~(~u_input.a.x)), !select(vec3<bool>(var_0.c.c.x, false, true), var_0.c.c, true)));
    let var_1 = vec3<bool>(!all(select(vec4<bool>(false, false, false, arg_2), !vec4<bool>(true, true, false, var_0.a.c.x), select(vec4<bool>(arg_2, global0.a.c.x, true, arg_2), vec4<bool>(global0.a.c.x, true, var_0.c.c.x, var_0.a.c.x), vec4<bool>(arg_2, false, false, false)))), !arg_2, func_3());
    return Struct_1(abs(vec2<i32>(-1i) * -(~vec2<i32>(global4.c.a.x, -2147483647i))), reverseBits(u_input.b.x), select(!vec3<bool>(!global4.c.c.x, true, true), select(vec3<bool>(all(vec4<bool>(arg_2, global4.c.c.x, false, false)), !global4.c.c.x, false || global4.c.c.x), global0.a.c, vec3<bool>(all(global0.a.c), true, false)), select(!vec3<bool>(global0.a.c.x, global0.a.c.x, global4.c.c.x), select(vec3<bool>(var_1.x, true, false), vec3<bool>(var_1.x, var_0.a.c.x, global4.c.c.x), false), !global4.c.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(func_2(~_wgslsmith_dot_vec3_u32(vec3<u32>(44216u, 48281u, global4.c.b), vec3<u32>(global0.a.b, 0u, 23365u)) ^ _wgslsmith_add_u32(1u, firstLeadingBit(global1[_wgslsmith_index_u32(global0.a.b, 32u)])), func_1(global0.a.c.x), !all(global0.a.c) || (true & all(global4.c.c)), vec3<i32>(global4.c.a.x >> (reverseBits(global1[_wgslsmith_index_u32(1u, 32u)]) % 32u), _wgslsmith_div_i32(global4.c.a.x, global0.a.a.x) >> (global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, global0.a.b), 32u)] % 32u), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.a.a.x, 36907i, -2147483647i), vec3<i32>(u_input.c, u_input.c, global4.c.a.x)), ~6365i))));
    global4 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-268f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1242f + global4.a), _wgslsmith_f_op_f32(-911f * 1613f))))), global4.b, Struct_1(_wgslsmith_mod_vec2_i32(select(_wgslsmith_clamp_vec2_i32(global4.c.a, global4.c.a, global4.c.a), select(global4.c.a, vec2<i32>(2147483647i, 2147483647i), vec2<bool>(global4.c.c.x, true)), vec2<bool>(true, global4.c.c.x)), vec2<i32>(~(-26146i), u_input.c)), ~(reverseBits(u_input.a.x) & ~4294967295u), func_2(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, global0.a.b, 54526u, global4.b.x), vec4<u32>(96963u, 25565u, 5536u, global4.b.x)), ~firstTrailingBit(u_input.b.x), all(global4.c.c.zy), _wgslsmith_mult_vec3_i32(vec3<i32>(-3113i, 1i, global0.a.a.x) & vec3<i32>(u_input.c, 42967i, u_input.c), vec3<i32>(-1i, -1i, global4.c.a.x) & vec3<i32>(2147483647i, 11340i, global0.a.a.x))).c));
    global1 = array<u32, 32>();
    let var_0 = vec4<i32>(-1i, _wgslsmith_div_i32(countOneBits(global4.c.a.x >> (global1[_wgslsmith_index_u32(~u_input.b.x, 32u)] % 32u)), -firstTrailingBit(39199i) >> (1u % 32u)), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(global0.a.a, ~firstTrailingBit(vec2<i32>(u_input.c, global4.c.a.x))), -(vec2<i32>(global0.a.a.x, -2147483647i) >> (global4.b % vec2<u32>(32u)))), countOneBits(global0.a.a.x));
    global4 = Struct_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2354f)))), vec2<u32>(global0.a.b, _wgslsmith_mult_u32(0u, u_input.a.x)) & countOneBits(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(global0.a.b, global0.a.b)), select(u_input.b, vec2<u32>(30350u, 941u), global4.c.c.zy))), global0.a);
    let var_1 = vec4<bool>(global4.c.c.x, global4.c.c.x, all(select(vec4<bool>(global0.a.c.x, global4.c.c.x, true, global0.a.c.x), !vec4<bool>(global0.a.c.x, false, false, global4.c.c.x), func_3())) && global4.c.c.x, global0.a.c.x);
    let var_2 = Struct_3(vec3<i32>(-_wgslsmith_sub_i32(_wgslsmith_mult_i32(global4.c.a.x, u_input.c), _wgslsmith_dot_vec4_i32(vec4<i32>(29097i, -2147483647i, 18468i, 16006i), var_0)), u_input.c, max(~u_input.c, ~(-51412i))), -1000f);
    global0 = Struct_2(Struct_1(vec2<i32>(~50165i, _wgslsmith_dot_vec2_i32(global4.c.a, var_2.a.zy)) | -(~vec2<i32>(var_0.x, global4.c.a.x)), ~4294967295u, select(global0.a.c, !global4.c.c, false)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-931f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-504f * var_2.b)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.a, -987f)), global4.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.a) + _wgslsmith_f_op_f32(abs(-1371f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-386f))));
}

