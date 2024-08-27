struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
    d: vec3<bool>,
    e: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(Struct_1(4294967295u), 714u);

var<private> global1: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(false, Struct_2(vec2<bool>(false, false), Struct_1(4294967295u), vec4<i32>(0i, 2147483647i, -741i, -1i)), Struct_1(20961u), vec3<bool>(false, true, true), -27575i), Struct_3(true, Struct_2(vec2<bool>(false, true), Struct_1(1u), vec4<i32>(-43305i, 2147483647i, -899i, -1796i)), Struct_1(34252u), vec3<bool>(true, false, true), -30392i), Struct_3(true, Struct_2(vec2<bool>(false, false), Struct_1(32101u), vec4<i32>(-1i, 41340i, -15491i, -1i)), Struct_1(68578u), vec3<bool>(false, false, false), -51529i), Struct_3(true, Struct_2(vec2<bool>(true, true), Struct_1(0u), vec4<i32>(0i, -31127i, 1i, -1i)), Struct_1(6187u), vec3<bool>(true, true, true), -8201i), Struct_3(true, Struct_2(vec2<bool>(false, true), Struct_1(1u), vec4<i32>(i32(-2147483648), 0i, 4002i, 7664i)), Struct_1(25570u), vec3<bool>(true, true, true), 0i), Struct_3(true, Struct_2(vec2<bool>(false, false), Struct_1(0u), vec4<i32>(54618i, 9308i, -25328i, 2147483647i)), Struct_1(4294967295u), vec3<bool>(true, true, true), 0i), Struct_3(true, Struct_2(vec2<bool>(true, true), Struct_1(16749u), vec4<i32>(1i, -3364i, i32(-2147483648), i32(-2147483648))), Struct_1(1u), vec3<bool>(false, false, true), 2147483647i), Struct_3(true, Struct_2(vec2<bool>(true, true), Struct_1(22889u), vec4<i32>(-16021i, i32(-2147483648), 2147483647i, -6676i)), Struct_1(5015u), vec3<bool>(true, true, false), -42503i), Struct_3(true, Struct_2(vec2<bool>(true, false), Struct_1(13423u), vec4<i32>(2147483647i, 2147483647i, 24054i, -6571i)), Struct_1(85200u), vec3<bool>(true, true, false), -27872i), Struct_3(false, Struct_2(vec2<bool>(false, false), Struct_1(22353u), vec4<i32>(1i, i32(-2147483648), 25731i, -11054i)), Struct_1(15147u), vec3<bool>(false, true, true), 39195i), Struct_3(false, Struct_2(vec2<bool>(true, false), Struct_1(1u), vec4<i32>(i32(-2147483648), -47564i, 2147483647i, -21637i)), Struct_1(63270u), vec3<bool>(true, false, false), -7851i), Struct_3(false, Struct_2(vec2<bool>(false, false), Struct_1(0u), vec4<i32>(33550i, 1i, 34662i, -10749i)), Struct_1(1u), vec3<bool>(true, true, false), 0i), Struct_3(false, Struct_2(vec2<bool>(false, true), Struct_1(0u), vec4<i32>(-65274i, 23524i, 18543i, i32(-2147483648))), Struct_1(34020u), vec3<bool>(false, false, true), -1i));

var<private> global2: Struct_4 = Struct_4(Struct_3(true, Struct_2(vec2<bool>(true, true), Struct_1(73545u), vec4<i32>(i32(-2147483648), 0i, -21198i, -1i)), Struct_1(1u), vec3<bool>(true, false, true), i32(-2147483648)), Struct_3(false, Struct_2(vec2<bool>(true, true), Struct_1(4294967295u), vec4<i32>(2147483647i, -13651i, 4695i, 34234i)), Struct_1(0u), vec3<bool>(false, false, true), 0i), 5294i);

var<private> global3: array<Struct_4, 26>;

var<private> global4: array<Struct_4, 9>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(~(~7415u), 13u)];
    return reverseBits(~22097u) | _wgslsmith_dot_vec3_u32(select(~(vec3<u32>(4294967295u, global0.a.a, 6174u) >> (u_input.d % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(~u_input.d, _wgslsmith_div_vec3_u32(vec3<u32>(35705u, var_0.c.a, 4294967295u), vec3<u32>(0u, 57776u, 0u))), true), vec3<u32>(~global0.a.a, var_0.c.a, ~0u));
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: bool) -> Struct_4 {
    let var_0 = global3[_wgslsmith_index_u32(max(arg_1.c.a, arg_1.c.a >> ((_wgslsmith_div_u32(func_3(false), _wgslsmith_dot_vec2_u32(u_input.d.xx, u_input.d.xz)) ^ ~1u) % 32u)), 26u)];
    global4 = array<Struct_4, 9>();
    let var_1 = ~((vec4<u32>(func_3(false), ~41029u, reverseBits(1u), u_input.d.x) & ~countOneBits(vec4<u32>(u_input.d.x, global2.a.c.a, arg_1.c.a, 1u))) & ~(firstLeadingBit(vec4<u32>(arg_1.c.a, 35901u, 47194u, 72792u)) >> (vec4<u32>(0u, 0u, global2.a.c.a, var_0.b.c.a) % vec4<u32>(32u))));
    let var_2 = Struct_5(var_0.a.b.b, ~global2.b.b.b.a);
    global4 = array<Struct_4, 9>();
    return global4[_wgslsmith_index_u32(102924u, 9u)];
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: vec2<bool>, arg_3: i32) -> Struct_3 {
    let var_0 = 1i;
    let var_1 = arg_0.b.b.b;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -249f, 217f, arg_1) - vec4<f32>(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-2563f + arg_1)), _wgslsmith_f_op_f32(-570f * _wgslsmith_f_op_f32(arg_1 - 825f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + arg_1)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(arg_1)), _wgslsmith_f_op_f32(ceil(2381f)))))));
    var var_3 = _wgslsmith_dot_vec3_i32(max(vec3<i32>(~arg_3, var_0, 9496i), arg_0.a.b.c.zxx), global2.b.b.c.wzw);
    global1 = array<Struct_3, 13>();
    return func_2(true, Struct_3((select(true, true, arg_2.x) && global2.a.d.x) & arg_2.x, Struct_2(!arg_2, func_2(all(arg_2), Struct_3(false, Struct_2(vec2<bool>(false, arg_2.x), arg_0.b.b.b, global2.b.b.c), Struct_1(global0.b), vec3<bool>(arg_2.x, false, true), arg_0.a.e), true).a.b.b, -u_input.c), global2.b.b.b, vec3<bool>(true, arg_2.x, true), ~(u_input.b.x ^ u_input.a)), _wgslsmith_dot_vec4_i32(vec4<i32>(firstLeadingBit(arg_3), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 0i), arg_0.b.b.c.zy), _wgslsmith_div_i32(32602i, -1i), abs(0i)), ~(~u_input.c)) > _wgslsmith_div_i32(2147483647i, func_2(any(vec2<bool>(false, false)), global1[_wgslsmith_index_u32(~global2.b.c.a, 13u)], arg_2.x).a.e)).b;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_2) -> Struct_1 {
    global4 = array<Struct_4, 9>();
    global4 = array<Struct_4, 9>();
    global2 = global4[_wgslsmith_index_u32(4294967295u, 9u)];
    var var_0 = global0.a;
    var var_1 = func_4(func_2(false, global2.b, any(!global2.a.d.zz) && !(global2.b.b.a.x && arg_2.a.x)), arg_1.x, vec2<bool>(arg_2.a.x, global2.a.b.a.x || true), ~(-(~37422i)));
    return arg_0.b;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: u32, arg_3: vec3<f32>) -> bool {
    let var_0 = -abs(func_2(global2.a.a, func_2(false, global2.a, global2.b.b.a.x).a, true).a.e);
    let var_1 = !vec4<bool>(!(arg_1.a == u_input.d.x) | select(!global2.a.a, global2.a.d.x, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_3.x, 987f)) * -129f) != arg_0, false, true);
    let var_2 = Struct_5(Struct_1(max(arg_2, ~(~24822u))), 4294967295u << (~u_input.d.x % 32u));
    let var_3 = 57639i;
    global2 = Struct_4(func_2(true, global1[_wgslsmith_index_u32(max(countOneBits(global0.b << (global2.a.b.b.a % 32u)), abs(_wgslsmith_mod_u32(1u, arg_1.a))), 13u)], true).b, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_2.a.a, 19482u), 13u)], 19975i);
    return (~countOneBits(_wgslsmith_mult_u32(0u, var_2.a.a)) | select(~global0.a.a, 0u, false)) == _wgslsmith_add_u32(firstLeadingBit(func_4(func_2(var_1.x, Struct_3(true, Struct_2(vec2<bool>(true, false), var_2.a, vec4<i32>(var_3, u_input.b.x, global2.c, 2222i)), var_2.a, vec3<bool>(var_1.x, var_1.x, true), global2.a.b.c.x), false), -106f, vec2<bool>(var_1.x, false), -8835i).c.a), abs(_wgslsmith_add_u32(~var_2.b, 41902u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(round(1f));
    global4 = array<Struct_4, 9>();
    var var_1 = global1[_wgslsmith_index_u32(4294967295u, 13u)];
    var var_2 = Struct_2(!vec2<bool>(func_5(_wgslsmith_f_op_f32(f32(-1f) * -198f), func_1(var_1.b, vec4<f32>(var_0, -1205f, 873f, -2091f), var_1.b), u_input.d.x << (19629u % 32u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, var_0))), var_1.a), Struct_1(45412u), _wgslsmith_mult_vec4_i32(var_1.b.c, var_1.b.c | vec4<i32>(-u_input.c.x, global2.b.b.c.x ^ -3379i, 15845i, _wgslsmith_mod_i32(var_1.e, -2147483647i))));
    let var_3 = var_1.b;
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(-var_0), var_0);
    var var_5 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-339f * _wgslsmith_f_op_f32(-var_0)) + -573f), -524f), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * vec2<f32>(1f, -162f)))), !vec2<bool>(var_3.a.x || true, false)));
    var_1 = Struct_3(~firstTrailingBit(_wgslsmith_div_i32(-9719i, 25345i)) > func_4(global3[_wgslsmith_index_u32(~global2.b.b.b.a, 26u)], var_4.x, !func_2(var_3.a.x, global2.b, var_1.b.a.x).a.d.yz, u_input.c.x).b.c.x, var_1.b, global2.a.c, !select(!(!vec3<bool>(false, var_2.a.x, true)), var_1.d, func_4(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.d.x, 109453u), 9u)], _wgslsmith_f_op_f32(floor(var_4.x)), select(vec2<bool>(true, var_3.a.x), var_2.a, global2.a.b.a), 0i).d), ~_wgslsmith_add_i32(-var_3.c.x, abs(-1i)) ^ abs(var_1.b.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0))), var_0)), ~((1i << (select(952u, var_1.c.a, var_2.a.x) % 32u)) | var_2.c.x), _wgslsmith_clamp_u32(72009u, ~select(global2.a.c.a, global2.a.c.a, var_1.b.a.x) & ~1u, countOneBits(_wgslsmith_div_u32(reverseBits(u_input.d.x), 17903u))), vec2<u32>(~_wgslsmith_add_u32(~u_input.d.x, 1u << (var_1.b.b.a % 32u)), max(~_wgslsmith_sub_u32(u_input.d.x, var_3.b.a), ~35045u)));
}

