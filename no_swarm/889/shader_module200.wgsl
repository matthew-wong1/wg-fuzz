struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-783f, vec3<u32>(51534u, 43070u, 6105u), -1452f, vec4<bool>(true, false, false, false));

var<private> global1: array<vec2<bool>, 5>;

var<private> global2: array<f32, 14> = array<f32, 14>(1124f, -836f, 1000f, -219f, -324f, 193f, -359f, 573f, -414f, -637f, 974f, -1317f, -376f, 1000f);

var<private> global3: i32 = 30732i;

var<private> global4: array<vec3<u32>, 13> = array<vec3<u32>, 13>(vec3<u32>(0u, 86053u, 0u), vec3<u32>(4294967295u, 25667u, 31211u), vec3<u32>(0u, 4294967295u, 35418u), vec3<u32>(56837u, 0u, 11056u), vec3<u32>(24863u, 93397u, 0u), vec3<u32>(0u, 1u, 61798u), vec3<u32>(38794u, 19283u, 7969u), vec3<u32>(70568u, 129948u, 24085u), vec3<u32>(13199u, 1u, 4294967295u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(0u, 25662u, 98383u), vec3<u32>(105173u, 12012u, 21312u), vec3<u32>(81023u, 4294967295u, 4294967295u));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> f32 {
    global4 = array<vec3<u32>, 13>();
    let var_0 = _wgslsmith_clamp_u32(reverseBits(_wgslsmith_mult_u32(4294967295u, 1u)), ~_wgslsmith_add_u32(~global0.b.x ^ 30189u, ~(arg_1.b.x ^ u_input.b.x)), 31416u >> (1u % 32u));
    let var_1 = ~firstTrailingBit(abs(u_input.a));
    var var_2 = true;
    var var_3 = Struct_1(-875f, global0.b, 476f, arg_1.d);
    return _wgslsmith_f_op_f32(sign(1000f));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec4<u32> {
    let var_0 = u_input.a;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(arg_1.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-161f + 2249f) * _wgslsmith_f_op_f32(-arg_0.c))))), ~vec3<u32>(global0.b.x, arg_0.b.x, min(firstLeadingBit(0u), 1u << (global0.b.x % 32u))), _wgslsmith_f_op_f32(func_3(arg_1.a, arg_1)), vec4<bool>(all(select(select(vec4<bool>(false, global0.d.x, true, true), arg_0.d, vec4<bool>(false, false, false, global0.d.x)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, arg_0.d.x, true, arg_1.d.x), vec4<bool>(arg_0.d.x, false, false, false)), true)), global0.d.x, any(vec4<bool>(arg_0.d.x, false, any(global0.d.www), true)), !arg_1.d.x));
    let var_2 = reverseBits(vec2<i32>(1i, -1884i & _wgslsmith_mod_i32(u_input.a, 2147483647i)) | (vec2<i32>(-var_0, var_0 >> (11407u % 32u)) << (arg_0.b.yy % vec2<u32>(32u))));
    global1 = array<vec2<bool>, 5>();
    var var_3 = Struct_1(_wgslsmith_f_op_f32(step(global0.a, _wgslsmith_div_f32(global2[_wgslsmith_index_u32(arg_0.b.x, 14u)], 114f))), var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c) * 246f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.a))) + _wgslsmith_f_op_f32(-arg_0.c))), arg_1.d);
    return countOneBits(vec4<u32>(~_wgslsmith_mod_u32(arg_0.b.x | 1612u, 1u), abs(1u), 19182u, arg_1.b.x));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> f32 {
    let var_0 = Struct_1(-730f, vec3<u32>(~(~6981u), 4294967295u, ~(arg_1.b.x ^ 23094u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -1918f) + arg_3.x), arg_2.d);
    var var_1 = Struct_1(arg_1.a, ~abs(~(~vec3<u32>(1u, arg_0.x, arg_1.b.x))), -2515f, global0.d);
    let var_2 = -1777f;
    let var_3 = var_0;
    var var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~arg_0.x, 14u)] + _wgslsmith_div_f32(288f, -1000f)))), ~vec3<u32>((arg_2.b.x ^ var_1.b.x) ^ 1061u, ~arg_0.x, select(43844u, ~arg_1.b.x, false | arg_2.d.x)), _wgslsmith_f_op_f32(max(var_1.a, _wgslsmith_f_op_f32(f32(-1f) * -1455f))), select(!vec4<bool>(any(arg_1.d), false, false, true), var_1.d, false));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -869f))), global2[_wgslsmith_index_u32(firstLeadingBit(select(44353u, min(6039u, 63440u), arg_2.a < arg_2.a)), 14u)])));
}

fn func_5(arg_0: vec4<f32>, arg_1: bool) -> Struct_1 {
    let var_0 = Struct_1(385f, vec3<u32>(0u, 13397u, (global0.b.x & u_input.b.x) | ~u_input.b.x) & global4[_wgslsmith_index_u32(u_input.b.x, 13u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(328f * -172f)))), select(vec4<bool>((u_input.c << (u_input.b.x % 32u)) != (i32(-1i) * -22194i), ~41276i >= u_input.a, true, !(global0.d.x && false)), !(!vec4<bool>(true, arg_1, arg_1, true)), select(vec4<bool>(all(global1[_wgslsmith_index_u32(u_input.b.x, 5u)]), false, global0.d.x & false, u_input.a > -2147483647i), vec4<bool>(!arg_1, true, true, arg_1), !(arg_1 || true))));
    var var_1 = max(_wgslsmith_clamp_i32(-47756i, u_input.c, ~u_input.c), reverseBits(~(~(~(-15805i)))));
    let var_2 = vec3<i32>(u_input.c, -_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(select(vec4<i32>(u_input.a, u_input.c, u_input.a, u_input.c), vec4<i32>(u_input.c, 23217i, 0i, 46803i), vec4<bool>(true, true, var_0.d.x, false)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 27979i, u_input.a, u_input.c), vec4<i32>(0i, 1i, -45329i, u_input.c))), min(vec4<i32>(1i, u_input.a, u_input.a, 1i), vec4<i32>(2485i, u_input.c, -6851i, -52663i))), _wgslsmith_mult_i32(u_input.c, -(~min(2147483647i, u_input.a))));
    var_1 = u_input.c;
    var var_3 = select(_wgslsmith_mult_vec4_i32(-(_wgslsmith_clamp_vec4_i32(vec4<i32>(18603i, u_input.c, u_input.a, var_2.x), vec4<i32>(-1i, 1i, u_input.c, var_2.x), vec4<i32>(var_2.x, 1i, var_2.x, u_input.a)) << (vec4<u32>(u_input.b.x, global0.b.x, 85692u, var_0.b.x) % vec4<u32>(32u))), vec4<i32>(var_2.x, var_2.x, _wgslsmith_div_i32(-38736i, var_2.x), reverseBits(_wgslsmith_sub_i32(u_input.c, var_2.x)))), ~((firstLeadingBit(vec4<i32>(var_2.x, u_input.a, var_2.x, 1i)) << (~vec4<u32>(44023u, global0.b.x, var_0.b.x, 4294967295u) % vec4<u32>(32u))) << ((countOneBits(vec4<u32>(110616u, var_0.b.x, 1u, 51155u)) << (~vec4<u32>(var_0.b.x, 89462u, global0.b.x, global0.b.x) % vec4<u32>(32u))) % vec4<u32>(32u))), any(var_0.d));
    return Struct_1(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 14u)]), vec3<u32>(43972u, var_0.b.x, countOneBits(var_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-877f))), vec4<bool>(false, global0.d.x, countOneBits(u_input.b.x) <= _wgslsmith_dot_vec3_u32(~var_0.b, vec3<u32>(0u, global0.b.x, global0.b.x)), var_0.d.x));
}

fn func_1(arg_0: i32) -> i32 {
    var var_0 = u_input.b & (u_input.b ^ u_input.b);
    var var_1 = true;
    var var_2 = -6280i;
    var var_3 = func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(391f * global0.a), _wgslsmith_f_op_f32(func_4(func_2(Struct_1(global0.c, vec3<u32>(global0.b.x, u_input.b.x, 2178u), global0.c, global0.d), Struct_1(-1000f, vec3<u32>(u_input.b.x, global0.b.x, 1u), global0.a, global0.d)), Struct_1(-516f, global4[_wgslsmith_index_u32(38258u, 13u)], -715f, global0.d), Struct_1(-1000f, vec3<u32>(45555u, var_0.x, 867u), global2[_wgslsmith_index_u32(var_0.x, 14u)], vec4<bool>(false, true, false, global0.d.x)), _wgslsmith_div_vec3_f32(vec3<f32>(-605f, global0.a, global0.c), vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 14u)], global0.a, global0.a)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global0.b.x, 14u)]))), global0.c)), !global0.d.x);
    let var_4 = vec3<f32>(var_3.a, func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1612f, global0.a, global2[_wgslsmith_index_u32(var_3.b.x, 14u)], var_3.c)))) - vec4<f32>(-1475f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global0.b.x, 14u)] + global0.c), -1146f, var_3.a)), (u_input.c <= countOneBits(12180i)) != var_3.d.x).a, 1000f);
    return ~_wgslsmith_mult_i32(-(~0i), 0i);
}

fn func_6(arg_0: i32, arg_1: u32, arg_2: vec4<bool>) -> StorageBuffer {
    var var_0 = vec4<u32>(u_input.b.x, arg_1, ~_wgslsmith_div_u32(~func_2(Struct_1(304f, global4[_wgslsmith_index_u32(36479u, 13u)], 1000f, vec4<bool>(true, global0.d.x, arg_2.x, false)), Struct_1(1000f, global4[_wgslsmith_index_u32(0u, 13u)], global2[_wgslsmith_index_u32(4294967295u, 14u)], global0.d)).x, global0.b.x), ~global0.b.x);
    global0 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(27202u, 14u)], 210f))), vec3<u32>(~_wgslsmith_mod_u32(28568u, countOneBits(var_0.x)), arg_1, ~_wgslsmith_div_u32(45519u, 48088u)), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~select(0u, var_0.x, true)), global0.b.x), 14u)], select(!vec4<bool>(!global0.d.x, all(arg_2.zx), true, true), global0.d, !(!all(vec4<bool>(arg_2.x, global0.d.x, arg_2.x, arg_2.x)))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.a, -573f)) - global2[_wgslsmith_index_u32(~4294967295u, 14u)]) * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1055f, global0.c)))), ~vec3<u32>(~(7903u & u_input.b.x), ~min(25889u, var_0.x), firstLeadingBit(4294967295u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(903f * _wgslsmith_f_op_f32(select(669f, global2[_wgslsmith_index_u32(9583u, 14u)], u_input.a == 0i))) * global0.a), arg_2);
    var_0 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(~var_1.b.x | _wgslsmith_add_u32(4294967295u, u_input.b.x), _wgslsmith_mod_u32(~1u, ~21054u), 92664u, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(global4[_wgslsmith_index_u32(4294967295u, 13u)], var_0.xwz, var_0.wzy), ~var_0.zyw)), ~_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(global0.b.x, global0.b.x, u_input.b.x, 20632u)), ~vec4<u32>(23729u, u_input.b.x, var_1.b.x, 4294967295u)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~var_0.x, 14u)]), ~firstLeadingBit(vec3<u32>(var_0.x, var_1.b.x, 4294967295u)) | vec3<u32>(firstTrailingBit(var_0.x), 43960u, 1u), -116f, select(!(!func_5(vec4<f32>(-1381f, var_1.a, 704f, -1455f), true).d), !(!(!vec4<bool>(arg_2.x, var_1.d.x, var_1.d.x, global0.d.x))), var_1.d));
    return StorageBuffer(1059f, _wgslsmith_add_i32(_wgslsmith_add_i32(countOneBits(~arg_0), _wgslsmith_div_i32(u_input.a, 1i)), arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(_wgslsmith_clamp_i32(func_1(reverseBits(_wgslsmith_mult_i32(-6677i, u_input.c))), firstTrailingBit(-1i ^ ~u_input.a), -(_wgslsmith_add_i32(u_input.c, u_input.a) | ~2147483647i)), 67850u, func_5(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, 1096f, 343f, 443f) - vec4<f32>(1054f, global0.a, 380f, 1000f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-688f, global0.c, global0.c, global0.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 14u)], -257f, global2[_wgslsmith_index_u32(u_input.b.x, 14u)], global0.a)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(783f, 2601f, 237f, -182f)))))), global0.d.x).d);
}

