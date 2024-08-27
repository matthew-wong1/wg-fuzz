struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec3<i32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1565f, -120f, -756f);

var<private> global1: array<vec3<i32>, 3>;

var<private> global2: array<f32, 20> = array<f32, 20>(526f, -232f, -580f, 2479f, 1033f, -1141f, -1280f, -307f, 267f, 831f, -572f, -776f, 1000f, -1000f, 1000f, 1166f, -571f, 409f, 841f, 1047f);

var<private> global3: u32;

var<private> global4: vec3<u32> = vec3<u32>(0u, 1u, 4294967295u);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    global3 = reverseBits(4294967295u);
    global4 = select(~u_input.b, u_input.d, all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), true), vec4<bool>(true, false, true, true)))) >> (select(abs(u_input.b), vec3<u32>(~(~u_input.e), 1077u, 75677u), true) % vec3<u32>(32u));
    var var_0 = ~reverseBits(2702i);
    let var_1 = ~global4.x;
    let var_2 = vec3<bool>(true, true, true);
    return 98580u;
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_1 {
    global2 = array<f32, 20>();
    global3 = u_input.b.x;
    global4 = vec3<u32>(1u, u_input.a, _wgslsmith_div_u32(global4.x, reverseBits(~64602u)));
    let var_0 = arg_0.xy;
    global3 = arg_0.x;
    return arg_2;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_2;
    var var_1 = func_3(vec3<u32>(max(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.b.x, var_0.a.x), vec2<u32>(19330u, 4294967295u))), reverseBits(4294967295u), func_3(arg_1.a, firstLeadingBit(arg_1.d.zy), Struct_1(~vec3<u32>(global4.x, var_0.b.x, 0u), ~vec2<u32>(arg_1.a.x, 22193u), arg_2.c, vec3<i32>(36633i, 0i, 5623i), global2[_wgslsmith_index_u32(var_0.a.x, 20u)])).b.x), _wgslsmith_mult_vec2_i32(vec2<i32>(-17987i, -24743i) | _wgslsmith_mod_vec2_i32(var_0.d.xx, vec2<i32>(1i, 1i)), vec2<i32>(1i, 18087i)), var_0).c.yyy;
    let var_2 = func_3(~arg_1.a, -(~(-arg_1.d.xx)), arg_1);
    global3 = arg_1.a.x;
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -350f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)))));
    return arg_1;
}

fn func_1() -> u32 {
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(abs(abs(global4.x)), 20u)], 163f), -308f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(171f, global2[_wgslsmith_index_u32(u_input.a, 20u)])))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x - global0.x), _wgslsmith_f_op_f32(min(-1471f, -180f))))));
    global3 = 16362u;
    let var_0 = u_input.b.yz | _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d.x, 0u) << (_wgslsmith_add_vec2_u32(global4.xy, vec2<u32>(u_input.c, global4.x)) % vec2<u32>(32u)), vec2<u32>(~1u, min(global4.x, 40668u))), _wgslsmith_sub_vec2_u32(u_input.d.zx, global4.yy));
    let var_1 = func_4(~(~var_0.x), func_3(vec3<u32>(~_wgslsmith_div_u32(0u, var_0.x), u_input.d.x, ~func_2(vec3<i32>(18645i, 15199i, 27598i))), _wgslsmith_clamp_vec2_i32(select(vec2<i32>(1i, 1i), vec2<i32>(0i, 2147483647i), vec2<bool>(false, false)), vec2<i32>(24353i, -1i) << (var_0 % vec2<u32>(32u)), ~vec2<i32>(-2147483647i, 1i)) & -abs(vec2<i32>(9012i, 2147483647i)), Struct_1(_wgslsmith_mod_vec3_u32(u_input.b, ~vec3<u32>(global4.x, var_0.x, 29655u)), ~u_input.b.zz, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 999f, 121f, 1008f)), ~vec3<i32>(49478i, -37662i, 0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(914f, -878f))))), Struct_1(~u_input.b, abs(_wgslsmith_clamp_vec2_u32(~global4.yz, vec2<u32>(40592u, 84201u), vec2<u32>(0u, u_input.c))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, 639f, 2795f, global2[_wgslsmith_index_u32(64513u, 20u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-703f, global2[_wgslsmith_index_u32(var_0.x, 20u)], global2[_wgslsmith_index_u32(global4.x, 20u)], global0.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1373f, 567f, -1204f, global2[_wgslsmith_index_u32(4294967295u, 20u)]) - vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 20u)], 463f, 1809f, 413f))), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false)))), _wgslsmith_div_vec3_i32(-func_3(u_input.d, vec2<i32>(-76113i, 1i), Struct_1(vec3<u32>(19148u, 4294967295u, 34662u), global4.xz, vec4<f32>(global0.x, 1000f, -427f, 752f), vec3<i32>(1i, 1i, 87142i), global2[_wgslsmith_index_u32(17729u, 20u)])).d, _wgslsmith_add_vec3_i32(global1[_wgslsmith_index_u32(abs(global4.x), 3u)], vec3<i32>(2147483647i, -8950i, -1i))), 1025f));
    global0 = vec3<f32>(var_1.e, var_1.e, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.x, global0.x))), -1939f))));
    return 31933u;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = 23565u;
    var var_0 = false;
    let var_1 = global1[_wgslsmith_index_u32(16856u, 3u)] | (-(~global1[_wgslsmith_index_u32(func_1(), 3u)]) << (vec3<u32>(4228u, 0u, ~(~global4.x)) % vec3<u32>(32u)));
    var var_2 = Struct_1(u_input.d & _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d.x, 32447u, global4.x), vec3<u32>(~global4.x, 1u, firstLeadingBit(54641u))), global4.zx, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, 591f, global0.x, -584f), vec4<f32>(-993f, 112f, global0.x, global0.x)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-855f, global2[_wgslsmith_index_u32(1u, 20u)], global2[_wgslsmith_index_u32(41018u, 20u)], 561f) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2[_wgslsmith_index_u32(1u, 20u)], 1850f, global0.x, 1372f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(317f, global0.x, -137f, global2[_wgslsmith_index_u32(4294967295u, 20u)]) - vec4<f32>(global0.x, -237f, global0.x, global0.x)), vec4<f32>(global2[_wgslsmith_index_u32(u_input.a, 20u)], -2218f, -1862f, 410f)))), vec3<i32>(-var_1.x, -16527i, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-39656i, var_1.x, 0i, var_1.x), _wgslsmith_div_vec4_i32(vec4<i32>(var_1.x, -2147483647i, 64549i, 21645i), vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x))))), 777f);
    var_2 = func_4(func_4(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, global4.x), vec2<u32>(u_input.a, u_input.a)), Struct_1(select(vec3<u32>(var_2.a.x, 51435u, 0u), var_2.a, vec3<bool>(false, false, false)), ~vec2<u32>(var_2.a.x, 23860u), var_2.c, var_2.d, _wgslsmith_f_op_f32(-var_2.e)), Struct_1(~vec3<u32>(4294967295u, 0u, 50882u), _wgslsmith_sub_vec2_u32(global4.xx, vec2<u32>(35138u, 4294967295u)), _wgslsmith_f_op_vec4_f32(exp2(var_2.c)), var_2.d, _wgslsmith_f_op_f32(-var_2.e))).a.x >> ((_wgslsmith_sub_u32(~var_2.b.x, var_2.a.x) ^ ~9015u) % 32u), Struct_1(var_2.a, var_2.a.zz, _wgslsmith_f_op_vec4_f32(var_2.c * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.x, global2[_wgslsmith_index_u32(global4.x, 20u)], var_2.c.x, -1393f)))), vec3<i32>(2147483647i, (var_1.x << (1u % 32u)) | _wgslsmith_clamp_i32(-50184i, var_2.d.x, var_1.x), var_1.x), _wgslsmith_f_op_f32(abs(-343f))), Struct_1(max(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, var_2.b.x, 1u), u_input.d), var_2.a), vec2<u32>(_wgslsmith_div_u32(15705u, 26157u), global4.x), vec4<f32>(1259f, _wgslsmith_f_op_f32(exp2(var_2.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1535f)), _wgslsmith_f_op_f32(-var_2.c.x)), 2669f), global1[_wgslsmith_index_u32(func_1(), 3u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(global0.x, global0.x, true)))) + global2[_wgslsmith_index_u32(u_input.d.x, 20u)])));
    var var_3 = _wgslsmith_f_op_vec2_f32(global0.zy - _wgslsmith_f_op_vec2_f32(select(func_3(vec3<u32>(~var_2.a.x, global4.x, ~59510u), ~vec2<i32>(var_1.x, 0i), Struct_1(vec3<u32>(31489u, 0u, 32565u), func_3(u_input.d, vec2<i32>(var_2.d.x, -1i), Struct_1(var_2.a, u_input.b.zy, vec4<f32>(1000f, 836f, var_2.c.x, 228f), global1[_wgslsmith_index_u32(u_input.d.x, 3u)], global0.x)).a.zz, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1262f, -1027f, var_2.c.x, 1080f), var_2.c)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(84143u, 18376u), 3u)], global2[_wgslsmith_index_u32(~u_input.a, 20u)])).c.ww, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.zy * vec2<f32>(var_2.e, 662f)) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global0.xy)))), true)));
    global2 = array<f32, 20>();
    var var_4 = vec4<i32>(~select(var_1.x, -(var_1.x >> (var_2.a.x % 32u)), true), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(countOneBits(var_2.d), global1[_wgslsmith_index_u32(global4.x, 3u)]), var_1), -56074i, ~(~(-50671i >> (~u_input.b.x % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~var_2.a.zx) ^ vec2<u32>(~62875u, reverseBits(35087u))));
}

