struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: f32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: bool,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: f32,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
    c: Struct_2,
    d: Struct_2,
    e: vec3<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: f32,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1> = array<bool, 1>(false);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    global0 = array<bool, 1>();
    let var_0 = u_input.e >> (_wgslsmith_dot_vec3_u32(~u_input.a.xwx, ~abs(~u_input.a.wzy)) % 32u);
    var var_1 = Struct_1(!(!(!select(vec4<bool>(global0[_wgslsmith_index_u32(var_0, 1u)], true, true, false), vec4<bool>(global0[_wgslsmith_index_u32(var_0, 1u)], true, false, global0[_wgslsmith_index_u32(4262u, 1u)]), vec4<bool>(false, false, global0[_wgslsmith_index_u32(56618u, 1u)], global0[_wgslsmith_index_u32(var_0, 1u)])))), vec2<i32>(i32(-1i) * -2147483647i, ~u_input.b), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -415f)))), u_input.a.wzx);
    global0 = array<bool, 1>();
    var var_2 = Struct_4(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(15153i, var_1.b.x, var_1.b.x, var_1.b.x)), vec4<i32>(18073i, select(-2147483647i, -1i, true), var_1.b.x, _wgslsmith_mult_i32(2147483647i, u_input.b))), vec4<i32>(1i, 0i, -(u_input.d.x << (0u % 32u)), min(46466i ^ var_1.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-22373i, -55685i, u_input.b), vec3<i32>(-71147i, -14931i, var_1.b.x)))), _wgslsmith_mod_vec4_i32(abs(u_input.c), _wgslsmith_add_vec4_i32(vec4<i32>(-16209i, var_1.b.x, 1i, var_1.b.x), u_input.c)) ^ _wgslsmith_mult_vec4_i32(abs(u_input.c), vec4<i32>(u_input.c.x, 23904i, u_input.d.x, var_1.b.x))), Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -233f, var_1.c) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(224f, var_1.c, 1824f), vec3<f32>(896f, 539f, var_1.c))))), select(var_1.a, vec4<bool>(true, var_1.a.x, true, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(137040u, u_input.e), 1u)]), global0[_wgslsmith_index_u32(var_1.d.x, 1u)]), -329f, Struct_2(Struct_1(var_1.a, vec2<i32>(10854i, 17950i), 1f, max(vec3<u32>(14422u, u_input.e, u_input.e), vec3<u32>(467u, var_1.d.x, var_1.d.x))), _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(sign(var_1.c)), false)), 1f, false, abs(vec4<u32>(13528u, u_input.a.x, u_input.e, u_input.e))), Struct_2(Struct_1(select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(var_1.d.x, 1u)], false), var_1.a, var_1.a), max(vec2<i32>(u_input.b, u_input.b), vec2<i32>(11743i, -2147483647i)), var_1.c, u_input.a.yzx | vec3<u32>(var_1.d.x, 28795u, u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c * -724f)), _wgslsmith_f_op_f32(var_1.c + var_1.c), all(var_1.a), u_input.a ^ ~vec4<u32>(var_0, 17335u, 1u, 52757u))), Struct_2(Struct_1(var_1.a, vec2<i32>(-60240i, 1i), _wgslsmith_f_op_f32(select(-672f, -845f, !global0[_wgslsmith_index_u32(u_input.e, 1u)])), u_input.a.xyx), _wgslsmith_f_op_f32(-var_1.c), var_1.c, true, _wgslsmith_sub_vec4_u32(min(_wgslsmith_mult_vec4_u32(vec4<u32>(20218u, var_1.d.x, u_input.a.x, 0u), u_input.a), vec4<u32>(var_0, u_input.a.x, 4294967295u, 4294967295u) << (vec4<u32>(var_1.d.x, 25498u, 7551u, 51111u) % vec4<u32>(32u))), ~vec4<u32>(var_0, 82507u, 1u, 1u) & ~vec4<u32>(45608u, 4294967295u, u_input.a.x, var_0))), Struct_2(Struct_1(!var_1.a, abs(_wgslsmith_add_vec2_i32(var_1.b, vec2<i32>(-2147483647i, u_input.b))), _wgslsmith_f_op_f32(222f * -1409f), _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(u_input.a.x, var_0, var_0)), vec3<u32>(63892u, var_0, u_input.a.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.c, -465f, false))))), var_1.c, true, abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, var_0, 22536u, var_0), u_input.a, vec4<u32>(32538u, 17133u, 4294967295u, 4196u)))), vec3<u32>(104706u, u_input.e, _wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(var_1.d.zx, vec2<u32>(1u, 0u)), vec2<u32>(_wgslsmith_add_u32(var_0, u_input.e), 32945u))));
    return false;
}

fn func_2() -> Struct_2 {
    global0 = array<bool, 1>();
    var var_0 = u_input.a.xx;
    let var_1 = Struct_4(_wgslsmith_clamp_vec4_i32(abs(~(u_input.c ^ vec4<i32>(-18410i, u_input.d.x, u_input.b, 27002i))), _wgslsmith_sub_vec4_i32(-u_input.c, firstLeadingBit(u_input.c)), u_input.c), Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-769f, 689f, -478f)))), vec3<f32>(_wgslsmith_f_op_f32(sign(417f)), _wgslsmith_f_op_f32(select(-847f, -155f, true)), 1524f)), vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 1u)] | select(true, global0[_wgslsmith_index_u32(u_input.e, 1u)], global0[_wgslsmith_index_u32(1u, 1u)]), (var_0.x | 4648u) < abs(var_0.x), !func_3(), !(global0[_wgslsmith_index_u32(var_0.x, 1u)] || false)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-244f, -1771f)), _wgslsmith_f_op_f32(-1110f * -842f)) * _wgslsmith_f_op_f32(f32(-1f) * -166f)), Struct_2(Struct_1(vec4<bool>(true, false, global0[_wgslsmith_index_u32(1u, 1u)], true), vec2<i32>(u_input.d.x, 0i) << (u_input.a.xw % vec2<u32>(32u)), -906f, ~u_input.a.xzw), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 1387f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1247f, -1000f))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 31212u, var_0.x), u_input.a), 1u)], _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, 37643u, 0u, u_input.e) << (vec4<u32>(var_0.x, var_0.x, 14702u, var_0.x) % vec4<u32>(32u)), max(u_input.a, u_input.a))), Struct_2(Struct_1(vec4<bool>(true, true, false, true), vec2<i32>(-1i, -9298i), _wgslsmith_f_op_f32(abs(-713f)), reverseBits(vec3<u32>(var_0.x, var_0.x, 33406u))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1171f))), -1108f, global0[_wgslsmith_index_u32(var_0.x, 1u)], ~vec4<u32>(65822u, var_0.x, var_0.x, u_input.e) << (vec4<u32>(56323u, u_input.e, 28422u, var_0.x) % vec4<u32>(32u)))), Struct_2(Struct_1(vec4<bool>(false && global0[_wgslsmith_index_u32(21852u, 1u)], global0[_wgslsmith_index_u32(select(var_0.x, 4294967295u, global0[_wgslsmith_index_u32(24856u, 1u)]), 1u)], true, false | global0[_wgslsmith_index_u32(27756u, 1u)]), abs(reverseBits(vec2<i32>(1i, u_input.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-857f, 1000f, true))), u_input.a.zwx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1338f, -251f))), -186f, select(false, true, -46547i == u_input.d.x) | any(vec2<bool>(true, true)), _wgslsmith_mult_vec4_u32(vec4<u32>(select(var_0.x, 4294967295u, false), u_input.a.x, ~u_input.a.x, var_0.x), u_input.a)), Struct_2(Struct_1(vec4<bool>(true, true, true, true), abs(~vec2<i32>(2147483647i, u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-239f))), firstTrailingBit(u_input.a.yzw)), _wgslsmith_f_op_f32(select(1868f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -754f)), !(-1i <= u_input.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -945f))), !(!global0[_wgslsmith_index_u32(4294967295u, 1u)]) | (!global0[_wgslsmith_index_u32(1u, 1u)] | any(vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 1u)]))), u_input.a), ~vec3<u32>(_wgslsmith_div_u32(var_0.x, _wgslsmith_mod_u32(37420u, 1u)), u_input.e & abs(0u), select(55719u, var_0.x, global0[_wgslsmith_index_u32(1u, 1u)]) ^ _wgslsmith_sub_u32(var_0.x, 34528u)));
    var var_2 = select(all(vec2<bool>(var_1.b.e.a.a.x, true)), 1u == ~(~(~u_input.e)), false && var_1.b.b.x);
    var var_3 = select(vec2<bool>(var_1.b.e.a.a.x, true), select(select(var_1.b.d.a.a.yy, !select(var_1.d.a.a.zy, var_1.b.d.a.a.xw, vec2<bool>(global0[_wgslsmith_index_u32(93912u, 1u)], true)), var_1.d.a.a.x), select(var_1.b.b.yx, var_1.d.a.a.xz, select(!vec2<bool>(global0[_wgslsmith_index_u32(var_1.c.e.x, 1u)], var_1.c.d), var_1.d.a.a.zz, var_1.c.a.b.x >= var_1.b.e.a.b.x)), var_1.d.a.a.wx), !(!select(var_1.d.a.a.xy, select(vec2<bool>(true, false), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 1u)], true), false), true)));
    return Struct_2(var_1.d.a, var_1.c.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.c.b, var_1.d.a.c, var_3.x)) - _wgslsmith_f_op_f32(min(var_1.c.b, var_1.c.a.c))))), !var_3.x, vec4<u32>(_wgslsmith_clamp_u32(var_1.b.e.e.x, abs(0u), ~(~var_0.x)), min(firstTrailingBit(~1u), 4294967295u << (var_0.x % 32u)), ~(~u_input.a.x & var_1.b.e.e.x), 59746u));
}

fn func_1(arg_0: Struct_4) -> Struct_5 {
    global0 = array<bool, 1>();
    global0 = array<bool, 1>();
    return Struct_5(func_2(), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.d.a.c), _wgslsmith_div_f32(807f, arg_0.d.c)))));
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_4, arg_3: Struct_5) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-589f, 1756f, arg_2.b.d.c, arg_3.a.b) + vec4<f32>(arg_2.d.c, arg_3.a.a.c, arg_2.c.c, -2065f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.b, arg_2.d.c, arg_3.a.b, 723f)))))));
    let var_1 = arg_2.b;
    global0 = array<bool, 1>();
    global0 = array<bool, 1>();
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(274f, var_0.x, arg_2.b.e.a.c), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_3.b)), var_1.c, -1655f))), true)), vec4<bool>(arg_2.b.e.a.a.x, !func_2().d, true | !(arg_2.c.d || true), var_1.d.d & !arg_1), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-749f, arg_3.b), -1000f)), 1324f))), Struct_2(arg_3.a.a, 2213f, arg_3.a.c, arg_1, func_1(arg_2).a.e), arg_3.a);
    return var_1.e.a.d.xy;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 1>();
    global0 = array<bool, 1>();
    var var_0 = firstTrailingBit(u_input.a.x);
    var_0 = u_input.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1006f, -1102f), -494f)), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -311f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(1000f))))))), ~(~func_4(abs(u_input.d.x), true, Struct_4(vec4<i32>(u_input.c.x, 9391i, -30741i, -16298i), Struct_3(vec3<f32>(-1000f, 682f, -945f), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 1u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 1u)], false), 680f, Struct_2(Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 1u)], true, false, global0[_wgslsmith_index_u32(u_input.e, 1u)]), u_input.c.zx, -217f, vec3<u32>(103290u, u_input.e, 1u)), 1000f, 638f, false, vec4<u32>(u_input.a.x, 1u, u_input.a.x, 6609u)), Struct_2(Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(36353u, 1u)], true), u_input.c.wx, -683f, vec3<u32>(21951u, u_input.a.x, u_input.e)), -992f, -251f, global0[_wgslsmith_index_u32(u_input.e, 1u)], u_input.a)), Struct_2(Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], false, global0[_wgslsmith_index_u32(4294967295u, 1u)], true), vec2<i32>(u_input.d.x, 35528i), -285f, vec3<u32>(u_input.e, 62257u, 24940u)), -1083f, -2326f, false, u_input.a), Struct_2(Struct_1(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 1u)], false, true), vec2<i32>(-1i, u_input.b), -643f, u_input.a.yxx), 2256f, -509f, global0[_wgslsmith_index_u32(u_input.e, 1u)], vec4<u32>(2034u, 35064u, 47719u, 0u)), u_input.a.zyx), func_1(Struct_4(vec4<i32>(u_input.b, u_input.c.x, u_input.b, u_input.d.x), Struct_3(vec3<f32>(1583f, -220f, -222f), vec4<bool>(global0[_wgslsmith_index_u32(16826u, 1u)], true, global0[_wgslsmith_index_u32(30034u, 1u)], false), -497f, Struct_2(Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], global0[_wgslsmith_index_u32(0u, 1u)], true, false), vec2<i32>(1i, 15803i), 2450f, u_input.a.wzx), -1000f, 1362f, false, vec4<u32>(0u, 65982u, u_input.a.x, 4294967295u)), Struct_2(Struct_1(vec4<bool>(true, true, global0[_wgslsmith_index_u32(0u, 1u)], false), u_input.c.xy, 1016f, vec3<u32>(13173u, u_input.a.x, u_input.a.x)), -181f, -200f, true, u_input.a)), Struct_2(Struct_1(vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a.x, 1u)], false), vec2<i32>(-37980i, 0i), -1149f, u_input.a.zzy), -874f, -563f, global0[_wgslsmith_index_u32(1u, 1u)], u_input.a), Struct_2(Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(u_input.e, 1u)], true, global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(u_input.e, 1u)]), u_input.d.xx, 393f, vec3<u32>(u_input.e, 8751u, u_input.a.x)), -691f, 1399f, global0[_wgslsmith_index_u32(u_input.e, 1u)], u_input.a), u_input.a.xww)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -391f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-138f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f)))))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -635f), _wgslsmith_f_op_f32(ceil(-1421f)))), 898f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1354f)))))), _wgslsmith_sub_i32(1i, 65i));
}

