struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: bool,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: f32,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 13> = array<vec3<u32>, 13>(vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(1u, 1u, 1u), vec3<u32>(4105u, 1u, 1u), vec3<u32>(4294967295u, 1u, 18413u), vec3<u32>(42000u, 1u, 4901u), vec3<u32>(1u, 0u, 86227u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(0u, 1u, 3314u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(53240u, 1u, 0u), vec3<u32>(103521u, 4294967295u, 10119u), vec3<u32>(1u, 4294967295u, 759u), vec3<u32>(13462u, 5382u, 1u));

var<private> global1: array<i32, 8>;

var<private> global2: Struct_1 = Struct_1(vec2<i32>(-3383i, 13133i), vec2<bool>(true, true), true, vec2<bool>(true, true));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: i32, arg_1: vec3<u32>, arg_2: u32) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -534f), _wgslsmith_div_f32(-434f, -720f)) - -1020f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_2(u_input.b, vec3<i32>(-abs(global1[_wgslsmith_index_u32(u_input.c.x, 8u)]) | firstTrailingBit(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a)), select(~(-global2.a.x), global1[_wgslsmith_index_u32(4294967295u, 8u)], false), _wgslsmith_add_i32(1i, countOneBits(abs(-2147483647i)))), _wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.a.x, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, ~u_input.c.x), 8u)]), global2.a.x, abs(19513i)), abs(1u), true);
    return vec2<bool>(var_0.e, u_input.c.x > 0u);
}

fn func_1() -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-177f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1037f)))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(-31143i, global0[_wgslsmith_index_u32(24295u, 13u)], 1153u))), -1000f))));
    let var_1 = Struct_1(vec2<i32>(-(~(~(-62670i))), 48897i), select(global2.b, global2.d, false), (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(778f)) * _wgslsmith_f_op_f32(-344f - 1194f)) > _wgslsmith_f_op_f32(f32(-1f) * -1923f)) || false, select(!global2.d, global2.d, !select(func_3(), !global2.d, true)));
    var var_2 = Struct_2(~u_input.b, vec3<i32>(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.x, -2147483647i, global2.a.x, 0i), vec4<i32>(u_input.a.x, var_1.a.x, -1i, 43325i)) & _wgslsmith_sub_i32(2147483647i, 2147483647i)), -2147483647i, _wgslsmith_dot_vec4_i32(~vec4<i32>(var_1.a.x, global2.a.x, global2.a.x, var_1.a.x) | _wgslsmith_sub_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 8u)], var_1.a.x, 71004i, var_1.a.x), vec4<i32>(1i, global1[_wgslsmith_index_u32(u_input.c.x, 8u)], global2.a.x, -1i)), vec4<i32>(firstLeadingBit(-1i), -1i, _wgslsmith_dot_vec2_i32(global2.a, vec2<i32>(25997i, -1i)), min(var_1.a.x, -1i)))), reverseBits(~(~firstTrailingBit(global2.a.x))), u_input.b.x, var_1.d.x);
    let var_3 = -1603f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-538f - 449f), _wgslsmith_f_op_f32(481f + 928f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_3)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_3 + var_3), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3, var_3)))))));
    return StorageBuffer(abs(vec2<i32>(-1i, -_wgslsmith_div_i32(2147483647i, global1[_wgslsmith_index_u32(34934u, 8u)]))), _wgslsmith_sub_vec3_u32(select(select(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(51378u, u_input.b.x, u_input.b.x), 13u)], u_input.b.yww, false), _wgslsmith_sub_vec3_u32(u_input.b.xyx, u_input.c), !(1523f != var_3)), _wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(u_input.b.x, var_2.d, u_input.c.x)), u_input.c ^ global0[_wgslsmith_index_u32(54972u, 13u)], firstTrailingBit(vec3<u32>(1u, u_input.c.x, 0u))) | ~(vec3<u32>(var_2.a.x, var_2.a.x, u_input.c.x) << (u_input.b.wzw % vec3<u32>(32u)))), vec4<i32>(global2.a.x & ~1i, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(min(_wgslsmith_clamp_u32(0u, u_input.b.x, u_input.c.x), u_input.b.x << (var_2.a.x % 32u)), max(select(1u, u_input.b.x, var_2.e), ~var_2.a.x)), 8u)], _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.a.yz, vec2<i32>(28329i, u_input.a.x)), global1[_wgslsmith_index_u32(~u_input.b.x, 8u)]) ^ _wgslsmith_sub_i32(u_input.a.x, firstTrailingBit(49748i)), -17529i), vec2<u32>(var_2.d, _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(0u, abs(var_2.a.x), u_input.d))), ~var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(firstLeadingBit(~vec4<u32>(u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 57457u), u_input.b.xz), ~u_input.c.x, 0u)), vec3<u32>(u_input.c.x, u_input.c.x, u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2283f, 2732f)));
    global1 = array<i32, 8>();
    global0 = array<vec3<u32>, 13>();
    let var_1 = _wgslsmith_f_op_f32(max(-1868f, -609f));
    var var_2 = var_0;
    let x = u_input.a;
    s_output = func_1();
}

