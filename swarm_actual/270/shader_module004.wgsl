struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: i32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: u32,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<u32>) -> vec4<f32> {
    var var_0 = Struct_1(global0.d.a, !all(!vec2<bool>(true, global0.c.a.d)), ~(~(~(~(-7464i)))), global0.d.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e.a.x) - _wgslsmith_f_op_f32(max(global0.e.e, global0.e.e))))));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(f32(-1f) * -963f))))));
    var var_2 = !all(!select(!vec3<bool>(true, var_0.d, false), vec3<bool>(false, true, var_0.b), select(vec3<bool>(var_0.d, var_0.b, true), vec3<bool>(var_0.d, true, false), var_0.d)));
    let var_3 = _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(firstTrailingBit(~vec3<i32>(var_0.c, var_0.c, global0.d.c) >> (select(vec3<u32>(1u, arg_0.x, u_input.b.x), arg_0.xyx, true) % vec3<u32>(32u))), -u_input.d), u_input.c);
    var var_4 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(global0.a.e.a, vec4<f32>(-881f, -460f, global0.a.a.a.x, global0.e.e), vec4<bool>(var_0.b, true, false, true))))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.a.x))) <= _wgslsmith_f_op_f32(trunc(240f)), var_0.c, all(!select(vec4<bool>(global0.a.a.d, global0.e.d, global0.d.b, var_0.d), vec4<bool>(true, var_0.b, var_0.b, global0.d.b), vec4<bool>(false, false, var_0.b, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1829f))))), firstLeadingBit(global0.e.c << ((arg_0.x >> (abs(1u) % 32u)) % 32u)), abs(abs(abs(vec2<i32>(var_0.c, -37278i)))), reverseBits(countOneBits(var_3.x)), global0.a.a);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a.x, var_0.e))), _wgslsmith_f_op_f32(round(global0.c.e.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.e), -1350f), _wgslsmith_f_op_f32(var_0.a.x * -118f)) * var_4.e.a) * vec4<f32>(-536f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_4.e.e, _wgslsmith_f_op_f32(step(var_4.e.a.x, -351f)), var_4.e.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1099f - var_4.a.a.x) - _wgslsmith_f_op_f32(floor(var_4.a.a.x))), _wgslsmith_div_f32(-964f, var_4.a.a.x)), global0.e.a.x));
}

fn func_2() -> vec2<i32> {
    global0 = Struct_3(global0.c, -1i, Struct_2(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec4<u32>(u_input.b.x, 0u, 1u, 1u))), _wgslsmith_div_vec4_f32(global0.a.e.a, vec4<f32>(global0.d.e, global0.c.e.e, global0.e.a.x, -516f))), global0.d.b, 2147483647i, global0.c.e.b, _wgslsmith_div_f32(372f, _wgslsmith_f_op_f32(min(global0.d.a.x, -627f)))), global0.c.b << (1u % 32u), firstTrailingBit(-firstTrailingBit(global0.c.c)), _wgslsmith_dot_vec3_i32(~vec3<i32>(global0.b, global0.d.c, 55633i) | ~u_input.d, -vec3<i32>(global0.e.c, 1i, global0.a.e.c) & u_input.c), global0.e), global0.c.a, global0.c.a);
    var var_0 = vec4<u32>(min(u_input.b.x, countOneBits(reverseBits(u_input.b.x))), ~(~abs(~0u)), select(u_input.b.x, 1u ^ _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x)), ~vec4<u32>(0u, 4294967295u, u_input.b.x, u_input.b.x)), global0.d.d), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(9486u, 0u, u_input.b.x, 4294967295u), vec4<u32>(5916u, u_input.b.x, u_input.b.x, 1u), vec4<u32>(41200u, 3442u, u_input.b.x, u_input.b.x)), ~vec4<u32>(u_input.b.x, 48252u, 12716u, 0u)), select(abs(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 35498u)), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) | vec4<u32>(u_input.b.x, 53353u, u_input.b.x, 275u), select(vec4<bool>(global0.d.b, false, global0.c.a.d, false), vec4<bool>(false, false, global0.c.e.d, global0.c.e.b), global0.a.e.b))), ~(~vec4<u32>(u_input.b.x, u_input.b.x, 40481u, u_input.b.x))));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(541f - 115f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.a.x) - _wgslsmith_f_op_f32(-1522f - -1052f)))), _wgslsmith_f_op_f32(max(global0.c.a.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.d.a.x)) * global0.d.a.x))))));
    var var_2 = ~(select(countOneBits(reverseBits(vec4<i32>(1i, global0.a.e.c, global0.d.c, 0i))), -_wgslsmith_div_vec4_i32(vec4<i32>(1i, u_input.e, u_input.e, u_input.e), vec4<i32>(2147483647i, global0.b, 2147483647i, global0.d.c)), select(vec4<bool>(global0.d.b, false, global0.c.a.b, global0.c.a.b), vec4<bool>(global0.d.d, global0.c.e.b, global0.a.e.d, false), global0.a.e.d | global0.d.b)) | vec4<i32>(_wgslsmith_add_i32(u_input.c.x, u_input.e), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.d.x, 1i, u_input.a), global0.b), _wgslsmith_dot_vec2_i32(reverseBits(global0.c.c), abs(u_input.c.zz)), _wgslsmith_clamp_i32(2147483647i, -59507i, 1i) & (u_input.a | 2147483647i)));
    var_0 = vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(0u, u_input.b.x), 56864u), select(vec2<u32>(22281u, ~u_input.b.x), var_0.yw, !vec2<bool>(global0.e.d, global0.d.d))), abs(1u), var_0.x);
    return vec2<i32>(min(_wgslsmith_mult_i32(~global0.c.b, global0.e.c), global0.d.c), -_wgslsmith_div_i32(1i, -2147483647i)) & global0.c.c;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: f32, arg_3: Struct_1) -> Struct_3 {
    var var_0 = 11325i;
    global0 = Struct_3(arg_0, 6469i, global0.c, Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(arg_0.e.a, arg_3.a), arg_0.e.a, vec4<bool>(true, false, global0.d.b, false))), vec4<f32>(_wgslsmith_f_op_f32(arg_2 + 1583f), -1157f, global0.e.a.x, global0.d.a.x), vec4<bool>(arg_3.d, true, true, select(global0.e.d, false, arg_0.a.d)))), global0.d.b, -44979i, arg_3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.e.e + 265f) - _wgslsmith_f_op_f32(-arg_0.e.e)))), global0.a.a);
    global0 = Struct_3(Struct_2(global0.e, 19252i, vec2<i32>(u_input.e, u_input.e), -2147483647i, arg_0.a), reverseBits(-select(0i, -16808i, false)) | 1i, global0.a, Struct_1(_wgslsmith_f_op_vec4_f32(-global0.d.a), !global0.e.b, abs(countOneBits(i32(-1i) * -2191i)), all(vec2<bool>(global0.c.e.d, true)), arg_0.a.a.x), Struct_1(arg_3.a, all(!vec2<bool>(false, global0.c.e.b)), _wgslsmith_clamp_i32(u_input.d.x, ~15585i, 12394i), arg_0.a.d, global0.d.a.x));
    var var_1 = select(select(vec2<bool>(arg_3.b & true, true), vec2<bool>(any(!vec3<bool>(arg_0.e.b, global0.c.e.b, true)), !(!arg_0.a.d)), select(vec2<bool>(arg_0.e.b, any(vec4<bool>(arg_0.a.b, global0.a.e.b, arg_3.d, true))), select(select(vec2<bool>(false, true), vec2<bool>(false, arg_0.a.b), global0.a.a.b), vec2<bool>(true, arg_0.a.d), true), false)), vec2<bool>(true, !global0.d.b), false);
    let var_2 = _wgslsmith_f_op_f32(arg_2 - _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.e) * arg_2), 2045f), arg_2));
    return Struct_3(Struct_2(arg_0.a, -73274i, _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(-arg_0.c, vec2<i32>(arg_1.x, arg_1.x) & arg_0.c), ~vec2<i32>(global0.a.c.x, 2147483647i)), _wgslsmith_div_i32(0i, ~arg_0.c.x), Struct_1(arg_0.e.a, true, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.d.yy, vec2<i32>(u_input.d.x, arg_0.b)), vec2<i32>(arg_3.c, 1i) >> (vec2<u32>(u_input.b.x, 3786u) % vec2<u32>(32u))), any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-arg_3.a.x))), _wgslsmith_sub_i32(17047i, i32(-1i) * -61815i), Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -601f), _wgslsmith_div_f32(arg_3.a.x, -668f), -595f, var_2), false, 1i & (-1i ^ u_input.e), !all(vec2<bool>(true, false)), arg_0.e.a.x), global0.c.c.x, _wgslsmith_add_vec2_i32(select(arg_0.c, vec2<i32>(-2147483647i, u_input.c.x), var_1.x) >> (vec2<u32>(u_input.b.x, 4294967295u) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_mod_i32(arg_0.d, arg_3.c), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global0.b, 1i), u_input.c))), abs(abs(reverseBits(global0.c.c.x))), Struct_1(vec4<f32>(arg_2, var_2, _wgslsmith_f_op_f32(f32(-1f) * -408f), 272f), (arg_0.e.b != false) & any(vec2<bool>(true, true)), arg_1.x, !(u_input.c.x != arg_3.c), _wgslsmith_f_op_f32(901f * _wgslsmith_f_op_f32(f32(-1f) * -2053f)))), global0.a.e, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_2 * -879f), -1000f, _wgslsmith_f_op_f32(max(-500f, -566f)), _wgslsmith_f_op_f32(var_2 - arg_2)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2, -481f, arg_2, 1488f), _wgslsmith_f_op_vec4_f32(vec4<f32>(880f, global0.a.e.e, global0.c.e.a.x, -777f) + vec4<f32>(1000f, arg_3.a.x, global0.c.a.e, 266f)), all(vec3<bool>(var_1.x, true, false))))), global0.a.e.d, -_wgslsmith_mod_i32(arg_0.d, ~arg_3.c), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(191f)))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-770f * arg_3.a.x) * -797f), arg_0.a.e));
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: f32) -> Struct_2 {
    global0 = func_4(Struct_2(global0.e, abs(-1i), firstLeadingBit(~u_input.d.yy) ^ max(abs(vec2<i32>(global0.b, -3738i)), func_2()), _wgslsmith_sub_i32(-28722i, global0.e.c), global0.d), vec3<i32>(countOneBits(global0.a.d ^ select(30441i, 16465i, arg_1)), -_wgslsmith_sub_i32(_wgslsmith_add_i32(-1i, global0.a.e.c), -u_input.c.x), _wgslsmith_sub_i32(-2147483647i, min(-2147483647i, u_input.a))), global0.c.a.e, global0.e);
    let var_0 = func_4(func_4(func_4(global0.a, ~(~vec3<i32>(1i, u_input.e, -61190i)), _wgslsmith_f_op_f32(-121f * arg_2), Struct_1(global0.e.a, func_4(global0.c, vec3<i32>(global0.d.c, u_input.e, u_input.a), arg_2, global0.a.e).e.d, firstLeadingBit(11815i), true, _wgslsmith_f_op_f32(global0.c.e.a.x - global0.c.e.e))).a, ~vec3<i32>(16813i, -u_input.d.x, _wgslsmith_mult_i32(u_input.d.x, global0.d.c)), 1f, global0.d).c, ~vec3<i32>(_wgslsmith_add_i32(countOneBits(u_input.d.x), ~global0.a.c.x), -global0.a.d, u_input.c.x), 1691f, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_div_f32(-411f, -187f), false)), _wgslsmith_f_op_f32(-global0.c.e.a.x), _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(select(1399f, global0.d.e, global0.e.b))), arg_2), -(-13597i << (u_input.b.x % 32u)) > u_input.e, _wgslsmith_add_i32(u_input.d.x, firstLeadingBit(~(-11748i))), global0.c.a.d && (true || global0.d.b), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.d.e), -759f)))).a;
    let var_1 = var_0.e.a;
    let var_2 = Struct_3(func_4(Struct_2(func_4(Struct_2(Struct_1(vec4<f32>(2555f, 666f, -1179f, var_0.a.e), true, -2147483647i, arg_1, var_1.x), u_input.e, vec2<i32>(global0.e.c, -9923i), -1i, var_0.e), vec3<i32>(global0.a.c.x, 21175i, -1i), global0.d.e, func_4(Struct_2(global0.d, 0i, vec2<i32>(u_input.d.x, -2147483647i), global0.c.d, Struct_1(var_0.a.a, true, u_input.d.x, arg_1, arg_2)), vec3<i32>(u_input.a, var_0.e.c, 0i), var_0.a.a.x, global0.e).c.e).c.a, u_input.e, min(vec2<i32>(u_input.e, var_0.e.c), u_input.c.yy), ~(-12193i), var_0.e), min(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.c, vec3<i32>(51232i, u_input.c.x, var_0.e.c)), vec3<i32>(3405i, global0.b, 0i) ^ vec3<i32>(9536i, u_input.a, -79956i)), ~(~vec3<i32>(var_0.c.x, u_input.e, 64754i))), var_1.x, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_1, vec4<f32>(arg_2, var_1.x, -1000f, var_0.a.e), vec4<bool>(global0.a.a.d, arg_1, false, global0.d.b)))), all(vec4<bool>(true, false, true, false)), select(0i, -21382i, !arg_1), !(var_0.a.d | global0.a.e.d), var_1.x)).c, -countOneBits(-3483i << (~arg_0.x % 32u)), func_4(func_4(func_4(var_0, u_input.c, _wgslsmith_f_op_f32(-1000f + arg_2), func_4(global0.c, u_input.c, 1000f, var_0.a).c.e).c, vec3<i32>(-2147483647i, u_input.a, var_0.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(vec4<u32>(arg_0.x, 4294967295u, u_input.b.x, 17942u))).x - _wgslsmith_f_op_f32(-var_0.e.a.x)), func_4(Struct_2(Struct_1(global0.d.a, global0.c.a.d, u_input.d.x, arg_1, arg_2), -14939i, var_0.c, var_0.a.c, Struct_1(vec4<f32>(var_0.e.e, var_1.x, -1000f, var_1.x), true, var_0.e.c, global0.c.e.d, -173f)), ~vec3<i32>(u_input.d.x, u_input.e, var_0.b), -374f, Struct_1(var_0.a.a, false, var_0.b, true, -1779f)).a.e).c, u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.a.a.x, var_0.a.a.x)), Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(784f, var_1.x, var_0.a.a.x, 716f)))), arg_1, ~firstTrailingBit(2147483647i), (var_0.e.c != global0.c.a.c) & any(vec2<bool>(false, true)), -184f)).c, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.e, 364f, 1467f, var_1.x))), arg_1, -u_input.d.x, select(global0.c.a.d, true, global0.b >= -2147483647i), var_0.e.a.x), Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.e.e, _wgslsmith_f_op_f32(round(-713f)), _wgslsmith_f_op_f32(f32(-1f) * -215f), _wgslsmith_f_op_f32(min(global0.e.a.x, var_1.x))))), false, global0.c.e.c, true, -267f));
    global0 = Struct_3(var_2.c, global0.d.c | var_0.d, func_4(var_2.c, u_input.d, -844f, func_4(var_2.c, countOneBits(u_input.d), global0.c.e.a.x, var_2.d).a.e).a, Struct_1(vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-310f * global0.c.e.a.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1164f, global0.c.e.e) - func_4(global0.c, vec3<i32>(-35158i, u_input.d.x, var_2.d.c), 664f, var_0.e).e.a.x), var_0.a.e), u_input.b.x >= _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 61347u, 4294967295u, u_input.b.x), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, arg_0.x, u_input.b.x, u_input.b.x), vec4<u32>(54688u, 1u, arg_0.x, arg_0.x))), global0.e.c, arg_1, global0.c.e.a.x), func_4(func_4(func_4(func_4(Struct_2(Struct_1(vec4<f32>(var_2.a.a.a.x, var_2.d.a.x, -896f, global0.a.a.a.x), var_2.a.e.b, 2147483647i, true, global0.e.a.x), u_input.d.x, u_input.d.zz, -17037i, Struct_1(vec4<f32>(1803f, -184f, var_1.x, 673f), arg_1, var_0.c.x, false, -246f)), vec3<i32>(u_input.c.x, global0.d.c, var_0.c.x), 450f, var_0.a).c, countOneBits(u_input.d), _wgslsmith_f_op_f32(1563f + var_2.d.e), var_2.e).a, ~(-u_input.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.a.e.a.x))), func_4(global0.a, firstTrailingBit(vec3<i32>(1i, 10078i, 1i)), arg_2, Struct_1(vec4<f32>(353f, arg_2, var_2.e.e, var_2.a.a.a.x), var_2.a.a.d, -1i, false, 896f)).d).a, vec3<i32>(var_0.d, -7052i, -25245i), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.e.e * var_2.c.e.e), var_1.x)))), func_4(func_4(func_4(Struct_2(Struct_1(var_1, arg_1, var_2.c.b, global0.e.d, 1000f), 0i, vec2<i32>(u_input.a, 0i), 1i, var_2.a.a), vec3<i32>(-256i, global0.e.c, 1i), 166f, Struct_1(vec4<f32>(-952f, arg_2, -468f, 981f), var_0.a.d, -40260i, var_0.a.d, var_0.a.e)).a, vec3<i32>(global0.c.e.c, var_2.e.c, global0.b), _wgslsmith_f_op_f32(floor(global0.a.e.e)), func_4(Struct_2(Struct_1(var_1, var_0.a.d, -1i, true, arg_2), 0i, global0.c.c, u_input.c.x, global0.a.e), vec3<i32>(u_input.e, 1i, var_0.c.x), -294f, Struct_1(var_1, false, var_0.d, false, var_1.x)).c.e).a, vec3<i32>(global0.e.c, var_2.a.e.c, i32(-1i) * -42779i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.a.e.e, 989f, true)) - _wgslsmith_f_op_f32(global0.e.a.x + var_2.e.a.x)), Struct_1(vec4<f32>(global0.a.a.a.x, global0.d.e, var_2.d.a.x, 357f), true, -1i, true, _wgslsmith_f_op_f32(floor(-1011f)))).a.e).e);
    return global0.a;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: vec3<u32>) -> Struct_3 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.e, -770f, global0.a.a.a.x, -560f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global0.e.a, vec4<f32>(1134f, arg_1.a.e, arg_0.a.a.a.x, -573f)))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec4<u32>(u_input.b.x, arg_3.x, 0u, 0u))) * arg_1.e.a)))), all(!(!vec4<bool>(false, true, false, arg_0.c.e.d))), ~(_wgslsmith_add_i32(global0.a.a.c, arg_0.c.a.c) | -u_input.d.x), any(!select(vec4<bool>(false, false, true, global0.a.a.b), !vec4<bool>(true, arg_0.a.e.b, arg_0.c.e.d, true), true)), -585f);
    var_0 = func_1(vec2<u32>(_wgslsmith_mod_u32(103128u, 1u), 0u), !all(!select(vec3<bool>(true, true, true), vec3<bool>(global0.e.d, arg_0.d.d, var_0.b), vec3<bool>(true, var_0.d, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.e.a.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(1188f * arg_0.a.a.a.x), arg_0.a.e.a.x)) - arg_1.e.e)).a;
    var var_1 = _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, arg_3.x) | vec2<u32>(1u, abs(arg_2.x)), u_input.b), arg_2.x);
    let var_2 = true;
    global0 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(arg_1.e.a, arg_1.e.a))), func_1(vec2<u32>(4294967295u, 0u), global0.c.e.b, arg_0.e.a.x).a.b | (true | var_0.d), func_4(global0.c, _wgslsmith_mod_vec3_i32(u_input.c, u_input.c), _wgslsmith_f_op_f32(600f * -1000f), arg_0.d).c.d, var_0.c > u_input.d.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.e.e * arg_1.a.a.x)))), global0.a.d, vec2<i32>(arg_1.d, u_input.d.x), -15867i, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.e, global0.c.e.a.x, -1989f, global0.a.a.a.x)))), false, arg_0.e.c, true, global0.d.a.x)), arg_1.c.x, func_4(Struct_2(global0.d, ~(-26081i), select(~vec2<i32>(arg_0.b, 8485i), vec2<i32>(arg_0.c.d, -1i), vec2<bool>(true, true)), abs(0i), Struct_1(vec4<f32>(-955f, arg_1.a.a.x, global0.d.a.x, var_0.a.x), global0.c.a.d, arg_0.e.c, func_1(vec2<u32>(u_input.b.x, 1u), false, -849f).e.b, global0.d.a.x)), -countOneBits(_wgslsmith_sub_vec3_i32(u_input.d, u_input.c)), _wgslsmith_f_op_f32(min(-618f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_0.e.e, -407f))))), Struct_1(arg_1.e.a, false, ~(3048i | arg_1.d), false, var_0.e)).c, Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-575f, global0.c.e.e, 692f, arg_1.e.a.x) + vec4<f32>(1927f, var_0.e, 1465f, 1000f)))), true, _wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.c.zz, global0.c.c), reverseBits(global0.d.c)), -61803i), false, _wgslsmith_f_op_vec4_f32(func_3(select(~vec4<u32>(u_input.b.x, 39223u, 11330u, u_input.b.x), vec4<u32>(78922u, 0u, arg_3.x, 34911u), select(vec4<bool>(global0.d.b, arg_1.e.d, false, var_2), vec4<bool>(var_0.b, true, false, true), vec4<bool>(true, true, var_2, arg_0.e.d))))).x), func_4(Struct_2(Struct_1(arg_0.e.a, var_2, -35805i, arg_1.a.e <= 204f, -555f), u_input.d.x, reverseBits(vec2<i32>(global0.a.d, 2147483647i)) | _wgslsmith_mod_vec2_i32(global0.a.c, global0.c.c), u_input.a, func_1(arg_2.yy, any(vec4<bool>(true, false, false, true)), _wgslsmith_f_op_f32(-arg_1.e.e)).a), -vec3<i32>(20422i, arg_0.b, global0.a.c.x >> (arg_2.x % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.e + -2016f)))), func_4(arg_0.a, vec3<i32>(_wgslsmith_mult_i32(arg_1.c.x, var_0.c), 1i & global0.a.d, reverseBits(44935i)), -1167f, global0.e).d).a.e);
    return Struct_3(func_1(select(vec2<u32>(arg_3.x, arg_2.x), vec2<u32>(35074u, arg_3.x) & arg_2.yx, vec2<bool>(var_0.b, arg_0.e.d)) >> (arg_3.xy % vec2<u32>(32u)), true, var_0.e), global0.b, func_4(global0.a, -vec3<i32>(u_input.c.x, arg_0.d.c, -75378i) | (firstLeadingBit(u_input.d) ^ _wgslsmith_add_vec3_i32(vec3<i32>(arg_1.d, u_input.a, -31592i), vec3<i32>(1i, -19153i, -1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1380f - _wgslsmith_f_op_f32(-arg_0.a.a.a.x))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.a.a + vec4<f32>(arg_0.e.e, global0.e.a.x, arg_0.a.e.e, global0.c.e.e))), var_2 && true, arg_0.b, !all(vec4<bool>(var_2, var_2, arg_0.a.a.d, var_2)), 488f)).c, Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.e.a)))), var_0.b, u_input.d.x, arg_0.d.d, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(arg_1.e.e, -794f)), arg_0.c.a.e))), Struct_1(vec4<f32>(arg_0.d.a.x, func_1(abs(vec2<u32>(0u, arg_2.x)), true, 479f).e.a.x, -1000f, _wgslsmith_div_f32(global0.c.e.a.x, arg_0.e.e)), true, 19662i, !var_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.a.x, arg_0.d.e, var_0.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(264f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(722f, 2180f), _wgslsmith_f_op_f32(select(global0.c.e.e, global0.d.e, global0.c.a.b)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-470f * global0.a.a.a.x)) + -1074f));
    let var_1 = -2147483647i;
    let var_2 = func_5(Struct_3(func_1(reverseBits(u_input.b), global0.c.e.b, global0.a.e.a.x), -1i, func_1(_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, 0u), u_input.b), ~u_input.b, ~u_input.b), true, var_0.x), global0.a.a, func_4(global0.c, u_input.d, global0.d.a.x, Struct_1(vec4<f32>(761f, global0.d.a.x, -1211f, var_0.x), select(false, false, true), countOneBits(u_input.c.x), true, -699f)).a.a), func_4(Struct_2(global0.e, 1i, max(reverseBits(vec2<i32>(0i, u_input.d.x)), -vec2<i32>(7492i, -2147483647i)), firstLeadingBit(_wgslsmith_mult_i32(global0.c.b, 11092i)), global0.e), u_input.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.e) - func_4(Struct_2(Struct_1(global0.d.a, global0.c.a.b, global0.b, true, var_0.x), -1i, u_input.d.yy, 1i, Struct_1(global0.d.a, global0.c.a.b, global0.c.b, false, 159f)), u_input.c, var_0.x, Struct_1(global0.a.a.a, global0.e.d, global0.a.d, true, -421f)).e.e)), global0.a.a).c, vec3<u32>(_wgslsmith_dot_vec2_u32(select(_wgslsmith_add_vec2_u32(u_input.b, u_input.b), reverseBits(vec2<u32>(u_input.b.x, 0u)), select(vec2<bool>(global0.a.a.b, global0.a.a.d), vec2<bool>(global0.d.d, false), false)), u_input.b), _wgslsmith_sub_u32(0u, max(~4294967295u, _wgslsmith_mult_u32(24777u, u_input.b.x))), ~u_input.b.x), ~(~_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(30803u, u_input.b.x, 0u), vec3<u32>(u_input.b.x, 49534u, u_input.b.x)), ~vec3<u32>(78172u, 49083u, u_input.b.x))));
    let var_3 = !select(vec4<bool>(global0.d.b, var_2.c.e.d && select(false, var_2.d.b, var_2.e.d), all(vec4<bool>(false, false, true, var_2.d.d)), false), vec4<bool>(0i != var_2.d.c, global0.d.d, false, global0.e.b), vec4<bool>(var_2.e.d, true, all(!vec3<bool>(false, true, var_2.e.d)), global0.d.d && (var_2.c.a.e < var_2.e.a.x)));
    global0 = func_5(func_5(var_2, func_4(func_1(u_input.b << (vec2<u32>(u_input.b.x, 45147u) % vec2<u32>(32u)), var_2.e.b & false, _wgslsmith_f_op_f32(-var_2.d.e)), select(u_input.d, vec3<i32>(1i, 0i, -21951i) << (vec3<u32>(u_input.b.x, 26758u, 0u) % vec3<u32>(32u)), var_3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * global0.a.a.e) - _wgslsmith_f_op_f32(-var_0.x)), func_4(Struct_2(global0.d, -8894i, global0.c.c, -7233i, Struct_1(var_2.c.a.a, var_3.x, 1i, var_3.x, global0.c.e.a.x)), select(u_input.c, u_input.c, var_3.wzy), 507f, func_4(Struct_2(global0.c.e, var_1, vec2<i32>(var_2.d.c, var_1), global0.e.c, Struct_1(global0.d.a, global0.d.b, var_2.e.c, var_3.x, 115f)), vec3<i32>(15707i, global0.e.c, var_1), -669f, var_2.e).c.e).e).a, _wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(11870u, 41969u, 28717u)), vec3<u32>(u_input.b.x >> (0u % 32u), u_input.b.x, ~u_input.b.x)), vec3<u32>(~(1u << (1u % 32u)), _wgslsmith_sub_u32(~u_input.b.x, u_input.b.x), _wgslsmith_mult_u32(u_input.b.x, 12760u))), var_2.c, vec3<u32>(u_input.b.x, 0u, 51259u), ~abs(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(16386u, u_input.b.x), u_input.b), ~4294967295u, u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.b, (u_input.b >> (u_input.b % vec2<u32>(32u))) | ~firstTrailingBit(vec2<u32>(u_input.b.x, u_input.b.x))), vec3<i32>(~max(-var_1, 4711i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1, 0i, var_1), u_input.c) | _wgslsmith_mod_i32(var_2.d.c, _wgslsmith_dot_vec3_i32(u_input.d, u_input.d)), 1i), vec4<u32>(~firstTrailingBit(u_input.b.x), firstLeadingBit(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 9391u, 1u), vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 73156u)), u_input.b.x)), _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x), ~(~5985u)), u_input.b.x));
}

