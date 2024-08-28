struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9> = array<u32, 9>(4294967295u, 48011u, 4294967295u, 108775u, 72898u, 102263u, 24303u, 4294967295u, 132529u);

var<private> global1: array<i32, 27>;

var<private> global2: array<Struct_1, 13>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> u32 {
    var var_0 = arg_1.a.yz;
    var var_1 = Struct_1(!arg_1.a);
    global2 = array<Struct_1, 13>();
    let var_2 = ~reverseBits(~4294967295u);
    global2 = array<Struct_1, 13>();
    return global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(45007u, _wgslsmith_sub_u32(1u, 0u)), 9u)];
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = arg_2;
    var var_1 = vec4<u32>(~(~(~abs(0u))), ~1u | (~4294967295u << (firstLeadingBit(~global0[_wgslsmith_index_u32(5372u, 9u)]) % 32u)), 59044u, _wgslsmith_mod_u32(4294967295u, global0[_wgslsmith_index_u32(69087u, 9u)]));
    let var_2 = arg_2;
    var var_3 = !select(true, select(var_2.a.x, (u_input.a >= u_input.a) & !arg_2.a.x, true), !any(vec3<bool>(true, var_0.a.x, var_2.a.x)));
    let var_4 = arg_3.a.x;
    return !arg_3.a;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<f32>) -> u32 {
    var var_0 = Struct_1(select(func_4(global2[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_f32(abs(arg_1.x)), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 9u)], 9u)], 40477u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 9u)], 9u)], 9u)], 9u)]), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 9u)], 9u)], global0[_wgslsmith_index_u32(35241u, 9u)], global0[_wgslsmith_index_u32(0u, 9u)], 4294967295u)), 9u)], 13u)]), 13u)], select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(false, true), vec2<bool>(true, true)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, true, true))), !func_4(Struct_1(vec3<bool>(false, false, true)), vec2<bool>(true, true), global2[_wgslsmith_index_u32(4294967295u << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15044u, 9u)], 9u)] % 32u), 13u)], Struct_1(vec3<bool>(true, false, false))), false));
    var var_1 = countOneBits(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(abs(vec4<i32>(u_input.a, u_input.a, -5551i, -2147483647i)), ~min(vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(52741u, 9u)], 9u)], 9u)], 9u)], 9u)], 9u)], 27u)], u_input.a, u_input.a), vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(1u, 27u)], -2147483647i, 9095i))), ~(~min(vec4<i32>(arg_0.x, -2147483647i, 1i, -5802i), vec4<i32>(-5663i, arg_0.x, -386i, arg_0.x))), ~vec4<i32>(-global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(42463u, 9u)], 27u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 9u)], 9u)], 9u)] | 15171u, 27u)], -global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 27u)], _wgslsmith_add_i32(-5217i, 34829i))));
    let var_2 = arg_1.x;
    var var_3 = global2[_wgslsmith_index_u32(firstTrailingBit(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(_wgslsmith_div_vec2_u32(vec2<u32>(35110u, 0u), vec2<u32>(global0[_wgslsmith_index_u32(6246u, 9u)], global0[_wgslsmith_index_u32(74192u, 9u)]))) ^ _wgslsmith_sub_vec2_u32(~vec2<u32>(11557u, global0[_wgslsmith_index_u32(3726u, 9u)]), min(vec2<u32>(global0[_wgslsmith_index_u32(48891u, 9u)], global0[_wgslsmith_index_u32(36206u, 9u)]), vec2<u32>(global0[_wgslsmith_index_u32(550u, 9u)], 15236u))), ~_wgslsmith_div_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12714u, 9u)], 9u)], 1u), vec2<u32>(57479u, global0[_wgslsmith_index_u32(13697u, 9u)])) ^ vec2<u32>(0u, 34179u)), 9u)]), 13u)];
    var var_4 = Struct_1(select(!vec3<bool>(false || var_3.a.x, any(var_0.a.xz), var_0.a.x), select(var_3.a, !(!vec3<bool>(false, var_0.a.x, false)), vec3<bool>(true && var_0.a.x, func_4(Struct_1(var_0.a), var_3.a.zy, global2[_wgslsmith_index_u32(0u, 13u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34267u, 9u)], 9u)], 13u)]).x, false && var_3.a.x)), true));
    return _wgslsmith_div_u32(10043u, _wgslsmith_sub_u32(abs(firstLeadingBit(4294967295u) & ~global0[_wgslsmith_index_u32(65268u, 9u)]), 25782u));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: f32) -> bool {
    var var_0 = global2[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(func_2(abs(vec3<i32>(global1[_wgslsmith_index_u32(1u, 27u)], arg_0, arg_0) << (vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 9u)], 0u, 63337u) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1301f, arg_2, arg_2, arg_2))) ^ abs(4294967295u), 9u)], 13u)];
    let var_1 = Struct_1(select(vec3<bool>(var_0.a.x, all(func_4(global2[_wgslsmith_index_u32(16230u, 13u)], var_0.a.xx, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(65408u, 9u)], 9u)], 9u)], 9u)], 9u)], 9u)], 9u)], 13u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 13u)]).xy), true), select(var_0.a, vec3<bool>(any(vec4<bool>(true, arg_1, arg_1, var_0.a.x)), true, var_0.a.x), true), any(vec4<bool>(all(vec4<bool>(false, arg_1, true, false)), arg_1, true, var_0.a.x))));
    var var_2 = _wgslsmith_f_op_f32(round(-1931f));
    let var_3 = Struct_1(!vec3<bool>(arg_1, var_1.a.x, !all(var_1.a.zz)));
    let var_4 = max(-u_input.a >> (1u % 32u), countOneBits(abs(max(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 9u)], 9u)], 9u)], 24246u), 9u)], 27u)], ~arg_0))));
    return (arg_1 != true) || true;
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: bool, arg_3: Struct_1) -> StorageBuffer {
    var var_0 = vec2<u32>(_wgslsmith_dot_vec2_u32(countOneBits(reverseBits(vec2<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 9u)], 9u)])) << (vec2<u32>(arg_0, 52330u) % vec2<u32>(32u))), select(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(arg_0, 76810u), vec2<u32>(4294967295u, arg_0)), vec2<u32>(47328u, arg_0) | vec2<u32>(0u, 41006u), vec2<bool>(true, true)) << (vec2<u32>(0u, 10840u) % vec2<u32>(32u))), ~4294967295u);
    global1 = array<i32, 27>();
    var var_1 = Struct_1(arg_3.a);
    var var_2 = firstTrailingBit(_wgslsmith_add_vec3_i32(min(vec3<i32>(38724i, u_input.a, global1[_wgslsmith_index_u32(4294967295u, 27u)]), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, arg_1, global1[_wgslsmith_index_u32(1u, 27u)]), vec3<i32>(0i, u_input.a, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 9u)], 27u)]), vec3<i32>(2147483647i, 5290i, 447i))) ^ (_wgslsmith_sub_vec3_i32(vec3<i32>(-32280i, -12994i, -65657i), vec3<i32>(-55890i, global1[_wgslsmith_index_u32(25244u, 27u)], -2147483647i)) >> ((vec3<u32>(4294967295u, arg_0, arg_0) << (vec3<u32>(14593u, 13626u, arg_0) % vec3<u32>(32u))) % vec3<u32>(32u))), abs(vec3<i32>(_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(69971u, 9u)], 27u)], global1[_wgslsmith_index_u32(var_0.x, 27u)]), -8817i, 27072i))));
    global2 = array<Struct_1, 13>();
    return StorageBuffer(vec3<i32>(-1i, global1[_wgslsmith_index_u32(1u, 27u)], u_input.a) >> (~(~(~vec3<u32>(arg_0, var_0.x, 19381u))) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-658f, 143f, -296f, 1000f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -761f, -355f, -189f) + vec4<f32>(134f, -929f, -1285f, -317f))) * vec4<f32>(-1166f, 859f, -1704f, -147f))), var_0.x, global1[_wgslsmith_index_u32(1u, 27u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(0u, 1i, func_1(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~1u, 9u)], 27u)], ((global0[_wgslsmith_index_u32(1u, 9u)] < 34107u) || (global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 27u)] >= 21072i)) | any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(ceil(-1627f))), Struct_1(vec3<bool>(true, true, true)));
}

