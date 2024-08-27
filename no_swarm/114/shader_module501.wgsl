struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: u32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: f32,
    d: u32,
    e: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: vec4<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: i32;

var<private> global2: bool;

var<private> global3: array<Struct_1, 13>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> bool {
    global3 = array<Struct_1, 13>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-171f * 1282f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -348f))), -694f))), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 255f, 197f, 385f) + vec4<f32>(2521f, 978f, 688f, -270f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(276f, -523f, -293f, -1000f))), vec4<bool>(true, true, true, true))), select(vec4<bool>(u_input.c == u_input.c, true, u_input.a <= u_input.a, all(vec2<bool>(false, true))), select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), false), vec4<bool>(false, true, true, true)), true), u_input.c, _wgslsmith_div_vec3_u32(~max(vec3<u32>(u_input.c, 0u, u_input.c), vec3<u32>(4294967295u, 14183u, u_input.c)), select(vec3<u32>(u_input.c, 57422u, 4294967295u), vec3<u32>(u_input.c, u_input.c, 23366u), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f))), 0u << (u_input.c % 32u), ~u_input.c);
    let var_1 = Struct_3(select(min(~vec4<u32>(u_input.c, 4294967295u, 48895u, u_input.c), vec4<u32>(122562u, var_0.b.d.x, var_0.b.c, 44193u)) >> (countOneBits(~vec4<u32>(var_0.b.d.x, 22937u, u_input.c, u_input.c)) % vec4<u32>(32u)), vec4<u32>(u_input.c >> (u_input.c % 32u), 28098u, ~1124u, u_input.c), var_0.b.b), true, var_0.b);
    let var_2 = 1u;
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(var_0.b.a * _wgslsmith_f_op_vec4_f32(vec4<f32>(195f, _wgslsmith_f_op_f32(ceil(var_0.c)), _wgslsmith_f_op_f32(step(725f, var_1.c.a.x)), -320f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, var_0.c, var_0.a.x, var_0.a.x) - vec4<f32>(-838f, 789f, 835f, 1000f)) - var_0.b.a))), !select(var_1.c.b, !(!var_0.b.b), true), countOneBits(_wgslsmith_div_u32(u_input.c, ~30184u)), _wgslsmith_sub_vec3_u32((~vec3<u32>(var_0.b.d.x, var_1.a.x, 513u) | max(vec3<u32>(var_1.c.c, 4294967295u, u_input.c), vec3<u32>(var_2, 4294967295u, 16328u))) ^ ~vec3<u32>(1u, var_2, var_0.e), ~vec3<u32>(var_2, ~var_2, ~var_2)));
    return 1346f >= var_3.a.x;
}

fn func_2() -> f32 {
    global0 = func_3();
    let var_0 = vec2<bool>(true, true);
    let var_1 = 1u;
    var var_2 = (~(~var_1) >> (~min(~40262u, u_input.c) % 32u)) ^ countOneBits(4294967295u);
    var var_3 = Struct_3(reverseBits(reverseBits(min(vec4<u32>(var_1, 16556u, u_input.c, u_input.c), vec4<u32>(31112u, var_1, 4784u, u_input.c)) | _wgslsmith_div_vec4_u32(vec4<u32>(var_1, u_input.c, u_input.c, 1u), vec4<u32>(u_input.c, u_input.c, 22954u, u_input.c)))), true, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(337f, 1246f, _wgslsmith_f_op_f32(191f * 1078f), _wgslsmith_f_op_f32(f32(-1f) * -1148f))), !vec4<bool>(var_0.x, true, true, false), u_input.c << ((u_input.c << (firstTrailingBit(var_1) % 32u)) % 32u), (_wgslsmith_div_vec3_u32(vec3<u32>(0u, var_1, 15841u), vec3<u32>(u_input.c, 4294967295u, 0u)) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, var_1, u_input.c), vec3<u32>(var_1, 1u, 42758u), vec3<u32>(1u, 4294967295u, var_1)) % vec3<u32>(32u))) >> (select(~vec3<u32>(var_1, var_1, var_1), ~vec3<u32>(u_input.c, u_input.c, 4294967295u), !vec3<bool>(var_0.x, var_0.x, var_0.x)) % vec3<u32>(32u))));
    return var_3.c.a.x;
}

fn func_1(arg_0: f32) -> i32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * 460f));
    var var_1 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2757f)) - -1059f), arg_0), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1320f, _wgslsmith_f_op_f32(1000f - -988f), _wgslsmith_f_op_f32(trunc(560f))), vec3<f32>(_wgslsmith_f_op_f32(abs(arg_0)), 517f, -197f), false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -558f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1575f, -1456f, 817f) + vec3<f32>(778f, -1078f, arg_0)))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), any(vec3<bool>(false, true, false))), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.c, 57843u), vec3<u32>(u_input.c, 0u, u_input.c)) == ~0u)))));
    let var_2 = max(~(~abs(vec3<u32>(u_input.c, u_input.c, u_input.c)) & countOneBits(~vec3<u32>(1u, 62162u, u_input.c))), vec3<u32>(5854u, u_input.c, _wgslsmith_div_u32(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 0u, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.c, u_input.c, 0u))), reverseBits(reverseBits(16335u)))));
    let var_3 = true;
    let var_4 = -(vec3<i32>(-1i) * -u_input.d);
    return abs(~countOneBits(firstLeadingBit(~u_input.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_i32(~_wgslsmith_mult_i32(abs(-8185i), -(-15953i | u_input.d.x)), u_input.a);
    global1 = u_input.b;
    var_0 = u_input.d.x;
    global0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1487f), _wgslsmith_f_op_f32(select(-1476f, -972f, false)))))) >= func_1(912f);
    global2 = true;
    var var_1 = true;
    var_0 = countOneBits(u_input.d.x);
    global2 = false != select(_wgslsmith_f_op_f32(func_2()) <= _wgslsmith_f_op_f32(step(287f, _wgslsmith_div_f32(279f, 500f))), 19621i >= u_input.a, true);
    var var_2 = Struct_2(vec3<f32>(169f, -1019f, -459f), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(max(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 61871u, u_input.c, 4294967295u), ~vec4<u32>(4294967295u, u_input.c, 1u, u_input.c)), 82303u), u_input.c), 13u)], _wgslsmith_f_op_f32(sign(1094f)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, ~(117581u << (u_input.c % 32u))), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c) << (select(vec3<u32>(682u, u_input.c, 64417u), vec3<u32>(4294967295u, u_input.c, 1u), vec3<bool>(true, true, true)) % vec3<u32>(32u)), select(vec3<u32>(u_input.c, u_input.c, u_input.c), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(u_input.c, 1u, 112696u)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false))))), ~4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(0u | min(29206u, u_input.c), var_2.b.c, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(50616u, u_input.c) | 6377u, 1u ^ reverseBits(var_2.e), u_input.c), var_2.d), ~_wgslsmith_mod_i32(u_input.a, -_wgslsmith_div_i32(2147483647i, u_input.b)), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_2.a.x - _wgslsmith_f_op_f32(f32(-1f) * -127f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.c), _wgslsmith_f_op_f32(-402f - 1280f))), _wgslsmith_f_op_f32(-1998f - 1122f), var_2.c)), var_2.b.a);
}

