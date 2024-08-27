struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<i32>,
    d: bool,
    e: vec3<i32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: i32,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(0u, 83697u, 5380u);

var<private> global1: i32 = -1i;

var<private> global2: bool = false;

var<private> global3: array<Struct_1, 18>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: Struct_5) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(min(arg_0.e.a.x, _wgslsmith_f_op_f32(arg_0.e.a.x * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.a.x * -431f) - 1056f), _wgslsmith_f_op_f32(min(-1054f, _wgslsmith_f_op_f32(-arg_2.a.a.x))))))));
    global1 = -2147483647i;
    var var_1 = !all(!select(!vec3<bool>(arg_0.b.x, true, arg_0.d.a), vec3<bool>(true, false, arg_2.c), vec3<bool>(false, arg_1.x, arg_1.x)));
    let var_2 = 31945u;
    let var_3 = arg_2;
    return ~vec4<i32>(1i, ~(-2147483647i), 11506i, firstTrailingBit(~arg_0.c));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_3) -> bool {
    let var_0 = -1722f;
    let var_1 = arg_3.a;
    global0 = ~countOneBits(max(vec3<u32>(1u, 4501u, 4294967295u), ~vec3<u32>(0u, 50935u, 1u))) | ((~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 11343u, global0.x), vec3<u32>(global0.x, 20780u, u_input.c)) ^ ~firstTrailingBit(vec3<u32>(4294967295u, 36989u, 0u))) & (_wgslsmith_div_vec3_u32(~vec3<u32>(global0.x, 32773u, 4294967295u), ~vec3<u32>(81734u, 1u, 1528u)) | ~firstTrailingBit(vec3<u32>(0u, global0.x, 4294967295u))));
    var var_2 = global3[_wgslsmith_index_u32(0u, 18u)];
    var_2 = arg_2;
    return all(vec3<bool>(!(any(vec2<bool>(var_2.a, var_2.a)) == false), all(vec4<bool>(var_2.a, arg_2.a, var_1.a & var_1.a, true)), var_2.a));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: bool) -> Struct_3 {
    let var_0 = all(vec2<bool>(true, !func_4(vec2<f32>(-681f, arg_0.x), func_3(Struct_4(vec2<u32>(1u, global0.x), vec3<bool>(arg_2, arg_2, true), u_input.a, Struct_1(true, u_input.a), Struct_2(arg_0.yw, vec4<u32>(u_input.c, global0.x, global0.x, u_input.c), global3[_wgslsmith_index_u32(global0.x, 18u)], vec2<i32>(0i, u_input.b))), vec2<bool>(arg_2, arg_2), Struct_5(Struct_2(arg_1.yz, vec4<u32>(u_input.c, u_input.c, 7405u, 4294967295u), Struct_1(true, u_input.a), vec2<i32>(u_input.b, u_input.b)), 46850i, false)), Struct_1(arg_2, u_input.a), Struct_3(global3[_wgslsmith_index_u32(1u, 18u)], vec2<bool>(arg_2, true), vec4<i32>(u_input.a, u_input.a, -2147483647i, -7741i), arg_2, vec3<i32>(u_input.a, u_input.a, u_input.b)))));
    let var_1 = global3[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec4_u32(min(~min(vec4<u32>(global0.x, u_input.c, 4422u, 1u), vec4<u32>(65318u, global0.x, u_input.c, u_input.c)), vec4<u32>(0u & global0.x, 4294967295u, firstLeadingBit(u_input.c), ~u_input.c)), vec4<u32>(~_wgslsmith_clamp_u32(u_input.c, 104724u, 1u), ~89944u, global0.x, countOneBits(~global0.x)))), 18u)];
    var var_2 = true;
    var var_3 = ~_wgslsmith_add_u32(u_input.c, 0u) == ~_wgslsmith_mod_u32(u_input.c, min(~u_input.c, abs(4294967295u)));
    let var_4 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(450f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - arg_1.x), _wgslsmith_f_op_f32(arg_1.x + arg_1.x))))));
    return Struct_3(global3[_wgslsmith_index_u32(global0.x, 18u)], vec2<bool>(false, var_1.a || func_4(vec2<f32>(-1497f, 1069f), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, u_input.a, u_input.b, var_1.b), vec4<i32>(16453i, -22684i, u_input.b, u_input.a)), Struct_1(var_0, var_1.b), Struct_3(global3[_wgslsmith_index_u32(6532u, 18u)], vec2<bool>(true, false), vec4<i32>(u_input.a, 608i, 16958i, 2147483647i), false, vec3<i32>(-13012i, u_input.b, 2147483647i)))), countOneBits(vec4<i32>(abs(-20417i), 1i, -(~1i), u_input.a)), var_4.x >= var_4.x, -(vec3<i32>(-1i) * -vec3<i32>(-94365i, 35792i, u_input.b)));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_2) -> Struct_5 {
    let var_0 = ~firstTrailingBit(~arg_2.b.x);
    global2 = true;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1392f, -1559f, arg_2.a.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, arg_2.a.x, -893f)))))));
    let var_2 = arg_1.b;
    let var_3 = vec4<u32>(u_input.c, max(u_input.c, arg_2.b.x), max(reverseBits(countOneBits(abs(0u))), 24365u), _wgslsmith_clamp_u32(~0u, global0.x, var_2.x));
    return Struct_5(arg_1, _wgslsmith_dot_vec3_i32(arg_0.e, arg_0.e), arg_1.c.a);
}

fn func_6(arg_0: bool, arg_1: Struct_5, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = abs(~(arg_1.a.b ^ arg_1.a.b) | vec4<u32>(u_input.c >> (_wgslsmith_mod_u32(u_input.c, global0.x) % 32u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, u_input.c, 8724u), arg_1.a.b.wyy), global0.x, ~(4870u << (1u % 32u))));
    var var_1 = 2147483647i | _wgslsmith_dot_vec4_i32(min(~(~vec4<i32>(u_input.a, 47543i, 8937i, arg_1.a.c.b)), -select(vec4<i32>(-20646i, u_input.a, 1i, -63621i), vec4<i32>(1i, u_input.a, 0i, arg_1.a.d.x), true)), firstTrailingBit(~func_3(Struct_4(arg_1.a.b.wz, vec3<bool>(true, arg_1.c, true), u_input.a, Struct_1(arg_1.c, 0i), Struct_2(vec2<f32>(arg_1.a.a.x, arg_1.a.a.x), vec4<u32>(u_input.c, 4294967295u, global0.x, global0.x), Struct_1(true, 31504i), vec2<i32>(u_input.a, 25967i))), vec2<bool>(arg_0, arg_1.c), arg_1)));
    var var_2 = arg_1.a.a.x < 1016f;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.a.x * 670f));
    var var_4 = arg_1.a.c.b;
    return func_5(Struct_3(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c >> (~4294967295u % 32u), u_input.c), 18u)], !vec2<bool>(any(arg_2.xz), false), vec4<i32>(~u_input.b, min(u_input.b, -1i), ~(~arg_1.a.d.x), u_input.a ^ arg_1.a.d.x), any(vec2<bool>(arg_0, false)) & all(!arg_2), ~(~_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.b, u_input.b, 1i), vec3<i32>(22249i, u_input.a, u_input.b)))), arg_1.a, Struct_2(arg_1.a.a, arg_1.a.b, global3[_wgslsmith_index_u32(1u, 18u)], arg_1.a.d)).a.c;
}

fn func_7(arg_0: i32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_3) -> Struct_5 {
    var var_0 = arg_3;
    global2 = false;
    let var_1 = _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0, 58907i, arg_3.a.b), firstTrailingBit(vec3<i32>(arg_1.b, arg_0, 0i))), arg_2.wzx), -arg_2.wzx);
    let var_2 = Struct_4(vec2<u32>(_wgslsmith_clamp_u32(select(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, u_input.c, u_input.c), vec3<u32>(global0.x, u_input.c, global0.x)), 36316u, arg_3.b.x), _wgslsmith_dot_vec2_u32(vec2<u32>(72826u, u_input.c), vec2<u32>(49170u, u_input.c)), ~4294967295u), u_input.c), !(!(!select(vec3<bool>(false, arg_1.a, true), vec3<bool>(arg_1.a, arg_3.a.a, true), arg_3.d))), arg_1.b, global3[_wgslsmith_index_u32(u_input.c << (4294967295u % 32u), 18u)], Struct_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1398f, 1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1171f) + vec2<f32>(1806f, -255f)))), func_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1428f, 872f, 1638f, 1074f), vec4<f32>(1971f, 736f, -1000f, -103f), vec4<bool>(false, false, var_0.b.x, true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1465f, -761f, -2534f) - vec3<f32>(229f, 1307f, 1000f)), any(vec4<bool>(true, arg_1.a, arg_3.d, var_0.d))).b)), select(select(vec4<u32>(u_input.c, 0u, 48523u, 1u), select(vec4<u32>(43488u, global0.x, 1u, 22850u), vec4<u32>(4294967295u, 2300u, global0.x, u_input.c), true), true), firstLeadingBit(vec4<u32>(global0.x, global0.x, global0.x, u_input.c) >> (vec4<u32>(global0.x, u_input.c, 23931u, u_input.c) % vec4<u32>(32u))), vec4<bool>(any(vec2<bool>(var_0.a.a, false)), !arg_1.a, func_6(arg_1.a, Struct_5(Struct_2(vec2<f32>(1650f, 447f), vec4<u32>(global0.x, global0.x, 28508u, global0.x), var_0.a, var_0.c.zx), 2147483647i, var_0.d), vec3<bool>(var_0.d, true, true)).a, true)), Struct_1(!(false | arg_3.a.a), arg_2.x), _wgslsmith_add_vec2_i32(func_3(Struct_4(global0.yz, vec3<bool>(arg_3.b.x, arg_3.d, false), -2147483647i, var_0.a, Struct_2(vec2<f32>(-1262f, 1688f), vec4<u32>(u_input.c, 1u, global0.x, global0.x), Struct_1(arg_3.a.a, 16462i), vec2<i32>(var_1.x, 2147483647i))), vec2<bool>(false, arg_1.a), func_5(arg_3, Struct_2(vec2<f32>(-1327f, 1171f), vec4<u32>(u_input.c, global0.x, 4294967295u, 133425u), var_0.a, var_0.e.zz), Struct_2(vec2<f32>(-1199f, -348f), vec4<u32>(8214u, 1u, 1u, 16601u), arg_1, vec2<i32>(17835i, 13575i)))).yx, _wgslsmith_mult_vec2_i32(vec2<i32>(arg_2.x, -1i) >> (global0.zx % vec2<u32>(32u)), var_1.xx))));
    var var_3 = arg_3.b;
    return Struct_5(func_5(arg_3, func_5(arg_3, Struct_2(_wgslsmith_f_op_vec2_f32(var_2.e.a + vec2<f32>(var_2.e.a.x, var_2.e.a.x)), vec4<u32>(41707u, 1u, u_input.c, 50511u), arg_1, select(arg_2.yy, vec2<i32>(1678i, var_1.x), vec2<bool>(arg_3.d, false))), Struct_2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2.e.a.x, 204f))), vec4<u32>(4294967295u, u_input.c, global0.x, 103565u) | vec4<u32>(u_input.c, global0.x, global0.x, u_input.c), Struct_1(false, 2147483647i), vec2<i32>(-16465i, -6191i) ^ vec2<i32>(1i, arg_2.x))).a, var_2.e).a, _wgslsmith_dot_vec2_i32(arg_2.wx, var_2.e.d), arg_3.a.a);
}

fn func_1(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: vec3<u32>) -> Struct_5 {
    return func_7(~(-1i), func_6(true, func_5(func_2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_2.a.x, 936f, arg_2.a.x, arg_2.a.x), vec4<f32>(arg_2.a.x, arg_2.a.x, -344f, arg_2.a.x))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1046f, arg_2.a.x, arg_2.a.x))), arg_2.b.x <= u_input.c), arg_2, Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a.x, 334f) * arg_2.a), arg_2.b, arg_0.a, arg_2.d)), vec3<bool>(true == !arg_2.c.a, arg_0.d, func_5(func_2(vec4<f32>(arg_2.a.x, -149f, -1593f, arg_2.a.x), vec3<f32>(-373f, arg_2.a.x, arg_2.a.x), false), arg_2, Struct_2(vec2<f32>(arg_2.a.x, arg_2.a.x), arg_2.b, Struct_1(false, -43905i), arg_2.d)).c)), arg_0.c, Struct_3(func_5(arg_0, Struct_2(_wgslsmith_f_op_vec2_f32(-arg_2.a), vec4<u32>(5419u, arg_2.b.x, arg_2.b.x, global0.x), Struct_1(arg_2.c.a, u_input.a), -arg_0.c.wy), func_5(func_2(vec4<f32>(-1000f, arg_2.a.x, -1000f, arg_2.a.x), vec3<f32>(arg_2.a.x, -3286f, -1000f), arg_0.b.x), arg_2, Struct_2(vec2<f32>(728f, -2191f), arg_2.b, global3[_wgslsmith_index_u32(u_input.c, 18u)], arg_0.e.xx)).a).a.c, arg_0.b, ~arg_0.c, arg_0.a.a, _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, -2147483647i, u_input.a) ^ arg_0.e, vec3<i32>(46938i, u_input.a, arg_0.a.b)), vec3<i32>(u_input.b, -2147483647i, firstTrailingBit(-7337i)))));
}

fn func_8(arg_0: vec3<u32>, arg_1: Struct_5, arg_2: Struct_1) -> f32 {
    let var_0 = global3[_wgslsmith_index_u32(0u, 18u)];
    var var_1 = Struct_3(func_7(func_2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-845f, arg_1.a.a.x, arg_1.a.a.x, 734f), vec4<f32>(-1063f, arg_1.a.a.x, arg_1.a.a.x, arg_1.a.a.x))), vec3<f32>(1003f, arg_1.a.a.x, arg_1.a.a.x), false & arg_1.a.c.a).e.x | 2147483647i, func_6(true, func_1(func_2(vec4<f32>(-1398f, -573f, -1784f, arg_1.a.a.x), vec3<f32>(417f, -501f, arg_1.a.a.x), var_0.a), _wgslsmith_mod_vec3_u32(arg_1.a.b.yxy, vec3<u32>(27965u, u_input.c, u_input.c)), Struct_2(arg_1.a.a, vec4<u32>(4294967295u, 0u, 1u, 1u), arg_1.a.c, arg_1.a.d), vec3<u32>(u_input.c, 34302u, 38993u) ^ arg_0), !vec3<bool>(var_0.a, arg_2.a, true)), ~(vec4<i32>(-1i) * -vec4<i32>(2147483647i, -17346i, -21650i, u_input.b)), func_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-263f, 681f, -1728f, 1012f) - vec4<f32>(arg_1.a.a.x, arg_1.a.a.x, -1018f, 740f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1060f, arg_1.a.a.x, -1524f))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1.a.a.x, arg_1.a.a.x, -170f)))), all(vec3<bool>(var_0.a, arg_1.a.c.a, arg_2.a)))).a.c, select(func_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.a.x, arg_1.a.a.x, arg_1.a.a.x, arg_1.a.a.x)))), vec3<f32>(_wgslsmith_f_op_f32(arg_1.a.a.x + arg_1.a.a.x), -1177f, arg_1.a.a.x), false).b, !(!(!vec2<bool>(arg_1.c, false))), !arg_1.a.c.a), (vec4<i32>(-arg_1.b, 1i, func_5(Struct_3(global3[_wgslsmith_index_u32(arg_0.x, 18u)], vec2<bool>(var_0.a, false), vec4<i32>(var_0.b, -55799i, -1i, 2147483647i), arg_2.a, vec3<i32>(var_0.b, -72099i, arg_2.b)), arg_1.a, Struct_2(arg_1.a.a, arg_1.a.b, Struct_1(true, 4085i), arg_1.a.d)).a.d.x, arg_2.b) ^ func_3(Struct_4(vec2<u32>(0u, 44363u), vec3<bool>(var_0.a, arg_1.a.c.a, arg_2.a), -19281i, Struct_1(true, 2147483647i), Struct_2(arg_1.a.a, vec4<u32>(global0.x, 0u, u_input.c, 79325u), Struct_1(false, 45813i), arg_1.a.d)), vec2<bool>(false, arg_1.a.c.a), Struct_5(arg_1.a, arg_2.b, false))) >> ((vec4<u32>(func_1(Struct_3(Struct_1(false, arg_1.b), vec2<bool>(arg_2.a, var_0.a), vec4<i32>(-1i, arg_1.b, arg_1.a.d.x, 0i), false, vec3<i32>(-24244i, u_input.a, var_0.b)), vec3<u32>(arg_0.x, arg_1.a.b.x, u_input.c), arg_1.a, vec3<u32>(52104u, arg_1.a.b.x, u_input.c)).a.b.x, func_1(Struct_3(arg_1.a.c, vec2<bool>(var_0.a, arg_1.c), vec4<i32>(2147483647i, u_input.a, -2147483647i, 0i), arg_2.a, vec3<i32>(arg_2.b, -2443i, 2147483647i)), vec3<u32>(u_input.c, 0u, 1u), Struct_2(vec2<f32>(arg_1.a.a.x, arg_1.a.a.x), vec4<u32>(arg_0.x, 4294967295u, 1u, arg_1.a.b.x), Struct_1(false, 0i), vec2<i32>(arg_1.a.c.b, arg_1.b)), arg_1.a.b.wyx).a.b.x, ~u_input.c, arg_0.x) << ((vec4<u32>(1u, arg_1.a.b.x, arg_0.x, global0.x) & ~arg_1.a.b) % vec4<u32>(32u))) % vec4<u32>(32u)), arg_1.a.c.a, abs((-vec3<i32>(-11504i, arg_2.b, 0i) ^ vec3<i32>(31337i, 36242i, -33882i)) << (~arg_1.a.b.xwz % vec3<u32>(32u))));
    let var_2 = func_7(_wgslsmith_dot_vec4_i32(func_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.a.x, 791f, -774f, -497f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.a.a.x, 191f, arg_1.a.a.x, arg_1.a.a.x))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(322f, arg_1.a.a.x, arg_1.a.a.x)), true).c, vec4<i32>(-1i) * -func_3(Struct_4(arg_0.xx, vec3<bool>(arg_1.c, arg_2.a, var_1.b.x), 1i, global3[_wgslsmith_index_u32(arg_1.a.b.x, 18u)], Struct_2(arg_1.a.a, arg_1.a.b, Struct_1(arg_1.a.c.a, u_input.a), vec2<i32>(15859i, var_0.b))), vec2<bool>(true, arg_2.a), Struct_5(Struct_2(vec2<f32>(arg_1.a.a.x, arg_1.a.a.x), vec4<u32>(0u, arg_1.a.b.x, 8241u, global0.x), Struct_1(arg_2.a, -6503i), arg_1.a.d), 94062i, true))), Struct_1(true, 33611i), _wgslsmith_mod_vec4_i32(select(~vec4<i32>(var_0.b, var_1.a.b, arg_2.b, var_0.b), abs(var_1.c), vec4<bool>(arg_2.a, -92853i < var_0.b, true, arg_2.a)), var_1.c), Struct_3(global3[_wgslsmith_index_u32(arg_1.a.b.x, 18u)], !select(!var_1.b, func_2(vec4<f32>(1603f, arg_1.a.a.x, arg_1.a.a.x, -1047f), vec3<f32>(arg_1.a.a.x, 855f, 226f), var_1.b.x).b, all(vec4<bool>(false, false, false, var_1.d))), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -1i, arg_2.b), var_1.e), 1i, 54572i), _wgslsmith_clamp_vec4_i32(func_3(Struct_4(global0.zx, vec3<bool>(false, var_0.a, true), 0i, global3[_wgslsmith_index_u32(u_input.c, 18u)], Struct_2(arg_1.a.a, arg_1.a.b, arg_2, vec2<i32>(0i, -2147483647i))), var_1.b, arg_1), _wgslsmith_div_vec4_i32(vec4<i32>(-27519i, 19094i, 2147483647i, var_0.b), vec4<i32>(1i, arg_2.b, 58005i, u_input.b)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.b, 30474i, -2147483647i, arg_1.a.d.x), var_1.c, vec4<i32>(u_input.b, arg_1.a.d.x, -9664i, arg_2.b)))), func_1(Struct_3(Struct_1(false, var_0.b), var_1.b, vec4<i32>(arg_1.b, -23874i, -2147483647i, var_0.b), false, var_1.e), abs(vec3<u32>(arg_0.x, 4294967295u, 71154u)), func_5(Struct_3(global3[_wgslsmith_index_u32(4294967295u, 18u)], vec2<bool>(arg_2.a, true), var_1.c, arg_2.a, vec3<i32>(u_input.a, arg_2.b, 1i)), arg_1.a, arg_1.a).a, ~vec3<u32>(u_input.c, u_input.c, 4294967295u)).c && any(var_1.b), var_1.e));
    let var_3 = var_2.a.b.x;
    global3 = array<Struct_1, 18>();
    return var_2.a.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 18>();
    var var_0 = true;
    global0 = ~vec3<u32>(u_input.c, global0.x, global0.x);
    var var_1 = Struct_4(vec2<u32>(65670u, ~u_input.c), vec3<bool>(true, !all(vec2<bool>(false, true)) == false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(909f)) - _wgslsmith_f_op_f32(f32(-1f) * -595f)) == _wgslsmith_f_op_f32(func_8(max(vec3<u32>(global0.x, 4294967295u, u_input.c), vec3<u32>(u_input.c, u_input.c, global0.x)), func_1(Struct_3(global3[_wgslsmith_index_u32(u_input.c, 18u)], vec2<bool>(false, true), vec4<i32>(u_input.b, 0i, u_input.b, 2147483647i), false, vec3<i32>(-1i, u_input.b, -3177i)), vec3<u32>(global0.x, 74066u, global0.x), Struct_2(vec2<f32>(-628f, -850f), vec4<u32>(global0.x, 69515u, 27178u, 0u), global3[_wgslsmith_index_u32(3048u, 18u)], vec2<i32>(u_input.a, u_input.a)), vec3<u32>(1u, 4294967295u, global0.x)), func_7(u_input.a, global3[_wgslsmith_index_u32(4294967295u, 18u)], vec4<i32>(-19408i, 0i, u_input.b, -1i), Struct_3(global3[_wgslsmith_index_u32(13519u, 18u)], vec2<bool>(true, true), vec4<i32>(u_input.a, u_input.a, 39547i, u_input.a), true, vec3<i32>(u_input.b, 2147483647i, u_input.a))).a.c))), u_input.b, global3[_wgslsmith_index_u32(abs(1u), 18u)], func_7(-2147483647i, global3[_wgslsmith_index_u32(max(global0.x, 1u & u_input.c), 18u)], _wgslsmith_clamp_vec4_i32(vec4<i32>(~1i, i32(-1i) * -1i, -10986i, u_input.a >> (global0.x % 32u)), reverseBits(vec4<i32>(u_input.a, -39416i, u_input.b, 6011i)), abs(-vec4<i32>(2147483647i, u_input.b, 0i, 22196i))), func_2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1310f, -1000f, -2006f, -162f))), vec3<f32>(419f, -776f, _wgslsmith_f_op_f32(f32(-1f) * -1704f)), true)).a);
    var var_2 = -var_1.c;
    let var_3 = vec4<i32>(1i, 2147483647i, u_input.a & 7699i, 1i);
    var var_4 = func_7(func_6(false, func_7(_wgslsmith_dot_vec2_i32(abs(var_1.e.d), ~var_3.yx), func_1(Struct_3(Struct_1(var_1.d.a, var_3.x), vec2<bool>(var_1.d.a, true), var_3, false, vec3<i32>(0i, u_input.b, -2147483647i)), vec3<u32>(global0.x, var_1.e.b.x, 36598u) | var_1.e.b.yzw, Struct_2(var_1.e.a, vec4<u32>(4721u, 0u, global0.x, 24247u), Struct_1(var_1.e.c.a, var_3.x), vec2<i32>(-1i, 2147483647i)), var_1.e.b.zwy).a.c, abs(var_3), Struct_3(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, 0u, u_input.c), 18u)], var_1.b.zz, func_3(Struct_4(var_1.a, vec3<bool>(var_1.b.x, var_1.b.x, var_1.b.x), u_input.b, var_1.e.c, Struct_2(var_1.e.a, var_1.e.b, Struct_1(var_1.e.c.a, var_1.c), var_1.e.d)), vec2<bool>(true, false), Struct_5(var_1.e, 18022i, var_1.d.a)), var_1.e.c.a, var_3.zxy)), vec3<bool>(false, true, false)).b, Struct_1(true || !func_1(Struct_3(var_1.d, vec2<bool>(true, var_1.e.c.a), var_3, var_1.e.c.a, var_3.wzw), var_1.e.b.zyw, var_1.e, vec3<u32>(4294967295u, 15312u, global0.x)).a.c.a, _wgslsmith_mod_i32(max(-var_1.c, max(-1i, var_3.x)), -_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1167i, 1i), vec3<i32>(var_1.e.c.b, -2147483647i, var_3.x)))), -min(var_3, vec4<i32>(var_3.x, ~(-1i), u_input.b, -2147483647i)), Struct_3(func_5(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1163f, -265f, var_1.e.a.x, var_1.e.a.x)), vec3<f32>(654f, var_1.e.a.x, var_1.e.a.x), var_1.d.a), var_1.e, Struct_2(_wgslsmith_f_op_vec2_f32(floor(var_1.e.a)), ~var_1.e.b, var_1.d, vec2<i32>(u_input.b, 18175i))).a.c, !func_2(vec4<f32>(1578f, var_1.e.a.x, var_1.e.a.x, 2100f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.e.a.x, var_1.e.a.x, -218f), vec3<f32>(var_1.e.a.x, var_1.e.a.x, 1748f))), var_1.d.a).b, _wgslsmith_div_vec4_i32(var_3, vec4<i32>(1i, -u_input.b, ~26330i, u_input.b)), !(!(!var_1.d.a)), ~vec3<i32>(31421i, 20064i, var_1.d.b) << (~var_1.e.b.wxx % vec3<u32>(32u)))).a;
    var var_5 = Struct_5(Struct_2(_wgslsmith_f_op_vec2_f32(-var_1.e.a), abs(var_1.e.b), global3[_wgslsmith_index_u32(countOneBits(global0.x), 18u)], vec2<i32>(-1i) * -(~vec2<i32>(var_4.d.x, 44736i))), -1i ^ var_4.d.x, var_1.b.x);
    let var_6 = _wgslsmith_mod_i32(i32(-1i) * -60388i, -var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(56583i);
}

