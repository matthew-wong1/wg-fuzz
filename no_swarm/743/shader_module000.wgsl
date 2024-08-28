struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec3<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
    c: vec3<bool>,
    d: i32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 7>;

var<private> global1: vec4<bool>;

var<private> global2: array<vec4<f32>, 25>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> u32 {
    global2 = array<vec4<f32>, 25>();
    let var_0 = u_input.c.x;
    global2 = array<vec4<f32>, 25>();
    global0 = array<vec2<u32>, 7>();
    global2 = array<vec4<f32>, 25>();
    return ~_wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(1u), var_0, _wgslsmith_add_u32(42439u, var_0)) & abs(vec3<u32>(1u, 56274u, 29123u) ^ vec3<u32>(u_input.a.x, 37817u, u_input.c.x)), u_input.a);
}

fn func_3() -> vec4<i32> {
    var var_0 = Struct_3(u_input.b, abs(i32(-1i) * -6351i));
    var var_1 = u_input.c.x;
    global0 = array<vec2<u32>, 7>();
    let var_2 = abs(countOneBits(vec3<u32>(~1u, u_input.d, ~u_input.a.x))) | firstTrailingBit(~select(u_input.a, u_input.c, !vec3<bool>(global1.x, true, global1.x)));
    let var_3 = Struct_2(Struct_1(abs(u_input.d), firstTrailingBit(_wgslsmith_sub_vec2_i32(-u_input.b.xy, vec2<i32>(u_input.b.x, -2147483647i))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-3297f, 1356f, -1195f))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1019f, 1641f, 2399f), vec3<f32>(1000f, 1102f, -1338f), global1.wyw))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 429f, -448f)))), _wgslsmith_mult_u32(_wgslsmith_sub_u32(var_2.x, 0u) >> (min(var_2.x, u_input.d) % 32u), u_input.c.x)), Struct_1(~(~u_input.c.x), -vec2<i32>(-u_input.e, -18015i), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(ceil(-633f)), _wgslsmith_f_op_f32(ceil(-812f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_add_u32(reverseBits(u_input.a.x), ~_wgslsmith_add_u32(0u, var_2.x))), vec4<i32>(~(-1i), firstTrailingBit(~0i), u_input.e, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.b.xz, u_input.b.zw >> (u_input.a.yz % vec2<u32>(32u))), -(u_input.b.xy & vec2<i32>(var_0.a.x, u_input.b.x)))), vec3<bool>(true, !global1.x, false), Struct_1(max((var_2.x << (36777u % 32u)) >> (1u % 32u), countOneBits(68927u)), reverseBits(countOneBits(vec2<i32>(u_input.e, var_0.a.x))), vec3<f32>(_wgslsmith_f_op_f32(1401f - _wgslsmith_div_f32(971f, -1510f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1327f)), _wgslsmith_div_f32(796f, _wgslsmith_f_op_f32(-690f + -197f))), 1u));
    return max(vec4<i32>(1i, _wgslsmith_mult_i32(1i, var_3.a.b.x), -_wgslsmith_mod_i32(26750i, u_input.b.x), 2147483647i) << (~(reverseBits(vec4<u32>(1u, u_input.d, 1u, 5379u)) & ~vec4<u32>(var_2.x, var_2.x, 67042u, 27176u)) % vec4<u32>(32u)), vec4<i32>(var_3.a.b.x, i32(-1i) * -var_3.a.b.x, var_3.c.x, firstLeadingBit(firstTrailingBit(abs(0i)))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: vec3<f32>) -> Struct_3 {
    global2 = array<vec4<f32>, 25>();
    global0 = array<vec2<u32>, 7>();
    let var_0 = vec2<u32>(func_2(), 4294967295u);
    global0 = array<vec2<u32>, 7>();
    var var_1 = Struct_3(abs(_wgslsmith_div_vec4_i32(select(func_3(), vec4<i32>(-2147483647i, 6971i, -43182i, 12175i), vec4<bool>(false, global1.x, global1.x, global1.x)), vec4<i32>(max(u_input.e, -2147483647i), firstLeadingBit(arg_0.x), _wgslsmith_mult_i32(24749i, -22462i), _wgslsmith_mod_i32(20648i, -23597i)))), u_input.b.x);
    return Struct_3(u_input.b & ~(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, u_input.e, var_1.a.x, 1i), vec4<i32>(46358i, -7921i, 43556i, -5559i)) | abs(vec4<i32>(arg_0.x, var_1.a.x, var_1.b, var_1.a.x))), arg_0.x);
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    global0 = array<vec2<u32>, 7>();
    global0 = array<vec2<u32>, 7>();
    var var_0 = Struct_2(arg_2, Struct_1(arg_2.d, arg_2.b << (~_wgslsmith_sub_vec2_u32(global0[_wgslsmith_index_u32(arg_2.d, 7u)], vec2<u32>(0u, arg_2.a)) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(sign(arg_2.c)), 17325u), vec4<i32>(u_input.e, 70236i, ~(~arg_2.b.x) ^ ~firstLeadingBit(2147483647i), -2147483647i), !select(select(!global1.wxw, select(global1.wzy, vec3<bool>(true, false, true), vec3<bool>(global1.x, global1.x, true)), vec3<bool>(global1.x, global1.x, global1.x)), vec3<bool>(!global1.x, select(true, global1.x, false), -1260f > arg_2.c.x), vec3<bool>(true, true, true)), Struct_1(50707u, _wgslsmith_mult_vec2_i32(vec2<i32>(abs(u_input.b.x), arg_2.b.x), ~vec2<i32>(arg_1.a.x, arg_1.a.x)), arg_2.c, _wgslsmith_div_u32(reverseBits(reverseBits(1u)), arg_2.d)));
    var_0 = Struct_2(Struct_1(var_0.e.d, vec2<i32>(13689i >> (u_input.c.x % 32u), _wgslsmith_sub_i32(0i, arg_2.b.x)) | select(vec2<i32>(-1i, -32949i) & arg_1.a.zw, reverseBits(u_input.b.zy), !vec2<bool>(global1.x, var_0.d.x)), arg_2.c, arg_2.d), Struct_1(0u, vec2<i32>(firstLeadingBit(u_input.e << (45881u % 32u)), 1i), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1677f, _wgslsmith_f_op_f32(step(arg_0, 1722f)), _wgslsmith_f_op_f32(step(arg_0, -664f))), arg_2.c)), max(4294967295u & (u_input.c.x << (arg_2.d % 32u)), min(0u, var_0.b.d) >> ((arg_2.a >> (arg_2.a % 32u)) % 32u))), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.e.b.x, 1i, ~_wgslsmith_mult_i32(var_0.b.b.x, arg_1.a.x), var_0.a.b.x), vec4<i32>(u_input.b.x, min(1i, 1i), _wgslsmith_sub_i32(arg_2.b.x, arg_1.b << (1u % 32u)), -2669i)), vec3<bool>(!var_0.d.x, true, false), var_0.e);
    var_0 = Struct_2(var_0.a, var_0.b, reverseBits(u_input.b & vec4<i32>(_wgslsmith_sub_i32(2147483647i, arg_2.b.x), 2147483647i << (var_0.a.d % 32u), 0i, _wgslsmith_add_i32(u_input.e, 1i))), vec3<bool>(_wgslsmith_f_op_f32(-893f * arg_0) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -926f) * _wgslsmith_f_op_f32(f32(-1f) * -329f)), var_0.d.x, global1.x), arg_2);
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1889f)), func_1(reverseBits(max(_wgslsmith_mult_vec3_i32(u_input.b.xyy, u_input.b.xyx), vec3<i32>(u_input.b.x, 1i, 12464i) << (u_input.a % vec3<u32>(32u)))), ~(~(~global0[_wgslsmith_index_u32(u_input.d, 7u)])), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(875f, -2123f, -593f))), vec3<f32>(990f, 649f, 870f))) * vec3<f32>(-1000f, _wgslsmith_f_op_f32(-375f + 138f), -753f))), Struct_1(~1u, vec2<i32>(u_input.e << (16691u % 32u), u_input.e), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-981f, -1000f, 348f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2001f, 334f, -192f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(240f, -1598f, 1292f), vec3<f32>(-658f, 277f, -1166f), global1.yww)))), _wgslsmith_div_u32(~u_input.d, 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1087f))));
    let var_1 = Struct_4(true, func_4(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(209f, var_0.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(864f, var_0.c.x)) - func_4(var_0.c.x, Struct_3(u_input.b, var_0.b.x), Struct_1(u_input.c.x, var_0.b, vec3<f32>(var_0.c.x, 953f, var_0.c.x), 1052u), var_0.c.x).c.x), global1.x)), func_1(_wgslsmith_sub_vec3_i32(u_input.b.zyy, u_input.b.wwz), vec2<u32>(firstLeadingBit(u_input.a.x), 4294967295u), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, -138f, 1439f) * var_0.c)), Struct_1(1u, countOneBits(u_input.b.zw), func_4(var_0.c.x, Struct_3(u_input.b, -2147483647i), Struct_1(4294967295u, u_input.b.wz, vec3<f32>(-764f, 1000f, -1615f), 4294967295u), _wgslsmith_div_f32(var_0.c.x, 1879f)).c, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.c.x - 1339f))))), Struct_2(func_4(-1150f, Struct_3(vec4<i32>(var_0.b.x, var_0.b.x, u_input.e, u_input.b.x), ~u_input.b.x), Struct_1(~4294967295u, vec2<i32>(31820i, u_input.b.x), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-722f, var_0.c.x, 1000f))), 18311u), -542f), func_4(-1000f, Struct_3(~vec4<i32>(-1i, var_0.b.x, 31073i, var_0.b.x), -1i), func_4(_wgslsmith_f_op_f32(var_0.c.x * 1551f), Struct_3(u_input.b, -39304i), func_4(var_0.c.x, Struct_3(u_input.b, var_0.b.x), Struct_1(1u, var_0.b, vec3<f32>(-1000f, 262f, -1000f), var_0.d), -1038f), _wgslsmith_f_op_f32(-505f + var_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(962f + -570f))), u_input.b, select(global1.zwz, global1.yxz, global1.x), func_4(_wgslsmith_div_f32(-634f, _wgslsmith_f_op_f32(var_0.c.x + -695f)), func_1(u_input.b.yxw, reverseBits(vec2<u32>(var_0.a, 47455u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1220f, var_0.c.x, -234f))), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d, 0u, u_input.c.x), u_input.c), vec2<i32>(u_input.e, 7408i), var_0.c, 0u), _wgslsmith_f_op_f32(f32(-1f) * -830f))));
    var var_2 = -select(29683i, min(20967i, _wgslsmith_mod_i32(_wgslsmith_mult_i32(var_1.b.b.x, 61221i), 2147483647i)), ~u_input.a.x > (85295u >> (u_input.d % 32u)));
    var var_3 = !(236f >= _wgslsmith_f_op_f32(abs(var_0.c.x)));
    let var_4 = select(global1.zx, var_1.c.d.yy, vec2<bool>(!var_1.c.d.x, false));
    let var_5 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(-267f - _wgslsmith_f_op_f32(var_1.b.c.x * -194f)), _wgslsmith_mod_i32(~(-27676i), -10319i) < _wgslsmith_mod_i32(~var_1.b.b.x, firstTrailingBit(47368i)))), -733f, _wgslsmith_f_op_f32(-var_1.b.c.x));
    var var_6 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -557f) + var_1.b.c.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(var_5.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.b.c.x - -538f) + var_5.x), func_4(_wgslsmith_f_op_f32(floor(707f)), Struct_3(var_1.c.c, var_1.c.e.b.x), var_1.b, 558f).c.x))) - _wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(~firstTrailingBit(64447u), 25u)] + vec4<f32>(2081f, -700f, var_5.x, var_1.b.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(99856u, var_1.c.e.a), 25u)], _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.c.x * 295f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_5.x - _wgslsmith_f_op_f32(min(var_0.c.x, var_1.b.c.x))))), (!var_1.a && global1.x) & select(true, true, any(global1.yxz)))));
}

