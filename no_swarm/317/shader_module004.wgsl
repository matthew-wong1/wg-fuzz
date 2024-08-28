struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec3<i32>(-1i, -48728i, 0i), vec4<i32>(62872i, -11831i, -10029i, -1i), vec3<f32>(1024f, -240f, -545f)), Struct_1(vec3<i32>(0i, 1i, -20068i), vec4<i32>(-8833i, 2147483647i, 26976i, 51292i), vec3<f32>(-884f, 1863f, -195f)));

var<private> global1: i32 = -37048i;

var<private> global2: array<vec2<bool>, 17> = array<vec2<bool>, 17>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true));

var<private> global3: array<vec2<i32>, 3> = array<vec2<i32>, 3>(vec2<i32>(1i, -49621i), vec2<i32>(-29040i, -54351i), vec2<i32>(0i, 1i));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> f32 {
    let var_0 = Struct_2(vec4<bool>(false, true | select(true, true, false), !any(vec2<bool>(true, true)), true), -1000f, Struct_1(vec3<i32>(reverseBits(countOneBits(-2147483647i)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(1i, -2147483647i)), ~(~1i)), vec4<i32>(max(0i, 9872i), -_wgslsmith_mult_i32(-29242i, 1i), -(~(-2102i)), min(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 63951i, 53343i, 1i), vec4<i32>(31508i, 2147483647i, -2147483647i, 2147483647i)), -1067i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1179f, -510f, -1760f) + vec3<f32>(725f, 1000f, -452f))))), Struct_1(vec3<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-30045i, 0i, -2147483647i, -22084i), vec4<i32>(-2147483647i, 5622i, 20706i, 0i)), ~(-1i)) & abs(vec3<i32>(1i, -1i, 2147483647i)), ~abs(select(vec4<i32>(32817i, -5169i, 0i, -1i), vec4<i32>(2147483647i, -2147483647i, -1i, 1i), true)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1263f, 750f, -1112f), vec3<f32>(-968f, -1130f, -1091f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(584f, -1202f, -1000f) + vec3<f32>(462f, 641f, -694f)))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(785f, 942f)), 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, 594f))))))));
    global2 = array<vec2<bool>, 17>();
    let var_1 = Struct_1(vec3<i32>(7717i, firstTrailingBit(var_0.c.b.x), -2147483647i), firstTrailingBit(var_0.d.b), vec3<f32>(_wgslsmith_f_op_f32(var_0.e - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.c.c.x)))), var_0.d.c.x, var_0.b));
    var var_2 = _wgslsmith_f_op_f32(min(-363f, var_1.c.x));
    let var_3 = vec3<bool>(true, select(~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x) > 4294967295u, var_0.a.x, var_0.a.x), (~u_input.a.x & (_wgslsmith_sub_u32(u_input.a.x, u_input.a.x) ^ (43790u | u_input.a.x))) > countOneBits(~abs(30805u)));
    return var_1.c.x;
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: vec2<f32>, arg_3: f32) -> f32 {
    global2 = array<vec2<bool>, 17>();
    global3 = array<vec2<i32>, 3>();
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_3, _wgslsmith_f_op_f32(-arg_0)), arg_2, select(!select(vec2<bool>(true, arg_1.x), vec2<bool>(false, false), false), select(arg_1, arg_1, select(global2[_wgslsmith_index_u32(1u, 17u)], vec2<bool>(arg_1.x, true), arg_1.x)), arg_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-363f, 126f), _wgslsmith_f_op_f32(exp2(arg_0)), u_input.a.x > 47503u))) + _wgslsmith_f_op_f32(max(-277f, arg_2.x))), Struct_2(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), arg_2.x, global0[_wgslsmith_index_u32(~(~(~u_input.a.x)), 2u)], global0[_wgslsmith_index_u32(~abs(u_input.a.x), 2u)], _wgslsmith_f_op_f32(step(arg_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0, 2033f)) - arg_3)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.x))));
    global1 = var_0.c.d.a.x;
    var var_1 = !select(!(!(!var_0.c.a.xx)), arg_1, vec2<bool>(true, true));
    return 1646f;
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: u32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(exp2(arg_0.d.c.x)), global2[_wgslsmith_index_u32(~6360u, 17u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.b), arg_0.b)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(182f, 1000f))))), arg_0.c.c.x));
    var var_1 = min(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, countOneBits(~arg_2), arg_2), abs(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(21687u, 18879u, arg_2), vec3<u32>(0u, 1u, 1u), arg_0.a.zxx), vec3<u32>(u_input.a.x, 30846u, u_input.a.x) << (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u)), vec3<u32>(4294967295u, 43613u, 3584u)))), vec3<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(12444u, arg_2, arg_2) & vec3<u32>(arg_2, 0u, 0u)), reverseBits(vec3<u32>(u_input.a.x, u_input.a.x, 0u))), 1u, _wgslsmith_mult_u32((arg_2 & u_input.a.x) >> (u_input.a.x % 32u), u_input.a.x)));
    let var_2 = arg_0;
    var_1 = ~(~vec3<u32>(_wgslsmith_clamp_u32(~u_input.a.x, 41253u, ~var_1.x), var_1.x, _wgslsmith_dot_vec3_u32(select(vec3<u32>(arg_2, arg_2, var_1.x), vec3<u32>(167u, var_1.x, arg_2), vec3<bool>(true, arg_0.a.x, arg_0.a.x)), vec3<u32>(1u, 1u, 1u))));
    let var_3 = Struct_1(vec3<i32>(max(75166i, 1i), var_2.d.a.x, _wgslsmith_clamp_i32(reverseBits(0i), 34560i, arg_1) & _wgslsmith_div_i32(arg_1 << (arg_2 % 32u), _wgslsmith_add_i32(-27246i, arg_1))), firstLeadingBit(_wgslsmith_sub_vec4_i32(arg_0.d.b, vec4<i32>(-35380i, abs(261i), arg_0.c.b.x, arg_1))), arg_0.d.c);
    return Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -964f)) + _wgslsmith_f_op_vec2_f32(-arg_0.c.c.xz))), var_3.c.x, Struct_2(select(vec4<bool>(true, true, true, true), !(!vec4<bool>(var_2.a.x, var_2.a.x, true, true)), select(select(vec4<bool>(var_2.a.x, arg_0.a.x, true, arg_0.a.x), vec4<bool>(var_2.a.x, true, var_2.a.x, var_2.a.x), false), var_2.a, select(arg_0.a, vec4<bool>(false, true, arg_0.a.x, true), vec4<bool>(true, var_2.a.x, false, false)))), _wgslsmith_f_op_f32(-226f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(-arg_0.c.c.x))), var_2.c, Struct_1(arg_0.c.b.xyx << ((vec3<u32>(arg_2, 49277u, arg_2) << (vec3<u32>(30493u, 4294967295u, u_input.a.x) % vec3<u32>(32u))) % vec3<u32>(32u)), vec4<i32>(firstLeadingBit(-12543i), arg_1, 2147483647i >> (arg_2 % 32u), 6160i), var_3.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_2.e)), 258f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1056f + _wgslsmith_f_op_f32(trunc(var_2.e))) * _wgslsmith_f_op_f32(-arg_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1584f) * _wgslsmith_f_op_f32(f32(-1f) * -305f))))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: bool) -> vec3<f32> {
    let var_0 = false;
    let var_1 = Struct_2(arg_0.c.a, 130f, arg_1, func_2(Struct_2(!arg_0.c.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1961f + -437f) - arg_1.c.x), Struct_1(reverseBits(arg_1.a), abs(vec4<i32>(1i, arg_1.b.x, -16134i, arg_1.a.x)), arg_1.c), Struct_1(vec3<i32>(arg_1.a.x, arg_1.a.x, arg_1.a.x), vec4<i32>(31767i, -9415i, arg_0.c.d.a.x, -21457i) >> (vec4<u32>(u_input.a.x, u_input.a.x, 23183u, 0u) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(step(arg_1.c, arg_0.c.d.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.c.x)) - _wgslsmith_f_op_f32(min(arg_0.c.c.c.x, 1114f)))), arg_0.c.c.b.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), vec3<u32>(83297u, 4294967295u, 0u) | vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))).c.d, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -239f))));
    global1 = ~(-func_2(Struct_2(!arg_0.c.a, 202f, func_2(Struct_2(arg_0.c.a, -1000f, var_1.c, Struct_1(vec3<i32>(32980i, 15752i, arg_0.c.d.a.x), vec4<i32>(24198i, var_1.c.a.x, arg_1.b.x, 0i), arg_0.c.c.c), arg_1.c.x), -45691i, 0u).c.d, Struct_1(vec3<i32>(-27521i, var_1.d.a.x, -14633i), vec4<i32>(-52175i, 2147483647i, arg_1.a.x, var_1.d.a.x), var_1.d.c), arg_1.c.x), -firstLeadingBit(-136i), _wgslsmith_dot_vec2_u32(u_input.a, select(u_input.a, vec2<u32>(42554u, u_input.a.x), false))).c.d.b.x);
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(253f + 1271f), _wgslsmith_f_op_f32(-arg_1.c.x)))) - -1124f) + arg_0.b);
    return vec3<f32>(arg_0.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(2097f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.c.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.d - 1129f), arg_0.d)))));
}

fn func_6(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: i32) -> Struct_3 {
    let var_0 = u_input.a.x;
    let var_1 = func_2(Struct_2(!vec4<bool>(false, all(vec4<bool>(false, true, true, true)), any(vec3<bool>(true, false, false)), true), arg_1.x, Struct_1(~(-arg_0.b.ywy), arg_0.b, vec3<f32>(_wgslsmith_f_op_f32(round(1062f)), _wgslsmith_f_op_f32(-287f - arg_0.c.x), 507f)), global0[_wgslsmith_index_u32(0u, 2u)], -1656f), arg_0.b.x, u_input.a.x);
    global0 = array<Struct_1, 2>();
    var var_2 = vec4<f32>(-604f, -948f, _wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(arg_0.c.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -722f) + _wgslsmith_f_op_f32(-365f * arg_1.x)))));
    let var_3 = ~abs(countOneBits(select(var_1.c.d.b, _wgslsmith_div_vec4_i32(vec4<i32>(-11221i, -1i, arg_0.a.x, arg_2), var_1.c.d.b), true && var_1.c.a.x)));
    return func_2(func_2(var_1.c, arg_0.b.x, ~4294967295u).c, 1i, u_input.a.x);
}

fn func_1() -> vec4<i32> {
    let var_0 = func_6(global0[_wgslsmith_index_u32(u_input.a.x, 2u)], _wgslsmith_f_op_vec3_f32(func_5(func_2(Struct_2(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), true), -1039f, Struct_1(vec3<i32>(1i, 52978i, 46705i), vec4<i32>(12083i, -21976i, -30902i, -1i), vec3<f32>(-1706f, -124f, -639f)), global0[_wgslsmith_index_u32(u_input.a.x, 2u)], _wgslsmith_f_op_f32(f32(-1f) * -657f)), reverseBits(1i), ~reverseBits(u_input.a.x)), global0[_wgslsmith_index_u32(u_input.a.x, 2u)], any(!func_2(Struct_2(vec4<bool>(true, true, true, false), 530f, Struct_1(vec3<i32>(1i, -1i, 0i), vec4<i32>(-3149i, -19929i, 0i, 2147483647i), vec3<f32>(-1744f, -1871f, -1000f)), global0[_wgslsmith_index_u32(4294967295u, 2u)], 179f), -2147483647i, u_input.a.x).c.a.yxx))), -abs(-45267i));
    global0 = array<Struct_1, 2>();
    let var_1 = var_0.c.c.b;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), func_6(func_6(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(23310u, 46023u), vec2<u32>(u_input.a.x, 53928u)), 2u)], vec3<f32>(_wgslsmith_f_op_f32(var_0.a.x - var_0.c.d.c.x), _wgslsmith_div_f32(-302f, var_0.c.e), _wgslsmith_f_op_f32(f32(-1f) * -461f)), firstTrailingBit(var_0.c.d.b.x)).c.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.c.c.x, 169f, var_0.d) + var_0.c.d.c) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1276f, 243f, 1211f) + vec3<f32>(-1000f, 569f, var_0.a.x)) - _wgslsmith_f_op_vec3_f32(-var_0.c.d.c))), var_1.x).a.x);
    var var_3 = Struct_1(abs(vec3<i32>(var_0.c.c.b.x, _wgslsmith_dot_vec2_i32(func_6(var_0.c.c, var_0.c.d.c, -1831i).c.c.a.zy, var_0.c.c.a.xz | var_0.c.c.b.zz), i32(-1i) * -var_1.x)), vec4<i32>(_wgslsmith_div_i32(-66269i, var_1.x), var_1.x, var_1.x, select(-_wgslsmith_clamp_i32(2147483647i, 1i, 8837i), (var_0.c.c.a.x & var_1.x) & var_1.x, var_0.c.a.x)), _wgslsmith_f_op_vec3_f32(-var_0.c.d.c));
    return func_6(Struct_1(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, var_0.c.d.b.x), var_1.zw), ~(~43443i), -2147483647i), var_0.c.c.b, vec3<f32>(var_3.c.x, var_3.c.x, _wgslsmith_f_op_f32(trunc(276f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(var_0.c.d.c, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, 1000f, var_0.a.x))))))), -2147483647i).c.c.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !global2[_wgslsmith_index_u32(17212u, 17u)];
    var var_1 = 2778f;
    let var_2 = -_wgslsmith_sub_vec4_i32(func_1(), _wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(-7667i, 2147483647i, 0i, -7118i)), vec4<i32>(1i, 1i, 1i, 1i) << (~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 35386u) % vec4<u32>(32u))));
    let var_3 = func_2(func_6(global0[_wgslsmith_index_u32(37183u, 2u)], func_6(global0[_wgslsmith_index_u32(~(~4294967295u), 2u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1851f, -815f, -171f), vec3<f32>(-541f, -280f, -1000f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(357f, -1189f, 1263f))), var_2.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 35791u), vec4<u32>(u_input.a.x, 28785u, u_input.a.x, 1u)) % 32u)).c.d.c, var_2.x).c, _wgslsmith_clamp_i32(var_2.x >> (u_input.a.x % 32u), ~(_wgslsmith_mod_i32(var_2.x, 0i) << (1u % 32u)), var_2.x), u_input.a.x);
    global2 = array<vec2<bool>, 17>();
    var var_4 = var_3.c.d.b.x;
    var var_5 = 697f;
    var_1 = _wgslsmith_f_op_f32(773f - -605f);
    let var_6 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(-(func_6(Struct_1(var_3.c.d.b.yxx, vec4<i32>(var_3.c.c.a.x, var_3.c.c.a.x, -2147483647i, var_3.c.d.a.x), var_3.c.c.c), var_3.c.c.c, var_2.x).c.d.a.x & var_6) << (u_input.a.x % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1191f, -1197f, 878f, -133f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_3.a.x, -316f, var_3.d)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-937f, 1000f, -1850f, var_3.b)))))))), func_6(func_6(global0[_wgslsmith_index_u32(u_input.a.x, 2u)], _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1025f, -459f, var_3.d) + vec3<f32>(var_3.d, 834f, -193f)), vec3<f32>(var_3.a.x, -316f, var_3.d))), abs(_wgslsmith_mult_i32(59421i, 33451i))).c.c, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-703f, var_3.b, var_3.b)))), -_wgslsmith_mult_i32(firstLeadingBit(-26930i), var_3.c.c.a.x)).c.d.a.x, _wgslsmith_f_op_f32(-var_3.d), vec4<u32>(~_wgslsmith_add_u32(u_input.a.x, u_input.a.x), u_input.a.x & u_input.a.x, u_input.a.x, 0u) & (select(select(vec4<u32>(u_input.a.x, u_input.a.x, 14068u, u_input.a.x), vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x), var_3.c.a), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 4004u, 102620u), vec4<u32>(u_input.a.x, 0u, u_input.a.x, 1u)), u_input.a.x < u_input.a.x) & _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.a.x, 0u), vec4<u32>(13323u, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(57382u, 4294967295u, 29286u, 0u)), ~vec4<u32>(u_input.a.x, 148057u, 4294967295u, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 21455u) << (vec4<u32>(84664u, u_input.a.x, 0u, u_input.a.x) % vec4<u32>(32u)))));
}

