struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec4<u32>,
    d: vec3<u32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec2<bool>(true, false), true, vec4<u32>(24496u, 1u, 0u, 32884u), vec3<u32>(4294967295u, 0u, 4294967295u), 0i), Struct_1(vec2<bool>(true, true), false, vec4<u32>(49807u, 4294967295u, 21854u, 0u), vec3<u32>(4294967295u, 27293u, 1101u), 28135i), Struct_1(vec2<bool>(false, false), true, vec4<u32>(0u, 4294967295u, 4294967295u, 0u), vec3<u32>(1u, 0u, 0u), -15933i), Struct_1(vec2<bool>(true, true), true, vec4<u32>(4294967295u, 1u, 50854u, 1u), vec3<u32>(29953u, 4202u, 52026u), 0i), Struct_1(vec2<bool>(false, false), true, vec4<u32>(0u, 1u, 1u, 4911u), vec3<u32>(4294967295u, 53369u, 4294967295u), 2147483647i), Struct_1(vec2<bool>(true, true), false, vec4<u32>(64968u, 62643u, 16317u, 79351u), vec3<u32>(4294967295u, 1u, 4294967295u), -12205i), Struct_1(vec2<bool>(false, false), true, vec4<u32>(91064u, 103811u, 1u, 21128u), vec3<u32>(1u, 1u, 49926u), 2147483647i));

var<private> global1: array<vec4<bool>, 28> = array<vec4<bool>, 28>(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false));

var<private> global2: Struct_1 = Struct_1(vec2<bool>(false, false), true, vec4<u32>(21757u, 4294967295u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 39060u), i32(-2147483648));

var<private> global3: array<bool, 1>;

var<private> global4: array<Struct_1, 11>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: vec4<i32>) -> vec4<i32> {
    global3 = array<bool, 1>();
    global2 = Struct_1(vec2<bool>(all(global2.a), ~select(1u, 8414u, true) >= arg_0), select(!(global3[_wgslsmith_index_u32(1u << (arg_0 % 32u), 1u)] && true), all(select(select(vec3<bool>(global3[_wgslsmith_index_u32(arg_0, 1u)], global3[_wgslsmith_index_u32(global2.c.x, 1u)], global2.b), vec3<bool>(false, global2.b, false), true), vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 1u)], global2.a.x, true), vec3<bool>(global3[_wgslsmith_index_u32(1u, 1u)], global2.b, global2.b))), true), global2.c ^ vec4<u32>(arg_0, 0u, _wgslsmith_div_u32(abs(4294967295u), 95229u), ~48626u), ~(min(~vec3<u32>(arg_0, 0u, 4294967295u), ~global2.c.wxx) ^ global2.d), _wgslsmith_sub_i32(global2.e, 1i));
    return min(reverseBits(arg_2), ~_wgslsmith_clamp_vec4_i32(-(vec4<i32>(u_input.c, global2.e, 4307i, arg_2.x) << (vec4<u32>(global2.d.x, u_input.d.x, 49310u, 11688u) % vec4<u32>(32u))), arg_2 & vec4<i32>(-1i, u_input.c, arg_2.x, u_input.a), select(arg_2, vec4<i32>(u_input.c, arg_2.x, u_input.c, u_input.c), !global2.a.x)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = global0[_wgslsmith_index_u32(4294967295u, 7u)];
    global0 = array<Struct_1, 7>();
    var var_1 = !arg_1.b;
    var var_2 = -arg_1.e;
    var var_3 = arg_1;
    return vec4<i32>(firstTrailingBit(-33752i), 28386i & -select(arg_0.e, 2147483647i, !var_0.b), _wgslsmith_dot_vec4_i32(~func_3(var_0.c.x, _wgslsmith_f_op_f32(min(-221f, -143f)), countOneBits(vec4<i32>(global2.e, 13717i, -1i, arg_1.e))), ~func_3(2747u, -1261f, abs(vec4<i32>(var_0.e, 16787i, var_0.e, 6212i)))), 93890i);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec2<i32>, arg_3: vec4<i32>) -> vec3<i32> {
    global2 = global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_sub_u32(global2.c.x, ~4294967295u)), 7u)];
    var var_0 = arg_2.x;
    var var_1 = _wgslsmith_f_op_f32(-576f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(260f, -605f))))));
    var_0 = arg_0.e;
    let var_2 = Struct_1(select(vec2<bool>(global3[_wgslsmith_index_u32(countOneBits(abs(u_input.d.x)), 1u)], all(global1[_wgslsmith_index_u32(0u, 28u)])), vec2<bool>(!select(global3[_wgslsmith_index_u32(u_input.b, 1u)], false, true), false), false), any(vec3<bool>(true, true, true)), select(global2.c, global2.c, any(vec2<bool>(false, any(vec3<bool>(true, true, false))))), global2.c.yxy, func_2(global0[_wgslsmith_index_u32(~4294967295u, 7u)], Struct_1(arg_0.a, true, _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.d.x, u_input.d.x, 1u, u_input.d.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.c.x, 29231u, arg_0.d.x, global2.c.x), global2.c, vec4<u32>(arg_0.c.x, u_input.d.x, 0u, global2.c.x))), arg_0.c.wzw, 2147483647i), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_0.c.x), max(select(global2.d.yy, u_input.d, false), countOneBits(vec2<u32>(59137u, 5890u)))), 11u)]).x);
    return arg_3.ywy >> (~(~vec3<u32>(49924u, global2.d.x, _wgslsmith_mult_u32(1u, 4294967295u))) % vec3<u32>(32u));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = -1i;
    var var_1 = firstTrailingBit(0i);
    var var_2 = global2.e;
    var var_3 = _wgslsmith_f_op_f32(arg_0.x - arg_0.x);
    let var_4 = vec4<i32>(arg_1.e, abs(abs(arg_1.e)), arg_1.e ^ ~abs(-arg_1.e), (-min(16404i, -1i) << (_wgslsmith_mod_u32(1u, u_input.b) % 32u)) >> (~arg_3.c.x % 32u));
    return Struct_1(arg_3.a, arg_1.c.x <= (~(~arg_3.d.x) | reverseBits(u_input.d.x)), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(max(arg_3.c << (vec4<u32>(33436u, arg_3.c.x, 52705u, 0u) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(76559u, u_input.b, 0u, 822u))), ~firstLeadingBit(global2.c)), select(arg_1.c, countOneBits(arg_1.c) << (~vec4<u32>(56849u, u_input.d.x, arg_1.d.x, 7869u) % vec4<u32>(32u)), select(!global1[_wgslsmith_index_u32(global2.d.x, 28u)], select(vec4<bool>(false, false, arg_1.a.x, true), vec4<bool>(false, true, true, global3[_wgslsmith_index_u32(arg_3.c.x, 1u)]), vec4<bool>(false, true, global2.a.x, arg_3.a.x)), !global1[_wgslsmith_index_u32(arg_3.c.x, 28u)]))), arg_1.c.wwx, -24971i);
}

fn func_1() -> i32 {
    var var_0 = global2.a;
    let var_1 = func_5(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(104f, -552f)))))), Struct_1(!select(vec2<bool>(false, true), select(vec2<bool>(var_0.x, global2.a.x), vec2<bool>(true, global2.b), vec2<bool>(global2.a.x, true)), !vec2<bool>(global3[_wgslsmith_index_u32(21390u, 1u)], global2.a.x)), !all(!global2.a), ~global2.c, vec3<u32>(16236u, ~42287u, global2.c.x) >> (~countOneBits(vec3<u32>(42601u, global2.c.x, global2.d.x)) % vec3<u32>(32u)), _wgslsmith_mult_i32(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(global2.e, u_input.a, -39511i, global2.e), _wgslsmith_mult_vec4_i32(vec4<i32>(13012i, u_input.c, 0i, 1i), vec4<i32>(u_input.c, -1i, -1i, 0i))))), func_4(Struct_1(vec2<bool>(var_0.x, true), any(vec4<bool>(global2.a.x, true, global2.a.x, global2.b)), _wgslsmith_mult_vec4_u32(global2.c, vec4<u32>(u_input.d.x, u_input.b, 4294967295u, 49616u)), (vec3<u32>(global2.d.x, 4294967295u, global2.c.x) | vec3<u32>(global2.d.x, global2.d.x, global2.d.x)) | global2.c.zxy, 0i << (global2.c.x % 32u)), _wgslsmith_f_op_f32(f32(-1f) * -1061f), -vec2<i32>(100877i, i32(-1i) * -13352i), vec4<i32>(-1i) * -func_2(Struct_1(vec2<bool>(false, false), false, vec4<u32>(4294967295u, 4294967295u, 0u, u_input.d.x), vec3<u32>(global2.d.x, 1u, 35374u), global2.e), Struct_1(global2.a, var_0.x, vec4<u32>(62711u, u_input.b, 20664u, u_input.d.x), global2.d, u_input.a), global4[_wgslsmith_index_u32(global2.c.x, 11u)])), global0[_wgslsmith_index_u32(~10134u, 7u)]);
    global2 = func_5(vec2<f32>(_wgslsmith_f_op_f32(select(-424f, _wgslsmith_f_op_f32(-427f + _wgslsmith_f_op_f32(327f - 567f)), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1135f)) - -458f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(139f + 1226f)))), func_5(vec2<f32>(_wgslsmith_f_op_f32(floor(-166f)), -733f), Struct_1(global2.a, !var_0.x, vec4<u32>(43733u, ~var_1.c.x, ~1u, _wgslsmith_mod_u32(7455u, 97312u)), vec3<u32>(~1u, 927u, 0u), global2.e), vec3<i32>(-global2.e, _wgslsmith_add_i32(min(9314i, 65847i), ~u_input.a), _wgslsmith_add_i32(reverseBits(global2.e), -46005i)), global4[_wgslsmith_index_u32(76031u, 11u)]), func_2(global0[_wgslsmith_index_u32(u_input.d.x, 7u)], Struct_1(var_1.a, !(!global3[_wgslsmith_index_u32(global2.d.x, 1u)]), vec4<u32>(~u_input.d.x, u_input.b, firstLeadingBit(var_1.c.x), max(u_input.b, 1u)), var_1.c.xyz, _wgslsmith_sub_i32(u_input.c, func_3(global2.d.x, -1587f, vec4<i32>(-1i, 1i, -28344i, 1i)).x)), func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-298f, 610f)), global0[_wgslsmith_index_u32(abs(max(0u, 3269u)), 7u)], vec3<i32>(-40446i, _wgslsmith_dot_vec2_i32(vec2<i32>(global2.e, var_1.e), vec2<i32>(0i, var_1.e)), -var_1.e), func_5(vec2<f32>(-1393f, 559f), Struct_1(vec2<bool>(var_1.a.x, var_0.x), global2.a.x, var_1.c, vec3<u32>(u_input.b, global2.d.x, global2.d.x), 0i), countOneBits(vec3<i32>(global2.e, 10552i, global2.e)), global0[_wgslsmith_index_u32(~111938u, 7u)]))).yzx, global4[_wgslsmith_index_u32(select(u_input.d.x, var_1.c.x, !any(vec3<bool>(true, false, true))), 11u)]);
    global3 = array<bool, 1>();
    var_0 = select(select(vec2<bool>(~global2.c.x >= ~var_1.c.x, var_0.x), var_1.a, !(!vec2<bool>(true, var_1.b))), vec2<bool>(false, true), select(vec2<bool>(true, any(vec2<bool>(var_0.x, global3[_wgslsmith_index_u32(1u, 1u)])) | (false && global3[_wgslsmith_index_u32(1u, 1u)])), func_5(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(215f, -271f), vec2<f32>(-1735f, 1468f))))), Struct_1(vec2<bool>(true, true), !var_0.x, min(var_1.c, vec4<u32>(0u, global2.d.x, 1u, var_1.d.x)), select(var_1.c.zww, var_1.d, vec3<bool>(true, var_0.x, var_0.x)), ~44238i), select(firstLeadingBit(vec3<i32>(u_input.a, u_input.a, -1i)), -vec3<i32>(13594i, -2147483647i, var_1.e), !vec3<bool>(global2.a.x, var_0.x, true)), func_5(vec2<f32>(1000f, 324f), func_5(vec2<f32>(-1046f, -326f), global0[_wgslsmith_index_u32(33253u, 7u)], vec3<i32>(global2.e, -2147483647i, 2147483647i), global0[_wgslsmith_index_u32(94234u, 7u)]), vec3<i32>(-1i, -2147483647i, -21160i), global0[_wgslsmith_index_u32(1u, 7u)])).a, func_5(vec2<f32>(1f, 1f), Struct_1(!global2.a, !global2.a.x, global2.c >> (vec4<u32>(u_input.d.x, 4294967295u, u_input.b, global2.d.x) % vec4<u32>(32u)), vec3<u32>(u_input.d.x, u_input.b, var_1.d.x), 1i >> (global2.d.x % 32u)), ~vec3<i32>(global2.e, var_1.e, var_1.e) ^ -vec3<i32>(2147483647i, var_1.e, 2147483647i), func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(943f, 1129f)), var_1, vec3<i32>(global2.e, u_input.a, -17737i), var_1)).a));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -19289i;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_2 = ~(-abs(vec3<i32>(-u_input.a, abs(u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, global2.e), vec2<i32>(-2147483647i, 2147483647i)))));
    var var_3 = global4[_wgslsmith_index_u32(global2.c.x, 11u)];
    var var_4 = ~(~_wgslsmith_dot_vec2_u32(var_3.d.zy, _wgslsmith_div_vec2_u32(vec2<u32>(1744u, 117710u), vec2<u32>(0u, global2.d.x))));
    let var_5 = -_wgslsmith_mod_vec4_i32(-(vec4<i32>(-1i) * -vec4<i32>(-1382i, global2.e, -30837i, -2147483647i)), ~vec4<i32>(func_1(), _wgslsmith_dot_vec2_i32(vec2<i32>(63423i, global2.e), var_2.yy), _wgslsmith_sub_i32(u_input.a, var_2.x), _wgslsmith_add_i32(-1i, 2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, var_1, 152f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, -746f, -1203f, 1344f) + _wgslsmith_div_vec4_f32(vec4<f32>(-3029f, -1801f, var_1, var_1), vec4<f32>(103f, 216f, -1132f, 1973f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(200f, var_1, -1666f, -1108f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, -105f, var_1, -348f) * vec4<f32>(-278f, var_1, 856f, 538f))))), vec3<i32>(min(-firstTrailingBit(var_5.x), -_wgslsmith_div_i32(u_input.a, var_5.x)), func_4(global4[_wgslsmith_index_u32(global2.c.x, 11u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-928f, var_1)) - _wgslsmith_f_op_f32(-var_1)), vec2<i32>(global2.e >> (global2.d.x % 32u), max(-50792i, var_2.x)), _wgslsmith_add_vec4_i32(vec4<i32>(0i, -2200i, 16219i, u_input.c), -var_5)).x, reverseBits(-1i)));
}

