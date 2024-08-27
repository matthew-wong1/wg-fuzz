struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<bool, 17> = array<bool, 17>(false, false, true, false, false, false, false, false, false, true, true, false, true, true, false, false, false);

var<private> global2: array<bool, 26>;

var<private> global3: array<u32, 14>;

var<private> global4: Struct_1 = Struct_1(5875u, vec4<i32>(-901i, -39802i, -17705i, -60973i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> u32 {
    var var_0 = !vec2<bool>(all(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 17u)], any(vec2<bool>(false, global1[_wgslsmith_index_u32(78134u, 17u)])), true)), !global1[_wgslsmith_index_u32(16391u, 17u)]);
    let var_1 = Struct_1(~abs(firstLeadingBit(global4.a)), _wgslsmith_mod_vec4_i32(firstLeadingBit(reverseBits(_wgslsmith_mult_vec4_i32(global4.b, global4.b))), u_input.a));
    let var_2 = Struct_4(Struct_2(var_1, _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(global0.x * -1000f))), global4.b.x, var_1), var_1, Struct_2(var_1, global0.x, 39824i, Struct_1(23081u, ~vec4<i32>(-2147483647i, u_input.b, 1i, var_1.b.x))));
    var var_3 = ~abs(~vec2<u32>(17983u, u_input.c));
    global4 = Struct_1(82558u, -vec4<i32>(firstTrailingBit(u_input.d.x), 1i, ~var_1.b.x, var_1.b.x));
    return abs(0u);
}

fn func_2(arg_0: Struct_4) -> vec4<f32> {
    let var_0 = ~global3[_wgslsmith_index_u32(1u >> (~(~global4.a) % 32u), 14u)];
    let var_1 = 0u;
    var var_2 = arg_0;
    var var_3 = var_0 >> (func_3() % 32u);
    let var_4 = Struct_1(global3[_wgslsmith_index_u32(1u, 14u)], vec4<i32>(u_input.d.x, ~(~(-6164i) | select(arg_0.c.a.b.x, global4.b.x, true)), i32(-1i) * -2147483647i, _wgslsmith_mod_i32(-2147483647i, ~(~1395i))));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(1782f, arg_0.a.b, global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(616f, -1048f, global1[_wgslsmith_index_u32(global4.a, 17u)])))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(665f, -209f)))));
}

fn func_1(arg_0: vec3<bool>) -> Struct_2 {
    var var_0 = global1[_wgslsmith_index_u32(41772u, 17u)];
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 640f, 1206f)) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-105f, global0.x, global0.x, 212f)))) * vec4<f32>(_wgslsmith_div_f32(-358f, 849f), _wgslsmith_f_op_f32(max(global0.x, global0.x)), _wgslsmith_f_op_f32(select(-1373f, global0.x, false)), _wgslsmith_f_op_f32(round(global0.x))))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -308f, -764f, global0.x) + vec4<f32>(-573f, global0.x, -1186f, global0.x)) + _wgslsmith_div_vec4_f32(vec4<f32>(1041f, -355f, global0.x, global0.x), vec4<f32>(global0.x, global0.x, 311f, global0.x))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_2(Struct_4(Struct_2(Struct_1(0u, u_input.a), global0.x, global4.b.x, Struct_1(u_input.e, vec4<i32>(-2147483647i, global4.b.x, global4.b.x, global4.b.x))), Struct_1(u_input.c, u_input.a), Struct_2(Struct_1(4294967295u, vec4<i32>(global4.b.x, u_input.b, 28891i, -2147483647i)), -1364f, -2147483647i, Struct_1(global3[_wgslsmith_index_u32(32823u, 14u)], global4.b)))))))), vec4<f32>(global0.x, _wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_vec4_f32(func_2(Struct_4(Struct_2(Struct_1(u_input.c, u_input.a), -966f, u_input.d.x, Struct_1(u_input.c, u_input.a)), Struct_1(18103u, global4.b), Struct_2(Struct_1(4294967295u, u_input.a), global0.x, u_input.a.x, Struct_1(15866u, vec4<i32>(-1i, 1i, 1i, 1i)))))).x)), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -2357f)))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, global0.x, global0.x, global0.x))))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(294f, -2359f, global0.x, var_1.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, 1137f, 103f))))))));
    var var_2 = Struct_4(Struct_2(Struct_1(104121u, _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d.x, 10574i, global4.b.x, 2147483647i) << (vec4<u32>(global4.a, u_input.e, 4294967295u, 0u) % vec4<u32>(32u)), abs(global4.b))), _wgslsmith_f_op_vec4_f32(func_2(Struct_4(Struct_2(Struct_1(global4.a, vec4<i32>(u_input.a.x, 0i, global4.b.x, 0i)), global0.x, u_input.a.x, Struct_1(global4.a, global4.b)), Struct_1(39877u, u_input.a), Struct_2(Struct_1(65252u, u_input.a), var_1.x, 5266i, Struct_1(global4.a, vec4<i32>(global4.b.x, 18032i, u_input.a.x, 50421i)))))).x, u_input.a.x, Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(37545u, 81465u) << (vec2<u32>(u_input.c, 11031u) % vec2<u32>(32u)), min(vec2<u32>(u_input.c, global4.a), vec2<u32>(u_input.e, 4294967295u))), vec4<i32>(-1i) * -u_input.a)), Struct_1(1u, ~vec4<i32>(abs(u_input.a.x), abs(1i), -33177i, global4.b.x)), Struct_2(Struct_1(u_input.e & ~32900u, _wgslsmith_div_vec4_i32(vec4<i32>(0i, 2147483647i, 0i, -1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d.x, -1026i, u_input.d.x, -25834i), vec4<i32>(u_input.b, global4.b.x, u_input.a.x, u_input.b), vec4<i32>(0i, -1i, global4.b.x, u_input.d.x)))), global0.x, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.d.yx | vec2<i32>(38523i, -1i), vec2<i32>(-2147483647i, u_input.d.x) | vec2<i32>(25060i, global4.b.x)), vec2<i32>(-1i) * -global4.b.xy), Struct_1(~select(0u, 0u, true), firstTrailingBit(global4.b))));
    global1 = array<bool, 17>();
    return Struct_2(var_2.a.d, var_2.a.b, -(i32(-1i) * -32505i), Struct_1(~_wgslsmith_div_u32(func_3(), _wgslsmith_mod_u32(global4.a, var_2.c.d.a)), u_input.a));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3) -> Struct_2 {
    global1 = array<bool, 17>();
    let var_0 = true;
    var var_1 = Struct_2(Struct_1(~(~select(global4.a, arg_0.x, false)), abs(~vec4<i32>(2147483647i, global4.b.x, arg_1.a.d.b.x, arg_1.a.a.b.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.x), 1335f)), -_wgslsmith_div_i32(u_input.a.x | (u_input.a.x << (0u % 32u)), global4.b.x), Struct_1(~_wgslsmith_dot_vec3_u32(arg_0.xzz, ~vec3<u32>(arg_1.a.d.a, arg_0.x, global3[_wgslsmith_index_u32(u_input.c, 14u)])), -vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), -2147483647i, ~u_input.a.x, -25631i)));
    var var_2 = 1000f;
    global1 = array<bool, 17>();
    return func_1(vec3<bool>(false, var_0, false));
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: Struct_2) -> f32 {
    let var_0 = func_1(select(select(select(!vec3<bool>(global2[_wgslsmith_index_u32(arg_1, 26u)], global1[_wgslsmith_index_u32(u_input.c, 17u)], global1[_wgslsmith_index_u32(17150u, 17u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(arg_1, 17u)], global2[_wgslsmith_index_u32(global4.a, 26u)]), !vec3<bool>(global2[_wgslsmith_index_u32(0u, 26u)], global2[_wgslsmith_index_u32(u_input.e, 26u)], false)), !(!vec3<bool>(global2[_wgslsmith_index_u32(arg_1, 26u)], global2[_wgslsmith_index_u32(global4.a, 26u)], false)), !select(vec3<bool>(false, global1[_wgslsmith_index_u32(15456u, 17u)], global1[_wgslsmith_index_u32(global4.a, 17u)]), vec3<bool>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(29134u, 14u)], 14u)], 14u)], 26u)], global2[_wgslsmith_index_u32(18114u, 26u)], true), vec3<bool>(global1[_wgslsmith_index_u32(global4.a, 17u)], false, true))), !(!(!vec3<bool>(false, true, global1[_wgslsmith_index_u32(global4.a, 17u)]))), !(!select(vec3<bool>(true, true, global1[_wgslsmith_index_u32(global4.a, 17u)]), vec3<bool>(true, false, false), vec3<bool>(global2[_wgslsmith_index_u32(10754u, 26u)], global2[_wgslsmith_index_u32(4294967295u, 26u)], true)))));
    global4 = func_4(vec4<u32>(u_input.c, _wgslsmith_sub_u32(u_input.e, firstLeadingBit(u_input.e)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(10887u, global4.a, 1u), vec3<u32>(var_0.a.a, global4.a, arg_1)), ~u_input.e) & vec4<u32>(_wgslsmith_mod_u32(90268u, ~36550u), func_3() | _wgslsmith_mod_u32(global4.a, 49053u), global3[_wgslsmith_index_u32(~firstLeadingBit(64502u), 14u)], abs(var_0.a.a) & (45857u | u_input.c)), Struct_3(var_0)).d;
    global0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(545f, _wgslsmith_f_op_f32(-var_0.b), -227f)));
    global0 = vec3<f32>(func_4(vec4<u32>(var_0.d.a, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(29836u, u_input.e, 4294967295u), vec3<u32>(arg_2.a.a, 7482u, 19760u)), _wgslsmith_mult_vec3_u32(vec3<u32>(8225u, 21391u, 1u), vec3<u32>(arg_1, 0u, arg_1))), ~_wgslsmith_add_u32(u_input.c, 75351u), func_4(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.e, 4587u, arg_2.d.a, 4294967295u), vec4<u32>(arg_2.d.a, 0u, 1u, 0u)), Struct_3(Struct_2(Struct_1(8728u, vec4<i32>(arg_2.d.b.x, var_0.d.b.x, u_input.d.x, 19393i)), arg_2.b, var_0.a.b.x, var_0.a))).a.a), Struct_3(func_4(vec4<u32>(global3[_wgslsmith_index_u32(1u, 14u)], u_input.e, u_input.c, arg_2.a.a), Struct_3(Struct_2(var_0.a, -554f, -2147483647i, Struct_1(70905u, vec4<i32>(-41034i, global4.b.x, -1i, global4.b.x))))))).b, -1392f, _wgslsmith_f_op_f32(-404f + _wgslsmith_f_op_f32(arg_2.b - arg_2.b)));
    global3 = array<u32, 14>();
    return _wgslsmith_f_op_f32(-1679f + var_0.b);
}

fn func_6(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = arg_2.a.b.x;
    var_0 = reverseBits(arg_2.d.b.x & ~15713i);
    var var_1 = Struct_4(Struct_2(arg_2.d, _wgslsmith_f_op_f32(global0.x * arg_2.b), u_input.b, Struct_1(global3[_wgslsmith_index_u32(8802u, 14u)], func_1(!vec3<bool>(global2[_wgslsmith_index_u32(1u, 26u)], global1[_wgslsmith_index_u32(arg_2.d.a, 17u)], true)).a.b)), arg_2.d, Struct_2(arg_2.a, -326f, ~(-1i), func_1(select(vec3<bool>(false, true, global2[_wgslsmith_index_u32(59325u, 26u)]), select(vec3<bool>(false, true, global1[_wgslsmith_index_u32(83143u, 17u)]), vec3<bool>(true, false, global1[_wgslsmith_index_u32(14602u, 17u)]), arg_1.x), true)).a));
    global3 = array<u32, 14>();
    return Struct_1(_wgslsmith_add_u32(~0u, ~(~11804u) ^ var_1.b.a), select(~func_1(vec3<bool>(true, true, true)).d.b, _wgslsmith_add_vec4_i32(vec4<i32>(1i & u_input.d.x, ~0i, 7232i, firstLeadingBit(0i)), min(u_input.a, vec4<i32>(global4.b.x, -7141i, u_input.b, var_1.c.c))), true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 17>();
    let var_0 = any(!(!(!select(vec4<bool>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 14u)], 17u)], false, global2[_wgslsmith_index_u32(46390u, 26u)], global1[_wgslsmith_index_u32(global4.a, 17u)]), vec4<bool>(global2[_wgslsmith_index_u32(122287u, 26u)], true, global2[_wgslsmith_index_u32(global4.a, 26u)], true), vec4<bool>(true, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(31383u, 14u)], 17u)], global2[_wgslsmith_index_u32(0u, 26u)], global2[_wgslsmith_index_u32(66927u, 26u)])))));
    global3 = array<u32, 14>();
    let var_1 = func_6(_wgslsmith_f_op_f32(func_5(~(-1i), _wgslsmith_sub_u32(~u_input.c, select(~u_input.c, 1u, global4.a <= 20795u)), func_4(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 10382u, global4.a, 4294967295u), abs(vec4<u32>(u_input.e, 68u, global4.a, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(5474u, 14u)], 14u)], 14u)]))), Struct_3(func_1(vec3<bool>(false, var_0, global1[_wgslsmith_index_u32(u_input.c, 17u)])))))), select(vec2<bool>(var_0 || !global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 14u)], 17u)], func_4(vec4<u32>(u_input.c, global3[_wgslsmith_index_u32(0u, 14u)], 9920u, global3[_wgslsmith_index_u32(4576u, 14u)]), Struct_3(Struct_2(Struct_1(1u, global4.b), -955f, -2147483647i, Struct_1(4294967295u, global4.b)))).a.b.x == func_1(vec3<bool>(global2[_wgslsmith_index_u32(55337u, 26u)], var_0, var_0)).d.b.x), !(!vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 26u)], true)), vec2<bool>((true == global2[_wgslsmith_index_u32(global4.a, 26u)]) & global1[_wgslsmith_index_u32(firstTrailingBit(global4.a), 17u)], true)), Struct_2(Struct_1(global4.a, ~(vec4<i32>(u_input.a.x, -2147483647i, -1i, 23331i) >> (vec4<u32>(global4.a, global4.a, 17085u, 9736u) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2(Struct_4(Struct_2(Struct_1(global4.a, u_input.a), -1000f, u_input.d.x, Struct_1(23490u, vec4<i32>(u_input.a.x, -12428i, 588i, -9614i))), Struct_1(u_input.c, vec4<i32>(u_input.b, 1i, -2147483647i, global4.b.x)), Struct_2(Struct_1(global3[_wgslsmith_index_u32(global4.a, 14u)], global4.b), global0.x, -1i, Struct_1(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(25803u, 14u)], 14u)], vec4<i32>(u_input.a.x, 5579i, u_input.d.x, global4.b.x)))))).x), 1i, Struct_1(46412u, ~(global4.b & vec4<i32>(-26719i, 2147483647i, global4.b.x, global4.b.x)))));
    global2 = array<bool, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(select(~var_1.a | select(u_input.e, var_1.a, false), func_3() | 1u, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(82257u, 0u, 39530u) ^ vec3<u32>(0u, global3[_wgslsmith_index_u32(0u, 14u)], u_input.c), vec3<u32>(73186u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(32177u, 14u)], 14u)], 65690u) << (vec3<u32>(global4.a, var_1.a, global3[_wgslsmith_index_u32(9234u, 14u)]) % vec3<u32>(32u))), var_1.a), 26u)]), _wgslsmith_mult_i32(-2147483647i, var_1.b.x), vec4<i32>(_wgslsmith_clamp_i32(func_4(vec4<u32>(u_input.e, 44810u, 1u, var_1.a), Struct_3(Struct_2(Struct_1(49293u, var_1.b), global0.x, u_input.b, var_1))).c | 0i, select(global4.b.x, u_input.b, false), var_1.b.x), ~var_1.b.x, u_input.a.x, firstLeadingBit(-14441i)), vec3<i32>(u_input.d.x, -var_1.b.x, firstLeadingBit(i32(-1i) * -22114i)), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-529f, -1213f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(0i, global3[_wgslsmith_index_u32(4294967295u, 14u)], Struct_2(Struct_1(var_1.a, u_input.a), 1086f, u_input.b, Struct_1(global3[_wgslsmith_index_u32(4524u, 14u)], u_input.a))))))));
}

