struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>) -> vec2<i32> {
    let var_0 = Struct_2(all(vec2<bool>(true, true)), _wgslsmith_mod_vec2_i32(vec2<i32>(-u_input.d.x, u_input.b.x), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 15126i, u_input.b.x, 14698i), vec4<i32>(2147483647i, 60353i, -1i, u_input.d.x))), _wgslsmith_div_vec2_i32(firstTrailingBit(u_input.d.xy), countOneBits(u_input.b)))), Struct_1(132f, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(72039u, u_input.a.x), ~42522u), _wgslsmith_clamp_vec2_u32(~u_input.a.yx, ~vec2<u32>(4294967295u, 53290u), vec2<u32>(u_input.c, 0u))), vec4<f32>(-394f, _wgslsmith_f_op_f32(ceil(arg_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-406f + -544f), arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, false)))), vec3<bool>(true, true, true)), vec4<i32>(~(~u_input.b.x) ^ u_input.b.x, u_input.b.x, -1i >> (max(1u, u_input.c) % 32u), u_input.d.x));
    let var_1 = ~_wgslsmith_add_u32(u_input.c, select(var_0.c.b, u_input.a.x, !(var_0.a == false)));
    let var_2 = abs(_wgslsmith_clamp_vec4_i32(~(-(~var_0.d)), var_0.d, max(_wgslsmith_add_vec4_i32(-vec4<i32>(27032i, u_input.b.x, -5541i, -12228i), _wgslsmith_mod_vec4_i32(vec4<i32>(25702i, 61634i, u_input.d.x, u_input.d.x), var_0.d)), vec4<i32>(-22153i, -37048i, _wgslsmith_mod_i32(var_0.d.x, -19498i), -2147483647i))));
    let var_3 = vec4<bool>(arg_0.x < _wgslsmith_f_op_f32(exp2(var_0.c.a)), all(vec3<bool>(true, var_0.c.a == arg_0.x, all(vec2<bool>(var_0.c.d.x, false)))), any(select(var_0.c.d, var_0.c.d, true)), var_0.a);
    let var_4 = Struct_3(var_0.c, var_3.x);
    return _wgslsmith_clamp_vec2_i32(var_0.b, u_input.b, max(_wgslsmith_div_vec2_i32(-(u_input.d.xx << (u_input.a.yz % vec2<u32>(32u))), firstTrailingBit(-vec2<i32>(u_input.d.x, var_2.x))), firstTrailingBit(var_0.d.zy)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(true, _wgslsmith_div_vec2_i32(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(535f, -1066f, 2333f, 132f))), firstLeadingBit(min(~vec2<i32>(u_input.b.x, u_input.d.x), u_input.b))), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(306f, 1301f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(472f))))), 1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-325f, 753f, 386f, 1629f))), vec3<bool>(any(vec4<bool>(false, false, false, true)), !select(false, false, false), true)), -firstTrailingBit(abs(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, u_input.b.x, -1i), vec4<i32>(0i, u_input.d.x, -2147483647i, -2147483647i)))));
    var_0 = Struct_2(false, firstTrailingBit(vec2<i32>(~(~var_0.b.x), u_input.d.x)), var_0.c, vec4<i32>(-_wgslsmith_dot_vec4_i32(var_0.d, vec4<i32>(u_input.b.x, u_input.b.x, var_0.b.x, 2147483647i)), _wgslsmith_sub_i32(2147483647i, var_0.b.x), ~(-1i), u_input.b.x) >> (~(~(~vec4<u32>(4294967295u, 11375u, 39704u, 0u))) % vec4<u32>(32u)));
    var var_1 = Struct_3(var_0.c, var_0.c.d.x || all(select(vec4<bool>(true, false, var_0.a, var_0.a), !vec4<bool>(var_0.a, var_0.c.d.x, var_0.c.d.x, true), true)));
    var_1 = Struct_3(Struct_1(var_0.c.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x >> (14809u % 32u), _wgslsmith_add_u32(var_0.c.b, var_1.a.b)), abs(vec2<u32>(1u, var_1.a.b) << (vec2<u32>(0u, var_0.c.b) % vec2<u32>(32u)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.a, var_1.a.a, -1325f, var_1.a.a) - var_0.c.c), vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.c.x), _wgslsmith_f_op_f32(abs(-3885f)), _wgslsmith_f_op_f32(-1671f * 583f), var_0.c.c.x))), var_1.a.d), all(vec3<bool>(_wgslsmith_f_op_f32(round(215f)) <= -835f, true, 1849f >= var_0.c.c.x)));
    let var_2 = Struct_2(any(var_1.a.d.xx), _wgslsmith_add_vec2_i32(var_0.d.xw, vec2<i32>(-1i, u_input.d.x)), Struct_1(var_0.c.c.x, ~min(1u, 4294967295u), vec4<f32>(792f, _wgslsmith_f_op_f32(-var_0.c.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(918f)), _wgslsmith_f_op_f32(round(228f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.c.x + -1270f))), !select(select(vec3<bool>(var_0.c.d.x, var_0.a, var_1.a.d.x), var_0.c.d, var_0.a), var_1.a.d, select(var_0.c.d, var_0.c.d, var_1.a.d))), -max(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.b.x, var_0.b.x, -2147483647i, var_0.b.x), var_0.d), -var_0.d) >> (select(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, var_0.c.b, var_0.c.b, 74572u), ~vec4<u32>(38154u, 14137u, 0u, var_0.c.b)), ~vec4<u32>(var_0.c.b, 42661u, u_input.c, 0u), false) % vec4<u32>(32u)));
    return Struct_1(_wgslsmith_f_op_f32(-var_1.a.a), _wgslsmith_dot_vec4_u32(vec4<u32>(~var_0.c.b, var_1.a.b, _wgslsmith_add_u32(var_0.c.b, ~82939u), u_input.a.x), abs(~abs(vec4<u32>(4294967295u, 1u, 4294967295u, 1u)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c.a, _wgslsmith_f_op_f32(-var_1.a.c.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(772f, -364f))), var_0.c.a) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.c.a, var_1.a.a, 1566f, var_2.c.c.x))), vec4<f32>(var_2.c.a, var_0.c.c.x, var_2.c.c.x, 1760f))))), var_2.c.d);
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> Struct_1 {
    let var_0 = vec4<i32>(-1i) * -vec4<i32>(69936i, 2147483647i, -(~u_input.d.x), ~arg_0.b.x);
    var var_1 = vec3<bool>(arg_0.c.d.x, true, !(all(vec4<bool>(arg_0.a, arg_0.c.d.x, arg_0.a, arg_0.a)) != arg_0.a));
    var_1 = !vec3<bool>(!var_1.x, true, true || all(vec2<bool>(true, true)));
    var_1 = func_2().d;
    var var_2 = all(select(!func_2().d.xz, select(!(!var_1.zy), select(!arg_0.c.d.yy, arg_0.c.d.zz, all(vec2<bool>(var_1.x, true))), func_2().d.xz), var_1.xy));
    return arg_0.c;
}

fn func_1(arg_0: vec3<bool>, arg_1: i32) -> u32 {
    var var_0 = 1i != _wgslsmith_add_i32(_wgslsmith_mod_i32(i32(-1i) * -29822i, _wgslsmith_dot_vec2_i32(u_input.d.xz, vec2<i32>(u_input.d.x, arg_1))) >> (1u % 32u), -69202i);
    let var_1 = Struct_2(_wgslsmith_mod_u32(firstLeadingBit(~0u), ~countOneBits(78954u)) > u_input.c, ~vec2<i32>(u_input.b.x, 5744i), func_4(Struct_2(arg_0.x & arg_0.x, ~(u_input.d.zy << (vec2<u32>(53859u, u_input.c) % vec2<u32>(32u))), func_2(), _wgslsmith_div_vec4_i32(-vec4<i32>(1i, -43275i, u_input.b.x, -2147483647i), vec4<i32>(27848i, arg_1, u_input.b.x, arg_1))), countOneBits(3766u)), -reverseBits(vec4<i32>(-u_input.b.x, 0i, -5055i, ~6494i)));
    var_0 = !select(all(select(!arg_0, vec3<bool>(true, true, true), vec3<bool>(var_1.a, true, arg_0.x))), arg_0.x, false);
    let var_2 = func_2();
    var var_3 = arg_0.x || func_2().d.x;
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec3_u32(~(~countOneBits(u_input.a)), ~vec3<u32>(u_input.c, 13425u, u_input.a.x)) <= _wgslsmith_div_u32(1u, ~1u);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(min(1122f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1422f))))))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1f)), -1256f)));
    var_0 = (~(u_input.a.x << (~u_input.a.x % 32u)) == max(u_input.c, u_input.c)) != true;
    var var_2 = !(true && (!all(vec2<bool>(true, true)) | (true || all(vec2<bool>(false, false)))));
    var_2 = true;
    var_0 = !(!all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    let var_3 = vec2<u32>(func_1(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, all(vec3<bool>(false, true, false))), vec3<bool>(true, any(vec3<bool>(false, false, true)), u_input.c > u_input.c)), ~(-12850i)), ~49516u);
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, _wgslsmith_clamp_vec2_u32(var_3, ~(~vec2<u32>(u_input.a.x, var_3.x)), vec2<u32>(func_2().b, 1u)), firstLeadingBit(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, 43291u, 26017u, 0u), vec4<u32>(var_3.x, 29359u, 41498u, 4294967295u))) | ~vec4<u32>(1u, _wgslsmith_mult_u32(16198u, var_3.x), 30408u, var_3.x >> (u_input.c % 32u)), 1i);
}

