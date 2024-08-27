struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: vec3<f32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<vec4<bool>, 14>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: vec2<u32>, arg_3: Struct_3) -> bool {
    var var_0 = arg_3;
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1f - -1011f)))));
    let var_2 = !vec2<bool>(false, all(arg_1.wz));
    global1 = array<vec4<bool>, 14>();
    var var_3 = Struct_2(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(var_0.b.c, u_input.c), ~arg_3.b.c, 1i), vec3<i32>(min(-1i, arg_3.b.c), var_0.a.c, var_0.b.c & -42855i), min(-vec3<i32>(u_input.d, arg_3.b.c, u_input.d), reverseBits(vec3<i32>(var_0.a.c, u_input.d, 2147483647i)))), vec3<i32>(arg_3.b.c, arg_3.b.c, ~(~arg_3.a.c)), !(!all(var_2))), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(49753i, u_input.d ^ -var_0.b.c), arg_3.a.c, -arg_3.a.c), var_0.b.a.yxz, u_input.a);
    return !(_wgslsmith_add_i32(~(-2147483647i), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-61521i, var_3.b, var_0.b.c, u_input.d), vec4<i32>(-2147483647i, -2147483647i, var_0.b.c, -6836i)), _wgslsmith_sub_i32(44803i, -2707i))) > abs(firstLeadingBit(u_input.c)));
}

fn func_2() -> vec2<u32> {
    global1 = array<vec4<bool>, 14>();
    global0 = vec4<bool>(true, func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-570f, -1217f, 390f)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(151f, -366f, 520f), vec3<f32>(-2015f, 152f, -979f), global0.x)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(533f, 1764f, 1405f))))), global1[_wgslsmith_index_u32(u_input.a.x, 14u)], countOneBits(abs(countOneBits(u_input.a.yy))), Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-770f, -508f, 1944f, -1548f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-293f, -686f) - vec2<f32>(1674f, -775f)), -11078i), Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(1087f, 2239f, -249f, -498f), vec4<f32>(1085f, -676f, 639f, 413f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-415f, 122f), vec2<f32>(631f, -695f))), 56455i), any(!global1[_wgslsmith_index_u32(26916u, 14u)]))), ((43326u ^ (u_input.b.x >> (u_input.a.x % 32u))) << (_wgslsmith_div_u32(u_input.e, 0u) % 32u)) <= (6269u | ~(~u_input.e)), !global0.x);
    var var_0 = ~_wgslsmith_add_vec2_i32(abs(vec2<i32>(countOneBits(u_input.d), u_input.c)), vec2<i32>(1i, -select(u_input.d, -2147483647i, true)));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * vec3<f32>(1f, _wgslsmith_div_f32(1679f, 248f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1529f, 793f)))))));
    let var_2 = Struct_4(Struct_2(abs(-_wgslsmith_div_vec3_i32(vec3<i32>(var_0.x, u_input.d, var_0.x), vec3<i32>(27866i, u_input.d, u_input.d))), firstTrailingBit(u_input.c), _wgslsmith_f_op_vec3_f32(-var_1), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.e, u_input.e, 58983u, 50555u), vec4<u32>(u_input.e, u_input.a.x, u_input.e, u_input.e)), ~vec4<u32>(u_input.e, u_input.b.x, 34932u, u_input.a.x)) & u_input.a), global0.x);
    return firstLeadingBit(_wgslsmith_div_vec2_u32(abs(_wgslsmith_sub_vec2_u32(u_input.b, ~vec2<u32>(var_2.a.d.x, 1u))), vec2<u32>(u_input.b.x >> (reverseBits(0u) % 32u), var_2.a.d.x)));
}

fn func_1() -> vec4<u32> {
    var var_0 = _wgslsmith_sub_vec2_i32(firstLeadingBit(-(~vec2<i32>(u_input.d, -38041i)) >> (func_2() % vec2<u32>(32u))), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, u_input.c), countOneBits(min(vec2<i32>(u_input.d, u_input.d), vec2<i32>(u_input.c, u_input.d)))) >> (~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 67026u), select(u_input.b, u_input.b, global0.x)) % vec2<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-3073f))) * 1000f);
    let var_2 = select(all(vec3<bool>(false, true, true)), global0.x, ~min(u_input.b.x, 1u) >= u_input.e) && (_wgslsmith_f_op_f32(-110f + _wgslsmith_f_op_f32(489f + -1620f)) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2071f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-633f)) * -193f)));
    var var_3 = ~countOneBits(u_input.a.x);
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(608f, 153f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -380f) * -128f)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-1562f + -925f), _wgslsmith_f_op_f32(f32(-1f) * -446f))))) + vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(235f * 2269f)))), 379f));
    return vec4<u32>(_wgslsmith_mult_u32(func_2().x, u_input.b.x ^ 33633u), 15279u, u_input.a.x, u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1771f;
    global1 = array<vec4<bool>, 14>();
    let var_1 = vec3<u32>(69685u, u_input.b.x ^ firstLeadingBit(u_input.b.x), 1u) & vec3<u32>(u_input.a.x, 4294967295u, u_input.b.x);
    let var_2 = vec2<bool>(!(true && global0.x), global0.x);
    var var_3 = countOneBits(-max(vec4<i32>(-2147483647i, 9679i, u_input.c, u_input.c) & ~vec4<i32>(-35500i, u_input.c, -1i, -2147483647i), reverseBits(vec4<i32>(69472i, u_input.c, -2147483647i, 30874i))));
    var var_4 = _wgslsmith_mod_vec4_u32(vec4<u32>(firstLeadingBit(1u), u_input.a.x, 16743u, 6067u & firstTrailingBit(select(u_input.a.x, var_1.x, true))), _wgslsmith_mod_vec4_u32(func_1(), vec4<u32>(var_1.x, _wgslsmith_clamp_u32(~24135u, ~var_1.x, u_input.b.x), ~(~42970u), _wgslsmith_clamp_u32(u_input.e, var_1.x, 38960u) & var_1.x)));
    var_3 = min(_wgslsmith_sub_vec4_i32(countOneBits(max(vec4<i32>(-1i, 55611i, var_3.x, 1i) >> (vec4<u32>(0u, 6762u, 20759u, var_1.x) % vec4<u32>(32u)), max(vec4<i32>(var_3.x, u_input.d, 1i, var_3.x), vec4<i32>(var_3.x, u_input.d, 31i, u_input.d)))), vec4<i32>(u_input.d, _wgslsmith_mult_i32(-1498i, var_3.x) << (4294967295u % 32u), select(var_3.x, var_3.x, true), reverseBits(~(-21281i)))), firstTrailingBit(vec4<i32>(_wgslsmith_add_i32(57053i, _wgslsmith_mult_i32(u_input.d, 1i)), min(max(var_3.x, u_input.d), ~(-2147483647i)), ~var_3.x, ~abs(2147483647i))));
    var var_5 = select(var_2, select(!(!vec2<bool>(global0.x, global0.x)), !(!(!var_2)), !(!select(global0.yx, global0.yy, global0.x))), !(!global0.x | true));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, var_1.x, 0u), vec3<u32>(6087u, 4294967295u, u_input.b.x)), 41607u) | u_input.a.ww, var_3.x, u_input.a.zww ^ ~(~firstLeadingBit(var_4.zxw)), 1i, u_input.a);
}

