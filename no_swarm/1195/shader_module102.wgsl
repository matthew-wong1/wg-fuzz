struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(0i, 2147483647i, -34268i, 2147483647i), vec3<u32>(4294967295u, 4294967295u, 1u), false);

var<private> global1: f32;

var<private> global2: array<Struct_1, 14>;

var<private> global3: Struct_1 = Struct_1(vec4<i32>(-274i, i32(-2147483648), -1i, 1i), vec3<u32>(1u, 40512u, 0u), false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> f32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-642f, 624f, false)) * _wgslsmith_f_op_f32(-646f - 1077f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(866f, -603f))) - 1000f)), 1f);
    var var_1 = global3.b.x;
    let var_2 = global2[_wgslsmith_index_u32(u_input.b, 14u)];
    var var_3 = var_2.a.x;
    var var_4 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(223f)), _wgslsmith_f_op_f32(-177f - -274f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.xz))), _wgslsmith_f_op_vec2_f32(vec2<f32>(972f, -900f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-668f, 316f), var_0.zx)))))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-245f, -1138f)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(622f, 572f), vec2<f32>(var_0.x, var_0.x))))), var_0.yy)));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(651f, _wgslsmith_div_f32(var_4.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x + var_4.x), -185f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), !(true | (var_2.a.x < -global3.a.x))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> vec3<u32> {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(772f * _wgslsmith_f_op_f32(step(-622f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-419f)))))));
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(1538f)), _wgslsmith_f_op_f32(func_3())))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-875f, -592f)), vec2<f32>(645f, 835f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(633f, -1007f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1078f, -646f) - vec2<f32>(1107f, 1333f)))), !any(vec4<bool>(true, global3.c, false, true)))))));
    global0 = Struct_1(global3.a, firstTrailingBit(~(~arg_2.b)), var_0.x < _wgslsmith_f_op_f32(max(-1008f, _wgslsmith_f_op_f32(-577f + var_0.x))));
    var_0 = vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -330f) - _wgslsmith_f_op_f32(-var_0.x))));
    let var_1 = -109f;
    return _wgslsmith_clamp_vec3_u32(arg_0.b, abs(arg_2.b), countOneBits(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3, global3.b.x, u_input.b, 1u), vec4<u32>(arg_2.b.x, global0.b.x, 0u, arg_0.b.x)) ^ ~global0.b.x, arg_1.b.x, 8371u)));
}

fn func_1(arg_0: u32, arg_1: i32) -> bool {
    var var_0 = vec4<u32>(_wgslsmith_mod_u32(arg_0, 4294967295u), 1u, ~(~arg_0), _wgslsmith_div_u32((~arg_0 << (firstTrailingBit(4294967295u) % 32u)) | arg_0, _wgslsmith_dot_vec3_u32(firstTrailingBit(func_2(Struct_1(vec4<i32>(-33071i, -50693i, -22318i, -19949i), vec3<u32>(arg_0, 11454u, global0.b.x), false), Struct_1(vec4<i32>(-2894i, u_input.a.x, 2147483647i, 11265i), global0.b, false), Struct_1(global0.a, global3.b, true), arg_0)), ~(~global3.b))));
    let var_1 = Struct_1(_wgslsmith_sub_vec4_i32(select(vec4<i32>(global3.a.x | -1i, -2771i, 36069i, 0i), _wgslsmith_mod_vec4_i32(global0.a, reverseBits(vec4<i32>(6856i, u_input.a.x, arg_1, 2985i))), !select(vec4<bool>(global0.c, global0.c, false, false), vec4<bool>(true, global3.c, true, global0.c), vec4<bool>(global0.c, global0.c, true, global3.c))), vec4<i32>(~(arg_1 ^ global0.a.x), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -23262i, global0.a.x, global3.a.x), global3.a), arg_1 << (global3.b.x % 32u), ~_wgslsmith_sub_i32(-7929i, global3.a.x))), global0.b, any(vec4<bool>(true, select(true, true, global0.c), all(vec2<bool>(false, true)), true)));
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -656f);
    var var_2 = !select(!select(select(vec3<bool>(false, true, global0.c), vec3<bool>(true, var_1.c, false), global3.c), vec3<bool>(true, true, true), !vec3<bool>(false, var_1.c, global3.c)), select(!vec3<bool>(global0.c, global3.c, true), select(vec3<bool>(true, false, false), vec3<bool>(global0.c, global0.c, global3.c), !var_1.c), all(select(vec4<bool>(global3.c, false, false, var_1.c), vec4<bool>(var_1.c, true, true, global3.c), vec4<bool>(true, false, global0.c, var_1.c)))), select(vec3<bool>(var_1.c, !global3.c, true), vec3<bool>(true, true, true), select(false, global3.c, true)));
    var var_3 = 65552u ^ _wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec4_u32(min(select(vec4<u32>(global0.b.x, 21019u, 1u, arg_0), vec4<u32>(arg_0, 23284u, arg_0, u_input.b), false), abs(vec4<u32>(global0.b.x, global0.b.x, 4294967295u, var_0.x))), ~(~vec4<u32>(arg_0, var_0.x, global3.b.x, 1u))));
    return global3.c & !(global0.c == any(select(var_2.yy, var_2.yy, var_2.zx)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(func_1(_wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(global3.b.x, global3.b.x, u_input.b, 4294967295u), vec4<u32>(14903u, u_input.b, global3.b.x, global0.b.x)), (global3.b.x & u_input.b) << (select(global0.b.x, 3032u, global3.c) % 32u)), u_input.a.x), global3.c, global3.c);
    global3 = Struct_1(_wgslsmith_div_vec4_i32(-vec4<i32>(49826i << (u_input.b % 32u), _wgslsmith_clamp_i32(global0.a.x, u_input.a.x, 51370i), -1i, -84196i), firstTrailingBit(_wgslsmith_mult_vec4_i32(abs(global3.a), firstLeadingBit(global3.a)))), firstTrailingBit(firstTrailingBit(~countOneBits(global0.b))), false);
    var var_1 = global0.b.x ^ reverseBits(func_2(global2[_wgslsmith_index_u32(global0.b.x, 14u)], global2[_wgslsmith_index_u32(global0.b.x >> (u_input.b % 32u), 14u)], Struct_1(vec4<i32>(-71170i, -5617i, -1i, u_input.a.x), global3.b, global0.c || false), 4294967295u).x);
    let var_2 = global2[_wgslsmith_index_u32(95436u, 14u)];
    var_1 = max(_wgslsmith_mult_u32(~0u, ~u_input.b), var_2.b.x);
    var var_3 = vec2<bool>(~var_2.b.x == global0.b.x, global3.c);
    let var_4 = ~_wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_add_i32(global3.a.x, global0.a.x), global3.a.x), 1i) ^ -38420i;
    var var_5 = Struct_1(global3.a ^ firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, global3.a.x, -39559i, global0.a.x) & vec4<i32>(var_2.a.x, u_input.a.x, 1i, var_2.a.x), global3.a)), vec3<u32>(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.b.x, 13813u), func_2(global2[_wgslsmith_index_u32(3990u, 14u)], Struct_1(vec4<i32>(-8797i, 30203i, -32176i, 2147483647i), vec3<u32>(4218u, u_input.b, global0.b.x), var_3.x), Struct_1(global3.a, vec3<u32>(var_2.b.x, u_input.b, 1u), true), 4294967295u).yy)), _wgslsmith_dot_vec4_u32(firstLeadingBit(abs(vec4<u32>(u_input.b, 23084u, 90797u, 4294967295u))), vec4<u32>(12098u, firstTrailingBit(u_input.b), func_2(Struct_1(global0.a, global0.b, var_3.x), Struct_1(vec4<i32>(18276i, var_2.a.x, var_4, -15001i), vec3<u32>(4294967295u, u_input.b, global3.b.x), false), global2[_wgslsmith_index_u32(global0.b.x, 14u)], 1u).x, 61648u)), 64270u), var_3.x);
    global3 = Struct_1(vec4<i32>(2147483647i, -1117i, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(-var_2.a, vec4<i32>(var_4, 13126i, var_4, global3.a.x)), -2969i), _wgslsmith_mod_i32(_wgslsmith_div_i32(-global0.a.x, reverseBits(global0.a.x)), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(var_5.a.yxx, var_2.a.xww, global3.a.zyw), vec3<i32>(-1i, u_input.a.x, 1i)))), reverseBits(_wgslsmith_mult_vec3_u32(~var_5.b, global0.b)), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-242f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(step(195f, -2360f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-153f))))))), vec2<u32>(global3.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(11521u, 25713u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b.x, global0.b.x, 1u, 4294967295u), vec4<u32>(global3.b.x, u_input.b, 24501u, 6537u)), firstLeadingBit(u_input.b)), firstLeadingBit(vec4<u32>(global3.b.x, 1u, 4294967295u, global0.b.x)) & countOneBits(vec4<u32>(global0.b.x, 1662u, u_input.b, 1729u)))), vec4<u32>(48401u, 52044u, ~1u, ~77304u << (global0.b.x % 32u)), global0.b.x & _wgslsmith_sub_u32(u_input.b, 0u), var_2.a);
}

