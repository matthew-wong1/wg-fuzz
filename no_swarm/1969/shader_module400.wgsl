struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec2<i32>,
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

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec3<u32>(0u, 1u, 1u), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_1(vec3<u32>(36621u, 20478u, 0u), vec2<bool>(true, false), vec2<bool>(false, false)), Struct_1(vec3<u32>(4294967295u, 52488u, 4294967295u), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_1(vec3<u32>(0u, 294u, 0u), vec2<bool>(false, true), vec2<bool>(false, false)), Struct_1(vec3<u32>(1708u, 4294967295u, 23892u), vec2<bool>(true, false), vec2<bool>(false, true)));

var<private> global2: i32;

var<private> global3: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec3<u32>(0u, 0u, 76161u), vec2<bool>(false, true), vec2<bool>(false, false)), Struct_1(vec3<u32>(16930u, 6702u, 1u), vec2<bool>(true, false), vec2<bool>(true, true)), Struct_1(vec3<u32>(21648u, 26937u, 0u), vec2<bool>(false, true), vec2<bool>(true, false)), Struct_1(vec3<u32>(35698u, 33539u, 4294967295u), vec2<bool>(false, false), vec2<bool>(false, true)), Struct_1(vec3<u32>(41146u, 25457u, 1u), vec2<bool>(false, false), vec2<bool>(false, true)), Struct_1(vec3<u32>(16067u, 62990u, 4294967295u), vec2<bool>(true, false), vec2<bool>(true, false)), Struct_1(vec3<u32>(29136u, 11865u, 1u), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_1(vec3<u32>(7071u, 4736u, 0u), vec2<bool>(true, true), vec2<bool>(false, false)));

var<private> global4: Struct_1 = Struct_1(vec3<u32>(88114u, 0u, 79862u), vec2<bool>(true, true), vec2<bool>(false, false));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_1 {
    return global3[_wgslsmith_index_u32(arg_3.x, 8u)];
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: u32, arg_3: u32) -> vec4<bool> {
    var var_0 = func_2(Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_add_u32(18206u, 0u), _wgslsmith_dot_vec4_u32(u_input.c, u_input.c), arg_2), func_2(arg_1, arg_3, global1[_wgslsmith_index_u32(arg_1.a.x ^ arg_2, 5u)], u_input.c).a), vec2<bool>(-u_input.d.x <= 12614i, !all(vec4<bool>(global0.c.x, true, false, global0.b.x))), vec2<bool>(any(vec4<bool>(global0.c.x, true, true, arg_0.x)), _wgslsmith_f_op_f32(sign(1652f)) != _wgslsmith_f_op_f32(f32(-1f) * -585f))), u_input.c.x, Struct_1(vec3<u32>(abs(0u) & u_input.b.x, firstLeadingBit(~0u), _wgslsmith_dot_vec2_u32(arg_1.a.xx, global0.a.zz)), vec2<bool>(true, true), vec2<bool>(arg_1.c.x, false)), vec4<u32>(0u, global0.a.x, ~abs(global4.a.x), 1u) & max(~(u_input.c | u_input.c), vec4<u32>(max(14131u, global0.a.x), ~global4.a.x, arg_1.a.x << (arg_1.a.x % 32u), _wgslsmith_dot_vec2_u32(arg_1.a.xx, u_input.c.xx))));
    global1 = array<Struct_1, 5>();
    let var_1 = func_2(func_2(Struct_1(firstLeadingBit(u_input.c.wzz), vec2<bool>(true, all(vec3<bool>(global0.b.x, arg_1.b.x, arg_1.b.x))), global0.b), 12177u, global1[_wgslsmith_index_u32(global0.a.x, 5u)], u_input.c), global4.a.x, global1[_wgslsmith_index_u32(52741u, 5u)], u_input.c);
    global0 = Struct_1(countOneBits(vec3<u32>(1u, 1570u, var_0.a.x)), arg_1.b, select(select(select(global4.b, vec2<bool>(true, true), !vec2<bool>(var_1.c.x, global4.c.x)), var_1.c, vec2<bool>(true, var_1.c.x)), func_2(var_1, select(firstTrailingBit(0u), global0.a.x, select(true, global0.c.x, false)), Struct_1(vec3<u32>(arg_3, 22818u, arg_2), !var_0.c, vec2<bool>(true, true)), u_input.c).c, !vec2<bool>(any(global0.b), true)));
    global1 = array<Struct_1, 5>();
    return vec4<bool>(all(!vec4<bool>(true, var_1.b.x | true, true, func_2(global1[_wgslsmith_index_u32(global4.a.x, 5u)], 0u, Struct_1(u_input.c.wyy, global4.c, global0.b), vec4<u32>(arg_3, global4.a.x, 0u, arg_3)).b.x)), true, !(!select(false, true, !global0.b.x)), !(arg_0.x | var_0.c.x));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: vec2<bool>) -> vec2<f32> {
    let var_0 = func_2(global3[_wgslsmith_index_u32(~(~32628u), 8u)], ~(_wgslsmith_mod_u32(max(global4.a.x, 65317u), arg_0.x) ^ ((65832u << (u_input.b.x % 32u)) & global0.a.x)), func_2(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(60531u, 8424u), global4.a.xx)), u_input.c.x), 5u)], arg_0.x, func_2(Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, global4.a.x, global0.a.x), vec3<u32>(global4.a.x, global4.a.x, 31243u)), arg_2, vec2<bool>(arg_1.x, false)), 0u, global3[_wgslsmith_index_u32(~arg_0.x, 8u)], ~(u_input.c ^ vec4<u32>(22728u, u_input.c.x, 5910u, global0.a.x))), vec4<u32>(~0u & _wgslsmith_mod_u32(79879u, u_input.b.x), _wgslsmith_div_u32(1u, ~global0.a.x), 107715u, ~18107u >> (abs(global0.a.x) % 32u))), ~u_input.c);
    let var_1 = any(vec2<bool>(any(var_0.b), true));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1243f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-303f)), _wgslsmith_f_op_f32(185f - 389f)), _wgslsmith_f_op_f32(max(1895f, -533f)), 500f)) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-215f, -503f, 795f, -1523f), vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_div_vec4_f32(vec4<f32>(-1678f, -347f, -1507f, -299f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1069f, 1416f, -2832f, 454f), vec4<f32>(483f, -304f, 783f, -702f), arg_2.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(104f + -1760f), -425f, _wgslsmith_f_op_f32(step(-1092f, 700f)), -152f)))));
    var var_3 = _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(abs(u_input.d.zyx), vec3<i32>(0i, abs(_wgslsmith_div_i32(u_input.e.x, u_input.a)), u_input.a)), u_input.d.ywx);
    let var_4 = false;
    return _wgslsmith_f_op_vec2_f32(-var_2.zx);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_mod_i32(1i, abs(~1i)) >> (global0.a.x % 32u);
    global0 = func_2(Struct_1(u_input.c.wwz, global0.b, arg_2.c), ~(~global0.a.x) << (arg_1.x % 32u), Struct_1(((vec3<u32>(1u, 4294967295u, 4294967295u) >> (vec3<u32>(67024u, global0.a.x, 4294967295u) % vec3<u32>(32u))) & select(vec3<u32>(4294967295u, 31125u, arg_0.a.x), vec3<u32>(4294967295u, arg_2.a.x, 7177u), true)) & vec3<u32>(abs(global4.a.x), _wgslsmith_mult_u32(arg_0.a.x, 4294967295u), global4.a.x & 26266u), vec2<bool>(!select(arg_0.b.x, global4.b.x, true), _wgslsmith_f_op_f32(-530f * arg_3.x) <= arg_3.x), global0.b), u_input.c);
    var var_1 = vec4<f32>(185f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-814f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1141f), _wgslsmith_f_op_f32(abs(562f)))))), _wgslsmith_f_op_f32(step(-1262f, _wgslsmith_f_op_f32(-1106f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x - arg_3.x) * _wgslsmith_f_op_f32(arg_3.x - -1394f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_3.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_3.x * arg_3.x), arg_3.x))))));
    global1 = array<Struct_1, 5>();
    var var_2 = Struct_1(~vec3<u32>(arg_2.a.x, ~(arg_0.a.x | 3459u), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(62708u, 1u), vec2<u32>(39901u, u_input.b.x)), ~arg_2.a.xx)), func_3(func_3(global4.c, func_2(global3[_wgslsmith_index_u32(~arg_0.a.x, 8u)], 1u, func_2(arg_0, 21434u, arg_0, vec4<u32>(global4.a.x, u_input.c.x, 0u, global4.a.x)), vec4<u32>(62951u, global0.a.x, global0.a.x, 25602u) & u_input.c), 53291u, 1u).wz, func_2(Struct_1(firstLeadingBit(arg_0.a), vec2<bool>(global4.c.x, arg_0.c.x), func_2(Struct_1(arg_2.a, global4.b, vec2<bool>(true, false)), global0.a.x, Struct_1(vec3<u32>(1u, 72654u, 0u), vec2<bool>(arg_2.b.x, global0.b.x), vec2<bool>(false, global4.c.x)), vec4<u32>(arg_1.x, 0u, 1u, 0u)).b), 22924u << (global0.a.x % 32u), Struct_1(~vec3<u32>(0u, u_input.b.x, u_input.b.x), vec2<bool>(global4.b.x, arg_0.b.x), vec2<bool>(global4.b.x, arg_2.b.x)), vec4<u32>(~global4.a.x, u_input.c.x | 4294967295u, firstTrailingBit(global4.a.x), arg_1.x)), ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.b.x, 1u), select(1u, 46895u, true)), 119178u).xz, global0.c);
    return Struct_1(_wgslsmith_add_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(var_2.a.x, global4.a.x, 1u), vec3<u32>(4294967295u, 24826u, arg_1.x)), vec3<u32>(_wgslsmith_mult_u32(arg_1.x, 0u), 0u, 35610u)) << (vec3<u32>(_wgslsmith_dot_vec3_u32(var_2.a, max(u_input.c.xzx, vec3<u32>(arg_2.a.x, global4.a.x, global0.a.x))), _wgslsmith_sub_u32(u_input.c.x, _wgslsmith_div_u32(23247u, global4.a.x)), _wgslsmith_mult_u32(_wgslsmith_sub_u32(global4.a.x, 11691u), _wgslsmith_mod_u32(0u, arg_1.x))) % vec3<u32>(32u)), !func_2(func_2(Struct_1(u_input.c.zyy, arg_0.c, arg_2.c), func_2(global3[_wgslsmith_index_u32(arg_1.x, 8u)], 1u, Struct_1(vec3<u32>(var_2.a.x, 1u, 0u), arg_0.c, vec2<bool>(var_2.b.x, false)), vec4<u32>(global0.a.x, 62935u, 0u, global0.a.x)).a.x, arg_2, vec4<u32>(arg_1.x, 1u, 0u, 4294967295u)), var_2.a.x, arg_0, vec4<u32>(10942u, 0u, _wgslsmith_dot_vec4_u32(arg_1, vec4<u32>(64404u, 4294967295u, 1u, arg_1.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 1u, 1u, 4294967295u), u_input.c))).c, vec2<bool>(false, arg_2.c.x));
}

fn func_1(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_1) -> vec4<f32> {
    global0 = func_5(global3[_wgslsmith_index_u32(~(_wgslsmith_dot_vec2_u32(~vec2<u32>(35421u, global0.a.x), vec2<u32>(81501u, arg_2.a.x)) | 25514u), 8u)], select(u_input.c & u_input.c, ~(vec4<u32>(u_input.c.x, 28118u, 12201u, 14597u) ^ u_input.c), vec4<bool>(true, true, !all(vec3<bool>(true, global0.b.x, true)), global0.b.x)), Struct_1(global0.a, global0.b, select(vec2<bool>(true, true), !select(vec2<bool>(true, true), global0.c, global4.c.x), arg_2.b)), _wgslsmith_f_op_vec2_f32(func_4(~countOneBits(min(u_input.b, u_input.b)), !func_3(select(vec2<bool>(true, false), vec2<bool>(global0.b.x, global4.c.x), arg_2.b), func_2(Struct_1(vec3<u32>(u_input.c.x, global0.a.x, 31730u), vec2<bool>(true, true), arg_2.b), global0.a.x, arg_2, u_input.c), global0.a.x, ~arg_2.a.x), select(!global0.b, func_2(Struct_1(vec3<u32>(0u, 0u, 4294967295u), vec2<bool>(false, false), vec2<bool>(false, true)), countOneBits(520u), func_2(arg_2, 0u, global3[_wgslsmith_index_u32(4294967295u, 8u)], u_input.c), vec4<u32>(0u, arg_2.a.x, 39823u, global0.a.x)).c, true & select(global4.c.x, false, arg_2.c.x)))));
    let var_0 = Struct_1(~vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.c.zyw, vec3<u32>(0u, 0u, 1u)), ~global0.a), select(_wgslsmith_add_u32(39594u, 16129u), select(1u, global4.a.x, global0.b.x), false), 0u), !global4.c, vec2<bool>(false, true));
    var var_1 = func_2(func_5(func_2(func_5(func_5(var_0, vec4<u32>(global0.a.x, u_input.b.x, 4294967295u, global0.a.x), global1[_wgslsmith_index_u32(global0.a.x, 5u)], vec2<f32>(1797f, -1057f)), abs(vec4<u32>(global4.a.x, global0.a.x, global4.a.x, var_0.a.x)), Struct_1(vec3<u32>(global0.a.x, 60046u, var_0.a.x), arg_2.c, global0.b), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1264f, -123f), vec2<f32>(1000f, arg_0), false))), _wgslsmith_mult_u32(arg_2.a.x & 23701u, 4294967295u), var_0, firstLeadingBit(vec4<u32>(0u, global4.a.x, arg_2.a.x, 63624u)) << (vec4<u32>(1u, 49117u, global4.a.x, var_0.a.x) % vec4<u32>(32u))), ~vec4<u32>(func_2(Struct_1(vec3<u32>(global4.a.x, u_input.c.x, arg_2.a.x), vec2<bool>(global0.b.x, false), global0.c), 1u, global1[_wgslsmith_index_u32(4294967295u, 5u)], u_input.c).a.x, ~global4.a.x, _wgslsmith_clamp_u32(u_input.b.x, 11434u, global0.a.x), global4.a.x), Struct_1(~u_input.c.wzz, !vec2<bool>(global0.c.x, global0.c.x), global0.c), vec2<f32>(arg_0, _wgslsmith_f_op_f32(ceil(arg_0)))), _wgslsmith_dot_vec3_u32(vec3<u32>(14907u, _wgslsmith_sub_u32(0u, arg_2.a.x), 0u) << (~vec3<u32>(global0.a.x, 3031u, 32851u) % vec3<u32>(32u)), ~vec3<u32>(22507u, 15857u, arg_2.a.x) ^ vec3<u32>(~global4.a.x, 1u, 1u)), func_2(arg_2, ~15833u, Struct_1(u_input.c.wyw, vec2<bool>(true, true), !vec2<bool>(var_0.b.x, false)), _wgslsmith_mult_vec4_u32(u_input.c, _wgslsmith_div_vec4_u32(vec4<u32>(var_0.a.x, 35702u, u_input.b.x, var_0.a.x) << (vec4<u32>(u_input.b.x, 4294967295u, arg_2.a.x, u_input.b.x) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.b.x, 80114u, 47093u), u_input.c)))), u_input.c).a.xy;
    let var_2 = func_2(func_2(Struct_1(~(~vec3<u32>(u_input.b.x, var_0.a.x, global4.a.x)), !global0.b, !vec2<bool>(global4.b.x, false)), ~(~_wgslsmith_add_u32(17928u, global4.a.x)), func_2(Struct_1(max(vec3<u32>(4294967295u, 0u, var_1.x), vec3<u32>(11611u, 18209u, u_input.c.x)), vec2<bool>(true, false), var_0.b), ~reverseBits(18065u), Struct_1(arg_2.a, vec2<bool>(true, true), global0.b), u_input.c), abs(u_input.c) << (u_input.c % vec4<u32>(32u))), ~4294967295u, func_5(Struct_1(~global0.a, global0.b, arg_2.c), u_input.c ^ _wgslsmith_mod_vec4_u32(~u_input.c, _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a.x, 0u, 0u, global4.a.x), u_input.c)), var_0, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(abs(-762f)), _wgslsmith_f_op_f32(-arg_0)), vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(round(arg_0)))))), ~abs(reverseBits(vec4<u32>(0u, global0.a.x, global4.a.x, 1u))));
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(601f, arg_0, arg_0, arg_0)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-167f, -1243f, arg_0, 2203f))))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(947f - arg_0), arg_0, 139f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 125f, -833f, -1000f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1555f, arg_0, arg_0, arg_0)))), vec4<f32>(1080f, -249f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - 1119f) - _wgslsmith_f_op_f32(-1398f * arg_0)), -388f))));
}

fn func_6(arg_0: vec3<u32>, arg_1: u32, arg_2: bool, arg_3: vec4<f32>) -> u32 {
    let var_0 = vec3<bool>(arg_2, func_2(Struct_1(~reverseBits(global0.a), vec2<bool>(true, true), !vec2<bool>(false, arg_2)), _wgslsmith_add_u32(arg_1, global4.a.x), func_2(Struct_1(firstLeadingBit(arg_0), !global4.c, global4.c), _wgslsmith_dot_vec2_u32(~arg_0.xy, vec2<u32>(10450u, u_input.c.x)), Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.x, 8625u, arg_0.x), u_input.c.wxw), global4.b, vec2<bool>(global0.c.x, global4.c.x)), abs(select(vec4<u32>(76680u, 4294967295u, u_input.c.x, 31720u), u_input.c, vec4<bool>(true, false, global0.c.x, arg_2)))), ~vec4<u32>(global4.a.x, 1u >> (u_input.b.x % 32u), _wgslsmith_mult_u32(0u, 19928u), func_2(Struct_1(vec3<u32>(4294967295u, global0.a.x, arg_0.x), vec2<bool>(true, false), vec2<bool>(arg_2, arg_2)), u_input.b.x, global1[_wgslsmith_index_u32(arg_0.x, 5u)], u_input.c).a.x)).c.x, true);
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(arg_3));
    let var_2 = global1[_wgslsmith_index_u32(~u_input.c.x, 5u)];
    let var_3 = global3[_wgslsmith_index_u32(func_5(global3[_wgslsmith_index_u32(0u, 8u)], u_input.c, Struct_1(select(global0.a, global4.a, func_3(select(var_0.yz, vec2<bool>(global0.b.x, global4.c.x), global4.c), Struct_1(vec3<u32>(global0.a.x, 13936u, 1u), global0.b, var_0.yx), ~55058u, min(global0.a.x, u_input.c.x)).zww), global0.b, var_0.xz), vec2<f32>(_wgslsmith_f_op_f32(var_1.x * -355f), _wgslsmith_f_op_vec2_f32(func_4(~global0.a.yy | global4.a.xz, vec4<bool>(!var_0.x, u_input.b.x > 118656u, !arg_2, false), global4.c)).x)).a.x, 8u)];
    global4 = func_5(Struct_1(vec3<u32>(0u, max(_wgslsmith_mod_u32(21197u, 17973u), 1u), ~arg_1), func_5(func_2(func_5(Struct_1(vec3<u32>(arg_1, 0u, 76248u), vec2<bool>(var_2.c.x, var_0.x), vec2<bool>(global0.b.x, var_2.b.x)), u_input.c, Struct_1(u_input.c.wxy, var_3.c, vec2<bool>(var_2.c.x, var_2.b.x)), vec2<f32>(arg_3.x, -859f)), 13811u, func_2(global1[_wgslsmith_index_u32(arg_1, 5u)], u_input.b.x, global3[_wgslsmith_index_u32(10504u, 8u)], u_input.c), vec4<u32>(global4.a.x, 80578u, 1u, 0u)), vec4<u32>(12042u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_3.a.x, global4.a.x, var_3.a.x), u_input.c.xyz), 4294967295u, ~0u), Struct_1(arg_0, var_2.b, global0.b), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec4_f32(func_1(305f, vec4<i32>(8767i, 32922i, u_input.e.x, 2147483647i), Struct_1(arg_0, vec2<bool>(true, false), vec2<bool>(var_0.x, true)))).ww, var_1.yw)).c, func_5(global1[_wgslsmith_index_u32(var_3.a.x, 5u)], vec4<u32>(var_2.a.x, _wgslsmith_mult_u32(70756u, 4542u), arg_0.x, var_2.a.x), func_2(func_5(Struct_1(vec3<u32>(arg_1, arg_1, arg_0.x), vec2<bool>(false, false), vec2<bool>(true, var_2.b.x)), vec4<u32>(u_input.c.x, arg_1, global0.a.x, 1u), Struct_1(vec3<u32>(0u, 27952u, arg_1), var_0.xy, var_0.xy), vec2<f32>(var_1.x, -717f)), ~72714u, func_5(Struct_1(vec3<u32>(var_3.a.x, global0.a.x, 1u), vec2<bool>(global0.b.x, false), var_2.b), vec4<u32>(4294967295u, 71408u, global0.a.x, global4.a.x), global3[_wgslsmith_index_u32(79490u, 8u)], vec2<f32>(arg_3.x, -743f)), u_input.c), var_1.ww).b), ~countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.x, 4294967295u, 85240u, arg_0.x), firstTrailingBit(u_input.c))), global1[_wgslsmith_index_u32(0u, 5u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(arg_3.zy * var_1.zx))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.wz) + _wgslsmith_f_op_vec4_f32(func_1(-435f, u_input.d, Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u), vec2<bool>(false, global0.b.x), vec2<bool>(global0.c.x, false)))).zw))));
    return var_2.a.x >> (~min(abs(global4.a.x), global0.a.x) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 5>();
    let var_0 = vec4<bool>(global4.b.x, true && select(false, true, true), false, global0.b.x);
    var var_1 = func_6(_wgslsmith_add_vec3_u32(~vec3<u32>(40258u, 0u, ~15776u), ~abs(vec3<u32>(36379u, global0.a.x, 21052u))), countOneBits(~global0.a.x), global0.c.x, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1612f, -644f, -865f, 882f))) + _wgslsmith_f_op_vec4_f32(func_1(786f, u_input.d, Struct_1(global4.a, vec2<bool>(true, false), global0.c))))))));
    var var_2 = true;
    var var_3 = vec4<bool>(any(var_0.yxx), !all(var_0.xzy), !(!(!func_2(global1[_wgslsmith_index_u32(global0.a.x, 5u)], global4.a.x, Struct_1(vec3<u32>(73529u, u_input.b.x, global4.a.x), var_0.ww, global0.c), u_input.c).c.x)), !select(!var_0.x, !all(vec4<bool>(var_0.x, false, global0.c.x, global0.c.x)), false));
    let var_4 = vec4<u32>(_wgslsmith_sub_u32(global0.a.x, 1u), 62077u, 34497u, ~(~3420u) << (u_input.b.x % 32u));
    var var_5 = -1031f;
    let var_6 = _wgslsmith_mult_vec3_i32(u_input.d.zxw, -(_wgslsmith_clamp_vec3_i32(u_input.d.zyx, vec3<i32>(1i, u_input.d.x, u_input.a), vec3<i32>(u_input.d.x, -1i, u_input.d.x)) & vec3<i32>(87991i, -26036i, u_input.e.x)) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.b.x, ~global0.a.x), global0.a, vec3<u32>(1116u, 0u, 74631u) & global4.a) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -131f))) - -1014f))));
}

