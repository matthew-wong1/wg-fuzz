struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec3<bool>,
    d: vec4<u32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: u32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_2, 22>;

var<private> global2: vec3<f32> = vec3<f32>(1018f, -135f, -1491f);

var<private> global3: vec3<i32> = vec3<i32>(2147483647i, 1i, -39840i);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> bool {
    global0 = u_input.e.x;
    var var_0 = Struct_3(~abs(~u_input.c.zyx), Struct_1(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false)), vec3<bool>(all(vec2<bool>(true, true)), any(vec3<bool>(false, true, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false))), false, select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false), vec3<bool>(false, false, true)), true), ~vec4<u32>(1u, _wgslsmith_sub_u32(23859u, 1u), ~u_input.e.x, 37114u), i32(-1i) * -2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(global3.x, ~u_input.d.x, -26409i, 1i) | -_wgslsmith_sub_vec4_i32(vec4<i32>(global3.x, global3.x, -35321i, 0i), vec4<i32>(global3.x, -1i, u_input.d.x, -43204i)), select(vec4<i32>(u_input.d.x | -19349i, ~global3.x, select(23963i, 68799i, false), _wgslsmith_mult_i32(-7465i, -43286i)), -vec4<i32>(0i, u_input.d.x, global3.x, global3.x), select(true, true, true))), vec2<u32>(~_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.b, u_input.a), u_input.c.x), 4294967295u), vec2<bool>(true, 2147483647i <= u_input.d.x));
    let var_1 = ~min(u_input.c, vec4<u32>(firstTrailingBit(1u) & u_input.a, var_0.a.x, abs(_wgslsmith_div_u32(u_input.a, u_input.b)), 4294967295u));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(select(-593f, -3338f, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -350f) * _wgslsmith_f_op_f32(round(global2.x))))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(floor(global2.xx));
    return (false & var_0.b.c.x) || all(select(vec3<bool>(false, true, false), vec3<bool>(!var_0.e.x, var_0.b.b & var_0.e.x, false), select(var_0.b.c, vec3<bool>(var_0.e.x, var_0.e.x, true), var_0.e.x)));
}

fn func_2(arg_0: vec4<u32>) -> u32 {
    var var_0 = -114f;
    var var_1 = Struct_1(select(vec3<bool>(all(vec4<bool>(true, true, true, true)), !func_3(), !all(vec3<bool>(false, false, false))), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.x))) != _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -613f)))), false, !(!(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false))), vec4<u32>(1u, u_input.c.x, _wgslsmith_dot_vec2_u32(~countOneBits(arg_0.xw), arg_0.zz), arg_0.x), -u_input.d.x);
    var var_2 = false;
    var_0 = 1203f;
    let var_3 = global2.x;
    return _wgslsmith_dot_vec4_u32(~abs(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.d.x, 70656u, u_input.c.x, var_1.d.x), var_1.d)), ~(~(~var_1.d))) << (_wgslsmith_div_u32(arg_0.x | (firstTrailingBit(var_1.d.x) ^ firstTrailingBit(0u)), ~15042u) % 32u);
}

fn func_1() -> vec3<bool> {
    global0 = func_2(u_input.c) ^ ~u_input.b;
    let var_0 = Struct_1(vec3<bool>(all(vec4<bool>(true, true, true, true)), func_3(), !any(vec2<bool>(true, true))), 1i >= firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, global3.x, -2147483647i, 59729i), _wgslsmith_sub_vec4_i32(vec4<i32>(global3.x, 2147483647i, 23372i, global3.x), vec4<i32>(u_input.d.x, 1i, u_input.d.x, global3.x)))), vec3<bool>(false, any(vec3<bool>(false, true, true)) & any(select(vec2<bool>(true, true), vec2<bool>(false, false), true)), !any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true)))), countOneBits(abs(_wgslsmith_sub_vec4_u32(u_input.c, u_input.c))), -13731i);
    let var_1 = abs(firstLeadingBit(_wgslsmith_clamp_vec3_i32(u_input.d | vec3<i32>(u_input.d.x, global3.x, u_input.d.x), -_wgslsmith_mod_vec3_i32(u_input.d, vec3<i32>(global3.x, 2147483647i, -35055i)), u_input.d)));
    global0 = firstTrailingBit(var_0.d.x);
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global2.x, 833f, _wgslsmith_f_op_f32(min(-749f, -1000f))))));
    return select(select(!(!(!vec3<bool>(false, false, var_0.b))), !var_0.c, !select(!vec3<bool>(true, false, var_0.b), !var_0.c, vec3<bool>(var_0.c.x, true, false))), select(select(var_0.a, !select(var_0.a, vec3<bool>(var_0.a.x, false, var_0.a.x), vec3<bool>(true, true, var_0.b)), all(vec2<bool>(false, true))), select(select(select(var_0.c, vec3<bool>(var_0.a.x, false, var_0.a.x), true), select(vec3<bool>(false, true, false), var_0.a, vec3<bool>(var_0.b, var_0.b, false)), !vec3<bool>(var_0.b, false, var_0.c.x)), !select(var_0.c, var_0.a, var_0.a), !(true || var_0.c.x)), ~_wgslsmith_add_u32(var_0.d.x, 4294967295u) < 1u), !select(var_0.c, vec3<bool>(true, any(var_0.a.yx), !var_0.c.x), true));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec3<i32>) -> vec3<u32> {
    let var_0 = Struct_3((arg_1.d.wwz & vec3<u32>(4294967295u, _wgslsmith_add_u32(4294967295u, arg_1.d.x), arg_1.d.x)) >> (vec3<u32>(_wgslsmith_add_u32(1u, arg_1.d.x), countOneBits(arg_1.d.x), (arg_1.d.x | 4294967295u) ^ _wgslsmith_add_u32(u_input.c.x, 1u)) % vec3<u32>(32u)), arg_1, max(vec4<i32>(1i, _wgslsmith_div_i32(_wgslsmith_div_i32(u_input.d.x, -2147483647i), select(global3.x, arg_2.x, false)), _wgslsmith_add_i32(_wgslsmith_sub_i32(12209i, arg_1.e), arg_1.e), -arg_1.e), _wgslsmith_sub_vec4_i32(~vec4<i32>(arg_2.x, 2147483647i, -6412i, -18935i), _wgslsmith_sub_vec4_i32(-vec4<i32>(57951i, 76420i, 0i, 2147483647i), vec4<i32>(41194i, arg_1.e, u_input.d.x, -3887i)))), ~arg_1.d.zw | reverseBits(~vec2<u32>(9235u, u_input.a) ^ ~vec2<u32>(arg_1.d.x, u_input.a)), !(!(!select(arg_1.a.xy, arg_1.c.zy, vec2<bool>(false, arg_1.a.x)))));
    var var_1 = arg_1.a.xx;
    let var_2 = abs(~u_input.c.x);
    var var_3 = global1[_wgslsmith_index_u32(~u_input.b, 22u)];
    var var_4 = Struct_3(var_0.a, arg_1, select((var_0.c & _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, arg_1.e, arg_2.x, u_input.d.x), var_0.c)) | vec4<i32>(countOneBits(2147483647i), _wgslsmith_mod_i32(u_input.d.x, arg_2.x), arg_2.x, i32(-1i) * -20354i), vec4<i32>(arg_1.e, (global3.x << (arg_1.d.x % 32u)) << ((0u ^ var_2) % 32u), i32(-1i) * -30630i, _wgslsmith_clamp_i32(~2147483647i, var_0.c.x, -53306i)), select(select(true, true, any(vec4<bool>(false, false, arg_1.c.x, var_0.e.x))), select(true, arg_1.c.x, 1000f != arg_0), func_1().x && true)), var_0.b.d.zx, vec2<bool>(true, -1i <= global3.x));
    return abs(arg_1.d.xxx >> (vec3<u32>(var_4.a.x, ~(var_2 & 1u), ~_wgslsmith_add_u32(4294967295u, arg_1.d.x)) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 22>();
    global0 = abs(u_input.a);
    global3 = reverseBits(vec3<i32>(u_input.d.x, global3.x, _wgslsmith_add_i32(u_input.d.x, 581i)));
    let var_0 = countOneBits(vec3<u32>(4294967295u, 11751u, ~1u)) & func_4(-679f, Struct_1(func_1(), true, func_1(), _wgslsmith_clamp_vec4_u32(~vec4<u32>(3101u, u_input.c.x, 4294967295u, 10577u), ~u_input.c, vec4<u32>(u_input.e.x, u_input.b, u_input.e.x, u_input.e.x)), 0i), ~select(_wgslsmith_clamp_vec3_i32(u_input.d, u_input.d, vec3<i32>(global3.x, -1i, global3.x)), u_input.d, func_1()));
    let var_1 = Struct_3(~(vec3<u32>(~var_0.x, ~0u, ~4294967295u) ^ _wgslsmith_mult_vec3_u32(select(vec3<u32>(u_input.b, 10018u, u_input.c.x), vec3<u32>(2664u, 38315u, u_input.b), vec3<bool>(false, false, false)), u_input.e & var_0)), Struct_1(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), _wgslsmith_dot_vec2_i32(-vec2<i32>(-38381i, global3.x), vec2<i32>(u_input.d.x, u_input.d.x) | global3.xy) != 2147483647i, !func_1(), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(firstLeadingBit(u_input.c), u_input.c >> (u_input.c % vec4<u32>(32u))), u_input.c), ~u_input.d.x), select(countOneBits(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, 2147483647i, u_input.d.x, -26381i), vec4<i32>(global3.x, 39143i, -1i, u_input.d.x)), vec4<i32>(13411i, u_input.d.x, u_input.d.x, 44823i), vec4<i32>(1i, 1i, 1i, 1i))), ~select(vec4<i32>(1i, u_input.d.x, u_input.d.x, global3.x), vec4<i32>(global3.x, 0i, -7067i, -18169i), false) ^ vec4<i32>(~global3.x, global3.x >> (26790u % 32u), global3.x ^ global3.x, abs(u_input.d.x)), (func_1().x & any(vec4<bool>(true, false, true, false))) == true), u_input.c.xx, select(vec2<bool>(1835f > global2.x, true), vec2<bool>(true, true), true));
    global2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(217f, 273f, 806f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, global2.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2.x, global2.x, global2.x), vec3<f32>(-964f, -247f, 2255f)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(829f, 1143f, global2.x), vec3<f32>(448f, global2.x, 1388f)) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(2024f, 288f, global2.x) * vec3<f32>(global2.x, global2.x, global2.x)), vec3<f32>(247f, global2.x, global2.x))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, global2.x) * vec3<f32>(-801f, global2.x, global2.x)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, global2.x, -1615f))))))), vec3<f32>(1505f, -1000f, _wgslsmith_div_f32(-3194f, global2.x)))));
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(812f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-2395f)) - global2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-641f)) + -583f)))));
    let var_2 = var_1.e;
    let var_3 = Struct_1(vec3<bool>(true, !(false || (true || var_2.x)), !(!var_2.x)), var_1.e.x, !vec3<bool>(all(!var_2), true, all(vec3<bool>(false, var_2.x, false))), u_input.c, -1i);
    let x = u_input.a;
    s_output = StorageBuffer(max(reverseBits(firstLeadingBit(u_input.c)), vec4<u32>(38194u, ~(~4294967295u), var_3.d.x | 1u, _wgslsmith_clamp_u32(var_0.x, u_input.a, abs(2852u)))), var_0.yx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.x, global2.x, -188f), vec3<f32>(global2.x, global2.x, -1327f), var_1.b.c)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(446f, -1722f, global2.x), vec3<f32>(-495f, -1599f, global2.x), false)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, 806f, global2.x)) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(559f, 1000f, global2.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -2135f, -1024f)))))));
}

