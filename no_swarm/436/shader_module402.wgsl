struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: bool,
    c: vec3<u32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17>;

var<private> global1: array<vec3<bool>, 12> = array<vec3<bool>, 12>(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true));

var<private> global2: vec3<u32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<f32>, arg_1: bool) -> vec4<i32> {
    global1 = array<vec3<bool>, 12>();
    global1 = array<vec3<bool>, 12>();
    global2 = max(_wgslsmith_mult_vec3_u32(~(~_wgslsmith_add_vec3_u32(vec3<u32>(global2.x, global2.x, 4294967295u), vec3<u32>(global2.x, 1u, 1650u))), _wgslsmith_add_vec3_u32(vec3<u32>(select(0u, global2.x, global0[_wgslsmith_index_u32(global2.x, 17u)]), ~global2.x, ~global2.x), vec3<u32>(0u, min(1u, global2.x), ~global2.x))), _wgslsmith_add_vec3_u32(~vec3<u32>(1u, global2.x | 4294967295u, 0u), vec3<u32>(~_wgslsmith_sub_u32(5848u, global2.x), _wgslsmith_mult_u32(0u, 28870u), ~0u)));
    var var_0 = Struct_4(vec2<bool>(all(select(select(vec3<bool>(false, arg_1, arg_1), global1[_wgslsmith_index_u32(12906u, 12u)], global1[_wgslsmith_index_u32(54567u, 12u)]), select(global1[_wgslsmith_index_u32(global2.x, 12u)], vec3<bool>(true, false, true), global1[_wgslsmith_index_u32(global2.x, 12u)]), arg_1 & false)), any(global1[_wgslsmith_index_u32(global2.x, 12u)])), any(select(vec2<bool>(false, global0[_wgslsmith_index_u32(51165u, 17u)]), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(global2.x, 17u)]), !vec2<bool>(global0[_wgslsmith_index_u32(69965u, 17u)], false))) && !global0[_wgslsmith_index_u32(1u, 17u)], _wgslsmith_mod_vec3_u32(vec3<u32>(15576u, global2.x >> ((0u >> (global2.x % 32u)) % 32u), global2.x), ~(vec3<u32>(1485u, 50085u, global2.x) | (vec3<u32>(global2.x, 4294967295u, global2.x) | vec3<u32>(global2.x, 4294967295u, 1u)))), _wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)));
    let var_1 = global1[_wgslsmith_index_u32(var_0.c.x, 12u)];
    return -u_input.b;
}

fn func_2(arg_0: Struct_1) -> vec2<f32> {
    var var_0 = Struct_3(i32(-1i) * -(~firstTrailingBit(arg_0.b.x)), Struct_2(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.b, min(u_input.b, vec4<i32>(2147483647i, u_input.a, u_input.b.x, 23287i))), (u_input.b << (vec4<u32>(global2.x, 1u, global2.x, 0u) % vec4<u32>(32u))) >> ((vec4<u32>(global2.x, 2858u, global2.x, 0u) >> (vec4<u32>(global2.x, global2.x, global2.x, 0u) % vec4<u32>(32u))) % vec4<u32>(32u)), -(~u_input.b)), ~countOneBits(u_input.b.zww) ^ ~(~u_input.b.wwx), arg_0), Struct_2(countOneBits(countOneBits(func_3(vec3<f32>(1495f, -720f, 1145f), true))), u_input.b.zzz, arg_0));
    let var_1 = Struct_3(-(~(-2147483647i) ^ u_input.b.x), var_0.b, Struct_2(-vec4<i32>(var_0.a, i32(-1i) * -1i, var_0.c.a.x, abs(var_0.b.b.x)), u_input.b.xwz, arg_0));
    global1 = array<vec3<bool>, 12>();
    var_0 = var_1;
    let var_2 = Struct_3(u_input.b.x, var_1.c, Struct_2(abs(max(~vec4<i32>(-2147483647i, arg_0.b.x, -16680i, var_1.b.c.a), ~vec4<i32>(var_0.a, var_1.b.b.x, 0i, var_0.c.b.x))), u_input.b.xxw, var_0.b.c));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-330f, -1310f), vec2<f32>(-884f, 305f))) + vec2<f32>(_wgslsmith_f_op_f32(max(1453f, -799f)), _wgslsmith_f_op_f32(ceil(-1527f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-392f, -2062f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1214f, -420f))));
}

fn func_4(arg_0: vec2<f32>, arg_1: i32, arg_2: vec3<u32>) -> vec2<f32> {
    var var_0 = -(~(~u_input.b.wyz));
    let var_1 = Struct_4(select(vec2<bool>(!(!global0[_wgslsmith_index_u32(4294967295u, 17u)]), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2.x, _wgslsmith_add_u32(arg_2.x, arg_2.x), ~arg_2.x), 17u)]), vec2<bool>(global0[_wgslsmith_index_u32(~0u ^ arg_2.x, 17u)], false), true), false, _wgslsmith_mod_vec3_u32(arg_2, arg_2), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    global0 = array<bool, 17>();
    let var_2 = var_1.d;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-531f, _wgslsmith_f_op_f32(max(arg_0.x, 1250f)))) - vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(var_2 - var_1.d))), _wgslsmith_f_op_f32(var_2 + -268f))));
}

fn func_1(arg_0: Struct_4) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_vec2_f32(func_2(Struct_1(u_input.b.x, countOneBits(-vec2<i32>(-12411i, 1i))))), min(1i, firstTrailingBit(reverseBits(25750i)) ^ abs(u_input.b.x)), _wgslsmith_div_vec3_u32(reverseBits(~arg_0.c), ~select(vec3<u32>(global2.x, 1319u, 53863u), arg_0.c, global1[_wgslsmith_index_u32(37958u, 12u)])) >> ((vec3<u32>(~arg_0.c.x, ~arg_0.c.x, arg_0.c.x) ^ select(vec3<u32>(0u, global2.x, 1663u), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.c.x, 10951u, 1u), arg_0.c), !global1[_wgslsmith_index_u32(1u, 12u)])) % vec3<u32>(32u))));
    let var_1 = 5233i;
    global0 = array<bool, 17>();
    global2 = _wgslsmith_mult_vec3_u32(select(arg_0.c, _wgslsmith_clamp_vec3_u32(~(vec3<u32>(1u, 33623u, 7807u) >> (vec3<u32>(global2.x, 44995u, arg_0.c.x) % vec3<u32>(32u))), arg_0.c, vec3<u32>(~41762u, arg_0.c.x, ~global2.x)), vec3<bool>(true, true, any(select(vec4<bool>(true, arg_0.b, false, false), vec4<bool>(true, true, global0[_wgslsmith_index_u32(arg_0.c.x, 17u)], true), arg_0.b)))), min(~arg_0.c, ~vec3<u32>(arg_0.c.x, 4294967295u, 2034u) & ~(~arg_0.c)));
    let var_2 = Struct_3(~2272i, Struct_2(vec4<i32>(~(-1i), max(1i, var_1), ~countOneBits(-24960i), 45346i), min(_wgslsmith_div_vec3_i32(vec3<i32>(var_1, var_1, 24927i), abs(vec3<i32>(-1i, -2829i, 0i))), -(~u_input.b.yxy)), Struct_1(_wgslsmith_div_i32(u_input.b.x, 0i), firstLeadingBit(u_input.b.zx))), Struct_2(max(vec4<i32>(select(1i, u_input.a, global0[_wgslsmith_index_u32(arg_0.c.x, 17u)]), u_input.a, 2147483647i, _wgslsmith_dot_vec3_i32(u_input.b.wxz, vec3<i32>(u_input.a, var_1, u_input.a))), countOneBits(u_input.b)), -u_input.b.xzz, Struct_1(-u_input.a & -10494i, vec2<i32>(-1i) * -u_input.b.wy)));
    return Struct_4(arg_0.a, !(!global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, global2.x, 6415u, 4294967295u) << (vec4<u32>(6049u, global2.x, 0u, global2.x) % vec4<u32>(32u)), vec4<u32>(1u, 0u, 35811u, arg_0.c.x) | vec4<u32>(0u, global2.x, 4294967295u, arg_0.c.x)), 17u)]), ~_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_div_u32(1u, global2.x), _wgslsmith_clamp_u32(arg_0.c.x, arg_0.c.x, global2.x), 38286u), abs(firstTrailingBit(vec3<u32>(arg_0.c.x, arg_0.c.x, arg_0.c.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-912f + _wgslsmith_f_op_f32(f32(-1f) * -365f)), _wgslsmith_f_op_f32(f32(-1f) * -804f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = Struct_1(~u_input.b.x, u_input.b.zw);
    let var_2 = func_1(Struct_4(select(!vec2<bool>(false, global0[_wgslsmith_index_u32(global2.x, 17u)]), vec2<bool>(global0[_wgslsmith_index_u32(~1u, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)]), vec2<bool>(true && global0[_wgslsmith_index_u32(global2.x, 17u)], any(global1[_wgslsmith_index_u32(12534u, 12u)]))), false, abs(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, global2.x, 43708u), vec3<u32>(global2.x, 20055u, global2.x)), ~vec3<u32>(global2.x, 4294967295u, 4294967295u), vec3<u32>(33932u, global2.x, global2.x))), 1100f));
    global0 = array<bool, 17>();
    var var_3 = _wgslsmith_sub_i32(2147483647i, 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c);
}

