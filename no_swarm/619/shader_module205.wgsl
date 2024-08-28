struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: i32, arg_3: vec2<i32>) -> bool {
    return u_input.b.x > 127479u;
}

fn func_3() -> f32 {
    var var_0 = !select(vec2<bool>(all(vec2<bool>(true, false)), !any(vec4<bool>(false, false, true, false))), !vec2<bool>(all(vec4<bool>(true, true, false, true)), select(false, true, false)), true);
    var_0 = vec2<bool>(false, !(var_0.x | true));
    var_0 = select(vec2<bool>(true, false | var_0.x), vec2<bool>(any(vec3<bool>(!var_0.x, any(vec2<bool>(true, var_0.x)), select(var_0.x, var_0.x, var_0.x))), !select(var_0.x, true, true)), all(vec4<bool>(!var_0.x, var_0.x, any(select(vec3<bool>(false, var_0.x, true), vec3<bool>(false, var_0.x, false), vec3<bool>(var_0.x, var_0.x, var_0.x))), any(vec2<bool>(var_0.x, true)))));
    let var_1 = _wgslsmith_mod_vec2_i32(-_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a | u_input.a, ~0i), vec2<i32>(u_input.a, -2147483647i)), ~((vec2<i32>(18509i, u_input.a) >> (vec2<u32>(u_input.b.x, 21091u) % vec2<u32>(32u))) >> (countOneBits(u_input.b.zx) % vec2<u32>(32u))) ^ vec2<i32>(u_input.a, max(1i, abs(u_input.a))));
    var_0 = !(!(!select(vec2<bool>(var_0.x, var_0.x), select(vec2<bool>(false, var_0.x), vec2<bool>(false, var_0.x), false), vec2<bool>(true, true))));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -631f) + _wgslsmith_f_op_f32(abs(2489f))) * 1f)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(u_input.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(select(-1072f, 1003f, true))), true)) <= -646f, Struct_1(u_input.b.x), Struct_1(u_input.b.x));
    let var_1 = Struct_1(var_0.d.a);
    let var_2 = ~reverseBits(-vec4<i32>(abs(-2147483647i), abs(u_input.a), var_0.a, ~1i));
    var var_3 = var_1;
    var_0 = Struct_2(var_0.a, true, Struct_1(0u), var_1);
    return var_0.d;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: f32) -> Struct_2 {
    let var_0 = ~select(abs(~u_input.b), countOneBits(~vec3<u32>(62734u, arg_2.c.a, 0u)), !(!arg_2.b)) | abs(u_input.b);
    var var_1 = ~arg_1.a << (~1u % 32u);
    var_1 = _wgslsmith_add_u32(1u, abs(23974u));
    var_1 = ~min(select(~77393u, firstLeadingBit(~arg_2.d.a), false), ~_wgslsmith_div_u32(arg_2.d.a, 1u));
    var var_2 = -(~(~_wgslsmith_mod_i32(u_input.a | u_input.a, 1i)));
    return arg_2;
}

fn func_5(arg_0: f32, arg_1: vec3<i32>, arg_2: vec2<f32>, arg_3: Struct_2) -> bool {
    let var_0 = vec2<i32>(firstTrailingBit(38922i), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(arg_1, countOneBits(arg_1 & arg_1)), ~arg_1));
    let var_1 = vec4<u32>(~firstTrailingBit(~1u), 31268u, func_2().a, _wgslsmith_div_u32(~(~arg_3.d.a), ~_wgslsmith_add_u32(u_input.b.x, 66660u))) >> (~select(vec4<u32>(select(arg_3.d.a, arg_3.c.a, arg_3.b), _wgslsmith_dot_vec3_u32(vec3<u32>(45615u, u_input.b.x, 4294967295u), vec3<u32>(arg_3.d.a, arg_3.d.a, u_input.b.x)), 0u, 1u), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u), vec4<u32>(arg_3.d.a, 53608u, arg_3.c.a, 0u)), !select(vec4<bool>(false, true, arg_3.b, arg_3.b), vec4<bool>(false, arg_3.b, false, true), vec4<bool>(arg_3.b, arg_3.b, arg_3.b, false))) % vec4<u32>(32u));
    var var_2 = arg_3.d;
    let var_3 = select(!select(select(vec3<bool>(true, arg_3.b, arg_3.b), vec3<bool>(false, arg_3.b, false), vec3<bool>(arg_3.b, arg_3.b, arg_3.b)), !(!vec3<bool>(arg_3.b, arg_3.b, arg_3.b)), any(vec3<bool>(false, arg_3.b, arg_3.b))), select(select(vec3<bool>(any(vec2<bool>(false, arg_3.b)), arg_3.b, true), !(!vec3<bool>(true, false, arg_3.b)), select(select(vec3<bool>(true, arg_3.b, false), vec3<bool>(false, true, false), true), select(vec3<bool>(arg_3.b, arg_3.b, false), vec3<bool>(true, false, arg_3.b), arg_3.b), true)), !(!(!vec3<bool>(arg_3.b, arg_3.b, true))), arg_3.b), vec3<bool>(arg_3.b, arg_3.b, func_1(select(select(vec3<bool>(arg_3.b, arg_3.b, true), vec3<bool>(arg_3.b, arg_3.b, true), true), !vec3<bool>(arg_3.b, arg_3.b, false), true), arg_3.d, reverseBits(-16011i), -vec2<i32>(-1i, var_0.x))));
    var var_4 = -(~reverseBits(reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, arg_1.x, -20147i, arg_3.a), vec4<i32>(2147483647i, arg_1.x, var_0.x, arg_1.x)))));
    return all(var_3.yz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_i32(-_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, 7868i, u_input.a), vec3<i32>(u_input.a, u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 717i), vec4<i32>(u_input.a, 19078i, u_input.a, 23914i)))), countOneBits(max(abs(_wgslsmith_sub_i32(-43893i, 8209i)), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(26169i, u_input.a, -2147483647i, u_input.a), vec4<i32>(0i, -1i, u_input.a, u_input.a)), -36031i))));
    var_0 = -49769i;
    var var_1 = vec4<bool>(true, false, !(select(true, true, u_input.a < -2147483647i) & true), true);
    var_1 = vec4<bool>(u_input.a == abs(~(~(-1i))), false, !(!all(vec2<bool>(var_1.x, true))), var_1.x);
    let var_2 = vec4<bool>(false, func_1(!vec3<bool>(var_1.x == true, false, true), Struct_1(u_input.b.x), u_input.a, max(vec2<i32>(~(-9237i), u_input.a), _wgslsmith_add_vec2_i32(vec2<i32>(18680i, u_input.a), vec2<i32>(0i, u_input.a)) & _wgslsmith_sub_vec2_i32(vec2<i32>(-30228i, u_input.a), vec2<i32>(0i, 0i)))), func_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1000f, 729f)), _wgslsmith_f_op_f32(889f - 467f)), min(vec3<i32>(0i, -2147483647i, u_input.a), vec3<i32>(u_input.a, u_input.a, -2147483647i) ^ vec3<i32>(-1i, -2147483647i, u_input.a)), vec2<f32>(_wgslsmith_f_op_f32(-762f - 174f), -742f), func_4(func_2(), func_2(), Struct_2(2147483647i, true, Struct_1(19592u), Struct_1(u_input.b.x)), -3294f)) | true, !var_1.x);
    var_1 = select(!vec4<bool>(var_2.x, true, all(var_2.www), func_4(Struct_1(0u), Struct_1(u_input.b.x), func_4(Struct_1(u_input.b.x), Struct_1(u_input.b.x), Struct_2(-2147483647i, true, Struct_1(0u), Struct_1(12914u)), -1000f), _wgslsmith_f_op_f32(f32(-1f) * -832f)).b), var_2, select(var_2, vec4<bool>(8338u < u_input.b.x, any(select(vec3<bool>(var_2.x, var_2.x, var_2.x), var_2.yxw, var_1.zwz)), func_1(!var_1.wxy, func_4(Struct_1(55333u), Struct_1(1u), Struct_2(u_input.a, var_2.x, Struct_1(0u), Struct_1(u_input.b.x)), 808f).d, u_input.a << (u_input.b.x % 32u), -vec2<i32>(u_input.a, u_input.a)), !(!var_1.x)), true));
    var var_3 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(945f)), _wgslsmith_mult_vec3_i32(vec3<i32>(reverseBits(u_input.a), u_input.a, u_input.a), (~vec3<i32>(2147483647i, u_input.a, u_input.a) ^ countOneBits(vec3<i32>(u_input.a, 47967i, u_input.a))) >> (_wgslsmith_clamp_vec3_u32(u_input.b >> (u_input.b % vec3<u32>(32u)), ~vec3<u32>(0u, 4578u, u_input.b.x), u_input.b) % vec3<u32>(32u))), abs(~(1i << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 68810u, 28005u, 702u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)) % 32u))), vec4<i32>(-(-77640i >> (1u % 32u)), 21433i, u_input.a, ~(_wgslsmith_mult_i32(1i, u_input.a) >> (1u % 32u))), ~firstTrailingBit(vec3<u32>(42846u, 59903u, 1u)) | vec3<u32>(u_input.b.x, _wgslsmith_mod_u32(1u, 6543u), u_input.b.x));
}

