struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: i32,
    d: vec4<u32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: vec3<u32> = vec3<u32>(20122u, 61332u, 4294967295u);

var<private> global2: array<f32, 19> = array<f32, 19>(-417f, 527f, -2178f, 936f, 1140f, -1000f, 280f, -1114f, -744f, 184f, -750f, -550f, -341f, -397f, 519f, 180f, -559f, -342f, -1125f);

var<private> global3: vec4<u32> = vec4<u32>(19462u, 1u, 0u, 29577u);

var<private> global4: Struct_3 = Struct_3(vec4<u32>(2930u, 0u, 1u, 0u), 1565f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>) -> vec3<u32> {
    global2 = array<f32, 19>();
    var var_0 = Struct_2(!global0.zy, Struct_1(1i), Struct_1(0i), Struct_1(-9583i), vec4<f32>(-355f, -498f, _wgslsmith_f_op_f32(f32(-1f) * -852f), 587f));
    let var_1 = arg_0 < ~(~(countOneBits(global3.x) << (44850u % 32u)));
    var_0 = Struct_2(!(!vec2<bool>(true, all(global0.zy))), Struct_1(_wgslsmith_add_i32(-u_input.a, 2147483647i)), var_0.c, Struct_1(1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1758f, 692f, 1020f, -1395f)) + _wgslsmith_f_op_vec4_f32(var_0.e - vec4<f32>(global2[_wgslsmith_index_u32(287u, 19u)], var_0.e.x, global2[_wgslsmith_index_u32(1u, 19u)], 895f)))))));
    global3 = firstLeadingBit(~global4.a);
    return abs(vec3<u32>(23809u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u), global3.yz), ~u_input.b) ^ vec3<u32>(global4.a.x, ~_wgslsmith_div_u32(0u, 685u), ~76502u));
}

fn func_2(arg_0: f32, arg_1: u32) -> Struct_1 {
    global4 = Struct_3(_wgslsmith_mod_vec4_u32(global4.a, global4.a), global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_mod_u32(global4.a.x, 1u & (arg_1 | global1.x))), 19u)]);
    let var_0 = Struct_4(firstLeadingBit(~(~func_3(41892u, vec4<i32>(u_input.a, 1i, u_input.c, u_input.e)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1191f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, global4.b, false))), arg_0), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1150f, _wgslsmith_f_op_f32(global4.b * arg_0), _wgslsmith_f_op_f32(2399f - global2[_wgslsmith_index_u32(9935u, 19u)])))), vec3<bool>(!(!global0.x), u_input.a == -1210i, all(select(global0.xy, global0.xy, true))))), 40066i, vec4<u32>(21181u, ~0u, ~global4.a.x, countOneBits(_wgslsmith_mult_u32(0u, global1.x))) | global4.a, !vec4<bool>(any(vec4<bool>(global0.x, false, true, false)) && global0.x, true, true, true));
    global0 = select(var_0.e.zxy, var_0.e.zzz, true);
    var var_1 = select(_wgslsmith_mult_vec2_u32(var_0.a.yz, firstTrailingBit(global4.a.zy)), global4.a.zx, vec2<bool>(global0.x || global0.x, global0.x));
    let var_2 = Struct_4(vec3<u32>(var_0.d.x, 57543u, 1u), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * var_0.b.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(global4.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) * _wgslsmith_f_op_f32(round(745f))))), -1i, reverseBits(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(~var_0.d, ~global4.a, vec4<u32>(1u, global3.x, global3.x, var_0.a.x) | var_0.d), countOneBits(max(vec4<u32>(31539u, global1.x, arg_1, 5744u), global4.a)))), vec4<bool>(global0.x, var_0.e.x, global0.x, false));
    return Struct_1(var_0.c);
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = !(!select(select(!vec3<bool>(global0.x, true, global0.x), select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(global0.x, false, false), global0.x), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), !(!vec3<bool>(global0.x, true, global0.x))));
    global0 = vec3<bool>(!(var_0.x && all(select(vec4<bool>(var_0.x, var_0.x, global0.x, var_0.x), vec4<bool>(global0.x, global0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, false, false, var_0.x)))), any(!vec4<bool>(global0.x, true, 0u > global1.x, var_0.x)), true);
    var var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-616f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(500f)), _wgslsmith_f_op_f32(ceil(global4.b)))))), 57520u);
    var var_2 = u_input.c;
    let var_3 = true;
    return Struct_1(~_wgslsmith_mult_i32(abs(firstLeadingBit(-2147483647i)), -u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~firstLeadingBit(global4.a.yxx) >> (firstLeadingBit(vec3<u32>(~12332u, select(31223u, global1.x, any(vec3<bool>(global0.x, true, global0.x))), 4294967295u)) % vec3<u32>(32u));
    var var_0 = Struct_2(vec2<bool>(true, !global0.x), func_1(vec4<i32>(_wgslsmith_mult_i32(u_input.e, i32(-1i) * -2147483647i), reverseBits(~(-76353i)), _wgslsmith_mod_i32(u_input.a, u_input.c) ^ _wgslsmith_div_i32(1i, u_input.e), _wgslsmith_add_i32(-11693i, ~(-1i)))), Struct_1(u_input.e), func_2(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~(73290u >> (global1.x % 32u)), 19u)]), 4294967295u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -407f, global4.b, global4.b)), vec4<f32>(global2[_wgslsmith_index_u32(0u, 19u)], 1166f, global4.b, global2[_wgslsmith_index_u32(87765u, 19u)]))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2[_wgslsmith_index_u32(u_input.b, 19u)], global4.b, 356f, global4.b)))))));
    var var_1 = ~_wgslsmith_sub_vec2_u32(firstTrailingBit(max(global1.xz | global1.zx, select(global3.yy, vec2<u32>(91297u, global1.x), global0.x))), _wgslsmith_div_vec2_u32(~_wgslsmith_mod_vec2_u32(global4.a.xw, vec2<u32>(1u, global3.x)), ~global1.xy));
    var_1 = _wgslsmith_add_vec2_u32(select(global4.a.wy, _wgslsmith_div_vec2_u32(vec2<u32>(abs(global3.x), u_input.d & 1u), global3.yy), global0.x), _wgslsmith_sub_vec2_u32(~_wgslsmith_div_vec2_u32(global3.ww, vec2<u32>(5527u, global1.x)), ~vec2<u32>(select(global3.x, 4294967295u, true), abs(0u))));
    var var_2 = 20259i;
    let x = u_input.a;
    s_output = StorageBuffer(global4.a.xxz, vec4<u32>(~0u, _wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec2_u32(global1.xz, global1.xy) << (_wgslsmith_dot_vec3_u32(vec3<u32>(26470u, global4.a.x, 0u), global3.wwy) % 32u)), 2005u, 1u), var_0.e, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-1596f * global2[_wgslsmith_index_u32(global3.x, 19u)]), global2[_wgslsmith_index_u32(~1u, 19u)], 511f, -187f)))));
}

