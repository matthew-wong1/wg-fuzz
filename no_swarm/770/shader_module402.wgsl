struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec3<bool>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: vec4<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: vec3<bool>,
    c: Struct_3,
    d: vec4<bool>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
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

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: vec4<i32>, arg_3: Struct_1) -> i32 {
    let var_0 = (vec4<i32>(-(~arg_3.d.x), -countOneBits(-2147483647i), 1i, -(arg_2.x << (arg_0 % 32u))) | (~(vec4<i32>(1i, arg_3.d.x, u_input.c, arg_3.d.x) ^ vec4<i32>(arg_3.d.x, u_input.c, arg_3.d.x, arg_3.d.x)) ^ firstTrailingBit(vec4<i32>(1i, 12475i, -49262i, 0i)))) ^ vec4<i32>(_wgslsmith_sub_i32(u_input.c, countOneBits(1i)), arg_3.d.x, max(0i, ~1i), -arg_2.x);
    let var_1 = -1i;
    let var_2 = Struct_1(any(vec4<bool>(any(!arg_3.c), arg_3.a, !any(arg_3.c.zx), !all(arg_3.c))), arg_3.b, select(arg_3.c, arg_3.c, vec3<bool>(false, any(!vec4<bool>(arg_3.c.x, false, arg_3.a, arg_3.a)), false & (arg_3.b.x > arg_3.b.x))), u_input.e);
    return max(abs(_wgslsmith_dot_vec3_i32(~arg_3.d.yzw, u_input.e.yxz | var_0.wxw)), -abs(8491i)) ^ reverseBits(_wgslsmith_mult_i32(i32(-1i) * -47136i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, 0i), vec2<i32>(-53001i, arg_3.d.x))));
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_1(true, vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-250f * _wgslsmith_f_op_f32(f32(-1f) * -1041f)))), 1000f), !select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true), false), _wgslsmith_sub_vec4_i32(vec4<i32>(abs(firstTrailingBit(0i)), 18503i, _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.c, -2147483647i, u_input.c), firstTrailingBit(vec3<i32>(9177i, -48643i, 7803i))), -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(0i, -2147483647i))), ~vec4<i32>(func_3(u_input.a.x, 806f, vec4<i32>(u_input.e.x, 23700i, u_input.c, 18959i), Struct_1(true, vec2<f32>(-1022f, 308f), vec3<bool>(true, false, false), vec4<i32>(-1i, u_input.d, u_input.c, -3188i))), u_input.e.x, _wgslsmith_add_i32(-40253i, -1911i), u_input.c)));
    var_0 = Struct_1(var_0.c.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, var_0.b.x)))), vec3<bool>(!(true & var_0.c.x) && any(var_0.c.zz), all(vec3<bool>(!var_0.a, true, true)), false && !var_0.c.x), u_input.e);
    let var_1 = -214f;
    var var_2 = reverseBits(~max(-13154i, var_0.d.x));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(step(-891f, var_1)), select(vec4<bool>(select(all(vec3<bool>(false, false, var_0.c.x)), var_0.d.x == var_0.d.x, var_1 != -260f), all(var_0.c.yz) || any(vec3<bool>(var_0.c.x, var_0.a, var_0.a)), !all(vec4<bool>(false, false, var_0.c.x, var_0.c.x)), false), !select(!vec4<bool>(false, false, var_0.a, false), !vec4<bool>(true, true, false, var_0.c.x), vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.c.x)), vec4<bool>(var_0.a, any(vec3<bool>(true, false, true)), var_0.c.x, true)), !select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, var_0.a, var_0.c.x, false), select(vec4<bool>(var_0.a, false, true, var_0.a), vec4<bool>(false, var_0.a, var_0.a, var_0.a), vec4<bool>(var_0.a, var_0.c.x, var_0.a, var_0.a))), select(select(vec4<bool>(var_0.a, var_0.a, false, false), vec4<bool>(var_0.a, var_0.a, false, false), vec4<bool>(var_0.c.x, true, true, true)), !vec4<bool>(var_0.a, var_0.c.x, var_0.c.x, var_0.c.x), select(vec4<bool>(false, var_0.a, true, true), vec4<bool>(var_0.a, false, true, false), var_0.a)), var_0.b.x > _wgslsmith_f_op_f32(floor(var_1))));
    return Struct_3(_wgslsmith_f_op_f32(floor(2435f)), vec4<bool>(!(true && any(var_0.c)), !any(!var_3.b.xyy), var_0.a, all(var_0.c.xz)), !vec4<bool>(true, all(select(vec2<bool>(var_3.b.x, true), vec2<bool>(var_0.a, true), true)), var_0.a, true));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: i32) -> Struct_5 {
    var var_0 = 1i;
    let var_1 = ~_wgslsmith_add_vec2_u32(abs(~vec2<u32>(arg_1, 1u)), (vec2<u32>(arg_1, 68599u) ^ u_input.a) ^ u_input.b) >> (~abs(u_input.b) % vec2<u32>(32u));
    var var_2 = vec3<u32>(_wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(var_1.x, arg_1, 16686u)), max(vec3<u32>(110160u, 0u, var_1.x), vec3<u32>(0u, 4294967295u, 1439u)))), _wgslsmith_mult_u32(arg_1, ~(~42269u))), arg_1, min(13725u, ~(~(~var_1.x))));
    var_2 = ~vec3<u32>(4294967295u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_1), var_1), 7768u);
    let var_3 = Struct_1(select(!(!arg_0.c.x), !(!arg_0.b.x) & (u_input.d <= -arg_2), any(arg_0.c)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -458f), arg_0.a), !(!vec3<bool>(!arg_0.c.x, arg_0.b.x, !arg_0.b.x)), abs(u_input.e));
    return Struct_5(firstTrailingBit(52033u), !(!select(!var_3.c, !vec3<bool>(var_3.c.x, arg_0.c.x, false), true)), func_2(), !arg_0.b, -vec3<i32>(arg_2, reverseBits(1i), u_input.d));
}

fn func_5(arg_0: u32, arg_1: Struct_5, arg_2: vec2<bool>) -> Struct_2 {
    let var_0 = ~4294967295u;
    let var_1 = all(select(!arg_1.c.b, !func_4(arg_1.c, ~4294967295u, 5706i).c.b, all(vec4<bool>(true, all(arg_1.c.b.wyz), arg_1.c.c.x | true, arg_1.b.x))));
    let var_2 = Struct_1(false, vec2<f32>(func_4(arg_1.c, 73162u, arg_1.e.x).c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -805f))), func_4(func_2(), ~(~1u), arg_1.e.x).b, firstTrailingBit(vec4<i32>(-1i, -62213i, firstTrailingBit(countOneBits(u_input.e.x)), min(_wgslsmith_add_i32(arg_1.e.x, 1i), ~28577i))));
    let var_3 = ~_wgslsmith_mult_vec3_u32(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, 5784u, arg_1.a) ^ vec3<u32>(19338u, 37043u, u_input.b.x), vec3<u32>(0u, 1u, 0u))), abs(~min(vec3<u32>(u_input.a.x, arg_1.a, arg_0), vec3<u32>(4294967295u, arg_1.a, var_0))));
    var var_4 = firstLeadingBit(arg_1.e);
    return Struct_2(_wgslsmith_sub_i32(var_4.x ^ u_input.d, firstTrailingBit(378i)), Struct_1(any(arg_1.d), _wgslsmith_f_op_vec2_f32(sign(var_2.b)), arg_1.b, -select(vec4<i32>(var_4.x, var_2.d.x, -2147483647i, var_2.d.x), vec4<i32>(-31364i, 1i, var_4.x, u_input.d), false) << (_wgslsmith_mod_vec4_u32(min(vec4<u32>(arg_0, u_input.b.x, 4294967295u, u_input.a.x), vec4<u32>(24749u, arg_0, 42138u, 30149u)), vec4<u32>(var_3.x, 1371u, 48824u, var_0) << (vec4<u32>(1u, 4294967295u, var_3.x, arg_1.a) % vec4<u32>(32u))) % vec4<u32>(32u))));
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: Struct_5, arg_3: i32) -> bool {
    var var_0 = func_5(abs(79068u), func_4(func_2(), 63368u, ~(-23519i)), select(arg_2.c.b.xy, arg_2.b.xz, all(arg_1.b)));
    let var_1 = Struct_1(false, vec2<f32>(arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(979f)), _wgslsmith_f_op_f32(f32(-1f) * -359f)))), vec3<bool>(func_4(func_4(arg_1, max(5985u, u_input.a.x), var_0.a).c, func_4(Struct_3(arg_1.a, arg_2.d, arg_1.b), ~60034u, 1i).a, arg_0).c.b.x, arg_2.b.x, _wgslsmith_f_op_f32(select(arg_2.c.a, _wgslsmith_f_op_f32(sign(arg_2.c.a)), arg_2.c.c.x)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c.a - arg_1.a))), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.e, -countOneBits(vec4<i32>(arg_3, 1i, u_input.e.x, 0i))), u_input.e));
    let var_2 = Struct_2(-func_5(1u, Struct_5(_wgslsmith_div_u32(0u, 4294967295u), var_1.c, Struct_3(arg_1.a, vec4<bool>(false, false, arg_1.c.x, true), arg_2.d), select(arg_2.d, arg_2.c.b, arg_2.d), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_3, -45148i, arg_2.e.x), var_0.b.d.wyx)), var_0.b.c.zx).a, func_5(arg_2.a, Struct_5(u_input.a.x, select(arg_2.c.b.ywy, !var_1.c, !var_0.b.a), Struct_3(_wgslsmith_f_op_f32(arg_1.a - -598f), select(arg_2.c.b, vec4<bool>(false, false, true, var_0.b.a), var_0.b.c.x), arg_1.b), func_4(arg_1, abs(u_input.b.x), _wgslsmith_dot_vec3_i32(arg_2.e, vec3<i32>(3047i, arg_3, arg_0))).d, -abs(vec3<i32>(var_0.a, -2442i, arg_3))), select(vec2<bool>(all(vec3<bool>(true, var_0.b.a, var_0.b.c.x)), true), !arg_2.b.xx, vec2<bool>(false, var_1.a | false))).b);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.c.a))), _wgslsmith_f_op_f32(-var_0.b.b.x)), 2546f) + arg_1.a);
    let var_4 = Struct_4(_wgslsmith_add_vec2_i32(~(-var_1.d.wx) | ~_wgslsmith_clamp_vec2_i32(arg_2.e.yz, vec2<i32>(-18397i, 0i), vec2<i32>(0i, var_2.a)), (u_input.e.wz >> (select(u_input.a, u_input.a, var_1.c.zy) % vec2<u32>(32u))) & var_0.b.d.yz), arg_2.c);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(~4294967295u, select(select(vec3<bool>(false, true, func_1(-17710i, Struct_3(-431f, vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false)), Struct_5(3314u, vec3<bool>(true, true, false), Struct_3(-569f, vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, false, false, false), vec3<i32>(u_input.d, u_input.d, u_input.d)), 27572i)), vec3<bool>(u_input.c != u_input.e.x, true, all(vec2<bool>(false, true))), true), vec3<bool>(false, true, false), func_4(Struct_3(-1000f, vec4<bool>(true, true, true, false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), false)), _wgslsmith_add_u32(~u_input.a.x, ~u_input.b.x), 0i).c.b.wxx), func_4(func_2(), u_input.b.x, _wgslsmith_mult_i32(u_input.c, u_input.e.x ^ -48907i) >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.b.x, u_input.b.x), vec4<u32>(80078u, 5301u, u_input.b.x, 47809u)) % 32u)).c, !vec4<bool>(_wgslsmith_f_op_f32(-150f - 524f) == _wgslsmith_f_op_f32(floor(457f)), func_5(8847u, Struct_5(73744u, vec3<bool>(false, false, true), Struct_3(-2021f, vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, false, true), vec3<i32>(u_input.c, 1i, 2147483647i)), func_5(23843u, Struct_5(u_input.a.x, vec3<bool>(false, false, true), Struct_3(973f, vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false)), vec4<bool>(false, false, true, true), vec3<i32>(-12567i, u_input.c, 4505i)), vec2<bool>(false, true)).b.c.yz).b.a, all(vec4<bool>(false, true, false, false)), all(func_5(93100u, Struct_5(u_input.b.x, vec3<bool>(false, false, false), Struct_3(-643f, vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), vec3<i32>(u_input.e.x, u_input.c, 20551i)), vec2<bool>(false, false)).b.c.xy)), u_input.e.ywz);
    let var_1 = vec2<bool>(true, true);
    let var_2 = _wgslsmith_mod_u32(u_input.a.x, 96486u);
    var var_3 = true;
    let var_4 = Struct_4(-reverseBits(vec2<i32>(_wgslsmith_add_i32(-2147483647i, var_0.e.x), var_0.e.x)), Struct_3(func_2().a, func_2().c, func_4(Struct_3(-1020f, vec4<bool>(false, true, var_0.d.x, var_0.c.b.x), vec4<bool>(var_1.x, true, false, var_1.x)), var_2 >> (21946u % 32u), select(_wgslsmith_add_i32(u_input.c, u_input.e.x), ~10840i, any(var_0.c.c))).c.b));
    var var_5 = _wgslsmith_f_op_f32(abs(951f));
    let var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.b.a * var_4.b.a) * _wgslsmith_f_op_f32(var_4.b.a - 1041f)), var_4.b.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-424f, 1807f)))) - _wgslsmith_f_op_f32(f32(-1f) * -1035f)))) + _wgslsmith_f_op_f32(floor(var_4.b.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_4.b.a), 2166f, var_6, _wgslsmith_f_op_f32(min(var_0.c.a, var_0.c.a)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-947f, -630f, var_4.b.a, var_4.b.a), vec4<f32>(1000f, -849f, var_0.c.a, 598f))) * vec4<f32>(_wgslsmith_f_op_f32(ceil(-213f)), _wgslsmith_f_op_f32(select(-1568f, var_6, false)), var_0.c.a, var_4.b.a))));
}

