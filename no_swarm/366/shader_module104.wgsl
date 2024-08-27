struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: vec2<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_4,
    d: vec3<i32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
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

var<private> global0: f32 = 339f;

var<private> global1: i32 = -2038i;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c.x, arg_0.x));
    global1 = -67911i;
    global1 = _wgslsmith_add_i32(min(_wgslsmith_mult_i32(-15678i, select(arg_1.a.x, u_input.c, true)), _wgslsmith_dot_vec2_i32(arg_1.d.c.xx, arg_1.b.c.yy)), reverseBits(_wgslsmith_dot_vec4_i32(~vec4<i32>(30649i, arg_1.a.x, -38321i, arg_1.b.a), abs(vec4<i32>(1i, 1i, u_input.a, -13121i) | vec4<i32>(14787i, 996i, arg_1.a.x, -2147483647i)))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) * var_0.x);
    global0 = var_0.x;
    return _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(abs(2147483647i), select(1i, 6161i, false), reverseBits(u_input.c), u_input.c)), abs(reverseBits(vec4<i32>(2147483647i, arg_1.b.c.x, 0i, arg_1.a.x)) | vec4<i32>(arg_1.b.c.x, 0i, u_input.c, -43294i))), vec4<i32>(u_input.c | 81503i, _wgslsmith_mod_i32(~39050i, reverseBits(u_input.a)), 31993i, ~(~u_input.a)) << ((~(vec4<u32>(u_input.b, arg_1.d.b, arg_1.b.b, arg_1.b.b) & vec4<u32>(arg_1.d.b, 97065u, arg_1.d.b, 0u)) >> (vec4<u32>(u_input.b & u_input.b, arg_1.b.b, 55193u & u_input.b, arg_1.b.b << (arg_1.b.b % 32u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_add_vec4_i32(~func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(672f, 1000f, 560f, 2566f))), Struct_2(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(2147483647i, 22245i)), Struct_1(u_input.c, 1u, vec3<i32>(-1i, u_input.a, u_input.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1201f, 240f, 1126f, -1229f)), Struct_1(-1i, u_input.b, vec3<i32>(u_input.c, 37127i, u_input.c)))), -(~(~vec4<i32>(-2147483647i, 0i, -2147483647i, u_input.a))));
    global1 = -_wgslsmith_div_i32(u_input.c, -1i) >> ((~45843u >> (firstTrailingBit(4294967295u) % 32u)) % 32u);
    let var_1 = ~_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(16576i, var_0.x, u_input.a, 0i), vec4<i32>(39014i, 11080i, u_input.c, u_input.c)) << (select(u_input.b, u_input.b, true) % 32u), 1i);
    global0 = 844f;
    let var_2 = _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(select(func_3(vec4<f32>(867f, -277f, 968f, -101f), Struct_2(vec2<i32>(-12350i, -1i), Struct_1(u_input.a, u_input.b, vec3<i32>(var_0.x, 1192i, 2147483647i)), vec4<f32>(-890f, 1000f, -535f, 310f), Struct_1(2147483647i, u_input.b, vec3<i32>(var_1, var_0.x, 2147483647i)))).xxw, var_0.xxw, vec3<bool>(true, true, true)), -vec3<i32>(firstTrailingBit(37842i), var_1 << (4294967295u % 32u), _wgslsmith_sub_i32(u_input.a, var_1))), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(var_0.x, _wgslsmith_clamp_i32(44237i, 1i, u_input.a), var_0.x & var_0.x)), var_0.xyw));
    return _wgslsmith_mult_i32(var_1, var_0.x);
}

fn func_1(arg_0: i32) -> bool {
    global1 = _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(reverseBits(abs(~vec2<i32>(-2147483647i, 71394i))), vec2<i32>(min(0i, ~(-2147483647i)), func_2() | _wgslsmith_mult_i32(u_input.a, u_input.a))), ~vec2<i32>(abs(1i), _wgslsmith_mult_i32(~(-7895i), -74020i)));
    var var_0 = ~u_input.b & u_input.b;
    let var_1 = Struct_3(Struct_1(i32(-1i) * -1i, _wgslsmith_dot_vec4_u32(vec4<u32>(36766u, 4294967295u, 85518u, 1u) << (~vec4<u32>(u_input.b, u_input.b, 1u, u_input.b) % vec4<u32>(32u)), vec4<u32>(62642u, _wgslsmith_dot_vec4_u32(vec4<u32>(28518u, u_input.b, u_input.b, u_input.b), vec4<u32>(31626u, 1u, 4233u, u_input.b)), u_input.b, 33658u)), ~(-select(vec3<i32>(-2147483647i, 1i, arg_0), vec3<i32>(24188i, u_input.c, u_input.c), vec3<bool>(true, true, true)))), (1820i >> (~(~u_input.b) % 32u)) >> (1u % 32u), Struct_2(~vec2<i32>(max(8742i, 0i), u_input.a >> (u_input.b % 32u)), Struct_1(~func_2(), ~_wgslsmith_div_u32(17055u, u_input.b), vec3<i32>(arg_0 ^ u_input.c, 0i, -1172i)), vec4<f32>(-1661f, -556f, _wgslsmith_f_op_f32(-616f - _wgslsmith_f_op_f32(round(-838f))), 344f), Struct_1(_wgslsmith_clamp_i32(-2147483647i, ~2147483647i, ~arg_0), reverseBits(~34199u), vec3<i32>(1i, reverseBits(-18151i), abs(arg_0)))));
    var var_2 = vec2<f32>(-308f, var_1.c.c.x);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(1943f, 185f)), _wgslsmith_div_f32(var_1.c.c.x, var_1.c.c.x))) - _wgslsmith_f_op_f32(-360f + 388f)) * var_1.c.c.x) - _wgslsmith_f_op_f32(f32(-1f) * -521f));
    return true || all(vec4<bool>(false, true, select(true, true, true), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, var_1.c.d.b, u_input.b), vec4<u32>(var_1.a.b, 4294967295u, 0u, u_input.b)) > ~var_1.a.b));
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: vec4<f32>) -> Struct_3 {
    let var_0 = arg_2.x;
    global1 = u_input.c;
    var var_1 = -1i;
    var_1 = 0i;
    let var_2 = countOneBits(~(~64563u));
    return Struct_3(Struct_1(u_input.a | -_wgslsmith_add_i32(-2147483647i, u_input.a), _wgslsmith_clamp_u32(~29234u, ~930u ^ u_input.b, _wgslsmith_mod_u32(~27737u, u_input.b)), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 25200i), vec2<i32>(u_input.a, u_input.c)), 1i, ~9857i), reverseBits(vec3<i32>(2147483647i, u_input.c, u_input.a)))), abs(_wgslsmith_mod_i32(2147483647i, ~(-2147483647i)) >> (0u % 32u)), Struct_2(vec2<i32>(-_wgslsmith_sub_i32(u_input.a, u_input.c), ~_wgslsmith_add_i32(-2147483647i, u_input.c)), Struct_1(~(~2147483647i), _wgslsmith_sub_u32(~68896u, 12003u), vec3<i32>(-40956i, _wgslsmith_mod_i32(2147483647i, u_input.a), firstTrailingBit(u_input.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, 1361f, arg_2.x, -1169f))), Struct_1(u_input.a, abs(u_input.b), -vec3<i32>(u_input.a, -11647i, u_input.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1893u;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-699f, -141f, -1617f, 667f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(562f, 1177f, -301f, -313f))))));
    var var_2 = func_4(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_1(8902i)), vec4<bool>(any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-var_1.x) >= _wgslsmith_f_op_f32(floor(var_1.x)), true, false), true), any(!select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(false, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<f32>(-157f, 437f, 130f, var_1.x))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(331f, -1000f, var_1.x, var_1.x))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2045f, -969f, var_1.x, var_1.x), vec4<f32>(var_1.x, var_1.x, 319f, 306f), vec4<bool>(false, false, true, false))), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, -2068f, -994f, var_1.x), vec4<f32>(1922f, var_1.x, var_1.x, var_1.x)))))));
    var_1 = var_2.c.c;
    var var_3 = 946f;
    let var_4 = select(vec4<bool>(true, select(any(vec2<bool>(false, false)), true & (var_0 >= u_input.b), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + 108f) * 1f) >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -441f))), true), !select(vec4<bool>(true, true, var_0 > 0u, 1255f > var_2.c.c.x), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), true), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    var var_5 = i32(-1i) * -_wgslsmith_dot_vec4_i32(select(vec4<i32>(0i, -14123i, var_2.c.a.x, -4551i), vec4<i32>(-797i, u_input.a, 54546i, -13409i), true) << (countOneBits(vec4<u32>(4294967295u, 1u, 0u, u_input.b)) % vec4<u32>(32u)), vec4<i32>(-1i, -u_input.c, -1i, -3314i));
    let x = u_input.a;
    s_output = StorageBuffer(abs(countOneBits(min(~vec3<u32>(4968u, var_0, 0u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, var_0, 1u), vec3<u32>(0u, var_0, var_0), vec3<u32>(0u, 4294967295u, 1u))))));
}

