struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_2,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32) -> bool {
    let var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(abs(1u), _wgslsmith_mod_u32(1u, ~1u), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(61021u, 20406u, 16063u, 62564u)), vec4<u32>(12683u, 8799u, 1u, ~96864u)), max(19254u, 37501u)), ~vec4<u32>(~1u, 1u, abs(~0u), ~firstTrailingBit(1u)));
    global0 = select(vec2<bool>(true, any(vec3<bool>(global0.x, false, global0.x)) != global0.x), vec2<bool>(any(!(!vec4<bool>(global0.x, true, global0.x, false))), true), select(vec2<bool>(global0.x, var_0.x == (var_0.x ^ 81157u)), vec2<bool>(~var_0.x <= ~var_0.x, global0.x), any(!(!vec3<bool>(true, true, global0.x)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -140f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(610f)), _wgslsmith_f_op_f32(min(1000f, 749f)))))), 1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(223f * -1675f))))));
    global0 = vec2<bool>(!global0.x, !(~(1u & var_0.x) < 0u));
    global0 = vec2<bool>(-_wgslsmith_mod_i32(abs(1i), _wgslsmith_dot_vec4_i32(u_input.a, u_input.a)) < -(~0i), true);
    return !(!global0.x) | !global0.x;
}

fn func_2() -> Struct_4 {
    global0 = !vec2<bool>(!func_3(_wgslsmith_mod_i32(1i, u_input.a.x)), false);
    let var_0 = _wgslsmith_clamp_vec2_i32(u_input.a.yw, select(vec2<i32>(0i, countOneBits(-40991i)), -u_input.a.zy, any(!(!vec3<bool>(true, false, global0.x)))), _wgslsmith_mult_vec2_i32(u_input.a.yx, reverseBits(_wgslsmith_clamp_vec2_i32(u_input.a.wx << (vec2<u32>(0u, 29817u) % vec2<u32>(32u)), firstTrailingBit(vec2<i32>(u_input.a.x, u_input.a.x)), abs(u_input.a.yx)))));
    global0 = !vec2<bool>(global0.x, 4615i != (_wgslsmith_mult_i32(var_0.x, var_0.x) | -u_input.a.x));
    let var_1 = select(vec3<bool>(!any(!vec3<bool>(true, false, global0.x)), all(vec3<bool>(any(vec2<bool>(false, global0.x)), false && global0.x, !global0.x)), !(func_3(u_input.a.x) || (u_input.a.x > var_0.x))), !vec3<bool>(!global0.x, all(select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, true), vec2<bool>(false, global0.x))), select(!global0.x, true, !global0.x)), vec3<bool>(!(!global0.x), !global0.x != (_wgslsmith_sub_i32(u_input.a.x, 65796i) < _wgslsmith_clamp_i32(23156i, var_0.x, var_0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1572f, 139f)))) <= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -308f), _wgslsmith_f_op_f32(-1062f * -962f)))));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-1501f + _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1533f, _wgslsmith_f_op_f32(sign(-639f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -319f))))), false, Struct_2(-2147483647i), Struct_2(_wgslsmith_mult_i32(-1i, abs(max(u_input.a.x, 76698i)))));
    return Struct_4(Struct_1(var_2.b, var_2.b, firstTrailingBit(firstTrailingBit(u_input.a.x << (0u % 32u))), u_input.a.yx), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-415f, 1177f)))), var_2.a, _wgslsmith_f_op_f32(trunc(var_2.a)), _wgslsmith_f_op_f32(min(var_2.a, -161f)))), var_2.c, 1u, 3460u << (~(~(~4294967295u)) % 32u));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec3<u32>) -> vec2<bool> {
    var var_0 = func_2();
    let var_1 = u_input.a.x <= ~24207i;
    var var_2 = func_2().c;
    let var_3 = abs(_wgslsmith_add_vec3_i32(vec3<i32>(-30475i, arg_0.c, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-26381i, 2147483647i, 19073i), vec3<i32>(var_2.a, 0i, 1i)), min(var_2.a, var_2.a))), _wgslsmith_mult_vec3_i32(select(vec3<i32>(var_0.a.d.x, 71667i, var_2.a), u_input.a.xyw, select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(false, arg_0.a, true), arg_0.a)), vec3<i32>(abs(1i), 40022i, abs(8682i)))));
    global0 = !select(select(vec2<bool>(var_1 | var_1, true), select(!vec2<bool>(true, var_0.a.a), vec2<bool>(true, false), var_0.a.a), !(!vec2<bool>(global0.x, true))), vec2<bool>(!any(vec2<bool>(false, global0.x)), _wgslsmith_f_op_f32(-var_0.b.x) < _wgslsmith_f_op_f32(select(arg_1, 2136f, var_1))), any(vec2<bool>(true, true)));
    return !vec2<bool>(global0.x, func_3(1i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(Struct_1(true, true, u_input.a.x, vec2<i32>(-1i) * -select(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(u_input.a.x, u_input.a.x), vec2<bool>(global0.x, global0.x))), -404f, vec3<u32>(1u, 1u, 1u));
    global0 = vec2<bool>((reverseBits(101689u) >> (_wgslsmith_div_u32(0u, 4294967295u) % 32u)) < select(firstTrailingBit(1u), ~1u, global0.x), !global0.x);
    let var_0 = vec2<u32>(~(~(~firstTrailingBit(1u))), _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(~59975u, ~124741u)), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 1u))));
    let var_1 = Struct_3(-596f, false, func_2().c, Struct_2(~_wgslsmith_dot_vec2_i32(u_input.a.yx, u_input.a.yx)));
    global0 = func_1(Struct_1(any(vec3<bool>(global0.x, true, global0.x && true)), any(select(!vec3<bool>(var_1.b, false, true), vec3<bool>(true, true, true), select(vec3<bool>(var_1.b, global0.x, true), vec3<bool>(false, true, var_1.b), var_1.b))), 1i, u_input.a.yy), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.a))), ~abs(select(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<u32>(var_0.x, 4294967295u, var_0.x)), abs(vec3<u32>(42342u, var_0.x, 1u)), select(vec3<bool>(var_1.b, true, global0.x), vec3<bool>(true, var_1.b, true), vec3<bool>(false, var_1.b, var_1.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(~0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-154f, _wgslsmith_f_op_f32(trunc(var_1.a))))), _wgslsmith_mult_i32(~min(abs(-2147483647i), u_input.a.x >> (101676u % 32u)), u_input.a.x), -((i32(-1i) * -14893i) << (func_2().e % 32u)), 19774u);
}

