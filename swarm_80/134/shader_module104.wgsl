struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: f32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: vec4<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(87153i, -12524i, 3410i);

var<private> global1: vec4<i32>;

var<private> global2: array<vec2<i32>, 5> = array<vec2<i32>, 5>(vec2<i32>(19155i, 2147483647i), vec2<i32>(8913i, -37441i), vec2<i32>(28521i, 40491i), vec2<i32>(-6969i, -35716i), vec2<i32>(2147483647i, -29668i));

var<private> global3: array<u32, 11>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec3<i32> {
    global2 = array<vec2<i32>, 5>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1261f, -582f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-629f, 1452f, 306f) - vec3<f32>(1269f, -487f, -202f))))), select(-(vec3<i32>(-1i) * -vec3<i32>(global1.x, global0.x, 5922i)), vec3<i32>(-2147483647i, global1.x, global1.x) & reverseBits(global1.wyy), all(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(false, true), true))), firstTrailingBit(-vec4<i32>(30981i, global0.x, 46963i, 21910i) >> (vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(0u, 11u)], 11u)], 11u)], 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(94799u, 11463u, u_input.b, 38239u), vec4<u32>(4294967295u, u_input.b, 879u, 13685u)), countOneBits(4294967295u)) % vec4<u32>(32u))), -1141f, select(vec3<bool>(all(vec3<bool>(true, true, true)), true, true), vec3<bool>(all(vec3<bool>(false, false, true)) || any(vec2<bool>(false, false)), true, !any(vec4<bool>(false, false, true, true))), !select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), false)));
    global0 = vec3<i32>(33206i, firstTrailingBit(~(-2147483647i) | select(global0.x, 716i, false)), var_0.c.x) | abs(-(~_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.c.x, 248i, var_0.b.x), vec3<i32>(global1.x, -40101i, 14150i), vec3<i32>(global0.x, var_0.b.x, global0.x))));
    global3 = array<u32, 11>();
    var var_1 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.a.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(290f * 1724f), _wgslsmith_f_op_f32(sign(-835f)))), 997f), vec3<i32>(~var_0.b.x | var_0.c.x, -(var_0.b.x ^ -2147483647i), 1i), vec4<i32>(~var_0.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 16960i), ~var_0.c.yx), countOneBits(global0.x), var_0.c.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(911f, -877f)), _wgslsmith_f_op_f32(min(var_0.a.x, -216f))))), var_0.e), _wgslsmith_dot_vec4_u32(vec4<u32>(max(1u, firstTrailingBit(81168u)), reverseBits(global3[_wgslsmith_index_u32(countOneBits(0u), 11u)]), u_input.a.x, 0u), vec4<u32>(26453u << (u_input.b % 32u), ~5780u, ~global3[_wgslsmith_index_u32(19401u, 11u)], 0u) ^ vec4<u32>(_wgslsmith_mod_u32(19659u, global3[_wgslsmith_index_u32(4294967295u, 11u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 31936u, 39547u), vec3<u32>(1u, 1u, global3[_wgslsmith_index_u32(72010u, 11u)])), 0u << (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 11u)], 11u)] % 32u), ~1u)), global1.yyw, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_0.d, var_0.d)), min(global1.zzw, global1.xxw), var_0.c >> (firstLeadingBit(vec4<u32>(u_input.a.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 11u)], 11u)], 25338u, 1u)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(ceil(var_0.a.x)), !var_0.e), var_0);
    return select(-var_0.b, -var_0.b, any(select(var_0.e.zz, var_1.e.e.yy, true)) != select(false, true, var_0.e.x)) & select(vec3<i32>(-(~var_1.a.c.x), countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(51184i, global0.x, 39224i, 10727i), vec4<i32>(global0.x, -11196i, var_0.c.x, -1i))), global0.x), var_1.c, !select(!var_1.d.e, vec3<bool>(var_0.e.x, true, var_0.e.x), true));
}

fn func_2() -> i32 {
    let var_0 = vec4<i32>(0i, -7425i, 0i, 1i);
    var var_1 = vec2<u32>(0u, global3[_wgslsmith_index_u32(~((_wgslsmith_add_u32(0u, global3[_wgslsmith_index_u32(4294967295u, 11u)]) >> (u_input.a.x % 32u)) >> (firstTrailingBit(~83942u) % 32u)), 11u)]);
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(541f, 965f, 562f) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, 1000f, -850f), vec3<f32>(-249f, 1036f, 773f))))))), -func_3(), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global1.x, global1.x, 14338i, 11993i) & _wgslsmith_mod_vec4_i32(var_0, var_0), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, var_0.x, global0.x, 2147483647i), -vec4<i32>(-24652i, 25783i, -20298i, global1.x))), _wgslsmith_mod_vec4_i32(var_0, abs(var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1634f + -398f)) * -466f)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, any(vec2<bool>(false, false)), global1.x <= var_0.x), _wgslsmith_add_i32(-2147483647i, global1.x) >= ~global0.x), vec3<bool>(false, all(vec3<bool>(true, false, true)), -global1.x != global0.x)));
    var var_3 = Struct_3(vec4<bool>(!(!any(var_2.e.zy)), var_2.e.x, any(var_2.e.xz), var_2.e.x), firstTrailingBit(~16758u), Struct_1(var_2.a, firstLeadingBit(vec3<i32>(2147483647i, var_2.c.x, var_2.b.x) << (min(u_input.a, u_input.a) % vec3<u32>(32u))), ~var_0, var_2.d, vec3<bool>(false, var_2.e.x, var_2.e.x)));
    var var_4 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-var_3.c.a), global1.yyx, _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global1.x, var_2.c.x, -29504i, -37206i) & var_2.c, var_3.c.c | var_3.c.c), vec4<i32>(var_3.c.c.x, firstLeadingBit(-1i), -var_0.x, -23367i)), -1030f, vec3<bool>(true, true, true)), max(1u, 24161u), vec3<i32>(_wgslsmith_dot_vec2_i32(var_0.wx, ~abs(vec2<i32>(global0.x, -1i))), ~var_0.x, firstTrailingBit(_wgslsmith_mod_i32(var_0.x, global1.x) ^ var_3.c.b.x)), var_3.c, var_3.c);
    return 14764i;
}

fn func_1() -> Struct_2 {
    let var_0 = !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, select(false, false, true)), vec3<bool>(global1.x != 20154i, all(vec2<bool>(true, true)), true), vec3<bool>(any(vec4<bool>(false, true, false, false)), true, 34912i == global0.x)));
    global1 = _wgslsmith_add_vec4_i32(-(~(~vec4<i32>(global0.x, -2289i, global0.x, -24388i))), vec4<i32>(~global0.x, func_2(), _wgslsmith_sub_i32(1i, _wgslsmith_mult_i32(~(-1i), -global1.x)), 1i));
    var var_1 = ~firstTrailingBit(select(~select(vec4<i32>(global1.x, global1.x, 6835i, 2147483647i), vec4<i32>(global1.x, 0i, -38695i, 1i), false), firstLeadingBit(~vec4<i32>(2147483647i, global0.x, global1.x, global1.x)), false));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(159f, _wgslsmith_f_op_f32(abs(-302f)), _wgslsmith_f_op_f32(1312f * _wgslsmith_f_op_f32(613f - 625f))) * vec3<f32>(_wgslsmith_f_op_f32(floor(-152f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1695f) * _wgslsmith_f_op_f32(max(815f, 870f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -145f), 1635f)))), vec3<i32>(-9171i << (abs(u_input.a.x) % 32u), ~_wgslsmith_add_i32(_wgslsmith_clamp_i32(-54476i, 2147483647i, 1i), _wgslsmith_add_i32(-11804i, 9416i)), firstLeadingBit(max(global1.x, reverseBits(1i)))), ~vec4<i32>(global1.x, ~(-26532i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 36224i, -35458i, -2147483647i), vec4<i32>(2147483647i, 0i, 51401i, var_1.x)), -3546i), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -476f))), var_0);
    let var_3 = u_input.b;
    return Struct_2(Struct_1(var_2.a, vec3<i32>(min(var_1.x, -10432i), var_1.x, i32(-1i) * -var_1.x), (select(var_2.c, vec4<i32>(-41289i, var_2.c.x, -11952i, 60540i), var_2.e.x) ^ var_2.c) & -var_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(758f))), var_0), ~u_input.a.x, global1.xzw, var_2, Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(609f, var_2.d, 1000f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2.d, var_2.a.x, var_2.a.x)))), var_0)), vec3<i32>(2147483647i, global1.x, _wgslsmith_clamp_i32(global1.x, 27406i, -9241i)), ~select(_wgslsmith_div_vec4_i32(var_2.c, vec4<i32>(global0.x, 20638i, var_1.x, -1i)), var_2.c & vec4<i32>(-2147483647i, -1i, var_2.c.x, -1i), select(true, var_2.e.x, var_2.e.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) - _wgslsmith_f_op_f32(step(-1246f, 168f))) * _wgslsmith_f_op_f32(trunc(var_2.d))), var_2.e));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<i32>(-1i) * -vec3<i32>(global1.x, ~(~(-1i)), _wgslsmith_sub_i32(-global1.x, global1.x));
    let var_0 = func_1();
    let var_1 = vec3<u32>(countOneBits(global3[_wgslsmith_index_u32(63737u, 11u)]), ~var_0.b, ~1u);
    let var_2 = vec2<bool>(all(!(!(!vec4<bool>(false, var_0.e.e.x, var_0.e.e.x, var_0.a.e.x)))), false);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1234f))) - _wgslsmith_f_op_f32(-var_0.a.d)) + _wgslsmith_f_op_f32(floor(357f))) - var_0.a.a.x);
    var var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) - _wgslsmith_f_op_f32(1032f * var_3))), -507f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a.a.x, 727f))), _wgslsmith_div_f32(var_3, 1067f)));
    let var_5 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(var_0.b, _wgslsmith_clamp_u32(var_0.b, var_1.x, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~1u, 1u), 11u)])), ~83310u & _wgslsmith_mod_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(abs(u_input.b), 11u)] ^ global3[_wgslsmith_index_u32(87038u << (var_0.b % 32u), 11u)], 11u)], ~global3[_wgslsmith_index_u32(169u, 11u)] << (var_1.x % 32u)), ~min(~u_input.b, var_1.x) & var_0.b), 5u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d.a, 1u, _wgslsmith_f_op_f32(ceil(var_0.e.d)), vec4<u32>(select(~u_input.a.x, 65054u, select(var_0.a.e.x, var_0.a.e.x, var_0.e.e.x)), ~_wgslsmith_add_u32(~0u, var_0.b), global3[_wgslsmith_index_u32(~72401u, 11u)], _wgslsmith_sub_u32(reverseBits(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~u_input.a.x, 11u)], 11u)]), 35679u)), vec4<i32>(-31998i, ~global1.x, i32(-1i) * -var_5.x, 2147483647i));
}

