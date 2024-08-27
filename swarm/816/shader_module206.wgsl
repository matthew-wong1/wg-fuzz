struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec3<i32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 26>;

var<private> global1: array<bool, 30>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_4) -> vec3<u32> {
    var var_0 = firstTrailingBit(firstTrailingBit(_wgslsmith_clamp_vec4_u32(arg_0.a, arg_0.a, ~arg_0.a))) & ~vec4<u32>(4294967295u, min(_wgslsmith_dot_vec4_u32(vec4<u32>(100806u, arg_0.c.a.b.x, 1u, arg_0.b.b.b.x), vec4<u32>(4294967295u, 7337u, arg_0.a.x, arg_0.c.a.b.x)), arg_0.d.b.b.x), 24596u, arg_0.d.b.b.x);
    var var_1 = Struct_1(reverseBits(abs(arg_0.b.b.c.yzx) << (~vec3<u32>(var_0.x, var_0.x, 4294967295u) % vec3<u32>(32u))) ^ reverseBits(-arg_0.d.a.a), _wgslsmith_mult_vec2_u32(~abs(vec2<u32>(4294967295u, 1u)) & max(min(vec2<u32>(var_0.x, var_0.x), var_0.wy), vec2<u32>(arg_0.d.a.b.x, 0u) << (vec2<u32>(arg_0.b.b.b.x, 0u) % vec2<u32>(32u))), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 34207u, var_0.x), reverseBits(vec3<u32>(0u, 34546u, 0u))), max(arg_0.d.b.b.x ^ 30509u, ~4294967295u))), _wgslsmith_mult_vec4_i32(min(arg_0.d.a.c & ~vec4<i32>(arg_0.b.b.a.x, u_input.b, 26200i, -1i), vec4<i32>(select(0i, arg_0.c.a.c.x, true), -20983i, arg_0.e, arg_0.d.b.a.x & arg_0.b.a.c.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(-53199i, countOneBits(arg_0.c.d.x), arg_0.e, _wgslsmith_add_i32(u_input.a, 35697i)), arg_0.c.a.c)));
    let var_2 = arg_0.b.b;
    var_1 = var_2;
    let var_3 = Struct_2(arg_0.d.a, Struct_1(vec3<i32>(_wgslsmith_clamp_i32(-2147483647i, 74936i, 1i), min(var_1.a.x, -1i), 1i) << ((~vec3<u32>(0u, 4294967295u, var_1.b.x) << (~var_0.zxx % vec3<u32>(32u))) % vec3<u32>(32u)), var_0.xx, arg_0.d.b.c), true || arg_0.c.e.x, ~_wgslsmith_mod_vec3_i32(min(~var_1.c.wxw, ~var_2.c.wzz), reverseBits(_wgslsmith_div_vec3_i32(var_1.c.yyz, vec3<i32>(-8129i, var_2.a.x, var_2.a.x)))), select(!arg_0.b.e, !select(select(arg_0.b.e, vec2<bool>(true, global1[_wgslsmith_index_u32(var_2.b.x, 30u)]), arg_0.b.c), vec2<bool>(true, true), !vec2<bool>(arg_0.d.e.x, arg_0.d.e.x)), arg_0.d.e));
    return ~_wgslsmith_div_vec3_u32(~vec3<u32>(11696u, var_2.b.x, _wgslsmith_sub_u32(4294967295u, var_2.b.x)), select(abs(vec3<u32>(var_3.a.b.x, 4294967295u, 9860u)), select(arg_0.a.zwx << (var_0.zxx % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(1u, 35767u, var_0.x)), vec3<bool>(var_3.c, true, true)), true));
}

fn func_2() -> vec2<i32> {
    global1 = array<bool, 30>();
    global1 = array<bool, 30>();
    var var_0 = ~((-_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, -1i, u_input.b), vec3<i32>(u_input.a, 78192i, 1i), vec3<i32>(u_input.b, u_input.b, u_input.a)) >> (_wgslsmith_sub_vec3_u32(func_3(Struct_4(vec4<u32>(0u, 0u, 0u, 28000u), Struct_2(Struct_1(vec3<i32>(1i, u_input.b, u_input.a), vec2<u32>(15681u, 22135u), vec4<i32>(u_input.b, 12405i, u_input.b, u_input.a)), Struct_1(vec3<i32>(u_input.a, u_input.a, -2147483647i), vec2<u32>(0u, 2989u), vec4<i32>(-1i, -1i, u_input.a, 26928i)), false, vec3<i32>(-2147483647i, u_input.a, u_input.b), vec2<bool>(true, true)), Struct_2(Struct_1(vec3<i32>(-69675i, -1i, u_input.a), vec2<u32>(48810u, 3721u), vec4<i32>(2147483647i, u_input.a, 56806i, u_input.a)), Struct_1(vec3<i32>(u_input.b, u_input.b, -6781i), vec2<u32>(11520u, 50759u), vec4<i32>(37519i, u_input.b, 6481i, u_input.a)), false, vec3<i32>(20706i, -5778i, u_input.b), vec2<bool>(global1[_wgslsmith_index_u32(28300u, 30u)], true)), Struct_2(Struct_1(vec3<i32>(u_input.a, -18977i, u_input.b), vec2<u32>(1u, 57057u), vec4<i32>(u_input.a, u_input.a, -2147483647i, -3957i)), Struct_1(vec3<i32>(u_input.b, -2147483647i, -1i), vec2<u32>(45988u, 13137u), vec4<i32>(-57682i, -650i, u_input.a, 12182i)), true, vec3<i32>(2147483647i, 35661i, u_input.a), vec2<bool>(true, false)), u_input.b)), _wgslsmith_mult_vec3_u32(vec3<u32>(10207u, 4294967295u, 31600u), vec3<u32>(16637u, 0u, 38110u))) % vec3<u32>(32u))) ^ select(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.a)) | -vec3<i32>(84030i, u_input.a, -33571i), ~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, -24439i, 56158i), vec3<i32>(u_input.a, u_input.a, u_input.b)), select(!vec3<bool>(global1[_wgslsmith_index_u32(95385u, 30u)], true, global1[_wgslsmith_index_u32(31773u, 30u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 30u)], true), !vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 30u)], global1[_wgslsmith_index_u32(39940u, 30u)], global1[_wgslsmith_index_u32(4294967295u, 30u)]))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, var_0.x, var_0.x), vec3<i32>(1i, -1i, var_0.x)), firstTrailingBit(vec3<i32>(-2147483647i, u_input.b, var_0.x))) ^ vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, 61902i), var_0.zx), _wgslsmith_div_i32(-32236i, -7204i), u_input.b), vec2<u32>(~min(0u, 14556u), ~_wgslsmith_mod_u32(58616u, 8479u)), ~(-vec4<i32>(var_0.x, 2147483647i, var_0.x, u_input.a))), Struct_1(firstLeadingBit(vec3<i32>(-1i) * -vec3<i32>(u_input.b, u_input.b, -2147483647i)), select(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u), all(vec4<bool>(true, false, true, global1[_wgslsmith_index_u32(879u, 30u)]))) & vec2<u32>(1u, 1u), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.b), vec2<i32>(2147483647i, -50285i)), -50529i, ~46297i, _wgslsmith_add_i32(var_0.x, 1i)), (vec4<i32>(var_0.x, 421i, u_input.b, var_0.x) ^ vec4<i32>(var_0.x, var_0.x, -2147483647i, var_0.x)) & -vec4<i32>(11659i, var_0.x, -2147483647i, u_input.b))), global1[_wgslsmith_index_u32(~1u >> (_wgslsmith_sub_u32(func_3(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 23366u), 26u)]).x, abs(~23531u)) % 32u), 30u)], select(_wgslsmith_div_vec3_i32(vec3<i32>(~(-17357i), 23164i, u_input.a), ~(vec3<i32>(var_0.x, u_input.b, 11138i) ^ vec3<i32>(-8400i, -18793i, var_0.x))), ~(-vec3<i32>(u_input.a, 0i, -1i) & (vec3<i32>(u_input.a, u_input.a, 1i) ^ vec3<i32>(-54774i, 12300i, var_0.x))), select(!select(vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 30u)], true), vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 30u)], false), false), vec3<bool>(!global1[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(~0u, 30u)], all(vec2<bool>(global1[_wgslsmith_index_u32(37625u, 30u)], true))), true)), select(vec2<bool>(all(select(vec2<bool>(global1[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(1u, 30u)]), vec2<bool>(false, false), vec2<bool>(false, global1[_wgslsmith_index_u32(6823u, 30u)]))), !(true | global1[_wgslsmith_index_u32(58921u, 30u)])), select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 30u)]), global1[_wgslsmith_index_u32(2971u, 30u)]), !vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 30u)], false), global1[_wgslsmith_index_u32(31596u, 30u)] && false), true == (true != global1[_wgslsmith_index_u32(0u, 30u)])), !(false | (false != global1[_wgslsmith_index_u32(2272u, 30u)]))));
    global0 = array<Struct_4, 26>();
    return vec2<i32>(u_input.b, ~(-(~43696i)));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: Struct_3) -> Struct_1 {
    global1 = array<bool, 30>();
    global0 = array<Struct_4, 26>();
    global1 = array<bool, 30>();
    let var_0 = _wgslsmith_add_u32(firstTrailingBit(4294967295u >> (1u % 32u)), 0u);
    var var_1 = vec4<i32>(u_input.a, min(arg_0.x, ~abs(~(-1i))), u_input.a, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(i32(-1i) * -1i, -42047i, _wgslsmith_sub_i32(5543i, arg_0.x), -u_input.a), ~countOneBits(vec4<i32>(-53076i, arg_0.x, arg_0.x, u_input.b)), min(-vec4<i32>(arg_0.x, u_input.b, -2147483647i, u_input.b), firstLeadingBit(vec4<i32>(8477i, u_input.b, u_input.a, u_input.b)))), vec4<i32>(~22340i, 12743i, _wgslsmith_div_i32(max(arg_0.x, arg_0.x), 0i), 2147483647i)));
    return Struct_1(reverseBits(-var_1.wzw), (_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, var_0), vec2<u32>(19941u, var_0), vec2<u32>(1u, 51682u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0, var_0), vec2<u32>(22652u, 3501u), vec2<u32>(var_0, 94917u))) ^ _wgslsmith_div_vec2_u32(func_3(global0[_wgslsmith_index_u32(var_0, 26u)]).zy, ~vec2<u32>(9480u, 0u))) << ((vec2<u32>(_wgslsmith_add_u32(var_0, 0u), 4294967295u) | _wgslsmith_mult_vec2_u32(max(vec2<u32>(var_0, var_0), vec2<u32>(0u, 0u)), ~vec2<u32>(var_0, 0u))) % vec2<u32>(32u)), _wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(var_1.x, var_1.x, -10248i, 2147483647i)) >> (abs(max(vec4<u32>(var_0, var_0, var_0, var_0), vec4<u32>(4294967295u, 4294967295u, var_0, 39965u))) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(select(vec4<i32>(2147483647i, u_input.b, -24727i, 29830i), vec4<i32>(var_1.x, -1i, var_1.x, u_input.a), arg_1.x), ~vec4<i32>(arg_0.x, arg_0.x, 33416i, var_1.x)), ~firstLeadingBit(vec4<i32>(0i, var_1.x, -2147483647i, u_input.a)))));
}

fn func_5(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: vec4<u32>) -> bool {
    var var_0 = _wgslsmith_mod_vec3_u32(~vec3<u32>(_wgslsmith_div_u32(76299u, arg_1) >> (60640u % 32u), ~arg_3.x, ~(~12386u)), ~(~countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(18687u, 4294967295u, arg_1), vec3<u32>(0u, arg_1, 58940u)))));
    var var_1 = global1[_wgslsmith_index_u32(func_3(Struct_4(vec4<u32>(var_0.x, _wgslsmith_mod_u32(arg_1 << (74655u % 32u), _wgslsmith_mod_u32(arg_1, 5174u)), func_4(~vec2<i32>(-34376i, -1i), vec4<bool>(global1[_wgslsmith_index_u32(arg_3.x, 30u)], true, global1[_wgslsmith_index_u32(arg_2.b.x, 30u)], global1[_wgslsmith_index_u32(arg_2.b.x, 30u)]), Struct_3(vec3<f32>(-1838f, arg_0, 1000f))).b.x, reverseBits(arg_1 ^ arg_3.x)), Struct_2(Struct_1(~vec3<i32>(0i, u_input.a, 0i), var_0.zy, _wgslsmith_sub_vec4_i32(arg_2.c, vec4<i32>(arg_2.a.x, u_input.b, arg_2.c.x, arg_2.a.x))), Struct_1(arg_2.c.yzy, ~arg_3.wx, abs(arg_2.c)), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(60509u, 18036u, _wgslsmith_dot_vec2_u32(var_0.yy, arg_2.b)), 30u)], vec3<i32>(arg_2.c.x, arg_2.a.x, 6435i), !select(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 30u)], false), vec2<bool>(global1[_wgslsmith_index_u32(0u, 30u)], false), true)), Struct_2(Struct_1(vec3<i32>(arg_2.c.x, 0i, 2147483647i) & arg_2.c.yzy, vec2<u32>(var_0.x, 0u), max(arg_2.c, arg_2.c)), arg_2, true, _wgslsmith_add_vec3_i32(-arg_2.a, arg_2.a), vec2<bool>(select(true, true, global1[_wgslsmith_index_u32(arg_2.b.x, 30u)]), any(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 30u)], global1[_wgslsmith_index_u32(21039u, 30u)], true, global1[_wgslsmith_index_u32(6611u, 30u)])))), Struct_2(arg_2, func_4(-arg_2.c.xx, !vec4<bool>(global1[_wgslsmith_index_u32(arg_3.x, 30u)], global1[_wgslsmith_index_u32(arg_1, 30u)], global1[_wgslsmith_index_u32(71315u, 30u)], global1[_wgslsmith_index_u32(14842u, 30u)]), Struct_3(vec3<f32>(arg_0, arg_0, -975f))), global1[_wgslsmith_index_u32(4294967295u, 30u)] != any(vec2<bool>(false, false)), firstTrailingBit(vec3<i32>(u_input.a, -1i, arg_2.c.x)), !vec2<bool>(true, global1[_wgslsmith_index_u32(21793u, 30u)])), u_input.b)).x, 30u)];
    let var_2 = true;
    global0 = array<Struct_4, 26>();
    var_0 = abs(~arg_3.xwy);
    return !var_2;
}

fn func_6(arg_0: vec2<bool>, arg_1: u32, arg_2: vec3<f32>) -> Struct_4 {
    var var_0 = Struct_2(func_4(vec2<i32>(~_wgslsmith_mod_i32(u_input.b, -1i), u_input.a), select(vec4<bool>(!arg_0.x, true, false, !arg_0.x), vec4<bool>(true, global1[_wgslsmith_index_u32(~0u, 30u)], !arg_0.x, true), vec4<bool>(arg_0.x, true, select(arg_0.x, global1[_wgslsmith_index_u32(arg_1, 30u)], global1[_wgslsmith_index_u32(arg_1, 30u)]), arg_2.x != 2174f)), Struct_3(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(arg_2, vec3<f32>(arg_2.x, -316f, arg_2.x))))))), Struct_1(vec3<i32>(24368i, u_input.a, u_input.a), countOneBits(max(vec2<u32>(arg_1, 9190u), vec2<u32>(0u, 713u))) ^ abs(~vec2<u32>(arg_1, 0u)), func_4(vec2<i32>(-1i) * -vec2<i32>(u_input.a, u_input.b), !select(vec4<bool>(arg_0.x, false, true, true), vec4<bool>(global1[_wgslsmith_index_u32(arg_1, 30u)], false, false, arg_0.x), vec4<bool>(arg_0.x, global1[_wgslsmith_index_u32(40908u, 30u)], global1[_wgslsmith_index_u32(21560u, 30u)], global1[_wgslsmith_index_u32(695u, 30u)])), Struct_3(vec3<f32>(722f, arg_2.x, -374f))).c), u_input.a < -select(_wgslsmith_add_i32(u_input.a, u_input.b), ~u_input.b, true), vec3<i32>(2147483647i, _wgslsmith_div_i32(1i, 52886i), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.b, -2147483647i, u_input.a)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 0i, 0i), vec3<i32>(u_input.a, u_input.b, -31588i)))) | _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, _wgslsmith_mult_i32(0i, u_input.b), 1i), countOneBits(reverseBits(vec3<i32>(-2147483647i, 1i, 5115i)))), vec2<bool>(true, any(vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_1, 36629u), vec3<u32>(77889u, arg_1, 12054u)), 30u)], false))));
    global0 = array<Struct_4, 26>();
    return Struct_4(vec4<u32>((_wgslsmith_mod_u32(17550u, arg_1) & 1u) << (_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(66668u, 4294967295u, arg_1), vec3<u32>(arg_1, arg_1, 18564u)), countOneBits(vec3<u32>(51748u, arg_1, arg_1))) % 32u), 52001u, _wgslsmith_mult_u32(0u ^ (26953u ^ var_0.b.b.x), ~36721u), var_0.b.b.x), Struct_2(func_4(vec2<i32>(u_input.b, -2147483647i), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, global1[_wgslsmith_index_u32(1u, 30u)], arg_0.x), vec4<bool>(arg_0.x, arg_0.x, global1[_wgslsmith_index_u32(var_0.a.b.x, 30u)], global1[_wgslsmith_index_u32(arg_1, 30u)]), true), select(vec4<bool>(var_0.e.x, false, var_0.e.x, false), vec4<bool>(false, false, false, var_0.c), vec4<bool>(global1[_wgslsmith_index_u32(arg_1, 30u)], true, false, var_0.e.x))), Struct_3(arg_2)), Struct_1(vec3<i32>(u_input.a, u_input.a, -2147483647i) >> ((vec3<u32>(var_0.a.b.x, 1u, var_0.a.b.x) ^ vec3<u32>(arg_1, 24040u, var_0.a.b.x)) % vec3<u32>(32u)), abs(~vec2<u32>(1u, 91486u)), vec4<i32>(var_0.a.c.x, select(u_input.b, -56688i, var_0.c), -1i, u_input.b)), true, var_0.d, select(arg_0, vec2<bool>(global1[_wgslsmith_index_u32(arg_1, 30u)] != var_0.c, true), select(arg_0, var_0.e, all(vec3<bool>(false, arg_0.x, true))))), Struct_2(var_0.a, func_4(~vec2<i32>(-2147483647i, var_0.a.a.x), select(!vec4<bool>(arg_0.x, true, global1[_wgslsmith_index_u32(4294967295u, 30u)], false), !vec4<bool>(global1[_wgslsmith_index_u32(var_0.a.b.x, 30u)], true, arg_0.x, arg_0.x), vec4<bool>(false, var_0.c, false, false)), Struct_3(_wgslsmith_f_op_vec3_f32(-arg_2))), true, select(var_0.a.a, ~(-var_0.d), !vec3<bool>(arg_0.x, arg_0.x, false)), !vec2<bool>(true, var_0.b.c.x == var_0.b.a.x)), Struct_2(Struct_1(~var_0.d, var_0.a.b, -select(var_0.a.c, var_0.a.c, vec4<bool>(false, false, arg_0.x, false))), func_4(-var_0.a.a.yy, select(vec4<bool>(var_0.e.x, var_0.e.x, arg_0.x, true), vec4<bool>(false, var_0.e.x, var_0.e.x, true), var_0.b.b.x != arg_1), Struct_3(arg_2)), any(vec2<bool>(true, !var_0.e.x)), ~(var_0.d & vec3<i32>(var_0.d.x, var_0.b.c.x, 70075i)), !arg_0), -_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(var_0.b.a, var_0.d, _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, -60290i, -4903i), var_0.b.c.yyw, var_0.d)), ~vec3<i32>(-1i, 0i, 496i)));
}

fn func_1() -> vec2<bool> {
    global0 = array<Struct_4, 26>();
    var var_0 = countOneBits(_wgslsmith_div_i32(u_input.a, max(countOneBits(-u_input.a), firstTrailingBit(u_input.a))));
    let var_1 = func_6(vec2<bool>((-u_input.b >> (_wgslsmith_mod_u32(54677u, 13997u) % 32u)) < _wgslsmith_mult_i32(-1i, -2147483647i), func_5(1f, firstTrailingBit(23421u) >> (1u % 32u), func_4(func_2(), select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 30u)], false, true, global1[_wgslsmith_index_u32(4294967295u, 30u)]), vec4<bool>(true, false, global1[_wgslsmith_index_u32(0u, 30u)], true), global1[_wgslsmith_index_u32(97437u, 30u)]), Struct_3(vec3<f32>(1791f, -464f, -2102f))), vec4<u32>(1u, 1u, 1u, 1u))), ~firstLeadingBit(abs(4294967295u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(457f, 1415f, -1161f) * vec3<f32>(1000f, -783f, 479f)) - vec3<f32>(-2073f, -1853f, 119f)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-707f, -1413f, -1000f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-203f, 1527f, -1310f) + vec3<f32>(-228f, 1049f, -369f))))));
    global0 = array<Struct_4, 26>();
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(183f, -1835f, 382f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-982f, -635f, 1606f), vec3<f32>(-1034f, -1288f, 1320f)))))));
    return var_1.b.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(496f))))))));
    let var_1 = !select(select(select(select(vec2<bool>(false, global1[_wgslsmith_index_u32(44333u, 30u)]), vec2<bool>(global1[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(2286u, 30u)]), vec2<bool>(global1[_wgslsmith_index_u32(19001u, 30u)], global1[_wgslsmith_index_u32(34777u, 30u)])), select(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 30u)], global1[_wgslsmith_index_u32(63946u, 30u)]), vec2<bool>(false, false), false), func_1()), !vec2<bool>(global1[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(1u, 30u)]), any(select(vec4<bool>(false, global1[_wgslsmith_index_u32(13991u, 30u)], global1[_wgslsmith_index_u32(4294967295u, 30u)], global1[_wgslsmith_index_u32(106713u, 30u)]), vec4<bool>(global1[_wgslsmith_index_u32(42589u, 30u)], true, global1[_wgslsmith_index_u32(13006u, 30u)], true), vec4<bool>(false, true, global1[_wgslsmith_index_u32(4294967295u, 30u)], true)))), vec2<bool>(true, true), vec2<bool>(func_1().x, global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(0u, 51997u), 30u)]));
    let var_2 = _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(~select(0u, 4294967295u, true), 1u, 10579u), ~select(vec3<u32>(45516u, 48493u, 1u), vec3<u32>(27787u, 0u, 45676u), select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 30u)], true, global1[_wgslsmith_index_u32(42462u, 30u)]), vec3<bool>(false, true, true), vec3<bool>(true, var_1.x, var_1.x)))), ~(~vec3<u32>(_wgslsmith_sub_u32(44313u, 1u), abs(0u), ~4294967295u)));
    global0 = array<Struct_4, 26>();
    let var_3 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(func_6(!var_1, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2, var_2, 4294967295u, 4294967295u), countOneBits(vec4<u32>(var_2, var_2, 0u, 4294967295u)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 165f, var_0))))))).b.b.b, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -636f)), _wgslsmith_f_op_f32(-var_0)), 236f, all(vec3<bool>(true, global1[_wgslsmith_index_u32(30950u, 30u)], var_1.x)))), ~var_3, func_6(vec2<bool>(true, !var_1.x), 2238u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -1620f, 990f) - vec3<f32>(var_0, var_0, 408f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(485f, -674f, -1000f) * vec3<f32>(var_0, var_0, var_0))))).d.b.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), var_0)));
}

