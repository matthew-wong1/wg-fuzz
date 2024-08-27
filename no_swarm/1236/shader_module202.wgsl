struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec3<bool>,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 385f;

var<private> global1: Struct_2 = Struct_2(1u, i32(-2147483648), vec3<bool>(false, true, false), vec2<i32>(0i, -1i), Struct_1(vec2<u32>(4408u, 64322u), false, true, vec4<i32>(-20187i, 22264i, i32(-2147483648), -35338i)));

var<private> global2: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(4294967295u, 0i, vec3<bool>(false, true, true), vec2<i32>(2147483647i, 2147483647i), Struct_1(vec2<u32>(26666u, 4294967295u), false, false, vec4<i32>(-44558i, 48963i, 1i, 0i))), Struct_2(20292u, -41109i, vec3<bool>(false, true, true), vec2<i32>(0i, -1i), Struct_1(vec2<u32>(31742u, 48596u), true, true, vec4<i32>(1i, 0i, 0i, 48209i))), Struct_2(22464u, -1i, vec3<bool>(false, false, false), vec2<i32>(-35720i, 55194i), Struct_1(vec2<u32>(50126u, 16308u), true, true, vec4<i32>(-7671i, 2599i, -41934i, 47942i))), Struct_2(1u, 24500i, vec3<bool>(true, true, true), vec2<i32>(-1i, 1i), Struct_1(vec2<u32>(1u, 40146u), true, false, vec4<i32>(11880i, 1i, -25415i, -1i))), Struct_2(49234u, 6700i, vec3<bool>(true, false, false), vec2<i32>(-6348i, -1i), Struct_1(vec2<u32>(56284u, 19029u), true, true, vec4<i32>(-66079i, 0i, -1i, 32929i))), Struct_2(10382u, 0i, vec3<bool>(true, false, true), vec2<i32>(29743i, -7164i), Struct_1(vec2<u32>(49172u, 0u), true, true, vec4<i32>(-6915i, 3258i, -3362i, -1i))), Struct_2(0u, -3250i, vec3<bool>(true, false, true), vec2<i32>(-1i, -47565i), Struct_1(vec2<u32>(63604u, 1u), false, false, vec4<i32>(47947i, 45907i, 18203i, 17770i))), Struct_2(1u, -29030i, vec3<bool>(false, false, true), vec2<i32>(27151i, 17219i), Struct_1(vec2<u32>(70887u, 0u), true, false, vec4<i32>(0i, 2147483647i, 1i, -5717i))), Struct_2(20024u, -6958i, vec3<bool>(false, true, true), vec2<i32>(1i, -70976i), Struct_1(vec2<u32>(1u, 39060u), true, true, vec4<i32>(35353i, 2147483647i, 16991i, -12652i))), Struct_2(4294967295u, -1i, vec3<bool>(false, false, false), vec2<i32>(-34468i, 18007i), Struct_1(vec2<u32>(74640u, 34948u), true, true, vec4<i32>(43810i, i32(-2147483648), -1i, 2147483647i))), Struct_2(44049u, i32(-2147483648), vec3<bool>(false, true, true), vec2<i32>(-5737i, 0i), Struct_1(vec2<u32>(21904u, 0u), false, false, vec4<i32>(-38523i, 3287i, 1i, -31394i))), Struct_2(0u, 1i, vec3<bool>(false, false, true), vec2<i32>(-1i, -19108i), Struct_1(vec2<u32>(0u, 0u), true, false, vec4<i32>(39132i, 28814i, 11971i, 2147483647i))), Struct_2(0u, 943i, vec3<bool>(true, false, false), vec2<i32>(i32(-2147483648), i32(-2147483648)), Struct_1(vec2<u32>(4294967295u, 4143u), true, true, vec4<i32>(62004i, 0i, 59658i, -29125i))), Struct_2(1u, -22609i, vec3<bool>(false, true, true), vec2<i32>(i32(-2147483648), -14809i), Struct_1(vec2<u32>(4294967295u, 1u), true, true, vec4<i32>(0i, 21712i, -50473i, -61501i))));

var<private> global3: array<vec3<bool>, 12> = array<vec3<bool>, 12>(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32) -> bool {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(376f, _wgslsmith_f_op_f32(sign(-1116f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -890f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -452f)))));
    global3 = array<vec3<bool>, 12>();
    let var_1 = _wgslsmith_mult_i32(0i & u_input.d.x, _wgslsmith_mod_i32(_wgslsmith_div_i32(global1.b, 14751i), u_input.a));
    var var_2 = global1.e;
    var var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-978f))));
    return !any(global1.c.xz);
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_2) -> Struct_3 {
    global1 = Struct_2(global1.a, firstLeadingBit(_wgslsmith_sub_i32(5006i, arg_2.x)), !vec3<bool>(select(func_3(arg_1.d.x), all(arg_3.c), true), arg_3.e.b, arg_3.e.b), _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(arg_1.d.x, 2147483647i), arg_3.d.x), -arg_2), Struct_1(global1.e.a, all(!arg_3.c.yy), true & ((arg_3.a & arg_3.a) > _wgslsmith_mult_u32(u_input.b, u_input.b)), ~vec4<i32>(~1i, ~(-21373i), 1i, _wgslsmith_dot_vec2_i32(u_input.d.zw, vec2<i32>(arg_3.d.x, arg_0)))));
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-1f));
    var var_1 = global1.a;
    global1 = Struct_2(~(~_wgslsmith_dot_vec2_u32(firstLeadingBit(global1.e.a), vec2<u32>(4294967295u, 83696u))), firstTrailingBit(arg_1.d.x), vec3<bool>(false, global1.c.x, global1.e.c), reverseBits(vec2<i32>(arg_1.d.x, -(i32(-1i) * -1i))), arg_3.e);
    return var_0;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3) -> f32 {
    var var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(5723u, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, global1.e.a.x, 4294967295u), ~vec3<u32>(global1.e.a.x, u_input.b, u_input.b)), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.e.a.x, global1.e.a.x, u_input.b, 1u), ~vec4<u32>(global1.e.a.x, 4294967295u, global1.e.a.x, 4294967295u)))), 14u)];
    let var_1 = Struct_3(arg_0.x);
    let var_2 = _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(global1.e.d, -(~(-vec4<i32>(u_input.d.x, u_input.e.x, -2147483647i, -2147483647i))), vec4<i32>(firstLeadingBit(global1.d.x), var_0.d.x, var_0.e.d.x, -1i)), ~(~min(var_0.e.d, u_input.d) >> (vec4<u32>(57151u, var_0.e.a.x, ~36771u, global1.e.a.x & u_input.c) % vec4<u32>(32u))));
    var var_3 = func_2(~u_input.d.x, Struct_1(max(vec2<u32>(u_input.c, var_0.e.a.x), global1.e.a), all(select(vec4<bool>(global1.c.x, global1.e.c, var_0.e.c, global1.e.b), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, global1.e.b))) && all(select(vec3<bool>(false, var_0.c.x, global1.c.x), global3[_wgslsmith_index_u32(var_0.e.a.x, 12u)], global1.c)), global1.c.x, select(u_input.d, vec4<i32>(var_2.x, _wgslsmith_mult_i32(global1.e.d.x, var_0.d.x), -global1.e.d.x, _wgslsmith_add_i32(-1i, -3609i)), func_3(countOneBits(-2147483647i)))), _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(var_0.d, abs(vec2<i32>(1i, -1i))), vec2<i32>(0i, -9984i | global1.e.d.x)) & min(countOneBits(~u_input.e.yy), _wgslsmith_clamp_vec2_i32(abs(var_0.e.d.xx), var_0.e.d.wx & vec2<i32>(var_0.e.d.x, 2147483647i), _wgslsmith_mod_vec2_i32(var_2.xw, u_input.d.zw))), Struct_2(0u, -(~0i | _wgslsmith_mod_i32(global1.e.d.x, global1.e.d.x)), vec3<bool>(any(global1.c.zy), !var_0.e.b | global1.c.x, false), var_0.d, global1.e));
    let var_4 = -((vec3<i32>(-1i) * -(var_0.e.d.xyx ^ vec3<i32>(1i, 1i, -20159i))) & countOneBits(vec3<i32>(14090i, ~var_0.d.x, _wgslsmith_div_i32(-2147483647i, -54177i))));
    return var_1.a;
}

fn func_1() -> vec3<u32> {
    var var_0 = vec4<u32>(u_input.c & 1207u, ~2363u, 1u, 9677u) | vec4<u32>(countOneBits(abs(_wgslsmith_clamp_u32(global1.e.a.x, u_input.b, 94572u))), ~firstTrailingBit(~global1.a), 1u, _wgslsmith_mult_u32(1u, global1.a));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1085f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(714f, 399f)), func_2(u_input.e.x, Struct_1(vec2<u32>(u_input.b, u_input.c), global1.e.c, true, global1.e.d), global1.e.d.xx, Struct_2(u_input.b, u_input.a, global3[_wgslsmith_index_u32(global1.e.a.x, 12u)], vec2<i32>(2147483647i, u_input.d.x), global1.e)))) * 2439f), 619f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, 1f, 1f, 1f)))));
    let var_2 = vec4<bool>(true, !any(vec3<bool>(true, !global1.c.x, !global1.c.x)), false & global1.c.x, true);
    let var_3 = -2201f;
    var_0 = ~vec4<u32>(1u, _wgslsmith_dot_vec2_u32(~var_0.wx, max(var_0.ww, var_0.yy)), ~_wgslsmith_dot_vec2_u32(global1.e.a, global1.e.a), _wgslsmith_dot_vec4_u32(max(vec4<u32>(0u, var_0.x, global1.e.a.x, global1.e.a.x), vec4<u32>(u_input.c, u_input.b, var_0.x, var_0.x)), ~vec4<u32>(u_input.c, 98711u, 1u, global1.a))) ^ _wgslsmith_div_vec4_u32(vec4<u32>(~_wgslsmith_clamp_u32(19067u, var_0.x, 16560u), var_0.x, global1.e.a.x, _wgslsmith_div_u32(var_0.x, ~82377u)), vec4<u32>(var_0.x, 29302u & ~global1.e.a.x, 1u, _wgslsmith_mod_u32(4294967295u, max(global1.e.a.x, global1.a))));
    return ~select(~var_0.wxz, firstLeadingBit(vec3<u32>(9593u >> (var_0.x % 32u), var_0.x, 1u)), (14463i << (reverseBits(u_input.c) % 32u)) <= (global1.b ^ max(-4952i, 30347i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_u32(~((vec3<u32>(27326u, 4294967295u, u_input.c) >> (vec3<u32>(1u, 11531u, u_input.b) % vec3<u32>(32u))) & ~vec3<u32>(27034u, 0u, 4294967295u)) << (~(~vec3<u32>(10709u, global1.e.a.x, 10628u) ^ func_1()) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(abs(~0u), ~u_input.c, countOneBits(select(18511u, 29877u, global1.e.c))), func_1(), vec3<u32>(_wgslsmith_add_u32(global1.a, _wgslsmith_clamp_u32(1u, 4294967295u, global1.e.a.x)), 0u, 0u)));
    let var_1 = Struct_2(global1.e.a.x, -u_input.a, global3[_wgslsmith_index_u32(0u, 12u)], vec2<i32>(-global1.d.x, firstTrailingBit(global1.e.d.x)), global1.e);
    global1 = Struct_2(0u, i32(-1i) * -firstLeadingBit(~2147483647i), global3[_wgslsmith_index_u32(abs(var_1.e.a.x << (var_0 % 32u)), 12u)], u_input.e.yy | vec2<i32>(countOneBits(u_input.a), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(var_1.d, var_1.d), -45319i)), Struct_1(~(vec2<u32>(var_1.e.a.x, 2351u) << (global1.e.a % vec2<u32>(32u))) << (vec2<u32>(max(987u, 4294967295u), _wgslsmith_mult_u32(1u, 40963u)) % vec2<u32>(32u)), !var_1.c.x, !(41292u >= var_1.e.a.x), vec4<i32>(-2147483647i, max(1i, global1.d.x), min(~var_1.d.x, min(0i, -1377i)), abs(1i))));
    var var_2 = abs(~u_input.e.yz);
    let var_3 = Struct_2(~func_1().x, ~(~(-firstLeadingBit(-39050i))), !vec3<bool>(false, false, !global1.c.x), abs(global1.e.d.yw), Struct_1(global1.e.a, true, var_1.e.c, vec4<i32>(_wgslsmith_mod_i32(var_2.x, firstTrailingBit(1i)), -10388i, var_2.x, -_wgslsmith_add_i32(global1.d.x, -2466i))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-784f, -1000f)));
    var var_5 = -select(-vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b, -1i, global1.e.d.x), vec3<i32>(var_3.d.x, var_1.b, var_3.d.x)), 46656i, -2147483647i, 26586i), _wgslsmith_clamp_vec4_i32(firstLeadingBit(countOneBits(vec4<i32>(var_2.x, -61824i, -12523i, -7546i))), -vec4<i32>(var_3.e.d.x, -34073i, var_3.e.d.x, u_input.e.x), vec4<i32>(global1.b, -var_3.b, var_1.d.x, -1i)), true);
    let x = u_input.a;
    s_output = StorageBuffer(-18711i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-891f + _wgslsmith_f_op_f32(f32(-1f) * -1791f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(945f))))), -245f, ~vec4<i32>(var_1.b, _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, -1i, -59921i) & global1.e.d.zzx, -vec3<i32>(-77666i, var_3.b, var_1.d.x)), u_input.a, _wgslsmith_add_i32(countOneBits(16630i), _wgslsmith_mod_i32(var_3.d.x, var_1.e.d.x))));
}

