struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec3<bool>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: u32,
    b: vec4<f32>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-511f, -263f, -1952f, 1746f) * vec4<f32>(-311f, -1042f, 386f, 299f)))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(767f, 624f, 631f, 424f)))))))));
    global0 = !all(select(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false), select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false), all(vec3<bool>(false, true, false))), vec3<bool>(true, select(false, true, true), any(vec4<bool>(false, true, true, false)))));
    var var_1 = ~u_input.b.xwx;
    global0 = true;
    var_1 = abs(_wgslsmith_add_vec3_i32(vec3<i32>(-(9615i >> (1u % 32u)), -8711i, ~var_1.x), vec3<i32>(var_1.x, reverseBits(var_1.x), 1i)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, -1218f, var_0.x, var_0.x)))), var_0))) - vec4<f32>(1326f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.x + -263f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(284f, var_0.x, false)) - var_0.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * 628f)));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3()));
    let var_1 = -2147483647i;
    global0 = any(!(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), true))));
    var var_2 = true;
    let var_3 = _wgslsmith_div_u32(1u, select(max(5469u >> (1u % 32u), _wgslsmith_div_u32(~2960u, ~39403u)), 4294967295u >> (1u % 32u), all(vec3<bool>(true, true, true))));
    return Struct_1(99908u, _wgslsmith_mult_vec3_u32(~(~vec3<u32>(41398u, 1u, var_3)), ~(~_wgslsmith_div_vec3_u32(vec3<u32>(var_3, 4294967295u, 0u), vec3<u32>(var_3, 1u, 37744u)))), vec3<bool>(true, all(vec3<bool>(true, true, true)), all(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)))), -1i);
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> vec4<bool> {
    let var_0 = Struct_4(vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, arg_0.d, 2147483647i, 57054i) >> (vec4<u32>(arg_0.b.x, 9230u, 38497u, arg_0.a) % vec4<u32>(32u))), firstTrailingBit(reverseBits(vec4<i32>(27400i, -2147483647i, -2147483647i, -1i)))), min(abs(24031i), _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, 0i, u_input.b.x, u_input.b.x), u_input.b >> (vec4<u32>(1u, 88947u, 0u, arg_0.a) % vec4<u32>(32u)))), arg_0.d));
    var var_1 = true;
    global0 = !(true || any(!select(arg_0.c.yx, arg_0.c.zz, arg_2)));
    var var_2 = _wgslsmith_f_op_f32(min(-562f, _wgslsmith_f_op_f32(step(-206f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1381f * -558f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(334f, 942f) - -308f)))))));
    var var_3 = Struct_2(func_2());
    return !(!vec4<bool>(true, all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, arg_0.c.x, true, var_3.a.c.x), vec4<bool>(true, false, true, var_3.a.c.x))), all(select(vec4<bool>(var_3.a.c.x, arg_0.c.x, arg_2, false), vec4<bool>(var_3.a.c.x, var_3.a.c.x, var_3.a.c.x, false), vec4<bool>(false, arg_0.c.x, arg_2, arg_2))), countOneBits(4294967295u) > ~arg_0.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_1(Struct_1(~(~9129u), vec3<u32>(0u, ~9964u, select(15934u, 1u, true)), vec3<bool>(true, true, true), u_input.a.x), _wgslsmith_dot_vec4_i32(select(u_input.b, _wgslsmith_clamp_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, -62702i, 2831i, -20888i), vec4<i32>(-18423i, u_input.b.x, u_input.b.x, -1i)), false), -vec4<i32>(u_input.b.x, 1i, u_input.a.x, u_input.b.x)), true);
    var var_1 = _wgslsmith_mod_u32(abs(~1u), ~_wgslsmith_sub_u32(~0u, _wgslsmith_clamp_u32(72076u, 52287u, 1u)) << (0u % 32u));
    let var_2 = vec3<u32>(~4282u, 1u, 0u ^ _wgslsmith_dot_vec2_u32(~vec2<u32>(61475u, 8964u), select(max(vec2<u32>(0u, 65934u), vec2<u32>(20425u, 117429u)), vec2<u32>(1u, 1u), !var_0.xx)));
    var_0 = !select(!select(!vec4<bool>(var_0.x, true, var_0.x, true), vec4<bool>(true, true, true, true), !vec4<bool>(true, var_0.x, var_0.x, var_0.x)), select(select(!vec4<bool>(false, false, var_0.x, false), vec4<bool>(var_0.x, false, var_0.x, var_0.x), var_0.x), vec4<bool>(14018u <= var_2.x, !var_0.x, !var_0.x, all(vec3<bool>(false, var_0.x, var_0.x))), all(select(var_0.wxx, vec3<bool>(true, true, false), var_0.x))), !vec4<bool>(func_2().c.x, var_0.x | true, u_input.b.x <= u_input.a.x, true));
    let var_3 = Struct_4(reverseBits(abs(u_input.b.zyx)));
    var_0 = select(vec4<bool>((var_2.x < _wgslsmith_add_u32(35243u, var_2.x)) || func_1(func_2(), abs(var_3.a.x), any(vec2<bool>(var_0.x, false))).x, func_1(Struct_1(max(1u, 41028u), var_2 << (var_2 % vec3<u32>(32u)), func_2().c, u_input.b.x), -2147483647i, (var_2.x >= 26856u) | false).x, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, 52820i), vec2<i32>(2147483647i, u_input.b.x)), vec2<i32>(2490i, u_input.b.x)) == func_2().d, !(var_0.x | select(true, true, false))), select(select(!(!vec4<bool>(var_0.x, true, true, false)), !select(vec4<bool>(false, false, var_0.x, true), vec4<bool>(var_0.x, true, false, true), vec4<bool>(var_0.x, false, false, false)), countOneBits(38388i) == var_3.a.x), !vec4<bool>(func_2().c.x, select(var_0.x, var_0.x, true), false, var_2.x > var_2.x), !vec4<bool>(all(var_0.zy), false, false, var_0.x)), false);
    var var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(var_2.x, ~8245u, firstTrailingBit(~(~16664u))), -1000f);
}

