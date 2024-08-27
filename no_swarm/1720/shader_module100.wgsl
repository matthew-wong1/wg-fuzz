struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: f32,
    d: vec3<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29>;

var<private> global1: array<i32, 19>;

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec4<u32>(31496u, 6329u, 4294967295u, 50068u)), Struct_1(vec4<u32>(1u, 0u, 60801u, 0u)), Struct_1(vec4<u32>(0u, 24404u, 35289u, 9708u)), Struct_1(vec4<u32>(72004u, 66093u, 62275u, 1u)), Struct_1(vec4<u32>(1u, 36903u, 1u, 1u)), Struct_1(vec4<u32>(4294967295u, 7399u, 0u, 4294967295u)), Struct_1(vec4<u32>(4294967295u, 1u, 65614u, 90662u)), Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 4876u)), Struct_1(vec4<u32>(19975u, 14708u, 27646u, 46879u)), Struct_1(vec4<u32>(4294967295u, 0u, 0u, 26573u)), Struct_1(vec4<u32>(4294967295u, 41188u, 4294967295u, 0u)), Struct_1(vec4<u32>(4294967295u, 58699u, 4294967295u, 16139u)), Struct_1(vec4<u32>(494u, 77322u, 59153u, 0u)), Struct_1(vec4<u32>(7036u, 34070u, 4294967295u, 0u)), Struct_1(vec4<u32>(52526u, 4294967295u, 70517u, 1u)), Struct_1(vec4<u32>(1u, 0u, 14174u, 38877u)), Struct_1(vec4<u32>(4294967295u, 73093u, 32308u, 0u)), Struct_1(vec4<u32>(4750u, 13356u, 0u, 13764u)), Struct_1(vec4<u32>(4294967295u, 66771u, 1u, 557u)), Struct_1(vec4<u32>(1u, 54937u, 61586u, 4294967295u)), Struct_1(vec4<u32>(4294967295u, 1u, 23875u, 1u)), Struct_1(vec4<u32>(0u, 4294967295u, 1u, 1u)), Struct_1(vec4<u32>(34500u, 24177u, 3359u, 27275u)), Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 33451u)), Struct_1(vec4<u32>(0u, 4294967295u, 17870u, 1u)), Struct_1(vec4<u32>(0u, 1u, 36463u, 4294967295u)), Struct_1(vec4<u32>(75935u, 0u, 4294967295u, 4294967295u)), Struct_1(vec4<u32>(1u, 0u, 37651u, 4294967295u)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u)));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec4<f32>) -> u32 {
    var var_0 = 0i;
    let var_1 = -47239i;
    let var_2 = ~max(min(~u_input.a, -vec4<i32>(var_1, global1[_wgslsmith_index_u32(1u, 19u)], -19417i, -20929i)) << (min(abs(vec4<u32>(arg_0.a.x, arg_0.a.x, 44884u, 6217u)), arg_0.a) % vec4<u32>(32u)), vec4<i32>(firstLeadingBit(u_input.a.x), 1i, abs(-1i), -var_1) << (arg_0.a % vec4<u32>(32u)));
    var var_3 = Struct_1(abs(firstTrailingBit(~vec4<u32>(arg_0.a.x, arg_0.a.x, 0u, 0u))) >> (reverseBits(max(vec4<u32>(92654u, 29535u, 43556u, 58944u), min(arg_0.a, arg_0.a))) % vec4<u32>(32u)));
    var var_4 = _wgslsmith_add_i32(-1i, -8503i);
    return reverseBits(~4294967295u);
}

fn func_2() -> Struct_1 {
    let var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.b, min(15121u << (~u_input.b % 32u), _wgslsmith_sub_u32(min(u_input.b, u_input.b), u_input.b))), 29u)];
    let var_1 = !select(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), select(true, true, true)), vec3<bool>(true, true, ~u_input.b == ~17490u), all(vec2<bool>(true, true)));
    global1 = array<i32, 19>();
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(319f)) * _wgslsmith_f_op_f32(abs(-323f))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1800f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(677f)))))))));
    let var_3 = global2[_wgslsmith_index_u32(reverseBits(71074u), 29u)];
    return Struct_1(max(vec4<u32>(~var_0.a.x, ~func_3(Struct_1(vec4<u32>(94589u, var_0.a.x, var_3.a.x, 1u)), -148f, vec4<f32>(581f, var_2, -1545f, 1175f)), (60489u >> (var_3.a.x % 32u)) | ~u_input.b, select(var_0.a.x ^ u_input.b, min(u_input.b, var_3.a.x), all(vec2<bool>(false, var_1.x)))), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(var_0.a, var_0.a), var_0.a << (var_0.a % vec4<u32>(32u))), vec4<u32>(_wgslsmith_dot_vec2_u32(var_3.a.wz, var_0.a.zw), ~89516u, ~0u, firstTrailingBit(var_0.a.x)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    var var_0 = arg_0.a.zz;
    global2 = array<Struct_1, 29>();
    var var_1 = _wgslsmith_sub_i32(1i ^ ~(~u_input.a.x), -1i);
    var_1 = -1i;
    var_1 = -1i;
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: f32) -> vec2<bool> {
    let var_0 = ~(~4294967295u);
    global1 = array<i32, 19>();
    let var_1 = arg_1;
    let var_2 = vec3<bool>(true, any(vec4<bool>(_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(var_0, 19u)], 1i) >= global1[_wgslsmith_index_u32(var_0, 19u)], true & !arg_1, select(all(vec2<bool>(false, true)), select(false, false, true), global1[_wgslsmith_index_u32(arg_0.a.x, 19u)] == global0[_wgslsmith_index_u32(1u, 29u)]), all(!vec2<bool>(false, arg_1)))), true);
    var var_3 = Struct_1(vec4<u32>(~max(25026u, arg_0.a.x), arg_2.a.x, firstTrailingBit(max(var_0, 104679u)) | var_0, 72217u));
    return !var_2.yy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec3_i32(-u_input.a.xyw, _wgslsmith_mod_vec3_i32(-firstTrailingBit(vec3<i32>(-16096i, 6401i, -1i)) | ~u_input.a.xww, u_input.a.xyy));
    let var_1 = ~32981u;
    var var_2 = select(select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(false, true), vec2<bool>(true, true)), select(func_4(func_1(global2[_wgslsmith_index_u32(var_1, 29u)], u_input.a, global2[_wgslsmith_index_u32(5651u, 29u)], 434f), true, func_2(), -855f), select(vec2<bool>(false, true), vec2<bool>(false, false), func_4(global2[_wgslsmith_index_u32(var_1, 29u)], false, global2[_wgslsmith_index_u32(var_1, 29u)], 140f).x), vec2<bool>(true, true)), !select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true))), vec2<bool>(true, true), func_4(global2[_wgslsmith_index_u32(~var_1, 29u)], true, Struct_1(~countOneBits(vec4<u32>(var_1, 16684u, 23678u, var_1))), _wgslsmith_f_op_f32(1000f - -291f)).x);
    let var_3 = func_2();
    global2 = array<Struct_1, 29>();
    var var_4 = false;
    let var_5 = firstTrailingBit(vec2<i32>(2147483647i, abs((0i | global1[_wgslsmith_index_u32(0u, 19u)]) & abs(global0[_wgslsmith_index_u32(var_1, 29u)]))));
    let var_6 = _wgslsmith_f_op_f32(f32(-1f) * -1261f);
    let var_7 = Struct_1(~var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.wz, ~var_7.a.zz, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1007f * var_6), var_6) - _wgslsmith_f_op_f32(-var_6)), vec3<i32>(u_input.a.x, _wgslsmith_clamp_i32(1i, -3859i, ~select(var_0.x, var_0.x, false)), firstTrailingBit(_wgslsmith_mult_i32(-var_5.x, ~global0[_wgslsmith_index_u32(17193u, 29u)]))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(var_6)), _wgslsmith_f_op_f32(539f * 250f), var_6)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-156f, var_6, var_6) * vec3<f32>(656f, var_6, var_6))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_6, var_6, -960f)), vec3<f32>(var_6, -151f, -492f)))));
}

