struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<bool>,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2>;

var<private> global1: Struct_1;

var<private> global2: bool;

var<private> global3: f32;

var<private> global4: array<Struct_4, 14> = array<Struct_4, 14>(Struct_4(false, 82385u, Struct_1(vec2<i32>(i32(-2147483648), 27626i), vec2<bool>(true, false))), Struct_4(true, 48444u, Struct_1(vec2<i32>(-1i, 10125i), vec2<bool>(true, true))), Struct_4(true, 1u, Struct_1(vec2<i32>(-12784i, -11512i), vec2<bool>(true, false))), Struct_4(false, 33990u, Struct_1(vec2<i32>(i32(-2147483648), 23367i), vec2<bool>(false, false))), Struct_4(true, 37950u, Struct_1(vec2<i32>(1i, -1i), vec2<bool>(false, false))), Struct_4(false, 1u, Struct_1(vec2<i32>(i32(-2147483648), 0i), vec2<bool>(false, false))), Struct_4(true, 109743u, Struct_1(vec2<i32>(1i, 0i), vec2<bool>(true, true))), Struct_4(true, 0u, Struct_1(vec2<i32>(i32(-2147483648), 1575i), vec2<bool>(true, false))), Struct_4(true, 1u, Struct_1(vec2<i32>(1i, -52199i), vec2<bool>(true, true))), Struct_4(false, 54775u, Struct_1(vec2<i32>(2147483647i, -42894i), vec2<bool>(true, false))), Struct_4(true, 19618u, Struct_1(vec2<i32>(-51174i, 1i), vec2<bool>(true, true))), Struct_4(true, 4294967295u, Struct_1(vec2<i32>(1i, 25011i), vec2<bool>(false, true))), Struct_4(false, 4294967295u, Struct_1(vec2<i32>(2147483647i, 2147483647i), vec2<bool>(true, true))), Struct_4(false, 47997u, Struct_1(vec2<i32>(11922i, 11002i), vec2<bool>(false, false))));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>) -> vec2<i32> {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_sub_vec3_i32(-(~(vec3<i32>(-2147483647i, var_0.a.a.x, arg_0.a.a.x) | vec3<i32>(2147483647i, var_0.a.a.x, -25463i))), _wgslsmith_add_vec3_i32(-(vec3<i32>(-39579i, 0i, arg_0.a.a.x) ^ vec3<i32>(arg_0.a.a.x, -22118i, -26462i)), -_wgslsmith_clamp_vec3_i32(vec3<i32>(-25462i, global1.a.x, u_input.a.x), vec3<i32>(-2147483647i, 1i, u_input.a.x), vec3<i32>(global1.a.x, u_input.a.x, -1i)))) & (vec3<i32>(-1i) * -vec3<i32>(global1.a.x, arg_0.a.a.x, _wgslsmith_mod_i32(global1.a.x, global1.a.x)));
    var var_2 = var_0.c;
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    return -_wgslsmith_mult_vec2_i32(u_input.a, -(vec2<i32>(44384i, global1.a.x) | vec2<i32>(-36006i, u_input.a.x)) << (~(~var_0.b.xz) % vec2<u32>(32u)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    return Struct_1(~func_3(Struct_2(Struct_1(global1.a, global1.b), vec3<u32>(0u, 4294967295u, 4294967295u), -1000f), select(!vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(false, true, false, global1.b.x), vec4<bool>(true, global1.b.x, global1.b.x, arg_0))), !select(global1.b, vec2<bool>(true, false), select(!vec2<bool>(global1.b.x, false), vec2<bool>(true, global1.b.x), global1.b)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1) -> vec2<i32> {
    global0 = array<Struct_1, 2>();
    let var_0 = func_2(true && arg_0.c.b.x);
    return abs(u_input.a);
}

fn func_1(arg_0: u32) -> Struct_3 {
    let var_0 = _wgslsmith_clamp_vec2_i32(~(-vec2<i32>(global1.a.x, _wgslsmith_sub_i32(2147483647i, 53944i))), -select(global1.a, func_4(global4[_wgslsmith_index_u32(~arg_0, 14u)], func_2(false)), true), firstLeadingBit(vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(-53904i, -1i, global1.a.x, u_input.a.x), vec4<i32>(global1.a.x, -2147483647i, -41737i, -2147483647i)), u_input.a.x)));
    global3 = -716f;
    let var_1 = global4[_wgslsmith_index_u32(~(~(firstLeadingBit(arg_0) | _wgslsmith_mult_u32(firstTrailingBit(arg_0), arg_0 ^ arg_0))), 14u)];
    return Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(379f, 970f, -179f, 444f)))), vec4<f32>(_wgslsmith_div_f32(2191f, 612f), _wgslsmith_f_op_f32(1175f - -1000f), -274f, 703f)))), select(!(!vec4<bool>(var_1.a, true, false, false)), select(!select(vec4<bool>(true, true, true, global1.b.x), vec4<bool>(false, var_1.a, true, global1.b.x), vec4<bool>(false, false, false, var_1.a)), vec4<bool>(var_0.x <= global1.a.x, true, any(vec4<bool>(var_1.c.b.x, var_1.c.b.x, var_1.c.b.x, false)), 4294967295u <= var_1.b), select(select(vec4<bool>(true, global1.b.x, var_1.a, global1.b.x), vec4<bool>(var_1.c.b.x, global1.b.x, true, var_1.a), true), !vec4<bool>(global1.b.x, global1.b.x, global1.b.x, true), vec4<bool>(true, true, false, var_1.c.b.x))), select(!vec4<bool>(false, var_1.c.b.x, false, global1.b.x), vec4<bool>(global1.b.x & global1.b.x, true, global1.b.x, any(vec4<bool>(true, true, true, false))), true | (global1.b.x && global1.b.x))));
}

fn func_5(arg_0: Struct_3) -> Struct_2 {
    let var_0 = _wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)) ^ _wgslsmith_add_vec2_u32(~vec2<u32>(116806u, reverseBits(72901u)), reverseBits(~(~vec2<u32>(0u, 3986u))));
    var var_1 = Struct_1(global1.a, vec2<bool>(select(any(func_2(global1.b.x).b), !(!arg_0.b.x), true | all(vec2<bool>(false, false))), true));
    let var_2 = Struct_2(global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(17597u, firstLeadingBit(var_0.x)), 2u)], countOneBits(_wgslsmith_mod_vec3_u32(~abs(vec3<u32>(var_0.x, 8816u, 4294967295u)), firstLeadingBit(vec3<u32>(var_0.x, var_0.x, 0u) >> (vec3<u32>(var_0.x, var_0.x, 4294967295u) % vec3<u32>(32u))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-604f, -716f, any(vec2<bool>(false, false)))) - arg_0.a.x) + _wgslsmith_f_op_f32(-1753f - _wgslsmith_f_op_f32(f32(-1f) * -807f))));
    global2 = any(select(vec2<bool>(var_1.b.x, true && select(var_2.a.b.x, arg_0.b.x, var_1.b.x)), !global1.b, !(!func_1(var_2.b.x).b.wz)));
    var var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.a))));
    return Struct_2(Struct_1(-u_input.a, func_2(!global1.b.x).b), select(vec3<u32>(abs(min(0u, var_0.x)), 4294967295u >> (1u % 32u), firstLeadingBit(var_2.b.x)), ~var_2.b, select(vec3<bool>(var_2.a.b.x && var_1.b.x, false, any(vec2<bool>(true, global1.b.x))), vec3<bool>(var_2.a.b.x, !global1.b.x, var_2.a.b.x), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (_wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_add_i32(-6214i, -7216i), global1.a.x | 411i), max(global1.a.x, 40208i)) ^ (countOneBits(_wgslsmith_add_i32(u_input.a.x, global1.a.x)) >> (~firstLeadingBit(0u) % 32u))) ^ -(i32(-1i) * -1i);
    global0 = array<Struct_1, 2>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -1122f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-277f))))));
    var var_2 = func_5(func_1(47899u));
    var_2 = func_5(func_1(4294967295u));
    var var_3 = var_2.a.b.x;
    global2 = var_2.a.b.x;
    global1 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(~12319u, var_2.b.zz);
}

