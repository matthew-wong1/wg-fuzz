struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec3<i32>,
    d: f32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28>;

var<private> global1: array<vec3<i32>, 23>;

var<private> global2: vec4<u32>;

var<private> global3: array<u32, 7> = array<u32, 7>(5245u, 1u, 11857u, 0u, 4294967295u, 1u, 25920u);

var<private> global4: vec4<i32>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1(arg_0: Struct_3) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1730f, 346f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 28u)] + 879f)), -1641f))));
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(2813f, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 7u)], 28u)], -542f), vec3<f32>(-670f, -225f, 599f))) * vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(23145u, 28u)]), _wgslsmith_f_op_f32(abs(-909f)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c.x, 96664u), 28u)])))));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: i32) -> vec4<bool> {
    var var_0 = Struct_3(any(vec3<bool>(true, !arg_2.a.x, false)));
    global1 = array<vec3<i32>, 23>();
    var var_1 = arg_2;
    let var_2 = _wgslsmith_f_op_f32(221f + global0[_wgslsmith_index_u32(abs(abs(~u_input.b.x)), 28u)]);
    var var_3 = _wgslsmith_div_f32(-1364f, -381f);
    return !var_1.a;
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: u32) -> f32 {
    var var_0 = _wgslsmith_mod_i32(global4.x, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(-44833i, global4.x) | -13568i, arg_1.a.x << (arg_2.x % 32u), reverseBits(arg_1.a.x), -11894i), vec4<i32>(-arg_1.c.c.x, _wgslsmith_sub_i32(i32(-1i) * -8949i, _wgslsmith_mult_i32(32653i, u_input.d.x)), i32(-1i) * -2147483647i, -3293i)));
    var var_1 = arg_1.c.a.x;
    let var_2 = arg_1;
    let var_3 = !arg_1.c.a.x;
    var var_4 = -618f;
    return global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~var_2.c.b, min(u_input.b.x, var_2.c.b)), 28u)];
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: f32, arg_3: vec4<u32>) -> Struct_2 {
    let var_0 = select(select(vec3<bool>(false, any(vec4<bool>(true, false, true, false)), false), vec3<bool>(!(!arg_0.x), arg_0.x, arg_0.x), !(!func_2(vec2<f32>(1862f, global0[_wgslsmith_index_u32(arg_3.x, 28u)]), vec4<i32>(global4.x, 69599i, -1i, 2147483647i), Struct_1(vec4<bool>(arg_1.c.a.x, arg_1.d.x, false, true), global3[_wgslsmith_index_u32(1u, 7u)], vec3<i32>(global4.x, 39968i, 14779i), arg_1.b, vec3<i32>(-50438i, arg_1.a.x, arg_1.c.c.x)), u_input.d.x).wzz)), vec3<bool>(true, true, false), select(func_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(21885u, 28u)], global0[_wgslsmith_index_u32(0u, 28u)]) * vec2<f32>(arg_1.c.d, 231f)))), vec4<i32>(arg_1.a.x >> (4294967295u % 32u), global4.x, 1i, -global4.x), Struct_1(select(vec4<bool>(true, arg_0.x, arg_1.c.a.x, arg_1.c.a.x), vec4<bool>(arg_1.d.x, true, arg_1.d.x, false), arg_1.c.a.x), max(23782u, 4294967295u), min(vec3<i32>(-1670i, arg_1.c.c.x, -28200i), global4.wyw), -2243f, global1[_wgslsmith_index_u32(1u, 23u)]), u_input.d.x).zxx, vec3<bool>(false, !(arg_0.x || arg_1.c.a.x), true), arg_0.x));
    var var_1 = arg_1.c;
    let var_2 = (reverseBits(reverseBits(global4.x) ^ -1i) >> (_wgslsmith_clamp_u32(u_input.e.x, global2.x, arg_3.x) % 32u)) | _wgslsmith_sub_i32(reverseBits(reverseBits(_wgslsmith_div_i32(2147483647i, global4.x))), select(1i, 1i, true) | (countOneBits(16211i) << ((4294967295u & arg_3.x) % 32u)));
    global1 = array<vec3<i32>, 23>();
    var var_3 = arg_1;
    return arg_1;
}

fn func_5(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = Struct_2(select(~vec2<i32>(global4.x, u_input.a), arg_2.a, false), _wgslsmith_f_op_f32(sign(arg_2.b)), arg_2.c, !(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 28u)] <= -307f, true, all(arg_2.d.xyw), false)));
    return func_4(func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_0.yz)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.b, arg_2.b))))), abs(select(vec4<i32>(0i, 1i, u_input.d.x, 2147483647i), vec4<i32>(2147483647i, global4.x, -1i, var_0.c.e.x), var_0.d)) << (~(~vec4<u32>(47747u, u_input.b.x, 87837u, 4294967295u)) % vec4<u32>(32u)), func_4(!(!vec4<bool>(true, arg_2.c.a.x, true, false)), func_4(!vec4<bool>(var_0.d.x, true, var_0.d.x, arg_1.x), arg_2, -1000f, vec4<u32>(global2.x, 0u, 31485u, var_0.c.b) ^ vec4<u32>(4294967295u, 1u, arg_2.c.b, global3[_wgslsmith_index_u32(arg_2.c.b, 7u)])), arg_0.x, vec4<u32>(u_input.e.x, global3[_wgslsmith_index_u32(8235u, 7u)], 51464u, 55135u)).c, 1i), Struct_2(_wgslsmith_add_vec2_i32(vec2<i32>(-46013i, max(u_input.a, -2147483647i)), -firstTrailingBit(vec2<i32>(-2147483647i, var_0.a.x))), arg_2.c.d, Struct_1(!(!vec4<bool>(true, false, arg_1.x, var_0.d.x)), u_input.b.x, vec3<i32>(reverseBits(arg_2.a.x), u_input.a & u_input.a, 2147483647i), global0[_wgslsmith_index_u32(~arg_2.c.b, 28u)], select(-vec3<i32>(var_0.a.x, var_0.a.x, 12263i), ~vec3<i32>(var_0.c.c.x, var_0.c.e.x, arg_2.c.e.x), arg_1.wyy)), vec4<bool>(all(vec3<bool>(var_0.d.x, var_0.c.a.x, arg_2.d.x)), all(select(arg_1.yx, vec2<bool>(false, arg_2.d.x), false)), all(vec4<bool>(false, arg_1.x, true, arg_1.x)), arg_1.x)), _wgslsmith_f_op_f32(min(-416f, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_2.c.d, arg_2.b, 775f, global0[_wgslsmith_index_u32(73659u, 28u)]))))), func_4(!vec4<bool>(true, arg_1.x, arg_2.c.a.x, var_0.c.a.x), Struct_2(vec2<i32>(arg_2.c.e.x, global4.x), -1396f, var_0.c, arg_2.d), var_0.c.d, vec4<u32>(arg_2.c.b, global2.x, arg_2.c.b, 15687u)), global2.zyx, arg_2.c.b)))), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.c.x, 7903u), _wgslsmith_div_u32(arg_2.c.b, 3719u)), 91801u << (min(arg_2.c.b, 7560u) % 32u), ~(4294967295u >> (0u % 32u))), vec4<u32>(78024u, arg_2.c.b, 1u, var_0.c.b)));
}

fn func_6(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = arg_0.c.a.zz;
    var var_1 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-arg_2))) + arg_2), _wgslsmith_add_vec4_i32(~(~(-vec4<i32>(-2147483647i, -33085i, 1i, 30466i))), countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.c.c.x, 1i, 1i, 22879i), -vec4<i32>(global4.x, u_input.d.x, 2147483647i, 20749i)))), arg_0.c, arg_0.a.x).x;
    global3 = array<u32, 7>();
    let var_2 = firstLeadingBit(global2.zx);
    let var_3 = false;
    return func_5(vec3<f32>(global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(24105u, ~4294967295u), 28u)], -495f, global0[_wgslsmith_index_u32(func_5(vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 28u)] * -234f), _wgslsmith_f_op_f32(-arg_0.b), arg_0.b), select(func_2(vec2<f32>(arg_0.c.d, global0[_wgslsmith_index_u32(global2.x, 28u)]), vec4<i32>(arg_0.c.e.x, -48244i, u_input.a, u_input.a), Struct_1(arg_1, 19539u, vec3<i32>(u_input.d.x, -20456i, 0i), arg_0.c.d, u_input.d), u_input.d.x), !vec4<bool>(arg_1.x, false, false, false), !vec4<bool>(true, true, arg_1.x, true)), func_4(vec4<bool>(var_3, false, var_0.x, arg_1.x), Struct_2(vec2<i32>(22125i, 4347i), arg_2.x, Struct_1(vec4<bool>(false, true, arg_0.d.x, arg_0.d.x), global3[_wgslsmith_index_u32(42005u, 7u)], global4.xwy, -660f, u_input.d), arg_0.c.a), 1569f, _wgslsmith_add_vec4_u32(vec4<u32>(global2.x, 32678u, u_input.e.x, 1u), vec4<u32>(52386u, 0u, 1u, var_2.x)))).c.b, 28u)]), vec4<bool>(false, var_0.x, false || var_3, var_0.x), func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-190f, arg_0.b, -516f) + vec3<f32>(853f, 143f, 1000f))))), vec4<bool>(_wgslsmith_mod_i32(66255i, -40332i) < arg_0.a.x, !var_3, false, func_4(arg_0.d, arg_0, arg_2.x, countOneBits(vec4<u32>(var_2.x, arg_0.c.b, global3[_wgslsmith_index_u32(var_2.x, 7u)], var_2.x))).d.x), func_4(vec4<bool>(any(vec4<bool>(true, arg_0.c.a.x, var_0.x, arg_1.x)), all(vec4<bool>(var_0.x, var_0.x, true, arg_0.d.x)), func_2(vec2<f32>(arg_0.b, arg_0.b), vec4<i32>(arg_0.c.e.x, 2147483647i, 2147483647i, -1i), Struct_1(arg_1, 66286u, vec3<i32>(2147483647i, 0i, arg_0.c.c.x), global0[_wgslsmith_index_u32(var_2.x, 28u)], vec3<i32>(-39282i, global4.x, arg_0.c.e.x)), arg_0.a.x).x, arg_0.c.a.x), arg_0, _wgslsmith_f_op_f32(arg_0.c.d * -460f), vec4<u32>(min(global3[_wgslsmith_index_u32(u_input.e.x, 7u)], 4294967295u), firstTrailingBit(global2.x), abs(var_2.x), ~global3[_wgslsmith_index_u32(1u, 7u)])))).c;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 23>();
    var var_0 = func_6(func_5(_wgslsmith_f_op_vec3_f32(func_1(Struct_3(true))), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), u_input.c.x >= global3[_wgslsmith_index_u32(global2.x, 7u)]), func_4(select(func_2(vec2<f32>(451f, global0[_wgslsmith_index_u32(25252u, 28u)]), vec4<i32>(22781i, 1i, 2147483647i, global4.x), Struct_1(vec4<bool>(true, true, false, true), 1u, global1[_wgslsmith_index_u32(global2.x, 23u)], 260f, vec3<i32>(global4.x, -2147483647i, global4.x)), -44265i), vec4<bool>(false, true, false, true), -1761f != global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(47467u, 7u)], 28u)]), Struct_2(_wgslsmith_div_vec2_i32(u_input.d.xz, vec2<i32>(43174i, -1i)), -1071f, Struct_1(vec4<bool>(false, true, true, true), global3[_wgslsmith_index_u32(global2.x, 7u)], vec3<i32>(2147483647i, global4.x, global4.x), -1017f, vec3<i32>(global4.x, -6191i, global4.x)), func_2(vec2<f32>(global0[_wgslsmith_index_u32(1u, 28u)], 324f), vec4<i32>(0i, global4.x, u_input.a, u_input.a), Struct_1(vec4<bool>(true, true, true, false), global3[_wgslsmith_index_u32(76643u, 7u)], global4.zyx, global0[_wgslsmith_index_u32(12144u, 28u)], global1[_wgslsmith_index_u32(0u, 23u)]), global4.x)), _wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(0u, 28u)], 2192f, global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(4294967295u, 28u)]), vec4<f32>(global0[_wgslsmith_index_u32(u_input.e.x, 28u)], 659f, -1000f, -253f)), Struct_2(vec2<i32>(u_input.d.x, u_input.a), global0[_wgslsmith_index_u32(global2.x, 28u)], Struct_1(vec4<bool>(false, false, true, true), 4294967295u, u_input.d, 539f, global1[_wgslsmith_index_u32(24467u, 23u)]), vec4<bool>(true, false, true, false)), ~u_input.c, u_input.b.x)), vec4<u32>(~0u, _wgslsmith_clamp_u32(global2.x, global2.x, 0u), firstLeadingBit(global2.x), ~11747u))), vec4<bool>(~_wgslsmith_sub_i32(2147483647i, u_input.a) >= 53406i, 6617i < global4.x, true, all(!func_5(vec3<f32>(-1720f, -989f, global0[_wgslsmith_index_u32(global2.x, 28u)]), vec4<bool>(false, true, false, false), Struct_2(vec2<i32>(-1148i, global4.x), global0[_wgslsmith_index_u32(0u, 28u)], Struct_1(vec4<bool>(true, false, true, true), 1u, vec3<i32>(-27599i, global4.x, u_input.a), -362f, vec3<i32>(-18782i, -2147483647i, -35574i)), vec4<bool>(false, true, false, true))).d)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) + vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 28u)] + global0[_wgslsmith_index_u32(0u, 28u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 7u)], 28u)] + -1261f))))));
    let var_1 = func_5(_wgslsmith_div_vec3_f32(vec3<f32>(func_4(func_6(Struct_2(vec2<i32>(0i, 1i), var_0.d, Struct_1(var_0.a, 10262u, var_0.e, global0[_wgslsmith_index_u32(var_0.b, 28u)], global1[_wgslsmith_index_u32(1u, 23u)]), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, true)), var_0.a, vec2<f32>(global0[_wgslsmith_index_u32(22746u, 28u)], 1249f)).a, func_5(vec3<f32>(-179f, global0[_wgslsmith_index_u32(u_input.e.x, 28u)], global0[_wgslsmith_index_u32(u_input.c.x, 28u)]), vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x), Struct_2(u_input.d.xx, global0[_wgslsmith_index_u32(1u, 28u)], Struct_1(var_0.a, 3098u, vec3<i32>(global4.x, 6828i, -1i), var_0.d, global4.zyz), vec4<bool>(var_0.a.x, true, true, var_0.a.x))), _wgslsmith_f_op_f32(-var_0.d), select(vec4<u32>(var_0.b, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2.x, 7u)], 7u)], 0u, u_input.e.x), vec4<u32>(global3[_wgslsmith_index_u32(u_input.e.x, 7u)], 4294967295u, u_input.c.x, global2.x), false)).c.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(2031f)) * -289f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(20724u, 28u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(2411f)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 28u)] + 1004f), _wgslsmith_f_op_f32(-1492f - -850f)))), vec4<bool>(var_0.a.x, false, all(vec2<bool>(true, false)), !(_wgslsmith_f_op_f32(step(var_0.d, -1421f)) >= var_0.d)), Struct_2(global4.zy, 1027f, func_6(Struct_2(~var_0.c.zz, _wgslsmith_f_op_f32(round(var_0.d)), func_6(Struct_2(vec2<i32>(15304i, u_input.d.x), 255f, Struct_1(vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.a.x), 4294967295u, vec3<i32>(0i, var_0.e.x, global4.x), 300f, vec3<i32>(u_input.d.x, u_input.d.x, -2147483647i)), vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.a.x)), var_0.a, vec2<f32>(-652f, 1186f)), !vec4<bool>(false, true, var_0.a.x, true)), var_0.a, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.d, var_0.d), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d, -1138f)), vec2<bool>(false, var_0.a.x)))), var_0.a));
    var var_2 = var_1.c.a.wxz;
    var var_3 = _wgslsmith_dot_vec2_i32(var_1.c.c.xz, vec2<i32>((~u_input.a << (_wgslsmith_dot_vec3_u32(u_input.c, global2.yyz) % 32u)) | var_0.e.x, _wgslsmith_dot_vec4_i32(abs(~vec4<i32>(global4.x, var_0.e.x, 0i, var_0.c.x)), -_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, -19552i, global4.x, 1i), vec4<i32>(30368i, -2147483647i, 17231i, var_0.e.x)))));
    let var_4 = 158f;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(3121i, _wgslsmith_mult_i32(~_wgslsmith_mult_i32(-1i, global4.x), u_input.d.x), global4.x, 2147483647i), u_input.e.x >> (global3[_wgslsmith_index_u32(firstTrailingBit(abs(global3[_wgslsmith_index_u32(~global2.x, 7u)])), 7u)] % 32u), _wgslsmith_f_op_f32(round(func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, 1282f, -1215f))), var_0.a, func_4(func_5(vec3<f32>(726f, -932f, var_1.c.d), var_0.a, var_1).c.a, func_5(vec3<f32>(var_1.c.d, -263f, 2451f), vec4<bool>(var_1.c.a.x, var_0.a.x, true, var_2.x), Struct_2(vec2<i32>(40358i, var_0.c.x), 1922f, var_1.c, vec4<bool>(var_2.x, var_2.x, var_0.a.x, var_1.c.a.x))), _wgslsmith_f_op_f32(-var_4), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, global3[_wgslsmith_index_u32(1u, 7u)], 4294967295u, 1u), vec4<u32>(var_1.c.b, 0u, 4294967295u, 0u)))).b)));
}

