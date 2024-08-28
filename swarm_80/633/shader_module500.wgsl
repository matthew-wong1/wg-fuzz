struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: i32,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

var<private> global1: vec2<i32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> i32 {
    let var_0 = !(!vec4<bool>(false, true, !(2699i <= global1.x), true));
    global1 = select(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-54826i, _wgslsmith_mult_i32(26840i, global1.x)), max(vec2<i32>(global1.x, 0i), firstTrailingBit(vec2<i32>(0i, global1.x)))), -abs(vec2<i32>(21101i, global1.x) & vec2<i32>(global1.x, -1i))), vec2<i32>(_wgslsmith_mod_i32(40606i >> (_wgslsmith_sub_u32(1u, u_input.a) % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, global1.x, global1.x, 1i), ~vec4<i32>(0i, global1.x, 34479i, global1.x))), 0i), !(!vec2<bool>(all(vec4<bool>(false, var_0.x, var_0.x, true)), !var_0.x)));
    let var_1 = (_wgslsmith_div_u32(1u, ~u_input.a) ^ ~min(67426u, 1u)) ^ (firstTrailingBit(_wgslsmith_sub_u32(_wgslsmith_sub_u32(0u, u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 24974u, u_input.a, u_input.a), vec4<u32>(4294967295u, u_input.a, 42964u, u_input.a)))) ^ (select(~u_input.a, u_input.a, var_0.x) << (61051u % 32u)));
    let var_2 = ~(-71265i | (min(global1.x, 2147483647i) | ~abs(global1.x)));
    let var_3 = Struct_5(global0[_wgslsmith_index_u32(~abs(8780u), 20u)]);
    return _wgslsmith_mod_i32(firstLeadingBit(global1.x), _wgslsmith_add_i32(0i, ~(-global1.x & ~(-7394i))));
}

fn func_2(arg_0: Struct_3) -> vec4<u32> {
    global1 = vec2<i32>(-1i) * -vec2<i32>(global1.x, -(~global1.x));
    var var_0 = firstLeadingBit(_wgslsmith_div_u32(~4294967295u, u_input.a));
    var_0 = 14402u;
    let var_1 = false;
    var var_2 = Struct_4(arg_0.a.c.b, !vec2<bool>(!(-1886i < global1.x), true), func_3(), Struct_3(Struct_2(arg_0.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.b)), arg_0.b, Struct_1(select(vec4<u32>(1u, 25905u, arg_0.a.a.x, arg_0.c.a.x), arg_0.c.a, var_1), !vec3<bool>(false, false, arg_0.a.d.b.x)), abs(vec3<u32>(u_input.a, 17271u, 4922u))), arg_0.b, Struct_1(vec4<u32>(~arg_0.a.a.x, 1u, ~1u, 1u), arg_0.a.c.b), _wgslsmith_div_vec2_i32(vec2<i32>(arg_0.d.x & global1.x, firstTrailingBit(global1.x)), arg_0.d)));
    return arg_0.b.a;
}

fn func_4(arg_0: vec4<u32>, arg_1: i32) -> i32 {
    var var_0 = ~(countOneBits(_wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(arg_0.x, 44874u, 43016u, 53925u)) >> (reverseBits(u_input.a) % 32u)) | 30596u);
    return global1.x;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_5, arg_2: vec4<bool>, arg_3: Struct_2) -> i32 {
    let var_0 = arg_1.a.a.xyx;
    var var_1 = vec2<bool>(any(!(!(!arg_2.zwy))), all(!vec4<bool>(arg_2.x, false, arg_2.x, false)));
    global1 = (vec2<i32>(-24556i, abs(global1.x) << (_wgslsmith_sub_u32(51189u, arg_3.e.x) % 32u)) & firstLeadingBit(vec2<i32>(global1.x, global1.x << (12352u % 32u)))) | (reverseBits(firstLeadingBit(vec2<i32>(-57713i, global1.x)) ^ vec2<i32>(global1.x, global1.x)) << (~countOneBits(~vec2<u32>(4294967295u, 1u)) % vec2<u32>(32u)));
    var var_2 = arg_0.x;
    let var_3 = arg_1.a.a.x;
    return func_4(select(min(vec4<u32>(12901u, _wgslsmith_mod_u32(var_0.x, 0u), var_3, arg_3.d.a.x), vec4<u32>(arg_3.e.x, arg_1.a.a.x, 20114u, 4294967295u) | vec4<u32>(0u, var_0.x, 0u, arg_1.a.a.x)), ~(vec4<u32>(4294967295u, 5317u, 1u, arg_1.a.a.x) | func_2(Struct_3(arg_3, Struct_1(arg_1.a.a, vec3<bool>(arg_2.x, false, true)), Struct_1(vec4<u32>(var_3, 4294967295u, 53538u, u_input.a), vec3<bool>(true, true, arg_0.x)), vec2<i32>(10127i, global1.x)))), vec4<bool>(all(vec3<bool>(false, true, true)) == false, true, false, false)), _wgslsmith_clamp_i32(global1.x, -7373i, _wgslsmith_dot_vec4_i32(-(vec4<i32>(global1.x, 1i, global1.x, 6315i) ^ vec4<i32>(global1.x, -2147483647i, global1.x, -2147483647i)), max(-vec4<i32>(1i, global1.x, global1.x, -1i), vec4<i32>(0i, global1.x, global1.x, global1.x) << (arg_1.a.a % vec4<u32>(32u))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~_wgslsmith_mod_vec2_i32(vec2<i32>(func_1(vec3<bool>(true, true, false), Struct_5(global0[_wgslsmith_index_u32(4294967295u, 20u)]), vec4<bool>(true, true, true, false), Struct_2(vec4<u32>(u_input.a, 1u, 18663u, u_input.a), -1406f, global0[_wgslsmith_index_u32(u_input.a, 20u)], Struct_1(vec4<u32>(18643u, u_input.a, u_input.a, 4294967295u), vec3<bool>(true, false, true)), vec3<u32>(u_input.a, 4294967295u, u_input.a))) >> (4294967295u % 32u), _wgslsmith_dot_vec2_i32(-vec2<i32>(20474i, global1.x), vec2<i32>(1343i, global1.x))), (select(vec2<i32>(global1.x, global1.x), vec2<i32>(global1.x, -2147483647i), false) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(11431i, -1i), vec2<i32>(global1.x, global1.x))) | vec2<i32>(global1.x, global1.x));
    var var_0 = Struct_4(!vec3<bool>(any(vec2<bool>(true, true)), false, any(vec3<bool>(true, true, true))), select(vec2<bool>(1096f > _wgslsmith_f_op_f32(step(800f, 1498f)), all(vec2<bool>(true, true)) | true), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, false)), all(vec4<bool>(true, true, true, true))), global1.x, Struct_3(Struct_2(vec4<u32>(_wgslsmith_clamp_u32(61026u, 6242u, u_input.a), u_input.a ^ u_input.a, u_input.a, ~55515u), 1f, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, u_input.a >> (u_input.a % 32u)), 20u)], global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(1u, u_input.a), 20u)], vec3<u32>(55877u, min(1u, u_input.a), _wgslsmith_clamp_u32(18342u, u_input.a, u_input.a))), Struct_1(~(vec4<u32>(u_input.a, 4294967295u, u_input.a, 7581u) | vec4<u32>(11951u, u_input.a, 40148u, 126339u)), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), true)), Struct_1(select(vec4<u32>(0u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 9491u, u_input.a, 1u) & vec4<u32>(30064u, u_input.a, u_input.a, u_input.a), vec4<bool>(true, true, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), false)), abs(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 0i), _wgslsmith_mod_vec2_i32(vec2<i32>(global1.x, global1.x), vec2<i32>(78894i, global1.x))))));
    global1 = var_0.d.d;
    let var_1 = !(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(var_0.b.x, var_0.a.x, true, true), var_0.b.x), select(vec4<bool>(var_0.a.x, false, var_0.b.x, var_0.d.a.d.b.x), vec4<bool>(false, true, var_0.d.b.b.x, var_0.a.x), select(vec4<bool>(true, var_0.a.x, false, true), vec4<bool>(var_0.a.x, true, true, true), true)), !select(vec4<bool>(true, var_0.a.x, false, true), vec4<bool>(var_0.d.b.b.x, var_0.d.b.b.x, var_0.b.x, false), false)));
    var var_2 = vec4<u32>(1u, 1u, u_input.a, u_input.a);
    var var_3 = -select(vec4<i32>(-(~15795i), _wgslsmith_mod_i32(func_4(var_0.d.b.a, global1.x), i32(-1i) * -26948i), _wgslsmith_add_i32(-2147483647i, global1.x), -6566i), max(~min(vec4<i32>(var_0.c, 23405i, -56730i, global1.x), vec4<i32>(var_0.c, -12134i, 2147483647i, var_0.c)), select(abs(vec4<i32>(var_0.d.d.x, 1i, 0i, -23235i)), vec4<i32>(global1.x, 39573i, -32853i, var_0.d.d.x), u_input.a == var_0.d.a.e.x)), select(!(!var_1), !var_1, any(vec4<bool>(true, true, var_0.a.x, true)) & false));
    var_0 = Struct_4(var_1.xxz, var_0.a.yy, _wgslsmith_add_i32(13013i, -35973i), Struct_3(var_0.d.a, Struct_1(~(~vec4<u32>(u_input.a, 0u, u_input.a, var_2.x)), vec3<bool>(false, var_1.x, var_2.x > 28398u)), Struct_1(var_0.d.c.a, var_0.a), select(var_0.d.d, ~var_3.xx, var_1.wx)));
    let var_4 = var_0.d;
    var var_5 = var_0.d.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(var_4.d.x, _wgslsmith_add_i32(var_4.d.x, -1i ^ var_3.x), 37005i, var_4.d.x));
}

