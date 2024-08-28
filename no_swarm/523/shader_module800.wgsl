struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<f32>(2770f, -1035f, 689f, 472f), vec4<i32>(-1i, 49413i, 32470i, 1i));

var<private> global1: array<u32, 20> = array<u32, 20>(0u, 0u, 39148u, 47693u, 53489u, 47083u, 4294967295u, 0u, 0u, 35565u, 4294967295u, 1u, 27210u, 0u, 4294967295u, 3818u, 14901u, 25029u, 20612u, 0u);

var<private> global2: vec3<u32> = vec3<u32>(8140u, 0u, 46770u);

var<private> global3: Struct_4;

var<private> global4: i32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32) -> vec2<bool> {
    let var_0 = select(select(vec3<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), all(vec3<bool>(true, true, true)), all(vec4<bool>(true, false, true, false))), vec3<bool>(true, true, true), !(all(vec2<bool>(true, false)) || true)), select(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true)), vec3<bool>(true, ~1i < _wgslsmith_mod_i32(-30195i, global0.b.x), all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)))), !(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)))), true);
    let var_1 = reverseBits(global2.x);
    global3 = Struct_4(global3.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(450f, -1039f), _wgslsmith_f_op_vec2_f32(-global0.a.zw)))));
    var var_2 = Struct_1(!select(vec4<bool>(false & var_0.x, !var_0.x, var_0.x, true), !(!vec4<bool>(true, var_0.x, var_0.x, var_0.x)), select(vec4<bool>(true, true, var_0.x, true), !vec4<bool>(true, true, true, var_0.x), !vec4<bool>(var_0.x, false, true, var_0.x))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0, _wgslsmith_f_op_f32(global0.a.x - -1646f), _wgslsmith_f_op_f32(floor(arg_0)), _wgslsmith_div_f32(arg_0, global3.a.a.x)))))));
    let var_3 = Struct_5(Struct_1(vec4<bool>(true, all(!vec4<bool>(true, true, var_2.a.x, var_2.a.x)), all(var_2.a), (false && var_2.a.x) == var_2.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(var_2.b.x)), _wgslsmith_f_op_f32(trunc(1064f)), _wgslsmith_f_op_f32(f32(-1f) * -919f), _wgslsmith_f_op_f32(f32(-1f) * -449f)) - var_2.b)), -2147483647i);
    return select(vec2<bool>(var_0.x, select(any(!var_2.a), any(!vec2<bool>(var_2.a.x, var_0.x)), var_3.a.a.x)), select(var_3.a.a.xx, !var_3.a.a.zw, !vec2<bool>(true, var_3.a.a.x)), var_3.a.a.x == true);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2) -> i32 {
    let var_0 = arg_1.c.a;
    let var_1 = arg_1;
    global4 = ~global0.b.x;
    global4 = -(i32(-1i) * -10435i);
    var var_2 = Struct_5(Struct_1(!vec4<bool>(!var_0.x, any(var_0.zxx), !var_1.b.a.x, true && arg_0.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(210f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x + var_1.b.b.x) + _wgslsmith_f_op_f32(exp2(global3.a.a.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.e.x))), arg_1.a.b.x)), -1i);
    return i32(-1i) * -_wgslsmith_mult_i32(9090i, _wgslsmith_sub_i32(firstLeadingBit(global0.b.x), reverseBits(17799i)));
}

fn func_2() -> Struct_1 {
    global4 = _wgslsmith_mult_i32(i32(-1i) * -1i, func_4(vec2<bool>(-814f <= _wgslsmith_f_op_f32(-global0.a.x), any(func_3(global3.a.a.x))), Struct_2(Struct_1(vec4<bool>(false, true, false, false), vec4<f32>(global3.a.a.x, global3.a.a.x, global0.a.x, -2133f)), Struct_1(vec4<bool>(true, true, true, true), vec4<f32>(global0.a.x, global3.b.x, global3.b.x, global0.a.x)), Struct_1(vec4<bool>(true, false, false, false), _wgslsmith_f_op_vec4_f32(abs(global0.a))), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.b.x, 1i, u_input.d.x), vec3<i32>(2147483647i, 2147483647i, 1i)), i32(-1i) * -15881i, ~(-4979i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-797f, -1577f, -1186f), vec3<f32>(613f, global0.a.x, -1778f))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-2258f, 1000f, -266f)))))));
    var var_0 = global0.a.x >= _wgslsmith_f_op_f32(global3.b.x * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(591f * global0.a.x), global3.b.x) + global0.a.x));
    var var_1 = Struct_1(select(!vec4<bool>(true, any(vec4<bool>(false, false, true, true)), func_3(global3.a.a.x).x, true), vec4<bool>(true, all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false))), !(global1[_wgslsmith_index_u32(u_input.a.x, 20u)] == global1[_wgslsmith_index_u32(global2.x, 20u)]), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), global0.a.x < _wgslsmith_f_op_f32(abs(global3.b.x)))), _wgslsmith_div_vec4_f32(global3.a.a, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, global3.a.a.x, global3.a.a.x, -865f))))));
    global2 = reverseBits(u_input.a);
    var var_2 = ~(~(vec2<u32>(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(4294967295u, 20u)], 65026u), global1[_wgslsmith_index_u32(global2.x, 20u)] ^ 0u) ^ ~select(u_input.a.xz, u_input.a.xx, var_1.a.x)));
    return Struct_1(!(!var_1.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, -600f, 719f, -485f) + vec4<f32>(var_1.b.x, 159f, global3.a.a.x, -934f)) - global3.a.a) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, global0.a.x, 241f, global3.b.x) + global3.a.a))))));
}

fn func_1(arg_0: Struct_4, arg_1: u32, arg_2: Struct_5, arg_3: vec2<f32>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(1576f, -1000f, arg_2.a.a.x)))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global3.a.a.x * 1711f), -422f))), -106f)) > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.x, global3.a.a.x));
    var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1983f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1391f, 249f)) + _wgslsmith_f_op_f32(step(-1541f, global0.a.x)))))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) - -324f);
    var var_2 = ~_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(62878u, _wgslsmith_sub_u32(91902u, firstLeadingBit(global1[_wgslsmith_index_u32(arg_1, 20u)]))), 20u)], ~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(global2.x, 1u, arg_1, global2.x), vec4<u32>(global2.x, 0u, u_input.a.x, global2.x) & vec4<u32>(23565u, 2768u, 0u, arg_1)), 20u)], ((1u << (global1[_wgslsmith_index_u32(global2.x, 20u)] % 32u)) << (arg_1 % 32u)) | u_input.a.x);
    let var_3 = Struct_5(func_2(), u_input.b);
    return vec4<u32>(global1[_wgslsmith_index_u32(global2.x, 20u)], firstTrailingBit(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, 60519u), u_input.a.yy)) & _wgslsmith_mult_u32(~4294967295u, max(arg_1, 35466u))), _wgslsmith_mod_u32(1u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(~global2.x, ~arg_1), 1u)), abs(_wgslsmith_mult_u32((30650u << (global1[_wgslsmith_index_u32(arg_1, 20u)] % 32u)) | global1[_wgslsmith_index_u32(~0u, 20u)], ~u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    var var_1 = ~(~(~func_1(Struct_4(global3.a, vec2<f32>(global0.a.x, global0.a.x)), u_input.a.x, Struct_5(Struct_1(vec4<bool>(true, false, false, false), vec4<f32>(377f, global3.a.a.x, 545f, global0.a.x)), 1i), global0.a.xx))) ^ ~vec4<u32>(global2.x, 10623u, 1u, ~(~1u));
    global2 = ~_wgslsmith_mod_vec3_u32(~vec3<u32>(global2.x, 34228u, ~var_1.x), min(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0, var_1.x, u_input.a.x), countOneBits(vec3<u32>(u_input.a.x, global2.x, 4294967295u))), var_1.zxy));
    global2 = reverseBits(var_1.yzz | _wgslsmith_mod_vec3_u32(vec3<u32>(min(4294967295u, 32431u), 52621u, ~var_1.x), max(var_1.xyy, u_input.a)));
    let var_2 = true;
    let var_3 = !(!vec4<bool>(var_2, func_2().a.x, true, _wgslsmith_f_op_f32(-global3.a.a.x) >= _wgslsmith_f_op_f32(global0.a.x + global0.a.x)));
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec4<u32>(~20835u, u_input.a.x, u_input.a.x, ~u_input.a.x) >> ((vec4<u32>(39180u, global2.x, 0u, 0u) << (_wgslsmith_add_vec4_u32(vec4<u32>(global2.x, 0u, 40987u, 0u), vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(173u, 20u)], 0u, var_1.x)) % vec4<u32>(32u))) % vec4<u32>(32u))), var_1.zzw & _wgslsmith_sub_vec3_u32(~vec3<u32>(15581u, global1[_wgslsmith_index_u32(30213u, 20u)], 33143u) >> (vec3<u32>(var_0, global2.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 20u)], 20u)], 20u)]) % vec3<u32>(32u)), firstLeadingBit(u_input.a & var_1.xzx)));
}

