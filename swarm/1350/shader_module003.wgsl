struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec4<i32> {
    global0 = ~vec4<i32>(u_input.a, global0.x, _wgslsmith_div_i32(-8488i, ~global0.x) << (u_input.b % 32u), global0.x);
    var var_0 = Struct_3(min(~(firstTrailingBit(vec3<u32>(46366u, u_input.b, u_input.b)) << (vec3<u32>(u_input.b, u_input.b, 58976u) % vec3<u32>(32u))), select(vec3<u32>(u_input.b, u_input.b, _wgslsmith_mult_u32(1u, u_input.b)), max(abs(vec3<u32>(u_input.b, 63384u, u_input.b)), firstTrailingBit(vec3<u32>(u_input.b, 0u, u_input.b))), all(vec3<bool>(true, true, true)))), Struct_2(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, select(65876i, u_input.c.x, false), 1i), select(vec3<i32>(global0.x, global0.x, 1i) >> (vec3<u32>(4294967295u, u_input.b, u_input.b) % vec3<u32>(32u)), vec3<i32>(global0.x, u_input.a, global0.x), vec3<bool>(true, true, true)))), select(select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false)), true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true))), vec4<bool>(0i >= _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, u_input.a, 0i), vec4<i32>(global0.x, 1611i, 1i, global0.x)), all(vec2<bool>(true, true)), true, true), !any(vec3<bool>(true, true, true))), Struct_1(372f, max(~(~vec4<u32>(u_input.b, 19586u, u_input.b, u_input.b)), ~vec4<u32>(u_input.b, u_input.b, 0u, 5217u)), vec3<i32>(i32(-1i) * -global0.x, ~_wgslsmith_div_i32(0i, u_input.a), global0.x), !select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true), any(vec3<bool>(true, false, true)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(735f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1672f - 950f))), vec4<u32>(select(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b, 25392u, u_input.b), vec4<u32>(u_input.b, 1u, 4294967295u, 81053u)), ~u_input.b, false), 1u, countOneBits(u_input.b) << (min(1u, u_input.b) % 32u), u_input.b), ~vec3<i32>(abs(global0.x), ~u_input.c.x, 38432i), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(false, false)), vec2<bool>(false, true), vec2<bool>(true, all(vec4<bool>(false, true, false, true))))));
    var var_1 = var_0.d.d;
    let var_2 = min(u_input.a, reverseBits(u_input.c.x) ^ ~global0.x);
    var_0 = Struct_3(_wgslsmith_mult_vec3_u32(~var_0.d.b.wxw, ~vec3<u32>(abs(u_input.b), 140760u, ~46782u)), var_0.b, !select(!var_0.c, !var_0.c, !select(var_0.c, var_0.c, vec4<bool>(var_0.d.d.x, true, true, false))), Struct_1(-1777f, _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(var_0.d.b, abs(var_0.d.b)), ~_wgslsmith_add_vec4_u32(vec4<u32>(19573u, var_0.e.b.x, 13708u, 61481u), var_0.d.b)), ~vec3<i32>(min(var_0.d.c.x, -22967i), 2147483647i, -var_0.e.c.x), select(!(!var_0.d.d), select(select(vec2<bool>(true, false), vec2<bool>(false, false), var_0.d.d), var_0.d.d, !var_0.c.xw), select(!vec2<bool>(var_0.d.d.x, false), select(var_0.d.d, var_0.d.d, vec2<bool>(false, var_0.c.x)), select(vec2<bool>(var_1.x, true), var_0.c.ww, var_1.x)))), Struct_1(514f, ~(vec4<u32>(var_0.d.b.x, 0u, var_0.e.b.x, u_input.b) ^ var_0.d.b), ~(~global0.zzx), !vec2<bool>(all(var_0.d.d), var_1.x)));
    return u_input.c & ~countOneBits(_wgslsmith_clamp_vec4_i32(u_input.c | vec4<i32>(global0.x, 18630i, var_0.b.a.x, 17672i), vec4<i32>(-56499i, -406i, 27596i, 33950i), min(vec4<i32>(var_0.e.c.x, -18356i, var_2, var_0.b.a.x), u_input.c)));
}

fn func_2() -> vec4<i32> {
    global0 = reverseBits(-u_input.c);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-795f + -1401f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -362f) * _wgslsmith_f_op_f32(736f - -1607f))));
    global0 = select(_wgslsmith_mult_vec4_i32(u_input.c, u_input.c), _wgslsmith_mod_vec4_i32(u_input.c, -func_3()), !any(vec4<bool>(true, true, true, true)));
    var var_1 = vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(0u), ~35114u, _wgslsmith_mod_u32(u_input.b, u_input.b)) | select(vec3<u32>(u_input.b, 1u, 4294967295u) << (vec3<u32>(u_input.b, 0u, u_input.b) % vec3<u32>(32u)), vec3<u32>(u_input.b, 37444u, u_input.b), true), _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(32209u, 8081u, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, 61015u, u_input.b)), vec3<u32>(u_input.b, 26043u, 18465u)) << (reverseBits(~vec3<u32>(u_input.b, 29533u, 0u)) % vec3<u32>(32u))), u_input.b, 0u);
    var var_2 = ~(~(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 91072u)))));
    return vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.c, _wgslsmith_div_vec4_i32(vec4<i32>(1i, 30780i, global0.x, 2147483647i), vec4<i32>(global0.x, -8662i, 23741i, global0.x) >> (vec4<u32>(u_input.b, 26109u, 4294967295u, 0u) % vec4<u32>(32u)))) | countOneBits(-_wgslsmith_clamp_i32(-1i, 0i, -5998i)), 1i, firstTrailingBit(-13556i), -abs(~_wgslsmith_add_i32(-39379i, global0.x)));
}

fn func_1() -> vec4<i32> {
    let var_0 = select(-vec3<i32>(u_input.c.x, global0.x >> (13365u % 32u), global0.x), u_input.c.wzy, vec3<bool>(true, _wgslsmith_dot_vec4_i32(vec4<i32>(-17271i, global0.x, u_input.c.x, u_input.a), vec4<i32>(global0.x, -11560i, -2147483647i, global0.x)) == -16741i, !all(vec2<bool>(false, false)))) ^ vec3<i32>(2147483647i, -19256i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(58779i, 43485i, global0.x), vec3<i32>(global0.x, 2147483647i, global0.x)), 18936i, global0.x ^ global0.x));
    global0 = firstLeadingBit(_wgslsmith_add_vec4_i32(func_2(), u_input.c));
    let var_1 = Struct_2(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, _wgslsmith_add_i32(-1i, -1i), global0.x) << ((~vec3<u32>(u_input.b, u_input.b, 0u) ^ vec3<u32>(1u, 1u, u_input.b)) % vec3<u32>(32u)), global0.zzy));
    var var_2 = u_input.b;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(2726f, -1000f)) + -228f))), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(reverseBits(abs(vec4<u32>(1u, 13442u, 1u, u_input.b))), min(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 41658u, u_input.b, 0u), vec4<u32>(u_input.b, 52282u, 0u, u_input.b)), ~vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u))), abs(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 43598u, u_input.b, 2516u), vec4<u32>(129025u, u_input.b, u_input.b, u_input.b)), vec4<u32>(49988u, 15978u, 1u, 4294967295u)))), abs(func_3().wxy), select(vec2<bool>(var_0.x < 2147483647i, true), !vec2<bool>(select(true, false, true), false), vec2<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))), true)));
    return ~vec4<i32>(~abs(2147483647i), -(10496i << (_wgslsmith_div_u32(97828u, var_3.b.x) % 32u)), -1i, var_0.x & (-var_1.a.x ^ 2147483647i));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2) -> Struct_2 {
    var var_0 = Struct_1(-703f, _wgslsmith_add_vec4_u32(abs(reverseBits(vec4<u32>(0u, 4294967295u, 27497u, 0u) & vec4<u32>(u_input.b, 1u, u_input.b, u_input.b))), ~(~(~vec4<u32>(u_input.b, u_input.b, 0u, 13561u)))), reverseBits(global0.yxz), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), all(vec3<bool>(true, false, true)) & true), vec2<bool>(true && select(false, false, true), true), vec2<bool>(true, false)));
    var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.b, -arg_1.a, vec2<bool>(all(select(vec4<bool>(false, false, var_0.d.x, var_0.d.x), vec4<bool>(true, var_0.d.x, var_0.d.x, var_0.d.x), true)), true));
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -2351f)) + 135f) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(1000f, var_0.a, !var_0.d.x)), -527f))), vec4<u32>(1u, 4294967295u, u_input.b, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.x, 54362u, 15260u), var_0.b.wyy)) ^ firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 5255u, var_0.b.x, 4658u), countOneBits(vec4<u32>(var_0.b.x, u_input.b, var_0.b.x, var_0.b.x)))), arg_1.a, var_0.d);
    global0 = vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(u_input.c, ~(~vec4<i32>(-526i, -29421i, arg_1.a.x, arg_0.x)));
    var var_1 = u_input.b;
    return arg_1;
}

fn func_5(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_2) -> Struct_3 {
    var var_0 = Struct_1(-1873f, vec4<u32>(_wgslsmith_clamp_u32(abs(u_input.b >> (u_input.b % 32u)), abs(1u), _wgslsmith_add_u32(_wgslsmith_add_u32(u_input.b, u_input.b), abs(62621u))), firstLeadingBit(u_input.b), countOneBits(u_input.b), u_input.b), select(_wgslsmith_sub_vec3_i32(arg_0.a, -arg_0.a), vec3<i32>(firstLeadingBit(countOneBits(-2147483647i)), min(u_input.c.x, _wgslsmith_mod_i32(-1i, 72882i)), global0.x), select(!(!vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), !select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(false, arg_1.x, false), vec3<bool>(arg_1.x, false, arg_1.x)), any(arg_1))), arg_1);
    let var_1 = var_0.a;
    let var_2 = vec2<i32>(u_input.a, 871i);
    let var_3 = func_4(vec4<i32>(2147483647i, -1i, -4192i, -32802i), arg_0);
    global0 = select(vec4<i32>(arg_0.a.x, ~u_input.a, abs(~0i) | (_wgslsmith_add_i32(-43672i, arg_0.a.x) << (1u % 32u)), var_0.c.x), ~_wgslsmith_add_vec4_i32(~u_input.c, abs(abs(u_input.c))), arg_1.x);
    return Struct_3(vec3<u32>(~u_input.b, ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.b.x, var_0.b.x), var_0.b.zzw), select(abs(4294967295u), firstTrailingBit(4294967295u), var_0.d.x)) ^ ~vec3<u32>(_wgslsmith_clamp_u32(u_input.b, 74380u, u_input.b), ~u_input.b, 28892u), func_4(vec4<i32>(arg_0.a.x, 0i, var_3.a.x, -40561i), Struct_2(var_3.a)), vec4<bool>(all(vec3<bool>(var_0.d.x, true, any(vec3<bool>(arg_1.x, false, false)))), arg_1.x, var_0.d.x, all(vec4<bool>(arg_1.x, true, all(vec3<bool>(arg_1.x, var_0.d.x, arg_1.x)), var_2.x == u_input.a))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))), var_0.b, func_4(-vec4<i32>(-2147483647i, arg_2.a.x, u_input.a, var_3.a.x) >> (vec4<u32>(var_0.b.x, var_0.b.x, var_0.b.x, 19254u) % vec4<u32>(32u)), func_4(min(u_input.c, vec4<i32>(-60226i, var_2.x, 13343i, -7204i)), func_4(u_input.c, Struct_2(vec3<i32>(-2147483647i, 0i, -16922i))))).a, !var_0.d), Struct_1(var_0.a, ~var_0.b, u_input.c.zyz, var_0.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(~(~firstLeadingBit(vec2<u32>(u_input.b, u_input.b))));
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-613f, -1288f, -582f)));
    global0 = vec4<i32>(~global0.x, _wgslsmith_mod_i32(-78968i, 1i), select(_wgslsmith_div_i32(select(u_input.c.x, u_input.a, false), countOneBits(-1i)) & abs(-global0.x), ~(-6045i), false), _wgslsmith_dot_vec3_i32(u_input.c.yxy, ~(-global0.zzy << (_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(var_0.x, 22256u, 4294967295u)) % vec3<u32>(32u)))));
    let var_3 = func_5(Struct_2(vec3<i32>(1i, u_input.a, -49124i)), select(select(!select(vec2<bool>(var_1, var_1), vec2<bool>(false, var_1), true), vec2<bool>(any(vec3<bool>(var_1, var_1, true)), !var_1), select(vec2<bool>(false, false), vec2<bool>(var_1, var_1), all(vec4<bool>(false, var_1, var_1, var_1)))), !(!(!vec2<bool>(var_1, true))), false), func_4(_wgslsmith_clamp_vec4_i32(u_input.c, u_input.c, _wgslsmith_mult_vec4_i32(u_input.c, func_1())), Struct_2(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(6687i, u_input.a, 21558i), u_input.c.yww), vec3<i32>(global0.x, -62573i, 2147483647i)))));
    var var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_2.x, var_3.d.a, -949f), ~_wgslsmith_mult_vec4_u32(vec4<u32>(1u ^ u_input.b, var_3.d.b.x, ~var_3.e.b.x, var_0.x), vec4<u32>(_wgslsmith_sub_u32(var_3.d.b.x, 29215u), var_3.a.x << (var_3.d.b.x % 32u), var_0.x, reverseBits(40832u))), ~(-(~(global0.x & var_3.e.c.x))));
}

