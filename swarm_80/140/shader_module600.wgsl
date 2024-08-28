struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: vec3<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_div_i32(arg_3.c.a >> (1u % 32u), arg_3.c.a);
    return Struct_1(reverseBits(2147483647i >> (u_input.e % 32u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>) -> bool {
    var var_0 = 57601u;
    let var_1 = Struct_3(Struct_2(_wgslsmith_mult_u32(38283u, _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a.x, 0u), 4294967295u)), vec4<bool>(arg_1.x, -arg_0.a == max(63551i, u_input.d.x), 2147483647i == _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(arg_0.a, -34929i, u_input.d.x)), arg_1.x), func_2(Struct_4(select(vec2<bool>(arg_1.x, arg_1.x), arg_1.xz, arg_1.x)), vec4<u32>(_wgslsmith_div_u32(u_input.e, 4294967295u), ~14938u, ~u_input.b.x, ~20727u), Struct_3(Struct_2(4294967295u, vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x), Struct_1(u_input.d.x)), ~68065u), Struct_2(_wgslsmith_mult_u32(1u, u_input.b.x), vec4<bool>(true, true, true, true), func_2(Struct_4(arg_1.yx), vec4<u32>(9299u, 40115u, 4294967295u, 8962u), Struct_3(Struct_2(u_input.c.x, vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x), arg_0), 24647u), Struct_2(u_input.b.x, vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x), arg_0))))), 27327u);
    var_0 = abs(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, _wgslsmith_sub_u32(var_1.a.a, 34802u)), vec2<u32>(_wgslsmith_mod_u32(u_input.c.x, u_input.e) & u_input.c.x, 1u)));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -248f);
    var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(var_1.a.a), ~(_wgslsmith_add_u32(102418u, 0u) & _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.a, 0u, u_input.e), vec3<u32>(u_input.a.x, u_input.b.x, var_1.b))), 34656u, var_1.a.a), _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a.x, var_1.b >> (0u % 32u), var_1.b >> (1u % 32u), select(1u, var_1.a.a, false)), ~(~u_input.a), reverseBits(vec4<u32>(109967u, var_1.b, var_1.b, u_input.c.x))));
    return var_1.a.b.x;
}

fn func_1() -> i32 {
    let var_0 = vec4<bool>(!(!func_3(func_2(Struct_4(vec2<bool>(false, false)), u_input.a, Struct_3(Struct_2(u_input.b.x, vec4<bool>(true, false, false, true), Struct_1(u_input.d.x)), u_input.e), Struct_2(37761u, vec4<bool>(true, true, false, false), Struct_1(2147483647i))), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)))), func_3(func_2(Struct_4(vec2<bool>(false, true)), ~u_input.a, Struct_3(Struct_2(8337u, vec4<bool>(false, true, true, true), Struct_1(u_input.d.x)), u_input.b.x), Struct_2(u_input.b.x, vec4<bool>(true, false, true, false), Struct_1(u_input.d.x))), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true)) & all(vec2<bool>(true, true)), false, all(vec2<bool>(true, false)));
    let var_1 = ~(0u ^ _wgslsmith_add_u32(36526u, u_input.b.x));
    var var_2 = Struct_4(select(select(select(!var_0.wy, var_0.xx, !var_0.x), vec2<bool>(!var_0.x, any(var_0.wyx)), var_0.x), !select(var_0.wz, var_0.zw, all(vec2<bool>(false, true))), select(false, true, var_0.x)));
    let var_3 = ~(~(var_1 & 1u));
    var var_4 = 1000f;
    return -u_input.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec3_u32(~(~vec3<u32>(min(20006u, u_input.c.x), u_input.b.x, 1u)), ~(~firstTrailingBit(u_input.b)));
    var var_1 = select(-1i, ~_wgslsmith_add_i32(func_1(), 25329i), !(!(9560u == u_input.c.x) & true));
    var var_2 = Struct_5(Struct_4(select(select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, false)), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), (12793u >> (u_input.c.x % 32u)) != 0u)), !(!all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true))), u_input.a);
    var_1 = min(~_wgslsmith_sub_i32(-(~0i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 15508i), u_input.d.yz)), u_input.d.x);
    var_1 = u_input.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(max(~abs(var_0) << (var_2.c.zww % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(var_0 << (_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 0u, 0u), vec3<u32>(u_input.a.x, var_0.x, 0u)) % vec3<u32>(32u)), u_input.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-704f - 488f))) * _wgslsmith_f_op_f32(floor(-563f))), -1972f), func_2(Struct_4(!var_2.a.a), vec4<u32>(u_input.c.x, var_0.x, var_0.x, ~1u), Struct_3(Struct_2(min(u_input.a.x, u_input.c.x), !vec4<bool>(var_2.b, var_2.b, true, false), func_2(var_2.a, vec4<u32>(var_2.c.x, u_input.c.x, 1u, 0u), Struct_3(Struct_2(var_0.x, vec4<bool>(true, var_2.a.a.x, true, var_2.a.a.x), Struct_1(-2147483647i)), var_0.x), Struct_2(59895u, vec4<bool>(true, true, false, var_2.a.a.x), Struct_1(-1325i)))), 1u), Struct_2(firstTrailingBit(20054u) << (u_input.e % 32u), vec4<bool>(any(vec2<bool>(var_2.a.a.x, true)), true, true, false), Struct_1(1i))).a, ~_wgslsmith_sub_vec3_u32(var_0, var_2.c.xxw), ~vec2<i32>(countOneBits(u_input.d.x & -1i), u_input.d.x));
}

