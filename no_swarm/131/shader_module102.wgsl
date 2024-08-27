struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec3<bool>(true, false, true), 61378u), Struct_1(vec3<bool>(false, false, true), 30786u), Struct_1(vec3<bool>(true, true, false), 1u), Struct_1(vec3<bool>(true, true, true), 18724u), Struct_1(vec3<bool>(true, false, true), 0u), Struct_1(vec3<bool>(true, true, false), 1u), Struct_1(vec3<bool>(true, true, true), 4294967295u), Struct_1(vec3<bool>(false, true, true), 5220u), Struct_1(vec3<bool>(false, false, true), 6479u), Struct_1(vec3<bool>(true, false, false), 4294967295u), Struct_1(vec3<bool>(true, true, false), 75572u), Struct_1(vec3<bool>(false, false, true), 1u), Struct_1(vec3<bool>(false, false, true), 0u), Struct_1(vec3<bool>(false, false, false), 1u), Struct_1(vec3<bool>(true, false, true), 1u));

var<private> global1: vec4<bool> = vec4<bool>(false, false, true, true);

var<private> global2: array<vec4<i32>, 16> = array<vec4<i32>, 16>(vec4<i32>(i32(-2147483648), -40182i, 12841i, 2147483647i), vec4<i32>(-1i, -1716i, 44390i, 1i), vec4<i32>(50615i, -17545i, 2147483647i, -1i), vec4<i32>(73572i, 18059i, 0i, 48354i), vec4<i32>(-22020i, -16359i, -55882i, -72162i), vec4<i32>(44698i, -51787i, 23169i, 15673i), vec4<i32>(0i, 2147483647i, 1i, 0i), vec4<i32>(1009i, 44445i, 2147483647i, 0i), vec4<i32>(i32(-2147483648), -1i, 1i, -1i), vec4<i32>(0i, i32(-2147483648), 2629i, -6393i), vec4<i32>(i32(-2147483648), -11647i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-9998i, 17403i, 1i, 7820i), vec4<i32>(2147483647i, 12293i, -17386i, 42081i), vec4<i32>(-53075i, -1i, -8428i, 4071i), vec4<i32>(8521i, -1i, -65297i, -1i), vec4<i32>(25060i, 37514i, 69529i, -1i));

var<private> global3: array<vec4<i32>, 7> = array<vec4<i32>, 7>(vec4<i32>(-12226i, 21961i, 5253i, 16679i), vec4<i32>(34358i, -65529i, 2147483647i, -1i), vec4<i32>(22180i, -66113i, 18973i, 6485i), vec4<i32>(-350i, 2147483647i, 12215i, -29012i), vec4<i32>(1800i, -26399i, 0i, -1i), vec4<i32>(1i, -34724i, -43371i, 0i), vec4<i32>(2147483647i, -1i, i32(-2147483648), -35865i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec2<u32>) -> f32 {
    global3 = array<vec4<i32>, 7>();
    let var_0 = global0[_wgslsmith_index_u32(~select(u_input.d, arg_1.x | abs(21331u << (arg_3.x % 32u)), u_input.c.x > ~1u), 15u)];
    let var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(~u_input.a.x, -_wgslsmith_div_i32(_wgslsmith_sub_i32(arg_0.x, -25106i), min(arg_0.x, arg_0.x))), arg_0.wy);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-681f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(695f, _wgslsmith_f_op_f32(1254f - 1671f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-1471f - _wgslsmith_f_op_f32(429f * -1512f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(597f)), _wgslsmith_f_op_f32(step(714f, 1042f))))))));
    var var_3 = global0[_wgslsmith_index_u32(arg_3.x, 15u)];
    return _wgslsmith_f_op_f32(max(var_2.x, _wgslsmith_f_op_f32(trunc(-869f))));
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(func_3(min(abs(vec4<i32>(u_input.b.x, u_input.b.x, u_input.a.x, 2147483647i) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.e.x, u_input.c.x, u_input.e.x), vec4<u32>(32291u, u_input.d, arg_1, 1u)) % vec4<u32>(32u))), vec4<i32>(firstTrailingBit(_wgslsmith_add_i32(u_input.a.x, u_input.a.x)), -2147483647i, u_input.b.x, ~(-24069i))), vec2<u32>(u_input.c.x, ~30406u), arg_0, ~_wgslsmith_sub_vec2_u32(u_input.e, abs(u_input.e) | ~vec2<u32>(u_input.e.x, 33761u))));
    var var_1 = global0[_wgslsmith_index_u32(max(reverseBits(_wgslsmith_dot_vec2_u32(~u_input.c << (u_input.e % vec2<u32>(32u)), vec2<u32>(arg_1, arg_0.b) | ~vec2<u32>(arg_0.b, 4294967295u))), ~firstTrailingBit(4294967295u)), 15u)];
    global2 = array<vec4<i32>, 16>();
    var_1 = global0[_wgslsmith_index_u32(~((min(countOneBits(1u), min(0u, arg_0.b)) & ~var_1.b) | u_input.d), 15u)];
    let var_2 = firstLeadingBit(global2[_wgslsmith_index_u32(var_1.b, 16u)]) << (((vec4<u32>(u_input.e.x, 4294967295u, firstLeadingBit(4294967295u), _wgslsmith_sub_u32(arg_1, arg_0.b)) >> (_wgslsmith_add_vec4_u32(~vec4<u32>(arg_1, arg_1, 81403u, 14882u), abs(vec4<u32>(var_1.b, 88184u, arg_1, 0u))) % vec4<u32>(32u))) & (_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.b, arg_1, 12468u, arg_1), vec4<u32>(var_1.b, 4294967295u, 37764u, 4294967295u), vec4<u32>(52984u, 0u, 0u, 1u)), ~vec4<u32>(32909u, u_input.c.x, arg_1, arg_0.b), countOneBits(vec4<u32>(4294967295u, 12536u, 15359u, 13253u))) >> (vec4<u32>(var_1.b ^ arg_0.b, 0u, 16713u, u_input.c.x >> (arg_0.b % 32u)) % vec4<u32>(32u)))) % vec4<u32>(32u));
    return firstLeadingBit(-abs(var_2.x)) ^ -1i;
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: vec3<u32>) -> u32 {
    var var_0 = ~(reverseBits(arg_2.yz) & vec2<u32>(u_input.e.x, firstTrailingBit(arg_2.x) & u_input.e.x));
    var var_1 = global1.wy;
    let var_2 = var_0.x;
    global3 = array<vec4<i32>, 7>();
    var_0 = vec2<u32>(firstLeadingBit(var_0.x), arg_2.x);
    return ~(~0u);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>) -> vec3<u32> {
    var var_0 = true;
    let var_1 = vec2<u32>(~countOneBits(1u ^ arg_0.b), func_4(true, _wgslsmith_mult_i32(func_2(Struct_1(global1.zyw, arg_0.b), 1u), -2147483647i), reverseBits(~max(vec3<u32>(u_input.e.x, 1u, 4294967295u), vec3<u32>(arg_0.b, u_input.e.x, arg_0.b)))));
    global0 = array<Struct_1, 15>();
    let var_2 = Struct_1(vec3<bool>(true, true, true), ~(~39862u));
    let var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(arg_1.x * arg_1.x), arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -942f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, 696f, 364f) + vec4<f32>(-1023f, -686f, arg_1.x, 575f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -1016f, arg_1.x, arg_1.x)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x) - vec4<f32>(351f, -1274f, arg_1.x, arg_1.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, -1000f, 3165f, arg_1.x), vec4<f32>(434f, arg_1.x, 510f, -1479f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, 1151f) * vec4<f32>(arg_1.x, arg_1.x, 2015f, -311f))))));
    return select(vec3<u32>(~(~arg_0.b), ~_wgslsmith_dot_vec2_u32(var_1, u_input.e), reverseBits(~arg_0.b)) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d ^ var_1.x, 1u, 4294967295u), vec3<u32>(~u_input.d, var_2.b, ~4294967295u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, 0u, var_2.b), countOneBits(vec3<u32>(0u, 113583u, var_2.b)))) % vec3<u32>(32u)), ~(~_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_2.b, 64810u, var_2.b), vec3<u32>(var_2.b, 1u, 8131u)), firstLeadingBit(vec3<u32>(u_input.c.x, 6603u, 4294967295u)), vec3<u32>(60167u, arg_0.b, 4294967295u) << (vec3<u32>(arg_0.b, 4294967295u, 4294967295u) % vec3<u32>(32u)))), !arg_0.a.x | true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_add_u32(~u_input.c.x, _wgslsmith_mult_u32(4294967295u, u_input.d)), 4294967295u, u_input.d & ~1u), ~select(min(vec3<u32>(4294967295u, u_input.d, 53329u), vec3<u32>(4294967295u, u_input.c.x, 4294967295u)), vec3<u32>(1u, u_input.c.x, 0u), global1.x)), ~(vec3<u32>(~u_input.c.x, ~9683u, u_input.c.x) << (_wgslsmith_add_vec3_u32(func_1(global0[_wgslsmith_index_u32(1u, 15u)], vec2<f32>(-743f, 1399f)), vec3<u32>(u_input.d, u_input.e.x, u_input.d)) % vec3<u32>(32u))));
    global0 = array<Struct_1, 15>();
    global2 = array<vec4<i32>, 16>();
    var var_1 = (~(~(~1u)) >> (_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 96844u) & u_input.c, u_input.c), var_0) % 32u)) ^ firstTrailingBit(1u);
    var var_2 = global0[_wgslsmith_index_u32(~firstTrailingBit(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, var_0), u_input.c << (u_input.c % vec2<u32>(32u))), firstLeadingBit(~u_input.c.x))), 15u)];
    var var_3 = global0[_wgslsmith_index_u32(max(reverseBits(abs(var_0)), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_2.b) >> (u_input.e % vec2<u32>(32u)), u_input.e))), 15u)];
    let var_4 = Struct_1(select(!(!select(vec3<bool>(true, var_3.a.x, false), vec3<bool>(true, global1.x, false), false)), vec3<bool>(true, false, any(vec4<bool>(false, false, false, true))), true), ~0u);
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_4.b), 363f, vec3<u32>(u_input.c.x, var_2.b, _wgslsmith_mult_u32(1849u, max(10332u, 30155u))) >> (_wgslsmith_div_vec3_u32(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_3.b, var_4.b, 1u), vec3<u32>(var_3.b, 1u, var_4.b), vec3<u32>(var_0, var_3.b, 6306u)), vec3<u32>(u_input.c.x, 4294967295u, 4294967295u) >> (vec3<u32>(var_0, 45283u, var_2.b) % vec3<u32>(32u)), global1.x), vec3<u32>(var_2.b, _wgslsmith_mod_u32(26044u, u_input.d), _wgslsmith_dot_vec3_u32(vec3<u32>(var_4.b, var_3.b, 1u), vec3<u32>(0u, 1u, var_3.b)))) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1281f, -1645f, 1555f))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1184f, -289f, 590f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-452f, -416f, -732f), vec3<f32>(917f, -539f, 297f))), !vec3<bool>(var_2.a.x, global1.x, false))))));
}

