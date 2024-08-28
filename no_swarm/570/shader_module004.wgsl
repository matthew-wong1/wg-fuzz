struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> vec3<i32> {
    var var_0 = -227f;
    let var_1 = u_input.a.zy;
    var_0 = _wgslsmith_f_op_f32(min(-1000f, 1f));
    let var_2 = u_input.a.yz;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_1(-(max(u_input.a.zwz, vec3<i32>(u_input.a.x, var_1.x, -6275i)) >> ((vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x) ^ vec3<u32>(24528u, 27096u, u_input.b)) % vec3<u32>(32u))), any(vec2<bool>(true, true)), ~(~u_input.d.x ^ firstLeadingBit(0u)), u_input.d.x, ~u_input.a.wxy), _wgslsmith_sub_vec3_u32(~(~u_input.d), u_input.d), Struct_1((vec3<i32>(-1i) * -u_input.a.ywz) >> (~reverseBits(vec3<u32>(3916u, 4294967295u, u_input.d.x)) % vec3<u32>(32u)), true, _wgslsmith_add_u32(~_wgslsmith_div_u32(45897u, u_input.b), _wgslsmith_dot_vec4_u32(~vec4<u32>(3210u, 117792u, 28249u, 39481u), select(vec4<u32>(0u, u_input.b, u_input.c.x, 4294967295u), vec4<u32>(61232u, 0u, 10346u, 279u), vec4<bool>(false, false, true, false)))), ~u_input.d.x, select(reverseBits(firstLeadingBit(vec3<i32>(var_1.x, var_1.x, u_input.a.x))), _wgslsmith_sub_vec3_i32(u_input.a.wwy, u_input.a.wwy) ^ ~u_input.a.zwz, vec3<bool>(true, any(vec4<bool>(false, false, false, false)), any(vec3<bool>(true, true, false))))));
    return ~firstLeadingBit(~(~_wgslsmith_mult_vec3_i32(vec3<i32>(0i, -2147483647i, -1i), u_input.a.wzy)));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_sub_vec3_i32(func_3(), u_input.a.yxz >> (vec3<u32>(select(0u, 4294967295u, true), 97569u, 1u) % vec3<u32>(32u))), all(vec4<bool>(_wgslsmith_f_op_f32(round(-386f)) > _wgslsmith_f_op_f32(f32(-1f) * -797f), firstLeadingBit(u_input.a.x) > u_input.a.x, true, !all(vec4<bool>(true, false, true, false)))), _wgslsmith_clamp_u32(2539u, 1u, u_input.c.x), 1u, u_input.a.zzx);
    return Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(302f))))), -1238f, !any(!vec4<bool>(var_0.b, true, false, true)))), Struct_1(~abs(var_0.a), all(vec4<bool>(48831u != var_0.d, !var_0.b, false, false)), 0u, 4294967295u, _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.a.yyw | vec3<i32>(u_input.a.x, -26446i, var_0.a.x), vec3<i32>(var_0.e.x, 2147483647i, var_0.a.x)), u_input.a.xxw)), abs(vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(63303u, u_input.c.x, 30953u), u_input.d), u_input.d.x, 1u)), Struct_1(~(-abs(u_input.a.xxz)), !select(true, var_0.a.x <= var_0.e.x, all(vec4<bool>(true, false, var_0.b, false))), 1u, ~_wgslsmith_mod_u32(19513u, var_0.d) ^ ~1u, ~(func_3() | _wgslsmith_mod_vec3_i32(vec3<i32>(-44078i, u_input.a.x, var_0.a.x), vec3<i32>(1i, var_0.a.x, 2147483647i)))));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2();
    var var_1 = func_2().b;
    var_1 = var_0.d;
    var var_2 = !select(select(select(vec2<bool>(false, var_0.b.b), select(vec2<bool>(var_0.b.b, var_1.b), vec2<bool>(false, var_0.b.b), var_1.b), vec2<bool>(true, var_0.b.b)), select(!vec2<bool>(var_0.b.b, var_1.b), select(vec2<bool>(var_0.d.b, false), vec2<bool>(var_1.b, true), true), vec2<bool>(false, var_1.b)), select(select(vec2<bool>(true, var_1.b), vec2<bool>(true, var_1.b), vec2<bool>(false, var_1.b)), vec2<bool>(false, true), !vec2<bool>(false, var_1.b))), vec2<bool>(func_2().a <= var_0.a, var_0.d.b), vec2<bool>(any(!vec2<bool>(true, var_0.b.b)), !(var_0.a == 963f)));
    var var_3 = !vec3<bool>(var_0.b.b, true, var_2.x);
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec3_u32(firstLeadingBit(~u_input.d), u_input.d | vec3<u32>(_wgslsmith_div_u32(u_input.d.x, 14435u), ~u_input.d.x, 83224u >> (u_input.d.x % 32u))) << (~(vec3<u32>(_wgslsmith_mod_u32(u_input.d.x, 1u), 0u, ~72121u) | vec3<u32>(abs(u_input.d.x), u_input.c.x, ~u_input.d.x)) % vec3<u32>(32u));
    let var_1 = func_1();
    let var_2 = func_2();
    var var_3 = var_2.c.x;
    var var_4 = var_2.b.b;
    var_3 = ~(~(u_input.d.x | 1u));
    var var_5 = Struct_3(Struct_1(func_1().a, false, ~_wgslsmith_mod_u32(4294967295u, u_input.b), var_0.x, vec3<i32>(-10479i, u_input.a.x, ~(-u_input.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-877f, var_2.a)) - -1991f) - -1723f), var_2.a), -var_2.d.a.yx);
    var_5 = Struct_3(Struct_1(~(-vec3<i32>(var_5.a.e.x, 1i, var_1.a.x)), select(any(select(vec2<bool>(false, var_1.b), vec2<bool>(true, true), true)), !select(true, var_2.d.b, var_1.b), !var_1.b && !var_2.b.b), var_1.d, 41411u, min(u_input.a.yyx, -u_input.a.wzz)), _wgslsmith_f_op_f32(-1f), vec2<i32>(~u_input.a.x, -967i));
    let var_6 = !(!vec3<bool>(!(var_5.b < var_2.a), all(vec3<bool>(var_1.b, false, var_1.b)), var_1.b));
    let x = u_input.a;
    s_output = StorageBuffer(~(-abs(var_1.e.x & -68158i)), _wgslsmith_f_op_f32(-var_2.a));
}

