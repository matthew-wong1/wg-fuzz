struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: vec4<i32>,
    d: vec2<bool>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17>;

var<private> global1: array<f32, 20>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec4<bool> {
    let var_0 = ~abs(~vec4<u32>(1u, 1u, 1u, 1u)) << (firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u));
    let var_1 = _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(~_wgslsmith_mult_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(0i, u_input.a)), vec2<i32>(-26340i, -2147483647i)) & 1i, -1288i);
    var var_2 = -1i;
    global0 = array<Struct_2, 17>();
    let var_3 = Struct_1(true | !any(vec2<bool>(true, true)), true, vec2<u32>(0u, var_0.x));
    return !select(!(!(!vec4<bool>(var_3.b, true, var_3.a, var_3.a))), select(vec4<bool>(true, var_3.a | false, var_3.b | true, !var_3.b), select(vec4<bool>(var_3.a, var_3.a, var_3.b, true), vec4<bool>(false, var_3.b, true, true), !vec4<bool>(true, var_3.a, var_3.a, var_3.a)), !select(vec4<bool>(var_3.a, false, true, false), vec4<bool>(var_3.a, var_3.a, var_3.a, false), false)), all(vec2<bool>(true, var_1 == u_input.b)));
}

fn func_2() -> bool {
    var var_0 = countOneBits(vec4<u32>(1u, 1u, 1u, 1u) >> (select(~vec4<u32>(28761u, 0u, 64803u, 1256u), vec4<u32>(1u, 1u, 1u, 1u), func_3()) % vec4<u32>(32u))) | ~(~vec4<u32>(select(0u, 1u, false), 1u, 5876u, 113795u));
    let var_1 = false;
    var var_2 = vec4<bool>(all(vec3<bool>(any(!vec4<bool>(false, var_1, true, var_1)), (var_1 | false) && var_1, any(vec4<bool>(var_1, var_1, true, var_1)) & (-2147483647i >= u_input.b))), var_1, all(select(select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(var_1, var_1), vec2<bool>(false, false), true)), !(!vec2<bool>(var_1, true)), select(func_3().zz, !vec2<bool>(var_1, var_1), func_3().wy))), (var_0.x == 14705u) | true);
    var var_3 = Struct_1(false, !(!any(vec3<bool>(false, var_1, var_1))) && any(!select(var_2.xxw, vec3<bool>(var_2.x, var_1, var_1), vec3<bool>(var_1, false, var_1))), _wgslsmith_sub_vec2_u32(var_0.zz, var_0.zy) & ~((vec2<u32>(var_0.x, var_0.x) << (vec2<u32>(var_0.x, var_0.x) % vec2<u32>(32u))) | (vec2<u32>(var_0.x, 14946u) ^ vec2<u32>(var_0.x, var_0.x))));
    var var_4 = Struct_3(1i, global0[_wgslsmith_index_u32(min(~4294967295u, abs(9232u)), 17u)], Struct_1(!(!(!var_3.b)), func_3().x, vec2<u32>(_wgslsmith_sub_u32(min(var_0.x, var_3.c.x), 38805u), var_0.x)), Struct_1(!var_1, false, countOneBits(var_3.c)));
    return !(!(!(!(!var_3.a))));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec3<u32>) -> u32 {
    let var_0 = Struct_1(all(!(!select(vec2<bool>(arg_1.b, false), vec2<bool>(true, arg_0), true))), func_2(), vec2<u32>(23353u, 1u ^ countOneBits(arg_2.x)));
    let var_1 = arg_1;
    let var_2 = i32(-1i) * -min(-u_input.b, _wgslsmith_mult_i32(~(-19242i), -1i));
    global0 = array<Struct_2, 17>();
    global0 = array<Struct_2, 17>();
    return ~abs(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(var_0.c >> (arg_1.c % vec2<u32>(32u)), vec2<u32>(1u, 36550u)), _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(arg_2.xz, vec2<u32>(var_0.c.x, 1u)), ~vec2<u32>(4294967295u, 1u))));
}

fn func_4(arg_0: vec4<i32>, arg_1: u32, arg_2: u32) -> Struct_1 {
    var var_0 = Struct_1(false, true, ~firstTrailingBit(~select(vec2<u32>(41388u, 4294967295u), vec2<u32>(0u, 35228u), false)));
    var var_1 = true;
    let var_2 = Struct_1(true, !func_2(), vec2<u32>(arg_1, func_1(var_0.a && true, Struct_1(false, true, firstLeadingBit(vec2<u32>(4909u, 0u))), vec3<u32>(~arg_2, 4294967295u, 51409u | arg_2))));
    var var_3 = _wgslsmith_dot_vec2_i32(arg_0.zz, ~vec2<i32>(firstTrailingBit(arg_0.x) | _wgslsmith_dot_vec4_i32(arg_0, arg_0), -12351i));
    let var_4 = countOneBits(-arg_0.zw);
    return Struct_1(!func_2(), (func_2() && any(!vec2<bool>(var_0.b, true))) & !any(select(vec4<bool>(var_2.b, false, var_0.a, false), vec4<bool>(false, var_2.a, true, var_0.a), vec4<bool>(true, var_2.b, var_0.b, var_2.a))), ~_wgslsmith_sub_vec2_u32(vec2<u32>(21883u, 6423u & arg_1), vec2<u32>(arg_1, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec4<i32>(firstLeadingBit(i32(-1i) * -2147483647i), u_input.a, _wgslsmith_add_i32(u_input.b, u_input.b) & -1i, u_input.b), 60229u, 0u ^ max(func_1(true, Struct_1(true, false, vec2<u32>(102131u, 4294967295u)), reverseBits(vec3<u32>(0u, 21682u, 1u))), ~1u));
    global1 = array<f32, 20>();
    let var_1 = _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(2147483647i, ~u_input.b, -u_input.a)), ~_wgslsmith_div_vec3_i32(-vec3<i32>(-57559i, 26409i, 2147483647i), ~vec3<i32>(-40264i, u_input.a, 22168i))), vec3<i32>(~(u_input.b & _wgslsmith_add_i32(u_input.b, u_input.b)), -47709i & max(-18344i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 1i, u_input.b, u_input.a), vec4<i32>(-14900i, 27476i, u_input.b, u_input.b))), -u_input.b));
    var var_2 = _wgslsmith_mod_vec4_i32((-(vec4<i32>(-20852i, u_input.a, var_1.x, 35079i) | vec4<i32>(-36138i, var_1.x, 1i, -27223i)) ^ ~vec4<i32>(var_1.x, u_input.a, u_input.a, -2147483647i)) >> (_wgslsmith_clamp_vec4_u32(min(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.c.x, 68100u, 23966u, 0u), vec4<u32>(var_0.c.x, 48656u, 8563u, 53740u)), vec4<u32>(63821u, 9097u, var_0.c.x, var_0.c.x)), vec4<u32>(var_0.c.x, ~73005u, var_0.c.x, ~var_0.c.x), ~vec4<u32>(1u, var_0.c.x, var_0.c.x, 85791u) >> (vec4<u32>(0u, 1u, var_0.c.x, 7171u) % vec4<u32>(32u))) % vec4<u32>(32u)), select((vec4<i32>(var_1.x, var_1.x, 11025i, 17088i) & min(vec4<i32>(1i, 54832i, u_input.a, 0i), vec4<i32>(var_1.x, u_input.b, 17140i, -1i))) >> (~abs(vec4<u32>(4294967295u, var_0.c.x, var_0.c.x, var_0.c.x)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.x, var_1.x, countOneBits(42288i), _wgslsmith_add_i32(var_1.x, -1i)), _wgslsmith_div_vec4_i32(min(vec4<i32>(1674i, u_input.b, 2147483647i, u_input.b), vec4<i32>(2147483647i, 1i, u_input.a, u_input.b)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.x, u_input.b, var_1.x, 1i), vec4<i32>(u_input.a, -8298i, u_input.a, 1i)))), vec4<bool>(var_0.a, all(func_3()), true, var_0.a)));
    let var_3 = _wgslsmith_add_u32(~min(var_0.c.x, func_1(false, Struct_1(var_0.b, false, vec2<u32>(var_0.c.x, 1u)), vec3<u32>(29263u, 16546u, var_0.c.x)) << (_wgslsmith_add_u32(var_0.c.x, 36813u) % 32u)), _wgslsmith_dot_vec2_u32(var_0.c, vec2<u32>(~7651u, ~var_0.c.x)));
    var_2 = -((abs(~vec4<i32>(var_2.x, -16866i, 23194i, var_1.x)) | vec4<i32>(-33864i & var_2.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 6517i, 20578i), var_1), firstLeadingBit(var_1.x), select(var_2.x, var_2.x, false))) | vec4<i32>(2147483647i, -12847i, u_input.b, _wgslsmith_mult_i32(1i, u_input.b)));
    let var_4 = -(~var_1.xz);
    let x = u_input.a;
    s_output = StorageBuffer(max(~(~(~vec3<u32>(var_0.c.x, 23271u, var_0.c.x))), abs(firstLeadingBit(vec3<u32>(14273u, var_0.c.x, 25996u)) << (_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.c.x, var_0.c.x, 0u), vec3<u32>(1u, 4294967295u, 23844u)) % vec3<u32>(32u)))), ~28928u, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, _wgslsmith_dot_vec2_i32(reverseBits(var_2.wz), vec2<i32>(0i, -14583i) >> (vec2<u32>(var_3, var_0.c.x) % vec2<u32>(32u)))), ~vec2<i32>(~3480i, i32(-1i) * -2147483647i)), ~(select(~vec3<i32>(-54025i, var_1.x, var_1.x), vec3<i32>(2147483647i, var_2.x, var_1.x), var_0.b) >> (vec3<u32>(1u, max(var_0.c.x, var_3), abs(var_3)) % vec3<u32>(32u))));
}

