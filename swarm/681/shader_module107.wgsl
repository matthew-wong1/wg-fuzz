struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec3<u32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>, arg_2: vec3<i32>) -> vec4<bool> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_u32(arg_0, arg_0), select(select(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), !vec4<bool>(false, false, false, arg_1.x), vec4<bool>(true, arg_1.x, arg_1.x, true)), select(vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x), select(vec4<bool>(arg_1.x, true, true, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), true), true), any(!arg_1))), countOneBits(reverseBits(u_input.b)));
    let var_1 = _wgslsmith_f_op_f32(sign(-489f));
    var_0 = Struct_2(var_0.a, reverseBits(-_wgslsmith_mult_i32(-1i >> (arg_0 % 32u), -var_0.b)));
    let var_2 = _wgslsmith_f_op_f32(round(var_1));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(floor(var_2)), var_2, -1856f);
    return !vec4<bool>(arg_1.x, !select(var_0.a.b.x, all(var_0.a.b.xxy), 45891u == var_0.a.a), arg_1.x, var_0.a.b.x || var_0.a.b.x);
}

fn func_2(arg_0: f32, arg_1: vec3<i32>) -> vec4<f32> {
    let var_0 = ~(~min(~vec2<u32>(0u, 26401u), ~_wgslsmith_div_vec2_u32(vec2<u32>(49611u, 109863u), vec2<u32>(28348u, 1u))));
    var var_1 = _wgslsmith_f_op_f32(-arg_0);
    var var_2 = Struct_4(Struct_1(1u, select(vec4<bool>(true, false, true, false), func_3(countOneBits(var_0.x), vec3<bool>(false, true, false), vec3<i32>(2147483647i, u_input.a.x, -24895i)), true & all(vec2<bool>(true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -153f), _wgslsmith_f_op_f32(-arg_0))) - 531f)), ~select(~(~vec3<u32>(var_0.x, 42511u, 1u)), ~(~vec3<u32>(1u, var_0.x, var_0.x)), true));
    var var_3 = vec2<bool>(false, true);
    let var_4 = Struct_5(Struct_1(~_wgslsmith_mod_u32(0u, 13427u), var_2.a.b));
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, -110f, -1777f, var_2.b), vec4<f32>(-1000f, 629f, -700f, 996f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b, -2234f, arg_0, var_2.b) - vec4<f32>(var_2.b, var_2.b, -798f, -1000f)))))))));
}

fn func_4(arg_0: vec4<f32>) -> Struct_5 {
    var var_0 = Struct_3(u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-541f, arg_0.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-278f)))));
    var_0 = Struct_3(u_input.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(f32(-1f) * -762f)));
    let var_1 = Struct_3(vec3<i32>(14545i, u_input.a.x, -2147483647i), _wgslsmith_div_f32(_wgslsmith_div_f32(-118f, _wgslsmith_f_op_f32(trunc(-1104f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(arg_0.x + 763f))))));
    var var_2 = var_0.a.zz >> (abs(select(~vec2<u32>(1u, 1u), ~vec2<u32>(1u, 1u), func_3(firstTrailingBit(55120u), func_3(4294967295u, vec3<bool>(true, false, false), var_0.a).zxy, _wgslsmith_div_vec3_i32(var_1.a, var_0.a)).yz)) % vec2<u32>(32u));
    var var_3 = Struct_1(~(~1u) << (_wgslsmith_mult_u32(abs(1u), abs(select(1u, 30395u, false))) % 32u), !vec4<bool>(any(vec4<bool>(true, false, true, false)), !func_3(18021u, vec3<bool>(false, false, false), vec3<i32>(var_1.a.x, 2147483647i, -30104i)).x, true, !any(vec2<bool>(true, true))));
    return Struct_5(Struct_1(7153u, var_3.b));
}

fn func_1() -> vec4<u32> {
    var var_0 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-481f * -318f)), ~vec3<i32>(1i, u_input.b, u_input.b)))));
    let var_1 = 1u;
    var var_2 = !(!var_0.a.b);
    let var_3 = Struct_1(var_1, vec4<bool>(true, var_0.a.b.x, func_4(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1230f, 1000f, 1000f, -478f) - vec4<f32>(2674f, -1429f, -847f, 1667f)), vec4<f32>(-1000f, 180f, 385f, -654f)))).a.b.x, any(select(var_2.xyz, var_0.a.b.yyz, vec3<bool>(true, false, var_0.a.b.x)))));
    var var_4 = Struct_3(vec3<i32>(-45494i, firstTrailingBit(_wgslsmith_sub_i32(~u_input.b, -u_input.b)), u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2494f - 699f)));
    return reverseBits(select(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 17918u, var_1, var_0.a.a), vec4<u32>(0u, var_1, 4294967295u, 1u)), ~vec4<u32>(4662u, var_3.a, 1652u, var_0.a.a)), ~vec4<u32>(var_3.a, 0u, var_3.a, var_1) | ~vec4<u32>(var_0.a.a, 1u, var_0.a.a, 3124u), var_4.a.x <= u_input.b) ^ ~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1, 0u), vec2<u32>(var_1, 0u)), var_3.a, var_3.a, 26004u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = _wgslsmith_mult_vec4_u32(abs(vec4<u32>(_wgslsmith_add_u32(~4641u, select(var_0.x, var_0.x, false)), abs(20013u) << (var_0.x % 32u), var_0.x, var_0.x)), firstTrailingBit(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(max(vec4<u32>(var_0.x, var_0.x, 4294967295u, var_0.x), vec4<u32>(4294967295u, var_0.x, var_0.x, 39576u)), reverseBits(vec4<u32>(4294967295u, var_0.x, 0u, var_0.x))), ~select(vec4<u32>(var_0.x, 0u, 5089u, 0u), vec4<u32>(var_0.x, var_0.x, 19110u, 37140u), true))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1334f), _wgslsmith_f_op_f32(ceil(299f))))) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_2 = _wgslsmith_mod_u32(~var_0.x & 4294967295u, 40505u);
    var var_3 = 335f;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(233f, _wgslsmith_f_op_f32(-516f + 1000f))) - 1f));
    var var_4 = abs(-_wgslsmith_mult_vec3_i32(select(_wgslsmith_mod_vec3_i32(u_input.a, u_input.a), vec3<i32>(28500i, 0i, 1i), any(vec3<bool>(false, true, false))), _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, -6525i, 4404i), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, u_input.b, -12305i), u_input.a))));
    var var_5 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-180f, -1372f, 1000f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1459f, -657f))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -785f), -1871f, _wgslsmith_f_op_f32(round(-1233f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(0i, 1i);
}

