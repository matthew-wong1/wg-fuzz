struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: bool,
    d: i32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_3,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 31>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: bool, arg_3: bool) -> i32 {
    return _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.a.x, select(u_input.a.x, 0i, arg_2)) ^ ~(-(~vec3<i32>(0i, u_input.a.x, arg_0.x))), _wgslsmith_clamp_vec3_i32(u_input.c.yww, ~u_input.c.zwz, (vec3<i32>(-1i) * -vec3<i32>(28362i, arg_0.x, -53332i)) >> (vec3<u32>(select(u_input.b.x, 1u, arg_3), ~1u, 76024u) % vec3<u32>(32u))));
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: i32) -> vec2<bool> {
    var var_0 = _wgslsmith_clamp_vec4_i32(firstTrailingBit(~(-(vec4<i32>(arg_2, -62121i, u_input.a.x, 1i) & vec4<i32>(u_input.c.x, arg_2, 16095i, u_input.a.x)))), vec4<i32>(-24576i, min(func_3(vec3<i32>(-12991i, u_input.a.x, 15976i), u_input.b.xx, true, arg_1.a.x) | _wgslsmith_mod_i32(arg_2, u_input.c.x), min(~u_input.c.x, countOneBits(-26904i))), u_input.c.x, ~(-_wgslsmith_sub_i32(-31124i, 18732i))), u_input.c);
    var_0 = ~vec4<i32>(abs(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.c, vec4<i32>(var_0.x, 5166i, -25231i, u_input.c.x), vec4<i32>(arg_2, arg_2, arg_2, arg_2)), vec4<i32>(arg_2, -36684i, u_input.a.x, arg_2))), u_input.c.x, 1534i, ~u_input.a.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0 + -3112f))), arg_0, 547f)));
    var var_2 = Struct_4(Struct_1(u_input.b, ~2147483647i, all(vec4<bool>(true, false, arg_1.a.x, 139f >= var_1.x)), -2147483647i, -abs(abs(u_input.c.xxw))), Struct_1(abs(u_input.b), -1i & _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, var_0.x, 0i), u_input.c | vec4<i32>(arg_2, 26942i, u_input.a.x, 1i)), all(vec4<bool>(true, false, arg_1.a.x, false)) || !(!arg_1.a.x), arg_2, vec3<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(arg_2, -2147483647i), u_input.c.x), ~1i, _wgslsmith_div_i32(0i, arg_2))), vec2<bool>(all(select(vec4<bool>(false, arg_1.a.x, arg_1.a.x, true), vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, arg_1.a.x), vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, arg_1.a.x))) | true, false));
    return select(arg_1.a, vec2<bool>(all(select(vec4<bool>(true, false, true, true), vec4<bool>(var_2.c.x, var_2.c.x, true, false), arg_1.a.x)) | arg_1.a.x, min(-2147483647i, var_0.x) > _wgslsmith_dot_vec2_i32(max(vec2<i32>(-1i, u_input.c.x), vec2<i32>(-2147483647i, -1i)), var_0.yw)), !select(!select(vec2<bool>(arg_1.a.x, arg_1.a.x), vec2<bool>(true, true), vec2<bool>(false, var_2.c.x)), select(vec2<bool>(var_2.a.c, true), vec2<bool>(true, var_2.a.c), select(arg_1.a, vec2<bool>(var_2.c.x, false), arg_1.a)), true));
}

fn func_1(arg_0: u32, arg_1: i32) -> StorageBuffer {
    var var_0 = Struct_3(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-123f))))), Struct_3(vec2<bool>(true, true)), -1i));
    let var_1 = _wgslsmith_mod_vec4_u32(min(~vec4<u32>(61261u, 0u, u_input.b.x, u_input.b.x), max(~vec4<u32>(108528u, arg_0, arg_0, arg_0), vec4<u32>(33304u, 1u, arg_0, arg_0) >> (vec4<u32>(26338u, 1u, arg_0, arg_0) % vec4<u32>(32u)))) << (~min(vec4<u32>(33571u, u_input.b.x, 0u, arg_0), vec4<u32>(u_input.b.x, arg_0, 0u, arg_0)) % vec4<u32>(32u)), max(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b.x, 3757u, 1u, 1u) ^ firstLeadingBit(vec4<u32>(arg_0, 777u, u_input.b.x, arg_0)), vec4<u32>(_wgslsmith_mod_u32(93137u, arg_0), _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(43512u, u_input.b.x, 4294967295u)), arg_0, ~9068u)), ~((vec4<u32>(arg_0, arg_0, arg_0, 0u) ^ vec4<u32>(arg_0, 25805u, 1u, arg_0)) << ((vec4<u32>(29699u, arg_0, arg_0, arg_0) | vec4<u32>(u_input.b.x, 19830u, 40171u, 6972u)) % vec4<u32>(32u)))));
    var var_2 = vec3<bool>(true && !any(select(vec3<bool>(var_0.a.x, false, var_0.a.x), vec3<bool>(false, var_0.a.x, true), false)), var_0.a.x, false);
    var var_3 = Struct_4(Struct_1(vec3<u32>(~(~var_1.x), firstLeadingBit(u_input.b.x), ~var_1.x), ~11077i, u_input.b.x <= ~0u, i32(-1i) * -(~(-27557i)), vec3<i32>(-u_input.c.x, -select(-2147483647i, u_input.c.x, var_0.a.x), firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_1, -5619i), u_input.c.yww)))), Struct_1(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_1.x, var_1.x, u_input.b.x), vec3<u32>(4294967295u, var_1.x, u_input.b.x)), u_input.b, vec3<u32>(arg_0, var_1.x, arg_0)), vec3<u32>(1u, var_1.x >> (25179u % 32u), 4294967295u)), u_input.a.x, var_2.x, 0i, -(u_input.c.zwx & u_input.c.zxy) & vec3<i32>(_wgslsmith_div_i32(-2147483647i, -43289i), -10954i, -2147483647i)), vec2<bool>(true, false));
    var var_4 = firstTrailingBit(reverseBits(-_wgslsmith_div_i32(1i, min(36263i, 46519i))));
    return StorageBuffer(_wgslsmith_clamp_vec3_u32(~(u_input.b << (vec3<u32>(var_1.x, u_input.b.x, 0u) % vec3<u32>(32u))), ~abs(max(var_1.yyy, u_input.b)), reverseBits(u_input.b >> (vec3<u32>(arg_0, 86120u, arg_0) % vec3<u32>(32u)))), vec3<f32>(-590f, -2029f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(389f)))), 1068f)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-100f, 1547f, -855f))))))), ~u_input.b.xz);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(u_input.b.x, firstLeadingBit(u_input.c.x) << (u_input.b.x % 32u));
}

