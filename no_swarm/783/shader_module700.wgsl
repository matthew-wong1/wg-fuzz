struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 30797u, 22136u, 40576u);

var<private> global1: array<Struct_3, 24>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    global0 = ~vec4<u32>(1u, reverseBits(u_input.d.x), ~(~9688u), min(752u >> (~global0.x % 32u), ~78493u));
    global0 = _wgslsmith_clamp_vec4_u32(select(reverseBits(abs(vec4<u32>(global0.x, 4294967295u, 73168u, arg_0.b.x) >> (vec4<u32>(arg_0.b.x, 77292u, global0.x, 4294967295u) % vec4<u32>(32u)))), vec4<u32>(3571u, _wgslsmith_clamp_u32(0u, 84310u, arg_0.b.x) ^ 0u, 4294967295u, 0u), vec4<bool>(true && all(vec2<bool>(false, true)), all(vec3<bool>(true, false, true)) && true, ~0u <= _wgslsmith_dot_vec2_u32(u_input.c.yx, u_input.d.xy), true)), vec4<u32>(~_wgslsmith_add_u32(firstLeadingBit(arg_0.b.x), ~u_input.d.x), ~global0.x, (_wgslsmith_sub_u32(21432u, 4022u) >> (u_input.d.x % 32u)) & arg_0.b.x, 4294967295u), vec4<u32>(u_input.c.x, _wgslsmith_dot_vec3_u32(arg_0.b, global0.xwx) ^ (arg_0.b.x & u_input.b.x), global0.x, ~(~13029u)) ^ ~abs(~vec4<u32>(u_input.d.x, 1u, u_input.d.x, 23049u)));
    var var_0 = abs(min(countOneBits(vec4<u32>(global0.x, 0u, u_input.a, 19583u)), ~vec4<u32>(86453u, firstLeadingBit(arg_0.b.x), u_input.d.x, min(global0.x, 1u))));
    global0 = countOneBits(firstTrailingBit((~vec4<u32>(var_0.x, 0u, 1u, global0.x) ^ firstLeadingBit(vec4<u32>(arg_0.b.x, 1u, 0u, 75655u))) >> (abs(vec4<u32>(21748u, u_input.a, 20082u, 1u) | vec4<u32>(global0.x, var_0.x, arg_0.b.x, 0u)) % vec4<u32>(32u))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(747f, -440f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-655f, -565f) * vec2<f32>(1445f, -827f)), vec2<bool>(true, false))) + vec2<f32>(_wgslsmith_f_op_f32(2250f * 1858f), _wgslsmith_f_op_f32(-178f + 1310f))))));
    return arg_0.b;
}

fn func_2(arg_0: vec4<bool>) -> u32 {
    let var_0 = Struct_3(~_wgslsmith_mod_vec3_u32(func_3(Struct_1(u_input.e.x, vec3<u32>(1u, 34473u, u_input.d.x))), ~global0.wxy ^ _wgslsmith_mod_vec3_u32(vec3<u32>(55496u, global0.x, global0.x), u_input.d)), Struct_2(Struct_1(abs(-55134i), u_input.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2754f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1899f, -1453f, -1482f) * vec3<f32>(-1318f, 2286f, -503f))), vec3<f32>(1f, 1f, 1f)))));
    global0 = vec4<u32>(func_3(Struct_1(u_input.e.x ^ _wgslsmith_div_i32(-2147483647i, var_0.b.a.a), global0.wyw)).x, ~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(46232u, u_input.a), var_0.b.a.b.xy), global0.ww >> (u_input.b % vec2<u32>(32u))), vec2<u32>(~4294967295u, var_0.b.a.b.x)), reverseBits(_wgslsmith_mod_u32(1u >> (_wgslsmith_mod_u32(0u, 6861u) % 32u), u_input.a & abs(79007u))), countOneBits(0u) << (abs(firstTrailingBit(1u ^ var_0.a.x)) % 32u));
    var var_1 = func_3(Struct_1(~u_input.e.x, ~firstTrailingBit(vec3<u32>(360u, global0.x, var_0.a.x) | u_input.d))).x;
    var var_2 = true;
    global0 = _wgslsmith_sub_vec4_u32(~vec4<u32>(global0.x, var_0.b.a.b.x, _wgslsmith_sub_u32(1u, var_0.b.a.b.x), u_input.a), ~(~(~(~vec4<u32>(19972u, u_input.b.x, 30148u, 1u)))));
    return ~(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(global0.zwy, u_input.c) ^ var_0.b.a.b.x, _wgslsmith_clamp_u32(~0u, reverseBits(global0.x), _wgslsmith_clamp_u32(81958u, var_0.b.a.b.x, 1u)), u_input.d.x));
}

fn func_1() -> vec4<u32> {
    global1 = array<Struct_3, 24>();
    global0 = vec4<u32>(func_2(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), 72798u, abs(4294967295u), ~41928u);
    var var_0 = u_input.e.zxy;
    var var_1 = _wgslsmith_sub_vec2_u32(global0.zx | ~vec2<u32>(countOneBits(u_input.d.x), u_input.b.x), _wgslsmith_mod_vec2_u32(u_input.d.xx, abs(~_wgslsmith_mod_vec2_u32(u_input.d.yx, u_input.b))));
    var_1 = vec2<u32>(4294967295u, ~_wgslsmith_add_u32(~0u, func_2(vec4<bool>(true, true, true, true))));
    return ~vec4<u32>(_wgslsmith_mod_u32(43719u, reverseBits(_wgslsmith_dot_vec2_u32(u_input.b, u_input.c.yz))), 37739u, _wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(global0.xz, vec2<u32>(var_1.x, global0.x)), min(_wgslsmith_sub_u32(var_1.x, u_input.d.x), ~var_1.x)), _wgslsmith_clamp_u32(2910u, _wgslsmith_mult_u32(14034u, _wgslsmith_sub_u32(22100u, var_1.x)), ~(~global0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(22524u | _wgslsmith_mod_u32(13949u, ~max(1u, 4294967295u & global0.x)), 24u)];
    global1 = array<Struct_3, 24>();
    global0 = _wgslsmith_clamp_vec4_u32(~(~max(~vec4<u32>(global0.x, u_input.a, 1u, u_input.b.x), min(vec4<u32>(0u, 5134u, var_0.b.a.b.x, 22857u), vec4<u32>(4294967295u, 1u, 48452u, u_input.a)))), ~vec4<u32>(max(var_0.a.x, ~57799u), global0.x, u_input.d.x, _wgslsmith_mod_u32(12742u, 5287u)), _wgslsmith_mod_vec4_u32(vec4<u32>(~(~global0.x), ~_wgslsmith_sub_u32(2812u, global0.x), u_input.d.x, ~90718u), func_1()));
    var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(var_0.b.a.b, ~var_0.a << ((global0.xyw >> (vec3<u32>(5544u, var_0.a.x, 95322u) % vec3<u32>(32u))) % vec3<u32>(32u))), ~(~u_input.c)), 24u)];
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-219f, _wgslsmith_f_op_f32(547f + -1359f)))) * var_0.b.b)));
    var_0 = global1[_wgslsmith_index_u32(var_0.a.x, 24u)];
    let var_2 = u_input.d.xx;
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.e.zzw), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_0.c.x, var_0.c.x), _wgslsmith_f_op_f32(var_0.b.b * var_0.c.x), var_0.c.x, 1035f)) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(802f, -1226f, var_0.c.x, var_0.c.x)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.c.x, -1841f, var_0.c.x, 393f)))))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1566f + -150f), 300f, _wgslsmith_f_op_f32(var_0.c.x - var_0.b.b), _wgslsmith_f_op_f32(294f + var_0.b.b)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, var_0.c.x, var_0.c.x, -446f)))))), ~vec4<u32>(2661u, 4294967295u, _wgslsmith_div_u32(u_input.d.x, 61367u), 19398u));
}

