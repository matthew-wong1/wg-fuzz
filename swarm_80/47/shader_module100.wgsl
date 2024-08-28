struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<u32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: f32,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(Struct_1(true, 3331u, vec3<u32>(4294967295u, 107123u, 0u), vec2<f32>(115f, 1428f)), Struct_1(true, 1u, vec3<u32>(1u, 18871u, 64051u), vec2<f32>(-1000f, 643f)), vec2<f32>(-1439f, -1399f), 527f));

var<private> global1: array<f32, 11> = array<f32, 11>(-2274f, -1073f, -1816f, 482f, -1319f, 816f, 674f, -668f, 141f, 377f, -1386f);

var<private> global2: array<f32, 22> = array<f32, 22>(-1259f, -1020f, -1159f, 308f, 1271f, 1495f, -1000f, 423f, -1437f, 1622f, 830f, 2508f, 581f, 424f, -1000f, 625f, 1948f, -1144f, 1955f, 2072f, -2047f, -143f);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(4294967295u, 11u)];
    var var_1 = Struct_3(!any(vec3<bool>(true, true, true)), _wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(86582u, 4294967295u, 0u, 4294967295u), vec4<u32>(1u, 0u, 71254u, 62844u), vec4<u32>(1u, 4294967295u, 26343u, 0u)), countOneBits(vec4<u32>(1u, 99273u, 4294967295u, 0u))), 4294967295u), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(56831u, 2436u), vec2<u32>(4294967295u, 0u), vec2<u32>(3508u, 21283u))), select(vec2<u32>(1u, ~1u), ~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(71605u, 4294967295u)), true)));
    let var_2 = 1000f;
    var_1 = Struct_3(true, countOneBits(var_1.c.x), reverseBits(_wgslsmith_mult_vec2_u32(~vec2<u32>(1u, var_1.c.x), ~var_1.c)));
    let var_3 = ~(~_wgslsmith_mod_vec4_i32(select(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -1i, u_input.a.x, 2147483647i)), -vec4<i32>(-25408i, 2147483647i, u_input.a.x, -1i), true), vec4<i32>(2147483647i, 12433i, -2147483647i, u_input.a.x) << (vec4<u32>(1u, 18740u, 1u, var_1.b) % vec4<u32>(32u))));
    return global2[_wgslsmith_index_u32(~(~23584u) >> (~(var_1.b ^ (var_1.c.x | var_1.b)) % 32u), 22u)];
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<i32>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1521f, 185f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1455f, 842f)))))) + vec2<f32>(_wgslsmith_div_f32(1128f, -422f), _wgslsmith_f_op_f32(func_3()))), vec2<f32>(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(reverseBits(select(1u, 26296u, true)), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 106047u), vec2<u32>(0u, 1u)), ~vec2<u32>(23487u, 4294967295u))), 22u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 22u)]) + -940f) - 1848f))));
    let var_1 = Struct_2(Struct_1(all(vec3<bool>(true, true, true)), 4294967295u, max(vec3<u32>(1u, 1u, 1u), _wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(0u, 15146u, 0u)), vec3<u32>(58748u, 4294967295u, 36269u))), _wgslsmith_f_op_vec2_f32(-var_0)), Struct_1(all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))) && true, ~(~select(17968u, 0u, false)), vec3<u32>(1u, 1u, ~abs(66u)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, -1237f) - _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-653f - -196f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0.x)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 1u), 11u)]) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -920f)))) - var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 11u)]) + -207f) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(10734u, 22u)])))))));
    global0 = array<Struct_2, 1>();
    var var_2 = vec2<i32>(~_wgslsmith_clamp_i32(-20582i, arg_0.x, arg_1.x), arg_0.x);
    var var_3 = Struct_1(false, select(4294967295u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(var_1.a.c.xx, var_1.b.c.zy) & ~vec2<u32>(var_1.a.c.x, var_1.b.c.x), firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(86235u, 4294967295u)))), !var_1.a.a || all(select(vec3<bool>(var_1.a.a, var_1.a.a, var_1.a.a), vec3<bool>(false, false, var_1.a.a), var_1.b.a))), var_1.b.c, _wgslsmith_f_op_vec2_f32(var_0 + vec2<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(func_3()))));
    return vec4<i32>(var_2.x, -(~_wgslsmith_sub_i32(reverseBits(u_input.a.x), abs(0i))), 2147483647i, arg_1.x);
}

fn func_1(arg_0: f32, arg_1: i32) -> Struct_2 {
    var var_0 = ~vec2<u32>(0u, _wgslsmith_add_u32(0u, ~4294967295u));
    var var_1 = _wgslsmith_add_vec4_i32(~(-func_2(~u_input.a, _wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, 0i)))), _wgslsmith_add_vec4_i32(vec4<i32>(34144i, ~u_input.a.x, u_input.a.x, arg_1) & ~select(vec4<i32>(u_input.a.x, u_input.a.x, arg_1, u_input.a.x), vec4<i32>(u_input.a.x, arg_1, arg_1, -1i), vec4<bool>(true, true, false, true)), abs(firstTrailingBit(~vec4<i32>(0i, -2147483647i, -33185i, 43938i)))));
    var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>(abs(_wgslsmith_mod_i32(2147483647i ^ u_input.a.x, 41667i << (var_0.x % 32u))), _wgslsmith_add_i32(-2147483647i, arg_1), var_1.x, -u_input.a.x), vec4<i32>(abs(-1i), ~abs(10401i), _wgslsmith_div_i32(u_input.a.x, 44551i), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_1.x, var_1.x, u_input.a.x, 5451i), vec4<i32>(u_input.a.x, u_input.a.x, var_1.x, u_input.a.x)), func_2(vec2<i32>(-2147483647i, -9208i), var_1.zz))) | vec4<i32>(abs(min(1i, var_1.x)), 40043i, _wgslsmith_dot_vec3_i32(var_1.zyw, vec3<i32>(-1i, -2147483647i, var_1.x)), var_1.x));
    var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(~vec2<i32>(-14121i, arg_1), u_input.a), ~reverseBits(0i), 0i) >> (vec4<u32>(0u, min(~0u, 4153u), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.x, 59029u, 90190u), ~vec3<u32>(4294967295u, 51539u, var_0.x)), 1u >> (1u % 32u)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(abs(_wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(-28709i, -1i, u_input.a.x, 1i)), -vec4<i32>(-2147483647i, 36163i, var_1.x, -1i))), firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(-11134i, 0i, -34082i, 1i), vec4<i32>(34802i, 0i, -1i, -52119i)) >> (vec4<u32>(62401u, var_0.x, var_0.x, 65350u) % vec4<u32>(32u)))));
    global0 = array<Struct_2, 1>();
    return global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 4294967295u) << (var_0.x % 32u), 1u)];
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> StorageBuffer {
    global1 = array<f32, 11>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.x, 1478f, -697f, arg_1.d) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(1281u, 22u)], -1526f, 342f, arg_2.d.x) * vec4<f32>(-636f, -720f, arg_1.b.d.x, arg_2.d.x))))))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-469f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(arg_2.b, 11u)], 2162f, true))) - _wgslsmith_f_op_f32(arg_1.b.d.x * arg_2.d.x))), _wgslsmith_f_op_f32(abs(371f)));
    global1 = array<f32, 11>();
    global1 = array<f32, 11>();
    return StorageBuffer(arg_0.a.b, reverseBits(arg_2.c.x), (firstLeadingBit(vec3<i32>(64933i, u_input.a.x, u_input.a.x) | vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)) << (_wgslsmith_div_vec3_u32(~vec3<u32>(1u, 23053u, arg_2.c.x), ~vec3<u32>(arg_2.c.x, 60288u, arg_2.b)) % vec3<u32>(32u))) >> (arg_0.a.c % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(4294967295u, 1u)];
    global1 = array<f32, 11>();
    global2 = array<f32, 22>();
    global2 = array<f32, 22>();
    global0 = array<Struct_2, 1>();
    let x = u_input.a;
    s_output = func_4(func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1762f)), var_0.d), -1i), Struct_2(Struct_1(false, ~var_0.a.b, vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(62778u, var_0.a.b, 0u), var_0.a.c), _wgslsmith_clamp_u32(50538u, var_0.a.c.x, 46760u), 95116u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b.d))), Struct_1(!all(vec4<bool>(var_0.a.a, true, true, var_0.b.a)), _wgslsmith_mult_u32(var_0.b.c.x, 1615u), _wgslsmith_mult_vec3_u32(max(var_0.a.c, vec3<u32>(2322u, 0u, 4294967295u)), select(vec3<u32>(var_0.a.c.x, var_0.b.b, 79502u), var_0.a.c, var_0.a.a)), vec2<f32>(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(var_0.a.c.x, 11u)])), global1[_wgslsmith_index_u32(abs(var_0.a.c.x), 11u)])), func_1(global1[_wgslsmith_index_u32(4294967295u, 11u)], -1i).a.d, _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(var_0.a.b, 0u), 11u)]))), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1353f) * global1[_wgslsmith_index_u32(var_0.b.b << (27997u % 32u), 11u)]) * _wgslsmith_f_op_f32(func_3())), -1i).b);
}

