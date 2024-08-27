struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10>;

var<private> global1: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(-1314f, 32246u, -919f), Struct_1(-1080f, 8542u, 780f), Struct_1(489f, 4294967295u, -260f), Struct_1(-301f, 9275u, -863f), Struct_1(2146f, 1u, 564f), Struct_1(453f, 1u, 731f), Struct_1(-1034f, 53214u, -1000f), Struct_1(-512f, 4055u, -318f), Struct_1(1810f, 508u, 206f), Struct_1(-323f, 28922u, 676f), Struct_1(1000f, 1u, -2727f), Struct_1(-1000f, 26780u, -686f), Struct_1(-616f, 37047u, -924f), Struct_1(-701f, 43514u, 422f));

var<private> global2: Struct_1 = Struct_1(-658f, 38388u, 1443f);

var<private> global3: vec2<i32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: vec3<i32>) -> bool {
    global2 = global1[_wgslsmith_index_u32(u_input.b, 14u)];
    var var_0 = global1[_wgslsmith_index_u32(global2.b, 14u)];
    var var_1 = ~49063u << (~abs(global2.b) % 32u);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2.c * global2.a))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c))))), ~arg_0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.a)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -685f)))) + 1000f));
    let var_3 = var_2;
    return true;
}

fn func_4(arg_0: bool) -> f32 {
    let var_0 = -global3.x;
    global3 = _wgslsmith_sub_vec2_i32(u_input.a, _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.a, u_input.a), max(_wgslsmith_div_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, var_0)), u_input.a)), u_input.a, u_input.a));
    var var_1 = -2743f;
    var var_2 = global2.b;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(835f, _wgslsmith_f_op_f32(abs(-1061f)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -210f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c))))), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-global2.a)), 332f);
    return 1789f;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(520f, -180f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) + 339f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1097f), _wgslsmith_f_op_f32(func_4(func_3(arg_0.b, vec3<i32>(-64971i, global3.x, 44364i))))))), 4294967295u, arg_0.a);
    var var_1 = arg_0;
    var var_2 = ~_wgslsmith_clamp_vec3_u32(reverseBits(reverseBits(vec3<u32>(global2.b, u_input.b, global2.b))), _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.b, arg_0.b), vec3<u32>(var_0.b, arg_0.b, 1u)) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 29791u, var_1.b), vec3<u32>(4294967295u, arg_0.b, 1u)) % vec3<u32>(32u)), abs(~vec3<u32>(var_0.b, 0u, 0u))), vec3<u32>(_wgslsmith_div_u32(4294967295u, ~21392u), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_0.b, 1u, 16567u, global2.b)), ~vec4<u32>(global2.b, 4294967295u, 83384u, 2561u)), 39855u));
    var var_3 = global1[_wgslsmith_index_u32(var_2.x, 14u)];
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(arg_0.c)))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.c * var_3.c))))), 0u, _wgslsmith_f_op_f32(func_4(true)));
    return global1[_wgslsmith_index_u32(1u, 14u)];
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: i32) -> f32 {
    global3 = u_input.a;
    var var_0 = func_2(func_2(arg_0));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-129f * arg_0.a), min(0u, max(_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.b, 6665u), ~12644u), _wgslsmith_div_u32(_wgslsmith_clamp_u32(4294967295u, arg_1.b, arg_1.b), firstLeadingBit(57671u)))), global2.a);
    var var_2 = Struct_1(arg_1.c, 0u, 2268f);
    let var_3 = Struct_1(arg_1.a, 0u, _wgslsmith_f_op_f32(func_4(!(arg_2.x & (var_0.a <= var_0.c)))));
    return _wgslsmith_f_op_f32(func_2(Struct_1(-1000f, 23437u, _wgslsmith_f_op_f32(f32(-1f) * -566f))).c - _wgslsmith_f_op_f32(-var_2.a));
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: vec3<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * global2.a), global2.a)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.a, arg_0.c, arg_0.c, global2.a))))))))));
    var var_1 = global2.b;
    var var_2 = arg_0.b | (max(arg_0.b, u_input.b) | min(arg_0.b & 50927u, u_input.b));
    var var_3 = arg_0;
    global3 = u_input.a;
    return arg_0;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = u_input.a.x;
    global2 = global1[_wgslsmith_index_u32(max(firstLeadingBit(33545u), 509u) ^ u_input.b, 14u)];
    var var_1 = Struct_1(arg_0.x, ~global2.b << (global2.b % 32u), _wgslsmith_f_op_f32(arg_0.x * -1462f));
    var_1 = func_6(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(global1[_wgslsmith_index_u32(u_input.b, 14u)], func_2(global1[_wgslsmith_index_u32(global2.b, 14u)]), arg_1, 0i))), 61582u, 179f), -1159f, select(select(vec3<bool>(true, true, !arg_1.x), select(select(vec3<bool>(true, true, true), arg_1.zwy, arg_1.zzx), !vec3<bool>(global0[_wgslsmith_index_u32(global2.b, 10u)], false, false), arg_1.xwx), vec3<bool>(true, any(vec3<bool>(false, false, global0[_wgslsmith_index_u32(86282u, 10u)])), global0[_wgslsmith_index_u32(1u, 10u)])), !select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 10u)], false, true), select(arg_1.yzx, vec3<bool>(global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(1u, 10u)], arg_1.x), arg_1.x), global0[_wgslsmith_index_u32(4294967295u >> (0u % 32u), 10u)]), vec3<bool>(!arg_1.x && !arg_1.x, var_1.c > _wgslsmith_f_op_f32(floor(-1044f)), !global0[_wgslsmith_index_u32(22702u, 10u)])));
    let var_2 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.x, -1110f, -630f, var_1.a), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1133f, var_1.c, -1398f, -606f)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c, -295f, global2.a, var_1.a)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(545f, -179f, 2314f, 1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -524f, var_1.a, var_1.a) - vec4<f32>(535f, var_1.a, arg_0.x, global2.a))))))));
    return func_6(Struct_1(_wgslsmith_f_op_f32(-global2.a), ~abs(_wgslsmith_div_u32(1u, 1u)), func_6(global1[_wgslsmith_index_u32(~(~0u), 14u)], _wgslsmith_f_op_f32(f32(-1f) * -1175f), vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, var_1.b, 33496u), vec3<u32>(0u, 33141u, 22915u)), 10u)], true, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, global2.b), 10u)])).a), _wgslsmith_f_op_f32(min(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, arg_0.x, arg_1.x))) + 1420f))), select(vec3<bool>(true, arg_1.x, arg_1.x), arg_1.zzz, true));
}

fn func_7(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_1, arg_3: f32) -> StorageBuffer {
    var var_0 = arg_2;
    global2 = Struct_1(arg_3, ~14201u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1314f * -620f)) - 1121f), global2.a));
    let var_1 = vec2<bool>(false, true);
    let var_2 = func_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-342f + -278f), func_6(arg_2, 1996f, arg_0.ywy).c), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-545f, -349f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, var_0.a))))), global0[_wgslsmith_index_u32(~51418u, 10u)])), vec4<bool>(true, false, !(arg_1 || false) || var_1.x, ~var_0.b > min(~44527u, 1u)));
    let var_3 = func_6(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.c, -474f), vec2<f32>(1084f, -1000f)))))), arg_0), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_3 + 317f), _wgslsmith_f_op_f32(arg_3 * var_2.c))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.c), 2123f, !arg_1))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.a)))), vec3<bool>(true, all(!(!vec3<bool>(true, global0[_wgslsmith_index_u32(global2.b, 10u)], true))), true));
    return StorageBuffer(~global2.b, _wgslsmith_dot_vec3_i32(vec3<i32>(-70465i, global3.x, -1i), ~vec3<i32>(firstLeadingBit(u_input.a.x), _wgslsmith_sub_i32(u_input.a.x, global3.x), u_input.a.x)), ~(vec2<i32>(1i, 1i) << (vec2<u32>(var_0.b, 1u) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 15907i;
    global2 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global2.a, 1942f), global2.a, true)), ~u_input.b, -1999f);
    var var_1 = vec2<u32>(~(~14279u), 19171u);
    var var_2 = vec4<i32>(-1i, ~firstLeadingBit(12630i), _wgslsmith_div_i32(~_wgslsmith_div_i32(_wgslsmith_mod_i32(-2147483647i, u_input.a.x), max(-17801i, 28116i)), _wgslsmith_mult_i32(_wgslsmith_mult_i32(3722i, -74263i), global3.x) ^ 0i), u_input.a.x);
    var var_3 = 0i;
    let x = u_input.a;
    s_output = func_7(!vec4<bool>(global0[_wgslsmith_index_u32(~firstTrailingBit(116454u), 10u)], true, any(!vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(24585u, 10u)])), true), true, func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, global2.c))))), !(!select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 10u)], global0[_wgslsmith_index_u32(1u, 10u)], true, true), vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(global2.b, 10u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)], true, false)))), func_2(func_6(Struct_1(_wgslsmith_f_op_f32(abs(global2.c)), var_1.x, 182f), 481f, !(!vec3<bool>(global0[_wgslsmith_index_u32(29430u, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)])))).a);
}

