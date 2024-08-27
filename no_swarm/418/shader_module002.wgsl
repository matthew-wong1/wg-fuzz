struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec3<i32>(i32(-2147483648), -47525i, i32(-2147483648)), vec2<u32>(69293u, 25260u), vec4<i32>(-1i, 66599i, -18516i, 0i)), Struct_1(vec3<i32>(8327i, 1i, 0i), vec2<u32>(54382u, 10544u), vec4<i32>(1i, 2147483647i, 2147483647i, 16914i)), Struct_1(vec3<i32>(47137i, 5646i, -36696i), vec2<u32>(4294967295u, 4294967295u), vec4<i32>(12887i, 8305i, -33343i, 0i)), Struct_1(vec3<i32>(1i, 1i, -1i), vec2<u32>(62182u, 1u), vec4<i32>(-1i, 2147483647i, 40091i, 1i)), Struct_1(vec3<i32>(-46383i, -4583i, -12613i), vec2<u32>(0u, 4294967295u), vec4<i32>(-1i, 1i, 2147483647i, i32(-2147483648))), Struct_1(vec3<i32>(i32(-2147483648), 11723i, i32(-2147483648)), vec2<u32>(1u, 5454u), vec4<i32>(23173i, 62955i, 2147483647i, 1i)), Struct_1(vec3<i32>(-46592i, 29758i, 11529i), vec2<u32>(20764u, 1u), vec4<i32>(30408i, 0i, -43351i, -23436i)), Struct_1(vec3<i32>(0i, 1i, -8864i), vec2<u32>(4294967295u, 1u), vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), 0i)), Struct_1(vec3<i32>(i32(-2147483648), -3711i, -17836i), vec2<u32>(47554u, 30627u), vec4<i32>(i32(-2147483648), 0i, -1i, -3116i)), Struct_1(vec3<i32>(0i, 2147483647i, -1i), vec2<u32>(16886u, 4294967295u), vec4<i32>(-10419i, -65411i, 2569i, 44990i)), Struct_1(vec3<i32>(45459i, 0i, 1i), vec2<u32>(41472u, 1u), vec4<i32>(i32(-2147483648), 2147483647i, 0i, 2147483647i)), Struct_1(vec3<i32>(-31391i, 6645i, i32(-2147483648)), vec2<u32>(28076u, 4294967295u), vec4<i32>(3641i, 0i, -1i, -1i)), Struct_1(vec3<i32>(2147483647i, -24020i, -39522i), vec2<u32>(1u, 0u), vec4<i32>(-1i, -11536i, 0i, -1i)), Struct_1(vec3<i32>(-1656i, 1i, 0i), vec2<u32>(49352u, 0u), vec4<i32>(-58289i, i32(-2147483648), 5399i, -30090i)), Struct_1(vec3<i32>(72716i, -1776i, -3024i), vec2<u32>(52058u, 12281u), vec4<i32>(1i, 1i, -1i, 23708i)), Struct_1(vec3<i32>(-1i, 1i, -15626i), vec2<u32>(46346u, 81456u), vec4<i32>(37117i, 2147483647i, 1i, 2082i)), Struct_1(vec3<i32>(i32(-2147483648), 0i, 0i), vec2<u32>(0u, 1u), vec4<i32>(i32(-2147483648), 16904i, 31424i, -53615i)), Struct_1(vec3<i32>(-4540i, 14447i, 0i), vec2<u32>(1u, 19537u), vec4<i32>(-16555i, -84778i, 0i, 2147483647i)), Struct_1(vec3<i32>(-7625i, 12515i, i32(-2147483648)), vec2<u32>(44896u, 14332u), vec4<i32>(1i, -1i, -9759i, 11535i)), Struct_1(vec3<i32>(1i, -14265i, 717i), vec2<u32>(1u, 88696u), vec4<i32>(-84007i, 47543i, -1i, 6787i)), Struct_1(vec3<i32>(i32(-2147483648), -11861i, 2911i), vec2<u32>(44048u, 1u), vec4<i32>(0i, -815i, i32(-2147483648), 16161i)), Struct_1(vec3<i32>(2147483647i, -32019i, -9186i), vec2<u32>(0u, 0u), vec4<i32>(0i, 25799i, 2147483647i, 10757i)), Struct_1(vec3<i32>(-13817i, -47818i, 1i), vec2<u32>(4489u, 4294967295u), vec4<i32>(51082i, i32(-2147483648), -21752i, i32(-2147483648))), Struct_1(vec3<i32>(25298i, -7468i, 13102i), vec2<u32>(1u, 26699u), vec4<i32>(1i, 31409i, 28363i, 19582i)), Struct_1(vec3<i32>(-5586i, 20370i, -1596i), vec2<u32>(4294967295u, 40107u), vec4<i32>(2147483647i, 34491i, -24813i, 1755i)), Struct_1(vec3<i32>(-13775i, 692i, 22602i), vec2<u32>(0u, 79098u), vec4<i32>(-42773i, 1i, -1i, 25595i)), Struct_1(vec3<i32>(1i, 40756i, -18691i), vec2<u32>(0u, 13218u), vec4<i32>(21146i, 2147483647i, -1i, 1i)), Struct_1(vec3<i32>(0i, 51927i, 15895i), vec2<u32>(33376u, 0u), vec4<i32>(1i, i32(-2147483648), 0i, -1i)), Struct_1(vec3<i32>(1i, 0i, i32(-2147483648)), vec2<u32>(95021u, 11881u), vec4<i32>(1837i, -17751i, 0i, 0i)), Struct_1(vec3<i32>(-1i, -27714i, i32(-2147483648)), vec2<u32>(63825u, 29648u), vec4<i32>(0i, -49743i, -41900i, -1i)), Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), -3046i), vec2<u32>(26943u, 0u), vec4<i32>(14730i, 2147483647i, 2147483647i, i32(-2147483648))));

var<private> global1: vec4<f32> = vec4<f32>(-604f, 671f, 294f, -732f);

var<private> global2: vec3<bool>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: f32, arg_2: i32, arg_3: vec2<bool>) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(-arg_0.x), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1164f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.x - arg_0.x)))) * vec4<f32>(-466f, global1.x, -223f, _wgslsmith_f_op_f32(max(-1000f, arg_1))));
}

fn func_2(arg_0: vec3<i32>) -> bool {
    var var_0 = global0[_wgslsmith_index_u32(69315u, 31u)];
    let var_1 = global0[_wgslsmith_index_u32(0u, 31u)];
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1579f, global1.x, global1.x, global1.x) + vec4<f32>(global1.x, global1.x, global1.x, global1.x)) + vec4<f32>(737f, global1.x, global1.x, -920f)))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec4<f32>(-579f, -1423f, 1132f, global1.x), _wgslsmith_f_op_f32(-global1.x), -arg_0.x, global2.yz))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1474f, global1.x, -1111f, global1.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 294f, -616f, global1.x))))))));
    return true;
}

fn func_1(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    global2 = vec3<bool>(func_2(reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, 0i, arg_2.a.x), arg_2.c.wwx))), 35990u == _wgslsmith_add_u32(1u & arg_2.b.x, ~arg_2.b.x), !global2.x);
    global0 = array<Struct_1, 31>();
    global0 = array<Struct_1, 31>();
    var var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.xz));
    return Struct_1(_wgslsmith_add_vec3_i32(select(-vec3<i32>(2147483647i, u_input.d, -57176i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-15456i, 18393i, -16344i), _wgslsmith_clamp_vec3_i32(vec3<i32>(10892i, 1i, u_input.d), arg_2.a, var_0.a), vec3<i32>(u_input.a, arg_2.a.x, arg_2.c.x)), select(vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(global2.x, false, global2.x), vec3<bool>(true, true, true))), vec3<i32>(arg_2.a.x, -_wgslsmith_clamp_i32(0i, arg_2.a.x, 65367i), u_input.d >> (arg_2.b.x % 32u))), _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(~arg_2.b, var_0.b), ~arg_2.b), -abs(vec4<i32>(0i, u_input.a, -1i, arg_2.a.x) ^ arg_2.c));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = func_1(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(680f - -699f), -2590f)), -265f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, -844f, global1.x, global1.x), vec4<f32>(global1.x, -713f, -1147f, 1611f)), _wgslsmith_f_op_f32(select(-1466f, global1.x, false)), arg_2.a.x, !global2.xx)).x))), arg_2);
    var var_1 = func_1(global1.xy, _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(floor(-1384f))), func_1(global1.wy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -756f))), global0[_wgslsmith_index_u32(func_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.wz - vec2<f32>(global1.x, -1008f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-846f, 205f))), -921f, Struct_1(select(arg_1.c.zwy, var_0.c.wyy, true), arg_0.b, _wgslsmith_clamp_vec4_i32(arg_2.c, arg_2.c, arg_0.c))).b.x, 31u)]));
    return min(~_wgslsmith_clamp_vec4_u32(vec4<u32>(~111533u, abs(arg_2.b.x), ~4294967295u, _wgslsmith_clamp_u32(1u, arg_1.b.x, arg_2.b.x)), ~(vec4<u32>(u_input.b, 0u, 95007u, arg_1.b.x) >> (vec4<u32>(68393u, arg_2.b.x, 30769u, 51116u) % vec4<u32>(32u))), reverseBits(vec4<u32>(73369u, arg_2.b.x, var_0.b.x, var_1.b.x) << (vec4<u32>(var_1.b.x, 12026u, var_1.b.x, 40173u) % vec4<u32>(32u)))), vec4<u32>(max(~arg_0.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0.b.x), vec2<u32>(arg_0.b.x, 74764u) & arg_2.b)), 1u, countOneBits(~var_1.b.x), 4294967295u << (~_wgslsmith_clamp_u32(u_input.b, 85264u, arg_1.b.x) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(!global2.x, global2.x);
    global1 = vec4<f32>(-836f, global1.x, _wgslsmith_f_op_f32(ceil(425f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -129f)));
    var var_1 = _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 20895u), vec2<u32>(18867u, 1860u)), u_input.c, ~_wgslsmith_div_u32(4294967295u, u_input.c)), func_4(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, _wgslsmith_add_u32(u_input.c, 4294967295u)), 31u)], func_1(_wgslsmith_f_op_vec2_f32(abs(global1.zz)), _wgslsmith_f_op_f32(-global1.x), global0[_wgslsmith_index_u32(~u_input.b, 31u)]), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.c, _wgslsmith_clamp_u32(1u, 0u, 0u)), 31u)])), abs(func_4(Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(16785i, 1i, 1i), vec3<i32>(0i, -1i, u_input.a)), firstLeadingBit(vec2<u32>(u_input.c, u_input.b)), vec4<i32>(u_input.a, u_input.a, 1i, u_input.d) | vec4<i32>(5949i, u_input.a, 2147483647i, u_input.d)), func_1(_wgslsmith_f_op_vec2_f32(-global1.yy), global1.x, func_1(global1.wz, global1.x, Struct_1(vec3<i32>(u_input.d, u_input.a, u_input.a), vec2<u32>(4294967295u, u_input.b), vec4<i32>(-1i, u_input.d, u_input.a, 49207i)))), Struct_1(vec3<i32>(1i, 5663i, 40856i), ~vec2<u32>(20239u, u_input.c), ~vec4<i32>(u_input.a, u_input.d, u_input.a, u_input.a)))), countOneBits(firstTrailingBit(vec4<u32>(countOneBits(u_input.c), ~4294967295u, 1u, 111103u))));
    var var_2 = ~vec4<i32>(i32(-1i) * -1i, select(~0i, i32(-1i) * -u_input.d, all(!vec2<bool>(global2.x, false))), select(-(~(-2147483647i)), 2147483647i, any(vec3<bool>(var_0.x, true, var_0.x))), min(2147483647i, func_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-199f, global1.x), global1.ww, var_0.x)), _wgslsmith_f_op_f32(-global1.x), Struct_1(vec3<i32>(-1i, 2147483647i, 2147483647i), var_1.yx, vec4<i32>(u_input.d, 7789i, u_input.d, 1i))).a.x));
    var_0 = select(vec2<bool>(!(global1.x >= 162f), global2.x), select(global2.zx, select(select(vec2<bool>(global2.x, var_0.x), !global2.zx, global2.zz), select(global2.xy, !global2.xx, !vec2<bool>(var_0.x, true)), select(select(global2.yz, vec2<bool>(true, false), global2.x), global2.yx, true)), select(true, var_0.x, global2.x)), true);
    var var_3 = global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(45298u, ~_wgslsmith_mod_u32(1u, var_1.x)) ^ u_input.c, 31u)];
    var var_4 = select(vec4<u32>(min(abs(14046u), u_input.c << (~u_input.c % 32u)), ~73450u, ~max(~var_3.b.x, _wgslsmith_mult_u32(0u, var_1.x)), ~_wgslsmith_div_u32(1u, var_3.b.x) >> (var_1.x % 32u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(abs(12943u), var_1.x, 0u, u_input.b >> (var_3.b.x % 32u)), min(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 0u, 30273u, var_1.x) >> (vec4<u32>(0u, 1u, u_input.b, 0u) % vec4<u32>(32u)), ~vec4<u32>(var_1.x, var_3.b.x, 1u, var_3.b.x)), ~vec4<u32>(var_1.x, var_3.b.x, var_3.b.x, u_input.b))), ((var_2.x | -var_2.x) >> (_wgslsmith_mult_u32(~var_3.b.x, countOneBits(0u)) % 32u)) < var_3.a.x);
    var var_5 = var_1.x;
    var_4 = ~(~vec4<u32>(u_input.c, 0u, 0u, _wgslsmith_sub_u32(var_1.x, ~u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(-select(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(var_2.x, u_input.a, var_3.a.x, -3564i)), -vec4<i32>(-1i, u_input.d, u_input.d, -1i)), _wgslsmith_mult_vec4_i32(var_3.c, vec4<i32>(1i, var_2.x, -9160i, 12216i) ^ vec4<i32>(var_3.c.x, 15790i, 2147483647i, u_input.a)), vec4<bool>(true, true, all(vec4<bool>(var_0.x, false, true, global2.x)), global2.x)), var_4.x, ~18020u);
}

