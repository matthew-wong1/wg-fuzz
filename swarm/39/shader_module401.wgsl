struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: i32,
    d: vec4<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: u32) -> u32 {
    let var_0 = Struct_1(_wgslsmith_div_u32(1u, 1858u), false, 153f);
    var var_1 = Struct_1(var_0.a, var_0.b, -1117f);
    let var_2 = var_0;
    let var_3 = var_0;
    let var_4 = Struct_1(u_input.c, !(var_2.b || var_2.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(270f)) - var_1.c) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -326f)), _wgslsmith_f_op_f32(-var_0.c))));
    return ~(~(~((var_2.a & var_3.a) << (firstLeadingBit(1u) % 32u))));
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    let var_0 = firstTrailingBit(~_wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(1u, 4294967295u, 4294967295u))) >> (~_wgslsmith_sub_vec3_u32((vec3<u32>(1u, u_input.c, 33176u) >> (vec3<u32>(28897u, 0u, 1150u) % vec3<u32>(32u))) & ~vec3<u32>(1970u, 23060u, 49876u), reverseBits(min(vec3<u32>(41381u, 1417u, 5272u), vec3<u32>(u_input.c, 4294967295u, u_input.c)))) % vec3<u32>(32u));
    var var_1 = Struct_1(u_input.c, all(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), vec3<bool>(false, true, true), true), !any(vec2<bool>(false, false)))), 1f);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-476f + var_1.c)))), _wgslsmith_f_op_f32(-var_1.c), -1457f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1451f * var_1.c), var_1.c)))) * 626f));
    let var_3 = vec4<bool>(all(vec4<bool>(true, abs(29548u) == _wgslsmith_mod_u32(var_0.x, var_0.x), true, any(vec2<bool>(true, true)))), !(!var_1.b), (~u_input.c | _wgslsmith_mod_u32(~4294967295u, var_1.a)) == 1u, !(!(!(!var_1.b))));
    var var_4 = Struct_1(var_0.x, any(var_3), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1365f, _wgslsmith_f_op_f32(-var_1.c)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -290f))))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(171f)), -510f))))));
}

fn func_1(arg_0: i32) -> StorageBuffer {
    var var_0 = u_input.c;
    var_0 = max(abs(u_input.c), _wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.c, func_2(7227u)), abs(vec2<u32>(30935u, u_input.c))), ~(~min(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(20448u, u_input.c)))));
    var_0 = _wgslsmith_clamp_u32(min(_wgslsmith_div_u32(u_input.c, 1u), u_input.c) ^ u_input.c, firstTrailingBit(firstLeadingBit(~4294967295u)), ~u_input.c);
    var_0 = ~(~u_input.c);
    var var_1 = _wgslsmith_sub_i32(abs(_wgslsmith_clamp_i32(u_input.a, 47074i, ~(2147483647i ^ arg_0))), 2147483647i);
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2002f, -1000f) * vec2<f32>(1639f, -570f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(692f, 1742f))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(406f, 1857f)))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec4<i32>(arg_0, arg_0, u_input.a, u_input.d))), 970f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(759f + -498f), _wgslsmith_f_op_f32(-1000f * 802f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -906f))), -925f), 0i, u_input.e >> (max(~vec4<u32>(1u, u_input.c, u_input.c, 9395u), select(select(vec4<u32>(1u, u_input.c, u_input.c, 0u), vec4<u32>(u_input.c, u_input.c, 34592u, u_input.c), vec4<bool>(false, true, false, false)), vec4<u32>(u_input.c, 0u, u_input.c, u_input.c) << (vec4<u32>(0u, 4294967295u, 4294967295u, u_input.c) % vec4<u32>(32u)), true)) % vec4<u32>(32u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1124f, 774f, 543f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-245f, 601f, -339f) + vec3<f32>(2011f, -1000f, -595f))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-204f * 126f), -181f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -693f)), _wgslsmith_f_op_f32(max(251f, _wgslsmith_f_op_f32(210f + -1097f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !all(vec4<bool>(_wgslsmith_mod_i32(u_input.e.x, 4326i) < _wgslsmith_mod_i32(u_input.b, u_input.d), true, true, true));
    var var_1 = vec2<bool>(!var_0, false);
    var var_2 = _wgslsmith_sub_i32(-29932i, -29595i);
    let var_3 = ~((countOneBits(vec3<u32>(u_input.c, u_input.c, u_input.c)) ^ _wgslsmith_add_vec3_u32(select(vec3<u32>(u_input.c, 1u, u_input.c), vec3<u32>(1u, u_input.c, u_input.c), vec3<bool>(true, var_0, var_0)), min(vec3<u32>(u_input.c, u_input.c, 0u), vec3<u32>(1u, u_input.c, u_input.c)))) | vec3<u32>(u_input.c, ~(u_input.c & 24949u), ~u_input.c >> ((u_input.c << (4294967295u % 32u)) % 32u)));
    let var_4 = countOneBits(select(vec4<i32>(55424i | u_input.a, 13580i, _wgslsmith_dot_vec2_i32(u_input.e.yw, u_input.e.yz) << (var_3.x % 32u), u_input.d), -u_input.e, vec4<bool>(var_0, any(vec2<bool>(true, false)), all(vec4<bool>(var_0, var_1.x, false, var_0)), 0i >= (u_input.e.x | u_input.d))));
    let x = u_input.a;
    s_output = func_1(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(-u_input.e, _wgslsmith_sub_vec4_i32(~var_4, var_4)), _wgslsmith_sub_i32(reverseBits(2147483647i) ^ ~u_input.a, var_4.x)));
}

