struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: f32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<u32>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec4<u32>(4294967295u, 33164u, 0u, 1u), vec3<i32>(39798i, -58612i, -1i)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u), vec3<i32>(13683i, i32(-2147483648), -34668i)));

var<private> global1: vec2<u32> = vec2<u32>(0u, 4294967295u);

var<private> global2: vec3<u32> = vec3<u32>(1u, 4294967295u, 0u);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: bool) -> vec2<bool> {
    var var_0 = true;
    global1 = _wgslsmith_clamp_vec2_u32(vec2<u32>(global1.x, ~global2.x), vec2<u32>(_wgslsmith_mod_u32(global2.x, global1.x) ^ global2.x, (17068u & u_input.c) | global1.x), ~global2.yy) ^ countOneBits(global2.xx);
    global2 = ~(_wgslsmith_clamp_vec3_u32(~vec3<u32>(93098u, global2.x, global1.x), abs(~vec3<u32>(global1.x, 36489u, 1u)), ~(~vec3<u32>(13685u, u_input.c, global2.x))) | ~vec3<u32>(_wgslsmith_mod_u32(u_input.c, 1u), global1.x, abs(global1.x)));
    let var_1 = !select(vec4<bool>(arg_0, true, !arg_0, all(vec4<bool>(false, arg_0, true, false))), !vec4<bool>(u_input.a.x <= u_input.b, arg_0, true | arg_0, arg_0), 1u == max(u_input.c, ~19032u));
    let var_2 = !select(var_1.wz, !select(vec2<bool>(var_1.x, false), !vec2<bool>(var_1.x, var_1.x), any(vec2<bool>(true, true))), var_1.wy);
    return vec2<bool>(all(vec2<bool>(all(select(var_1, var_1, var_1.x)), true)), !(_wgslsmith_f_op_f32(select(1168f, -1822f, !var_1.x)) <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(718f))))));
}

fn func_2(arg_0: vec2<f32>) -> bool {
    global0 = array<Struct_1, 2>();
    let var_0 = select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(true, true, true))), vec2<bool>(true, true)), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), func_3(true), ~1381u >= u_input.c), select(vec2<bool>(any(vec2<bool>(true, true)), true), vec2<bool>(false, true), ~86100u > ~global1.x)), vec2<bool>(false, select(all(vec4<bool>(false, true, true, true)), any(vec4<bool>(true, true, true, true)), true)), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))));
    var var_1 = !(!vec4<bool>(!var_0.x, true, true, !func_3(false).x));
    let var_2 = Struct_5(Struct_3(global0[_wgslsmith_index_u32(27317u, 2u)], select(func_3(func_3(var_0.x).x), vec2<bool>(func_3(var_0.x).x, var_1.x), var_1.wy)), _wgslsmith_sub_vec3_u32(select(abs(vec3<u32>(global2.x, global2.x, global2.x)), ~vec3<u32>(40718u, 53271u, global2.x), select(vec3<bool>(false, false, true), var_1.xxz, var_1.yxz)), vec3<u32>(~1u, ~12232u, 1u)) | select(firstTrailingBit(vec3<u32>(global2.x, global2.x, global1.x)), max(abs(vec3<u32>(global1.x, u_input.c, 5203u)), vec3<u32>(0u, global1.x, global2.x)), any(var_1.www)), ~_wgslsmith_add_i32(u_input.a.x, ~u_input.b));
    var var_3 = var_2.a;
    return any(!vec4<bool>(!var_1.x && !var_2.a.b.x, any(!vec4<bool>(var_1.x, false, var_0.x, true)), true, all(var_2.a.b) & true));
}

fn func_1() -> vec3<u32> {
    let var_0 = 1130u;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(453f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-702f + -861f), func_2(vec2<f32>(-1876f, -609f)))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-1180f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-810f - -1000f) * _wgslsmith_f_op_f32(630f + 149f)), 1i >= max(-13676i, u_input.b))))));
    global2 = vec3<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(abs(_wgslsmith_add_u32(global1.x, 1834u)), 1u ^ _wgslsmith_mod_u32(var_0, var_0)), u_input.c), 4294967295u, 1u);
    var var_2 = Struct_5(Struct_3(Struct_1(max(vec4<u32>(global1.x, global2.x, 9603u, global2.x), ~vec4<u32>(28541u, u_input.c, 0u, global1.x)), _wgslsmith_mult_vec3_i32(-u_input.a.xwz, u_input.a.zzy)), !(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)))), ~vec3<u32>(~81153u & ~global2.x, 0u, _wgslsmith_add_u32(global2.x, var_0) | reverseBits(45499u)), ~u_input.b);
    var var_3 = var_2.a.b.x;
    return ~vec3<u32>(~var_0, var_2.b.x, global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = abs(_wgslsmith_div_vec3_u32(vec3<u32>(~0u, global2.x ^ global1.x, 13296u) >> ((vec3<u32>(52935u, 17055u, 4294967295u) >> (~vec3<u32>(global2.x, u_input.c, 12806u) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(u_input.c, abs(59665u) ^ u_input.c, global2.x >> (1u % 32u))));
    var var_0 = ~select(_wgslsmith_mod_vec3_u32((vec3<u32>(69679u, 15610u, global2.x) | vec3<u32>(31114u, global2.x, 13648u)) >> (select(vec3<u32>(1u, global1.x, 39143u), vec3<u32>(u_input.c, u_input.c, 0u), vec3<bool>(true, false, true)) % vec3<u32>(32u)), ~(~vec3<u32>(global2.x, 4294967295u, global1.x))), vec3<u32>(~(~33535u), reverseBits(global2.x ^ 1u), firstTrailingBit(reverseBits(global1.x))), true);
    let var_1 = Struct_5(Struct_3(Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(40625u, 4294967295u, var_0.x, global1.x), ~vec4<u32>(4294967295u, u_input.c, 25124u, 52875u)), -u_input.a.xxx), vec2<bool>(true, true)), func_1() >> ((~(vec3<u32>(0u, u_input.c, 4294967295u) & vec3<u32>(global2.x, 1u, global1.x)) & select(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, var_0.x, global2.x), vec3<u32>(26214u, var_0.x, 40720u)), vec3<u32>(16725u, 1u, 1u), vec3<bool>(true, true, true))) % vec3<u32>(32u)), max(u_input.b, u_input.a.x << (43360u % 32u)));
    global0 = array<Struct_1, 2>();
    var_0 = select(~_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(0u, 34371u, u_input.c)), var_1.a.a.a.zxx, ~vec3<u32>(1389u, 53595u, 3711u)), _wgslsmith_sub_vec3_u32(firstTrailingBit(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.c, 26895u, 6983u), ~var_1.a.a.a.zzw)), vec3<u32>(select(0u, _wgslsmith_mult_u32(14221u, var_0.x), var_1.a.b.x), _wgslsmith_dot_vec2_u32(var_0.yy, var_0.xz << (var_1.b.zy % vec2<u32>(32u))), ~firstLeadingBit(26696u))), vec3<bool>(!var_1.a.b.x, true, var_1.a.b.x));
    global1 = vec2<u32>(127733u ^ _wgslsmith_sub_u32(global1.x, global2.x), 76946u) >> ((~vec2<u32>(var_0.x, ~global1.x) >> (_wgslsmith_mult_vec2_u32((var_0.xz << (var_0.zy % vec2<u32>(32u))) | abs(var_0.xx), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, global2.x), select(vec2<u32>(1u, global2.x), vec2<u32>(u_input.c, var_1.a.a.a.x), vec2<bool>(true, true)))) % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(117f, -891f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -220f) + _wgslsmith_f_op_f32(321f * -481f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(641f, 324f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -265f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1208f, 801f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-225f, -1832f), vec2<f32>(-492f, -1709f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1564f, -806f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.a.a.b.yy, 2147483647i, _wgslsmith_mod_u32(_wgslsmith_sub_u32(~35422u, _wgslsmith_mod_u32(1u, var_0.x)) >> (0u % 32u), ~(~58237u)), 23214i, _wgslsmith_f_op_f32(-var_2.x));
}

