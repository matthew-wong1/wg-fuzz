struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<i32>) -> u32 {
    var var_0 = Struct_1(arg_0.yxx, vec3<u32>(~abs(11482u), 35823u, min(countOneBits(14529u) | u_input.b.x, ~reverseBits(u_input.a))), vec4<i32>(u_input.c.x, 1i >> (countOneBits(u_input.a ^ u_input.a) % 32u), _wgslsmith_div_i32(arg_1.x, arg_1.x), -8138i), _wgslsmith_div_vec2_i32(vec2<i32>(i32(-1i) * -28230i, ~4227i) >> (vec2<u32>(28878u, ~u_input.b.x) % vec2<u32>(32u)), vec2<i32>(min(u_input.d, 0i), 14297i)));
    let var_1 = select(_wgslsmith_mod_u32(~74091u, ~(~1u)), ~var_0.b.x, true);
    var_0 = Struct_1(!var_0.a, countOneBits(~vec3<u32>(var_0.b.x ^ 20885u, abs(u_input.a), ~56795u)), abs(abs(var_0.c)), vec2<i32>(2147483647i, 0i));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(125f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -429f) - _wgslsmith_f_op_f32(967f + 1509f)), true)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * -695f), _wgslsmith_div_f32(383f, -575f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-992f))));
    var var_3 = Struct_1(!arg_0.zxz, _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(var_0.b, var_0.b), firstTrailingBit(vec3<u32>(4294967295u, 0u, var_1))), var_0.b), var_0.b << (var_0.b % vec3<u32>(32u))), var_0.c, ~vec2<i32>(arg_1.x, -1i));
    return ~1u << (_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a, 0u, var_1, var_3.b.x)), ~vec4<u32>(var_3.b.x, u_input.b.x, 4294967295u, u_input.b.x)), ~reverseBits(vec4<u32>(var_1, var_1, 8621u, 4294967295u)))) % 32u);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: vec2<u32>, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(false, !any(vec2<bool>(true, false)), arg_3.a.x || all(vec3<bool>(arg_1.x, arg_1.x, true))), arg_3.a.x), vec3<u32>(arg_2.x | (8973u >> (~arg_3.b.x % 32u)), func_3(!(!vec4<bool>(arg_1.x, true, true, true)), ~vec3<i32>(u_input.d, u_input.d, u_input.c.x) | _wgslsmith_clamp_vec3_i32(arg_3.c.wxw, vec3<i32>(0i, 40115i, u_input.e.x), vec3<i32>(u_input.e.x, arg_3.d.x, arg_3.d.x))), _wgslsmith_mult_u32(_wgslsmith_mod_u32(arg_3.b.x, arg_2.x), 3003u) | u_input.a), arg_3.c, countOneBits(u_input.e.zy));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-690f, _wgslsmith_f_op_f32(f32(-1f) * -1288f)));
    var var_2 = _wgslsmith_mod_vec3_u32(~vec3<u32>(max(~35024u, 299u), 7855u, 1u), var_0.b);
    var var_3 = select(vec4<bool>(var_0.a.x, true, true, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(var_0.b.x, 0u)), var_0.b.x >> (4294967295u % 32u)) <= ~reverseBits(u_input.b.x)), !(!(!select(vec4<bool>(var_0.a.x, arg_3.a.x, false, arg_1.x), vec4<bool>(true, false, true, arg_3.a.x), true))), select(select(vec4<bool>(true, var_0.a.x, !var_0.a.x, true), select(select(vec4<bool>(var_0.a.x, false, var_0.a.x, false), vec4<bool>(false, arg_1.x, arg_3.a.x, arg_3.a.x), var_0.a.x), select(vec4<bool>(var_0.a.x, arg_1.x, arg_3.a.x, true), vec4<bool>(false, arg_3.a.x, arg_1.x, arg_1.x), arg_3.a.x), vec4<bool>(false, var_0.a.x, false, arg_3.a.x)), true), vec4<bool>(var_0.a.x | (true == var_0.a.x), 0i != min(var_0.c.x, -2638i), var_0.a.x, any(!var_0.a)), var_0.a.x));
    var_2 = vec3<u32>(arg_2.x, _wgslsmith_add_u32(~1u, ~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 0u, var_0.b.x, var_2.x), vec4<u32>(1u, u_input.b.x, 90799u, 66164u), vec4<u32>(var_2.x, arg_2.x, var_2.x, var_0.b.x)), min(vec4<u32>(22683u, var_0.b.x, 29164u, arg_3.b.x), vec4<u32>(4294967295u, 0u, u_input.a, arg_2.x)))), ~(~(~u_input.b.x)) << (~max(0u, ~45691u) % 32u));
    return !var_0.a.zy;
}

fn func_1() -> i32 {
    let var_0 = vec4<bool>(any(vec4<bool>(true, !all(vec2<bool>(false, true)), all(vec4<bool>(true, true, true, true)), true)), any(!(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true)))), all(!func_2(vec3<f32>(237f, 257f, -412f), vec2<bool>(true, true), u_input.b, Struct_1(vec3<bool>(false, true, false), vec3<u32>(61113u, 0u, 62956u), vec4<i32>(u_input.c.x, u_input.e.x, 0i, 2147483647i), u_input.c.yz))), true);
    var var_1 = Struct_1(vec3<bool>(all(!func_2(vec3<f32>(-309f, 145f, -369f), vec2<bool>(var_0.x, var_0.x), vec2<u32>(4294967295u, u_input.b.x), Struct_1(vec3<bool>(var_0.x, var_0.x, false), vec3<u32>(u_input.b.x, u_input.b.x, u_input.a), vec4<i32>(29993i, -2147483647i, u_input.c.x, u_input.d), vec2<i32>(u_input.c.x, -1i)))), any(!var_0), false), ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.a), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(4877u, u_input.a, 81506u) << (vec3<u32>(u_input.b.x, 1u, 0u) % vec3<u32>(32u)))), ~vec4<i32>(u_input.e.x, -1339i, ~(-1i), 1548i), vec2<i32>(22883i, u_input.d));
    let var_2 = var_1.b;
    var_1 = Struct_1(select(select(select(!vec3<bool>(var_0.x, false, var_1.a.x), var_0.wzy, vec3<bool>(false, var_1.a.x, true)), select(select(var_0.zwy, vec3<bool>(false, var_0.x, var_1.a.x), vec3<bool>(var_0.x, var_0.x, var_0.x)), vec3<bool>(var_0.x, false, false), var_1.a), select(var_1.a, !var_0.xwz, any(var_0.zxw))), var_1.a, !(!var_1.a)), _wgslsmith_mod_vec3_u32(~select(var_1.b >> (vec3<u32>(47077u, 85474u, 1u) % vec3<u32>(32u)), firstTrailingBit(vec3<u32>(var_2.x, u_input.b.x, 0u)), vec3<bool>(true, var_0.x, var_1.a.x)), var_1.b >> ((var_1.b | vec3<u32>(var_1.b.x, var_2.x, 4294967295u)) % vec3<u32>(32u))), vec4<i32>(~(-3873i) << (1u % 32u), var_1.d.x, ~17888i | firstLeadingBit(u_input.d), -var_1.d.x), u_input.e.zz);
    var var_3 = Struct_1(var_0.zyw, ~countOneBits(firstTrailingBit(var_1.b & vec3<u32>(var_1.b.x, 26128u, 18570u))), countOneBits(vec4<i32>(1i, var_1.c.x, -56226i, 0i)), vec2<i32>(u_input.e.x, -2147483647i));
    return -970i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !all(vec3<bool>(func_1() >= countOneBits(3189i), select(true, -1i >= u_input.e.x, select(true, false, true)), true));
    var var_1 = 8909u;
    var var_2 = Struct_1(select(select(select(!vec3<bool>(var_0, var_0, var_0), select(vec3<bool>(var_0, var_0, true), vec3<bool>(var_0, var_0, var_0), vec3<bool>(true, false, true)), true), !select(vec3<bool>(false, true, var_0), vec3<bool>(true, false, var_0), vec3<bool>(true, false, false)), select(vec3<bool>(var_0, true, var_0), vec3<bool>(true, true, true), any(vec3<bool>(var_0, var_0, var_0)))), select(vec3<bool>(true, var_0, 31954u <= u_input.b.x), !vec3<bool>(var_0, false, var_0), select(select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, var_0, true), var_0), select(vec3<bool>(var_0, var_0, true), vec3<bool>(var_0, true, false), vec3<bool>(false, false, var_0)), !vec3<bool>(var_0, var_0, var_0))), vec3<bool>(true == any(vec3<bool>(var_0, false, false)), true, true)), _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(firstTrailingBit(1u), 1u, u_input.b.x | u_input.b.x)), max(firstLeadingBit(vec3<u32>(u_input.a, 22410u, 49812u)), vec3<u32>(1u, 0u, firstTrailingBit(37789u))), reverseBits(max(~vec3<u32>(28179u, u_input.b.x, u_input.a), ~vec3<u32>(u_input.a, u_input.a, u_input.a)))), reverseBits(abs(~vec4<i32>(u_input.d, u_input.c.x, u_input.d, u_input.d))), u_input.c.yx);
    let var_3 = var_2.c;
    let var_4 = Struct_1(!(!vec3<bool>(false, all(var_2.a.yx), true)), max(~vec3<u32>(1u & var_2.b.x, 4294967295u | u_input.a, ~var_2.b.x), var_2.b), -var_2.c, u_input.c.yy ^ (var_3.ww | (vec2<i32>(var_3.x, u_input.c.x) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), var_2.b.xx) % vec2<u32>(32u)))));
    let var_5 = var_4.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_sub_i32(-_wgslsmith_sub_i32(var_2.d.x, var_2.d.x), -countOneBits(4056i)), var_2.d.x, ~firstTrailingBit(_wgslsmith_sub_i32(7621i, var_3.x))), vec3<f32>(1f, 1f, 1f), ~firstLeadingBit(abs(vec4<u32>(0u, u_input.b.x, 4294967295u, var_2.b.x)) ^ select(vec4<u32>(1u, 0u, u_input.a, var_4.b.x), vec4<u32>(var_4.b.x, 0u, 29388u, 1u), true)), select(20845u, abs(func_3(vec4<bool>(true, var_5, true, var_0), min(var_2.c.zwz, var_2.c.zyy))), all(select(!vec4<bool>(var_0, true, true, var_5), !vec4<bool>(var_0, true, var_2.a.x, var_4.a.x), func_2(vec3<f32>(-485f, 530f, -508f), vec2<bool>(var_2.a.x, true), var_4.b.xz, Struct_1(vec3<bool>(var_2.a.x, false, var_0), vec3<u32>(26009u, 0u, var_2.b.x), var_4.c, vec2<i32>(var_2.c.x, -22261i))).x))), u_input.e);
}

