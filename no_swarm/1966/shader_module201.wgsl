struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec4<f32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: u32,
    d: i32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> bool {
    let var_0 = true;
    global0 = array<Struct_2, 11>();
    global0 = array<Struct_2, 11>();
    var var_1 = _wgslsmith_div_f32(-187f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1693f))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1061f, _wgslsmith_div_f32(1000f, -1745f)) * _wgslsmith_f_op_f32(f32(-1f) * -1318f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1101f, -1797f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1185f + -1304f))))));
    return any(!(!vec4<bool>(any(vec3<bool>(false, var_0, true)), !var_0, select(false, var_0, var_0), var_0 & true)));
}

fn func_2() -> Struct_1 {
    let var_0 = select(true, false, true);
    var var_1 = vec3<i32>(firstLeadingBit(-44852i), i32(-1i) * -1i, 2147483647i);
    var_1 = select(vec3<i32>(_wgslsmith_dot_vec3_i32(~(-vec3<i32>(-15128i, var_1.x, var_1.x)), firstTrailingBit(vec3<i32>(var_1.x, var_1.x, 1i)) | vec3<i32>(var_1.x, var_1.x, 30518i)), ~(~1i) & var_1.x, _wgslsmith_mod_i32(countOneBits(var_1.x), abs(_wgslsmith_add_i32(2147483647i, var_1.x)))), abs(firstLeadingBit(-vec3<i32>(var_1.x, var_1.x, var_1.x))) | _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_1.x, -2147483647i, var_1.x), vec3<i32>(8498i, var_1.x, var_1.x)), reverseBits(vec3<i32>(1i, var_1.x, -7908i))), ~min(vec3<i32>(var_1.x, 2147483647i, var_1.x), vec3<i32>(var_1.x, -1i, var_1.x)), ~vec3<i32>(var_1.x, 1i, var_1.x)), any(!vec2<bool>(var_0, func_3())));
    return Struct_1(u_input.a, min(_wgslsmith_clamp_vec4_i32(-vec4<i32>(0i, 2147483647i, 2147483647i, 1i), vec4<i32>(countOneBits(var_1.x), 2147483647i, -1i, countOneBits(4861i)), max(vec4<i32>(2147483647i, var_1.x, var_1.x, var_1.x), ~vec4<i32>(-25181i, var_1.x, var_1.x, 3716i))), -vec4<i32>(-var_1.x, -31123i, 34669i ^ var_1.x, var_1.x)), _wgslsmith_add_i32(abs(var_1.x >> (~11264u % 32u)), var_1.x), _wgslsmith_add_vec3_i32(vec3<i32>(max(abs(13280i), var_1.x), -957i, ~min(var_1.x, 0i)), ~(vec3<i32>(-1i) * -vec3<i32>(-31502i, var_1.x, var_1.x))));
}

fn func_4(arg_0: Struct_3) -> Struct_4 {
    global0 = array<Struct_2, 11>();
    global0 = array<Struct_2, 11>();
    let var_0 = arg_0;
    var var_1 = vec3<f32>(-214f, -597f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(924f, _wgslsmith_f_op_f32(max(-777f, _wgslsmith_f_op_f32(297f * arg_0.d.c.x))))) * -1181f));
    var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(var_0.d.c.yzx, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.c.x, arg_0.d.c.x, arg_0.a.c.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d.c.x, var_0.a.c.x, 1724f) * vec3<f32>(-781f, var_1.x, 704f)))), _wgslsmith_f_op_vec3_f32(-arg_0.a.c.yzx)))));
    return Struct_4(-1428f, _wgslsmith_f_op_f32(arg_0.d.c.x + -254f), ~0u, _wgslsmith_add_i32(arg_0.a.a.c, arg_0.b.c & -6972i));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<i32>) -> u32 {
    let var_0 = select(~(countOneBits(vec4<u32>(4294967295u, u_input.b, 4294967295u, u_input.c)) & (vec4<u32>(u_input.b, 9104u, 0u, 21326u) >> (~vec4<u32>(u_input.c, u_input.b, 4294967295u, 4294967295u) % vec4<u32>(32u)))), select(firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.b, u_input.c), vec4<u32>(4294967295u, 0u, u_input.c, 18287u))), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.c, u_input.c, u_input.a, u_input.a), vec4<u32>(4294967295u, 97718u, u_input.c, 1u)), true) ^ (vec4<u32>(countOneBits(13046u), ~19069u, 1u, 1u) ^ _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b, 52684u, 26618u, u_input.b), ~vec4<u32>(u_input.c, 46177u, u_input.c, u_input.c))), true);
    var var_1 = func_4(Struct_3(global0[_wgslsmith_index_u32(u_input.a, 11u)], func_2(), all(vec4<bool>(all(vec2<bool>(false, true)), true, true, true)), Struct_2(Struct_1(~0u, vec4<i32>(-20050i, arg_1.x, arg_1.x, arg_1.x) ^ vec4<i32>(arg_1.x, -45965i, -2147483647i, arg_1.x), i32(-1i) * -1i, arg_1), -vec4<i32>(arg_1.x, arg_1.x, 9018i, arg_1.x), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -949f, arg_0.x, 1404f)))), 1u)));
    var var_2 = vec4<u32>(u_input.b, abs(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(var_0.wz | vec2<u32>(16748u, 1648u), vec2<u32>(var_0.x, var_1.c)), vec2<u32>(var_0.x, min(var_0.x, 1u)))), 0u, 63532u);
    let var_3 = arg_0;
    var var_4 = func_2();
    return reverseBits(var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-444f, 1541f)), _wgslsmith_div_vec2_f32(vec2<f32>(326f, 1000f), vec2<f32>(-388f, -1507f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(698f, -324f)))))))));
    let var_1 = true;
    let var_2 = _wgslsmith_clamp_u32(func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-2069f, var_0.x)))), vec3<i32>(-32881i, _wgslsmith_mult_i32(0i << (u_input.c % 32u), ~27338i), ~(i32(-1i) * -25762i))), u_input.c, u_input.c);
    global0 = array<Struct_2, 11>();
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(623f, var_0.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1408f + var_0.x), var_0.x) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-294f, 977f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~max(vec3<i32>(-22178i, 1i, ~(-40985i)), vec3<i32>(~0i, 1i, 1i)), var_2, min(_wgslsmith_clamp_i32(-26922i, _wgslsmith_div_i32(0i, _wgslsmith_div_i32(-2147483647i, -1i)), reverseBits(min(2147483647i, -48377i))), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), -firstTrailingBit(vec4<i32>(-15538i, -69331i, -42338i, 2147483647i)))), _wgslsmith_mod_u32(~(u_input.c >> (var_2 % 32u)) << (var_2 % 32u), 114324u));
}

