struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: vec2<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec3<f32>,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 0u);

var<private> global1: array<f32, 14> = array<f32, 14>(-1281f, -1793f, 1000f, -268f, 1080f, 928f, 337f, -1000f, -585f, 1112f, -382f, 1436f, 274f, 191f);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec4<bool>, arg_3: vec3<i32>) -> vec3<i32> {
    global1 = array<f32, 14>();
    let var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>((0u | arg_0) | min(global0.x, 12905u), arg_0, arg_0), _wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(u_input.a, 52542u, arg_0)), vec3<u32>(arg_0, 1u, 4294967295u))) << (~(~(~arg_0 << ((arg_0 << (global0.x % 32u)) % 32u))) % 32u);
    var var_1 = Struct_3(arg_2.zxx, Struct_2((~vec3<u32>(var_0, global0.x, 1u) & _wgslsmith_mod_vec3_u32(vec3<u32>(107539u, global0.x, arg_0), vec3<u32>(global0.x, u_input.b.x, 16987u))) | ~(~vec3<u32>(6032u, 2102u, 294u)), 13970i), select(vec2<bool>(any(select(arg_2.yw, arg_2.xx, false)), any(arg_2.xzy)), arg_2.xz, !(any(arg_2.wx) && arg_1)), Struct_2(vec3<u32>(0u, ~(arg_0 ^ var_0), ~_wgslsmith_mult_u32(u_input.a, 14604u)), i32(-1i) * -(~u_input.c)));
    let var_2 = arg_3.x;
    var_1 = Struct_3(!(!select(arg_2.zww, var_1.a, true || var_1.a.x)), Struct_2(~(~var_1.d.a), -2147483647i), vec2<bool>(all(!var_1.a.xy), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(var_0, 14u)])) * global1[_wgslsmith_index_u32(u_input.a, 14u)]) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(418f)))), Struct_2(vec3<u32>(~49660u, max(global0.x, 52525u) ^ reverseBits(var_1.b.a.x), max(reverseBits(var_1.b.a.x), abs(arg_0))), -2147483647i));
    return select(vec3<i32>(abs(~var_1.b.b), var_2, arg_3.x), -arg_3, select(!all(!arg_2.zzw), all(arg_2.xww), any(vec4<bool>(var_1.a.x, 1529f >= global1[_wgslsmith_index_u32(12959u, 14u)], all(vec3<bool>(true, var_1.a.x, false)), all(var_1.a.yx)))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: i32) -> bool {
    global1 = array<f32, 14>();
    let var_0 = vec2<i32>(arg_3, 2147483647i << (0u % 32u));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + _wgslsmith_f_op_f32(arg_1.x * -893f)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1 + _wgslsmith_f_op_vec2_f32(-arg_1)));
    var var_3 = ~(vec3<i32>(arg_3, u_input.c, _wgslsmith_clamp_i32(u_input.c, ~9034i, arg_2.d.b)) | (-abs(vec3<i32>(arg_2.d.b, arg_2.d.b, arg_3)) | func_3(9459u, !arg_2.a.x, vec4<bool>(true, true, true, true), ~vec3<i32>(arg_3, -2147483647i, 2147483647i))));
    return select(all(!vec3<bool>(any(arg_2.a), true || arg_2.c.x, true)), false, true);
}

fn func_1() -> bool {
    global0 = u_input.b;
    var var_0 = Struct_3(select(vec3<bool>(all(vec4<bool>(true, true, true, true)), true, !func_2(vec2<i32>(-1i, 8749i), vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 14u)], global1[_wgslsmith_index_u32(14188u, 14u)]), Struct_3(vec3<bool>(false, false, false), Struct_2(vec3<u32>(25493u, u_input.a, 1u), u_input.c), vec2<bool>(false, false), Struct_2(vec3<u32>(1u, 1131u, global0.x), 1i)), 58284i)), vec3<bool>(any(vec3<bool>(false, false, false)) | true, true, true | (global1[_wgslsmith_index_u32(1u, 14u)] < global1[_wgslsmith_index_u32(56862u, 14u)])), !(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true))), Struct_2(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(29413u, global0.x, global0.x), ~vec3<u32>(global0.x, 9623u, 3282u)), select(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(16077u, u_input.a, 4269u), vec3<bool>(true, true, true)) ^ ~vec3<u32>(u_input.b.x, 1u, 4294967295u)), _wgslsmith_sub_i32(1i, u_input.c)), select(!select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), false), func_2(vec2<i32>(u_input.c, -1i), vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 14u)], -549f), Struct_3(vec3<bool>(true, true, false), Struct_2(vec3<u32>(global0.x, 30287u, 33048u), 94717i), vec2<bool>(true, true), Struct_2(vec3<u32>(4730u, global0.x, 296u), -46710i)), u_input.c))), !any(vec2<bool>(true, false))), Struct_2(abs(vec3<u32>(_wgslsmith_add_u32(5655u, 73761u), ~32388u, 0u)), u_input.c));
    let var_1 = firstLeadingBit(vec4<i32>(-21706i, var_0.d.b, 0i, var_0.b.b));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1251f, global1[_wgslsmith_index_u32(select(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_0.b.a.x), u_input.b), countOneBits(var_0.d.a.x), func_2(var_1.ww, vec2<f32>(global1[_wgslsmith_index_u32(4746u, 14u)], global1[_wgslsmith_index_u32(49829u, 14u)]), Struct_3(vec3<bool>(true, var_0.c.x, var_0.a.x), Struct_2(var_0.d.a, -3458i), var_0.a.yy, var_0.d), 2147483647i)), 14u)], true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(499f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 14u)]))))), -1297f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.x, 14u)]))) - _wgslsmith_f_op_f32(round(-2059f))));
    var var_3 = true;
    return false;
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    let var_0 = !((2351f > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(arg_0.a)), 191f))) || true);
    global1 = array<f32, 14>();
    let var_1 = -u_input.c >> (_wgslsmith_add_u32(_wgslsmith_div_u32(select(18521u, u_input.b.x, var_0 || var_0), _wgslsmith_mod_u32(global0.x, 5398u)), _wgslsmith_mult_u32(~(global0.x << (global0.x % 32u)), u_input.a)) % 32u);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    var var_1 = func_4(Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-904f - _wgslsmith_f_op_f32(757f + global1[_wgslsmith_index_u32(global0.x, 14u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(29110u, 14u)])), -204f), func_1()))), u_input.a);
    global0 = firstLeadingBit(u_input.b << ((~u_input.b & firstTrailingBit(u_input.b)) % vec2<u32>(32u)));
    var var_2 = func_4(func_4(Struct_1(-289f), ~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, global0.x, 4294967295u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.a, global0.x, global0.x)), vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 26973u))), 4294967295u);
    let var_3 = vec2<bool>(true, true);
    var var_4 = vec4<f32>(global1[_wgslsmith_index_u32(global0.x, 14u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-878f - -383f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b.x, 14u)] * var_1.a)))), _wgslsmith_f_op_f32(step(var_1.a, func_4(func_4(func_4(Struct_1(130f), global0.x), u_input.a), u_input.b.x).a)), _wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(-1000f * global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 28756u, 28475u, 39446u) | vec4<u32>(u_input.a, global0.x, u_input.a, 1u), vec4<u32>(u_input.b.x, u_input.a, 1u, global0.x)), 14u)])));
    var var_5 = !(!var_3.x);
    let var_6 = _wgslsmith_mod_vec3_i32(countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(~u_input.c, ~75502i, firstTrailingBit(-1i)), max(max(vec3<i32>(u_input.c, var_0, u_input.c), vec3<i32>(var_0, 2147483647i, -2484i)), firstLeadingBit(vec3<i32>(var_0, -2147483647i, var_0))))), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, select(var_0, 1i, var_3.x) ^ -u_input.c, -1i), ~(-vec3<i32>(var_0, u_input.c, 2147483647i) << (select(vec3<u32>(0u, u_input.a, global0.x), vec3<u32>(29973u, global0.x, u_input.a), true) % vec3<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(80766u, ~min(u_input.b, _wgslsmith_mod_vec2_u32(~u_input.b, vec2<u32>(u_input.b.x, 120668u))), firstTrailingBit(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(53603u, 4294967295u, global0.x), vec3<u32>(u_input.b.x, u_input.a, u_input.b.x)), ~vec3<u32>(76960u, 24980u, 4294967295u)) & _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, global0.x), vec3<u32>(31706u, global0.x, 17866u)), ~vec3<u32>(u_input.b.x, u_input.a, 1u))));
}

