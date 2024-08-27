struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15>;

var<private> global1: array<vec3<f32>, 20>;

var<private> global2: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(43334i, 4294967295u, vec3<i32>(24505i, -18766i, 2147483647i), vec3<u32>(49033u, 42333u, 1u), vec2<i32>(0i, 1i)), Struct_1(10597i, 31483u, vec3<i32>(-7995i, 1i, 41876i), vec3<u32>(6747u, 1u, 4294967295u), vec2<i32>(1i, -84222i)), Struct_1(2147483647i, 0u, vec3<i32>(i32(-2147483648), 0i, 20950i), vec3<u32>(1u, 1u, 7918u), vec2<i32>(-1i, -11617i)), Struct_1(33798i, 4294967295u, vec3<i32>(41516i, 28464i, 2147483647i), vec3<u32>(1u, 4294967295u, 0u), vec2<i32>(39330i, 11724i)));

var<private> global3: array<f32, 32> = array<f32, 32>(-221f, 759f, -219f, 1000f, -2071f, 197f, -307f, 743f, -520f, 720f, 257f, 587f, -505f, -822f, 1420f, 1330f, 131f, -1964f, 947f, 1253f, 495f, 1000f, -508f, 173f, 863f, -492f, 606f, -194f, -1352f, 380f, -914f, -2022f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> vec2<i32> {
    var var_0 = Struct_1(_wgslsmith_mod_i32(~reverseBits(-arg_1.e.x), ~2147483647i), ~arg_0.d.b, vec3<i32>(-2415i, 5349i, arg_1.e.x), select(~_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(arg_0.d.d, vec3<u32>(21189u, 10827u, arg_1.d.x)), ~arg_0.d.d), ~select(arg_0.b.d, arg_1.d, vec3<bool>(false, false, false)), vec3<bool>(select(true, true, any(vec4<bool>(false, true, false, true))), any(vec4<bool>(true, true, true, true)), true)), select(-vec2<i32>(~arg_0.b.a, arg_2.e.x << (arg_0.d.d.x % 32u)), vec2<i32>(-1i, 1i) ^ select(countOneBits(vec2<i32>(0i, -2147483647i)), countOneBits(arg_1.c.xz), false), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), any(vec2<bool>(false, false)))));
    global1 = array<vec3<f32>, 20>();
    global0 = array<Struct_2, 15>();
    let var_1 = (-1i >= min(_wgslsmith_dot_vec2_i32(arg_1.e, arg_1.e | arg_1.e), firstTrailingBit(arg_2.a & 1i))) && false;
    let var_2 = global3[_wgslsmith_index_u32(1u, 32u)];
    return select(~arg_1.e, arg_1.c.zy | vec2<i32>(abs(1i), 1i), select(!select(!vec2<bool>(var_1, false), !vec2<bool>(var_1, false), var_1), vec2<bool>(true, select(true, true, var_1)), select(select(select(vec2<bool>(false, var_1), vec2<bool>(false, true), var_1), vec2<bool>(var_1, var_1), false), !select(vec2<bool>(var_1, false), vec2<bool>(var_1, false), var_1), true)));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec3<bool>, arg_3: i32) -> Struct_1 {
    global2 = array<Struct_1, 4>();
    var var_0 = Struct_2(arg_0.d.xy << (~(~_wgslsmith_sub_vec2_u32(vec2<u32>(44839u, arg_0.d.x), vec2<u32>(u_input.b.x, arg_1))) % vec2<u32>(32u)), Struct_1(reverseBits(arg_3), 1u, arg_0.c, _wgslsmith_mod_vec3_u32(max(~vec3<u32>(9129u, u_input.a.x, arg_1), _wgslsmith_sub_vec3_u32(arg_0.d, arg_0.d)), _wgslsmith_div_vec3_u32(~arg_0.d, arg_0.d >> (arg_0.d % vec3<u32>(32u)))), _wgslsmith_sub_vec2_i32(func_3(global0[_wgslsmith_index_u32(arg_0.d.x, 15u)], Struct_1(44151i, 0u, arg_0.c, vec3<u32>(u_input.b.x, arg_1, 4294967295u), vec2<i32>(arg_0.a, -38406i)), Struct_1(arg_0.c.x, arg_1, vec3<i32>(-25739i, -1i, 2147483647i), vec3<u32>(u_input.a.x, 17208u, arg_1), vec2<i32>(arg_3, arg_3))), abs(~vec2<i32>(-38811i, -1i)))), ~arg_3, arg_0);
    var var_1 = vec4<bool>(any(arg_2.zz), any(select(vec2<bool>(true, false), vec2<bool>(all(vec3<bool>(arg_2.x, true, arg_2.x)), false), !vec2<bool>(false, arg_2.x))), !any(arg_2.zx), true);
    return Struct_1(~(~2147483647i << (max(28156u, firstTrailingBit(4294967295u)) % 32u)), ~(~firstTrailingBit(~1u)), ~var_0.d.c, vec3<u32>(~u_input.a.x, arg_1, 1u), abs(firstLeadingBit(arg_0.e << (~vec2<u32>(arg_1, arg_1) % vec2<u32>(32u)))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: f32) -> vec3<i32> {
    global0 = array<Struct_2, 15>();
    global3 = array<f32, 32>();
    global3 = array<f32, 32>();
    let var_0 = Struct_2(arg_1.xz, func_2(Struct_1(~(u_input.d >> (u_input.b.x % 32u)), 25266u, ~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, -34714i, 24577i), vec3<i32>(2147483647i, u_input.d, 1i)), abs(vec3<u32>(0u, arg_1.x, u_input.a.x)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(u_input.c, u_input.c)) >> (vec2<u32>(26948u, 4294967295u) % vec2<u32>(32u))), _wgslsmith_sub_u32(96590u, countOneBits(44789u)) | ~arg_1.x, select(vec3<bool>(arg_0.x == arg_0.x, !arg_0.x, arg_0.x), select(!vec3<bool>(false, false, arg_0.x), vec3<bool>(true, true, false), u_input.b.x >= arg_1.x), true), u_input.c), _wgslsmith_div_i32(44833i, _wgslsmith_clamp_i32(~(-1i) & _wgslsmith_add_i32(u_input.c, 1i), u_input.d, u_input.c)), Struct_1(-2330i, 67090u, vec3<i32>(abs(_wgslsmith_mod_i32(u_input.d, 1i)), abs(reverseBits(u_input.d)), func_3(global0[_wgslsmith_index_u32(arg_1.x >> (3172u % 32u), 15u)], Struct_1(-7999i, u_input.a.x, vec3<i32>(50881i, u_input.d, -24941i), arg_1, vec2<i32>(u_input.c, u_input.d)), Struct_1(-2147483647i, arg_1.x, vec3<i32>(-49443i, u_input.c, u_input.c), vec3<u32>(4294967295u, 45671u, 9784u), vec2<i32>(u_input.d, u_input.d))).x), vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.a, ~arg_1.xx), 15318u, ~4294967295u), vec2<i32>(~1i, 719i)));
    let var_1 = ~vec4<u32>(var_0.a.x, 1u, 1u, (~arg_1.x << (select(arg_1.x, 41174u, true) % 32u)) >> (1u % 32u));
    return vec3<i32>(~firstLeadingBit(-1i), _wgslsmith_clamp_i32(-68116i, abs(2147483647i), _wgslsmith_div_i32(_wgslsmith_sub_i32(var_0.c, max(var_0.b.c.x, 39227i)), u_input.d)), u_input.c << (var_0.b.b % 32u));
}

fn func_4(arg_0: Struct_2) -> StorageBuffer {
    let var_0 = vec4<i32>(-25140i, 1i, 0i, -18224i);
    var var_1 = Struct_2(max(~(~vec2<u32>(4294967295u, u_input.b.x)), vec2<u32>(0u, arg_0.b.d.x)), func_2(Struct_1(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.c, 1i, var_0.x, -2147483647i), ~var_0), 66979u, var_0.zyw, ~abs(arg_0.b.d), countOneBits(var_0.ww)), u_input.a.x, !select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false)), arg_0.d.a), select(u_input.c, var_0.x, (true != all(vec2<bool>(true, true))) || true), arg_0.d);
    global0 = array<Struct_2, 15>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~arg_0.d.d.x, 32u)] * global3[_wgslsmith_index_u32(~4294967295u, 32u)]) * global3[_wgslsmith_index_u32(func_2(Struct_1(var_0.x, u_input.b.x, vec3<i32>(arg_0.c, var_1.d.a, arg_0.d.e.x), vec3<u32>(var_1.d.b, arg_0.b.b, var_1.d.b), vec2<i32>(0i, var_1.c)), ~51774u, vec3<bool>(true, true, true), -var_0.x).d.x, 32u)]))) + 663f);
    global2 = array<Struct_1, 4>();
    return StorageBuffer(var_0, 39525i, reverseBits(-_wgslsmith_sub_vec4_i32(vec4<i32>(-25014i, var_0.x, 1i, u_input.d), var_0)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<f32, 32>();
    var var_0 = global2[_wgslsmith_index_u32(u_input.b.x, 4u)];
    global2 = array<Struct_1, 4>();
    global0 = array<Struct_2, 15>();
    var var_1 = var_0.a;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + -1137f));
    global0 = array<Struct_2, 15>();
    let var_3 = u_input.b.x;
    let x = u_input.a;
    s_output = func_4(Struct_2(min(~(~u_input.b), select(~u_input.a, _wgslsmith_add_vec2_u32(vec2<u32>(var_0.d.x, u_input.b.x), var_0.d.xz), vec2<bool>(true, true))), global2[_wgslsmith_index_u32(61402u, 4u)], 37081i, Struct_1(~u_input.c, 29335u, func_1(vec2<bool>(false, true), vec3<u32>(u_input.a.x, 0u, 0u), _wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(u_input.a.x, 32u)]))), var_0.d, vec2<i32>(func_1(vec2<bool>(false, false), var_0.d, 442f).x, ~0i))));
}

