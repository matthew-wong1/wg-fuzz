struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: vec4<bool>,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: vec3<bool>,
    e: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 73616u, 1u, 4294967295u);

var<private> global1: array<vec2<bool>, 8> = array<vec2<bool>, 8>(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false));

var<private> global2: Struct_2;

var<private> global3: array<i32, 7>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    global1 = array<vec2<bool>, 8>();
    global0 = _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(countOneBits(~u_input.c), vec4<u32>(abs(~16966u), 35300u, firstTrailingBit(global2.b), 4294967295u)), _wgslsmith_add_vec4_u32(abs(~(~u_input.c)), u_input.c | ~(vec4<u32>(global2.b, global0.x, global2.b, 27002u) << (vec4<u32>(global0.x, u_input.c.x, 59054u, global0.x) % vec4<u32>(32u)))), u_input.c);
    global1 = array<vec2<bool>, 8>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))));
    let var_1 = ~(u_input.c.x & ~_wgslsmith_div_u32(33516u, _wgslsmith_add_u32(3479u, 3097u)));
    return var_0.x;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> bool {
    global1 = array<vec2<bool>, 8>();
    let var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(2041f, 1552f), vec2<f32>(520f, 790f))), vec2<f32>(1196f, 1787f))))))));
    var var_1 = Struct_4(1i, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(func_3())), max(_wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(arg_1.a, -2147483647i, global3[_wgslsmith_index_u32(4294967295u, 7u)], 1i)) ^ vec4<i32>(0i, arg_2, arg_1.a, arg_2), select(~vec4<i32>(global3[_wgslsmith_index_u32(958u, 7u)], 17592i, -1i, u_input.a), -vec4<i32>(2147483647i, global3[_wgslsmith_index_u32(global2.b, 7u)], arg_1.a, global2.a.a), !global2.a.b)), ~vec4<i32>(-1i >> (1u % 32u), _wgslsmith_mod_i32(-1i, -4973i), -1i, abs(arg_2))), vec3<bool>(true, true, !select(true, all(vec3<bool>(global2.a.b.x, global2.a.b.x, arg_0)), all(vec3<bool>(global2.a.b.x, true, true)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(var_0.x * 1388f))), -1404f)));
    var_1 = Struct_4(countOneBits(2147483647i) >> (((48771u ^ _wgslsmith_mult_u32(global2.b, global0.x)) | (global0.x & reverseBits(global0.x))) % 32u), var_1.e, var_1.c, arg_1.b.wzx, 371f);
    var var_2 = ~1u | global0.x;
    return var_1.d.x;
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: Struct_5) -> u32 {
    let var_0 = (firstLeadingBit(-vec4<i32>(global2.a.a, u_input.a, -1i, global3[_wgslsmith_index_u32(18980u, 7u)])) ^ (arg_3.a.c ^ _wgslsmith_mult_vec4_i32(~arg_3.d, _wgslsmith_add_vec4_i32(arg_3.d, vec4<i32>(arg_3.d.x, arg_2.a, -1i, 0i))))) << (_wgslsmith_mult_vec4_u32(~abs(~vec4<u32>(27704u, global2.b, global2.b, global0.x)), u_input.c) % vec4<u32>(32u));
    var var_1 = 77193u;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.a.e - -1000f) - _wgslsmith_f_op_f32(158f - arg_3.a.b)), _wgslsmith_f_op_f32(-arg_3.a.b), arg_3.a.e);
    var var_3 = arg_3.b.c.yyy;
    global3 = array<i32, 7>();
    return abs(global2.b);
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec4<i32>) -> u32 {
    var var_0 = _wgslsmith_add_u32(21780u, 11970u);
    var_0 = select(u_input.c.x, (_wgslsmith_mod_u32(min(26514u, u_input.c.x), u_input.c.x) | global2.b) & ~arg_0.b, _wgslsmith_f_op_f32(-356f + 631f) < _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -307f), _wgslsmith_f_op_f32(-942f + 563f)))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -864f)), 688f, _wgslsmith_f_op_f32(floor(-631f)), 1945f);
    var_0 = func_4(true, select(!vec4<bool>(func_2(arg_0.a.b.x, arg_0.a, arg_0.a.a), global2.a.b.x && false, true, all(vec4<bool>(false, arg_0.a.b.x, arg_0.a.b.x, true))), !vec4<bool>(arg_0.a.b.x, func_2(global2.a.b.x, Struct_1(arg_1.x, vec4<bool>(global2.a.b.x, global2.a.b.x, global2.a.b.x, arg_0.a.b.x)), 0i), true, true), !global2.a.b), Struct_3(countOneBits(-global2.a.a) & _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), -arg_2.wz), global2.a.b.x, vec4<bool>(global2.a.b.x, -606f != var_1.x, arg_0.a.b.x, all(select(vec4<bool>(true, true, arg_0.a.b.x, true), global2.a.b, false)))), Struct_5(Struct_4(arg_0.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-909f)) * _wgslsmith_f_op_f32(306f + var_1.x)), reverseBits(_wgslsmith_sub_vec4_i32(arg_2, arg_2)), !select(arg_0.a.b.xzy, vec3<bool>(global2.a.b.x, true, global2.a.b.x), global2.a.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_f_op_f32(484f + 1293f))), Struct_3(max(arg_1.x << (1u % 32u), -36212i), true && arg_0.a.b.x, select(global2.a.b, select(vec4<bool>(arg_0.a.b.x, false, false, true), arg_0.a.b, vec4<bool>(true, true, arg_0.a.b.x, arg_0.a.b.x)), true)), select(arg_2.yx, abs(reverseBits(vec2<i32>(2147483647i, arg_0.a.a))), any(!vec2<bool>(true, global2.a.b.x))), -max(arg_2 << (vec4<u32>(1u, 14766u, 9083u, arg_0.b) % vec4<u32>(32u)), arg_2)));
    let var_2 = Struct_4(_wgslsmith_add_i32(arg_2.x << (u_input.c.x % 32u), arg_2.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(499f * var_1.x), _wgslsmith_f_op_f32(var_1.x * var_1.x)) + 1445f))), (vec4<i32>(~12688i, _wgslsmith_mod_i32(arg_1.x, 38750i), ~arg_0.a.a, global2.a.a << (global2.b % 32u)) ^ vec4<i32>(select(global3[_wgslsmith_index_u32(0u, 7u)], arg_2.x, true), 2147483647i, -2147483647i, arg_1.x)) << (~u_input.c % vec4<u32>(32u)), select(arg_0.a.b.wwz, select(arg_0.a.b.yxx, !vec3<bool>(arg_0.a.b.x, false, false), global2.a.b.xxx), true), _wgslsmith_div_f32(-139f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(round(-1550f))) * _wgslsmith_f_op_f32(f32(-1f) * -278f))));
    return min(~global2.b, _wgslsmith_div_u32(abs(global2.b), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, arg_0.b, arg_0.b, global0.x), vec4<u32>(4294967295u, 4294967295u, arg_0.b, 1u) & u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 7>();
    global0 = u_input.c;
    var var_0 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1556f - -144f) * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1852f, -832f), _wgslsmith_f_op_f32(min(200f, -1000f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -997f), _wgslsmith_f_op_f32(f32(-1f) * -893f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(510f, -409f)) - 434f))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, var_0.x), _wgslsmith_f_op_vec2_f32(var_0.xx + vec2<f32>(-1000f, var_0.x)), global2.a.b.x)) - _wgslsmith_f_op_vec2_f32(var_0.yy - _wgslsmith_f_op_vec2_f32(-var_0.zz)))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-295f - var_0.x)))));
    global0 = ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(~u_input.b.x, global2.b, func_1(Struct_2(Struct_1(u_input.a, global2.a.b), global0.x), vec2<i32>(global2.a.a, u_input.a), vec4<i32>(u_input.a, global3[_wgslsmith_index_u32(29966u, 7u)], global2.a.a, u_input.a)), min(u_input.b.x, global0.x)), _wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.b.x, 57738u, global2.b) | vec4<u32>(global0.x, u_input.c.x, 0u, u_input.b.x), vec4<u32>(1u, u_input.c.x, 1u, global0.x))));
    var var_2 = -firstLeadingBit(~countOneBits(~vec2<i32>(global2.a.a, 0i)));
    let var_3 = global0.wy;
    var var_4 = !func_2(false, global2.a, -1342i);
    let var_5 = -countOneBits(2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.yz)), firstTrailingBit(~((u_input.b & u_input.b) | (u_input.c.yy | vec2<u32>(global0.x, var_3.x)))), ~vec4<i32>(2147483647i, select(-2147483647i, -5061i, global2.a.b.x), 1i, _wgslsmith_mod_i32(u_input.a, global2.a.a) << (_wgslsmith_mult_u32(var_3.x, 74751u) % 32u)), _wgslsmith_add_vec2_i32(vec2<i32>(-1i) * -(vec2<i32>(-83620i, var_2.x) ^ vec2<i32>(global3[_wgslsmith_index_u32(43147u, 7u)], u_input.a)), vec2<i32>(~firstTrailingBit(1i), max(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_5, global2.a.a, 2147483647i), vec4<i32>(-45232i, global3[_wgslsmith_index_u32(var_3.x, 7u)], 2147483647i, 2147483647i)), 1i << (0u % 32u)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(328f, 656f, -1478f) + vec3<f32>(var_1.x, var_0.x, var_0.x))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_1.x, var_1.x) * vec3<f32>(var_0.x, var_0.x, var_1.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_1.x) * vec3<f32>(506f, 272f, var_1.x)), vec3<bool>(global2.a.b.x, global2.a.b.x, global2.a.b.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-413f, var_1.x, 414f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_1.x, 595f)), !vec3<bool>(global2.a.b.x, global2.a.b.x, false))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-566f, 644f, var_0.x)))), vec3<bool>(false, true, all(vec4<bool>(false, false, global2.a.b.x, global2.a.b.x))))));
}

