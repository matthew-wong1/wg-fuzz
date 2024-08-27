struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: Struct_2) -> i32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1597f)))), _wgslsmith_f_op_f32(1000f * 883f))));
    let var_1 = arg_2;
    let var_2 = 138f;
    let var_3 = select(!select((var_1.a & arg_2.a) != var_1.a, any(select(vec2<bool>(true, false), vec2<bool>(arg_2.a, true), false)), true), !any(!(!vec3<bool>(false, arg_2.a, true))), true);
    let var_4 = var_1;
    return -15935i;
}

fn func_2() -> Struct_2 {
    var var_0 = vec2<i32>(~_wgslsmith_clamp_i32(_wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.b, u_input.b), u_input.b), u_input.b, -2147483647i), 34562i & _wgslsmith_sub_i32(_wgslsmith_mult_i32(-u_input.b, func_3(vec3<u32>(1u, u_input.a.x, u_input.a.x), u_input.a.xx, Struct_2(true, vec2<i32>(-19851i, -23834i), u_input.a, 1u, -20613i))), (i32(-1i) * -1i) ^ _wgslsmith_clamp_i32(u_input.b, 2493i, 6603i)));
    var_0 = ~vec2<i32>(1i, var_0.x);
    var var_1 = select(any(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), false), vec4<bool>(true, false, true, true))), true && select(true || all(vec3<bool>(false, false, false)), all(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false))), true), var_0.x < _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, -63666i, var_0.x, u_input.b), min(vec4<i32>(u_input.b, 2147483647i, -1i, var_0.x), vec4<i32>(u_input.b, var_0.x, 5882i, var_0.x))), firstTrailingBit(-vec4<i32>(1926i, 13049i, u_input.b, var_0.x))));
    let var_2 = Struct_5(Struct_4(Struct_2(all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), ~(~vec2<i32>(u_input.b, var_0.x)), vec3<u32>(min(0u, 4294967295u), ~4294967295u, ~44690u), 7385u, countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.b), vec2<i32>(u_input.b, var_0.x)))), reverseBits(-2147483647i) & var_0.x, 23277i), Struct_3(max(var_0.x, _wgslsmith_mult_i32(var_0.x, _wgslsmith_clamp_i32(var_0.x, 1i, -2147483647i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1205f, -1988f, -187f, -831f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 267f, -348f, 592f))))), Struct_4(Struct_2(any(vec3<bool>(true, false, false)) & false, select(vec2<i32>(var_0.x, -5124i), -vec2<i32>(u_input.b, u_input.b), any(vec2<bool>(true, true))), _wgslsmith_add_vec3_u32(vec3<u32>(13948u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 30985u, u_input.a.x)), ~u_input.a.x, _wgslsmith_sub_i32(var_0.x, abs(-2147483647i))), u_input.b, ~max(49658i & var_0.x, -u_input.b)));
    var var_3 = u_input.b;
    return Struct_2(false, vec2<i32>(~(~(~(-5449i))), i32(-1i) * -(var_0.x << (var_2.a.a.d % 32u))), var_2.a.a.c, var_2.c.a.c.x, func_3(var_2.c.a.c, vec2<u32>(2595u, max(_wgslsmith_add_u32(5043u, var_2.a.a.d), _wgslsmith_mult_u32(u_input.a.x, u_input.a.x))), var_2.c.a));
}

fn func_4(arg_0: Struct_4) -> Struct_5 {
    var var_0 = select(vec3<i32>(u_input.b, max(func_2().e, ~(~arg_0.b)), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.c, u_input.b, 13984i, 0i), vec4<i32>(0i, -19801i, -1i, 0i)), abs(vec4<i32>(u_input.b, u_input.b, arg_0.c, 1i))), _wgslsmith_clamp_i32(~1i, max(arg_0.a.b.x, 25217i), -60243i))), firstTrailingBit(_wgslsmith_div_vec3_i32(countOneBits(min(vec3<i32>(u_input.b, -1080i, u_input.b), vec3<i32>(arg_0.a.b.x, -1i, u_input.b))), vec3<i32>(arg_0.b, arg_0.b >> (arg_0.a.c.x % 32u), _wgslsmith_mult_i32(-1i, arg_0.b)))), vec3<bool>(true, !all(vec3<bool>(arg_0.a.a, arg_0.a.a, true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f + 1454f))) >= _wgslsmith_f_op_f32(abs(1f))));
    var var_1 = -2434f;
    var_0 = vec3<i32>(24490i, firstLeadingBit(u_input.b), arg_0.a.b.x);
    var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -1883f) + 181f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-565f * 281f))))));
    var_0 = -abs(min(vec3<i32>(-1i) * -vec3<i32>(u_input.b, u_input.b, -54200i), _wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(-2147483647i, var_0.x, u_input.b)), ~vec3<i32>(var_0.x, arg_0.a.e, var_0.x))));
    return Struct_5(Struct_4(Struct_2(any(!vec2<bool>(arg_0.a.a, false)), -vec2<i32>(4637i, var_0.x), vec3<u32>(1u, arg_0.a.d, u_input.a.x), _wgslsmith_div_u32(~u_input.a.x, 56339u), 2147483647i), abs(_wgslsmith_dot_vec3_i32(-vec3<i32>(-11784i, var_0.x, var_0.x), abs(vec3<i32>(arg_0.a.e, -4505i, 1i)))), -max(~var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 1i, -1i, var_0.x), vec4<i32>(1i, -1i, 2147483647i, var_0.x)))), Struct_3(37327i, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-499f * -1020f), -2088f, -255f, _wgslsmith_f_op_f32(-1996f - 1610f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1382f, 1254f, -523f, 637f) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, 481f, 1218f, -755f)))), !select(vec4<bool>(false, true, arg_0.a.a, true), vec4<bool>(false, false, true, arg_0.a.a), arg_0.a.a)))), Struct_4(arg_0.a, -var_0.x, arg_0.b));
}

fn func_1(arg_0: vec2<bool>) -> bool {
    var var_0 = func_4(Struct_4(func_2(), abs(u_input.b), firstLeadingBit(u_input.b)));
    var var_1 = 1u << (u_input.a.x % 32u);
    var var_2 = var_0.b.b.x;
    var_1 = u_input.a.x ^ reverseBits(~min(_wgslsmith_mod_u32(92330u, 1109u), _wgslsmith_div_u32(u_input.a.x, u_input.a.x)));
    var_0 = func_4(var_0.c);
    return true;
}

fn func_5(arg_0: bool) -> Struct_4 {
    var var_0 = select(u_input.a.yx, vec2<u32>(u_input.a.x, u_input.a.x) | func_4(Struct_4(Struct_2(arg_0, vec2<i32>(u_input.b, u_input.b), vec3<u32>(4294967295u, 85523u, 1u), u_input.a.x, 25196i), _wgslsmith_add_i32(52108i, u_input.b), -19210i)).c.a.c.zz, all(vec3<bool>(arg_0, arg_0, true)));
    return func_4(Struct_4(func_2(), -40834i, -(~_wgslsmith_mod_i32(22138i, u_input.b)))).c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(!func_1(vec2<bool>(true, false)));
    let var_1 = vec4<bool>(var_0.a.a, var_0.a.a, true, false);
    var_0 = Struct_4(func_2(), func_3(var_0.a.c, ~var_0.a.c.yx, func_2()), ~(~(~(-17576i))));
    let var_2 = min(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 0u, 1u, 11259u), vec4<u32>(u_input.a.x, 113515u, 17854u, 0u)), ~select(vec4<u32>(34509u, var_0.a.d, 4294967295u, u_input.a.x), vec4<u32>(3747u, 1u, 34571u, 1u), true), max(~vec4<u32>(var_0.a.d, u_input.a.x, 0u, var_0.a.c.x), ~vec4<u32>(4294967295u, 4294967295u, 0u, 84475u))), ~vec4<u32>(~var_0.a.d, var_0.a.c.x & var_0.a.d, 33568u, 4294967295u)) | ~vec4<u32>(98688u, 0u, 1u, var_0.a.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-586f - -195f)))));
}

