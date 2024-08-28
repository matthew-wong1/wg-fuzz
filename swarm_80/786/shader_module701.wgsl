struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
    d: i32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: f32,
    e: vec4<f32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_4,
    c: vec2<u32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 3> = array<Struct_4, 3>(Struct_4(Struct_2(Struct_1(true, 0i, -1592f, 34647i, vec2<f32>(-1727f, -1532f)), vec4<f32>(848f, -1228f, -373f, -664f), vec4<u32>(1u, 0u, 48891u, 55479u)), Struct_2(Struct_1(true, 941i, -147f, -1i, vec2<f32>(597f, -1766f)), vec4<f32>(-1585f, -523f, -812f, 219f), vec4<u32>(15238u, 1729u, 7160u, 0u)), Struct_2(Struct_1(false, -21363i, 1034f, 0i, vec2<f32>(1388f, -828f)), vec4<f32>(-1000f, -1539f, -231f, -182f), vec4<u32>(4294967295u, 0u, 10801u, 33103u)), -895f, vec4<f32>(-676f, 1507f, 947f, -863f)), Struct_4(Struct_2(Struct_1(false, -8223i, -232f, 0i, vec2<f32>(-552f, 804f)), vec4<f32>(-146f, -1914f, -232f, 475f), vec4<u32>(20124u, 0u, 47382u, 4294967295u)), Struct_2(Struct_1(true, -1i, -257f, 0i, vec2<f32>(-632f, -1155f)), vec4<f32>(-277f, 1232f, -1548f, 997f), vec4<u32>(5568u, 8857u, 0u, 45616u)), Struct_2(Struct_1(false, 1i, -293f, 0i, vec2<f32>(-1049f, -476f)), vec4<f32>(-200f, -1381f, 415f, -131f), vec4<u32>(8104u, 4294967295u, 4294967295u, 32398u)), 388f, vec4<f32>(-1023f, -724f, 562f, -175f)), Struct_4(Struct_2(Struct_1(false, -25097i, 204f, 0i, vec2<f32>(436f, 1333f)), vec4<f32>(1151f, -1951f, -322f, -593f), vec4<u32>(41668u, 1u, 0u, 4294967295u)), Struct_2(Struct_1(true, i32(-2147483648), -1135f, i32(-2147483648), vec2<f32>(-855f, 474f)), vec4<f32>(-302f, 571f, -891f, 311f), vec4<u32>(1u, 1u, 4294967295u, 1u)), Struct_2(Struct_1(false, 1i, -1374f, 2147483647i, vec2<f32>(2478f, 1390f)), vec4<f32>(248f, 2379f, -1346f, 2064f), vec4<u32>(69121u, 0u, 30627u, 1u)), 535f, vec4<f32>(-228f, -212f, -1100f, -1398f)));

var<private> global1: array<vec2<f32>, 23>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> vec2<f32> {
    let var_0 = Struct_2(arg_0.b.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.b.x, arg_0.b.a.c, arg_0.b.a.e.x, arg_0.b.b.x)), vec4<f32>(_wgslsmith_f_op_f32(1000f - arg_0.b.a.c), arg_0.b.b.x, _wgslsmith_f_op_f32(-arg_0.b.b.x), 2195f)) - vec4<f32>(arg_0.b.a.e.x, _wgslsmith_f_op_f32(-arg_0.b.a.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.b.x)), _wgslsmith_f_op_f32(-arg_0.b.a.c))), max(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.b.c.x, arg_0.b.c.x, arg_0.b.c.x, ~arg_0.b.c.x), ~vec4<u32>(25954u, arg_0.b.c.x, arg_0.b.c.x, arg_0.b.c.x), min(vec4<u32>(27164u, 4294967295u, 4294967295u, 47776u) << (vec4<u32>(0u, arg_0.b.c.x, arg_0.b.c.x, 0u) % vec4<u32>(32u)), ~arg_0.b.c)), firstLeadingBit(~(arg_0.b.c & vec4<u32>(49231u, arg_0.b.c.x, arg_0.b.c.x, 1u)))));
    let var_1 = true;
    global0 = array<Struct_4, 3>();
    var var_2 = global0[_wgslsmith_index_u32(min(min(select(4294967295u >> (var_0.c.x % 32u), arg_0.b.c.x, true) | 4294967295u, 0u), ~arg_0.b.c.x), 3u)];
    global0 = array<Struct_4, 3>();
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.a.c) * arg_0.b.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.a.e.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-164f, _wgslsmith_f_op_f32(447f * var_0.b.x))), var_0.b.x)) - 196f));
}

fn func_2() -> bool {
    let var_0 = ~(~(~select(4294967295u, 0u, false))) >> (~_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(5984u, 32588u), vec2<u32>(4294967295u, 13061u))) % 32u);
    var var_1 = Struct_1(true, u_input.a, _wgslsmith_f_op_f32(1007f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-916f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1187f, -370f)))), u_input.a, vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(187f, 905f))), _wgslsmith_f_op_f32(-220f + _wgslsmith_div_f32(-228f, 200f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1602f, 458f))))));
    global0 = array<Struct_4, 3>();
    var var_2 = true;
    var_1 = Struct_1(all(select(vec4<bool>(var_1.a, var_1.a, var_1.a, true), select(vec4<bool>(var_1.a, var_1.a, true, false), vec4<bool>(true, var_1.a, true, var_1.a), vec4<bool>(var_1.a, false, var_1.a, true)), select(vec4<bool>(true, var_1.a, var_1.a, false), vec4<bool>(false, false, false, var_1.a), true))) || all(vec4<bool>(true, true, any(vec2<bool>(var_1.a, var_1.a)), any(vec2<bool>(var_1.a, false)))), ~firstTrailingBit(-u_input.a), var_1.c, _wgslsmith_sub_i32(8118i, select(u_input.a, 22079i, all(vec3<bool>(var_1.a, true, var_1.a)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(var_0, 23u)] - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.e.x, -188f) * _wgslsmith_f_op_vec2_f32(-var_1.e))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_3(Struct_3(vec4<i32>(-1i, 29128i, var_1.d, -63855i), Struct_2(Struct_1(false, 1i, var_1.e.x, var_1.d, vec2<f32>(var_1.e.x, 811f)), vec4<f32>(-1801f, -125f, var_1.c, -164f), vec4<u32>(var_0, var_0, var_0, var_0))), var_1.d)))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(var_1.e + vec2<f32>(var_1.e.x, -229f)))))));
    return var_1.a;
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> i32 {
    global1 = array<vec2<f32>, 23>();
    global1 = array<vec2<f32>, 23>();
    var var_0 = false;
    var var_1 = vec3<bool>(false, func_2(), any(select(select(vec4<bool>(false, arg_1.a, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, arg_1.a, false, false)), vec4<bool>(arg_1.a, false, arg_1.a, arg_1.a), true)) & arg_1.a);
    let var_2 = Struct_3(vec4<i32>(u_input.a, max(-1i, _wgslsmith_div_i32(-31660i, 1i)), -min(-55968i, -u_input.a), -1i), Struct_2(Struct_1(_wgslsmith_mult_i32(-5918i, arg_0) != arg_1.d, -_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.b, 0i, u_input.a), vec3<i32>(arg_0, -20050i, arg_1.b)), _wgslsmith_f_op_f32(-1977f + 1f), _wgslsmith_div_i32(-33620i, select(arg_1.d, arg_0, arg_1.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c, arg_1.e.x) - global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(22696u, 0u), 23u)])), vec4<f32>(_wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(round(arg_1.e.x)), arg_1.c), vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(38800u, 35374u, 66265u), vec3<u32>(66492u, 4294967295u, 0u)), ~1u, 64128u, ~0u >> (countOneBits(120695u) % 32u))));
    return var_2.a.x;
}

fn func_4(arg_0: i32, arg_1: vec3<i32>, arg_2: vec2<u32>, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(max(~1u, max(38690u, 4294967295u)) == (~45853u << (arg_2.x % 32u)), _wgslsmith_sub_i32(-arg_1.x, arg_0), _wgslsmith_f_op_f32(-arg_3.x), -arg_1.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1118f, arg_3.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(513f, arg_3.x, arg_3.x, arg_3.x)) + vec4<f32>(-617f, arg_3.x, -762f, 266f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, arg_3.x, 184f, -449f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_3.x, -176f, arg_3.x, arg_3.x), vec4<f32>(1162f, arg_3.x, arg_3.x, arg_3.x)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1878f, arg_3.x, arg_3.x, 601f)))))), vec4<u32>(arg_2.x, arg_2.x, 1u, 1u));
    let var_1 = -1153f;
    global1 = array<vec2<f32>, 23>();
    let var_2 = func_2();
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 23>();
    var var_0 = Struct_2(func_4(-1i ^ ~func_1(u_input.a, Struct_1(false, 19137i, -865f, u_input.a, global1[_wgslsmith_index_u32(23253u, 23u)])), max(select(vec3<i32>(u_input.a, u_input.a, u_input.a) ^ vec3<i32>(u_input.a, u_input.a, u_input.a), reverseBits(vec3<i32>(-2147483647i, u_input.a, 25110i)), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false)), _wgslsmith_mult_vec3_i32(vec3<i32>(6350i, u_input.a, u_input.a), vec3<i32>(2147483647i, u_input.a, 0i)) | vec3<i32>(1i, 2147483647i, -41604i)), min(firstTrailingBit(abs(vec2<u32>(64619u, 1u))), vec2<u32>(0u, 41952u) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))), vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(257f, 2839f, -1000f, 130f), vec4<f32>(-1662f, 310f, -135f, -316f)), _wgslsmith_div_vec4_f32(vec4<f32>(1485f, 1000f, 385f, 259f), vec4<f32>(516f, 755f, 340f, -620f)), vec4<bool>(true, true, true, true)))))), vec4<u32>(~1u, ~(~select(1u, 73474u, true)), reverseBits(13160u), 1u));
    let var_1 = select(!vec2<bool>(var_0.a.a, !all(vec2<bool>(true, var_0.a.a))), !(!(!vec2<bool>(false, var_0.a.a))), vec2<bool>(true, true));
    let var_2 = var_1;
    global1 = array<vec2<f32>, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c, _wgslsmith_div_u32(abs(16419u), ~(var_0.c.x >> (1u % 32u)) << (17516u % 32u)), -218f);
}

