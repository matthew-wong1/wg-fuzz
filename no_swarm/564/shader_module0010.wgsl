struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: f32,
    e: vec4<u32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: vec2<u32>,
    d: vec2<bool>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> i32 {
    let var_0 = ~(~select(vec4<u32>(u_input.b.x, u_input.c, 25360u, 4294967295u), ~vec4<u32>(4294967295u, u_input.a, 0u, u_input.a), true)) & _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.c, 4294967295u, u_input.c, _wgslsmith_add_u32(29528u, u_input.b.x)), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 1u, u_input.a, u_input.a), vec4<u32>(0u, 0u, u_input.b.x, 1u)) >> (abs(vec4<u32>(28820u, 0u, 22598u, 1514u)) % vec4<u32>(32u))));
    var var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>((max(1i, 0i) >> (min(var_0.x, 63404u) % 32u)) & abs(_wgslsmith_mult_i32(1i, -2147483647i)), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(i32(-1i) * -1i, -14971i, abs(21268i)), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(2147483647i, 79279i)), firstLeadingBit(55051i)))), -vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, 6194i, 2147483647i), vec4<i32>(-2147483647i, 0i, -27435i, 2147483647i)), _wgslsmith_add_i32(1i, _wgslsmith_mult_i32(-22352i, 1i))));
    var var_2 = Struct_1(max(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, 1i), abs(vec3<i32>(1i, 61759i, 53814i))) ^ select(~vec3<i32>(0i, -18450i, 2147483647i), reverseBits(vec3<i32>(0i, -2147483647i, 45528i)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true)), ((vec3<i32>(-17771i, -371i, 1i) >> (var_0.yzy % vec3<u32>(32u))) & -vec3<i32>(1i, -60499i, 3389i)) >> (var_0.yxz % vec3<u32>(32u))), any(select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), false), any(vec4<bool>(true, true, true, true)))), _wgslsmith_dot_vec4_i32(vec4<i32>(~1i, _wgslsmith_div_i32(~(-2147483647i), i32(-1i) * -2147483647i), i32(-1i) * -17319i, -_wgslsmith_add_i32(0i, -22621i)), abs(_wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(-2147483647i, -8564i, 72661i, 0i)), vec4<i32>(0i, 13619i, 2147483647i, 1i)))), !select(vec3<bool>(true, true, true), vec3<bool>(true, 2448u == u_input.c, false), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true)));
    let var_3 = Struct_1(~vec3<i32>(_wgslsmith_div_i32(countOneBits(-39127i), -25460i), _wgslsmith_dot_vec2_i32(vec2<i32>(-17111i, 0i), _wgslsmith_clamp_vec2_i32(vec2<i32>(48780i, var_2.c), var_2.a.zy, vec2<i32>(1i, 33934i))), -9944i), !all(!(!vec4<bool>(var_2.b, var_2.b, true, var_2.d.x))), _wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -17047i, min(abs(0i), -9756i)), select(min(var_2.a.zy, max(var_2.a.zz, vec2<i32>(var_2.a.x, -1i))), -abs(vec2<i32>(19608i, -7899i)), _wgslsmith_f_op_f32(ceil(-369f)) == _wgslsmith_f_op_f32(f32(-1f) * -604f))), vec3<bool>(!var_2.d.x, true, all(select(!vec4<bool>(true, var_2.b, var_2.d.x, var_2.b), vec4<bool>(false, var_2.d.x, var_2.b, var_2.b), any(var_2.d)))));
    var var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1000f, 1921f), -227f))))));
    return _wgslsmith_clamp_i32(-(~var_2.a.x), -countOneBits(var_3.a.x), var_2.c);
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_4 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1040f, 506f, 1656f, 808f) + vec4<f32>(-975f, 277f, -137f, 1000f)))))));
    var var_1 = Struct_1(_wgslsmith_sub_vec3_i32(~vec3<i32>(-2917i, arg_1.c, -18540i), ~(~arg_1.a)) & _wgslsmith_div_vec3_i32(firstTrailingBit(arg_1.a), arg_1.a), !arg_1.d.x, ~_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(13636i, 2147483647i, -1i, arg_1.a.x), vec4<i32>(1i, 2147483647i, arg_1.c, 0i)), _wgslsmith_div_i32(arg_1.c, arg_1.c)) << (~70270u % 32u), select(arg_1.d, !vec3<bool>(!arg_1.d.x, all(vec3<bool>(arg_1.b, arg_1.d.x, false)), arg_1.d.x), arg_1.b));
    var var_2 = ~vec3<i32>(func_3(), _wgslsmith_mult_i32(min(arg_1.c, -15235i), arg_1.c ^ -15670i), countOneBits(_wgslsmith_mod_i32(2147483647i, var_1.c))) | countOneBits(vec3<i32>(select(-var_1.c, 46234i, all(vec2<bool>(true, false))), _wgslsmith_mod_i32(countOneBits(-18444i), arg_1.a.x), _wgslsmith_mod_i32(select(var_1.c, arg_1.a.x, false), min(arg_1.c, -21218i))));
    var_1 = Struct_1(~var_1.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(ceil(var_0.a.x))))) > _wgslsmith_f_op_f32(min(var_0.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(543f - var_0.a.x), 901f)))), var_1.c, !select(vec3<bool>(any(vec4<bool>(var_1.b, false, false, arg_1.b)), false, arg_1.d.x), !vec3<bool>(false, true, arg_1.b), all(vec4<bool>(false, var_1.b, arg_1.d.x, false))));
    var var_3 = Struct_4(any(vec4<bool>(false, arg_1.d.x, var_1.b || true, all(select(vec4<bool>(arg_1.b, var_1.b, arg_1.b, var_1.d.x), vec4<bool>(var_1.b, var_1.b, var_1.d.x, true), vec4<bool>(var_1.d.x, arg_1.b, arg_1.b, false))))), Struct_3(~(~1u), Struct_1((vec3<i32>(var_2.x, var_1.a.x, 30860i) ^ arg_1.a) ^ vec3<i32>(40131i, 50863i, 20914i), -1095f < var_0.a.x, i32(-1i) * -arg_1.c, var_1.d), var_2.x, _wgslsmith_f_op_f32(1479f + _wgslsmith_f_op_f32(exp2(1f))), _wgslsmith_div_vec4_u32(arg_0, ~vec4<u32>(1u, u_input.a, u_input.c, arg_0.x)) ^ (vec4<u32>(0u, u_input.b.x, arg_0.x, 1u) & vec4<u32>(arg_0.x, 38850u, 78857u, arg_0.x))), ~(~u_input.b), !var_1.d.zx, Struct_3(countOneBits(1u), Struct_1(vec3<i32>(arg_1.a.x, arg_1.c & var_1.a.x, _wgslsmith_add_i32(var_1.c, arg_1.c)), var_0.a.x > _wgslsmith_f_op_f32(-284f + var_0.a.x), 0i, select(vec3<bool>(true, true, true), select(arg_1.d, vec3<bool>(false, var_1.b, arg_1.b), var_1.d), vec3<bool>(true, false, false))), ~((arg_1.c & var_1.c) >> (~u_input.a % 32u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(175f, var_0.a.x) - var_0.a.x), abs(firstTrailingBit(_wgslsmith_mult_vec4_u32(arg_0, arg_0)))));
    return Struct_4(any(vec3<bool>(any(arg_1.d.yy), arg_1.d.x, var_0.a.x <= _wgslsmith_f_op_f32(var_3.e.d + -622f))), Struct_3(~(~arg_0.x) | _wgslsmith_div_u32(var_3.b.a, ~u_input.c), var_3.e.b, _wgslsmith_add_i32(var_2.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(var_3.b.b.a.zz, vec2<i32>(4827i, 14521i)), var_1.a.x)), _wgslsmith_f_op_f32(step(-979f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-904f, var_3.b.d))))), _wgslsmith_mod_vec4_u32(reverseBits(~vec4<u32>(41551u, u_input.c, 62036u, 54780u)), arg_0)), u_input.b, !(!vec2<bool>(true, var_1.b)), var_3.e);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_4) -> Struct_2 {
    let var_0 = 25149u;
    var var_1 = select(vec4<bool>(true, arg_0 >= select(1i, _wgslsmith_div_i32(arg_2.e.b.a.x, arg_2.e.b.a.x), !arg_1.b), select(all(arg_1.d), (-1338f >= arg_2.b.d) && true, arg_1.d.x & !arg_1.d.x), arg_1.b), vec4<bool>(!(arg_2.b.d >= _wgslsmith_f_op_f32(-arg_2.b.d)), all(!arg_1.d.xy) | (arg_2.e.b.d.x | false), true, false), false);
    return Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1672f * -391f))), 1557f, arg_2.e.d, func_2(abs(arg_2.b.e), arg_2.e.b).e.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-617f, 468f, 675f, arg_2.b.d), vec4<f32>(-592f, -662f, -737f, arg_2.e.d), vec4<bool>(arg_1.d.x, arg_2.e.b.d.x, false, arg_1.b))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-296f, arg_2.e.d, 435f, arg_2.e.d), vec4<f32>(arg_2.e.d, -227f, 1000f, arg_2.e.d)))))));
}

fn func_1(arg_0: i32) -> i32 {
    var var_0 = func_4(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(arg_0, 2147483647i), max(vec2<i32>(arg_0, arg_0) >> (vec2<u32>(48518u, 1u) % vec2<u32>(32u)), ~vec2<i32>(2147483647i, arg_0))), -2147483647i), Struct_1(vec3<i32>(_wgslsmith_add_i32(-24739i, firstLeadingBit(arg_0)), arg_0, -arg_0), all(vec3<bool>(true, false, true)), reverseBits(2147483647i), !vec3<bool>(false, any(vec4<bool>(true, false, false, true)), all(vec2<bool>(false, false)))), func_2(reverseBits(vec4<u32>(u_input.b.x, 4294967295u, 84766u, u_input.c)) ^ abs(firstLeadingBit(vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, 0u))), Struct_1(select(vec3<i32>(-1i, arg_0, arg_0), min(vec3<i32>(arg_0, arg_0, 1i), vec3<i32>(arg_0, arg_0, -3004i)), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), false, 2147483647i, vec3<bool>(true, true, true))));
    var_0 = func_4(_wgslsmith_add_i32(_wgslsmith_div_i32(-69127i, ~_wgslsmith_sub_i32(-1i, arg_0)), 1i), func_2(vec4<u32>(u_input.a, 1u, ~u_input.b.x, u_input.b.x), Struct_1(-vec3<i32>(arg_0, 5327i, -34261i) >> ((vec3<u32>(u_input.b.x, u_input.b.x, 1u) >> (vec3<u32>(82155u, u_input.c, u_input.b.x) % vec3<u32>(32u))) % vec3<u32>(32u)), true, firstTrailingBit(reverseBits(12778i)), func_2(vec4<u32>(u_input.a, 0u, u_input.c, u_input.b.x), func_2(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.c), Struct_1(vec3<i32>(arg_0, 21296i, 2147483647i), false, -1i, vec3<bool>(false, true, false))).b.b).b.b.d)).e.b, Struct_4(~u_input.a > ~(4294967295u ^ u_input.a), Struct_3(1u, func_2(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.b.x, 29673u, u_input.c), vec4<u32>(u_input.a, u_input.b.x, u_input.a, 24717u)), Struct_1(vec3<i32>(arg_0, -2147483647i, 55377i), false, arg_0, vec3<bool>(false, false, false))).e.b, select(arg_0, arg_0, false) & _wgslsmith_mult_i32(arg_0, -2147483647i), -1594f, select(~vec4<u32>(u_input.a, 27793u, u_input.b.x, 75114u), vec4<u32>(u_input.c, 1u, u_input.c, 16878u), false)), abs(u_input.b), vec2<bool>(all(vec4<bool>(true, true, true, true)), true), func_2(_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(74302u, 31550u, 15451u, 4586u)), func_2(vec4<u32>(1u, 4294967295u, 60446u, 1u), Struct_1(vec3<i32>(arg_0, arg_0, arg_0), false, arg_0, vec3<bool>(false, true, false))).b.e), func_2(func_2(vec4<u32>(51414u, 4294967295u, u_input.a, 16839u), Struct_1(vec3<i32>(arg_0, arg_0, -16718i), false, arg_0, vec3<bool>(false, true, false))).b.e, func_2(vec4<u32>(69021u, u_input.a, u_input.c, 1u), Struct_1(vec3<i32>(arg_0, 0i, arg_0), false, -11563i, vec3<bool>(true, false, false))).e.b).b.b).b));
    var var_1 = func_2(vec4<u32>(u_input.c, ~min(46249u, 0u) ^ firstLeadingBit(u_input.a), u_input.b.x, ~u_input.a), func_2(vec4<u32>(u_input.a, u_input.b.x, ~(~0u), abs(2359u)), func_2(vec4<u32>(firstLeadingBit(u_input.b.x), min(u_input.a, 1u), func_2(vec4<u32>(u_input.b.x, 55754u, 4294967295u, u_input.c), Struct_1(vec3<i32>(-1i, 36605i, arg_0), true, arg_0, vec3<bool>(false, true, true))).e.a, u_input.b.x), func_2(~vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, 4294967295u), Struct_1(vec3<i32>(2147483647i, 0i, 1606i), true, arg_0, vec3<bool>(true, false, false))).e.b).b.b).e.b).b;
    let var_2 = _wgslsmith_div_vec4_u32(var_1.e, vec4<u32>(countOneBits(max(_wgslsmith_div_u32(var_1.a, u_input.a), ~u_input.b.x)), 23681u, _wgslsmith_mod_u32(var_1.e.x, var_1.a), ~4294967295u));
    var var_3 = func_2(var_1.e, Struct_1(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(~var_1.b.a, abs(vec3<i32>(var_1.c, 2147483647i, arg_0))), ~(var_1.b.a >> (var_1.e.yyy % vec3<u32>(32u)))), true, ~arg_0, !(!(!var_1.b.d))));
    return i32(-1i) * -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(func_1(13923i), _wgslsmith_add_i32(abs(firstLeadingBit(18914i)), (2147483647i << (u_input.c % 32u)) ^ (i32(-1i) * -1i)), _wgslsmith_div_i32(select(2147483647i, 1i, true), countOneBits(-55705i >> (1u % 32u))));
    var_0 = abs(vec3<i32>(-5448i | select(~0i, var_0.x, all(vec4<bool>(true, true, true, true))), 0i, ~(-var_0.x)));
    let var_1 = all(vec4<bool>(any(vec3<bool>(false, true, false)) != true, false, true || (var_0.x > 0i), true)) | func_2(~(~abs(vec4<u32>(1u, u_input.a, 1u, 1u))), Struct_1(vec3<i32>(~(-1i), _wgslsmith_clamp_i32(4875i, -2147483647i, 2147483647i), var_0.x), true, -var_0.x & ~(-21333i), vec3<bool>(true, false, func_2(vec4<u32>(52739u, 1u, u_input.c, u_input.b.x), Struct_1(vec3<i32>(26608i, -46950i, -44835i), true, 29693i, vec3<bool>(false, false, true))).e.b.b))).d.x;
    let var_2 = ~select(u_input.b, _wgslsmith_add_vec2_u32(abs(u_input.b << (vec2<u32>(4294967295u, u_input.b.x) % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(vec2<u32>(76089u, 50690u), u_input.b)), (i32(-1i) * -10352i) < ~reverseBits(var_0.x));
    var var_3 = func_2(~select(vec4<u32>(func_2(vec4<u32>(81726u, u_input.c, var_2.x, u_input.b.x), Struct_1(vec3<i32>(var_0.x, 1i, 2322i), var_1, var_0.x, vec3<bool>(false, true, false))).e.a, u_input.a, var_2.x, 0u), reverseBits(vec4<u32>(88851u, var_2.x, u_input.c, u_input.a)) >> (vec4<u32>(u_input.c, 111780u, u_input.c, var_2.x) % vec4<u32>(32u)), vec4<bool>(var_1, var_1, var_1, var_1)), Struct_1(reverseBits(~vec3<i32>(-1i, 0i, 0i) >> (~vec3<u32>(u_input.c, 11287u, u_input.a) % vec3<u32>(32u))), var_1, _wgslsmith_clamp_i32(var_0.x, 1i, _wgslsmith_div_i32(1i, 65504i) | _wgslsmith_div_i32(16762i, var_0.x)), func_2(select(vec4<u32>(var_2.x, u_input.b.x, u_input.b.x, 4294967295u), ~vec4<u32>(4294967295u, 4294967295u, 4294967295u, u_input.a), select(vec4<bool>(var_1, true, var_1, true), vec4<bool>(false, false, true, var_1), vec4<bool>(false, true, false, true))), Struct_1(abs(vec3<i32>(var_0.x, 22156i, var_0.x)), true, abs(var_0.x), select(vec3<bool>(var_1, false, var_1), vec3<bool>(false, false, var_1), var_1))).b.b.d)).b.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -632f), -120f), min(-1i, func_3()), ~max(4294967295u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, u_input.a), var_2)));
}

