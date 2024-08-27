struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: f32,
    d: i32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: f32,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec4<bool> = vec4<bool>(false, true, true, false);

var<private> global2: array<u32, 30>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: u32, arg_2: bool, arg_3: u32) -> u32 {
    return 0u;
}

fn func_4(arg_0: vec4<u32>) -> vec2<i32> {
    var var_0 = firstLeadingBit(arg_0.x);
    var var_1 = -(~(-countOneBits(abs(vec2<i32>(u_input.c.x, 1i)))));
    return vec2<i32>(0i, var_1.x);
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(true, func_4(min(select(_wgslsmith_sub_vec4_u32(u_input.a, u_input.a), ~vec4<u32>(0u, u_input.a.x, global2[_wgslsmith_index_u32(72097u, 30u)], global2[_wgslsmith_index_u32(1u, 30u)]), vec4<bool>(global1.x, false, false, global1.x)), vec4<u32>(_wgslsmith_div_u32(0u, 13038u), firstTrailingBit(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(15509u, 30u)], 30u)]), global2[_wgslsmith_index_u32(func_3(vec3<f32>(-272f, 374f, 1878f), 53309u, true, 45850u), 30u)], abs(global0.x)))), -754f, global2[_wgslsmith_index_u32(max(global0.x, _wgslsmith_div_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 30u)], 30u)], 2822u)), 30u)], Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, -894i) | (vec2<i32>(-2147483647i, -20338i) | vec2<i32>(-4520i, u_input.c.x)), _wgslsmith_sub_vec2_i32(abs(vec2<i32>(-20952i, u_input.c.x)), ~u_input.c.wx), vec2<i32>(u_input.c.x >> (1u % 32u), 15704i)), u_input.a.zzy & ~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 46285u, 1u), vec3<u32>(global2[_wgslsmith_index_u32(u_input.b, 30u)], 9778u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 30u)], 30u)]), global0.yyz), 1f, 9867i, ~(~(u_input.a.zwy ^ u_input.a.zxy))));
    let var_1 = Struct_3(var_0);
    global1 = !select(!(!vec4<bool>(false, var_1.a.a, var_0.a, var_1.a.a)), vec4<bool>(var_1.a.a, false, 1i < u_input.c.x, var_0.a), true);
    global0 = ~u_input.a;
    global0 = vec4<u32>(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x), vec4<u32>(30633u, global2[_wgslsmith_index_u32(4294967295u, 30u)], global2[_wgslsmith_index_u32(var_1.a.d, 30u)], 25981u))), func_3(vec3<f32>(_wgslsmith_f_op_f32(1242f + -1982f), _wgslsmith_f_op_f32(step(var_1.a.c, var_1.a.e.c)), _wgslsmith_f_op_f32(f32(-1f) * -216f)), 49072u, !global1.x, global0.x), _wgslsmith_mod_u32(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e.c, var_1.a.e.c, 1316f)), 11826u, var_1.a.a, _wgslsmith_dot_vec2_u32(global0.zx, var_0.e.b.xx)), ~select(global2[_wgslsmith_index_u32(var_1.a.e.e.x, 30u)], global2[_wgslsmith_index_u32(83090u, 30u)], var_1.a.a)), u_input.b) ^ max(u_input.a, u_input.a);
    return Struct_2(!var_0.a, vec2<i32>(func_4(vec4<u32>(0u, global0.x, 40711u, var_0.d)).x, firstLeadingBit(var_0.e.d)) >> (~global0.zx % vec2<u32>(32u)), var_1.a.c, min(max(~var_0.d, ~52416u) << (((u_input.b >> (10804u % 32u)) << (~23740u % 32u)) % 32u), var_1.a.d), Struct_1(vec2<i32>(i32(-1i) * -9319i, _wgslsmith_sub_i32(var_1.a.e.d, firstLeadingBit(var_1.a.e.a.x))), u_input.a.wzy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.e.c))), var_0.b.x << (_wgslsmith_mult_u32(~global0.x, 26911u) % 32u), var_0.e.b));
}

fn func_5(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = -39882i;
    global1 = !(!vec4<bool>(any(arg_1), !(arg_1.x & arg_0.a.a), arg_0.a.a, false));
    global0 = vec4<u32>(global0.x, max(0u, 1u), ~var_0.a.d, _wgslsmith_div_u32(~(u_input.b ^ ~arg_0.a.e.b.x), 50241u));
    let var_2 = func_2().e;
    return arg_0.a.e;
}

fn func_1(arg_0: bool, arg_1: u32) -> Struct_2 {
    return Struct_2(all(select(global1.yx, !select(vec2<bool>(false, false), vec2<bool>(true, true), arg_0), global1.zy)), vec2<i32>(-1i) * -u_input.c.xz, -601f, _wgslsmith_mod_u32(4674u, 37069u), func_5(Struct_3(Struct_2(true, vec2<i32>(-1i, 1i), _wgslsmith_f_op_f32(round(-310f)), 0u | arg_1, Struct_1(u_input.c.zx, vec3<u32>(2658u, 43430u, 4294967295u), -145f, 2147483647i, vec3<u32>(57574u, 1u, global2[_wgslsmith_index_u32(88552u, 30u)])))), select(!select(vec2<bool>(true, global1.x), global1.xx, arg_0), global1.zy, true), func_2()));
}

fn func_6(arg_0: i32, arg_1: Struct_2, arg_2: f32) -> vec4<bool> {
    var var_0 = ~47632i;
    var_0 = u_input.c.x;
    let var_1 = true;
    let var_2 = arg_0;
    return !(!select(select(vec4<bool>(arg_1.a, var_1, var_1, var_1), vec4<bool>(var_1, var_1, false, var_1), false), select(vec4<bool>(var_1, arg_1.a, var_1, false), !vec4<bool>(arg_1.a, false, false, false), false), u_input.b <= 25641u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<bool>(any(func_6(u_input.c.x, func_1(true, u_input.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-125f * 1669f) - -501f))), all(!vec2<bool>(true, !global1.x)), global1.x, any(global1.xxy) == (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1689f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(543f, -458f)) - _wgslsmith_f_op_f32(trunc(-126f)))));
    global2 = array<u32, 30>();
    global0 = vec4<u32>(min(659u, global0.x), func_5(Struct_3(Struct_2(!global1.x, ~u_input.c.zz, _wgslsmith_f_op_f32(f32(-1f) * -789f), u_input.b ^ 1u, Struct_1(vec2<i32>(u_input.c.x, u_input.c.x), vec3<u32>(16986u, 50392u, 47144u), -661f, u_input.c.x, u_input.a.wwy))), select(global1.yx, global1.wy, all(select(global1.yz, vec2<bool>(false, false), global1.x))), Struct_2(all(select(vec2<bool>(global1.x, true), global1.ww, true)), _wgslsmith_mult_vec2_i32(select(u_input.c.yx, u_input.c.wz, false), u_input.c.xx), _wgslsmith_f_op_f32(max(992f, -1855f)), global2[_wgslsmith_index_u32(firstLeadingBit(19980u), 30u)], func_5(Struct_3(Struct_2(global1.x, u_input.c.zw, 1085f, global2[_wgslsmith_index_u32(0u, 30u)], Struct_1(vec2<i32>(-20202i, -2311i), u_input.a.wzy, 225f, u_input.c.x, vec3<u32>(global2[_wgslsmith_index_u32(0u, 30u)], 0u, global2[_wgslsmith_index_u32(global0.x, 30u)])))), !global1.wy, func_2()))).b.x, 80373u, _wgslsmith_dot_vec2_u32(firstLeadingBit(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 67015u), vec2<u32>(u_input.a.x, global0.x))), _wgslsmith_add_vec2_u32(global0.yz, vec2<u32>(global2[_wgslsmith_index_u32(1u, 30u)] | global2[_wgslsmith_index_u32(69063u, 30u)], max(global0.x, 1958u)))));
    var var_0 = -1287f;
    var var_1 = Struct_3(func_1(abs(u_input.c.x << (global2[_wgslsmith_index_u32(global0.x, 30u)] % 32u)) > _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(u_input.c.x, -2147483647i, u_input.c.x)), -u_input.c.zww), firstTrailingBit(53761u) << (0u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(-1000f, var_1.a.c, !global1.x)), -270f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.e.c, -280f) * vec2<f32>(var_1.a.e.c, var_1.a.c)) + vec2<f32>(-1332f, -1484f)))), var_1.a.c, 359f);
}

