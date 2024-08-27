struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: bool,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
    d: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
    c: vec2<bool>,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: vec4<i32>, arg_3: u32) -> vec2<bool> {
    global0 = array<f32, 28>();
    let var_0 = Struct_5(true, Struct_4(Struct_2(_wgslsmith_add_vec3_i32(select(arg_2.yyy, vec3<i32>(2147483647i, 1i, u_input.a), false), vec3<i32>(-2147483647i, 2147483647i, u_input.a)), arg_3, Struct_1(all(vec3<bool>(true, true, true)), vec3<i32>(arg_2.x, 465i, arg_2.x), true, ~vec3<u32>(arg_3, arg_3, 1u))), Struct_2(~vec3<i32>(u_input.a, u_input.a, 0i) ^ -vec3<i32>(u_input.a, 0i, arg_2.x), _wgslsmith_mod_u32(arg_3, arg_3 << (12998u % 32u)), Struct_1(true, ~vec3<i32>(1i, 1i, -1i), true, _wgslsmith_div_vec3_u32(vec3<u32>(arg_3, 1u, 28229u), vec3<u32>(3452u, arg_3, arg_3)))), any(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(false, false))), Struct_2(arg_2.zyx, arg_3, Struct_1(true, vec3<i32>(1i, u_input.a, arg_2.x), true, ~vec3<u32>(arg_3, 35712u, arg_3)))), vec2<bool>(!(arg_2.x > -2147483647i), true), Struct_4(Struct_2(vec3<i32>(-1i) * -vec3<i32>(-47754i, -2147483647i, arg_2.x), arg_3, Struct_1(any(vec4<bool>(true, true, true, true)), reverseBits(vec3<i32>(u_input.a, u_input.a, 39838i)), all(vec3<bool>(true, false, false)), ~vec3<u32>(arg_3, 0u, arg_3))), Struct_2(arg_2.xxw, ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_3, 47013u), vec2<u32>(arg_3, 4294967295u)), Struct_1(any(vec2<bool>(false, false)), ~arg_2.xyx, true, vec3<u32>(arg_3, arg_3, 0u))), select(true, true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), false))), Struct_2(~vec3<i32>(-1i, -40406i, u_input.a) >> (firstTrailingBit(vec3<u32>(arg_3, 640u, 0u)) % vec3<u32>(32u)), 1u, Struct_1(true, select(arg_2.zxz, arg_2.ywz, vec3<bool>(true, true, false)), true, vec3<u32>(33152u, 6575u, 1u)))));
    global0 = array<f32, 28>();
    var var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(var_0.b.b.c.b.x | -2523i, _wgslsmith_sub_i32(-2147483647i << (_wgslsmith_mult_u32(arg_3, 49432u) % 32u), firstLeadingBit(-59444i))), vec2<i32>(2147483647i, arg_2.x));
    var var_2 = firstLeadingBit(u_input.a);
    return vec2<bool>(!(false || all(vec4<bool>(true, false, var_0.b.a.c.a, true))), ~var_0.b.d.c.d.x >= _wgslsmith_add_u32(_wgslsmith_div_u32(arg_3, 0u), 25800u));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: i32) -> vec2<i32> {
    let var_0 = select(arg_1.yxz, vec3<bool>(true, arg_1.x, arg_1.x), false);
    let var_1 = ~_wgslsmith_add_u32(_wgslsmith_mod_u32(countOneBits(0u), 70152u), ~(~1u));
    var var_2 = any(select(select(!select(vec2<bool>(arg_1.x, false), arg_1.xy, false), func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(34342u, 28u)], 631f, global0[_wgslsmith_index_u32(var_1, 28u)])), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, global0[_wgslsmith_index_u32(var_1, 28u)], 512f), vec3<f32>(-2550f, global0[_wgslsmith_index_u32(var_1, 28u)], global0[_wgslsmith_index_u32(var_1, 28u)]))), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_2, 1i, 44375i, -1i), vec4<i32>(u_input.a, arg_2, u_input.a, arg_2)), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 41607u), vec2<u32>(18427u, 1u))), vec2<bool>(false, any(arg_1.xw))), vec2<bool>(false, arg_1.x), var_0.xy));
    var_2 = countOneBits(var_1) == ~0u;
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(38111u, 1u), 28u)], 1045f, global0[_wgslsmith_index_u32(16771u, 28u)]) + vec3<f32>(global0[_wgslsmith_index_u32(1u, 28u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4545u, 0u), vec2<u32>(var_1, 1u)), var_1), 28u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1, 28u)])))));
    return arg_0 ^ min(_wgslsmith_div_vec2_i32(arg_0, select(arg_0, arg_0, true)) | -select(arg_0, vec2<i32>(arg_0.x, 40709i), arg_1.x), arg_0);
}

fn func_1(arg_0: Struct_2) -> vec3<i32> {
    let var_0 = arg_0.a.xy;
    let var_1 = arg_0.c.d.x;
    let var_2 = vec3<i32>(min(max(1i, _wgslsmith_dot_vec2_i32(var_0, func_2(arg_0.c.b.xy, vec4<bool>(arg_0.c.a, arg_0.c.a, false, false), u_input.a))), 31250i), abs(select(var_0.x, -arg_0.c.b.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_0.c.d.x), vec2<u32>(45910u, 29633u)) % 32u), all(!vec3<bool>(false, arg_0.c.c, true)))), max(arg_0.c.b.x, var_0.x << (arg_0.c.d.x % 32u)));
    global0 = array<f32, 28>();
    let var_3 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(arg_0.c.d.x, 28u)])), -105f), -902f);
    return ~_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(-vec3<i32>(arg_0.a.x, -2147483647i, arg_0.a.x), min(select(arg_0.a, var_2, vec3<bool>(false, true, arg_0.c.c)), vec3<i32>(22581i, 3936i, arg_0.a.x) | vec3<i32>(var_2.x, var_0.x, -2696i))), var_2);
}

fn func_4(arg_0: vec3<i32>, arg_1: u32, arg_2: vec3<f32>, arg_3: vec4<u32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_2.x)), _wgslsmith_f_op_f32(-782f - -299f), arg_2.x, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(arg_3.wx, arg_3.wy), arg_3.x), 28u)])));
    global0 = array<f32, 28>();
    var var_1 = Struct_4(Struct_2(_wgslsmith_div_vec3_i32(arg_0, max(arg_0, arg_0)), firstLeadingBit(arg_1), Struct_1(true, vec3<i32>(arg_0.x, select(-14507i, arg_0.x, false), -u_input.a), true, vec3<u32>(1u, arg_3.x, 93176u))), Struct_2(~(arg_0 << (_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1, arg_3.x, arg_3.x), arg_3.wwx) % vec3<u32>(32u))), _wgslsmith_clamp_u32(arg_3.x, arg_1, arg_1), Struct_1(true, func_1(Struct_2(arg_0, 19103u, Struct_1(true, vec3<i32>(arg_0.x, 1i, u_input.a), false, arg_3.zyz))), any(vec4<bool>(true, true, true, true)), ~arg_3.yzx)), 0u == arg_3.x, Struct_2(max(arg_0, -abs(arg_0)), _wgslsmith_mod_u32(1u, select(firstTrailingBit(12328u), arg_3.x, any(vec3<bool>(true, false, true)))), Struct_1(true, select(_wgslsmith_mod_vec3_i32(arg_0, vec3<i32>(u_input.a, u_input.a, u_input.a)), -vec3<i32>(0i, arg_0.x, -2147483647i), true), all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), true)), vec3<u32>(3593u >> (0u % 32u), ~32538u, 0u))));
    var var_2 = vec4<u32>(~(~0u), ~_wgslsmith_sub_u32(~abs(0u), var_1.b.b), arg_3.x, _wgslsmith_div_u32(_wgslsmith_mult_u32(~var_1.d.c.d.x, ~23892u), _wgslsmith_add_u32(19743u, _wgslsmith_mult_u32(1031u, var_1.d.b) >> (_wgslsmith_dot_vec3_u32(arg_3.wzy, var_1.b.c.d) % 32u))));
    var_1 = Struct_4(var_1.b, Struct_2(select(vec3<i32>(-1i) * -vec3<i32>(u_input.a, var_1.a.c.b.x, 2147483647i), ~countOneBits(arg_0), true), 21141u, var_1.d.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f + global0[_wgslsmith_index_u32(var_2.x, 28u)]))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(1993f))))) != _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1442f * global0[_wgslsmith_index_u32(25319u, 28u)]))))), Struct_2(vec3<i32>(select(-14948i, ~u_input.a, true), 1i, -2489i), arg_3.x, var_1.d.c));
    return func_3(vec3<f32>(-704f, -411f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1241f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2521f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-746f, -2651f)))), abs(vec4<i32>(arg_0.x, reverseBits(_wgslsmith_sub_i32(-44120i, arg_0.x)), -2147483647i, -arg_0.x)), ~abs(abs(_wgslsmith_dot_vec4_u32(arg_3, arg_3)))).x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(true, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), true, func_4(firstLeadingBit(func_1(Struct_2(vec3<i32>(2147483647i, u_input.a, u_input.a), 55989u, Struct_1(false, vec3<i32>(-35870i, 40456i, u_input.a), false, vec3<u32>(0u, 56663u, 59648u))))), abs(6806u), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, global0[_wgslsmith_index_u32(21337u, 28u)], global0[_wgslsmith_index_u32(0u, 28u)]))), select(~vec4<u32>(13198u, 1u, 1u, 24958u), vec4<u32>(1u, 1u, 1u, 1u), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), true))));
    let var_1 = ~(~_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(1u, 1u, 1u)), vec3<u32>(1u, 1u, 1u), ~max(vec3<u32>(53005u, 8066u, 32065u), vec3<u32>(1u, 4294967295u, 1u))));
    var var_2 = true;
    global0 = array<f32, 28>();
    let var_3 = Struct_4(Struct_2(-(~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 1i, 13539i), vec3<i32>(-84830i, u_input.a, 0i))), 5423u, Struct_1(func_3(vec3<f32>(1782f, -544f, 1225f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1756f, -1580f, global0[_wgslsmith_index_u32(var_1.x, 28u)])), ~vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), firstTrailingBit(4294967295u)).x, countOneBits(vec3<i32>(-1i, u_input.a, -29928i)) << (var_1 % vec3<u32>(32u)), var_0.x, ~var_1)), Struct_2(vec3<i32>(-u_input.a, -16426i, 2147483647i) | _wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a, u_input.a, 1i)), vec3<i32>(u_input.a, 0i, u_input.a)), var_1.x, Struct_1(var_0.x, select(vec3<i32>(u_input.a, -1i, u_input.a) & vec3<i32>(2147483647i, 61136i, 14014i), -vec3<i32>(u_input.a, u_input.a, u_input.a), false & var_0.x), var_0.x, select(var_1, var_1, vec3<bool>(true, true, true)))), false, Struct_2(abs(-vec3<i32>(u_input.a, u_input.a, 2147483647i)) ^ vec3<i32>(-u_input.a, ~u_input.a, 1i), min(firstTrailingBit(var_1.x) | _wgslsmith_sub_u32(0u, var_1.x), var_1.x), Struct_1(true, -abs(vec3<i32>(u_input.a, u_input.a, u_input.a)), var_0.x, var_1)));
    let var_4 = vec2<u32>(~_wgslsmith_clamp_u32(var_1.x, var_3.a.c.d.x, _wgslsmith_mult_u32(~38933u, ~var_1.x)), var_3.b.c.d.x);
    var_2 = ~_wgslsmith_div_i32(select(u_input.a, _wgslsmith_div_i32(var_3.b.c.b.x, -23525i), true | var_3.b.c.c), var_3.a.c.b.x) <= 1i;
    let var_5 = var_3.a.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(var_4.x, 28u)], 1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-438f, global0[_wgslsmith_index_u32(var_4.x, 28u)])))))))), _wgslsmith_add_vec4_u32(~_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_4.x, 2312u, var_5.d.x, 0u), vec4<u32>(var_3.d.b, 25406u, 4294967295u, 0u)), ~vec4<u32>(1u, 13287u, 66101u, 1u)), vec4<u32>(~(~1u), var_4.x, ~(~3248u), var_4.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1461f, -406f, global0[_wgslsmith_index_u32(14943u, 28u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(var_3.d.c.d.x, 28u)], global0[_wgslsmith_index_u32(var_3.a.c.d.x, 28u)], global0[_wgslsmith_index_u32(49776u, 28u)])), var_0.zzy)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(var_4.x, 28u)], -779f, global0[_wgslsmith_index_u32(0u, 28u)]) * vec3<f32>(374f, 390f, global0[_wgslsmith_index_u32(0u, 28u)])) + vec3<f32>(global0[_wgslsmith_index_u32(var_3.b.b, 28u)], global0[_wgslsmith_index_u32(var_4.x, 28u)], global0[_wgslsmith_index_u32(var_3.b.b, 28u)])))), ~(vec3<i32>(1i, _wgslsmith_dot_vec2_i32(var_5.b.xy, vec2<i32>(0i, u_input.a)), u_input.a) >> (vec3<u32>(countOneBits(21530u), ~var_5.d.x, max(var_5.d.x, var_5.d.x)) % vec3<u32>(32u))));
}

