struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: bool,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec4<f32>,
    d: u32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    var var_0 = vec3<bool>(true, true && (21106i < (u_input.b ^ abs(u_input.a))), all(vec3<bool>(any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), true)), true, false)));
    var_0 = select(!(!(!(!vec3<bool>(var_0.x, true, var_0.x)))), vec3<bool>(false, any(!(!vec4<bool>(false, var_0.x, true, true))), all(vec4<bool>(true | var_0.x, var_0.x, true, var_0.x | var_0.x))), false & all(vec3<bool>(true, true, u_input.b >= 34786i)));
    var var_1 = -reverseBits(vec4<i32>(u_input.b, ~u_input.b, 1i, -1i));
    var var_2 = vec4<i32>(_wgslsmith_clamp_i32(39438i, _wgslsmith_div_i32(u_input.a, reverseBits(abs(var_1.x))), -22650i), 42803i, ~_wgslsmith_sub_i32(reverseBits(min(-1i, u_input.a)), _wgslsmith_add_i32(abs(-1i), _wgslsmith_mult_i32(u_input.a, -92417i))), var_1.x << (~(~1u) % 32u));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1541f, 140f, 1281f), vec3<f32>(579f, 1000f, 168f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-287f, -1079f, -465f)))))))));
    return min(_wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(12722u, 947u), min(17076u, 8589u)), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), select(vec2<u32>(27371u, 36612u), vec2<u32>(4294967295u, 65738u), var_0.xy)), _wgslsmith_add_u32(~33722u, ~4294967295u)), _wgslsmith_sub_u32(71880u, min(_wgslsmith_clamp_u32(13303u, 79043u, 3993u), _wgslsmith_sub_u32(4294967295u, 4294967295u)))) ^ 61396u;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec2<u32>) -> Struct_2 {
    let var_0 = 1424f;
    var var_1 = countOneBits(func_3()) | _wgslsmith_mod_u32(arg_2.x, arg_0.d.x);
    var_1 = 4294967295u;
    var_1 = func_3();
    var var_2 = Struct_3(!arg_0.c, Struct_2(~select(arg_0.d, arg_0.d, vec4<bool>(true, arg_0.c, true, arg_0.b.x)) >> (countOneBits(select(arg_0.d, arg_0.d, vec4<bool>(true, arg_0.b.x, false, arg_0.c))) % vec4<u32>(32u)), max(arg_0.a, ~vec3<i32>(u_input.a, 1i, 1i)), -1233f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0), var_0, _wgslsmith_f_op_f32(-155f - -1681f), var_0)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 859f, var_0, var_0)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1048f, 411f, var_0, var_0)))), arg_0.d.x, select(~vec4<u32>(arg_0.d.x, 30834u ^ arg_2.x, 4294967295u, 1u), arg_0.d, select(arg_0.b, arg_0.b, arg_0.c)));
    return Struct_2(vec4<u32>(abs(~_wgslsmith_div_u32(arg_2.x, var_2.b.a.x)), var_2.b.a.x, _wgslsmith_dot_vec4_u32(arg_0.d, vec4<u32>(19197u, 27257u, 36451u, 4294967295u)) ^ (func_3() & _wgslsmith_clamp_u32(arg_2.x, 4294967295u, arg_2.x)), 4294967295u), vec3<i32>(arg_0.e.x, _wgslsmith_dot_vec3_i32(-arg_0.a ^ ~arg_0.a, vec3<i32>(var_2.b.b.x, _wgslsmith_clamp_i32(arg_0.e.x, 0i, arg_0.a.x), ~2147483647i)), ~arg_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -620f))), _wgslsmith_div_f32(-737f, 894f)))));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: Struct_2, arg_3: i32) -> vec4<f32> {
    let var_0 = vec2<u32>(func_3(), _wgslsmith_mult_u32(13543u, _wgslsmith_add_u32(~_wgslsmith_sub_u32(arg_0, arg_0), ~9020u)));
    var var_1 = arg_1;
    var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-587f)), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), -702f)));
    let var_2 = vec3<bool>(true, false, true);
    let var_3 = !select(vec2<bool>(arg_3 > _wgslsmith_sub_i32(arg_3, arg_3), var_2.x), select(vec2<bool>(var_2.x, false), select(select(vec2<bool>(true, false), var_2.zx, true), vec2<bool>(true, true), vec2<bool>(var_2.x, true)), var_2.yz), true);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.c, 1438f, arg_2.c, -846f), vec4<f32>(-1929f, arg_1, -1689f, 242f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1, -521f, -3258f, -873f))))) - vec4<f32>(_wgslsmith_f_op_f32(-arg_2.c), _wgslsmith_f_op_f32(step(1072f, arg_2.c)), -705f, _wgslsmith_f_op_f32(sign(arg_2.c)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(133f, arg_1, _wgslsmith_f_op_f32(1251f + arg_2.c), arg_1) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1, 3127f, arg_1, -2293f))))));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: bool) -> f32 {
    let var_0 = Struct_1(arg_1.a, vec4<bool>(true, !all(select(arg_1.b.yzx, vec3<bool>(true, true, false), arg_1.c)), select(arg_1.c, (arg_1.a.x != u_input.a) | arg_1.c, true), arg_1.c), ~(~_wgslsmith_add_u32(arg_1.d.x, 0u)) >= _wgslsmith_add_u32(0u, max(~arg_1.d.x, 15431u)), arg_1.d, vec2<i32>(-34390i, _wgslsmith_mod_i32(arg_1.a.x, abs(13389i))));
    var var_1 = ~_wgslsmith_add_i32(reverseBits(var_0.a.x), var_0.a.x);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(613f, arg_0.x))), 718f);
    return arg_0.x;
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(238f, -656f, 318f, -1342f) + vec4<f32>(364f, 1627f, -1000f, 2907f)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(236f, 201f, 388f, 280f)))) + _wgslsmith_f_op_vec4_f32(func_4(~114046u, -2793f, func_2(Struct_1(vec3<i32>(u_input.b, 0i, u_input.b), vec4<bool>(false, false, false, false), true, vec4<u32>(0u, 11483u, 1u, 1u), vec2<i32>(u_input.a, u_input.a)), u_input.b, vec2<u32>(1u, 1u)), abs(u_input.a)))), Struct_1(-vec3<i32>(26946i, u_input.a, -53151i), vec4<bool>(true, true, true, true), true & any(vec2<bool>(false, false)), vec4<u32>(~34420u, ~0u, func_3(), abs(1u)), abs(vec2<i32>(1i, u_input.b) & vec2<i32>(u_input.a, u_input.b))), all(vec4<bool>(true, true, true, true)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(328f - -574f)) + -670f)));
    var var_1 = Struct_3(any(select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true)), false)), func_2(Struct_1(vec3<i32>(-1i) * -vec3<i32>(-33104i, u_input.b, u_input.a), select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), false), true), countOneBits(-40959i) != ~u_input.b, select(vec4<u32>(1u, 4294967295u, 0u, 57333u), ~vec4<u32>(1u, 1u, 56627u, 4294967295u), true), vec2<i32>(u_input.a, i32(-1i) * -26171i)), u_input.a, ~firstTrailingBit(vec2<u32>(1u, 1u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2019f, _wgslsmith_f_op_vec4_f32(func_4(select(1u, 27627u, false), -1174f, Struct_2(vec4<u32>(4294967295u, 9667u, 4294967295u, 8613u), vec3<i32>(u_input.a, 13432i, u_input.b), 487f), -48968i)).x, _wgslsmith_f_op_f32(1f - -1000f), -400f)), 27130u, func_2(Struct_1(~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, u_input.a, -25484i), vec3<i32>(-2147483647i, u_input.b, u_input.b), vec3<i32>(u_input.a, 1i, u_input.b)), vec4<bool>(true, true, true, true), any(vec4<bool>(true, true, true, true)), vec4<u32>(~4294967295u, ~4294967295u, ~1u, ~73746u), -vec2<i32>(u_input.a, u_input.b)), -reverseBits(-u_input.b), ~firstTrailingBit(vec2<u32>(32245u, 78038u)) >> (abs(func_2(Struct_1(vec3<i32>(u_input.a, 19262i, 2147483647i), vec4<bool>(true, false, true, false), false, vec4<u32>(53277u, 14551u, 2279u, 1u), vec2<i32>(33077i, -90i)), -21925i, vec2<u32>(0u, 1u)).a.yw) % vec2<u32>(32u))).a);
    var_0 = _wgslsmith_f_op_f32(-657f * 600f);
    var_1 = Struct_3(!(!all(vec4<bool>(false, false, var_1.a, true))) | var_1.a, var_1.b, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-var_1.c))), 12650u, vec4<u32>(var_1.b.a.x, var_1.e.x, ~27582u ^ select(1u, var_1.b.a.x, true), 35132u));
    let var_2 = Struct_3(select(false, !(select(true, true, false) || false), !var_1.a), func_2(Struct_1(var_1.b.b, vec4<bool>(true, var_1.a, false, u_input.a <= 1i), !all(vec2<bool>(var_1.a, var_1.a)), var_1.e, ~vec2<i32>(13325i, 38057i)), max(select(35183i, var_1.b.b.x ^ u_input.a, any(vec3<bool>(true, true, var_1.a))), -countOneBits(-4745i)), _wgslsmith_clamp_vec2_u32(~(~vec2<u32>(var_1.d, var_1.d)), var_1.b.a.yw, _wgslsmith_mod_vec2_u32(abs(var_1.b.a.wy), _wgslsmith_mult_vec2_u32(var_1.e.zy, var_1.e.yw)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(var_1.c * var_1.c))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(97736u), ~0u, ~201u), ~(~var_1.b.a.zxw)), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(select(select(var_1.b.a, vec4<u32>(var_1.d, 54084u, var_1.e.x, var_1.b.a.x), vec4<bool>(true, var_1.a, var_1.a, var_1.a)), ~vec4<u32>(38783u, 1u, 5367u, 4294967295u), vec4<bool>(false, var_1.a, false, var_1.a)), vec4<u32>(select(var_1.d, 26022u, var_1.a), 4294967295u, ~4294967295u, 64752u)), ~(~var_1.e)));
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<i32>(_wgslsmith_mod_i32(~2315i, _wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.a, u_input.b), abs(u_input.b))), u_input.b, ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 46371i, u_input.b, u_input.b), abs(vec4<i32>(u_input.a, u_input.a, 12938i, u_input.b))));
    let var_1 = Struct_3(!(!(all(vec3<bool>(true, true, true)) && false)), func_1(), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(905f, 1000f, -492f, 309f)) - vec4<f32>(-1323f, -447f, -720f, 2453f)) - vec4<f32>(-494f, _wgslsmith_f_op_f32(floor(-253f)), 1355f, _wgslsmith_div_f32(-1000f, 470f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1180f, -173f, 195f, 1232f)) * vec4<f32>(1031f, 1000f, -1938f, -1294f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-590f, -1351f, 920f, 235f)))), vec4<bool>(true, all(vec2<bool>(true, true)), true, true)))), abs(reverseBits(min(~0u, func_2(Struct_1(var_0, vec4<bool>(false, true, true, true), true, vec4<u32>(1u, 8375u, 66867u, 60006u), vec2<i32>(u_input.b, var_0.x)), -1i, vec2<u32>(1u, 44664u)).a.x))), vec4<u32>(~_wgslsmith_div_u32(52069u, 40817u), 1u, _wgslsmith_clamp_u32(1u, 1u, 1u), firstLeadingBit(~14158u)) << (vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(8700u, 0u, 20899u, 30846u), vec4<u32>(4294967295u, 24081u, 25700u, 1u)), 101897u, 45752u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, 32094u), 4294967295u)) % vec4<u32>(32u)));
    var var_2 = -2147483647i;
    var var_3 = false;
    var_2 = _wgslsmith_sub_i32(0i, 1i);
    var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b.c - -1834f), var_1.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-582f - var_1.b.c) * var_1.c.x)) <= _wgslsmith_div_f32(var_1.b.c, -2271f);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(select(abs(var_1.b.a), var_1.b.a, !vec4<bool>(true, true, var_1.a, false)) ^ abs(reverseBits(var_1.b.a))), ~_wgslsmith_add_vec3_i32(vec3<i32>(-1i, -42785i, max(var_1.b.b.x, -16099i)), vec3<i32>(-1i) * -vec3<i32>(6610i, 36287i, var_1.b.b.x)), ~(var_1.e | (_wgslsmith_div_vec4_u32(vec4<u32>(var_1.d, var_1.e.x, var_1.d, 23957u), vec4<u32>(var_1.d, var_1.b.a.x, 0u, var_1.d)) & ~var_1.b.a)), func_2(Struct_1(var_1.b.b, select(vec4<bool>(true, true, true, true), vec4<bool>(true, var_1.a, false, false), vec4<bool>(var_1.a, var_1.a, var_1.a, false)), var_1.a, vec4<u32>(4294967295u, var_1.d, 93522u << (var_1.b.a.x % 32u), 13069u), _wgslsmith_add_vec2_i32(var_1.b.b.xy, var_0.zx)), -2147483647i, ~max(var_1.e.wz, vec2<u32>(var_1.d, var_1.e.x))).a);
}

