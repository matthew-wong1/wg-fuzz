struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30>;

var<private> global1: vec4<i32>;

var<private> global2: Struct_4;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: vec3<u32>) -> vec3<f32> {
    var var_0 = 1u;
    var var_1 = Struct_2(arg_2.x > 2047u, ~vec4<u32>(64727u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, 0u, 8564u, 0u), vec4<u32>(56720u, 0u, arg_2.x, arg_2.x)), arg_2.x & arg_2.x, ~arg_2.x) ^ vec4<u32>(arg_2.x, 0u, select(arg_2.x, ~44415u, false), 21582u));
    var var_2 = arg_0;
    var var_3 = Struct_4(global2.a);
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), arg_0, -1837f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-258f, -1007f, 1176f) + vec3<f32>(-585f, arg_0, 1440f)))));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>) -> vec4<i32> {
    global1 = abs(-vec4<i32>(~(u_input.a | arg_0.b), -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(arg_0.c.b.x, 30u)], -20262i, -19106i), vec3<i32>(2147483647i, u_input.a, 28552i)), -(~23426i)));
    var var_0 = Struct_4(Struct_1(!vec4<bool>(true, true, !global2.a.a.x, all(global2.a.a.wwy))));
    var var_1 = Struct_4(global2.a);
    var var_2 = Struct_4(Struct_1(var_1.a.a));
    let var_3 = ~arg_0.c.b.ww;
    return abs(~vec4<i32>(countOneBits(_wgslsmith_mod_i32(arg_0.b, 2147483647i)), 1i, 1i, (arg_0.b >> (var_3.x % 32u)) << (abs(var_3.x) % 32u)));
}

fn func_2() -> bool {
    global1 = min(func_4(Struct_3(all(vec4<bool>(true, true, false, true)), ~countOneBits(0i), Struct_2(global2.a.a.x, _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 108559u, 4294967295u), vec4<u32>(16930u, 74241u, 16544u, 39764u), vec4<u32>(29250u, 1u, 1u, 0u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(502f, vec2<bool>(true, global2.a.a.x), vec3<u32>(2320u, 1u, 0u))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1000f, 572f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1990f, -390f, 1000f)) + _wgslsmith_div_vec3_f32(vec3<f32>(-823f, -956f, 2177f), vec3<f32>(-891f, -172f, 775f))))), _wgslsmith_mod_vec4_i32(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, global1.x, 28538i, global0[_wgslsmith_index_u32(49477u, 30u)]) & vec4<i32>(2147483647i, -18060i, 2147483647i, u_input.a), vec4<i32>(34416i, 2147483647i, global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(0u, 30u)]))), reverseBits(vec4<i32>(-2147483647i, 45615i, u_input.a, -1i) ^ max(vec4<i32>(35025i, global1.x, global0[_wgslsmith_index_u32(41921u, 30u)], -2147483647i), vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 30u)], u_input.a, global1.x, 0i)))));
    let var_0 = false;
    var var_1 = global2.a;
    global1 = -vec4<i32>(global0[_wgslsmith_index_u32(75208u, 30u)], ~(-2147483647i), func_4(Struct_3(true, global0[_wgslsmith_index_u32(~4294967295u, 30u)], Struct_2(true, vec4<u32>(4294967295u, 0u, 64745u, 17500u))), vec3<f32>(_wgslsmith_div_f32(184f, 807f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(ceil(-693f)))).x, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 0i), global1.zy), ~global0[_wgslsmith_index_u32(21277u, 30u)], -8511i, i32(-1i) * -283i), vec4<i32>(_wgslsmith_sub_i32(u_input.a, -1i), ~74017i, 31430i, -6557i)));
    var var_2 = select(var_1.a, select(var_1.a, select(vec4<bool>(true, true, !var_1.a.x, var_1.a.x || false), var_1.a, any(select(vec2<bool>(true, false), var_1.a.zy, false))), vec4<bool>(var_0, true, global2.a.a.x, all(select(vec2<bool>(false, var_0), var_1.a.zy, vec2<bool>(true, true))))), global2.a.a);
    return false;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_4) -> vec3<u32> {
    var var_0 = Struct_1(select(vec4<bool>(!(arg_1.a.a.x || false), all(vec2<bool>(true, true)) & any(global2.a.a.zyw), false & any(vec3<bool>(false, true, true)), any(vec3<bool>(arg_1.a.a.x, arg_1.a.a.x, false))), vec4<bool>(func_2(), arg_1.a.a.x, true, any(!vec3<bool>(true, true, arg_1.a.a.x))), !arg_1.a.a));
    var var_1 = Struct_2(true, abs(vec4<u32>(~0u, 11352u, 4294967295u, 1u)) ^ select(~vec4<u32>(4294967295u, 24629u, 4294967295u, 0u), _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, 4294967295u, 0u), vec4<u32>(53526u, 2183u, 1u, 4294967295u)), abs(vec4<u32>(0u, 72609u, 1u, 24605u))), func_2()));
    var var_2 = arg_1;
    let var_3 = Struct_2(any(select(vec4<bool>(false, true, global2.a.a.x, false), var_0.a, select(!vec4<bool>(false, var_0.a.x, global2.a.a.x, var_2.a.a.x), arg_1.a.a, !global2.a.a.x))), var_1.b);
    var var_4 = !var_2.a.a.x;
    return vec3<u32>(~var_3.b.x, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(var_1.b.x, var_3.b.x, 1u, 72711u)), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(1570u, 52668u, 0u, var_1.b.x), vec4<u32>(var_1.b.x, var_1.b.x, 109940u, 4294967295u)))), 90664u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<u32>(1u, 1u, 1u) & firstTrailingBit(~(func_1(global1.wz, Struct_4(global2.a)) | ~vec3<u32>(10165u, 11315u, 1u)));
    var var_1 = var_0.x;
    var var_2 = global2.a.a.x;
    let var_3 = !global2.a.a.yw;
    var var_4 = var_0.x;
    var var_5 = 10625u;
    let var_6 = select(!select(!(!global2.a.a.xzx), vec3<bool>(var_3.x && var_3.x, true, any(global2.a.a)), !(!vec3<bool>(true, true, global2.a.a.x))), !global2.a.a.yzw, vec3<bool>(true, !(u_input.a > -26085i), var_3.x));
    global2 = Struct_4(Struct_1(global2.a.a));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(max(global1.zww, global1.yyz)), -862f, 1i & _wgslsmith_add_i32(countOneBits(countOneBits(1i)), global1.x), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(trunc(517f)), 1039f, -709f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, -453f)))))));
}

