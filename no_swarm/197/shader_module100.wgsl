struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: bool,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: i32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_2,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6> = array<f32, 6>(-1174f, 395f, -1009f, -1734f, -847f, -504f);

var<private> global1: array<i32, 22>;

var<private> global2: array<Struct_4, 19> = array<Struct_4, 19>(Struct_4(Struct_2(Struct_1(vec3<u32>(5293u, 1u, 11028u), vec3<bool>(false, false, true), false, 1u, true), vec4<i32>(1i, -20057i, -51661i, i32(-2147483648)), 67234i), vec2<u32>(25061u, 0u), vec2<u32>(120782u, 17049u)), Struct_4(Struct_2(Struct_1(vec3<u32>(14597u, 4294967295u, 40467u), vec3<bool>(true, false, true), false, 4294967295u, true), vec4<i32>(1i, -38563i, -23208i, 36966i), 40409i), vec2<u32>(7107u, 59824u), vec2<u32>(5634u, 0u)), Struct_4(Struct_2(Struct_1(vec3<u32>(1u, 4294967295u, 110240u), vec3<bool>(true, true, false), true, 0u, false), vec4<i32>(64288i, -38495i, 18478i, 34805i), -33967i), vec2<u32>(4294967295u, 70371u), vec2<u32>(69277u, 4294967295u)), Struct_4(Struct_2(Struct_1(vec3<u32>(0u, 1u, 5652u), vec3<bool>(true, false, false), true, 8635u, false), vec4<i32>(-34551i, -1i, -3631i, -29879i), i32(-2147483648)), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 1u)), Struct_4(Struct_2(Struct_1(vec3<u32>(100579u, 11619u, 4294967295u), vec3<bool>(true, true, true), false, 13673u, false), vec4<i32>(0i, -25490i, -1i, i32(-2147483648)), -40308i), vec2<u32>(1u, 41789u), vec2<u32>(27275u, 27608u)), Struct_4(Struct_2(Struct_1(vec3<u32>(4294967295u, 18995u, 0u), vec3<bool>(false, true, false), true, 4294967295u, true), vec4<i32>(-36551i, -25753i, -21862i, 2147483647i), 2147483647i), vec2<u32>(1u, 1u), vec2<u32>(131907u, 7059u)), Struct_4(Struct_2(Struct_1(vec3<u32>(7648u, 10894u, 0u), vec3<bool>(true, false, false), false, 65010u, false), vec4<i32>(-3750i, -1i, -4809i, 2147483647i), 0i), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 30336u)), Struct_4(Struct_2(Struct_1(vec3<u32>(93002u, 56779u, 4294967295u), vec3<bool>(false, true, true), true, 16613u, true), vec4<i32>(1i, -17780i, -21316i, i32(-2147483648)), 8409i), vec2<u32>(50980u, 4294967295u), vec2<u32>(4294967295u, 1u)), Struct_4(Struct_2(Struct_1(vec3<u32>(35708u, 4294967295u, 1u), vec3<bool>(false, false, false), true, 10906u, true), vec4<i32>(0i, 2147483647i, -4355i, -1i), -10145i), vec2<u32>(0u, 5699u), vec2<u32>(7178u, 18173u)), Struct_4(Struct_2(Struct_1(vec3<u32>(0u, 4294967295u, 0u), vec3<bool>(false, true, true), false, 4294967295u, false), vec4<i32>(1i, 2147483647i, 0i, -3975i), -23444i), vec2<u32>(1u, 71254u), vec2<u32>(24833u, 14716u)), Struct_4(Struct_2(Struct_1(vec3<u32>(34458u, 4294967295u, 4294967295u), vec3<bool>(false, true, false), true, 20763u, true), vec4<i32>(1i, 2147483647i, 6320i, 2147483647i), -21461i), vec2<u32>(3596u, 46268u), vec2<u32>(28603u, 4294967295u)), Struct_4(Struct_2(Struct_1(vec3<u32>(0u, 0u, 27270u), vec3<bool>(false, true, false), false, 2220u, true), vec4<i32>(1i, 1i, 1473i, 30069i), 1i), vec2<u32>(1u, 18742u), vec2<u32>(1u, 16980u)), Struct_4(Struct_2(Struct_1(vec3<u32>(6396u, 0u, 1u), vec3<bool>(true, true, true), true, 1u, true), vec4<i32>(-21366i, -12243i, 3212i, i32(-2147483648)), -74415i), vec2<u32>(17431u, 0u), vec2<u32>(0u, 23680u)), Struct_4(Struct_2(Struct_1(vec3<u32>(8385u, 62104u, 22211u), vec3<bool>(true, true, true), false, 4294967295u, true), vec4<i32>(1i, -34084i, 2147483647i, -3661i), -31540i), vec2<u32>(1u, 24543u), vec2<u32>(16084u, 2495u)), Struct_4(Struct_2(Struct_1(vec3<u32>(45140u, 24455u, 104677u), vec3<bool>(false, true, true), false, 1u, false), vec4<i32>(-3180i, 36328i, -1i, 2147483647i), -1i), vec2<u32>(11192u, 1u), vec2<u32>(4294967295u, 21490u)), Struct_4(Struct_2(Struct_1(vec3<u32>(1u, 7110u, 1u), vec3<bool>(false, false, false), true, 0u, true), vec4<i32>(i32(-2147483648), -1i, -26469i, 2147483647i), -1i), vec2<u32>(24984u, 4294967295u), vec2<u32>(1u, 27689u)), Struct_4(Struct_2(Struct_1(vec3<u32>(4294967295u, 0u, 4294967295u), vec3<bool>(true, true, true), true, 0u, false), vec4<i32>(2147483647i, 33852i, 2147483647i, 52424i), -1i), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 0u)), Struct_4(Struct_2(Struct_1(vec3<u32>(88983u, 20713u, 38481u), vec3<bool>(true, false, true), false, 0u, true), vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), 2147483647i), 0i), vec2<u32>(2904u, 1u), vec2<u32>(4294967295u, 64233u)), Struct_4(Struct_2(Struct_1(vec3<u32>(46233u, 4142u, 4294967295u), vec3<bool>(false, false, false), false, 0u, false), vec4<i32>(-7916i, i32(-2147483648), -36583i, i32(-2147483648)), 980i), vec2<u32>(4294967295u, 21901u), vec2<u32>(0u, 27736u)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<bool>) -> vec4<i32> {
    global1 = array<i32, 22>();
    global0 = array<f32, 6>();
    global2 = array<Struct_4, 19>();
    let var_0 = firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(~4294967295u, (61102u >> (u_input.d.x % 32u)) << (_wgslsmith_add_u32(0u, u_input.d.x) % 32u), _wgslsmith_sub_u32(~24848u, u_input.d.x & u_input.d.x), 10640u), vec4<u32>(firstLeadingBit(27892u), u_input.d.x, 4294967295u, _wgslsmith_dot_vec2_u32(u_input.d.zx, ~vec2<u32>(u_input.d.x, u_input.d.x))), reverseBits(vec4<u32>(~u_input.d.x, u_input.d.x, u_input.d.x, 1u << (u_input.d.x % 32u)))));
    let var_1 = any(vec3<bool>(true, arg_0.x, any(!(!vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x)))));
    return ~vec4<i32>(-(reverseBits(2147483647i) << (firstTrailingBit(u_input.d.x) % 32u)), abs(1i << (var_0.x % 32u)), _wgslsmith_div_i32(-u_input.c.x, -select(u_input.b, u_input.c.x, var_1)), _wgslsmith_dot_vec2_i32(max(vec2<i32>(u_input.c.x, global1[_wgslsmith_index_u32(17037u, 22u)]), -u_input.c.xz), vec2<i32>(~7002i, select(global1[_wgslsmith_index_u32(4294967295u, 22u)], global1[_wgslsmith_index_u32(54686u, 22u)], var_1))));
}

fn func_2(arg_0: vec4<f32>) -> i32 {
    let var_0 = ~func_3(vec2<bool>(true, true)) | vec4<i32>(-(~(-1i)), ~1i, abs(0i), u_input.c.x);
    let var_1 = vec3<u32>(4294967295u, ~select(u_input.d.x, ~1u, true) << (u_input.d.x % 32u), 89646u);
    var var_2 = Struct_2(Struct_1(~(~firstTrailingBit(u_input.d)), !vec3<bool>(all(vec4<bool>(false, true, false, false)), true, true), all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), ~min(1u, u_input.d.x) >> (max(u_input.d.x, _wgslsmith_sub_u32(4294967295u, u_input.d.x)) % 32u), true || (~(-1001i) >= ~var_0.x)), vec4<i32>(~(~_wgslsmith_sub_i32(u_input.a.x, 51295i)), -47403i, u_input.c.x, firstLeadingBit(~_wgslsmith_mod_i32(2113i, -33757i))), 1i);
    var_2 = Struct_2(Struct_1(var_1, select(var_2.a.b, select(vec3<bool>(true, var_2.a.e, false), var_2.a.b, var_2.a.c), !select(var_2.a.b, vec3<bool>(var_2.a.e, var_2.a.b.x, var_2.a.c), true)), !(true || !var_2.a.b.x), 0u, !(true || any(vec2<bool>(var_2.a.c, false)))), vec4<i32>(-global1[_wgslsmith_index_u32(var_1.x, 22u)], -43581i, abs(1i), ~global1[_wgslsmith_index_u32(reverseBits(firstLeadingBit(26151u)), 22u)]), ~_wgslsmith_sub_i32(-6175i, -(~30577i)));
    global1 = array<i32, 22>();
    return _wgslsmith_dot_vec3_i32(select(-_wgslsmith_add_vec3_i32(-vec3<i32>(u_input.b, 2147483647i, var_2.b.x), vec3<i32>(u_input.c.x, 1i, var_0.x)), u_input.c.zxw, !var_2.a.b), u_input.c.yyw);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> vec3<bool> {
    global0 = array<f32, 6>();
    var var_0 = Struct_3(_wgslsmith_f_op_f32(705f - _wgslsmith_f_op_f32(ceil(-347f))) >= global0[_wgslsmith_index_u32(6079u, 6u)]);
    var var_1 = arg_1;
    let var_2 = var_0.a;
    var var_3 = arg_1.b;
    return select(select(!(!var_1.b), !select(select(vec3<bool>(var_1.e, true, var_0.a), var_1.b, false), select(arg_1.b, vec3<bool>(var_1.e, arg_1.c, arg_1.c), vec3<bool>(var_3.x, true, false)), arg_1.b), vec3<bool>((global0[_wgslsmith_index_u32(arg_1.a.x, 6u)] > 2305f) && true, var_3.x, var_3.x || true)), vec3<bool>(any(select(arg_1.b.zy, vec2<bool>(var_1.c, true), !var_3.zx)), true, select(!any(arg_1.b), !var_0.a != var_1.e, all(select(vec4<bool>(arg_1.b.x, false, true, var_0.a), vec4<bool>(var_0.a, var_1.c, true, arg_1.e), vec4<bool>(true, var_1.e, true, true))))), all(vec3<bool>(var_3.x || (global0[_wgslsmith_index_u32(1u, 6u)] != 655f), var_3.x, countOneBits(arg_0.x) <= abs(arg_0.x))));
}

fn func_1(arg_0: f32, arg_1: bool) -> u32 {
    var var_0 = func_4(vec3<i32>(_wgslsmith_div_i32(global1[_wgslsmith_index_u32(u_input.d.x, 22u)] & global1[_wgslsmith_index_u32(u_input.d.x, 22u)], func_2(vec4<f32>(arg_0, -215f, -662f, arg_0))) ^ countOneBits(countOneBits(0i)), global1[_wgslsmith_index_u32(firstTrailingBit(abs(u_input.d.x)), 22u)], -_wgslsmith_mod_i32(countOneBits(15135i), -u_input.c.x)), Struct_1(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, 34276u), u_input.d, ~vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x)), select(vec3<bool>(any(vec2<bool>(true, arg_1)), false, u_input.d.x < u_input.d.x), !(!vec3<bool>(arg_1, true, false)), any(!vec3<bool>(arg_1, arg_1, arg_1))), arg_1, u_input.d.x, !arg_1));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(23179u, _wgslsmith_dot_vec2_u32(u_input.d.yx, u_input.d.zy), 65946u), 66284u), vec2<u32>(countOneBits(23544u), u_input.d.x | func_1(global0[_wgslsmith_index_u32(28839u, 6u)], true))) ^ _wgslsmith_add_u32((u_input.d.x << (22035u % 32u)) >> (u_input.d.x % 32u), abs(max(func_1(-2554f, false), _wgslsmith_div_u32(5606u, 49699u)))), 19u)];
    global0 = array<f32, 6>();
    var var_1 = Struct_2(var_0.a.a, vec4<i32>(-_wgslsmith_mult_i32(~var_0.a.c, _wgslsmith_dot_vec2_i32(u_input.c.zw, u_input.a.yy)), 13283i, _wgslsmith_add_i32(~_wgslsmith_dot_vec2_i32(u_input.a.wx, u_input.c.zz), -1i), u_input.a.x), -21335i);
    var var_2 = Struct_2(var_1.a, min(-firstTrailingBit(var_1.b), var_0.a.b), _wgslsmith_div_i32(_wgslsmith_div_i32(2147483647i, _wgslsmith_dot_vec2_i32(abs(var_1.b.xw), ~u_input.a.wx)), _wgslsmith_dot_vec4_i32(-reverseBits(var_1.b), -(~var_0.a.b))));
    let var_3 = firstLeadingBit(firstTrailingBit(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 17671u, 4294967295u, var_0.c.x), vec4<u32>(10247u, 1u, 4294967295u, 4294967295u)))));
    var_2 = Struct_2(Struct_1(u_input.d, var_1.a.b, var_1.a.e, ~_wgslsmith_mod_u32(var_0.a.a.a.x, _wgslsmith_div_u32(var_1.a.d, var_2.a.a.x)), select(true, any(var_1.a.b) & false, var_0.a.a.b.x)), vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_mult_i32(var_1.b.x, u_input.a.x), select(global1[_wgslsmith_index_u32(u_input.d.x, 22u)], global1[_wgslsmith_index_u32(var_3, 22u)], true), 1i, var_2.b.x), select(reverseBits(var_2.c), ~_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 22u)], global1[_wgslsmith_index_u32(var_1.a.d, 22u)], -43997i), u_input.a.wyx), 1i), var_0.a.a.e | var_2.a.c));
    let var_4 = Struct_4(Struct_2(Struct_1(vec3<u32>(4294967295u, 54202u, ~var_1.a.d), var_2.a.b, global0[_wgslsmith_index_u32(~var_1.a.d, 6u)] <= _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(u_input.d.x, 6u)])), ~_wgslsmith_div_u32(var_1.a.d, 1u), true), u_input.c, 1i), var_2.a.a.zx, _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(var_0.c, var_2.a.a.xz << (vec2<u32>(var_0.b.x, 47992u) % vec2<u32>(32u))), ~abs(vec2<u32>(9542u, var_3)) & vec2<u32>(max(var_1.a.d, var_2.a.a.x), 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~u_input.d.x | select(u_input.d.x, 33554u, var_1.a.b.x))), firstTrailingBit(firstTrailingBit(func_3(var_2.a.b.xx).wz) << ((var_2.a.a.zy & (u_input.d.xy << (var_2.a.a.zz % vec2<u32>(32u)))) % vec2<u32>(32u))));
}

