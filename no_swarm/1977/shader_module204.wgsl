struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(2147483647i, -18867i, 33645i);

var<private> global1: vec3<f32> = vec3<f32>(-1000f, -416f, -925f);

var<private> global2: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(1905f, vec4<i32>(46059i, -20620i, -51260i, 0i)), Struct_1(754f, vec4<i32>(-12641i, -66998i, 12650i, 22325i)), Struct_1(-874f, vec4<i32>(6246i, 1i, -443i, -2240i)));

var<private> global3: array<vec4<u32>, 6>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: f32) -> vec4<i32> {
    global1 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -419f), global1.x)))))), _wgslsmith_f_op_f32(-1323f * -2269f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(990f)) - global1.x) * arg_0)));
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-arg_0), min(-vec4<i32>(global0.x, -1i, global0.x, 3245i) << (global3[_wgslsmith_index_u32(u_input.a, 6u)] % vec4<u32>(32u)), vec4<i32>(_wgslsmith_sub_i32(global0.x, global0.x), 1420i, 19500i, global0.x))), min(firstTrailingBit(global3[_wgslsmith_index_u32(u_input.a, 6u)]) << (_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a), global3[_wgslsmith_index_u32(46737u, 6u)]), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 58660u), vec2<u32>(49122u, u_input.a)), 6u)]) % vec4<u32>(32u)), abs(abs(global3[_wgslsmith_index_u32(u_input.a, 6u)]) ^ ~vec4<u32>(u_input.a, u_input.a, 19469u, 0u))), global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(10774u, _wgslsmith_div_u32(u_input.a & u_input.a, ~1u)), 3u)], vec3<bool>(-(global0.x << (35577u % 32u)) == 2147483647i, true, true));
    var var_1 = global2[_wgslsmith_index_u32(abs(~(~2822u)), 3u)];
    let var_2 = var_0.c;
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_2.a, 119f), 1637f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_2.a))))));
    return -var_0.c.b ^ vec4<i32>(_wgslsmith_sub_i32(~global0.x ^ (-29625i ^ var_1.b.x), global0.x), -max(var_1.b.x, global0.x) & -abs(27201i), max(_wgslsmith_add_i32(~(-20332i), min(var_1.b.x, 12675i)), _wgslsmith_sub_i32(1i << (var_0.b.x % 32u), var_2.b.x)), -45000i);
}

fn func_2(arg_0: bool, arg_1: vec4<u32>, arg_2: vec4<u32>, arg_3: u32) -> u32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(global1.x)))), _wgslsmith_mult_vec4_i32(vec4<i32>(39482i, global0.x, -3838i, 1i) | func_3(global1.x), vec4<i32>(~(-2147483647i), global0.x, global0.x, global0.x >> (18357u % 32u)))), ~vec4<u32>(~4294967295u, ~_wgslsmith_add_u32(u_input.a, arg_2.x), u_input.a, arg_3), Struct_1(global1.x, firstTrailingBit(firstLeadingBit(max(vec4<i32>(5826i, global0.x, global0.x, -1i), vec4<i32>(-1i, global0.x, global0.x, global0.x))))), !vec3<bool>(!arg_0, true, global0.x != -27314i));
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, global1.x, 460f), vec3<f32>(-444f, 106f, global1.x), arg_0)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.x, global1.x, 555f), vec3<f32>(var_0.a.a, -390f, 539f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1227f, -1112f, 2529f) - vec3<f32>(-2360f, global1.x, var_0.a.a)))), !select(var_0.d, vec3<bool>(false, arg_0, false), true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.a, -327f, var_0.a.a) + vec3<f32>(global1.x, var_0.a.a, global1.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1378f, global1.x, global1.x))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-170f, var_0.a.a, global1.x) + vec3<f32>(global1.x, global1.x, var_0.c.a))))), vec3<f32>(882f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.a), _wgslsmith_f_op_f32(f32(-1f) * -1326f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.x))))));
    global2 = array<Struct_1, 3>();
    var var_1 = var_0;
    global2 = array<Struct_1, 3>();
    return u_input.a;
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: vec3<bool>) -> u32 {
    let var_0 = Struct_2(global2[_wgslsmith_index_u32(func_2(1u <= (~4294967295u & arg_1), vec4<u32>(1u, ~(arg_1 >> (4294967295u % 32u)), u_input.a, 62165u), vec4<u32>(max(_wgslsmith_mod_u32(arg_1, u_input.a), arg_1), 4294967295u, 61428u, u_input.a), arg_1), 3u)], ~vec4<u32>(~func_2(arg_2.x, vec4<u32>(1u, u_input.a, u_input.a, 4294967295u), global3[_wgslsmith_index_u32(11752u, 6u)], 1u), _wgslsmith_mod_u32(arg_1, ~1u), ~min(arg_1, 1u), 30031u), global2[_wgslsmith_index_u32(u_input.a, 3u)], select(!select(!vec3<bool>(true, arg_2.x, true), arg_2, any(vec2<bool>(arg_0, true))), arg_2, any(arg_2.xx)));
    global3 = array<vec4<u32>, 6>();
    let var_1 = vec4<i32>(select(-19151i, 1i, all(var_0.d)) | (((i32(-1i) * -2147483647i) & var_0.c.b.x) ^ var_0.a.b.x), -1641i, _wgslsmith_add_i32(reverseBits(func_3(728f).x), _wgslsmith_dot_vec2_i32(countOneBits(global0.xz), max(firstLeadingBit(global0.xx), global0.xz))), _wgslsmith_add_i32(-9477i | global0.x, -24461i));
    var var_2 = var_0.c;
    var var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.a, _wgslsmith_f_op_f32(var_2.a - _wgslsmith_f_op_f32(exp2(global1.x))), global1.x, var_0.a.a), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global1.x, global1.x, _wgslsmith_f_op_f32(var_2.a * _wgslsmith_f_op_f32(floor(var_2.a)))));
    return var_0.b.x;
}

fn func_1(arg_0: vec2<f32>) -> vec4<f32> {
    global3 = array<vec4<u32>, 6>();
    global2 = array<Struct_1, 3>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(689f)), -1693f), -1551f))));
    global0 = _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(-(~vec3<i32>(global0.x, global0.x, 2147483647i)), ~(~vec3<i32>(global0.x, 30193i, -24435i))) << ((_wgslsmith_add_vec3_u32(vec3<u32>(37276u, 0u, 4294967295u), vec3<u32>(4294967295u, u_input.a, u_input.a)) | select(vec3<u32>(u_input.a, 17633u, u_input.a) << (vec3<u32>(48682u, u_input.a, u_input.a) % vec3<u32>(32u)), ~vec3<u32>(u_input.a, u_input.a, 1u), vec3<bool>(true, true, true))) % vec3<u32>(32u)), firstTrailingBit(reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(global0.x, global0.x, global0.x), vec3<i32>(global0.x, 2147483647i, global0.x)))) | -(~(vec3<i32>(global0.x, 2147483647i, global0.x) << (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)))));
    var var_1 = firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 40314u, _wgslsmith_sub_u32(u_input.a, 0u)), abs(~vec3<u32>(1u, 28093u, 0u))), func_4(true, max(func_2(true, vec4<u32>(u_input.a, 20025u, u_input.a, u_input.a), global3[_wgslsmith_index_u32(16958u, 6u)], 1u), u_input.a >> (58381u % 32u)), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false)), ~_wgslsmith_clamp_u32(59425u >> (u_input.a % 32u), ~74257u, 1u)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1864f), global1.x, global1.x) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1704f, arg_0.x, global1.x, global1.x)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1813f, global1.x, global1.x, arg_0.x))))), vec4<bool>(true, false, true, false)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, global1.x, -398f, 2110f), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.x, 310f, -1000f, arg_0.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-147f, -2219f, -1000f, global1.x)))))));
}

fn func_5(arg_0: vec4<f32>) -> u32 {
    global2 = array<Struct_1, 3>();
    let var_0 = u_input.a;
    global2 = array<Struct_1, 3>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.x))))) > _wgslsmith_f_op_f32(f32(-1f) * -626f);
    global1 = arg_0.yxw;
    return 1u;
}

fn func_6(arg_0: Struct_1, arg_1: vec2<f32>) -> bool {
    return !(-reverseBits(global0.x) >= ~global0.x) | any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, u_input.a > 0u), vec4<bool>(true, true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(global2[_wgslsmith_index_u32(func_5(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_1(global1.yy)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, 1779f)), true)), vec4<f32>(global1.x, -407f, global1.x, _wgslsmith_f_op_f32(-1518f + global1.x)))), 3u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.yy), _wgslsmith_f_op_vec2_f32(-global1.yy)))));
    let var_1 = 47751u < u_input.a;
    var_0 = true;
    var var_2 = Struct_2(global2[_wgslsmith_index_u32(max(4294967295u, ~u_input.a) >> (~4294967295u % 32u), 3u)], ~(~vec4<u32>(abs(4294967295u), 1u, 4294967295u, 1u)), global2[_wgslsmith_index_u32(~(~1u), 3u)], !select(select(select(vec3<bool>(false, var_1, false), vec3<bool>(true, var_1, true), vec3<bool>(var_1, true, var_1)), vec3<bool>(var_1, var_1, var_1), select(vec3<bool>(false, false, false), vec3<bool>(true, false, var_1), false)), vec3<bool>(!var_1, true, any(vec3<bool>(false, false, var_1))), !select(vec3<bool>(var_1, true, true), vec3<bool>(false, true, var_1), vec3<bool>(var_1, var_1, true))));
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-global1.x), countOneBits(-(~var_2.a.b))), ~vec4<u32>(u_input.a, reverseBits(var_2.b.x), u_input.a & countOneBits(u_input.a), _wgslsmith_mod_u32(4294967295u, var_2.b.x)), global2[_wgslsmith_index_u32(func_4(false, var_2.b.x, !(!select(vec3<bool>(true, true, var_2.d.x), vec3<bool>(var_1, true, var_1), var_2.d))), 3u)], select(var_2.d, !vec3<bool>(true, true, !var_1), var_1));
    var_2 = Struct_2(Struct_1(1808f, -_wgslsmith_mod_vec4_i32(var_2.a.b >> (var_2.b % vec4<u32>(32u)), var_3.a.b)), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_3.b.x, 39341u, u_input.a, 45694u), vec4<u32>(0u, u_input.a, 22926u, u_input.a)), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(6085u, var_3.b.x, 1u, 4754u), vec4<u32>(var_2.b.x, 1u, 19303u, 62070u)), ~vec4<u32>(134472u, var_2.b.x, var_3.b.x, 33998u)), ~(~vec4<u32>(var_2.b.x, u_input.a, 4294967295u, var_2.b.x))), vec4<u32>(firstTrailingBit(4294967295u), var_3.b.x, ~4294967295u, ~var_3.b.x) | countOneBits(select(vec4<u32>(var_2.b.x, u_input.a, u_input.a, 0u), global3[_wgslsmith_index_u32(68939u, 6u)], true))), var_3.a, var_3.d);
    global2 = array<Struct_1, 3>();
    var var_4 = Struct_1(_wgslsmith_f_op_f32(-868f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.c.a * _wgslsmith_f_op_f32(f32(-1f) * -293f)))), ~vec4<i32>(global0.x, -var_3.a.b.x, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(var_2.c.b.x, -2147483647i, global0.x), _wgslsmith_add_i32(var_3.a.b.x, global0.x), 0i), abs(~global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1345f, -1000f, var_2.c.a, var_3.a.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(-860f, 118f, -207f, global1.x) * vec4<f32>(var_4.a, -858f, -1506f, 638f)), vec4<bool>(true, true, var_2.d.x, false)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(var_3.c.a, 210f, -594f, 118f), vec4<f32>(var_2.c.a, 857f, 869f, global1.x)))))), select(select(select(vec4<bool>(false, false, var_2.d.x, true), vec4<bool>(var_2.d.x, var_2.d.x, false, var_2.d.x), var_1), vec4<bool>(var_2.d.x, true, var_2.d.x, var_2.d.x), var_1), select(!vec4<bool>(var_3.d.x, var_2.d.x, true, true), select(vec4<bool>(var_2.d.x, false, var_2.d.x, var_2.d.x), vec4<bool>(false, var_3.d.x, var_1, var_3.d.x), vec4<bool>(var_1, false, var_2.d.x, true)), !vec4<bool>(var_2.d.x, var_1, var_2.d.x, false)), var_3.d.x))), func_2(true, vec4<u32>(0u, 4294967295u, func_2(false, var_2.b, vec4<u32>(0u, 4294967295u, var_2.b.x, var_2.b.x), 45392u) ^ var_3.b.x, _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a, u_input.a), 26116u)), firstTrailingBit(min(vec4<u32>(4406u, 1u, u_input.a, var_2.b.x), var_2.b) ^ global3[_wgslsmith_index_u32(var_3.b.x, 6u)]), firstTrailingBit(_wgslsmith_mult_u32(4294967295u & u_input.a, var_3.b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1286f, -1129f)) - vec2<f32>(_wgslsmith_f_op_f32(-var_3.a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c.a)))));
}

