struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec2<u32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 858u;

var<private> global1: array<f32, 10>;

var<private> global2: u32;

var<private> global3: array<bool, 29>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: bool, arg_3: Struct_3) -> vec4<i32> {
    var var_0 = global3[_wgslsmith_index_u32(0u, 29u)] == arg_2;
    global1 = array<f32, 10>();
    global0 = 1u;
    var var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.zx)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1[_wgslsmith_index_u32(u_input.e.x, 10u)], -2159f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(123f, arg_0.x) + vec2<f32>(882f, -811f))))))));
    global0 = _wgslsmith_mult_u32(3973u, 0u);
    return -_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.b, 0i, _wgslsmith_div_i32(abs(43211i), abs(u_input.d.x))), vec4<i32>(-45505i ^ firstTrailingBit(u_input.b), _wgslsmith_dot_vec3_i32(-vec3<i32>(-15405i, u_input.d.x, -10340i), u_input.d.xxz), select(u_input.d.x, -u_input.b, arg_3.a.x), min(~u_input.d.x, i32(-1i) * -2147483647i)));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: vec4<i32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(-449f));
    global0 = ~0u;
    global3 = array<bool, 29>();
    let var_1 = arg_0.xxw;
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(u_input.a.x), _wgslsmith_dot_vec2_u32(u_input.a, firstTrailingBit(vec2<u32>(3319u, arg_1.x & 0u)))), 29u)];
    return _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(arg_2.b.c, u_input.c), reverseBits(arg_1.xy >> (_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(arg_1.yx, arg_1.zz), _wgslsmith_clamp_vec2_u32(u_input.c, vec2<u32>(0u, arg_2.a.c.x), arg_1.zz)) % vec2<u32>(32u))));
}

fn func_2(arg_0: bool) -> u32 {
    var var_0 = -vec4<i32>(-57310i, -1i, -min(1i, -2147483647i), -(~1i));
    var var_1 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 10u)], -160f, global1[_wgslsmith_index_u32(53633u, 10u)], global1[_wgslsmith_index_u32(22985u, 10u)])))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1477f, 541f, global1[_wgslsmith_index_u32(u_input.a.x, 10u)], 411f))))), select(vec3<u32>(67765u, ~(~4294967295u), 9549u), ~(~vec3<u32>(95161u, 0u, u_input.c.x) >> (firstTrailingBit(vec3<u32>(u_input.c.x, u_input.a.x, 9868u)) % vec3<u32>(32u))), !any(select(vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.c.x, 29u)], true, true), vec4<bool>(false, global3[_wgslsmith_index_u32(63464u, 29u)], true, false), vec4<bool>(false, global3[_wgslsmith_index_u32(1u, 29u)], arg_0, arg_0)))), Struct_2(Struct_1(var_0.yyw, true || (global1[_wgslsmith_index_u32(29035u, 10u)] < -1172f), u_input.a, true, u_input.b), Struct_1(var_0.zzx, arg_0, _wgslsmith_div_vec2_u32(min(u_input.c, vec2<u32>(7965u, 4294967295u)), vec2<u32>(u_input.a.x, u_input.a.x)), global3[_wgslsmith_index_u32(u_input.a.x, 29u)] || global3[_wgslsmith_index_u32(1u, 29u)], var_0.x)), ~func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-385f, 497f, 1000f, 407f) + vec4<f32>(-1520f, 1220f, 706f, -1377f)), vec3<f32>(492f, global1[_wgslsmith_index_u32(u_input.e.x, 10u)], global1[_wgslsmith_index_u32(0u, 10u)]), all(vec3<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 29u)], arg_0, true)), Struct_3(vec3<bool>(global3[_wgslsmith_index_u32(30422u, 29u)], true, true))) & (u_input.d | u_input.d));
    let var_2 = select(~(~_wgslsmith_sub_vec4_u32(abs(vec4<u32>(0u, u_input.e.x, 69682u, u_input.c.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.e.x, 1u, 15464u, u_input.c.x), vec4<u32>(u_input.c.x, 0u, u_input.a.x, u_input.a.x)))), countOneBits(max(vec4<u32>(_wgslsmith_mod_u32(4294967295u, 11019u), u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 62862u, 13388u), vec3<u32>(u_input.c.x, 4294967295u, 0u)), _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 0u)), reverseBits(vec4<u32>(u_input.c.x, 24437u, u_input.c.x, 12457u)))), global3[_wgslsmith_index_u32(~4294967295u, 29u)]);
    let var_3 = any(select(select(select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 29u)], false, false, false), vec4<bool>(global3[_wgslsmith_index_u32(1u, 29u)], false, arg_0, global3[_wgslsmith_index_u32(var_2.x, 29u)]), vec4<bool>(true, true, true, true)), vec4<bool>(true, 1u > var_2.x, true, global3[_wgslsmith_index_u32(u_input.a.x, 29u)]), ~30841u > min(u_input.e.x, 0u)), vec4<bool>(global3[_wgslsmith_index_u32(countOneBits(~var_2.x), 29u)], global3[_wgslsmith_index_u32(0u, 29u)], all(vec3<bool>(false, false, global3[_wgslsmith_index_u32(53392u, 29u)])), true), !vec4<bool>(!global3[_wgslsmith_index_u32(var_2.x, 29u)], true, false, global3[_wgslsmith_index_u32(countOneBits(u_input.c.x), 29u)])));
    global2 = var_2.x;
    return ~_wgslsmith_add_u32(var_2.x, ~_wgslsmith_mod_u32(1u | var_2.x, var_2.x));
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    global3 = array<bool, 29>();
    var var_0 = Struct_2(Struct_1(reverseBits(~vec3<i32>(2147483647i, u_input.b, u_input.b)), false, ~vec2<u32>(~arg_0.x, func_2(global3[_wgslsmith_index_u32(arg_0.x, 29u)])), true, 58022i), Struct_1(vec3<i32>(u_input.d.x, abs(u_input.b & u_input.b), func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(1u, 10u)], -516f, global1[_wgslsmith_index_u32(0u, 10u)], 1056f) + vec4<f32>(global1[_wgslsmith_index_u32(arg_0.x, 10u)], 825f, global1[_wgslsmith_index_u32(4294967295u, 10u)], -618f)), vec3<f32>(global1[_wgslsmith_index_u32(104566u, 10u)], global1[_wgslsmith_index_u32(u_input.e.x, 10u)], -578f), arg_0.x < 6602u, Struct_3(vec3<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 29u)], true, true))).x), false, vec2<u32>(_wgslsmith_add_u32(73963u, u_input.c.x), ~4294967295u) << (vec2<u32>(46495u >> (arg_0.x % 32u), _wgslsmith_sub_u32(arg_0.x, 13495u)) % vec2<u32>(32u)), true, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.d.x, 0i, u_input.d.x, u_input.d.x) << (countOneBits(arg_0) % vec4<u32>(32u)), func_3(vec4<f32>(-547f, -231f, global1[_wgslsmith_index_u32(u_input.e.x, 10u)], 370f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1303f, global1[_wgslsmith_index_u32(arg_0.x, 10u)], 1645f)), true, Struct_3(vec3<bool>(global3[_wgslsmith_index_u32(arg_0.x, 29u)], true, global3[_wgslsmith_index_u32(1u, 29u)]))))));
    let var_1 = Struct_1(u_input.d.yyy, false, ~abs(u_input.e), true, var_0.a.e);
    let var_2 = 0u;
    let var_3 = max(arg_0.wzz | arg_0.zwy, vec3<u32>(reverseBits(4294967295u), ~func_2(select(false, true, false)), _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, var_1.c.x, var_2, var_1.c.x) & arg_0, arg_0))));
    return Struct_1(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-36645i, u_input.b, -2147483647i), vec3<i32>(firstTrailingBit(var_0.b.e), 2147483647i << (var_3.x % 32u), var_1.e)), max(var_1.a, abs(-vec3<i32>(var_1.a.x, 23117i, -39217i)))), any(vec4<bool>(global3[_wgslsmith_index_u32(u_input.e.x, 29u)], !(!global3[_wgslsmith_index_u32(8032u, 29u)]), false, var_1.b)), arg_0.ww, -(var_1.e ^ (u_input.d.x & u_input.d.x)) > var_0.b.a.x, var_0.b.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(u_input.e.x, countOneBits(u_input.e.x), u_input.c.x, _wgslsmith_clamp_u32(_wgslsmith_div_u32(12369u, 4294967295u), u_input.e.x, u_input.a.x));
    let var_1 = vec4<bool>(~(-22477i) != abs(reverseBits(u_input.d.x)), global3[_wgslsmith_index_u32(u_input.c.x, 29u)], false, u_input.c.x == var_0.x);
    var var_2 = Struct_2(func_1(min(vec4<u32>(var_0.x, var_0.x ^ var_0.x, ~var_0.x, var_0.x & 16384u), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 5668u, 7532u, u_input.e.x), vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x)) >> (~vec4<u32>(u_input.c.x, u_input.a.x, u_input.c.x, 1u) % vec4<u32>(32u)))), func_1(abs(reverseBits(vec4<u32>(var_0.x, 13954u, 0u, 39211u) | vec4<u32>(4294967295u, var_0.x, 33439u, var_0.x)))));
    global0 = min((2342u | ~var_2.a.c.x) & ~(var_2.b.c.x << (var_0.x % 32u)), _wgslsmith_div_u32(~abs(0u), var_0.x)) | ~countOneBits(~abs(var_2.b.c.x));
    var_2 = Struct_2(Struct_1(u_input.d.xxx, true, ~vec2<u32>(_wgslsmith_clamp_u32(30850u, 34711u, var_0.x), var_0.x), true, -2147483647i), var_2.b);
    var var_3 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a, -1i);
}

