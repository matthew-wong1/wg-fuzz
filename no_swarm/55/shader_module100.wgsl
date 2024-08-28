struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: vec2<bool>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: i32,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(65926u, 0u);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: Struct_3) -> f32 {
    let var_0 = -_wgslsmith_div_i32(firstTrailingBit(u_input.a.x), arg_0.d);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(arg_0.c.c)))) - _wgslsmith_f_op_vec4_f32(-arg_0.c.c));
    global0 = ~select(vec2<u32>(~global0.x, 4294967295u) >> (vec2<u32>(10910u, select(4294967295u, arg_0.c.b.x, true)) % vec2<u32>(32u)), ~vec2<u32>(u_input.b.x, ~u_input.b.x), arg_0.a.d.x);
    var var_2 = vec2<bool>(arg_0.c.a.d.x, arg_0.c.a.d.x);
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -831f), _wgslsmith_f_op_f32(abs(arg_0.c.c.x)), _wgslsmith_div_f32(504f, arg_0.a.b.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -378f), var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -632f))) * _wgslsmith_f_op_vec3_f32(-arg_0.c.c.yww)));
    return arg_0.a.b.x;
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: Struct_5, arg_3: f32) -> u32 {
    return 42591u;
}

fn func_2() -> Struct_3 {
    var var_0 = false;
    global0 = u_input.b.zz;
    global0 = max(u_input.b.yx, select(vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.b.x, 4294967295u), 38180u, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(0u, global0.x, global0.x))), ~(~0u)), vec2<u32>(func_3(_wgslsmith_div_vec2_f32(vec2<f32>(1332f, -785f), vec2<f32>(148f, -339f)), u_input.a, Struct_5(Struct_1(vec2<i32>(u_input.a.x, -32151i), vec2<f32>(-883f, 1537f), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec2<bool>(true, false), 1i), Struct_2(Struct_1(u_input.a, vec2<f32>(-533f, 1113f), vec3<i32>(u_input.a.x, 0i, u_input.a.x), vec2<bool>(false, true), u_input.a.x), u_input.b.xy, vec4<f32>(-356f, 1000f, -252f, 1314f))), _wgslsmith_f_op_f32(-1721f - 192f)), (global0.x >> (7037u % 32u)) | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 16208u), vec2<u32>(4294967295u, 6589u))), select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, true), true), any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))))));
    var var_1 = Struct_4(~firstTrailingBit(~countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), Struct_2(Struct_1(_wgslsmith_clamp_vec2_i32(u_input.a, u_input.a, u_input.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(498f, -1000f) * vec2<f32>(-111f, -633f))), _wgslsmith_mult_vec3_i32(select(vec3<i32>(u_input.a.x, -51025i, -1i), vec3<i32>(u_input.a.x, -36488i, u_input.a.x), vec3<bool>(false, true, true)), select(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(-2147483647i, u_input.a.x, 43189i), vec3<bool>(true, true, true))), vec2<bool>(true, any(vec2<bool>(false, false))), u_input.a.x), _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b.yx, _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, global0.x), u_input.b.yz)), abs(u_input.b.zx)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1854f, _wgslsmith_f_op_f32(round(-1081f)), -1408f, _wgslsmith_f_op_f32(floor(1000f)))))), Struct_2(Struct_1(u_input.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(925f, -488f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-213f, 737f))), _wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, 37116i, u_input.a.x), vec3<i32>(24519i, u_input.a.x, 52905i), vec3<i32>(-1i, -1i, u_input.a.x))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), -19520i), vec2<u32>(0u, select(0u, ~global0.x, false)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2262f, 704f, 1734f, 1132f), vec4<f32>(1816f, 331f, -920f, 1592f), vec4<bool>(false, true, true, true)))))))));
    var_1 = Struct_4(~vec4<i32>(_wgslsmith_mult_i32(min(25160i, var_1.c.a.c.x), 10298i), max(-6584i, var_1.a.x), -_wgslsmith_mod_i32(16948i, -35432i), u_input.a.x), Struct_2(var_1.b.a, vec2<u32>(1u, 30127u), vec4<f32>(var_1.b.a.b.x, 386f, var_1.b.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(282f - -215f) * 1253f))), Struct_2(Struct_1(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-1599i, -2147483647i), var_1.c.a.a), ~var_1.b.a.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_1.c.a.b)) * _wgslsmith_f_op_vec2_f32(-var_1.b.a.b)), _wgslsmith_sub_vec3_i32(var_1.c.a.c >> (vec3<u32>(1u, 84768u, global0.x) % vec3<u32>(32u)), var_1.b.a.c), !vec2<bool>(var_1.b.a.d.x, var_1.b.a.d.x), var_1.b.a.c.x), u_input.b.zy, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-266f, var_1.b.a.b.x, 261f, var_1.c.c.x))))), vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.c.x), 656f, _wgslsmith_f_op_f32(f32(-1f) * -2088f), _wgslsmith_f_op_f32(func_1(Struct_3(var_1.c.a, var_1.c.a, var_1.b, u_input.a.x, vec4<u32>(32567u, var_1.c.b.x, var_1.c.b.x, 1u)))))))));
    return Struct_3(var_1.c.a, Struct_1(vec2<i32>(~var_1.c.a.c.x, 2147483647i), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.c.c.x, var_1.b.a.b.x)))), var_1.b.c.xx)), vec3<i32>(reverseBits(-2147483647i >> (u_input.b.x % 32u)), max(min(u_input.a.x, u_input.a.x), var_1.a.x), 1i), select(vec2<bool>(var_1.c.a.c.x <= var_1.c.a.a.x, true), select(vec2<bool>(false, false), var_1.b.a.d, any(vec2<bool>(var_1.b.a.d.x, var_1.c.a.d.x))), select(select(var_1.c.a.d, var_1.c.a.d, true), vec2<bool>(var_1.c.a.d.x, true), true)), var_1.c.a.a.x), var_1.b, var_1.b.a.e, ~vec4<u32>(abs(global0.x), u_input.b.x, u_input.b.x, u_input.b.x));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: vec4<f32>, arg_3: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-arg_3.c.c.xyw);
    let var_1 = Struct_4(select(-_wgslsmith_mod_vec4_i32(max(vec4<i32>(u_input.a.x, arg_0.x, -2147483647i, 12121i), vec4<i32>(30180i, -2147483647i, -2147483647i, -5376i)), ~vec4<i32>(45783i, 35507i, arg_3.d, 20494i)), vec4<i32>(_wgslsmith_mod_i32(max(u_input.a.x, arg_3.b.e), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_3.b.c.x, 7893i), vec2<i32>(arg_0.x, u_input.a.x))), arg_0.x, _wgslsmith_mod_i32(83231i, ~0i), -_wgslsmith_mult_i32(-2147483647i, arg_3.b.e)), select(vec4<bool>(arg_3.c.a.d.x, !arg_3.b.d.x, !arg_3.a.d.x, true), !select(vec4<bool>(arg_3.a.d.x, false, arg_3.c.a.d.x, arg_3.c.a.d.x), vec4<bool>(true, true, true, arg_3.b.d.x), vec4<bool>(false, true, arg_3.c.a.d.x, true)), vec4<bool>(!arg_3.c.a.d.x, arg_3.b.d.x, !arg_3.c.a.d.x, any(vec2<bool>(false, arg_3.a.d.x))))), arg_3.c, arg_3.c);
    var var_2 = _wgslsmith_sub_vec2_i32(vec2<i32>(-1i >> (0u % 32u), u_input.a.x | -1i), -arg_0.yy);
    global0 = ~var_1.c.b;
    let var_3 = all(vec4<bool>(any(!(!vec4<bool>(var_1.b.a.d.x, var_1.b.a.d.x, var_1.b.a.d.x, arg_3.a.d.x))), var_1.c.a.d.x, true, false));
    return arg_3.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -44953i;
    var var_1 = func_4(vec3<i32>(_wgslsmith_sub_i32(u_input.a.x, -2147483647i) >> (31850u % 32u), -u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-598f, _wgslsmith_f_op_f32(select(-145f, _wgslsmith_f_op_f32(2265f - -918f), false)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1(Struct_3(Struct_1(vec2<i32>(1i, u_input.a.x), vec2<f32>(-1495f, -631f), vec3<i32>(u_input.a.x, var_0, 0i), vec2<bool>(true, false), 71253i), Struct_1(u_input.a, vec2<f32>(768f, -2766f), vec3<i32>(var_0, 1i, u_input.a.x), vec2<bool>(false, false), 0i), Struct_2(Struct_1(vec2<i32>(0i, 0i), vec2<f32>(818f, -187f), vec3<i32>(var_0, var_0, u_input.a.x), vec2<bool>(false, true), 0i), vec2<u32>(global0.x, u_input.b.x), vec4<f32>(-409f, -613f, 626f, 244f)), 2147483647i, vec4<u32>(global0.x, u_input.b.x, 4294967295u, global0.x)))), 178f, _wgslsmith_f_op_f32(-1898f + _wgslsmith_f_op_f32(f32(-1f) * -614f)), _wgslsmith_f_op_f32(f32(-1f) * -1742f))), func_2());
    global0 = _wgslsmith_mod_vec2_u32(~(~u_input.b.zx) >> (~_wgslsmith_mod_vec2_u32(~u_input.b.xz, abs(u_input.b.yz)) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(select(~vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(1u, 22995u), select(var_1.d, func_2().c.a.d, true)), ~((u_input.b.yx | u_input.b.zx) << (vec2<u32>(u_input.b.x, 72441u) % vec2<u32>(32u)))));
    let var_2 = -_wgslsmith_add_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, var_1.c.x, var_1.c.x, var_0), vec4<i32>(16777i, 48462i, 1i, 0i)) | 1i, var_1.a.x);
    var_1 = Struct_1(vec2<i32>(~select(~var_1.e, _wgslsmith_sub_i32(var_1.e, u_input.a.x), true), _wgslsmith_mod_i32(1i, var_2)), _wgslsmith_f_op_vec2_f32(var_1.b * var_1.b), _wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(-38736i, -18754i, -1851i)), max(vec3<i32>(var_0, select(var_2, -2147483647i, false), var_1.e), vec3<i32>(i32(-1i) * -8856i, var_2, _wgslsmith_add_i32(-1991i, var_1.c.x)))), vec2<bool>(var_1.d.x, true), 2147483647i);
    var var_3 = 1u;
    let var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1716f, _wgslsmith_f_op_f32(226f - 1096f))) * _wgslsmith_f_op_f32(func_1(func_2()))), 1f));
}

