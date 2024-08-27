struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: u32;

var<private> global2: Struct_1;

var<private> global3: f32 = -606f;

var<private> global4: array<vec3<i32>, 19>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: Struct_1) -> u32 {
    global0 = ~vec4<i32>(-u_input.a.x, u_input.c, ~(-15308i), _wgslsmith_mod_i32(_wgslsmith_add_i32(global0.x & u_input.c, global2.b.x), countOneBits(~(-15265i))));
    let var_0 = arg_0.xzz;
    var var_1 = arg_2;
    var var_2 = var_0.x;
    global2 = Struct_1(!arg_1.x, -vec4<i32>(u_input.c, ~(-2147483647i), ~global0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b.x, 15509i, -12092i), vec3<i32>(-1i, global0.x, global0.x))) << (max(vec4<u32>(_wgslsmith_mod_u32(u_input.d.x, 0u), ~u_input.e, _wgslsmith_sub_u32(u_input.d.x, u_input.d.x), countOneBits(u_input.d.x)), _wgslsmith_mult_vec4_u32(u_input.d, vec4<u32>(u_input.d.x, 4294967295u, u_input.e, 25865u))) % vec4<u32>(32u)));
    return reverseBits(u_input.d.x);
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> f32 {
    let var_0 = u_input.d.wz;
    var var_1 = vec2<i32>(12681i, ~select(select(_wgslsmith_mod_i32(-1i, 20049i), _wgslsmith_add_i32(0i, 0i), global2.a), -4756i, true));
    let var_2 = global2.b.ww;
    let var_3 = arg_1;
    let var_4 = _wgslsmith_add_u32(~4294967295u, select(34452u ^ func_3(vec4<bool>(var_3.a, true, false, false), vec3<bool>(false, false, arg_1.a), Struct_1(global2.a, vec4<i32>(63750i, var_3.b.x, u_input.c, -1i))), ~41698u | _wgslsmith_mult_u32(u_input.e, 4294967295u), !any(vec3<bool>(arg_1.a, var_3.a, global2.a)))) >> (reverseBits(~(_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(24988u, u_input.d.x, 17059u, u_input.d.x)) ^ ~644u)) % 32u);
    return -1052f;
}

fn func_4(arg_0: vec3<u32>, arg_1: f32) -> vec4<i32> {
    global0 = ~(reverseBits(~select(vec4<i32>(global2.b.x, 23272i, u_input.b.x, 1i), vec4<i32>(global0.x, global0.x, 1i, global2.b.x), vec4<bool>(false, false, true, true))) & vec4<i32>(i32(-1i) * -u_input.c, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(global2.b.yxw, vec3<i32>(-1i, -2147483647i, u_input.b.x), u_input.b), -u_input.a.wyz), -13406i, -1i));
    let var_0 = 10418u;
    var var_1 = vec4<u32>(arg_0.x, 0u, _wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(firstLeadingBit(0u), firstTrailingBit(var_0)), _wgslsmith_add_u32(firstTrailingBit(var_0), ~u_input.d.x)), arg_0.x), 4294967295u);
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(972f, 404f)) + arg_1)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-258f, _wgslsmith_f_op_f32(arg_1 - arg_1))))) - -211f);
    var var_2 = _wgslsmith_f_op_f32(select(arg_1, 313f, !any(select(vec2<bool>(global2.a, false), select(vec2<bool>(false, global2.a), vec2<bool>(global2.a, global2.a), vec2<bool>(global2.a, true)), global2.a))));
    return vec4<i32>(-(~2147483647i) | u_input.a.x, _wgslsmith_sub_i32(u_input.c, global0.x) << (1u % 32u), -25473i << (1u % 32u), -u_input.c);
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    global4 = array<vec3<i32>, 19>();
    let var_0 = select(global0.zwx, ~_wgslsmith_clamp_vec3_i32(-global2.b.zxz, global4[_wgslsmith_index_u32(arg_0, 19u)], _wgslsmith_clamp_vec3_i32(arg_2.b.zzx, global4[_wgslsmith_index_u32(arg_1, 19u)], vec3<i32>(0i, -543i, u_input.c))), !vec3<bool>(true, global2.a, true)) | (vec3<i32>(_wgslsmith_add_i32(37714i, 0i), 21098i, 0i) | vec3<i32>(25733i, firstLeadingBit(2147483647i), arg_2.b.x));
    var var_1 = Struct_1(true, func_4(vec3<u32>(~arg_0, 38512u, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(2147483647i, arg_2)) + _wgslsmith_f_op_f32(func_2(26238i, Struct_1(false, vec4<i32>(arg_2.b.x, global2.b.x, 33268i, -1i))))))));
    global4 = array<vec3<i32>, 19>();
    let var_2 = Struct_1(true, abs(arg_2.b));
    return var_2;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = vec3<i32>(firstLeadingBit(abs(0i)), arg_2.b.x, _wgslsmith_sub_i32(-arg_3.b.x, _wgslsmith_div_i32(0i, ~arg_2.b.x))) >> (~u_input.d.wxw % vec3<u32>(32u));
    let var_1 = arg_2;
    let var_2 = ~vec2<u32>(4294967295u, 1u) & _wgslsmith_mod_vec2_u32(vec2<u32>(abs(func_3(vec4<bool>(arg_2.a, arg_2.a, false, false), vec3<bool>(true, false, true), Struct_1(false, vec4<i32>(-1i, 42280i, arg_0.b.x, -2147483647i)))), u_input.d.x), vec2<u32>(1u, min(3595u, select(u_input.e, 1u, false))));
    var var_3 = firstLeadingBit(vec2<u32>(~u_input.d.x, _wgslsmith_dot_vec4_u32(~u_input.d, vec4<u32>(1u, u_input.d.x, var_2.x, 6520u) << (~u_input.d % vec4<u32>(32u)))));
    var var_4 = var_1;
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(func_1(14480u, ~(~u_input.d.x), Struct_1(select(global2.a, any(vec3<bool>(global2.a, false, true)), u_input.e > u_input.e), vec4<i32>(0i, -32121i, _wgslsmith_mult_i32(global0.x, 2147483647i), -18182i))), Struct_1(true, min(vec4<i32>(-28961i, ~global2.b.x, 0i << (u_input.d.x % 32u), global0.x), abs(vec4<i32>(2355i, -54275i, -64220i, global2.b.x)))), Struct_1(true, firstTrailingBit(global2.b)), Struct_1(global2.a, (-vec4<i32>(0i, 1i, 59956i, -1i) | func_1(u_input.d.x, u_input.d.x, Struct_1(global2.a, u_input.a)).b) ^ vec4<i32>(_wgslsmith_div_i32(0i, global2.b.x), -65622i, 0i, 2147483647i ^ u_input.b.x)));
    global1 = _wgslsmith_dot_vec3_u32(vec3<u32>(~abs(4294967295u), u_input.e, ~_wgslsmith_mod_u32(63514u, u_input.e) >> (~countOneBits(59283u) % 32u)), vec3<u32>(u_input.d.x, func_5(func_1(4294967295u, 4294967295u, func_1(u_input.d.x, 0u, Struct_1(global2.a, global2.b))), func_1(_wgslsmith_clamp_u32(u_input.d.x, u_input.d.x, u_input.e), 4294967295u, Struct_1(false, vec4<i32>(-11078i, global2.b.x, -50337i, u_input.c))), Struct_1(global2.a, u_input.a), func_1(~72435u, _wgslsmith_dot_vec2_u32(u_input.d.zx, vec2<u32>(u_input.e, u_input.d.x)), Struct_1(false, vec4<i32>(u_input.c, 55659i, global2.b.x, -2147483647i)))), _wgslsmith_sub_u32(u_input.d.x, countOneBits(~22490u))));
    let var_0 = Struct_1(any(!select(!vec2<bool>(global2.a, false), select(vec2<bool>(true, false), vec2<bool>(global2.a, true), global2.a), !vec2<bool>(true, global2.a))), ~(-_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, global2.b.x, u_input.b.x, 2147483647i) << (vec4<u32>(53666u, 1u, 1u, u_input.e) % vec4<u32>(32u)), max(u_input.a, vec4<i32>(global0.x, -1923i, global0.x, global2.b.x)))));
    let var_1 = -_wgslsmith_mod_vec4_i32(-_wgslsmith_div_vec4_i32(global2.b, abs(u_input.a)), abs(countOneBits(var_0.b >> (vec4<u32>(4294967295u, u_input.e, u_input.d.x, 1u) % vec4<u32>(32u)))));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-863f, _wgslsmith_f_op_f32(step(-1069f, 755f))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    global4 = array<vec3<i32>, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(-424f);
}

