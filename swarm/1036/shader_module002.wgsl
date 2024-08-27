struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 22>;

var<private> global1: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec2<f32>(222f, -206f), 1113f, 4294967295u), Struct_1(vec2<f32>(-104f, 2100f), -940f, 0u), Struct_1(vec2<f32>(-928f, -854f), 555f, 4294967295u), Struct_1(vec2<f32>(172f, 307f), -307f, 47647u), Struct_1(vec2<f32>(-2083f, -175f), -964f, 51264u), Struct_1(vec2<f32>(522f, 532f), 707f, 25532u), Struct_1(vec2<f32>(-157f, -600f), -1158f, 28421u), Struct_1(vec2<f32>(-1012f, -1161f), -401f, 28838u), Struct_1(vec2<f32>(1431f, 1000f), 624f, 885u), Struct_1(vec2<f32>(2293f, 550f), 1020f, 1u), Struct_1(vec2<f32>(-1663f, 804f), -570f, 28091u), Struct_1(vec2<f32>(-1000f, -293f), -551f, 115328u), Struct_1(vec2<f32>(388f, 1000f), -3264f, 4294967295u), Struct_1(vec2<f32>(-1000f, -613f), -765f, 18597u), Struct_1(vec2<f32>(814f, 1259f), -153f, 29612u), Struct_1(vec2<f32>(1507f, -503f), 1000f, 4294967295u), Struct_1(vec2<f32>(131f, 1000f), 1660f, 0u), Struct_1(vec2<f32>(-280f, 1490f), 602f, 41812u), Struct_1(vec2<f32>(-1500f, 544f), 1067f, 4218u), Struct_1(vec2<f32>(-1000f, -123f), -258f, 15341u), Struct_1(vec2<f32>(-1194f, -1068f), 818f, 0u), Struct_1(vec2<f32>(-201f, 708f), 1890f, 80432u), Struct_1(vec2<f32>(-1783f, -1846f), 2138f, 26688u));

var<private> global2: array<i32, 17> = array<i32, 17>(0i, 17662i, -51820i, -35427i, 40727i, 2147483647i, -18187i, 1i, -24849i, 2147483647i, 5479i, -4887i, 34683i, -4035i, 1i, 42106i, -62614i);

var<private> global3: vec3<i32> = vec3<i32>(1i, -1i, 1i);

var<private> global4: vec4<bool> = vec4<bool>(false, false, true, false);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, 45204u), 23u)];
    global0 = array<vec3<f32>, 22>();
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), arg_0.a.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * -1115f)))), u_input.a.x);
    let var_2 = u_input.b.x;
    global2 = array<i32, 17>();
    return abs(2147483647i);
}

fn func_2() -> bool {
    var var_0 = global1[_wgslsmith_index_u32(58554u, 23u)];
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.a.x - var_0.b), _wgslsmith_f_op_f32(778f * var_0.a.x))), -683f)), var_0.b, ~var_0.c);
    global0 = array<vec3<f32>, 22>();
    global3 = -vec3<i32>(-global2[_wgslsmith_index_u32(20362u, 17u)] & func_3(Struct_1(var_1.a, 538f, u_input.a.x)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u), u_input.b.xx), 17u)] >> (~u_input.a.x % 32u), _wgslsmith_mod_i32(1i >> (var_1.c % 32u), firstTrailingBit(global3.x))) ^ vec3<i32>(~(~func_3(Struct_1(vec2<f32>(var_1.a.x, 950f), var_1.a.x, var_0.c))), -16845i, ~global3.x);
    let var_2 = Struct_1(vec2<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -873f)))), _wgslsmith_f_op_f32(max(-749f, var_0.b))), 219f, 9640u & var_1.c);
    return any(global4.xww);
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    global4 = vec4<bool>(false, false, !any(!vec4<bool>(false, false, global4.x, false)), max(~(arg_0.x ^ u_input.a.x), _wgslsmith_add_u32(4294967295u, arg_0.x) & _wgslsmith_sub_u32(arg_0.x, 0u)) >= 49903u);
    global4 = vec4<bool>(true, global4.x & (global4.x & true), func_2(), true);
    let var_0 = global1[_wgslsmith_index_u32(0u, 23u)];
    let var_1 = ~firstTrailingBit(~abs(reverseBits(global3.xy)));
    let var_2 = i32(-1i) * -3794i;
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a + var_0.a)), vec2<f32>(_wgslsmith_f_op_f32(select(-1768f, var_0.b, global4.x)), 1000f))), var_0.a.x, 31592u);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = _wgslsmith_mult_i32(-6617i, global3.x);
    global1 = array<Struct_1, 23>();
    var var_1 = arg_2;
    var var_2 = 42216u;
    var_1 = arg_2;
    return select(select(vec4<bool>(global4.x, true, true, !(arg_1 == var_1.c)), select(!(!vec4<bool>(false, global4.x, global4.x, true)), select(!vec4<bool>(true, global4.x, global4.x, global4.x), !vec4<bool>(true, true, global4.x, global4.x), select(vec4<bool>(global4.x, true, global4.x, false), vec4<bool>(false, true, global4.x, true), global4.x)), !select(vec4<bool>(true, global4.x, global4.x, true), vec4<bool>(false, global4.x, global4.x, true), vec4<bool>(global4.x, global4.x, true, false))), global4.x), select(vec4<bool>(select(select(false, global4.x, true), true, true), true, max(global3.x, global3.x) != ~39930i, true), !(!vec4<bool>(global4.x, true, true, global4.x)), !global4.x), global4.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !global4.xxz;
    global0 = array<vec3<f32>, 22>();
    global1 = array<Struct_1, 23>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-989f, 2041f), vec2<f32>(1564f, -1221f), vec2<bool>(global4.x, global4.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-515f, 1065f) - vec2<f32>(1141f, -655f))))), -1021f, ~1u);
    let var_2 = any(!func_4(func_1(~u_input.b), _wgslsmith_mod_u32(~4294967295u, countOneBits(u_input.b.x)), global1[_wgslsmith_index_u32(abs(17132u >> (var_1.c % 32u)), 23u)]));
    let var_3 = Struct_1(var_1.a, -1000f, 72148u);
    let var_4 = global0[_wgslsmith_index_u32(max(4294967295u, _wgslsmith_clamp_u32(~28526u, _wgslsmith_sub_u32(~1u, var_1.c) << (countOneBits(~28494u) % 32u), ~u_input.b.x)), 22u)];
    global4 = func_4(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1136f * -279f))), var_3.a.x, 38651u), _wgslsmith_mod_u32(abs(14296u), ~u_input.b.x), var_3);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_sub_u32(~(1u | u_input.b.x), 4294967295u), 4294967295u), var_3.a, firstLeadingBit(-(~_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, global2[_wgslsmith_index_u32(1u, 17u)], global2[_wgslsmith_index_u32(u_input.a.x, 17u)], -26496i), vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 17u)], -35792i, global3.x, -5576i), vec4<i32>(71216i, 0i, global3.x, -2147483647i)))), var_1.c, _wgslsmith_clamp_vec4_i32(max(vec4<i32>(~global3.x, global2[_wgslsmith_index_u32(~2410u, 17u)], min(global3.x, global3.x), _wgslsmith_dot_vec4_i32(vec4<i32>(28874i, 41875i, -14570i, global2[_wgslsmith_index_u32(4294967295u, 17u)]), vec4<i32>(40153i, 8980i, global2[_wgslsmith_index_u32(0u, 17u)], global2[_wgslsmith_index_u32(25398u, 17u)]))), ~(vec4<i32>(global3.x, -20451i, global2[_wgslsmith_index_u32(1u, 17u)], global2[_wgslsmith_index_u32(4294967295u, 17u)]) << (u_input.b % vec4<u32>(32u)))), _wgslsmith_mult_vec4_i32(vec4<i32>(16975i, 1i, 57879i, 1i) ^ reverseBits(vec4<i32>(global3.x, -56647i, global2[_wgslsmith_index_u32(var_3.c, 17u)], global2[_wgslsmith_index_u32(1u, 17u)])), vec4<i32>(global2[_wgslsmith_index_u32(var_3.c, 17u)], -27835i, global2[_wgslsmith_index_u32(16936u, 17u)], global3.x) >> ((u_input.b >> (u_input.b % vec4<u32>(32u))) % vec4<u32>(32u))), vec4<i32>(7320i, ~(global2[_wgslsmith_index_u32(4294967295u, 17u)] >> (var_1.c % 32u)), global2[_wgslsmith_index_u32(1u, 17u)], 1868i)));
}

