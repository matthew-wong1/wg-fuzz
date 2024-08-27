struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_2, arg_3: vec3<bool>) -> i32 {
    global0 = array<i32, 18>();
    let var_0 = vec2<bool>(true, true);
    var var_1 = Struct_3(vec2<u32>(~firstLeadingBit(0u), _wgslsmith_clamp_u32(u_input.a.x, arg_2.b.b.x, _wgslsmith_add_u32(arg_2.c.b.x, ~u_input.a.x))), select(vec3<bool>(false, !(global0[_wgslsmith_index_u32(arg_2.a.b.x, 18u)] >= global0[_wgslsmith_index_u32(u_input.a.x, 18u)]), true), select(vec3<bool>(global0[_wgslsmith_index_u32(99064u, 18u)] >= 0i, false, var_0.x), vec3<bool>(arg_0.x, false, var_0.x), true), false | !(-16622i >= global0[_wgslsmith_index_u32(56795u, 18u)])), ~u_input.a, abs(select(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], global0[_wgslsmith_index_u32(u_input.a.x, 18u)], -2147483647i) << (arg_2.d % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(7058u, 18u)], global0[_wgslsmith_index_u32(arg_2.d.x, 18u)], global0[_wgslsmith_index_u32(1u, 18u)]), vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 18u)], global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(1u, 18u)]), vec3<i32>(-1i, 0i, global0[_wgslsmith_index_u32(0u, 18u)])), vec3<bool>(true, arg_0.x, false))) & ~vec3<i32>(1i, abs(global0[_wgslsmith_index_u32(1u, 18u)]), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, global0[_wgslsmith_index_u32(9316u, 18u)], -10544i), vec3<i32>(global0[_wgslsmith_index_u32(37867u, 18u)], 0i, 2147483647i))), firstTrailingBit(-vec4<i32>(~global0[_wgslsmith_index_u32(14897u, 18u)], global0[_wgslsmith_index_u32(1u | arg_2.b.b.x, 18u)], 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(19587u, 18u)], global0[_wgslsmith_index_u32(6498u, 18u)], -1i, -1i), vec4<i32>(global0[_wgslsmith_index_u32(arg_2.d.x, 18u)], 26366i, -1i, global0[_wgslsmith_index_u32(arg_2.c.b.x, 18u)])))));
    var var_2 = var_1.e;
    var_2 = vec4<i32>(2147483647i, -2147483647i, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1.a.x ^ ~var_1.a.x, arg_2.a.b.x), 18u)], ~var_1.d.x);
    return _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(7431i, 1i)) >> (_wgslsmith_sub_vec2_u32(reverseBits(arg_2.d.xy), vec2<u32>(1u, u_input.a.x)) % vec2<u32>(32u)), select(-min(vec2<i32>(global0[_wgslsmith_index_u32(28195u, 18u)], 40981i), vec2<i32>(-39102i, 2147483647i)), vec2<i32>(-global0[_wgslsmith_index_u32(var_1.a.x, 18u)], -var_2.x), true)), ~var_1.d.zz);
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: i32, arg_3: i32) -> vec2<u32> {
    let var_0 = false;
    let var_1 = arg_1;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(205f - arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * arg_0), 4294967295u > _wgslsmith_mult_u32(_wgslsmith_mod_u32(13186u, u_input.a.x), 4294967295u))), -493f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1f)) * _wgslsmith_f_op_f32(abs(arg_0))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -447f) - -110f), arg_0))));
    global0 = array<i32, 18>();
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(arg_0, 1000f))));
    return ~u_input.a << (_wgslsmith_div_vec2_u32(u_input.a, u_input.a) % vec2<u32>(32u));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<f32>) -> vec2<u32> {
    global0 = array<i32, 18>();
    var var_0 = Struct_3(~func_4(arg_1.x, _wgslsmith_clamp_u32(~arg_0.x, u_input.a.x, ~1u), -global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(5588u, u_input.a.x, 4294967295u, arg_0.x), vec4<u32>(4294967295u, u_input.a.x, 4294967295u, arg_0.x)), 18u)], max(_wgslsmith_mult_i32(-2589i, global0[_wgslsmith_index_u32(arg_0.x, 18u)]), func_3(vec2<bool>(true, true), -596f, Struct_2(Struct_1(arg_1.x, vec2<u32>(1u, u_input.a.x)), Struct_1(-982f, vec2<u32>(arg_0.x, arg_0.x)), Struct_1(arg_1.x, u_input.a), vec3<u32>(arg_0.x, arg_0.x, 38933u)), vec3<bool>(false, true, false)))), vec3<bool>(!select(arg_0.x == 4294967295u, true, true), true, true), vec2<u32>(select(u_input.a.x, 0u, false) ^ 1u, u_input.a.x), _wgslsmith_mod_vec3_i32(vec3<i32>(countOneBits(global0[_wgslsmith_index_u32(abs(u_input.a.x), 18u)]), global0[_wgslsmith_index_u32(~arg_0.x ^ arg_0.x, 18u)], _wgslsmith_clamp_i32(0i, global0[_wgslsmith_index_u32(60610u, 18u)], 1i)), firstLeadingBit(vec3<i32>(-1i, global0[_wgslsmith_index_u32(~4294967295u, 18u)], 55202i))), select(~vec4<i32>(global0[_wgslsmith_index_u32(arg_0.x, 18u)], firstTrailingBit(global0[_wgslsmith_index_u32(44906u, 18u)]), _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(arg_0.x, 18u)], global0[_wgslsmith_index_u32(0u, 18u)]), vec2<i32>(global0[_wgslsmith_index_u32(arg_0.x, 18u)], global0[_wgslsmith_index_u32(91462u, 18u)])), _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(84137u, 18u)], 2147483647i)), abs(vec4<i32>(-4779i, global0[_wgslsmith_index_u32(arg_0.x, 18u)], -41005i, global0[_wgslsmith_index_u32(arg_0.x, 18u)]) >> (vec4<u32>(arg_0.x, 13951u, 71460u, arg_0.x) % vec4<u32>(32u))) & select(firstTrailingBit(vec4<i32>(global0[_wgslsmith_index_u32(1u, 18u)], global0[_wgslsmith_index_u32(u_input.a.x, 18u)], 0i, global0[_wgslsmith_index_u32(arg_0.x, 18u)])), -vec4<i32>(1i, 1i, global0[_wgslsmith_index_u32(arg_0.x, 18u)], global0[_wgslsmith_index_u32(u_input.a.x, 18u)]), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true))), select(vec4<bool>(true, true, true, 1000f == arg_1.x), vec4<bool>(true, true, true, true), true)));
    var var_1 = Struct_2(Struct_1(-1237f, arg_0), Struct_1(1000f, vec2<u32>(~u_input.a.x ^ u_input.a.x, _wgslsmith_div_u32(~29703u, min(6545u, var_0.a.x)))), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(arg_1.x, arg_1.x)))))), func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2338f * -1241f) + _wgslsmith_f_op_f32(-arg_1.x)), var_0.c.x, _wgslsmith_add_i32(-15432i, global0[_wgslsmith_index_u32(~arg_0.x, 18u)]), 1i)), vec3<u32>(28868u, ~(~(~8120u)), 1u));
    var var_2 = countOneBits(vec4<u32>(firstTrailingBit(abs(u_input.a.x)), _wgslsmith_dot_vec2_u32(var_0.a, vec2<u32>(67741u, u_input.a.x)) & 19758u, ~u_input.a.x >> ((arg_0.x & arg_0.x) % 32u), max(~var_1.d.x, _wgslsmith_mult_u32(27969u, 1u)))) | select((vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u) & vec4<u32>(arg_0.x, 0u, 7340u, 1u)) & (vec4<u32>(4915u, var_1.b.b.x, u_input.a.x, 2867u) >> (~vec4<u32>(arg_0.x, arg_0.x, 4294967295u, 0u) % vec4<u32>(32u))), vec4<u32>(4294967295u << (arg_0.x % 32u), ~abs(var_0.a.x), ~1u, ~58667u), any(var_0.b));
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -375f) + _wgslsmith_f_op_f32(round(-346f)))), arg_1.x)), arg_1.x));
    return vec2<u32>(_wgslsmith_clamp_u32(0u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(firstTrailingBit(1u), abs(8917u), abs(50206u)), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(66808u, var_0.c.x, 4294967295u, 17967u)), vec4<u32>(u_input.a.x, 913u, var_1.a.b.x, 4294967295u))), var_0.c.x), _wgslsmith_add_u32(var_0.a.x, countOneBits(~1u)));
}

fn func_1(arg_0: f32) -> Struct_1 {
    global0 = array<i32, 18>();
    var var_0 = !(!vec3<bool>(all(vec4<bool>(true, true, true, true)), all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false))), false));
    var var_1 = var_0.x | !var_0.x;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-350f, _wgslsmith_div_f32(-639f, -1000f)))), _wgslsmith_div_vec2_u32(vec2<u32>(27011u, ~1u) >> (vec2<u32>(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), ~45903u) % vec2<u32>(32u)), u_input.a));
    let var_3 = Struct_3(_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, u_input.a.x), vec2<u32>(var_2.b.x, 15373u), vec2<u32>(30694u, var_2.b.x)), u_input.a), func_2(~firstTrailingBit(u_input.a), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.a, -405f, -1285f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 1900f, var_2.a) + vec3<f32>(-1054f, -601f, 704f)))))), !(!vec3<bool>(true, any(vec4<bool>(true, true, var_0.x, false)), var_0.x == var_0.x)), var_2.b, firstLeadingBit(_wgslsmith_mult_vec3_i32(max(abs(vec3<i32>(global0[_wgslsmith_index_u32(51261u, 18u)], global0[_wgslsmith_index_u32(var_2.b.x, 18u)], global0[_wgslsmith_index_u32(1u, 18u)])), vec3<i32>(-1i, -1i, -2147483647i)), ~vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 18u)], -2147483647i, 3556i))), _wgslsmith_add_vec4_i32(select(~vec4<i32>(-1i, -2147483647i, 1i, 71311i), vec4<i32>(1i, 1i, 1i, 1i), vec4<bool>(true, false, true, var_0.x)), ~select(vec4<i32>(1i, 2147483647i, 39633i, global0[_wgslsmith_index_u32(38798u, 18u)]), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], global0[_wgslsmith_index_u32(var_2.b.x, 18u)], global0[_wgslsmith_index_u32(u_input.a.x, 18u)], global0[_wgslsmith_index_u32(var_2.b.x, 18u)]), vec4<bool>(false, var_0.x, var_0.x, true))) << (abs(vec4<u32>(var_2.b.x, 4294967295u, 88970u, 4313u) & _wgslsmith_add_vec4_u32(vec4<u32>(0u, 1479u, 0u, u_input.a.x), vec4<u32>(u_input.a.x, 74740u, u_input.a.x, 101031u))) % vec4<u32>(32u)));
    return Struct_1(572f, var_3.a);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3) -> Struct_3 {
    global0 = array<i32, 18>();
    let var_0 = arg_1;
    let var_1 = vec2<f32>(-551f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(round(172f)))), -1315f));
    global0 = array<i32, 18>();
    var var_2 = Struct_2(Struct_1(var_1.x, vec2<u32>(57371u, func_2(arg_0.b | arg_1.a, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, var_1.x, -708f), vec3<f32>(arg_0.a, var_1.x, var_1.x), arg_1.b.x))).x)), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f * -635f))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-715f, arg_0.a, false)))))), Struct_1(var_1.x, u_input.a), _wgslsmith_clamp_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(var_0.c.x, 1u, 1u), vec3<u32>(arg_0.b.x, arg_0.b.x, 19502u)), _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(68911u, arg_1.c.x, 0u)), ~vec3<u32>(4294967295u, var_0.c.x, 0u), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a.x, arg_1.a.x, 66377u), vec3<u32>(0u, u_input.a.x, var_0.a.x), countOneBits(vec3<u32>(var_0.c.x, arg_1.c.x, 4294967295u)))), abs(vec3<u32>(arg_1.a.x, ~27840u, ~var_0.a.x))));
    return Struct_3(var_0.c, vec3<bool>(false, false, !arg_1.b.x), ~func_1(_wgslsmith_f_op_f32(-1f)).b, var_0.e.zyz, -vec4<i32>(~(-var_0.e.x), global0[_wgslsmith_index_u32(59620u, 18u)], ~select(-2147483647i, var_0.d.x, arg_1.b.x), _wgslsmith_dot_vec2_i32(-vec2<i32>(var_0.e.x, global0[_wgslsmith_index_u32(arg_0.b.x, 18u)]), vec2<i32>(var_0.e.x, 2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(204f + -346f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -3152f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-310f)) + _wgslsmith_f_op_f32(f32(-1f) * -115f)))));
    global0 = array<i32, 18>();
    let var_1 = func_5(func_1(-765f), Struct_3(u_input.a, select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), false), _wgslsmith_sub_vec2_u32(u_input.a ^ ~vec2<u32>(7941u, 51708u), _wgslsmith_div_vec2_u32(vec2<u32>(0u, 4377u) & vec2<u32>(u_input.a.x, u_input.a.x), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(2485u, u_input.a.x)))), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(42836i, 1i, global0[_wgslsmith_index_u32(u_input.a.x, 18u)]), vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(u_input.a.x, 18u)])), -vec3<i32>(global0[_wgslsmith_index_u32(16555u, 18u)], global0[_wgslsmith_index_u32(40428u, 18u)], -1i)), select(-vec3<i32>(27843i, global0[_wgslsmith_index_u32(u_input.a.x, 18u)], 27829i), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(u_input.a.x, 18u)]), vec3<i32>(1i, global0[_wgslsmith_index_u32(4294967295u, 18u)], global0[_wgslsmith_index_u32(u_input.a.x, 18u)])), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true)), firstTrailingBit(vec3<i32>(global0[_wgslsmith_index_u32(21836u, 18u)], 2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 18u)])) & abs(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], global0[_wgslsmith_index_u32(u_input.a.x, 18u)], global0[_wgslsmith_index_u32(32050u, 18u)]))), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], 17720i, 57067i, global0[_wgslsmith_index_u32(u_input.a.x, 18u)]), -(vec4<i32>(-28326i, -1i, 1i, global0[_wgslsmith_index_u32(62383u, 18u)]) & vec4<i32>(713i, 10005i, 0i, global0[_wgslsmith_index_u32(u_input.a.x, 18u)])), firstLeadingBit(-vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], 31710i, 1i, -1i)))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - func_1(-188f).a)), _wgslsmith_mod_vec2_u32(func_2(~u_input.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(-819f, 352f, 1000f) + vec3<f32>(var_0.x, var_0.x, var_0.x))), u_input.a)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -676f)) - _wgslsmith_f_op_f32(f32(-1f) * -260f)), u_input.a), func_1(_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_sub_vec3_u32(~max(~vec3<u32>(u_input.a.x, 11338u, var_1.c.x), vec3<u32>(6942u, var_1.c.x, 1u)), vec3<u32>(~4294967295u | func_1(424f).b.x, ~_wgslsmith_add_u32(29400u, u_input.a.x), u_input.a.x)));
    var var_3 = vec2<u32>(var_1.c.x, ~(~u_input.a.x));
    var_3 = vec2<u32>(abs(var_1.c.x << ((var_3.x | _wgslsmith_sub_u32(1u, var_2.a.b.x)) % 32u)), ~(~var_2.a.b.x));
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-1637f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(var_2.b.a)), -491f, var_1.b.x)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.x, -704f)))))));
    var var_4 = Struct_2(var_2.b, Struct_1(var_2.c.a, ~vec2<u32>(var_1.a.x, var_3.x) ^ vec2<u32>(~35292u, select(44782u, var_1.a.x, var_1.b.x))), var_2.a, _wgslsmith_mult_vec3_u32(select(~(~var_2.d), ~countOneBits(vec3<u32>(58347u, 10883u, 10748u)), true || any(vec4<bool>(false, var_1.b.x, false, var_1.b.x))), var_2.d << (~var_2.d % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2029f))));
}

