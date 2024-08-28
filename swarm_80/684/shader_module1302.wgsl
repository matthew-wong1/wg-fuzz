struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: u32,
    d: Struct_1,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(_wgslsmith_mod_u32(3425u, 8349u), _wgslsmith_dot_vec4_i32(vec4<i32>(~(~global0.b), _wgslsmith_clamp_i32(reverseBits(36019i), min(25248i, -2147483647i), global0.b >> (4294967295u % 32u)), u_input.a.x, -u_input.c.x), ~vec4<i32>(global0.b, global0.b, u_input.c.x, 0i)));
    let var_1 = Struct_1(global0.a, global0.b);
    var var_2 = _wgslsmith_div_i32(2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, var_0.b, 1i, global0.b), vec4<i32>(var_0.b, var_0.b, 2147483647i, -2147483647i)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(global0.a, var_1.a, 1u, u_input.b.x), vec4<u32>(global0.a, 17586u, 55939u, var_0.a)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.b, 22043i, var_0.b, 10296i), vec4<i32>(u_input.a.x, 1i, var_1.b, 16828i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -25409i, 1i, var_1.b), vec4<i32>(var_1.b, var_0.b, u_input.a.x, 24472i), vec4<i32>(var_1.b, u_input.c.x, var_0.b, u_input.a.x)))) << ((1u ^ ~global0.a) % 32u));
    var var_3 = ((0u ^ abs(global0.a)) | var_0.a) > var_0.a;
    var var_4 = select(vec3<bool>(select(all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true))), !any(vec3<bool>(true, true, false)), select(1i, -21583i, true) > 6521i), false, !any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true)))), !(!(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true))), !select(vec3<bool>(select(false, false, true), false, true), select(vec3<bool>(false, false, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), true), true));
    return 40296u;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> i32 {
    let var_0 = vec3<bool>(true, !((countOneBits(global0.a) >= func_3()) != true), false);
    let var_1 = _wgslsmith_clamp_vec3_u32(u_input.b, u_input.b, vec3<u32>(~(~global0.a | 21417u), 49106u, 20419u));
    var var_2 = Struct_2(~select(~vec4<u32>(var_1.x, 0u, u_input.b.x, 4294967295u), ~vec4<u32>(var_1.x, 25796u, 1u, global0.a), var_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1630f, 681f, 1612f, -180f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(364f, -790f, 1836f, -1651f)))))), firstLeadingBit(~abs(arg_0.a)), Struct_1(~(~(~arg_2.a)), ~min(global0.b, -50143i) ^ firstTrailingBit(global0.b)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(506f, -1045f, -1467f))), _wgslsmith_div_vec3_f32(vec3<f32>(1182f, -818f, -1721f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-588f, -1472f, 1299f) - vec3<f32>(-188f, 1000f, -1028f))), select(vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, false, var_0.x), !vec3<bool>(false, var_0.x, true)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-2055f, 630f, -1253f), vec3<f32>(401f, 1177f, 279f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(761f, 1665f, -1000f))))), vec3<bool>(any(!var_0.xx), 1u >= arg_0.a, !var_0.x))));
    var var_3 = ~abs(-2147483647i);
    var_3 = abs(var_2.d.b);
    return arg_0.b;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<i32>, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_2 {
    global0 = Struct_1(global0.a, _wgslsmith_add_i32(0i, -1i));
    let var_0 = Struct_2(vec4<u32>(1u, _wgslsmith_mult_u32(func_3(), arg_3.a | ~u_input.b.x), ~_wgslsmith_clamp_u32(global0.a, u_input.b.x, ~global0.a), 0u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(328f, -188f, -777f, 1498f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(310f, -301f, 454f, -998f)))), _wgslsmith_mod_u32(~global0.a, min(abs(_wgslsmith_div_u32(global0.a, u_input.b.x)), ~(~21424u))), arg_3, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, 1f, 1f))));
    var var_1 = Struct_2(~var_0.a, var_0.b, ~38133u, Struct_1(0u, firstLeadingBit(_wgslsmith_add_i32(-8045i, arg_3.b)) & arg_1.x), _wgslsmith_f_op_vec3_f32(var_0.b.wzw + var_0.e));
    let var_2 = _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(select(691f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.e.x)) + _wgslsmith_div_f32(-739f, var_0.e.x))), arg_3.a <= ~1u)));
    let var_3 = Struct_2(~((~var_0.a ^ vec4<u32>(var_1.a.x, u_input.b.x, 1u, var_1.c)) & vec4<u32>(select(1u, 7131u, false), 0u, _wgslsmith_sub_u32(var_0.d.a, 0u), abs(var_1.c))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_0.b)))), ~26846u, arg_3, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.b.xzy))));
    return var_3;
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(max(firstTrailingBit(u_input.c), vec3<i32>(-24480i, abs(u_input.a.x), func_2(Struct_1(21222u, global0.b), global0.b, Struct_1(39429u, u_input.a.x))) ^ -(vec3<i32>(u_input.c.x, -2147483647i, 1i) << (u_input.b % vec3<u32>(32u)))), vec4<i32>(u_input.a.x, global0.b, select(_wgslsmith_sub_i32(func_2(Struct_1(u_input.b.x, 0i), u_input.a.x, Struct_1(0u, global0.b)), -1i), 1i >> ((0u << (global0.a % 32u)) % 32u), all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)))), 3769i), u_input.a.yy, Struct_1(_wgslsmith_sub_u32(abs(1u), countOneBits(global0.a)) & max(_wgslsmith_mod_u32(global0.a, 0u), 13158u), global0.b));
    var var_1 = reverseBits(-25112i) > max(~var_0.d.b, func_4((vec3<i32>(global0.b, var_0.d.b, -31878i) >> (var_0.a.xyz % vec3<u32>(32u))) >> ((vec3<u32>(1u, 4294967295u, 34192u) >> (var_0.a.ywx % vec3<u32>(32u))) % vec3<u32>(32u)), select(-vec4<i32>(var_0.d.b, 34731i, global0.b, -17838i), vec4<i32>(global0.b, global0.b, 1i, u_input.c.x) & vec4<i32>(var_0.d.b, 30004i, 2147483647i, global0.b), true), select(vec2<i32>(u_input.c.x, 19576i), vec2<i32>(u_input.c.x, u_input.c.x), false), var_0.d).d.b);
    var var_2 = true;
    let var_3 = Struct_2(_wgslsmith_sub_vec4_u32(~(~var_0.a >> ((vec4<u32>(u_input.b.x, 0u, 4294967295u, 1u) & vec4<u32>(0u, u_input.b.x, 0u, 4294967295u)) % vec4<u32>(32u))), ~(~_wgslsmith_add_vec4_u32(vec4<u32>(39882u, 3578u, var_0.a.x, var_0.a.x), vec4<u32>(52208u, 4294967295u, global0.a, u_input.b.x)))), var_0.b, _wgslsmith_mult_u32(var_0.a.x | 0u, 0u), func_4(max(-firstTrailingBit(vec3<i32>(41368i, var_0.d.b, global0.b)), ~select(u_input.c, vec3<i32>(u_input.a.x, global0.b, var_0.d.b), true)), vec4<i32>(countOneBits(0i), 27743i, ~(-77654i), 23108i) & _wgslsmith_mult_vec4_i32(vec4<i32>(global0.b, -42327i, global0.b, -2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, var_0.d.b, -22340i, 1i), vec4<i32>(-1i, var_0.d.b, global0.b, global0.b))), vec2<i32>(39843i, _wgslsmith_dot_vec3_i32(~u_input.a, vec3<i32>(1i, u_input.a.x, 1i))), var_0.d).d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, -387f, 493f))) * vec3<f32>(_wgslsmith_f_op_f32(trunc(-1216f)), _wgslsmith_f_op_f32(floor(-1199f)), _wgslsmith_f_op_f32(-var_0.e.x)))));
    var var_4 = Struct_1(countOneBits(firstLeadingBit((15299u << (global0.a % 32u)) >> (_wgslsmith_mult_u32(global0.a, 44155u) % 32u))), countOneBits((~var_0.d.b ^ -1i) | -_wgslsmith_add_i32(global0.b, var_0.d.b)));
    return Struct_1(~36554u, _wgslsmith_mult_i32(global0.b, func_2(var_0.d, -3854i, func_4(~vec3<i32>(-6000i, 15617i, var_4.b), ~vec4<i32>(var_3.d.b, 1i, var_4.b, global0.b), u_input.a.zz >> (vec2<u32>(4294967295u, global0.a) % vec2<u32>(32u)), Struct_1(0u, 1i)).d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = ~vec2<u32>(4294967295u, ~(abs(u_input.b.x) ^ max(15608u, 43445u)));
    var var_2 = vec2<bool>(true, true);
    var_0 = true;
    var_1 = ~min(~(~vec2<u32>(19269u, 10849u)) & _wgslsmith_add_vec2_u32(u_input.b.yz ^ vec2<u32>(u_input.b.x, 70773u), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, global0.a), vec2<u32>(global0.a, 36043u))), vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(57007u, u_input.b.x), vec2<u32>(393u, u_input.b.x)), _wgslsmith_mod_u32(~var_1.x, u_input.b.x | var_1.x)));
    global0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(global0.a);
}

