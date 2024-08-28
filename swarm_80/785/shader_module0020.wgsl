struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec3<u32> {
    var var_0 = Struct_1(vec3<u32>(38359u, 0u, 8919u), u_input.a.x, _wgslsmith_sub_u32(~u_input.a.x, 76000u), ~min(~(-39500i), u_input.b << (u_input.a.x % 32u)) >> (u_input.a.x % 32u), ~u_input.c.x);
    var var_1 = Struct_1(_wgslsmith_div_vec3_u32(u_input.a.wyz << (~firstTrailingBit(vec3<u32>(0u, 28287u, var_0.b)) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(abs(~vec3<u32>(52416u, var_0.b, var_0.c)), u_input.a.zxw, vec3<u32>(7058u, var_0.a.x, 1u))), 1u, _wgslsmith_sub_u32(44672u, firstLeadingBit(min(u_input.a.x, ~u_input.a.x))), 0i, firstLeadingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(abs(vec2<i32>(-1i, var_0.d)), u_input.c), vec2<i32>(-1i) * -vec2<i32>(var_0.e, 2147483647i))));
    var_0 = Struct_1(abs(vec3<u32>(u_input.a.x, u_input.a.x, countOneBits(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(4294967295u, 43854u, u_input.a.x, 4294967295u))))), u_input.a.x, 0u, (var_0.d >> ((reverseBits(var_0.a.x) ^ 1u) % 32u)) >> (var_1.a.x % 32u), min(countOneBits(_wgslsmith_clamp_i32(var_1.e, var_0.e, -2147483647i)) << (~40927u % 32u), (_wgslsmith_clamp_i32(-46417i, -1506i, u_input.b) ^ 1i) & 1i));
    var_0 = Struct_1(~vec3<u32>(abs(_wgslsmith_sub_u32(1u, 1u)), 30606u, u_input.a.x), 0u, ~(u_input.a.x | (_wgslsmith_clamp_u32(109857u, 4294967295u, 15770u) >> (1u % 32u))), 3487i, -51717i);
    var var_2 = Struct_1(~(~vec3<u32>(52124u | var_0.c, 1u, 5444u)), ~(~0u), _wgslsmith_mod_u32(var_1.a.x, (~4294967295u >> (_wgslsmith_dot_vec2_u32(u_input.a.yy, var_1.a.zy) % 32u)) >> (_wgslsmith_add_u32(_wgslsmith_mult_u32(1u, 11015u), var_0.b) % 32u)), firstTrailingBit(u_input.b), -1i);
    return ~countOneBits((vec3<u32>(54334u, 1u, u_input.a.x) ^ (vec3<u32>(15360u, var_0.c, 18035u) ^ vec3<u32>(var_0.c, u_input.a.x, 0u))) & _wgslsmith_div_vec3_u32(~var_2.a, ~vec3<u32>(42569u, var_0.b, 4294967295u)));
}

fn func_2() -> vec4<u32> {
    var var_0 = Struct_1(u_input.a.xxx, select(u_input.a.x, u_input.a.x, 1000f < _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1239f)), _wgslsmith_f_op_f32(max(-2459f, 425f)))), 4294967295u, u_input.b, 12707i);
    let var_1 = Struct_1(func_3(), _wgslsmith_mult_u32(~1u, min(~_wgslsmith_div_u32(85441u, u_input.a.x), reverseBits(u_input.a.x))), min(select(_wgslsmith_mult_u32(4294967295u, _wgslsmith_div_u32(4294967295u, u_input.a.x)), 4294967295u, true), 1u), 2147483647i, reverseBits(countOneBits(2147483647i)));
    let var_2 = select(vec3<bool>(true, (-60119i > (30996i ^ var_1.d)) & any(vec3<bool>(false, false, true)), all(vec4<bool>(true, true, true, true))), !select(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), all(vec4<bool>(true, false, true, false))), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true)), vec3<bool>(true, true, true));
    var_0 = Struct_1(~var_1.a ^ ~vec3<u32>(select(u_input.a.x, 0u, true), 82593u, var_1.b & 71418u), firstTrailingBit(var_1.c), 0u, -(var_0.d & 36318i), u_input.b);
    var var_3 = vec4<f32>(123f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1171f * 337f))))), 828f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1495f)) + _wgslsmith_f_op_f32(982f * 887f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-348f)), -1395f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -188f) * _wgslsmith_f_op_f32(-2491f - 809f))), any(select(!var_2.yx, vec2<bool>(var_2.x, false), true)))));
    return vec4<u32>(5515u, _wgslsmith_add_u32(min(~firstLeadingBit(var_0.a.x), ~firstTrailingBit(6226u)), 1u), var_1.b, 0u);
}

fn func_1() -> Struct_1 {
    let var_0 = any(!vec3<bool>(true, any(vec4<bool>(false, false, true, false)), true));
    let var_1 = _wgslsmith_mod_vec4_u32(select(~(~(u_input.a ^ u_input.a)), func_2(), vec4<bool>(true, var_0, any(vec2<bool>(var_0, false)), !var_0)), vec4<u32>(_wgslsmith_add_u32(~(65452u >> (u_input.a.x % 32u)), u_input.a.x), u_input.a.x, 1u, func_2().x));
    let var_2 = select(_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(firstLeadingBit(reverseBits(u_input.c)), u_input.c), -select(-u_input.c, vec2<i32>(u_input.c.x, 0i) >> (vec2<u32>(var_1.x, var_1.x) % vec2<u32>(32u)), select(vec2<bool>(true, true), vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0)))), abs(abs(reverseBits(-vec2<i32>(-20597i, u_input.b)))), select(select(vec2<bool>(!var_0, any(vec2<bool>(var_0, var_0))), select(vec2<bool>(true, var_0), !vec2<bool>(var_0, false), var_0), all(select(vec3<bool>(false, false, true), vec3<bool>(var_0, true, var_0), var_0))), select(vec2<bool>(any(vec3<bool>(var_0, var_0, true)), all(vec3<bool>(true, var_0, var_0))), !(!vec2<bool>(var_0, false)), select(vec2<bool>(var_0, false), select(vec2<bool>(true, var_0), vec2<bool>(true, var_0), true), 31672u < var_1.x)), true));
    var var_3 = Struct_1(~vec3<u32>(var_1.x, _wgslsmith_div_u32(0u, ~var_1.x), 1u), u_input.a.x, var_1.x << (((u_input.a.x ^ ~u_input.a.x) | min(5533u, u_input.a.x)) % 32u), u_input.c.x, -_wgslsmith_add_i32(-_wgslsmith_mult_i32(u_input.b, var_2.x), var_2.x));
    var_3 = Struct_1(~var_3.a, _wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, 16178u, 2821u), var_1), 1u), var_1.x) << (_wgslsmith_dot_vec2_u32(select(var_1.yz, vec2<u32>(0u, var_1.x), select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, false), var_0)), _wgslsmith_div_vec2_u32(u_input.a.yw, vec2<u32>(12955u, u_input.a.x))) % 32u), 0u, _wgslsmith_sub_i32(58720i, -(~(~(-2147483647i)))), var_2.x);
    return Struct_1(vec3<u32>(~var_3.a.x, 22239u, ~func_2().x) | var_1.zyz, firstLeadingBit(33047u), 65248u, firstLeadingBit(1i), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i;
    var_0 = u_input.c.x;
    let var_1 = abs(~u_input.a.x);
    let var_2 = all(!vec2<bool>(all(vec3<bool>(true, true, true)), !(u_input.c.x <= u_input.b)));
    let var_3 = func_1();
    var_0 = ~abs(-42941i);
    var var_4 = _wgslsmith_div_vec4_i32(-vec4<i32>(-6172i, func_1().e, var_3.e, 0i), vec4<i32>(select(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, -6835i), vec2<i32>(-1i, 0i)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_3.d, u_input.c.x, var_3.e), vec3<i32>(u_input.b, 1i, 0i))), u_input.c.x, all(vec2<bool>(true, true))), _wgslsmith_mod_i32(reverseBits(u_input.c.x), u_input.c.x), u_input.b, 1i));
    var_0 = i32(-1i) * -24202i;
    var_4 = vec4<i32>(-1i) * -(abs(vec4<i32>(11432i, var_4.x, -48674i, var_4.x)) >> (u_input.a % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1612f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -472f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -801f)))), _wgslsmith_sub_u32(u_input.a.x, ~func_2().x), -14856i);
}

