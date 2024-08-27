struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: Struct_2,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: Struct_4) -> vec3<bool> {
    let var_0 = Struct_1(arg_2.a.a.a.a, arg_0.a.b.d.x, arg_2.a.a.a.c, min(_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(1u, arg_2.c.b.b), ~arg_2.c.b.d), arg_2.c.a.c.yx), _wgslsmith_sub_vec2_u32(min(_wgslsmith_add_vec2_u32(arg_2.a.a.a.d, vec2<u32>(0u, 17918u)), vec2<u32>(4294967295u, arg_0.b.c.x)), ~arg_2.c.a.a.zz)));
    let var_1 = Struct_4(arg_0, vec2<bool>(false, false), Struct_2(Struct_1(reverseBits(vec4<u32>(arg_2.c.a.b, arg_0.b.d.x, arg_0.a.a.d.x, arg_0.a.b.a.x)), _wgslsmith_sub_u32(4294967295u | arg_2.c.b.d.x, 1u), _wgslsmith_mult_vec3_u32(abs(vec3<u32>(0u, 21734u, 0u)), _wgslsmith_mult_vec3_u32(var_0.a.zxz, vec3<u32>(arg_0.a.a.d.x, 13671u, var_0.c.x))), vec2<u32>(reverseBits(1u), 1u)), var_0, arg_0.a.c));
    var var_2 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_0.a.b.d.x, max(~67258u, 3428u | var_1.c.b.c.x)), arg_2.c.b.c), 28421u);
    var_2 = 49988u;
    var var_3 = var_1;
    return vec3<bool>(!(-(~(-5246i)) < -_wgslsmith_div_i32(arg_2.a.c, 1i)), !select(true, var_3.b.x, true), var_1.c.a.c.x >= 1u);
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec3<u32>) -> u32 {
    var var_0 = all(func_3(Struct_3(Struct_2(arg_1, arg_1, ~vec3<i32>(73333i, -70989i, u_input.a)), Struct_1(vec4<u32>(2750u, 16505u, arg_1.c.x, 14463u), ~7971u, arg_2 >> (vec3<u32>(arg_1.a.x, 4294967295u, arg_2.x) % vec3<u32>(32u)), firstLeadingBit(arg_2.yy)), select(firstLeadingBit(-1i), select(u_input.a, -1i, true), true)), vec2<i32>(_wgslsmith_mod_i32(u_input.a << (arg_2.x % 32u), 0i), 1i), Struct_4(Struct_3(Struct_2(arg_1, Struct_1(arg_1.a, arg_0, vec3<u32>(1u, 50152u, arg_2.x), vec2<u32>(57753u, 79230u)), vec3<i32>(-1i, u_input.a, u_input.a)), Struct_1(arg_1.a, 46934u, arg_2, arg_2.yz), 0i), vec2<bool>(true, true), Struct_2(Struct_1(arg_1.a, arg_2.x, arg_1.a.ywx, arg_2.xy), arg_1, ~vec3<i32>(u_input.a, -30038i, u_input.a)))));
    var var_1 = select(select(vec4<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false))), true, true, -32304i <= _wgslsmith_add_i32(-2147483647i, u_input.a)), select(vec4<bool>(-1i == u_input.a, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true))), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true)), true), !vec4<bool>(!any(vec4<bool>(false, false, true, false)), select(true, true, all(vec4<bool>(false, false, true, true))), false, true || all(vec3<bool>(false, false, true))), true);
    let var_2 = Struct_2(Struct_1(vec4<u32>(arg_0 ^ arg_2.x, firstTrailingBit(0u), arg_2.x << (arg_0 % 32u), ~arg_1.a.x) ^ ~(~arg_1.a), 56215u, arg_1.c, ~(~(vec2<u32>(arg_0, 0u) << (arg_2.xy % vec2<u32>(32u))))), arg_1, vec3<i32>(u_input.a, -2144i, i32(-1i) * -32573i));
    let var_3 = var_2;
    var_0 = select(var_1.x, false, false);
    return var_2.b.d.x << (_wgslsmith_dot_vec3_u32(abs(~_wgslsmith_div_vec3_u32(vec3<u32>(arg_1.a.x, 56810u, 199u), arg_1.a.zwx)), arg_2) % 32u);
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: bool) -> StorageBuffer {
    var var_0 = ~(~max(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(55394u, 1941u, 48472u), vec3<u32>(68633u, 9750u, 22105u)))) < (select(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, 15645u, 12602u), ~4294967295u), countOneBits(~0u), arg_2) << (func_2(5507u, Struct_1(~vec4<u32>(19527u, 1u, 0u, 1u), 3406u, vec3<u32>(1u, 1u, 1u), vec2<u32>(1u, 4095u)), vec3<u32>(1u, ~4005u, ~0u)) % 32u));
    var var_1 = Struct_2(Struct_1(~countOneBits(firstLeadingBit(vec4<u32>(45583u, 0u, 31718u, 4294967295u))), ~(_wgslsmith_sub_u32(0u, 0u) >> (reverseBits(0u) % 32u)), vec3<u32>(0u, ~1u, _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, 13706u, 0u)), ~vec3<u32>(4294967295u, 29258u, 1u))), _wgslsmith_div_vec2_u32(select(firstTrailingBit(vec2<u32>(1u, 0u)), ~vec2<u32>(44436u, 14940u), arg_2), vec2<u32>(4294967295u, 1u))), Struct_1(~max(select(vec4<u32>(25639u, 4294967295u, 0u, 4294967295u), vec4<u32>(1u, 0u, 41305u, 40928u), false), vec4<u32>(1u, 1u, 1u, 1u)), ~func_2(45594u, Struct_1(vec4<u32>(16032u, 4294967295u, 6826u, 56137u), 0u, vec3<u32>(1u, 0u, 77480u), vec2<u32>(4294967295u, 1u)), vec3<u32>(1u, 4294967295u, 4294967295u)) & ~1u, vec3<u32>(firstLeadingBit(min(12320u, 13542u)), 1u, _wgslsmith_add_u32(1u, firstLeadingBit(3471u))), firstLeadingBit(vec2<u32>(1u, 1u))), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(min(u_input.a, u_input.a), u_input.a, abs(-55562i)), -(vec3<i32>(arg_0, 26058i, u_input.a) | vec3<i32>(arg_0, -1i, arg_0)), firstTrailingBit(vec3<i32>(-10924i, 1i, arg_0))), vec3<i32>(-1i, (i32(-1i) * -2147483647i) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(49981u, 22150u, 22609u, 0u), vec4<u32>(4294967295u, 77985u, 1u, 1u)) % 32u), 2147483647i), !vec3<bool>(arg_2, true | arg_2, arg_2)));
    var_1 = Struct_2(var_1.a, Struct_1(vec4<u32>(abs(_wgslsmith_div_u32(var_1.b.b, var_1.b.a.x)), select(1u, var_1.b.d.x, arg_2) >> (abs(var_1.b.b) % 32u), var_1.b.d.x, _wgslsmith_dot_vec4_u32(var_1.b.a, vec4<u32>(4294967295u, 27131u, 1u, 0u)) >> (min(var_1.a.a.x, 33225u) % 32u)), 0u, select(vec3<u32>(func_2(var_1.a.a.x, var_1.b, vec3<u32>(var_1.b.a.x, var_1.a.b, var_1.a.b)), var_1.b.c.x, _wgslsmith_add_u32(1u, var_1.a.d.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_1.b.b, var_1.b.c.x, var_1.b.b), ~var_1.b.a.xzz), true & (4368i == var_1.c.x)), var_1.b.a.xz), _wgslsmith_clamp_vec3_i32(var_1.c, var_1.c, vec3<i32>(~arg_0, ~41935i, -46322i) & (_wgslsmith_mod_vec3_i32(var_1.c, var_1.c) | abs(var_1.c))));
    var_1 = Struct_2(var_1.b, var_1.a, vec3<i32>(-11283i, u_input.a, u_input.a));
    var_1 = Struct_2(var_1.b, Struct_1(~vec4<u32>(var_1.a.b, var_1.b.a.x, 1u, var_1.b.b) << (~vec4<u32>(var_1.a.b, 8182u, var_1.a.b, 38132u) % vec4<u32>(32u)), (_wgslsmith_sub_u32(1u, var_1.a.d.x) & _wgslsmith_sub_u32(4294967295u, 4294967295u)) >> (57960u % 32u), vec3<u32>(4294967295u, 4294967295u, var_1.a.b), ~var_1.a.a.yz), var_1.c);
    return StorageBuffer(vec4<f32>(_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1543f)))), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-130f * 1624f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1965f, arg_1))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(_wgslsmith_mult_i32(u_input.a, i32(-1i) * -1i), _wgslsmith_div_f32(-1246f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 1704f))), true);
}

