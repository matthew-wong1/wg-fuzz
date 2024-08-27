struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: vec4<f32>,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: f32,
    d: vec2<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(49561u, 1u, 66444u, 35278u);

var<private> global1: array<vec3<u32>, 7> = array<vec3<u32>, 7>(vec3<u32>(4294967295u, 31184u, 86756u), vec3<u32>(11156u, 26382u, 4294967295u), vec3<u32>(0u, 25286u, 1u), vec3<u32>(14643u, 91629u, 21803u), vec3<u32>(0u, 0u, 20868u), vec3<u32>(49822u, 1u, 82740u), vec3<u32>(90150u, 50977u, 12620u));

var<private> global2: vec3<f32> = vec3<f32>(273f, 2180f, -651f);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_3) -> vec3<bool> {
    let var_0 = Struct_2(select(select(!select(arg_0.a, arg_0.a, vec3<bool>(true, false, false)), !arg_0.a, arg_0.b.x & arg_0.b.x), !(!select(vec3<bool>(arg_0.b.x, arg_0.a.x, false), vec3<bool>(arg_0.a.x, true, arg_0.b.x), false)), arg_0.a), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, global0.x, u_input.c, u_input.b), vec4<u32>(global0.x, 77443u, 44297u, global0.x), vec4<u32>(u_input.c, global0.x, 8298u, 66963u)), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(13552u, global0.x, u_input.b, u_input.c)), _wgslsmith_mult_vec4_u32(~vec4<u32>(global0.x, 1u, 37981u, u_input.c), reverseBits(vec4<u32>(4294967295u, global0.x, global0.x, u_input.b))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(599f, global2.x, -832f, global2.x), vec4<f32>(307f, -1896f, global2.x, 883f))))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(772f, global2.x, global2.x, -264f), vec4<f32>(global2.x, -778f, 897f, -307f), arg_0.b.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2.x, 2031f, global2.x, global2.x), vec4<f32>(global2.x, global2.x, 182f, global2.x))), vec4<bool>(arg_0.a.x, false, true, arg_0.b.x)))), -vec2<i32>(_wgslsmith_div_i32(u_input.a, -72731i), u_input.a), 4294967295u, -(vec4<i32>(-1i) * -vec4<i32>(u_input.a, -56664i, u_input.a, u_input.a))), vec4<bool>(!(arg_0.a.x && !arg_0.b.x), true, arg_0.b.x, arg_0.a.x));
    let var_1 = vec2<u32>(_wgslsmith_div_u32(~u_input.c, abs(countOneBits(u_input.b >> (4294967295u % 32u)))), u_input.b);
    global1 = array<vec3<u32>, 7>();
    var var_2 = arg_0;
    var var_3 = var_0.d;
    return !(!vec3<bool>(all(var_0.e) || all(arg_0.b), _wgslsmith_f_op_f32(select(var_0.c.x, global2.x, true)) <= _wgslsmith_f_op_f32(-var_3.a.x), true));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<i32>) -> u32 {
    global0 = vec4<u32>(global0.x, _wgslsmith_sub_u32(firstTrailingBit(~global0.x), min(_wgslsmith_div_u32(_wgslsmith_clamp_u32(0u, global0.x, u_input.b), 44553u), global0.x)), 16674u, _wgslsmith_clamp_u32(29411u << (_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, global0.x, 14009u, 0u), vec4<u32>(u_input.c, 1u, 0u, u_input.c)), _wgslsmith_sub_u32(u_input.c, 1u)) % 32u), 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(global0.x, 0u), _wgslsmith_clamp_u32(global0.x, u_input.b, u_input.b)), vec2<u32>(global0.x, 4294967295u))));
    let var_0 = Struct_2(vec3<bool>(!arg_0.a.x, true, true), _wgslsmith_add_u32(max(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, global0.x, 1u, 1u), vec4<u32>(0u, 64782u, 14086u, global0.x)), _wgslsmith_div_u32(u_input.c, u_input.c)) << (_wgslsmith_div_u32(~global0.x, u_input.c) % 32u), 40041u), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(f32(-1f) * -1101f), _wgslsmith_f_op_f32(trunc(1399f)), _wgslsmith_f_op_f32(global2.x * global2.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.x, 141f, global2.x, -1412f), vec4<f32>(global2.x, 1896f, -394f, -161f))))))), Struct_1(vec4<f32>(_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(global2.x * global2.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, 705f) - -389f), 2475f, _wgslsmith_f_op_f32(trunc(-1529f))), _wgslsmith_mult_vec2_i32(vec2<i32>(-2402i, _wgslsmith_add_i32(0i, u_input.a)), _wgslsmith_div_vec2_i32(vec2<i32>(arg_1.x, u_input.a), ~vec2<i32>(200i, arg_1.x))), firstLeadingBit(1u), vec4<i32>(~(~(-33155i)), 11491i, i32(-1i) * -arg_1.x, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.a, arg_1.x, u_input.a)), vec3<i32>(73094i, u_input.a, -1i)))), vec4<bool>(false, arg_0.a.x, all(!vec3<bool>(arg_0.a.x, true, arg_0.a.x)), true));
    let var_1 = var_0.d;
    global1 = array<vec3<u32>, 7>();
    var var_2 = Struct_4(var_1.d & ~(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.b.x, -2147483647i, -1i, -45589i), var_1.d) << ((vec4<u32>(1u, var_1.c, 115996u, 4294967295u) & vec4<u32>(4294967295u, 13242u, 11706u, 14227u)) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(-2147483647i, 13025i, _wgslsmith_add_i32(var_1.b.x, var_1.d.x), ~var_1.d.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(11920i >> (var_0.b % 32u), 29508i << (0u % 32u), _wgslsmith_div_i32(-1166i, 1i), -arg_1.x), vec4<i32>(-15292i, -2147483647i, -1i, -24629i) >> (~vec4<u32>(271u, var_0.b, 46001u, 30749u) % vec4<u32>(32u)))), all(var_0.e));
    return abs(u_input.c << ((~(var_0.d.c ^ 0u) ^ countOneBits(_wgslsmith_mult_u32(4294967295u, var_0.b))) % 32u));
}

fn func_2() -> vec2<bool> {
    let var_0 = vec4<u32>(1u, func_4(Struct_3(func_3(Struct_3(vec3<bool>(false, false, true), vec2<bool>(true, true))), vec2<bool>(true, true)), min(-vec2<i32>(2147483647i, u_input.a), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, -72626i), min(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-16882i, u_input.a))))), u_input.b, abs(_wgslsmith_sub_u32(firstTrailingBit(u_input.c), ~min(83872u, 66187u))));
    global2 = vec3<f32>(-528f, global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-751f)) * 233f));
    let var_1 = Struct_2(select(!vec3<bool>(true, all(vec2<bool>(false, true)), func_3(Struct_3(vec3<bool>(true, true, false), vec2<bool>(true, false))).x), select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec4<bool>(false, false, true, true)), true), vec3<bool>(all(vec4<bool>(false, false, true, true)), false, select(true, true, true))), func_3(Struct_3(vec3<bool>(true, true, true), vec2<bool>(true, false)))), 1u, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2.x - 160f))), _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(-global2.x)), global2.x, -1973f) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, 509f, 785f, global2.x) + vec4<f32>(-133f, 332f, 1702f, -249f))))))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -1327f, 954f, global2.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-395f, 850f, -812f, -1000f))))), -_wgslsmith_div_vec2_i32(-vec2<i32>(0i, 846i), abs(vec2<i32>(1i, -2147483647i))), countOneBits(u_input.c) << (var_0.x % 32u), ~vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), ~1i, ~u_input.a, _wgslsmith_sub_i32(-1i, u_input.a))), !vec4<bool>(!(global2.x > global2.x), u_input.a == u_input.a, true, false));
    global0 = vec4<u32>(_wgslsmith_sub_u32(~(~global0.x) | (_wgslsmith_dot_vec4_u32(var_0, var_0) | global0.x), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(global0.zx), firstTrailingBit(vec2<u32>(var_0.x, 1u))), var_0.x, 4294967295u)), var_1.b, firstLeadingBit(reverseBits(_wgslsmith_mod_u32(var_0.x, u_input.b)) ^ 1u), firstLeadingBit(~63966u));
    var var_2 = var_1.d.d;
    return !select(var_1.e.zy, vec2<bool>((false || var_1.a.x) != var_1.a.x, true), select(var_1.e.xx, func_3(Struct_3(vec3<bool>(var_1.a.x, var_1.e.x, var_1.a.x), var_1.e.ww)).zz, var_1.e.x));
}

fn func_5(arg_0: vec2<bool>) -> vec4<u32> {
    let var_0 = ~u_input.a;
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, _wgslsmith_f_op_f32(round(global2.x)), 808f, 686f)), vec2<i32>(firstTrailingBit(_wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.a, var_0), -30561i)), _wgslsmith_clamp_i32(reverseBits(-var_0), var_0, u_input.a)), u_input.b, -vec4<i32>(_wgslsmith_add_i32(0i, var_0), var_0, var_0, _wgslsmith_mod_i32(-1i, u_input.a)) & ~(abs(vec4<i32>(u_input.a, -2147483647i, -2147483647i, 7936i)) & vec4<i32>(var_0, var_0, u_input.a, var_0)));
    global2 = vec3<f32>(951f, -1052f, 1796f);
    global2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, global2.x) + _wgslsmith_f_op_f32(step(893f, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(ceil(var_1.a.x)))))), 1293f, 653f);
    var var_2 = select(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_0, var_1.b.x), var_1.d.yxw), -2147483647i) ^ -6608i, _wgslsmith_add_i32(select(-countOneBits(62998i), var_0, true), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(10656i, u_input.a, 1i, var_1.b.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, var_0, var_0, 51920i), vec4<i32>(-22372i, -2147483647i, u_input.a, u_input.a), vec4<i32>(var_1.d.x, -42212i, u_input.a, u_input.a))), var_1.d ^ var_1.d)), true);
    return countOneBits(vec4<u32>(u_input.c, _wgslsmith_sub_u32(~44005u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c, 0u, 26536u, global0.x), vec4<u32>(u_input.c, 87124u, 0u, 65498u))) | 0u, _wgslsmith_add_u32(104466u, _wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c, 16842u, 4294967295u, 65592u), vec4<u32>(17027u, 4294967295u, 11647u, var_1.c)), 1u)), _wgslsmith_div_u32(0u, global0.x)));
}

fn func_1(arg_0: bool) -> Struct_2 {
    global0 = firstLeadingBit(~func_5(func_2()));
    var var_0 = reverseBits(select(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(u_input.a, u_input.a, 41005i, u_input.a)), abs(vec4<i32>(u_input.a, u_input.a, -1i, u_input.a))), ~vec4<i32>(-2147483647i, 2147483647i, 1i, u_input.a)), vec4<i32>(u_input.a, _wgslsmith_div_i32(-2147483647i, u_input.a), abs(-44198i), firstTrailingBit(~u_input.a)), !select(!vec4<bool>(false, arg_0, false, false), !vec4<bool>(arg_0, true, false, arg_0), select(vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(false, arg_0, arg_0, false)))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(select(global2.x, -2215f, true)), _wgslsmith_f_op_f32(f32(-1f) * -1110f), _wgslsmith_f_op_f32(-global2.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 1192f, 1836f, -829f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-339f, global2.x, global2.x, global2.x))))))), ~vec2<i32>(44884i, ~u_input.a), countOneBits(countOneBits(~4294967295u)), ~vec4<i32>(firstTrailingBit(_wgslsmith_mult_i32(var_0.x, -1i)), ~_wgslsmith_mult_i32(u_input.a, u_input.a), u_input.a & var_0.x, ~(-u_input.a)));
    let var_2 = 1u;
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.b, firstTrailingBit(3280u)), 7u)] ^ global0.zyw;
    return Struct_2(vec3<bool>(arg_0, true, any(select(select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, arg_0, arg_0), arg_0), func_3(Struct_3(vec3<bool>(arg_0, true, arg_0), vec2<bool>(true, true))), arg_0))), 62975u, _wgslsmith_f_op_vec4_f32(var_1.a * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1483f), -1734f, global2.x, 2323f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.a.x, global2.x, -706f, -316f))) - vec4<f32>(-683f, global2.x, -1461f, var_1.a.x)))), var_1, !vec4<bool>(true, !arg_0 || false, all(func_3(Struct_3(vec3<bool>(false, arg_0, arg_0), vec2<bool>(false, true)))), arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(all(vec4<bool>(any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true))), u_input.c >= 55651u, true, any(vec4<bool>(true, true, false, false)))));
    global0 = ~vec4<u32>(~(18633u | var_0.b), func_1(true).d.c | 1u, var_0.d.c, 0u);
    var var_1 = -min(~(-67939i), _wgslsmith_mult_i32(select(-2147483647i | var_0.d.d.x, u_input.a, false | var_0.e.x), var_0.d.b.x));
    var var_2 = func_1(func_1(true).a.x).e;
    var var_3 = Struct_4(_wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(2147483647i, abs(u_input.a), -u_input.a, ~var_0.d.d.x)), ~var_0.d.d), var_0.d.d, false);
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<u32>(func_4(Struct_3(var_2.zxy, vec2<bool>(true, true)), ~vec2<i32>(u_input.a, var_3.a.x)), _wgslsmith_mod_u32(max(global0.x, 1u), abs(4294967295u)), func_4(Struct_3(vec3<bool>(false, true, false), var_0.e.zw), vec2<i32>(var_0.d.d.x, 1i)), func_5(vec2<bool>(true, var_2.x)).x)), global1[_wgslsmith_index_u32(max(reverseBits(4294967295u), ~_wgslsmith_mod_u32(u_input.c | 0u, 1u)), 7u)], -1082f, ~(global0.xw >> (max(abs(global0.yx), global0.zz) % vec2<u32>(32u))), vec4<i32>(0i, func_1(func_3(Struct_3(vec3<bool>(var_3.c, var_0.e.x, true), var_2.wy)).x).d.d.x, 2147483647i, -_wgslsmith_clamp_i32(-2147483647i, var_0.d.d.x, -var_0.d.d.x)));
}

