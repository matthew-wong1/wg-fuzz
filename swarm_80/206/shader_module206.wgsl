struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec2<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<bool>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
}

struct Struct_5 {
    a: vec4<u32>,
    b: f32,
    c: Struct_3,
    d: Struct_2,
    e: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29> = array<i32, 29>(i32(-2147483648), -32671i, 8329i, 2147483647i, i32(-2147483648), 2147483647i, -10802i, -11873i, 34548i, 0i, 5181i, 0i, 0i, i32(-2147483648), 2147483647i, 2147483647i, 0i, 1i, -1i, 42221i, -1064i, -1i, 39000i, 55950i, 6935i, 44452i, -3292i, -42165i, 2147483647i);

var<private> global1: array<bool, 15>;

var<private> global2: Struct_4;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<i32>) -> vec4<u32> {
    var var_0 = Struct_1(27111u, select(~reverseBits(_wgslsmith_mult_vec3_u32(arg_0.c.wxw, vec3<u32>(global2.c.x, arg_0.b.x, 68338u))), vec3<u32>(~global2.c.x, _wgslsmith_clamp_u32(global2.c.x, global2.b.x, global2.b.x), global2.b.x) ^ (arg_0.c.yzx & countOneBits(vec3<u32>(0u, 4294967295u, arg_0.b.x))), true), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(926f - 1630f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(323f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(630f, 1258f))))))), global1[_wgslsmith_index_u32(arg_0.b.x, 15u)]);
    let var_1 = Struct_5(~(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(39534u, global2.c.x, 4294967295u, var_0.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.c.x, 47239u, 43372u, 1u), vec4<u32>(global2.c.x, 4294967295u, arg_0.c.x, global2.b.x))) | firstTrailingBit(vec4<u32>(arg_0.b.x, global2.b.x, 93692u, 135596u))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1117f), -1492f)), Struct_3(~(_wgslsmith_div_i32(u_input.a, arg_0.d) & (i32(-1i) * -2147483647i))), Struct_2(Struct_1(abs(_wgslsmith_clamp_u32(0u, 539u, 0u)), vec3<u32>(arg_0.c.x, ~4294967295u, 60005u), vec2<f32>(var_0.c.x, -1174f), true), -2147483647i, select(select(!vec2<bool>(global1[_wgslsmith_index_u32(22585u, 15u)], var_0.d), vec2<bool>(global1[_wgslsmith_index_u32(21836u, 15u)], true), vec2<bool>(global1[_wgslsmith_index_u32(1u, 15u)], var_0.d)), vec2<bool>(any(vec2<bool>(true, true)), any(vec2<bool>(true, global1[_wgslsmith_index_u32(26764u, 15u)]))), all(!vec2<bool>(var_0.d, global1[_wgslsmith_index_u32(1u, 15u)])))), Struct_4(vec2<i32>(-1i) * -abs(global2.a), vec4<u32>(_wgslsmith_mult_u32(0u, var_0.a), 4294967295u, 0u, reverseBits(var_0.a) ^ countOneBits(34636u)), vec4<u32>(~(~4294967295u), max(4294967295u, 5022u) & global2.b.x, ~_wgslsmith_mod_u32(arg_0.b.x, arg_0.c.x), min(arg_0.b.x, ~1u)), _wgslsmith_clamp_i32(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(16315i, 41739i, -8930i, 1i) >> (vec4<u32>(global2.c.x, 4294967295u, var_0.b.x, global2.c.x) % vec4<u32>(32u)), ~vec4<i32>(29686i, 0i, arg_1.x, 16906i)), countOneBits(firstLeadingBit(-2147483647i)))));
    var_0 = Struct_1(~(~4294967295u), ~arg_0.c.wzw, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.d.a.c)), false);
    var var_2 = var_1.d.a;
    var_2 = Struct_1(reverseBits(reverseBits(var_1.d.a.b.x)), ~vec3<u32>(~(~0u), ~var_2.b.x, var_0.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_2.c, var_0.c)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.d.a.c.x, -213f) - vec2<f32>(1000f, var_2.c.x))))), select(!any(vec4<bool>(false, false, var_0.d, false)) || select(true, var_1.d.a.a <= 1u, true), true, true));
    return vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(var_2.b.zy), ~var_1.e.c.xx), _wgslsmith_mult_u32(reverseBits(23352u), _wgslsmith_dot_vec3_u32(var_1.d.a.b, global2.b.zwx))) ^ firstLeadingBit(var_2.b.x), 117205u, reverseBits(~13219u), var_0.b.x);
}

fn func_4(arg_0: Struct_4, arg_1: u32) -> vec4<u32> {
    var var_0 = Struct_5(~(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global2.b.x, arg_0.b.x, 17726u, 4294967295u), global2.c), global2.c) ^ ~vec4<u32>(global2.c.x, 4294967295u, global2.b.x, 0u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1137f))) - _wgslsmith_f_op_f32(round(656f))) - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-569f - -196f), _wgslsmith_f_op_f32(f32(-1f) * -112f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1560f * -158f))))), Struct_3(~global0[_wgslsmith_index_u32(16554u, 29u)] >> ((firstLeadingBit(global2.b.x) ^ arg_0.b.x) % 32u)), Struct_2(Struct_1(arg_1, abs(global2.c.zyy) << (~global2.b.yzx % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-234f, 425f)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(426f, -1000f), vec2<f32>(533f, -1947f)))), global1[_wgslsmith_index_u32(countOneBits(29131u), 15u)]), 1i, vec2<bool>(!all(vec4<bool>(global1[_wgslsmith_index_u32(arg_0.c.x, 15u)], true, global1[_wgslsmith_index_u32(global2.b.x, 15u)], false)), all(select(vec4<bool>(true, true, global1[_wgslsmith_index_u32(16547u, 15u)], global1[_wgslsmith_index_u32(arg_1, 15u)]), vec4<bool>(global1[_wgslsmith_index_u32(26506u, 15u)], global1[_wgslsmith_index_u32(34116u, 15u)], true, true), true)))), arg_0);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.a.c.x, 1292f, _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.b, var_0.b), _wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.b, 126f), _wgslsmith_f_op_f32(-var_0.b))))));
    let var_2 = var_0.b;
    var var_3 = arg_0;
    var_3 = Struct_4(firstLeadingBit(vec2<i32>(_wgslsmith_sub_i32(var_0.d.b, -14822i), var_3.a.x) << (max(var_0.d.a.b.zx | var_0.a.xz, ~vec2<u32>(4294967295u, global2.c.x)) % vec2<u32>(32u))), arg_0.b & (~arg_0.c << (vec4<u32>(14028u, var_0.a.x, ~2451u, ~4294967295u) % vec4<u32>(32u))), var_0.e.c, min(-firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(2147483647i, arg_0.a.x))), _wgslsmith_sub_i32(~(-50700i), _wgslsmith_add_i32(-10177i >> (arg_0.c.x % 32u), 2643i))));
    return vec4<u32>(global2.b.x ^ 4294967295u, arg_1, arg_0.c.x, arg_1);
}

fn func_2() -> vec4<i32> {
    var var_0 = Struct_5(vec4<u32>(~(~_wgslsmith_mult_u32(global2.b.x, 0u)), ~4294967295u, _wgslsmith_mod_u32(~1u, _wgslsmith_mult_u32(~global2.b.x, global2.b.x)), 0u >> (global2.c.x % 32u)), -746f, Struct_3(firstLeadingBit(1i)), Struct_2(Struct_1(0u, global2.b.xzw, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-338f, 957f) - vec2<f32>(853f, 505f))), true), global0[_wgslsmith_index_u32(global2.c.x, 29u)], !(!(!vec2<bool>(global1[_wgslsmith_index_u32(global2.b.x, 15u)], false)))), Struct_4(~(u_input.b.yy >> (global2.b.zz % vec2<u32>(32u))) >> ((~vec2<u32>(global2.c.x, global2.c.x) | global2.b.ww) % vec2<u32>(32u)), abs(abs(global2.b << (vec4<u32>(33801u, global2.b.x, global2.c.x, global2.b.x) % vec4<u32>(32u)))), func_4(Struct_4(u_input.b.ww, ~vec4<u32>(42395u, global2.b.x, global2.c.x, 4294967295u), func_3(Struct_4(global2.a, global2.b, global2.c, global0[_wgslsmith_index_u32(19680u, 29u)]), vec3<i32>(global0[_wgslsmith_index_u32(18325u, 29u)], global0[_wgslsmith_index_u32(global2.c.x, 29u)], -2147483647i)), u_input.a), 1u), -1i));
    var var_1 = firstLeadingBit(abs(vec3<i32>(~global2.d, global2.d, u_input.b.x & global0[_wgslsmith_index_u32(63217u, 29u)]))) & _wgslsmith_clamp_vec3_i32(u_input.b.xwz, -firstTrailingBit(~vec3<i32>(13535i, 18414i, -1i)), u_input.b.yzy);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.d.a.c.x, var_0.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) * var_0.d.a.c.x), var_0.d.a.c.x)) * 209f);
    let var_3 = ~(~vec3<i32>(-global2.a.x >> (0u % 32u), ~_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(global2.b.x, 29u)], var_1.x), var_0.c.a << (max(4294967295u, 8659u) % 32u)));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.b))), var_0.d.a.c.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(852f + -578f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.b, 871f, -1416f), vec3<f32>(1267f, -639f, 196f)))))));
    return u_input.b;
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_3, arg_3: i32) -> vec2<bool> {
    var var_0 = _wgslsmith_mod_vec4_i32(func_2(), ~vec4<i32>(arg_2.a, 53753i | firstTrailingBit(-1i), _wgslsmith_sub_i32(func_2().x, 89629i), 1i));
    var var_1 = vec4<u32>(global2.c.x, 1u, ~arg_0.x, 9719u);
    let var_2 = Struct_4(_wgslsmith_mod_vec2_i32(~(-var_0.zw), u_input.b.xz), ~_wgslsmith_sub_vec4_u32(func_3(Struct_4(global2.a, vec4<u32>(arg_1, var_1.x, var_1.x, 1u), global2.c, global2.a.x), abs(vec3<i32>(-8434i, -16085i, var_0.x))), select(global2.b, abs(vec4<u32>(global2.c.x, arg_1, global2.c.x, var_1.x)), select(vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 15u)], global1[_wgslsmith_index_u32(global2.b.x, 15u)], global1[_wgslsmith_index_u32(var_1.x, 15u)]), vec4<bool>(false, false, global1[_wgslsmith_index_u32(1u, 15u)], false), global1[_wgslsmith_index_u32(arg_1, 15u)]))), abs(~(global2.b << (vec4<u32>(arg_0.x, arg_1, arg_1, 12600u) % vec4<u32>(32u)))), 72483i);
    global2 = Struct_4(~global2.a, var_2.b, vec4<u32>(1984u, arg_1, 0u, _wgslsmith_mod_u32(abs(~58415u), abs(var_2.c.x))), arg_2.a);
    var var_3 = var_2;
    return select(select(!(!(!vec2<bool>(global1[_wgslsmith_index_u32(global2.b.x, 15u)], global1[_wgslsmith_index_u32(22179u, 15u)]))), select(vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_1.xwy, arg_0), 15u)], true), vec2<bool>(var_2.d >= var_0.x, global1[_wgslsmith_index_u32(~4294967295u, 15u)]), !global1[_wgslsmith_index_u32(1u, 15u)]), select(vec2<bool>(true, true), vec2<bool>(global1[_wgslsmith_index_u32(1459u, 15u)], select(global1[_wgslsmith_index_u32(var_1.x, 15u)], global1[_wgslsmith_index_u32(global2.c.x, 15u)], false)), select(!vec2<bool>(global1[_wgslsmith_index_u32(global2.c.x, 15u)], false), select(vec2<bool>(true, false), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 15u)], true), vec2<bool>(true, global1[_wgslsmith_index_u32(arg_0.x, 15u)])), global1[_wgslsmith_index_u32(var_1.x, 15u)]))), vec2<bool>(true, false), select(select(!vec2<bool>(global1[_wgslsmith_index_u32(arg_0.x, 15u)], false), select(!vec2<bool>(global1[_wgslsmith_index_u32(global2.b.x, 15u)], true), vec2<bool>(true, true), !vec2<bool>(false, global1[_wgslsmith_index_u32(0u, 15u)])), !(!vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 15u)]))), vec2<bool>(global1[_wgslsmith_index_u32(~1u, 15u)], !(!global1[_wgslsmith_index_u32(arg_1, 15u)])), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(24362u, ~global2.c.xxx, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1245f - 792f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(526f))))), !all(!vec4<bool>(false, global1[_wgslsmith_index_u32(global2.c.x, 15u)], global1[_wgslsmith_index_u32(0u, 15u)], false))), -1i, func_1(~firstLeadingBit(~global2.b.wxz), global2.b.x, Struct_3(global2.d), _wgslsmith_add_i32(-49524i, 0i)));
    var var_1 = Struct_1(global2.b.x, _wgslsmith_div_vec3_u32(~var_0.a.b >> (min(func_3(Struct_4(global2.a, vec4<u32>(1u, 1u, var_0.a.a, 39682u), global2.c, global0[_wgslsmith_index_u32(60939u, 29u)]), vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(12330u, 29u)], -58107i)).wxz, ~vec3<u32>(62521u, global2.b.x, var_0.a.b.x)) % vec3<u32>(32u)), firstLeadingBit(var_0.a.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(633f, -698f) + var_0.a.c), var_0.a.c)) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.c.x, 1603f)))))), global1[_wgslsmith_index_u32(50657u << (var_0.a.a % 32u), 15u)]);
    let var_2 = Struct_5(global2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-912f, 113f), _wgslsmith_f_op_f32(select(var_1.c.x, -1701f, var_1.d)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -527f))) - 129f), Struct_3(min(-33518i, var_0.b)), Struct_2(var_0.a, -(countOneBits(-17820i) & -global2.d), vec2<bool>(true, false)), Struct_4(func_2().yw, _wgslsmith_mult_vec4_u32(vec4<u32>(39052u, 0u, reverseBits(0u), var_1.a), select(~vec4<u32>(var_0.a.a, var_0.a.a, 45503u, var_1.b.x), _wgslsmith_clamp_vec4_u32(global2.c, vec4<u32>(1333u, 1u, var_1.b.x, var_0.a.b.x), global2.b), !vec4<bool>(true, var_1.d, false, true))), vec4<u32>(var_0.a.b.x, global2.c.x, ~(var_0.a.a >> (4294967295u % 32u)), ~(~19706u)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~global2.c, ~global2.b), 29u)] ^ 1i));
    var var_3 = Struct_5(var_2.e.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.x * var_2.d.a.c.x) + 311f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) + var_0.a.c.x)))), Struct_3(-2559i), Struct_2(var_0.a, -func_2().x, func_1(_wgslsmith_add_vec3_u32(var_2.e.c.xxw << (vec3<u32>(var_1.a, 94990u, global2.c.x) % vec3<u32>(32u)), vec3<u32>(global2.c.x, var_1.b.x, var_2.a.x)), 1u | _wgslsmith_mod_u32(0u, var_2.e.c.x), Struct_3(~global2.a.x), global2.d)), Struct_4(u_input.b.yw ^ vec2<i32>(1i, 0i), ~_wgslsmith_mult_vec4_u32(select(var_2.e.c, vec4<u32>(0u, 8097u, 15230u, 1u), var_2.d.c.x), global2.b), var_2.a, 40916i));
    let var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b - 726f)), var_3.b, 1515f, var_0.a.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_add_u32(5353u, var_0.a.a), 0u, firstLeadingBit(var_2.e.c.x)), var_2.a.zyz), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1472f), _wgslsmith_f_op_f32(-var_4.x)))), -1176f), u_input.b);
}

