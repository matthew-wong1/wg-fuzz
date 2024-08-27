struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(false, vec2<u32>(0u, 4294967295u), vec4<u32>(31245u, 53791u, 65116u, 0u)), Struct_3(true, vec2<u32>(26378u, 4294967295u), vec4<u32>(0u, 22925u, 0u, 1u)), Struct_3(true, vec2<u32>(13007u, 29340u), vec4<u32>(28570u, 40059u, 8479u, 24935u)), Struct_3(false, vec2<u32>(0u, 44462u), vec4<u32>(48913u, 18166u, 0u, 0u)), Struct_3(true, vec2<u32>(21082u, 91262u), vec4<u32>(79723u, 154589u, 3431u, 0u)), Struct_3(false, vec2<u32>(33305u, 46348u), vec4<u32>(28111u, 1u, 0u, 44659u)), Struct_3(false, vec2<u32>(45570u, 33514u), vec4<u32>(1u, 48226u, 4294967295u, 0u)), Struct_3(false, vec2<u32>(84390u, 0u), vec4<u32>(1u, 10158u, 1u, 1u)), Struct_3(false, vec2<u32>(19964u, 4294967295u), vec4<u32>(12721u, 4294967295u, 0u, 0u)));

var<private> global1: u32 = 37146u;

var<private> global2: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(-1i, vec2<u32>(4294967295u, 9797u)), Struct_2(i32(-2147483648), vec2<u32>(23297u, 0u)), Struct_2(0i, vec2<u32>(0u, 4294967295u)), Struct_2(-16424i, vec2<u32>(1u, 1u)), Struct_2(-13816i, vec2<u32>(57889u, 4294967295u)), Struct_2(-1i, vec2<u32>(8432u, 0u)), Struct_2(-1i, vec2<u32>(23597u, 57159u)), Struct_2(43007i, vec2<u32>(16204u, 58124u)), Struct_2(0i, vec2<u32>(41963u, 0u)), Struct_2(-3378i, vec2<u32>(0u, 0u)), Struct_2(1i, vec2<u32>(61732u, 0u)), Struct_2(-118046i, vec2<u32>(4294967295u, 0u)), Struct_2(0i, vec2<u32>(1u, 0u)), Struct_2(1i, vec2<u32>(23229u, 39546u)), Struct_2(26612i, vec2<u32>(33702u, 0u)), Struct_2(21670i, vec2<u32>(22623u, 4294967295u)), Struct_2(2147483647i, vec2<u32>(4294967295u, 0u)));

var<private> global3: Struct_2 = Struct_2(0i, vec2<u32>(1694u, 12659u));

var<private> global4: Struct_2 = Struct_2(i32(-2147483648), vec2<u32>(2369u, 37828u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec3<u32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(675f + -1000f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1665f))))), 590f)));
    var var_1 = vec4<i32>(reverseBits(_wgslsmith_sub_i32(14896i ^ arg_0.a.x, ~(u_input.b.x << (55663u % 32u)))), ~arg_0.a.x >> (4294967295u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(~(~u_input.b.x), _wgslsmith_mult_i32(~global4.a, max(arg_1.a.x, u_input.b.x)), ~(-56546i) << (0u % 32u), u_input.b.x), ~(~vec4<i32>(global4.a, global4.a, 42715i, 2147483647i))), 2147483647i);
    global3 = global2[_wgslsmith_index_u32(u_input.a.x & _wgslsmith_div_u32(28518u >> (1u % 32u), 114368u), 17u)];
    let var_2 = Struct_2((_wgslsmith_mod_i32(_wgslsmith_div_i32(var_1.x, 5889i), 1i) ^ min(global3.a & 7895i, 2147483647i)) & firstLeadingBit(arg_1.a.x), ~vec2<u32>(11201u, 64029u));
    global0 = array<Struct_3, 9>();
    return global3.a;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: bool) -> f32 {
    let var_0 = any(vec3<bool>(arg_0.x >= 1i, any(select(vec3<bool>(false, arg_2, arg_2), vec3<bool>(arg_2, false, false), true)), false)) || arg_2;
    let var_1 = arg_0.zy;
    global2 = array<Struct_2, 17>();
    global3 = Struct_2(-1i | min(u_input.b.x, arg_0.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(global4.b.x, 4294967295u, global3.b.x), u_input.a) % 32u)), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(~global4.b, ~u_input.a.zx), _wgslsmith_div_vec2_u32(~global4.b, u_input.a.zy)));
    var var_2 = Struct_2(_wgslsmith_div_i32(-14648i, func_3(Struct_1(u_input.b.zy, global3.b.x >> (4294967295u % 32u), abs(0u)), Struct_1(countOneBits(u_input.b.zx), min(4844u, global3.b.x), 40222u), vec3<bool>(-1000f == arg_1.x, false, arg_1.x >= 656f), u_input.a)), global3.b);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.x - arg_1.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.x - 2511f)))));
}

fn func_4(arg_0: f32, arg_1: vec4<f32>, arg_2: i32) -> i32 {
    global3 = Struct_2(1i, select(countOneBits(_wgslsmith_mult_vec2_u32(abs(u_input.a.zx), _wgslsmith_div_vec2_u32(global3.b, vec2<u32>(global3.b.x, 4294967295u)))), u_input.a.zx, (true | (4099u <= u_input.a.x)) || false));
    global1 = _wgslsmith_dot_vec3_u32(firstLeadingBit(~_wgslsmith_clamp_vec3_u32(u_input.a, u_input.a, vec3<u32>(55186u, global4.b.x, u_input.a.x)) | ~u_input.a), vec3<u32>(~(1u << (u_input.a.x % 32u)), 110413u, ~(0u | global4.b.x)) & ~(~vec3<u32>(27342u, 1u, global4.b.x)));
    let var_0 = vec2<i32>(62130i, _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(u_input.b.x, -1i, global3.a, global4.a)), select(min(vec4<i32>(2147483647i, 1i, arg_2, -1i), vec4<i32>(global4.a, 6971i, arg_2, -3026i)), vec4<i32>(global4.a, global3.a, 0i, u_input.b.x), vec4<bool>(true, false, true, true))) << (_wgslsmith_mod_u32(u_input.a.x, 3046u) % 32u));
    var var_1 = vec3<i32>(_wgslsmith_clamp_i32(firstTrailingBit(-50487i), ~global4.a, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2, 1i), _wgslsmith_sub_vec2_i32(vec2<i32>(45609i, 2147483647i), vec2<i32>(global3.a, 1i))) & _wgslsmith_dot_vec2_i32(vec2<i32>(-10251i, arg_2), vec2<i32>(var_0.x, 1i) & u_input.b.xy)), 1682i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(select(~vec4<i32>(global4.a, global4.a, 2147483647i, var_0.x), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, u_input.b.x, global4.a, 12486i), vec4<i32>(1i, var_0.x, u_input.b.x, u_input.b.x)), all(vec2<bool>(true, false))), vec4<i32>(24440i, 7824i, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(16371i, 2147483647i, global3.a), vec3<i32>(global3.a, -37663i, 2147483647i))), max(_wgslsmith_div_vec4_i32(vec4<i32>(arg_2, -12510i, global3.a, 50400i), vec4<i32>(0i, -1i, global4.a, 0i)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, arg_2, u_input.b.x), vec4<i32>(u_input.b.x, 3531i, 0i, 2147483647i)))), -(~(-vec4<i32>(u_input.b.x, arg_2, 36671i, 1i)))));
    var_1 = u_input.b;
    return -33628i;
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = ~(~(73021u >> (global4.b.x % 32u)) << (38737u % 32u));
    global2 = array<Struct_2, 17>();
    global4 = Struct_2(func_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(-u_input.b, vec4<f32>(arg_0, -411f, arg_0, arg_0), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-312f * -802f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-786f, arg_0, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0)) * vec4<f32>(-755f, 124f, _wgslsmith_f_op_f32(1000f * -1944f), _wgslsmith_f_op_f32(-1000f * 1058f))), min(0i, -1i)), _wgslsmith_div_vec2_u32(select(~u_input.a.yx, select(vec2<u32>(51086u, 4294967295u), u_input.a.zz, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false)), firstLeadingBit(_wgslsmith_mod_vec2_u32(u_input.a.yx, countOneBits(vec2<u32>(1u, u_input.a.x))))));
    let var_1 = 2147483647i;
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, _wgslsmith_f_op_f32(arg_0 - -409f), _wgslsmith_f_op_f32(-arg_0), arg_0)))));
    return Struct_2(-5198i, ~_wgslsmith_mult_vec2_u32(~(~global3.b), ~abs(global4.b)));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(arg_2.zzy));
    var var_1 = vec2<f32>(-2080f, arg_2.x);
    global2 = array<Struct_2, 17>();
    var var_2 = arg_0.a;
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, ~4294967295u), ~(arg_1.ww | vec2<u32>(22189u, u_input.a.x))), ~(~_wgslsmith_mod_u32(u_input.a.x, global3.b.x))) << (~reverseBits(arg_0.b.x) % 32u), 9u)];
    return Struct_1(u_input.b.zz, _wgslsmith_sub_u32(var_3.c.x, ~_wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u, u_input.a.x), _wgslsmith_sub_u32(arg_0.b.x, arg_0.b.x))), ~_wgslsmith_sub_u32(1u, 0u) & global4.b.x);
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: vec3<f32>, arg_3: Struct_1) -> f32 {
    var var_0 = vec2<i32>(_wgslsmith_mod_i32(-52060i, func_4(139f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, 1000f, -642f, arg_2.x)), vec4<f32>(-765f, -1371f, 130f, arg_2.x)), 2147483647i)), arg_3.a.x);
    global2 = array<Struct_2, 17>();
    var var_1 = func_1(363f);
    var var_2 = firstLeadingBit(-vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global3.a, var_1.a, -1i, u_input.b.x), vec4<i32>(global3.a, 18639i, var_0.x, 0i)), ~42690i, -1i, var_0.x) >> (vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, arg_1, u_input.a.x), _wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(0u, u_input.a.x, arg_1))), abs(~u_input.a.x), ~(~1u), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(global4.b, vec2<u32>(1u, arg_3.c)), _wgslsmith_div_vec2_u32(u_input.a.zy, vec2<u32>(arg_0.c, arg_1)))) % vec4<u32>(32u)));
    var var_3 = u_input.b;
    return 465f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-316f, -639f, true)))) + _wgslsmith_f_op_f32(trunc(1000f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_6(func_5(func_1(-994f), _wgslsmith_div_vec4_u32(vec4<u32>(global4.b.x, global3.b.x, global4.b.x, global4.b.x), vec4<u32>(9323u, 1u, 30430u, 446u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(606f, -584f, 595f, -1571f))), firstLeadingBit(max(63936u, u_input.a.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(505f, -539f, 299f))) - vec3<f32>(453f, 1000f, -1071f)), func_5(func_1(-948f), ~vec4<u32>(u_input.a.x, 4294967295u, global3.b.x, global4.b.x), vec4<f32>(683f, -1000f, 1208f, -1519f)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1196f) - _wgslsmith_f_op_f32(select(-2519f, -1363f, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -961f), 837f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(381f - 974f))))), _wgslsmith_f_op_f32(ceil(-262f)));
    global3 = global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_add_u32(u_input.a.x, 1u)), 17u)];
    let var_1 = _wgslsmith_clamp_i32(firstTrailingBit(-30274i | -max(global4.a, 38510i)), _wgslsmith_dot_vec2_i32(-u_input.b.zz, u_input.b.zx), -global3.a);
    var var_2 = select(vec4<bool>(any(vec2<bool>(true, false)) && (u_input.a.x > (43666u >> (global4.b.x % 32u))), true, -435f > _wgslsmith_f_op_f32(round(268f)), !(!any(vec3<bool>(false, true, false)))), select(!select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false)), !vec4<bool>(false, all(vec4<bool>(true, true, true, true)), -14549i <= global3.a, -308f > var_0.x), select(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), false), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), true), vec4<bool>(true, global3.b.x < global3.b.x, global4.b.x != u_input.a.x, u_input.b.x != -1i))), (_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-741f, -1034f))) < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1295f), _wgslsmith_f_op_f32(var_0.x - var_0.x)))) & true);
    let var_3 = _wgslsmith_clamp_vec4_u32(vec4<u32>(reverseBits(~1u) ^ ((global3.b.x >> (u_input.a.x % 32u)) >> (17619u % 32u)), _wgslsmith_add_u32(~min(global3.b.x, u_input.a.x), 27281u), 1u, _wgslsmith_add_u32(min(4294967295u, 0u), global3.b.x)), select(vec4<u32>(21718u, min(4294967295u, global4.b.x), u_input.a.x, 28460u), ~vec4<u32>(_wgslsmith_mod_u32(10902u, 43473u), global4.b.x, ~4294967295u, abs(u_input.a.x)), select(select(vec4<bool>(false, var_2.x, var_2.x, var_2.x), vec4<bool>(true, true, true, false), !vec4<bool>(true, var_2.x, true, true)), select(vec4<bool>(var_2.x, var_2.x, false, var_2.x), select(vec4<bool>(var_2.x, true, true, var_2.x), vec4<bool>(var_2.x, true, true, var_2.x), var_2.x), var_2.x), vec4<bool>(any(vec4<bool>(var_2.x, var_2.x, false, true)), any(var_2.xw), all(vec3<bool>(var_2.x, var_2.x, var_2.x)), true))), ~vec4<u32>(15972u, _wgslsmith_mod_u32(global3.b.x, 4294967295u), max(51266u, global3.b.x), ~global4.b.x) << (~select(vec4<u32>(global3.b.x, u_input.a.x, u_input.a.x, 0u), ~vec4<u32>(9512u, 9468u, global4.b.x, global4.b.x), vec4<bool>(var_2.x, var_2.x, var_2.x, true)) % vec4<u32>(32u)));
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, min(var_3, _wgslsmith_mod_vec4_u32(vec4<u32>(func_5(global2[_wgslsmith_index_u32(u_input.a.x, 17u)], vec4<u32>(var_3.x, 69026u, 12261u, u_input.a.x), vec4<f32>(-1484f, var_0.x, var_0.x, -364f)).b, select(58266u, global4.b.x, var_2.x), ~global4.b.x, 1u), vec4<u32>(1u, 4294967295u, global3.b.x, global4.b.x))), var_3, u_input.a.x, global4.a);
}

