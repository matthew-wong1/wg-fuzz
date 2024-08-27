struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec4<bool>,
    d: vec4<i32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: i32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: Struct_3;

var<private> global2: array<Struct_5, 23>;

var<private> global3: array<vec4<f32>, 18>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec2<i32> {
    global1 = Struct_3(global1.a, global1.a.b.xw, vec4<bool>(global1.c.x, false & !select(true, false, true), true, _wgslsmith_f_op_f32(-global1.a.a) < _wgslsmith_f_op_f32(global1.b.x + _wgslsmith_f_op_f32(-global1.b.x))), vec4<i32>(0i, global1.d.x, ~global1.d.x, global1.d.x));
    let var_0 = global1.d.yy;
    global0 = Struct_4(_wgslsmith_add_u32(global0.a, ~abs(_wgslsmith_mod_u32(u_input.a, global0.a))));
    let var_1 = global2[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(4294967295u, _wgslsmith_add_u32(_wgslsmith_div_u32(4294967295u, u_input.a), ~28056u))), 23u)];
    global0 = Struct_4(u_input.a);
    return _wgslsmith_mod_vec2_i32(~(-select(vec2<i32>(var_1.a, 2147483647i) ^ vec2<i32>(2147483647i, 30145i), _wgslsmith_sub_vec2_i32(vec2<i32>(var_0.x, 1i), vec2<i32>(global1.d.x, 1i)), false)), -(~(-countOneBits(global1.d.yz))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>) -> vec4<u32> {
    let var_0 = !global1.c.yz;
    let var_1 = _wgslsmith_f_op_f32(floor(456f));
    var var_2 = Struct_1(true, _wgslsmith_sub_u32(14995u, 6283u));
    var var_3 = global1.d.x;
    global3 = array<vec4<f32>, 18>();
    return _wgslsmith_sub_vec4_u32(vec4<u32>(abs(var_2.b), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, var_2.b), vec2<u32>(38876u, u_input.a)) & u_input.a, 1u, ~var_2.b) << (_wgslsmith_sub_vec4_u32(~(~vec4<u32>(1u, 1u, 0u, global0.a)), vec4<u32>(~u_input.a, 1u, 21614u, 1u)) % vec4<u32>(32u)), vec4<u32>(~_wgslsmith_div_u32(var_2.b, 11859u) ^ firstTrailingBit(~39070u), ~(~0u), global0.a, 4294967295u));
}

fn func_2(arg_0: vec3<f32>) -> vec4<u32> {
    global3 = array<vec4<f32>, 18>();
    return _wgslsmith_div_vec4_u32(min(vec4<u32>(4975u, ~4294967295u, _wgslsmith_add_u32(_wgslsmith_mult_u32(10718u, global0.a), 4294967295u), abs(global0.a)), _wgslsmith_clamp_vec4_u32(func_4(global1.a, func_3()), max(~vec4<u32>(u_input.a, u_input.a, u_input.a, 20162u), vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a)), ~vec4<u32>(u_input.a, 4294967295u, 0u, 35101u) << (vec4<u32>(25348u, 1u, u_input.a, 1u) % vec4<u32>(32u)))), vec4<u32>(1u, ~global0.a ^ u_input.a, _wgslsmith_add_u32(~68894u, u_input.a), max(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global0.a, 36898u, 0u), vec4<u32>(55632u, 7443u, 1u, global0.a)), u_input.a)) | vec4<u32>(countOneBits(~19342u), u_input.a | 53031u, 0u, min(_wgslsmith_div_u32(u_input.a, global0.a), ~global0.a)));
}

fn func_5(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_3 {
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - 1000f) + _wgslsmith_f_op_f32(ceil(1000f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x + -613f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.a * arg_3.x) - global1.a.a), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.x, 533f) + _wgslsmith_div_f32(318f, -356f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_3.x + 656f), _wgslsmith_f_op_f32(-arg_3.x)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(arg_3)) - vec2<f32>(-508f, -807f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(329f, -1362f), global1.a.b.xx), arg_3))), vec4<bool>(-7962i >= ((12948i << (arg_2.b % 32u)) | -global1.d.x), any(select(vec3<bool>(arg_2.a, arg_2.a, arg_2.a), vec3<bool>(false, true, global1.c.x), vec3<bool>(true, true, false))) && any(select(global1.c.zww, global1.c.yyx, global1.c.wzz)), arg_2.a || true, any(!vec3<bool>(false, arg_2.a, true))), vec4<i32>(i32(-1i) * -(~global1.d.x), global1.d.x | global1.d.x, ~global1.d.x, global1.d.x));
    var var_1 = var_0.d.x;
    let var_2 = Struct_4(64910u & _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(arg_1.ww, arg_1.zy), ~arg_1.yx), ~arg_1.xy ^ ~arg_1.ww));
    var var_3 = global2[_wgslsmith_index_u32(arg_1.x, 23u)];
    let var_4 = Struct_4(u_input.a);
    return Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(trunc(arg_3.x))) - arg_3.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-788f))), _wgslsmith_f_op_f32(248f + _wgslsmith_div_f32(-2475f, arg_0)), -1856f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_3.x)))))), arg_3, !(!(!select(vec4<bool>(true, true, false, global1.c.x), vec4<bool>(global1.c.x, global1.c.x, true, var_0.c.x), vec4<bool>(true, arg_2.a, false, true)))), ~_wgslsmith_mult_vec4_i32(vec4<i32>(0i, ~var_3.a, i32(-1i) * -1805i, global1.d.x ^ var_3.a), var_0.d));
}

fn func_1(arg_0: u32) -> Struct_3 {
    let var_0 = countOneBits(4294967295u);
    global2 = array<Struct_5, 23>();
    global3 = array<vec4<f32>, 18>();
    var var_1 = global1.c.x;
    let var_2 = Struct_3(Struct_2(global1.b.x, _wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(global0.a, 18u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(-862f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1094f + -2115f)))) * _wgslsmith_f_op_vec2_f32(round(global1.b))), vec4<bool>(max(global1.d.x | -2147483647i, global1.d.x) < ~(global1.d.x & 1i), global1.c.x, global1.c.x, any(select(global1.c.xwx, select(vec3<bool>(global1.c.x, false, true), vec3<bool>(global1.c.x, false, global1.c.x), global1.c.x), all(global1.c.wx)))), select(-select(global1.d, vec4<i32>(global1.d.x, 2147483647i, -1i, -5967i), global1.c.x) ^ ~global1.d, ~max(global1.d, vec4<i32>(10883i, global1.d.x, 0i, 0i)), false));
    return func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1198f, _wgslsmith_f_op_f32(global1.b.x * _wgslsmith_f_op_f32(-var_2.b.x)))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.b.x)))), abs(~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 35898u), vec4<u32>(4294967295u, var_0, global0.a, 2074u))) ^ (_wgslsmith_add_vec4_u32(func_2(var_2.a.b.wyz), vec4<u32>(41511u, 4294967295u, 39466u, 0u)) << (~firstTrailingBit(vec4<u32>(56537u, arg_0, var_0, 52587u)) % vec4<u32>(32u))), Struct_1(var_2.c.x, global0.a), vec2<f32>(global1.a.b.x, -124f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(max(reverseBits(~u_input.a), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(global0.a, u_input.a), reverseBits(vec2<u32>(38898u, 4294967295u)))));
    let var_1 = var_0.d;
    var var_2 = var_1.x;
    var var_3 = Struct_1(!select(any(vec2<bool>(global1.c.x, var_0.c.x)), all(select(var_0.c.wy, vec2<bool>(true, var_0.c.x), var_0.c.yy)), all(select(vec3<bool>(false, global1.c.x, var_0.c.x), vec3<bool>(true, false, var_0.c.x), false))), reverseBits(~0u));
    var var_4 = vec2<bool>(_wgslsmith_f_op_f32(sign(-520f)) == _wgslsmith_f_op_f32(f32(-1f) * -1898f), var_0.c.x);
    var var_5 = global2[_wgslsmith_index_u32(func_2(global1.a.b.xwx).x, 23u)];
    let var_6 = func_5(global1.b.x, _wgslsmith_add_vec4_u32(select(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(28137u, u_input.a, 47065u, u_input.a), vec4<u32>(global0.a, u_input.a, global0.a, u_input.a)), vec4<u32>(u_input.a, 37533u, var_3.b, var_3.b)), ~(~vec4<u32>(var_5.b.x, 54298u, u_input.a, u_input.a)), var_3.a), vec4<u32>(global0.a, ~func_4(var_0.a, vec2<i32>(var_0.d.x, var_5.a)).x, select(countOneBits(var_3.b), 0u, true), 1u)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + var_0.a.b.x)) > global1.b.x, _wgslsmith_mod_u32(8695u, var_5.b.x)), vec2<f32>(-667f, -421f)).d.x;
    var var_7 = Struct_5(~(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, 0i, -54127i, var_1.x), abs(var_0.d))), vec3<u32>(73451u, firstLeadingBit(~4294967295u), 1u));
    global0 = Struct_4(~64812u);
    let x = u_input.a;
    s_output = StorageBuffer(global1.b.x, _wgslsmith_sub_i32(-var_1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, 7277i), _wgslsmith_add_vec2_i32(var_0.d.yw, vec2<i32>(-13807i, var_5.a))) << (var_3.b % 32u)));
}

