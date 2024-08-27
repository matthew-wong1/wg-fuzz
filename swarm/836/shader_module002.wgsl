struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32> = array<bool, 32>(true, false, false, false, true, false, true, false, false, false, true, false, true, false, true, false, true, true, true, false, false, false, false, false, false, false, true, true, true, false, true, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_2, arg_3: i32) -> f32 {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(arg_2.b, -659f))))))))));
    var_0 = Struct_2(arg_2.a, var_0.a.x, _wgslsmith_mult_i32(arg_1.c, arg_2.e & (21699i | var_0.e)) & ~min(reverseBits(arg_1.e), ~(-99490i)), countOneBits(vec4<i32>(arg_3 >> (u_input.e % 32u), var_0.c, -u_input.c.x, -4296i) >> (~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 7237u, 0u, u_input.d), vec4<u32>(u_input.e, 13151u, 1u, 1u)) % vec4<u32>(32u))), firstLeadingBit(22994i));
    var var_2 = arg_3;
    var_2 = _wgslsmith_div_i32(~(var_0.e & u_input.c.x), -23201i);
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -736f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-630f * -641f) * _wgslsmith_f_op_f32(sign(-1450f)))), var_1) - 529f);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<i32>) -> f32 {
    global0 = array<bool, 32>();
    global0 = array<bool, 32>();
    var var_0 = vec4<i32>(i32(-1i) * -13556i, ~(-arg_3.x), ~(-_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(arg_2.d.yyz, vec3<i32>(arg_1.d, arg_3.x, arg_3.x)), -35279i)), 15972i);
    var var_1 = Struct_1(!(!(!vec2<bool>(global0[_wgslsmith_index_u32(arg_0.b, 32u)], true))), u_input.e, arg_1.c, -1i);
    global0 = array<bool, 32>();
    return _wgslsmith_f_op_f32(1939f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1501f))), arg_2.b))));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_1 {
    global0 = array<bool, 32>();
    var var_0 = Struct_1(select(!vec2<bool>(arg_0 != global0[_wgslsmith_index_u32(arg_2.b, 32u)], true), arg_1.c.ww, any(select(select(arg_2.a, arg_1.a, false), select(arg_1.a, arg_2.a, arg_2.c.xw), arg_0))), 0u, select(!(!select(vec4<bool>(false, false, arg_0, false), arg_1.c, true)), vec4<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b, 0u, arg_3.x), vec3<u32>(arg_1.b, arg_2.b, u_input.b.x))), 32u)], false, arg_1.a.x), false), ~1i);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1455f, 488f), vec2<f32>(1000f, 636f))))));
    var var_2 = Struct_2(vec3<f32>(-204f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.x, var_1.x)))), _wgslsmith_f_op_f32(func_4(arg_1, Struct_1(select(vec2<bool>(false, global0[_wgslsmith_index_u32(arg_2.b, 32u)]), select(arg_1.a, vec2<bool>(arg_1.a.x, false), false), var_0.c.wy), _wgslsmith_mod_u32(arg_1.b, countOneBits(0u)), !select(vec4<bool>(var_0.a.x, true, var_0.a.x, true), vec4<bool>(global0[_wgslsmith_index_u32(arg_2.b, 32u)], arg_0, arg_2.c.x, true), true), arg_1.d << (arg_3.x % 32u)), Struct_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, 1000f, 1423f), vec3<f32>(900f, 901f, 888f)))), _wgslsmith_f_op_f32(func_3(var_0.c.wyz, Struct_2(vec3<f32>(var_1.x, var_1.x, 905f), var_1.x, -38187i, vec4<i32>(-2147483647i, -1i, -2147483647i, 17538i), var_0.d), Struct_2(vec3<f32>(var_1.x, 378f, var_1.x), 515f, 2147483647i, vec4<i32>(var_0.d, 21737i, arg_2.d, arg_2.d), 0i), -2147483647i)), u_input.a, ~_wgslsmith_div_vec4_i32(vec4<i32>(arg_2.d, -2147483647i, var_0.d, -2147483647i), vec4<i32>(var_0.d, var_0.d, -12156i, arg_2.d)), ~12752i), _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.d, var_0.d, 2147483647i), vec3<i32>(0i, 35508i, 0i), vec3<i32>(arg_1.d, u_input.c.x, 39283i)) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.b, arg_3.x, 21364u), vec3<u32>(20899u, arg_2.b, u_input.b.x), u_input.b) % vec3<u32>(32u)), vec3<i32>(firstLeadingBit(-2147483647i), reverseBits(-46897i), 1i)))), -(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(0i, 1601i, arg_1.d)), ~vec3<i32>(-33251i, -34352i, var_0.d)) >> (57188u % 32u)), _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, arg_1.d << (4651u % 32u), -24312i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_0.d, -10264i, u_input.c.x), vec4<i32>(-6646i, arg_2.d, arg_2.d, -4831i))), countOneBits(vec4<i32>(0i, -1i, arg_1.d, arg_1.d))), abs(_wgslsmith_div_vec4_i32(vec4<i32>(1i, arg_2.d, arg_2.d, arg_1.d) >> (vec4<u32>(arg_2.b, var_0.b, 9632u, 28047u) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(19387i, arg_2.d, -36873i, var_0.d), vec4<i32>(1i, arg_2.d, -1i, arg_1.d))))), -477i);
    global0 = array<bool, 32>();
    return Struct_1(!(!(!select(vec2<bool>(true, arg_1.a.x), var_0.a, false))), ~(1u >> (arg_3.x % 32u)), arg_2.c, countOneBits(var_0.d));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: u32, arg_3: vec3<u32>) -> vec2<u32> {
    global0 = array<bool, 32>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-426f, 264f, false)), 797f, -1000f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(353f, -1494f, 1318f))))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1109f, -587f, -1359f) * vec3<f32>(822f, -543f, -770f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(198f, 1030f, -1000f) - vec3<f32>(545f, 886f, 1714f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), !arg_0.c.zyy)), 1f, arg_0.d, select(max(vec4<i32>(u_input.a, -11708i, arg_0.d, 9598i), -vec4<i32>(arg_0.d, arg_0.d, 5281i, arg_0.d)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, u_input.a, -14569i, arg_0.d), vec4<i32>(-2147483647i, -875i, -2147483647i, 10706i), firstTrailingBit(vec4<i32>(-4527i, u_input.a, u_input.c.x, u_input.c.x))), select(vec4<bool>(arg_0.c.x, true, global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(7931u, 32u)]), arg_0.c, true)) & select(vec4<i32>(reverseBits(u_input.c.x), arg_0.d | 1i, _wgslsmith_sub_i32(u_input.a, -17751i), -27673i), vec4<i32>(u_input.a, 1i, u_input.c.x ^ 1i, u_input.a << (3936u % 32u)), !arg_0.c.x != all(vec4<bool>(global0[_wgslsmith_index_u32(5109u, 32u)], false, true, arg_0.a.x))), 2147483647i);
    global0 = array<bool, 32>();
    let var_1 = Struct_2(var_0.a, -465f, arg_0.d, var_0.d, ~firstTrailingBit(-2147483647i));
    global0 = array<bool, 32>();
    return countOneBits(~(~(~vec2<u32>(4294967295u, 10695u))));
}

fn func_1() -> Struct_1 {
    let var_0 = !global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(max(~vec2<u32>(4294967295u, 1u), _wgslsmith_mult_vec2_u32(u_input.b.yy, vec2<u32>(u_input.e, u_input.e))), func_5(func_2(global0[_wgslsmith_index_u32(1u, 32u)], Struct_1(vec2<bool>(false, true), 62783u, vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global0[_wgslsmith_index_u32(75945u, 32u)]), u_input.c.x), Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(u_input.e, 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)]), 28050u, vec4<bool>(false, true, false, false), -1i), vec2<u32>(73922u, 0u)), u_input.e, u_input.b.x, countOneBits(vec3<u32>(0u, u_input.d, 7291u)))), 55689u), 32u)];
    var var_1 = -639f;
    let var_2 = ~vec4<u32>(firstLeadingBit((u_input.d << (0u % 32u)) | (54928u << (u_input.e % 32u))), ~u_input.b.x, _wgslsmith_sub_u32(41658u, 1u), ~(~u_input.d));
    global0 = array<bool, 32>();
    global0 = array<bool, 32>();
    return func_2(!var_0, func_2(select(true, ~u_input.a != _wgslsmith_add_i32(-22891i, 1i), true), func_2(firstLeadingBit(var_2.x) <= var_2.x, func_2(!var_0, Struct_1(vec2<bool>(true, true), u_input.e, vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)], false), u_input.c.x), func_2(global0[_wgslsmith_index_u32(38461u, 32u)], Struct_1(vec2<bool>(false, true), var_2.x, vec4<bool>(var_0, global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)], var_0), 1i), Struct_1(vec2<bool>(var_0, var_0), 4294967295u, vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(var_2.x, 32u)]), 14821i), var_2.yw), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, var_2.x), u_input.b.yy)), func_2(true, Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 32u)], var_0), var_2.x, vec4<bool>(var_0, global0[_wgslsmith_index_u32(26461u, 32u)], var_0, true), u_input.c.x), func_2(var_0, Struct_1(vec2<bool>(var_0, var_0), u_input.e, vec4<bool>(var_0, false, true, var_0), u_input.c.x), Struct_1(vec2<bool>(false, true), var_2.x, vec4<bool>(true, var_0, global0[_wgslsmith_index_u32(var_2.x, 32u)], true), 0i), u_input.b.zz), countOneBits(var_2.zz)), u_input.b.yy), func_2(true, Struct_1(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 32u)], global0[_wgslsmith_index_u32(16253u, 32u)]), var_2.x | u_input.d, vec4<bool>(var_0, global0[_wgslsmith_index_u32(83302u, 32u)], var_0, var_0), ~u_input.c.x), func_2(false, Struct_1(vec2<bool>(var_0, global0[_wgslsmith_index_u32(1u, 32u)]), 59470u, vec4<bool>(false, false, true, false), u_input.a), func_2(true, Struct_1(vec2<bool>(true, false), var_2.x, vec4<bool>(true, global0[_wgslsmith_index_u32(var_2.x, 32u)], global0[_wgslsmith_index_u32(33553u, 32u)], false), u_input.c.x), Struct_1(vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 32u)]), 69272u, vec4<bool>(global0[_wgslsmith_index_u32(69793u, 32u)], false, true, false), u_input.c.x), vec2<u32>(var_2.x, var_2.x)), u_input.b.xy), ~_wgslsmith_mod_vec2_u32(vec2<u32>(32572u, 17777u), vec2<u32>(var_2.x, var_2.x))), vec2<u32>(var_2.x, ~4294967295u) >> (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(var_2.x, 4294967295u) ^ vec2<u32>(var_2.x, u_input.e)) % vec2<u32>(32u))), Struct_1(!vec2<bool>(any(vec2<bool>(global0[_wgslsmith_index_u32(var_2.x, 32u)], var_0)), select(true, false, global0[_wgslsmith_index_u32(var_2.x, 32u)])), 32534u << (u_input.b.x % 32u), !select(func_2(true, Struct_1(vec2<bool>(true, true), 37933u, vec4<bool>(true, true, var_0, false), u_input.a), Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(var_2.x, 32u)], false), 41814u, vec4<bool>(global0[_wgslsmith_index_u32(0u, 32u)], true, true, false), u_input.c.x), vec2<u32>(0u, 1u)).c, !vec4<bool>(global0[_wgslsmith_index_u32(40141u, 32u)], false, global0[_wgslsmith_index_u32(58643u, 32u)], true), select(vec4<bool>(global0[_wgslsmith_index_u32(39724u, 32u)], global0[_wgslsmith_index_u32(74697u, 32u)], var_0, global0[_wgslsmith_index_u32(u_input.b.x, 32u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.d, 32u)], true, false), false)), countOneBits(-1i & u_input.a)), reverseBits(u_input.b.yz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2147483647i;
    global0 = array<bool, 32>();
    global0 = array<bool, 32>();
    let var_1 = vec2<bool>(global0[_wgslsmith_index_u32(~(~(~u_input.d) << (u_input.d % 32u)), 32u)], !(u_input.a == reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0, 16389i), vec2<i32>(22628i, u_input.a)))));
    global0 = array<bool, 32>();
    let var_2 = ~u_input.e;
    var var_3 = func_1();
    var var_4 = _wgslsmith_dot_vec3_i32(vec3<i32>(~(-2147483647i) << (abs(_wgslsmith_clamp_u32(5133u, 57433u, 1u)) % 32u), u_input.a >> (29749u % 32u), u_input.a), -min(-vec3<i32>(var_0, -2147483647i, u_input.a), (vec3<i32>(20833i, var_3.d, var_0) >> (u_input.b % vec3<u32>(32u))) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(var_3.b, 1u, 0u), vec3<u32>(u_input.d, 0u, u_input.e), vec3<u32>(var_3.b, var_2, 19860u)) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_3.d), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -139f), _wgslsmith_f_op_f32(abs(-1452f)), _wgslsmith_f_op_f32(817f - 650f))))), _wgslsmith_dot_vec3_u32(u_input.b, ~u_input.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1068f - _wgslsmith_f_op_f32(-696f - -457f)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-473f, 882f), _wgslsmith_f_op_f32(-583f - 2139f), false)), _wgslsmith_f_op_f32(step(1315f, -818f)))));
}

