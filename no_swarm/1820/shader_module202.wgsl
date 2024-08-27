struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15>;

var<private> global1: array<Struct_1, 1>;

var<private> global2: vec4<i32>;

var<private> global3: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec2<bool>(true, true), vec3<f32>(2743f, 542f, -284f), 75817u, -1i), Struct_1(vec2<bool>(false, false), vec3<f32>(569f, -413f, -1000f), 4294967295u, 1i), Struct_1(vec2<bool>(false, false), vec3<f32>(951f, 445f, 964f), 4294967295u, 2147483647i), Struct_1(vec2<bool>(true, true), vec3<f32>(680f, 1000f, -570f), 0u, -1i), Struct_1(vec2<bool>(false, false), vec3<f32>(525f, -813f, -490f), 4294967295u, 1500i));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    let var_0 = _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.a, 2147483647i, global2.x) ^ vec4<i32>(global2.x, u_input.a, -4998i, global2.x), vec4<i32>(u_input.a, 63176i, 1i, u_input.a)), ~_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(1i, 22462i, 2147483647i, global2.x)), vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a))), vec4<i32>(_wgslsmith_dot_vec2_i32(global2.xw, global2.yw), (i32(-1i) * -2147483647i) << (select(countOneBits(11046u), global0[_wgslsmith_index_u32(63318u << (arg_0.c % 32u), 15u)], all(vec4<bool>(true, arg_0.a.x, true, arg_0.a.x))) % 32u), countOneBits(_wgslsmith_mult_i32(i32(-1i) * -1i, countOneBits(arg_0.d))), 2147483647i));
    let var_1 = vec3<i32>(select(35023i, reverseBits(i32(-1i) * -17931i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-196f - arg_0.b.x) - _wgslsmith_f_op_f32(sign(arg_0.b.x))) < arg_0.b.x), _wgslsmith_dot_vec3_i32(global2.zyx, global2.zzx), arg_0.d);
    var var_2 = _wgslsmith_mod_vec4_i32(vec4<i32>(global2.x, -(var_1.x & _wgslsmith_dot_vec2_i32(vec2<i32>(20193i, var_0.x), vec2<i32>(arg_0.d, var_0.x))), 0i, _wgslsmith_dot_vec4_i32(~var_0, _wgslsmith_mult_vec4_i32(var_0 << (vec4<u32>(4294967295u, arg_0.c, 32579u, arg_0.c) % vec4<u32>(32u)), ~vec4<i32>(global2.x, u_input.a, 2147483647i, -9512i)))), vec4<i32>(-2147483647i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(abs(0i), -var_1.x), ~0i), _wgslsmith_add_i32(var_0.x, min(~40573i, -2147483647i)), 39239i));
    var var_3 = ~(~0i);
    global1 = array<Struct_1, 1>();
    return _wgslsmith_mult_vec4_i32(var_0, var_0);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: vec2<f32>) -> vec3<f32> {
    global2 = func_3(global1[_wgslsmith_index_u32(90954u, 1u)]) | _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(firstTrailingBit(1i), _wgslsmith_sub_i32(33642i, u_input.a), global2.x & 5298i), u_input.a >> (_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(1u, 15u)], arg_1) % 32u), u_input.a, arg_0.d), vec4<i32>(-u_input.a, ~u_input.a, abs(-1i), 2147483647i) ^ ~(-vec4<i32>(u_input.a, u_input.a, 13383i, -2147483647i)), select(vec4<i32>(_wgslsmith_clamp_i32(-1i, global2.x, 16226i), _wgslsmith_add_i32(1i, 16779i), u_input.a, func_3(arg_0).x), _wgslsmith_add_vec4_i32(-vec4<i32>(-1i, -43417i, global2.x, u_input.a), ~vec4<i32>(-35867i, u_input.a, 30961i, 0i)), !vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, false)));
    global0 = array<u32, 15>();
    var var_0 = vec2<u32>(~(_wgslsmith_mod_u32(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1, 15u)], 15u)]) >> (~arg_0.c % 32u)) >> (arg_1 % 32u), 29544u);
    var var_1 = Struct_1(select(vec2<bool>(select(!arg_0.a.x, true, any(vec4<bool>(false, false, true, false))), false), vec2<bool>(all(arg_0.a) || arg_0.a.x, arg_0.a.x), true), arg_0.b, countOneBits(~(~(~global0[_wgslsmith_index_u32(6912u, 15u)]))), arg_0.d);
    global3 = array<Struct_1, 5>();
    return var_1.b;
}

fn func_4(arg_0: vec3<f32>, arg_1: u32, arg_2: u32, arg_3: f32) -> vec2<f32> {
    global2 = _wgslsmith_div_vec4_i32(min(vec4<i32>(_wgslsmith_add_i32(global2.x | global2.x, -global2.x), u_input.a << (~global0[_wgslsmith_index_u32(0u, 15u)] % 32u), _wgslsmith_sub_i32(global2.x, select(u_input.a, global2.x, true)), -2147483647i), (select(vec4<i32>(global2.x, -1i, u_input.a, 3450i), vec4<i32>(25879i, 19331i, -33972i, 1i), vec4<bool>(false, false, true, true)) | abs(vec4<i32>(-9472i, 0i, global2.x, u_input.a))) >> (~(vec4<u32>(global0[_wgslsmith_index_u32(15891u, 15u)], 1u, 4294967295u, arg_1) & vec4<u32>(arg_2, global0[_wgslsmith_index_u32(0u, 15u)], arg_1, 0u)) % vec4<u32>(32u))), firstTrailingBit(-vec4<i32>(-u_input.a, _wgslsmith_div_i32(global2.x, -1i), ~u_input.a, 2147483647i)));
    global3 = array<Struct_1, 5>();
    global2 = _wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(-11130i, global2.x, u_input.a, 9473i)), countOneBits(vec4<i32>(global2.x, u_input.a, global2.x, -12753i))), vec4<i32>(-14400i, ~57934i, -28191i, ~(~1i)));
    let var_0 = !(!select(true, any(vec3<bool>(true, false, true)), false));
    var var_1 = Struct_1(!select(select(select(vec2<bool>(var_0, false), vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0)), !vec2<bool>(var_0, true), var_0 && var_0), vec2<bool>(false, select(false, false, false)), vec2<bool>(true, true)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, arg_0.x) - arg_0.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(min(arg_0.x, arg_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_0.x, -564f), arg_0.x, var_0)))), ~54639u, ~func_3(global1[_wgslsmith_index_u32(firstTrailingBit(reverseBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(36412u, 15u)], 15u)])), 1u)]).x);
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1111f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-781f * _wgslsmith_f_op_f32(sign(var_1.b.x))) - -1152f));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec2<bool>) -> vec2<i32> {
    global0 = array<u32, 15>();
    global3 = array<Struct_1, 5>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) - -486f))), 1327f));
    var var_1 = -1i;
    var var_2 = countOneBits(_wgslsmith_sub_i32(~0i, -2147483647i << (~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.c, 15u)], 15u)]) % 32u)));
    return global2.wz;
}

fn func_1(arg_0: i32, arg_1: vec4<f32>, arg_2: f32, arg_3: vec2<i32>) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(0u, 1u)];
    var_0 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, var_0.c), 5u)];
    global0 = array<u32, 15>();
    let var_1 = func_5(Struct_1(var_0.a, vec3<f32>(arg_1.x, _wgslsmith_div_f32(_wgslsmith_div_f32(582f, arg_1.x), arg_1.x), arg_1.x), ~38720u, 1i), _wgslsmith_f_op_vec2_f32(arg_1.yw + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_vec3_f32(func_2(global1[_wgslsmith_index_u32(var_0.c, 1u)], var_0.c, -155f, vec2<f32>(1000f, arg_1.x))), ~var_0.c, ~1u, -1472f)))), vec2<bool>(any(select(vec4<bool>(true, var_0.a.x, false, var_0.a.x), select(vec4<bool>(true, false, false, var_0.a.x), vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(true, var_0.a.x, false, var_0.a.x)), select(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, true, var_0.a.x), vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x)))), all(select(!var_0.a, !vec2<bool>(var_0.a.x, false), false))));
    let var_2 = abs(~abs(vec4<u32>(var_0.c, var_0.c, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 15u)], 15u)]) << ((vec4<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 15u)], 15u)], 16394u, 11490u) << (vec4<u32>(1u, 4294967295u, 1u, global0[_wgslsmith_index_u32(1u, 15u)]) % vec4<u32>(32u))) % vec4<u32>(32u))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2275f))), _wgslsmith_f_op_f32(-1f)))), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(max(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(reverseBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12373u, 15u)], 15u)]), 1u), 15u)], 1u, 0u), _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(9999u, 15u)]), vec3<u32>(4294967295u, 0u, 1u)), ~vec3<u32>(1u, global0[_wgslsmith_index_u32(1u, 15u)], 2227u)) | reverseBits(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23455u, 15u)], 15u)], 15u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 15u)], 15u)], 59435u))), 31205u), 1u)];
    global0 = array<u32, 15>();
    global0 = array<u32, 15>();
    var var_1 = Struct_1(!(!(!(!vec2<bool>(var_0.a.x, var_0.a.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(func_1(u_input.a, vec4<f32>(var_0.b.x, 1221f, 1449f, var_0.b.x), 1291f, global2.xw)), var_0.b.x, 424f)))), abs(~(~firstLeadingBit(var_0.c))), var_0.d);
    var_1 = Struct_1(vec2<bool>(var_0.a.x, true && any(vec3<bool>(true, true, true))), vec3<f32>(var_1.b.x, var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.x, -1347f)))), 89499u << (countOneBits(_wgslsmith_div_u32(var_0.c, 11636u)) % 32u), countOneBits(-28013i));
    var var_2 = select(var_0.a, var_0.a, !vec2<bool>(true, var_1.a.x));
    var var_3 = Struct_1(vec2<bool>(all(!vec4<bool>(false, true, var_0.a.x, false)) | (false && (0u > global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.c, 15u)], 15u)])), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(1u, var_0.c), _wgslsmith_mult_u32(var_1.c, var_1.c), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 15u)], 15u)]) >= 0u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.b) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.b.x, var_1.b.x, 1030f), var_1.b))))), ~var_1.c & _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(var_0.c, 15u)], global0[_wgslsmith_index_u32(0u, 15u)], 0u), vec4<u32>(global0[_wgslsmith_index_u32(var_1.c, 15u)], var_0.c, var_1.c, var_1.c)), 15u)], _wgslsmith_add_u32(var_0.c ^ var_1.c, ~10513u)), var_0.d);
    var var_4 = vec3<u32>(max(~(~1u), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(0u, var_1.c, 60542u, 0u)) >> ((vec4<u32>(42597u, 4294967295u, 0u, 1u) ^ vec4<u32>(103965u, var_0.c, var_0.c, global0[_wgslsmith_index_u32(7301u, 15u)])) % vec4<u32>(32u)), select(vec4<u32>(var_1.c, 1u, 24413u, 68962u), ~vec4<u32>(0u, 26843u, var_1.c, var_3.c), all(vec3<bool>(var_1.a.x, false, var_0.a.x))))), 1u, _wgslsmith_sub_u32(countOneBits(~_wgslsmith_div_u32(global0[_wgslsmith_index_u32(var_3.c, 15u)], 0u)), select(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c, 54727u, var_0.c, 35976u), ~vec4<u32>(4294967295u, var_1.c, var_3.c, 0u)), firstLeadingBit(var_3.c), !var_3.a.x)));
    var var_5 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_vec3_f32(func_2(Struct_1(select(var_0.a, vec2<bool>(true, false), var_3.a), _wgslsmith_div_vec3_f32(vec3<f32>(var_3.b.x, var_0.b.x, -1362f), var_1.b), 4294967295u & global0[_wgslsmith_index_u32(112003u, 15u)], abs(var_3.d)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(36128u, 15u)], 15u)], 717f, _wgslsmith_f_op_vec2_f32(sign(var_3.b.zy)))).x, var_0.b.x, 966f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -913f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~16910u, reverseBits(~vec3<u32>(58022u, min(61578u, 4294967295u), var_0.c)));
}

