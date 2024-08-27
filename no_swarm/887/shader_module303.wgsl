struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<f32>,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12> = array<u32, 12>(7856u, 0u, 18842u, 0u, 2636u, 24355u, 33660u, 4294967295u, 11930u, 61937u, 44473u, 6097u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3) -> bool {
    var var_0 = vec4<i32>(0i, _wgslsmith_mult_i32(-20578i, arg_0.b.x), -12431i, -11612i) ^ -firstLeadingBit(vec4<i32>(-9422i, arg_0.b.x, u_input.b.x, 22802i << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 12u)], 12u)] % 32u)));
    var_0 = abs(~(~(vec4<i32>(arg_0.b.x, u_input.b.x, 27160i, u_input.b.x) & vec4<i32>(var_0.x, u_input.b.x, 18100i, 2147483647i))) & (vec4<i32>(-1i) * -select(vec4<i32>(arg_0.b.x, u_input.b.x, arg_0.b.x, -6725i), vec4<i32>(arg_0.b.x, 1i, -2147483647i, -31124i), true)));
    return !(0i > _wgslsmith_clamp_i32(arg_0.b.x, var_0.x, -5341i));
}

fn func_2() -> Struct_2 {
    let var_0 = i32(-1i) * -45684i;
    var var_1 = ~select(countOneBits(var_0), (var_0 ^ 2147483647i) & 0i, true);
    var var_2 = Struct_1(func_3(Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(1278f, 201f)))), firstTrailingBit(-u_input.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-972f - 1f)));
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.b)));
    let var_4 = min(-countOneBits(vec3<i32>(-7820i, u_input.c.x, 1912i) ^ vec3<i32>(-2147483647i, u_input.b.x, u_input.b.x)), -_wgslsmith_mult_vec3_i32((vec3<i32>(var_0, -1i, u_input.c.x) >> (vec3<u32>(56736u, 1u, 4294967295u) % vec3<u32>(32u))) | ~vec3<i32>(-2147483647i, 17899i, -38880i), -_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, var_0, u_input.b.x), vec3<i32>(-1i, var_0, 0i))));
    return Struct_2(Struct_1((!var_2.a && true) || !func_3(Struct_3(var_2.b, u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1126f, var_2.b) - _wgslsmith_f_op_f32(-1000f - -768f)))), abs(u_input.c.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b, _wgslsmith_f_op_f32(floor(1143f)))), Struct_1(any(!vec2<bool>(true, var_2.a)) || true, _wgslsmith_f_op_f32(-var_2.b)), !(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)))));
}

fn func_4(arg_0: Struct_2) -> vec3<u32> {
    let var_0 = func_2();
    global0 = array<u32, 12>();
    global0 = array<u32, 12>();
    global0 = array<u32, 12>();
    global0 = array<u32, 12>();
    return vec3<u32>(~select(0u, ~global0[_wgslsmith_index_u32(u_input.a, 12u)], 34288u <= u_input.d), global0[_wgslsmith_index_u32(select(104477u, _wgslsmith_add_u32(69923u, 0u), true), 12u)], 4294967295u) ^ (~vec3<u32>(0u, u_input.d, 0u) ^ vec3<u32>(reverseBits(~global0[_wgslsmith_index_u32(98512u, 12u)]), reverseBits(~u_input.a), ~(~1u)));
}

fn func_5(arg_0: vec3<u32>) -> vec3<u32> {
    global0 = array<u32, 12>();
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(463f, -1532f))))), 1000f));
    let var_1 = ~vec4<i32>(u_input.b.x, reverseBits(-2147483647i), i32(-1i) * -(u_input.c.x & u_input.c.x), u_input.c.x);
    return firstLeadingBit(vec3<u32>(~max(30050u, firstTrailingBit(1u)), 5378u, 8303u << (_wgslsmith_mult_u32(~arg_0.x, 1u) % 32u)));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_3) -> Struct_3 {
    let var_0 = vec2<u32>(~u_input.a, 0u ^ ~u_input.d) & firstTrailingBit(_wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(35336u, 41708u)), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(30961u, u_input.a, u_input.d), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 12u)], 13020u)), firstLeadingBit(u_input.a))));
    var var_1 = _wgslsmith_mult_u32(firstLeadingBit(1u), global0[_wgslsmith_index_u32(54108u, 12u)]);
    var var_2 = ~vec3<u32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(max(u_input.d, 103869u), ~12615u, ~4294967295u, var_0.x), ~select(vec4<u32>(0u, var_0.x, u_input.d, u_input.a), vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 12u)], 12u)], 1u, global0[_wgslsmith_index_u32(4825u, 12u)]), true)), 12u)], firstLeadingBit(~(~32867u)), u_input.d);
    let var_3 = select(vec2<bool>(arg_0.x, arg_0.x), arg_0.zy, arg_0.x);
    var_2 = func_5(max(reverseBits(~vec3<u32>(global0[_wgslsmith_index_u32(var_2.x, 12u)], u_input.d, 25671u)) | func_4(func_2()), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, var_2.x, u_input.d) ^ vec3<u32>(var_2.x, global0[_wgslsmith_index_u32(1u, 12u)], 1u), max(vec3<u32>(var_2.x, 43513u, var_0.x), vec3<u32>(17598u, 4294967295u, var_2.x))), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, var_0.x, 10265u) & vec3<u32>(37761u, var_2.x, 0u), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 64773u, var_0.x), vec3<u32>(91537u, 4294967295u, 64730u), vec3<u32>(4294967295u, 4294967295u, 4294967295u))))));
    return arg_1;
}

fn func_6(arg_0: Struct_3, arg_1: vec4<f32>) -> i32 {
    global0 = array<u32, 12>();
    return _wgslsmith_dot_vec4_i32(~(~(-vec4<i32>(1i, u_input.c.x, u_input.c.x, -23287i))), abs(_wgslsmith_sub_vec4_i32((vec4<i32>(-2222i, 1i, 17033i, u_input.b.x) >> (vec4<u32>(u_input.d, 4294967295u, 0u, 0u) % vec4<u32>(32u))) | _wgslsmith_mult_vec4_i32(vec4<i32>(38543i, -33433i, u_input.b.x, u_input.c.x), vec4<i32>(u_input.b.x, -8580i, u_input.c.x, 18829i)), vec4<i32>(arg_0.b.x, arg_0.b.x, u_input.c.x, u_input.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 159f;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-640f)), _wgslsmith_f_op_f32(-1422f - 151f))))));
    global0 = array<u32, 12>();
    var var_2 = Struct_1(!(_wgslsmith_sub_u32(u_input.a, min(1u, 1u)) >= ~(global0[_wgslsmith_index_u32(22794u, 12u)] ^ u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(968f * -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var_2 = Struct_1(53758i <= firstTrailingBit(func_6(func_1(vec3<bool>(false, var_2.a, false), Struct_3(var_0, u_input.b)), vec4<f32>(var_2.b, 303f, 459f, -1207f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(806f, 1109f) * _wgslsmith_f_op_f32(f32(-1f) * -333f)), var_2.b)), -762f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1563f + -585f), var_0, func_2().c.x, -890f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, -1000f, var_2.b)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1076f, var_0, -180f, 1345f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0, var_0))), _wgslsmith_f_op_f32(-var_2.b)) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b, -1251f) * vec2<f32>(-825f, -351f)) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, var_0))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_2.b, 138f))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, var_2.b), vec2<f32>(var_2.b, 219f), vec2<bool>(var_2.a, var_2.a)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-455f, var_2.b) - vec2<f32>(1161f, var_0)))))));
}

