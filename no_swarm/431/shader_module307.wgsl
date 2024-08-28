struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: u32,
    b: vec2<i32>,
    c: vec3<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: vec2<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2>;

var<private> global1: vec4<bool> = vec4<bool>(true, false, false, false);

var<private> global2: u32;

var<private> global3: array<bool, 29> = array<bool, 29>(true, true, false, true, false, false, false, false, true, false, false, true, false, true, false, false, false, true, false, true, true, false, true, true, true, true, false, false, true);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec4<bool>, arg_1: f32) -> bool {
    global1 = vec4<bool>(true, all(global1.xwz), all(select(vec2<bool>(select(global3[_wgslsmith_index_u32(128035u, 29u)], true, false), any(vec4<bool>(arg_0.x, arg_0.x, false, global3[_wgslsmith_index_u32(1u, 29u)]))), arg_0.yw, vec2<bool>(false, all(global1.wy)))), false);
    let var_0 = countOneBits(_wgslsmith_div_vec4_i32(-((vec4<i32>(-2147483647i, -14551i, 0i, 1i) << (vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u))) | vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.c)), vec4<i32>(u_input.c, u_input.a.x, u_input.c & 5449i, _wgslsmith_div_i32(global0[_wgslsmith_index_u32(u_input.b.x, 2u)], -17063i)) ^ min(_wgslsmith_add_vec4_i32(vec4<i32>(44939i, -11977i, u_input.c, global0[_wgslsmith_index_u32(u_input.b.x, 2u)]), vec4<i32>(u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(u_input.b.x, 2u)], global0[_wgslsmith_index_u32(u_input.b.x, 2u)])), ~vec4<i32>(-3036i, u_input.c, -1i, global0[_wgslsmith_index_u32(u_input.b.x, 2u)]))));
    global2 = reverseBits(u_input.b.x);
    var var_1 = Struct_5(Struct_3(-204f, Struct_1(true), ~(~_wgslsmith_mult_u32(0u, 0u))), 27938i, vec2<f32>(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(arg_1)), -1494f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1, -1601f)) - arg_1))), Struct_2(Struct_1(true), _wgslsmith_dot_vec4_i32(~(~vec4<i32>(27547i, var_0.x, 1i, u_input.c)), reverseBits(select(var_0, vec4<i32>(23865i, var_0.x, u_input.a.x, 1i), arg_0))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1)))))));
    let var_2 = Struct_2(Struct_1(all(arg_0.xx) && var_1.a.b.a), ~(~_wgslsmith_add_i32(var_0.x, -var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.a) * _wgslsmith_f_op_f32(min(-951f, _wgslsmith_f_op_f32(round(-504f))))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1, arg_1)) + _wgslsmith_f_op_f32(169f - var_1.d.c))))));
    return !global3[_wgslsmith_index_u32(~20839u, 29u)];
}

fn func_2(arg_0: u32) -> vec2<f32> {
    let var_0 = !any(vec3<bool>(func_3(vec4<bool>(false, global1.x, true, global3[_wgslsmith_index_u32(4294967295u, 29u)]), _wgslsmith_div_f32(-1144f, 1657f)), all(vec3<bool>(global1.x, true, global1.x)), global3[_wgslsmith_index_u32(arg_0, 29u)]));
    var var_1 = Struct_1(true);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(321f, -2000f, -862f, -1000f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(228f, 243f, -848f, -1485f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-388f, 220f, 532f, -200f) + vec4<f32>(802f, -518f, 1000f, 893f))))))));
    var_1 = Struct_1(var_0);
    var var_3 = vec4<u32>(abs(27862u << (~arg_0 % 32u)), _wgslsmith_dot_vec2_u32(abs(max(vec2<u32>(4294967295u, arg_0), vec2<u32>(42469u, 1u))) | countOneBits(u_input.b), vec2<u32>(1u << (firstTrailingBit(20347u) % 32u), _wgslsmith_mod_u32(countOneBits(26411u), _wgslsmith_dot_vec4_u32(vec4<u32>(45223u, u_input.b.x, arg_0, 4294967295u), vec4<u32>(1u, 0u, 0u, arg_0))))), 35833u, ~(1u >> (firstTrailingBit(68294u ^ u_input.b.x) % 32u)));
    return vec2<f32>(var_2.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-282f * -1000f), -3075f)));
}

fn func_1() -> f32 {
    let var_0 = 1f;
    let var_1 = !all(global1.zy);
    global2 = u_input.b.x;
    let var_2 = Struct_5(Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * var_0) + 1892f))), Struct_1(all(select(global1.xzy, vec3<bool>(var_1, global1.x, global3[_wgslsmith_index_u32(u_input.b.x, 29u)]), vec3<bool>(true, global3[_wgslsmith_index_u32(18174u, 29u)], false)))), _wgslsmith_mod_u32(4294967295u, max(46434u, 0u))), -u_input.a.x, _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_add_u32((u_input.b.x << (4294967295u % 32u)) << (~1u % 32u), u_input.b.x))), Struct_2(Struct_1(true), _wgslsmith_mult_i32(u_input.a.x | 2147483647i, 30999i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(262f + var_0), 1f)))));
    var var_3 = var_2.a.c;
    return _wgslsmith_f_op_f32(-var_0);
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: bool, arg_3: vec4<f32>) -> u32 {
    global1 = vec4<bool>(global1.x, false, func_3(vec4<bool>(false, global1.x, true, 1440f > arg_1), -363f), true);
    let var_0 = firstTrailingBit(19485i);
    var var_1 = Struct_4(49010u << (u_input.b.x % 32u), u_input.a.zx, vec3<bool>(false, false, all(select(vec4<bool>(false, true, arg_2, false), !vec4<bool>(true, global1.x, global3[_wgslsmith_index_u32(u_input.b.x, 29u)], false), vec4<bool>(true, false, true, global1.x)))));
    global2 = var_1.a;
    let var_2 = Struct_1(all(select(select(var_1.c.zx, vec2<bool>(false, global1.x), true), select(global1.zw, select(vec2<bool>(false, true), global1.wx, false), true), var_1.c.zz)));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_4(_wgslsmith_add_i32(~u_input.a.x, 26192i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())))) * -1000f), !func_3(vec4<bool>(!global3[_wgslsmith_index_u32(u_input.b.x, 29u)], !global1.x, global1.x, all(vec3<bool>(global3[_wgslsmith_index_u32(0u, 29u)], global1.x, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -298f) * 282f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-619f * -591f)))), _wgslsmith_f_op_f32(147f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-547f, -310f)) * _wgslsmith_f_op_f32(f32(-1f) * -948f))), -1635f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(219f, 1353f)), _wgslsmith_f_op_vec2_f32(func_2(u_input.b.x)).x, !global3[_wgslsmith_index_u32(u_input.b.x, 29u)]))))));
    var var_0 = vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.b.x & ~45401u, ~(u_input.b.x & u_input.b.x)), abs(~(u_input.b.x ^ 51780u))), _wgslsmith_div_u32(u_input.b.x, abs(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(1u, 0u, 34229u, 38536u)), firstLeadingBit(vec4<u32>(4294967295u, 36046u, u_input.b.x, u_input.b.x))))), 0u, u_input.b.x);
    var var_1 = Struct_2(Struct_1(true), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(0u, var_0.x, 1u, 1u)), vec4<u32>(abs(42114u), var_0.x, 1u, 1u)), 2u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(2139f, _wgslsmith_f_op_f32(-1569f * -675f))) - _wgslsmith_f_op_f32(f32(-1f) * -1248f)));
    global3 = array<bool, 29>();
    var_0 = _wgslsmith_mod_vec4_u32(max(_wgslsmith_sub_vec4_u32(vec4<u32>(34558u, var_0.x, var_0.x, var_0.x) & _wgslsmith_div_vec4_u32(vec4<u32>(99306u, var_0.x, 4294967295u, 27491u), vec4<u32>(var_0.x, var_0.x, 1u, var_0.x)), reverseBits(vec4<u32>(81203u, 10085u, 59913u, var_0.x)) | vec4<u32>(2636u, var_0.x, var_0.x, var_0.x)), ~max(vec4<u32>(u_input.b.x, var_0.x, u_input.b.x, 1u), ~vec4<u32>(var_0.x, 57775u, 41241u, 0u))), ~vec4<u32>(~u_input.b.x, 4294967295u, 17661u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.b.x), var_0.xww)));
    let var_2 = firstTrailingBit(vec3<u32>(min((u_input.b.x >> (var_0.x % 32u)) ^ var_0.x, _wgslsmith_mod_u32(var_0.x, u_input.b.x)), 4294967295u, max(12168u, var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.ywx);
}

