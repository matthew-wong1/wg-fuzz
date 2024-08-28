struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<f32>,
    d: bool,
    e: f32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20> = array<u32, 20>(4294967295u, 0u, 1u, 0u, 0u, 10215u, 10814u, 56738u, 14857u, 4294967295u, 71317u, 1u, 0u, 1u, 120990u, 68455u, 27903u, 0u, 3572u, 17227u);

var<private> global1: i32 = 36360i;

var<private> global2: array<vec2<i32>, 20> = array<vec2<i32>, 20>(vec2<i32>(0i, 1i), vec2<i32>(2147483647i, -10341i), vec2<i32>(2576i, -1876i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-4306i, -39819i), vec2<i32>(27345i, -9120i), vec2<i32>(-21378i, -4699i), vec2<i32>(-1669i, 20403i), vec2<i32>(6897i, 1i), vec2<i32>(0i, 2147483647i), vec2<i32>(1i, 1i), vec2<i32>(2147483647i, 1i), vec2<i32>(1i, -22410i), vec2<i32>(2147483647i, -12144i), vec2<i32>(-9346i, 1i), vec2<i32>(1i, 24348i), vec2<i32>(2147483647i, 0i), vec2<i32>(2147483647i, -1i), vec2<i32>(6975i, -1i), vec2<i32>(-1i, 0i));

var<private> global3: array<i32, 26> = array<i32, 26>(1i, -82241i, -23694i, 0i, 2147483647i, 33746i, 25419i, 2147483647i, 2147483647i, -35362i, 2147483647i, 1i, -1i, -1i, -2619i, 696i, -23731i, -48284i, -16085i, -4019i, -22638i, -20523i, i32(-2147483648), 2147483647i, 33658i, -1i);

var<private> global4: array<vec4<bool>, 24>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4) -> vec4<u32> {
    let var_0 = vec2<bool>(true, 11747i < ((u_input.b.x & ~arg_0.c.b.x) | u_input.b.x));
    global0 = array<u32, 20>();
    let var_1 = arg_0.c.a;
    var var_2 = arg_0.c;
    let var_3 = global0[_wgslsmith_index_u32(4294967295u, 20u)];
    return reverseBits(vec4<u32>(~4294967295u, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstTrailingBit(var_2.a.a.x), abs(var_2.a.a.x)), 20u)], ~u_input.c.x, u_input.a));
}

fn func_2(arg_0: vec3<f32>) -> vec4<u32> {
    var var_0 = 2147483647i & u_input.b.x;
    return _wgslsmith_sub_vec4_u32(vec4<u32>(1u, _wgslsmith_div_u32(u_input.a, max(u_input.c.x, ~u_input.c.x)), 45376u, 1u), func_3(Struct_4(u_input.c, max(~vec4<i32>(global3[_wgslsmith_index_u32(21977u, 26u)], 0i, -1i, 2147483647i), vec4<i32>(u_input.b.x, u_input.b.x, global3[_wgslsmith_index_u32(9376u, 26u)], u_input.b.x) | vec4<i32>(global3[_wgslsmith_index_u32(u_input.a, 26u)], -2147483647i, -2147483647i, global3[_wgslsmith_index_u32(0u, 26u)])), Struct_2(Struct_1(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], 20u)], 1u, global0[_wgslsmith_index_u32(u_input.c.x, 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)]), vec3<f32>(arg_0.x, 822f, 555f)), vec2<i32>(u_input.b.x, -38223i)))));
}

fn func_4(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = ~(vec2<u32>(10794u, (u_input.c.x << (20717u % 32u)) << (global0[_wgslsmith_index_u32(abs(arg_2.a.a.x), 20u)] % 32u)) >> (_wgslsmith_div_vec2_u32(firstTrailingBit(arg_2.a.a.xw >> (arg_2.a.a.zz % vec2<u32>(32u))), _wgslsmith_sub_vec2_u32(~vec2<u32>(81499u, global0[_wgslsmith_index_u32(33060u, 20u)]), _wgslsmith_div_vec2_u32(u_input.c, vec2<u32>(arg_0, global0[_wgslsmith_index_u32(2043u, 20u)])))) % vec2<u32>(32u)));
    let var_1 = _wgslsmith_clamp_vec3_u32(countOneBits(arg_2.a.a.yyy & (arg_2.a.a.wwx >> (arg_2.a.a.xxx % vec3<u32>(32u)))), vec3<u32>(global0[_wgslsmith_index_u32(0u, 20u)], ~0u, _wgslsmith_dot_vec2_u32(~firstTrailingBit(vec2<u32>(arg_0, 17035u)), vec2<u32>(41446u, 1u))), arg_2.a.a.xzx);
    var var_2 = Struct_3(u_input.b.yw, arg_2.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(179f, 316f)), arg_1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.b.x + _wgslsmith_f_op_f32(arg_2.a.b.x * -1000f)) * _wgslsmith_f_op_f32(floor(arg_2.a.b.x))))));
    return Struct_1(min(vec4<u32>(arg_2.a.a.x, ~firstTrailingBit(arg_2.a.a.x), ~(~u_input.c.x), firstLeadingBit(~arg_2.a.a.x)), ~select(vec4<u32>(40982u, var_1.x, var_1.x, 0u), vec4<u32>(4294967295u, 1u, u_input.a, u_input.c.x), global4[_wgslsmith_index_u32(arg_0 >> (var_1.x % 32u), 24u)])), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-arg_2.a.b))));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: f32) -> Struct_4 {
    let var_0 = Struct_2(func_4(u_input.a, select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), all(global4[_wgslsmith_index_u32(0u, 24u)])), false), Struct_2(Struct_1(func_2(vec3<f32>(arg_0, arg_2, arg_0)), _wgslsmith_div_vec3_f32(vec3<f32>(1025f, 1734f, arg_1), vec3<f32>(arg_0, arg_2, 1893f))), _wgslsmith_sub_vec2_i32(u_input.b.zw, vec2<i32>(0i, global3[_wgslsmith_index_u32(1u, 26u)])))), vec2<i32>(1i, ~u_input.b.x));
    global0 = array<u32, 20>();
    let var_1 = Struct_1(var_0.a.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(360f, -176f, arg_2) + var_0.a.b)))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.b.x, arg_2) * -402f), _wgslsmith_f_op_f32(round(-601f)));
    var var_3 = countOneBits(select((_wgslsmith_add_vec3_u32(vec3<u32>(62048u, 1u, 4294967295u), var_0.a.a.yxw) ^ vec3<u32>(4294967295u, 6837u, 436u)) >> (vec3<u32>(4294967295u, 1u, 1u) % vec3<u32>(32u)), max(firstTrailingBit(vec3<u32>(16448u, 0u, 20205u)), vec3<u32>(~var_0.a.a.x, var_1.a.x, ~var_0.a.a.x)), u_input.b.x < u_input.b.x));
    return Struct_4(var_1.a.wz, u_input.b, Struct_2(func_4(_wgslsmith_mod_u32(~1896u, func_2(var_0.a.b).x), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true)), Struct_2(func_4(39505u, vec2<bool>(false, false), Struct_2(var_0.a, global2[_wgslsmith_index_u32(var_0.a.a.x, 20u)])), abs(vec2<i32>(-2147483647i, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26591u, 20u)], 26u)])))), _wgslsmith_clamp_vec2_i32(var_0.b, ~vec2<i32>(2905i, global3[_wgslsmith_index_u32(68527u, 26u)]), u_input.b.wx >> (var_1.a.zw % vec2<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1560f + 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -681f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(809f + _wgslsmith_f_op_f32(f32(-1f) * -241f)))), 1151f);
    global1 = -6333i;
    let var_1 = var_0.c;
    global2 = array<vec2<i32>, 20>();
    var var_2 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(select(min(var_0.c.a.a.xzy, vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 20u)], 344u, var_1.a.a.x)), var_1.a.a.wyy, all(vec3<bool>(false, true, false))) & vec3<u32>(~4294967295u, 28388u, 4294967295u), max(abs(-var_0.b << (_wgslsmith_add_vec4_u32(vec4<u32>(var_1.a.a.x, 8851u, global0[_wgslsmith_index_u32(1u, 20u)], 6303u), var_0.c.a.a) % vec4<u32>(32u))), u_input.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.a.b.x, -152f, -1588f)), func_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(1865f, -1356f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.b.x, _wgslsmith_f_op_f32(select(var_0.c.a.b.x, 1098f, false)))), _wgslsmith_f_op_f32(285f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1119f * var_0.c.a.b.x), _wgslsmith_f_op_f32(sign(-1000f))))).c.a.a.xw, _wgslsmith_mod_vec2_u32(reverseBits(~var_1.a.a.wy << (var_0.c.a.a.yw % vec2<u32>(32u))), var_1.a.a.ww));
}

