struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec3<bool> = vec3<bool>(false, false, false);

var<private> global2: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(true, 8758i, vec2<i32>(2147483647i, i32(-2147483648))), Struct_1(true, -1i, vec2<i32>(25765i, -1i)), Struct_1(true, -51836i, vec2<i32>(0i, 0i)), Struct_1(false, 2147483647i, vec2<i32>(-11390i, -1i)), Struct_1(true, 2147483647i, vec2<i32>(55227i, i32(-2147483648))), Struct_1(false, 2147483647i, vec2<i32>(29555i, 2147483647i)), Struct_1(false, 55579i, vec2<i32>(1i, 1i)), Struct_1(false, i32(-2147483648), vec2<i32>(-1i, 26589i)), Struct_1(false, 2147483647i, vec2<i32>(i32(-2147483648), 0i)), Struct_1(true, -25660i, vec2<i32>(-14655i, 24303i)), Struct_1(false, 1i, vec2<i32>(64536i, i32(-2147483648))), Struct_1(false, -613i, vec2<i32>(-17755i, -1i)), Struct_1(false, 0i, vec2<i32>(40168i, 20105i)), Struct_1(true, 2147483647i, vec2<i32>(-1i, 1i)), Struct_1(true, 2147483647i, vec2<i32>(10029i, i32(-2147483648))), Struct_1(false, 1i, vec2<i32>(-24702i, -23195i)), Struct_1(true, -29915i, vec2<i32>(-58583i, 2147483647i)), Struct_1(false, -58289i, vec2<i32>(1i, 10138i)), Struct_1(false, 4342i, vec2<i32>(23024i, 75350i)), Struct_1(false, 3292i, vec2<i32>(0i, 15074i)), Struct_1(true, 23834i, vec2<i32>(1i, 0i)), Struct_1(true, i32(-2147483648), vec2<i32>(6808i, -1i)), Struct_1(true, -18315i, vec2<i32>(-1i, -11063i)), Struct_1(false, i32(-2147483648), vec2<i32>(43465i, 40760i)), Struct_1(true, 19i, vec2<i32>(-32105i, -13206i)), Struct_1(false, -1i, vec2<i32>(-8274i, 5856i)), Struct_1(true, 0i, vec2<i32>(i32(-2147483648), -14136i)), Struct_1(true, 1i, vec2<i32>(33540i, -24157i)), Struct_1(true, 5523i, vec2<i32>(i32(-2147483648), 2147483647i)), Struct_1(false, 2147483647i, vec2<i32>(12627i, -1i)), Struct_1(true, -4253i, vec2<i32>(14529i, -29792i)));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<bool>) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1205f, 513f, -1334f, -1245f))))))));
    let var_1 = global2[_wgslsmith_index_u32(~(~(~abs(_wgslsmith_mod_u32(global0.x, 31754u)))), 31u)];
    let var_2 = min(select((-vec3<i32>(1i, var_1.c.x, -1i) ^ vec3<i32>(var_1.b, var_1.b, -47099i)) | vec3<i32>(_wgslsmith_add_i32(var_1.b, var_1.c.x), ~var_1.b, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_1.c.x, var_1.c.x, 0i), vec4<i32>(-2128i, var_1.b, -20773i, -3648i))), -countOneBits(vec3<i32>(-2147483647i, 4943i, var_1.b)) | ~abs(vec3<i32>(1i, var_1.c.x, -11859i)), arg_0.x || (abs(-65825i) != _wgslsmith_dot_vec3_i32(vec3<i32>(23606i, -2147483647i, -30281i), vec3<i32>(2147483647i, 0i, -1i)))), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, min(~var_1.c.x, _wgslsmith_mod_i32(-55656i, var_1.c.x)), countOneBits(-12052i)), ~((vec3<i32>(12691i, var_1.c.x, 2147483647i) & vec3<i32>(-1i, 1i, var_1.b)) << ((vec3<u32>(global0.x, 0u, u_input.a.x) | u_input.a) % vec3<u32>(32u)))));
    global1 = arg_0;
    return ~abs(var_1.c);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    global2 = array<Struct_1, 31>();
    global0 = firstLeadingBit(~select(max(vec3<u32>(global0.x, global0.x, global0.x) & vec3<u32>(u_input.a.x, 1u, global0.x), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, global0.x), vec3<u32>(0u, 349u, 5763u))), vec3<u32>(u_input.a.x, 1u, global0.x) >> (_wgslsmith_add_vec3_u32(vec3<u32>(global0.x, global0.x, global0.x), vec3<u32>(1u, 53140u, 4294967295u)) % vec3<u32>(32u)), select(vec3<bool>(arg_1.d.a, arg_1.d.a, arg_3.a), select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(false, true, false), vec3<bool>(false, arg_0.a.a, arg_3.a)), arg_0.b.a)));
    let var_0 = Struct_2(Struct_1(true, _wgslsmith_div_i32(-6260i, countOneBits(~arg_1.b.b)), reverseBits(~max(vec2<i32>(-2294i, arg_1.d.b), arg_3.c))), Struct_1(arg_0.d.a, ~arg_2.b, vec2<i32>(-1i) * -(~vec2<i32>(arg_3.b, arg_3.c.x))), arg_0.c, arg_3);
    var var_1 = _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(68494u, u_input.a.x, 1u, 0u), ~vec4<u32>(0u, global0.x, global0.x, 1u))), (vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, u_input.a.x, 0u), vec3<u32>(1238u, global0.x, global0.x)), ~global0.x) ^ global0.zz) ^ global0.zx);
    let var_2 = global1.zy;
    return !select(!(!(!vec3<bool>(global1.x, false, arg_3.a))), !select(!vec3<bool>(false, arg_1.d.a, true), vec3<bool>(arg_1.d.a, arg_3.a, true), arg_1.a.a), select(vec3<bool>(global1.x, true, false), !vec3<bool>(arg_2.a, arg_2.a, var_2.x), !arg_3.a));
}

fn func_2(arg_0: vec2<i32>, arg_1: bool) -> Struct_1 {
    global1 = select(func_4(Struct_2(Struct_1(true, -1i | arg_0.x, -arg_0), global2[_wgslsmith_index_u32(21002u, 31u)], _wgslsmith_f_op_f32(max(-762f, 612f)), Struct_1(all(global1.zx), 38109i, ~vec2<i32>(-33165i, arg_0.x))), Struct_2(Struct_1(!global1.x, 12262i, arg_0), Struct_1(true, arg_0.x, vec2<i32>(-39766i, arg_0.x)), _wgslsmith_f_op_f32(sign(-1000f)), Struct_1(arg_1, 1i, ~vec2<i32>(arg_0.x, arg_0.x))), Struct_1(_wgslsmith_mult_u32(4294967295u, global0.x) == global0.x, -38241i, ~arg_0), Struct_1(true, arg_0.x, func_3(vec3<bool>(true, true, false)))), vec3<bool>(false, !(!global1.x), select(any(global1.xx), (global0.x | 1u) <= ~14036u, select(false, !global1.x, arg_0.x > -2147483647i))), !vec3<bool>(true, all(vec3<bool>(false, global1.x, arg_1)), all(!vec3<bool>(true, arg_1, false))));
    var var_0 = arg_1;
    var_0 = global1.x;
    var var_1 = vec3<u32>(~(~u_input.a.x >> (global0.x % 32u)), u_input.a.x, 4294967295u);
    var var_2 = abs(~24257u);
    return global2[_wgslsmith_index_u32(max(1u, ~0u), 31u)];
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32, arg_3: vec2<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_mod_u32(4294967295u, global0.x);
    let var_1 = arg_1.c;
    global1 = select(!vec3<bool>(!(!arg_1.b.a), func_4(Struct_2(arg_1.d, arg_0, arg_2, Struct_1(false, 2147483647i, vec2<i32>(arg_1.d.b, arg_1.a.c.x))), arg_1, Struct_1(arg_0.a, arg_1.a.c.x, vec2<i32>(arg_0.c.x, 2147483647i)), Struct_1(true, arg_0.b, arg_0.c)).x, true), func_4(Struct_2(func_2(vec2<i32>(arg_0.b, 2147483647i) >> (global0.xy % vec2<u32>(32u)), arg_0.a), func_2(-arg_1.a.c, arg_0.b >= arg_1.d.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)), func_2(~arg_1.d.c, true)), Struct_2(func_2(vec2<i32>(-42541i, 2147483647i), false), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.xz, vec2<u32>(var_0, 38906u)), 31u)], -624f, arg_0), Struct_1(false, arg_0.b, vec2<i32>(func_3(vec3<bool>(global1.x, arg_1.b.a, arg_0.a)).x, firstLeadingBit(arg_1.a.b))), Struct_1(arg_1.b.a, arg_1.d.b, _wgslsmith_div_vec2_i32(arg_1.d.c | arg_0.c, arg_1.d.c))), any(select(vec4<bool>(arg_0.a | false, true, true, arg_1.b.a), vec4<bool>(true, true == global1.x, !global1.x, false), any(!vec4<bool>(true, arg_0.a, arg_0.a, false)))));
    let var_2 = arg_1.d;
    let var_3 = var_2;
    return Struct_2(Struct_1(!arg_0.a, _wgslsmith_div_i32(max(2147483647i, 1i) >> (~global0.x % 32u), var_3.b), vec2<i32>(1i, -var_2.c.x) >> (u_input.a.xz % vec2<u32>(32u))), arg_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1))), var_3);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(955f)), -454f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c))), _wgslsmith_f_op_f32(-arg_0.c), arg_2.x);
    let var_1 = vec2<bool>(true, ~select(~u_input.a.x, global0.x, arg_3.x) > ~firstTrailingBit(21415u | u_input.a.x));
    var var_2 = true;
    var_2 = true;
    let var_3 = global0.x;
    return func_2(arg_1.b.c, func_2(arg_0.d.c, all(select(select(vec4<bool>(arg_0.a.a, arg_0.d.a, false, global1.x), vec4<bool>(false, true, false, global1.x), vec4<bool>(global1.x, global1.x, true, true)), !vec4<bool>(global1.x, var_1.x, false, arg_1.a.a), vec4<bool>(false, arg_3.x, arg_3.x, global1.x)))).a);
}

fn func_7(arg_0: i32, arg_1: u32, arg_2: Struct_1) -> Struct_2 {
    let var_0 = 1i;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(182f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-202f, 1090f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1015f, 820f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(305f, 579f, -673f))) * vec3<f32>(1060f, _wgslsmith_f_op_f32(f32(-1f) * -441f), -1688f))));
    var var_2 = 0u;
    var var_3 = false;
    var var_4 = arg_2.a;
    return func_5(func_2(-vec2<i32>(~arg_0, 0i), select(true, false, true) | global1.x), func_5(Struct_1(!arg_2.a, arg_2.b, arg_2.c), Struct_2(func_2(max(vec2<i32>(-1461i, -60881i), vec2<i32>(2147483647i, arg_2.b)), arg_2.a), func_6(Struct_2(global2[_wgslsmith_index_u32(arg_1, 31u)], Struct_1(false, -4554i, arg_2.c), var_1.x, arg_2), func_5(global2[_wgslsmith_index_u32(53072u, 31u)], Struct_2(global2[_wgslsmith_index_u32(22760u, 31u)], Struct_1(arg_2.a, arg_0, vec2<i32>(13502i, 20365i)), 1935f, Struct_1(global1.x, var_0, arg_2.c)), var_1.x, vec2<f32>(var_1.x, 899f)), vec4<f32>(var_1.x, var_1.x, var_1.x, -656f), vec2<bool>(false, global1.x)), -239f, global2[_wgslsmith_index_u32(firstLeadingBit(global0.x) >> (_wgslsmith_sub_u32(76815u, u_input.a.x) % 32u), 31u)]), 839f, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(var_1.x - -1145f), _wgslsmith_f_op_f32(max(var_1.x, var_1.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.yz + var_1.zy), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x))), vec2<bool>(all(vec2<bool>(false, true)), false)))), _wgslsmith_f_op_f32(max(868f, var_1.x)), vec2<f32>(_wgslsmith_f_op_f32(329f - _wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(var_1.x - var_1.x), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-384f + var_1.x))))));
}

fn func_1(arg_0: vec2<f32>) -> i32 {
    let var_0 = func_7(2147483647i, u_input.a.x, func_6(func_5(Struct_1(all(vec2<bool>(true, false)), ~2147483647i, vec2<i32>(0i, -2147483647i)), Struct_2(func_2(vec2<i32>(-30473i, 0i), true), func_2(vec2<i32>(1i, 2147483647i), global1.x), -256f, func_2(vec2<i32>(-2147483647i, 2147483647i), false)), -541f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.x, 1757f))))), func_5(func_2(abs(vec2<i32>(8883i, -1i)), true), func_5(global2[_wgslsmith_index_u32(1u, 31u)], func_5(global2[_wgslsmith_index_u32(global0.x, 31u)], Struct_2(Struct_1(global1.x, -1i, vec2<i32>(-33446i, -42907i)), global2[_wgslsmith_index_u32(global0.x, 31u)], -186f, global2[_wgslsmith_index_u32(u_input.a.x, 31u)]), 1374f, arg_0), -205f, vec2<f32>(673f, -1000f)), -379f, vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(ceil(-1068f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(805f, arg_0.x, arg_0.x, arg_0.x)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.x, 2202f, arg_0.x, arg_0.x))))))), !(!vec2<bool>(global1.x, global1.x))));
    global0 = ~u_input.a;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    global2 = array<Struct_1, 31>();
    global0 = min(vec3<u32>(u_input.a.x, firstTrailingBit(~u_input.a.x), ~max(45977u, _wgslsmith_add_u32(0u, 71517u))), ~_wgslsmith_div_vec3_u32(~(u_input.a & u_input.a), ~vec3<u32>(1u, global0.x, 33104u)));
    return abs(1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(abs(reverseBits(_wgslsmith_add_i32(-27532i, func_1(vec2<f32>(-500f, -751f))))), _wgslsmith_clamp_i32(2147483647i, i32(-1i) * -_wgslsmith_add_i32(-4016i, 2147483647i), -(~(~(-9926i)))));
    global2 = array<Struct_1, 31>();
    var var_1 = _wgslsmith_f_op_f32(-1013f - _wgslsmith_f_op_f32(f32(-1f) * -680f));
    global1 = vec3<bool>(_wgslsmith_div_u32(u_input.a.x, 7412u) < _wgslsmith_mult_u32(_wgslsmith_mult_u32(global0.x, global0.x), _wgslsmith_sub_u32(~global0.x, 1u | u_input.a.x)), all(!(!(!global1.zy))), true);
    let var_2 = Struct_2(Struct_1(any(select(!vec4<bool>(global1.x, false, global1.x, global1.x), vec4<bool>(false, global1.x, global1.x, true), !vec4<bool>(global1.x, true, global1.x, true))), min(max(var_0, var_0) >> (~global0.x % 32u), var_0 & var_0), func_6(Struct_2(global2[_wgslsmith_index_u32(global0.x, 31u)], func_6(Struct_2(global2[_wgslsmith_index_u32(global0.x, 31u)], Struct_1(global1.x, var_0, vec2<i32>(var_0, var_0)), -367f, Struct_1(true, -33994i, vec2<i32>(-24036i, -1i))), Struct_2(Struct_1(false, var_0, vec2<i32>(-35260i, var_0)), Struct_1(global1.x, var_0, vec2<i32>(var_0, var_0)), 1280f, Struct_1(false, -19216i, vec2<i32>(var_0, -2147483647i))), vec4<f32>(440f, -991f, 538f, -1611f), global1.zy), 434f, func_7(var_0, 54619u, global2[_wgslsmith_index_u32(global0.x, 31u)]).b), Struct_2(Struct_1(false, -27855i, vec2<i32>(-56748i, -37151i)), global2[_wgslsmith_index_u32(~22799u, 31u)], _wgslsmith_f_op_f32(-233f + -904f), Struct_1(global1.x, var_0, vec2<i32>(var_0, var_0))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-596f, -789f, -1000f, -756f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-809f, 607f, 1933f, -659f) * vec4<f32>(1287f, 1166f, -1602f, -1579f)))), global1.yy).c), func_2(vec2<i32>(var_0, 6132i), global1.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), func_6(func_5(global2[_wgslsmith_index_u32(global0.x, 31u)], Struct_2(global2[_wgslsmith_index_u32(u_input.a.x, 31u)], Struct_1(true, var_0, vec2<i32>(2147483647i, 2147483647i)), _wgslsmith_f_op_f32(sign(-1084f)), global2[_wgslsmith_index_u32(~41389u, 31u)]), _wgslsmith_f_op_f32(min(209f, _wgslsmith_f_op_f32(-248f * 854f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-740f, 822f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1045f, 1000f)))), Struct_2(Struct_1(global1.x, var_0 & -2147483647i, vec2<i32>(2503i, 2147483647i)), Struct_1(1u == u_input.a.x, var_0, vec2<i32>(0i, -2147483647i) << (u_input.a.yz % vec2<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -442f) - 320f), global2[_wgslsmith_index_u32(firstTrailingBit(~u_input.a.x), 31u)]), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-449f, 1433f, -336f, -1853f)) + vec4<f32>(1f, 1f, 1f, 1f)), vec4<f32>(func_5(global2[_wgslsmith_index_u32(u_input.a.x, 31u)], Struct_2(Struct_1(false, 2147483647i, vec2<i32>(1i, -54174i)), Struct_1(global1.x, var_0, vec2<i32>(var_0, var_0)), 229f, global2[_wgslsmith_index_u32(u_input.a.x, 31u)]), -1000f, vec2<f32>(1227f, -539f)).c, _wgslsmith_f_op_f32(trunc(1073f)), _wgslsmith_f_op_f32(abs(-593f)), _wgslsmith_f_op_f32(-162f * 357f)))), !global1.zy));
    let var_3 = global1.x && true;
    global1 = vec3<bool>(true, var_3, func_7(~_wgslsmith_add_i32(~var_0, _wgslsmith_mod_i32(1i, var_2.d.b)), 4294967295u, Struct_1(!global1.x, firstLeadingBit(-1i), ~(var_2.a.c >> (vec2<u32>(global0.x, global0.x) % vec2<u32>(32u))))).a.a);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(max(var_2.c, 160f)), _wgslsmith_f_op_f32(104f * -581f), var_2.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-285f, var_2.c, -924f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-478f, var_2.c, 190f) - vec3<f32>(var_2.c, 1213f, -1018f))), select(select(vec3<bool>(false, false, true), vec3<bool>(var_2.a.a, true, false), vec3<bool>(false, var_2.d.a, false)), vec3<bool>(false, true, false), !vec3<bool>(var_2.b.a, var_2.a.a, false)))))), _wgslsmith_f_op_f32(-1315f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))), var_2.d.c, func_2(-firstLeadingBit(func_5(Struct_1(true, var_2.a.b, var_2.b.c), Struct_2(global2[_wgslsmith_index_u32(u_input.a.x, 31u)], var_2.a, 336f, var_2.b), var_2.c, vec2<f32>(-424f, -431f)).a.c), global1.x).b);
}

