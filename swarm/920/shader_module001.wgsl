struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: Struct_1,
    d: f32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec2<i32>;

var<private> global2: array<vec4<f32>, 13>;

var<private> global3: vec3<bool>;

var<private> global4: array<vec2<f32>, 17>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<u32>) -> u32 {
    let var_0 = abs(~_wgslsmith_dot_vec3_i32(vec3<i32>(countOneBits(38374i), _wgslsmith_dot_vec2_i32(arg_1.e, vec2<i32>(2147483647i, -4804i)), 27394i), u_input.d));
    global2 = array<vec4<f32>, 13>();
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(arg_0.a))), u_input.e.x, Struct_1(~select(vec4<u32>(25613u, arg_2.x, arg_2.x, 4294967295u) >> (arg_1.c.a % vec4<u32>(32u)), arg_1.c.a & arg_1.c.a, true)), arg_1.d, ~vec2<i32>(arg_1.e.x, -13070i));
    global1 = vec2<i32>(min(var_0, ~_wgslsmith_div_i32(_wgslsmith_sub_i32(0i, -1i), firstTrailingBit(global1.x))), u_input.c.x << (~var_1.c.a.x % 32u));
    let var_2 = _wgslsmith_f_op_f32(var_1.d - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(169f, 833f)))));
    return 47305u;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: i32) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(min(arg_2.a, _wgslsmith_f_op_vec3_f32(arg_2.a - arg_2.a))), arg_2.c.a.x, Struct_1(~(~u_input.e)), _wgslsmith_f_op_f32(-367f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1426f)))), firstTrailingBit(firstLeadingBit(arg_1.xx)));
    var var_1 = arg_2;
    let var_2 = arg_2;
    global0 = func_3(arg_2, arg_2, var_2.c.a.zx);
    var var_3 = countOneBits(vec4<i32>(~_wgslsmith_dot_vec2_i32(-u_input.d.zx, var_1.e), 42534i, 36347i, abs(1i)));
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_2.d), _wgslsmith_f_op_f32(var_1.a.x - arg_2.a.x), _wgslsmith_f_op_f32(ceil(1072f))) - vec3<f32>(arg_2.a.x, _wgslsmith_f_op_f32(select(399f, 479f, global3.x)), _wgslsmith_f_op_f32(-var_0.d)))), _wgslsmith_mod_u32(~var_0.b, abs(4294967295u)), Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(14843u ^ var_1.c.a.x, ~arg_2.c.a.x, 22442u, u_input.e.x), min(vec4<u32>(arg_2.c.a.x, 102837u, var_0.b, var_2.b), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2.b, u_input.e.x, var_1.c.a.x, arg_2.c.a.x), vec4<u32>(var_1.c.a.x, 0u, 24360u, arg_2.b), vec4<u32>(0u, 0u, arg_2.b, 13364u))))), _wgslsmith_f_op_f32(sign(var_2.d)), -max(u_input.d.xx, max(u_input.c, _wgslsmith_mod_vec2_i32(vec2<i32>(arg_2.e.x, var_2.e.x), vec2<i32>(var_0.e.x, -76119i)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: Struct_2) -> u32 {
    var var_0 = !(!(!select(vec4<bool>(global3.x, global3.x, global3.x, true), !vec4<bool>(global3.x, global3.x, true, true), global3.x)));
    let var_1 = arg_2;
    global3 = vec3<bool>(var_0.x, all(select(select(select(vec4<bool>(global3.x, true, var_0.x, true), vec4<bool>(false, global3.x, false, false), vec4<bool>(global3.x, var_0.x, var_0.x, true)), !vec4<bool>(false, global3.x, var_0.x, true), select(vec4<bool>(var_0.x, false, false, global3.x), vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(true, true, var_0.x, false))), select(!vec4<bool>(var_0.x, global3.x, var_0.x, global3.x), !vec4<bool>(true, global3.x, true, true), false), vec4<bool>(global3.x & false, arg_2.e.x >= arg_2.e.x, true, any(vec4<bool>(false, var_0.x, false, global3.x))))), global3.x);
    global1 = vec2<i32>(-36869i, arg_2.e.x);
    var var_2 = Struct_1(firstLeadingBit(u_input.e));
    return firstLeadingBit(~(~(~func_2(var_1.c, vec4<i32>(702i, arg_2.e.x, 1285i, arg_2.e.x), var_1, u_input.a).c.a.x)));
}

fn func_1() -> i32 {
    let var_0 = true;
    let var_1 = max(_wgslsmith_div_u32(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(u_input.e.x, 13u)] + vec4<f32>(-119f, -933f, -1729f, 1919f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(464f, 1000f, -2216f))), vec3<f32>(-1574f, 631f, 1290f)), func_2(Struct_1(u_input.e), vec4<i32>(u_input.b, u_input.a, 22790i, u_input.c.x), Struct_2(vec3<f32>(-848f, -1166f, 958f), 29249u, Struct_1(vec4<u32>(u_input.e.x, u_input.e.x, 1u, u_input.e.x)), 2361f, vec2<i32>(1i, 6389i)), -global1.x)), 61173u), func_2(func_2(Struct_1(u_input.e), _wgslsmith_mod_vec4_i32(~vec4<i32>(global1.x, u_input.b, global1.x, 39977i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, u_input.b, -2147483647i, u_input.a), vec4<i32>(14016i, 0i, -15602i, 21976i))), Struct_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1431f, 605f, 1000f), vec3<f32>(-1091f, -116f, -1000f), global3.x)), ~3647u, func_2(Struct_1(vec4<u32>(12727u, u_input.e.x, u_input.e.x, 1u)), vec4<i32>(2147483647i, -32420i, 0i, -15795i), Struct_2(vec3<f32>(-289f, 1000f, 1143f), 34948u, Struct_1(u_input.e), -742f, u_input.c), global1.x).c, _wgslsmith_f_op_f32(-794f * -186f), abs(u_input.d.xz)), u_input.d.x << (4294967295u % 32u)).c, _wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(-38292i, 22464i, global1.x, 20412i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -21792i, 7556i, -1i), vec4<i32>(global1.x, -2147483647i, global1.x, u_input.b), vec4<i32>(-2147483647i, global1.x, global1.x, 2147483647i))) & abs(vec4<i32>(-86968i, 2147483647i, u_input.d.x, 14317i) | vec4<i32>(-55597i, global1.x, -1i, -100768i)), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(161f, 864f, 680f))), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.e.x, 1u, 0u), 27505u), Struct_1(~vec4<u32>(0u, 6447u, u_input.e.x, 44774u)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -618f), _wgslsmith_div_f32(-244f, 625f))), firstLeadingBit(~u_input.d.xz)), _wgslsmith_div_i32(_wgslsmith_sub_i32(global1.x, 19161i) ^ 2147483647i, i32(-1i) * -u_input.c.x)).c.a.x);
    global2 = array<vec4<f32>, 13>();
    global0 = var_1;
    let var_2 = global3.yx;
    return 44148i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(~vec4<i32>(-109551i, u_input.d.x, u_input.a, u_input.a) | vec4<i32>(-global1.x, -29815i, _wgslsmith_dot_vec2_i32(u_input.d.xz, vec2<i32>(u_input.d.x, u_input.c.x)), 2147483647i)) & vec4<i32>(~(-31606i), u_input.b << (u_input.e.x % 32u), 1i, _wgslsmith_add_i32(firstTrailingBit(2147483647i) & _wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, -17889i, global1.x, 6653i), vec4<i32>(40322i, 6052i, 23570i, global1.x)), func_1()));
    var_0 = _wgslsmith_mult_vec4_i32(abs(_wgslsmith_div_vec4_i32(~min(vec4<i32>(2147483647i, -26768i, var_0.x, var_0.x), vec4<i32>(var_0.x, var_0.x, 5550i, 2147483647i)), vec4<i32>(-1i) * -vec4<i32>(var_0.x, -9813i, global1.x, 2147483647i))), vec4<i32>(u_input.b, -8435i, u_input.c.x & u_input.c.x, global1.x));
    global3 = !(!(!(!vec3<bool>(global3.x, global3.x, global3.x))));
    global3 = select(vec3<bool>(any(vec4<bool>(all(vec3<bool>(true, true, true)), !global3.x, 36476i > global1.x, global3.x)), !((var_0.x ^ -34078i) <= var_0.x), false), select(select(select(select(vec3<bool>(false, global3.x, false), vec3<bool>(global3.x, false, global3.x), true), select(vec3<bool>(true, true, true), vec3<bool>(true, global3.x, false), true), true), select(vec3<bool>(false, false, true), vec3<bool>(global3.x, global3.x, global3.x), select(vec3<bool>(true, global3.x, global3.x), vec3<bool>(global3.x, true, false), false)), vec3<bool>(true, !global3.x, true)), !vec3<bool>(1i > var_0.x, true, global3.x && global3.x), global3.x), -290f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1437f, -1259f))));
    var_0 = ~_wgslsmith_sub_vec4_i32(~_wgslsmith_add_vec4_i32(-vec4<i32>(0i, 64846i, 1i, var_0.x), vec4<i32>(1i, -57401i, var_0.x, global1.x) | vec4<i32>(17876i, -2147483647i, -8367i, var_0.x)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, ~u_input.a, -global1.x, 1i), _wgslsmith_add_vec4_i32(max(vec4<i32>(global1.x, 0i, 1i, var_0.x), vec4<i32>(var_0.x, global1.x, var_0.x, 26554i)), abs(vec4<i32>(-21890i, u_input.c.x, 1i, -10405i)))));
    let x = u_input.a;
    s_output = StorageBuffer(-1650f, -24773i, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1091f * 1000f) + -248f), 739f, _wgslsmith_f_op_f32(f32(-1f) * -133f)) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(986f, 1000f, 1010f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -882f), _wgslsmith_f_op_f32(335f * -182f), _wgslsmith_f_op_f32(-870f + 716f))))), ~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(4294967295u, 0u)), vec2<u32>(~1u, 21351u)));
}

