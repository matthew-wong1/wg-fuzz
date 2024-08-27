struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: f32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 31>;

var<private> global1: Struct_4 = Struct_4(vec3<i32>(-34290i, 24786i, 36038i), vec4<i32>(-52215i, 8761i, -1i, -13792i));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = ~arg_2.b;
    var var_1 = global1.b;
    var var_2 = Struct_3(abs(63477i), Struct_1(true, arg_2.b, -1000f, vec4<f32>(1664f, _wgslsmith_f_op_f32(ceil(arg_1.c)), 1058f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.d.x))))), 0u);
    var var_3 = global0[_wgslsmith_index_u32(var_2.c, 31u)];
    global1 = Struct_4(~(~global1.b.xxy) << (vec3<u32>(_wgslsmith_sub_u32(~var_2.c, ~arg_0), 64788u, _wgslsmith_sub_u32(var_2.c, _wgslsmith_mult_u32(4294967295u, 0u))) % vec3<u32>(32u)), ~vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, var_2.a), firstTrailingBit(vec3<i32>(arg_2.b.x, global1.a.x, global1.a.x))), _wgslsmith_mult_i32(var_2.b.b.x, var_0.x << (48216u % 32u)), -14392i, -max(1133i, var_1.x)));
    return _wgslsmith_div_u32(var_2.c, _wgslsmith_mult_u32(~(~(1u ^ arg_0)), ~reverseBits(select(0u, 4294967295u, var_2.b.a))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec2<i32>) -> vec4<bool> {
    let var_0 = Struct_3(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(select(global1.b.zx & arg_1.b.zw, _wgslsmith_mult_vec2_i32(vec2<i32>(global1.b.x, arg_1.a.x), arg_2), vec2<bool>(true, true)), -_wgslsmith_mult_vec2_i32(vec2<i32>(arg_2.x, global1.b.x), global1.b.wy)), _wgslsmith_clamp_i32(global1.b.x, _wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.a, global1.b.x), 1i), arg_0.a)), Struct_1(all(vec3<bool>(true, true, true)), -min(_wgslsmith_mult_vec2_i32(arg_2, vec2<i32>(global1.b.x, 2147483647i)), arg_1.a.zy ^ vec2<i32>(arg_1.b.x, 81918i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-819f * _wgslsmith_f_op_f32(floor(231f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1770f, -1497f)), _wgslsmith_f_op_f32(select(1434f, -404f, true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(484f, -881f, -450f, -349f)))), select(abs(arg_0.c.x), ~0u, any(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false))));
    global1 = arg_1;
    let var_1 = -48458i;
    let var_2 = max(countOneBits(vec3<u32>(arg_0.c.x, 23114u, firstLeadingBit(0u)) << (~arg_0.c.yyy % vec3<u32>(32u))), arg_0.c.wyz);
    let var_3 = ~abs(vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c, 1u, 64482u, var_0.c), vec4<u32>(1u, 4294967295u, 1u, var_0.c)), reverseBits(1u), select(~0u, 1u, var_0.b.a), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c, 23135u, 12692u, 4294967295u), vec4<u32>(var_0.c, var_0.c, var_2.x, 0u))));
    return vec4<bool>(false, false, var_0.b.a, ~firstTrailingBit(func_3(34207u, Struct_1(var_0.b.a, vec2<i32>(var_0.b.b.x, 3555i), 954f, vec4<f32>(var_0.b.c, var_0.b.c, var_0.b.c, var_0.b.c)), Struct_1(false, arg_1.b.zz, var_0.b.d.x, var_0.b.d))) != 1u);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: vec3<f32>) -> vec4<i32> {
    global1 = Struct_4(vec3<i32>(38255i, -_wgslsmith_add_i32(arg_0.b.x, reverseBits(14229i)), -344i), select(_wgslsmith_div_vec4_i32(global1.b, -select(global1.b, vec4<i32>(u_input.b, u_input.a, 37272i, 42079i), vec4<bool>(false, false, true, true))), -global1.b, vec4<bool>(true || all(vec4<bool>(true, arg_0.a, false, false)), true, true, !(!arg_0.a))));
    var var_0 = !func_4(Struct_2(_wgslsmith_div_i32(1i, -1i), func_3(arg_1.x ^ arg_2.c, Struct_1(arg_0.a, vec2<i32>(0i, global1.a.x), arg_3.x, vec4<f32>(arg_0.c, arg_0.c, arg_2.b.c, arg_3.x)), arg_2.b), select(abs(arg_1), arg_1 >> (arg_1 % vec4<u32>(32u)), true)), Struct_4(vec3<i32>(i32(-1i) * -32304i, 2147483647i ^ global1.b.x, ~arg_2.a), -firstLeadingBit(global1.b)), _wgslsmith_add_vec2_i32(-vec2<i32>(arg_2.a, u_input.b) | select(vec2<i32>(15655i, arg_0.b.x), vec2<i32>(arg_0.b.x, -1i), arg_2.b.a), vec2<i32>(_wgslsmith_sub_i32(arg_0.b.x, 33019i), u_input.b)));
    let var_1 = Struct_1(false, global1.a.xy, 688f, arg_0.d);
    let var_2 = global1.b.x;
    let var_3 = vec4<bool>(any(vec3<bool>(arg_0.a, var_1.a, arg_2.b.a)), true, !var_1.a, var_0.x);
    return abs(global1.b);
}

fn func_1() -> vec4<u32> {
    let var_0 = true;
    var var_1 = Struct_4(vec3<i32>(u_input.a, 17904i << (1u % 32u), _wgslsmith_dot_vec4_i32(func_2(Struct_1(var_0, vec2<i32>(global1.a.x, u_input.b), 447f, vec4<f32>(-486f, -1381f, -1094f, -1220f)), ~vec4<u32>(18606u, 3794u, 33537u, 1u), Struct_3(22868i, Struct_1(true, vec2<i32>(global1.b.x, 39190i), -910f, vec4<f32>(-681f, 2726f, -163f, -1482f)), 0u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-161f, 1545f, 1000f))), vec4<i32>(-2147483647i, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(64502i, 24182i, 1i, 22508i), global1.b), 1i))), abs(countOneBits(global1.b << (vec4<u32>(28302u, 0u, 4294967295u, 0u) % vec4<u32>(32u))) | reverseBits(_wgslsmith_sub_vec4_i32(global1.b, global1.b))));
    let var_2 = abs(~1u);
    let var_3 = Struct_4(global1.b.yzx, max(_wgslsmith_mult_vec4_i32(~_wgslsmith_div_vec4_i32(global1.b, vec4<i32>(0i, 2147483647i, -32934i, 1i)), _wgslsmith_sub_vec4_i32(global1.b, global1.b << (vec4<u32>(var_2, var_2, 23025u, var_2) % vec4<u32>(32u)))), ~(var_1.b ^ abs(global1.b))));
    let var_4 = Struct_2(9877i, var_2 | (firstTrailingBit(16208u) & ~(var_2 & var_2)), vec4<u32>(var_2, ~1u, 1u, var_2));
    return var_4.c;
}

fn func_5(arg_0: Struct_4, arg_1: vec4<i32>) -> StorageBuffer {
    let var_0 = 894f;
    var var_1 = !vec4<bool>(func_2(Struct_1(true, vec2<i32>(arg_0.a.x, arg_1.x), -473f, vec4<f32>(var_0, var_0, var_0, var_0)), vec4<u32>(4294967295u, 4294967295u, 95567u, 16455u), Struct_3(arg_1.x, Struct_1(false, arg_1.xz, var_0, vec4<f32>(1160f, var_0, var_0, -1000f)), 1u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, -1000f))).x < arg_0.a.x, true, true, true);
    let var_2 = arg_0;
    var var_3 = vec4<bool>(var_1.x, all(vec2<bool>(var_1.x, var_1.x)) & any(vec4<bool>(false, !var_1.x, var_1.x, 987f < var_0)), !(false && var_1.x), all(vec3<bool>(true, true, true)));
    var var_4 = Struct_3(_wgslsmith_dot_vec4_i32(-max(arg_1 << (vec4<u32>(4294967295u, 1u, 49601u, 35508u) % vec4<u32>(32u)), var_2.b & global1.b), _wgslsmith_add_vec4_i32(countOneBits(arg_0.b & vec4<i32>(arg_0.a.x, -1i, 2147483647i, var_2.b.x)), countOneBits(arg_0.b))), Struct_1(select(var_3.x, _wgslsmith_f_op_f32(-var_0) < _wgslsmith_f_op_f32(min(var_0, var_0)), false), vec2<i32>(-1i, _wgslsmith_dot_vec4_i32(~vec4<i32>(arg_1.x, 0i, 1i, -1i), arg_0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1641f, 1230f) - var_0) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - var_0)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0))), 1084f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0, var_0)) - -1287f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(623f * -223f), -1164f)))), 1u);
    return StorageBuffer(vec3<i32>(~(-21898i), u_input.a, _wgslsmith_mod_i32(select(-32106i, -1i, var_3.x), reverseBits(0i))) >> (~(~vec3<u32>(1u, var_4.c, var_4.c)) % vec3<u32>(32u)), abs(~arg_1.wzy), _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(1664f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(Struct_4(global1.a, -(global1.b >> (func_1() % vec4<u32>(32u)))), countOneBits(global1.b));
}

