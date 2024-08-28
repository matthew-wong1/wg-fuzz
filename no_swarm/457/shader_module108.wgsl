struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: bool,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5>;

var<private> global1: array<Struct_3, 19>;

var<private> global2: vec2<u32> = vec2<u32>(4294967295u, 0u);

var<private> global3: array<vec4<bool>, 7> = array<vec4<bool>, 7>(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true));

var<private> global4: vec3<bool> = vec3<bool>(false, false, false);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_4) -> u32 {
    let var_0 = arg_0;
    let var_1 = !select(select(select(!global3[_wgslsmith_index_u32(0u, 7u)], select(vec4<bool>(global4.x, true, global4.x, true), global3[_wgslsmith_index_u32(1u, 7u)], false), true), !select(global3[_wgslsmith_index_u32(27991u, 7u)], vec4<bool>(true, arg_0.a.d, arg_0.a.d, true), false), vec4<bool>(false, global4.x, arg_2.a.d, global4.x)), global3[_wgslsmith_index_u32(min(arg_0.a.e.c.x, max(0u, firstLeadingBit(arg_2.a.a.c.x))), 7u)], arg_2.a.d);
    var var_2 = arg_1.a.c.x;
    var var_3 = Struct_4(arg_2.a, -2147483647i);
    let var_4 = (arg_1.a.a >> (global2.x % 32u)) << (arg_1.a.c.x % 32u);
    return var_3.a.e.c.x << ((arg_2.a.a.c.x | _wgslsmith_div_u32(0u, countOneBits(global2.x))) % 32u);
}

fn func_2(arg_0: Struct_4) -> i32 {
    let var_0 = global3[_wgslsmith_index_u32(reverseBits(func_3(arg_0, Struct_3(Struct_1(-1i, ~arg_0.a.a.b, ~vec4<u32>(arg_0.a.e.c.x, 25855u, 4294967295u, 4294967295u), _wgslsmith_f_op_f32(max(172f, arg_0.a.e.d)))), arg_0)), 7u)];
    let var_1 = arg_0.a.b.zxx;
    let var_2 = firstLeadingBit(1i);
    global4 = vec3<bool>(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -693f)) >= var_1.x), arg_0.a.c, !(!(!(true | arg_0.a.c))));
    let var_3 = arg_0.a.e;
    return _wgslsmith_sub_i32(-17469i, ~_wgslsmith_clamp_i32(14428i, ~var_3.b.x & -2147483647i, abs(~var_2)));
}

fn func_1() -> vec3<bool> {
    global1 = array<Struct_3, 19>();
    var var_0 = Struct_1(_wgslsmith_mult_i32(max(-43798i, u_input.a | reverseBits(u_input.a)), -7443i), vec4<i32>(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, countOneBits(u_input.a), func_2(Struct_4(Struct_2(Struct_1(u_input.a, vec4<i32>(0i, -21262i, -58460i, u_input.a), vec4<u32>(4294967295u, global2.x, 36749u, global2.x), global0[_wgslsmith_index_u32(global2.x, 5u)]), vec4<f32>(global0[_wgslsmith_index_u32(1u, 5u)], 1053f, -2342f, 2043f), true, false, Struct_1(1i, vec4<i32>(-7951i, u_input.a, u_input.a, -3344i), vec4<u32>(global2.x, global2.x, global2.x, 48668u), global0[_wgslsmith_index_u32(global2.x, 5u)])), 2147483647i))), vec3<i32>(-1i, -2147483647i, u_input.a) >> (vec3<u32>(global2.x, 0u, 11782u) % vec3<u32>(32u))), u_input.a << (~(~global2.x) % 32u), select(~41564i, u_input.a, false)), vec4<u32>(12254u, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(global2.x, global2.x, global2.x)), _wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(58768u, 53159u, global2.x)), vec3<u32>(global2.x, global2.x, global2.x))), global2.x, min(global2.x, ~min(12146u, 7452u))), 1197f);
    let var_1 = Struct_4(Struct_2(Struct_1(select(_wgslsmith_mod_i32(u_input.a, -9405i), ~1i, global4.x || true), _wgslsmith_sub_vec4_i32(var_0.b, vec4<i32>(var_0.a, u_input.a, var_0.a, -1i)), var_0.c, -867f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-832f, var_0.d, global0[_wgslsmith_index_u32(~0u, 5u)], 403f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d, var_0.d, 1499f, global0[_wgslsmith_index_u32(global2.x, 5u)]) + vec4<f32>(var_0.d, -1271f, 1187f, var_0.d)))))), !(!global4.x), global4.x, Struct_1(1i, ~(var_0.b & var_0.b), ~firstLeadingBit(var_0.c), global0[_wgslsmith_index_u32(global2.x, 5u)])), u_input.a);
    var var_2 = _wgslsmith_f_op_f32(1000f - -1000f);
    global1 = array<Struct_3, 19>();
    return vec3<bool>(select(select(!(!global4.x), true, global4.x), false, any(vec2<bool>(!global4.x, true))), all(global3[_wgslsmith_index_u32(~var_1.a.e.c.x, 7u)]), !global4.x && any(global4.yz));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = !(!func_1());
    let var_0 = Struct_4(Struct_2(Struct_1(func_2(Struct_4(Struct_2(Struct_1(8002i, vec4<i32>(u_input.a, -1i, u_input.a, -1i), vec4<u32>(91447u, global2.x, 30799u, global2.x), global0[_wgslsmith_index_u32(1u, 5u)]), vec4<f32>(700f, 550f, global0[_wgslsmith_index_u32(60766u, 5u)], -1837f), global4.x, true, Struct_1(u_input.a, vec4<i32>(-2147483647i, 40230i, u_input.a, -2147483647i), vec4<u32>(78975u, global2.x, global2.x, global2.x), -892f)), 2147483647i)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-20586i, 2147483647i, 1i), vec3<i32>(-1i, u_input.a, -34858i)), _wgslsmith_add_i32(u_input.a, u_input.a), ~(-2147483647i), firstLeadingBit(-21580i)), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(1u, 21292u, global2.x, global2.x)), vec4<u32>(1u, 83905u, 1475u, 46101u)), _wgslsmith_f_op_f32(-1601f * -1034f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-1191f, -1000f)), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(52546u, 5u)], global0[_wgslsmith_index_u32(global2.x, 5u)]), _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(0u, 5u)])), global0[_wgslsmith_index_u32(global2.x, 5u)])), !(true && global4.x), global4.x, Struct_1(2147483647i, vec4<i32>(abs(u_input.a), firstTrailingBit(2147483647i), i32(-1i) * -16011i, u_input.a), vec4<u32>(global2.x, 0u, 1u, _wgslsmith_clamp_u32(17579u, 82265u, 33866u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global2.x, 5u)] - -115f) - 469f))), 1i);
    global2 = _wgslsmith_add_vec2_u32(var_0.a.a.c.yy | min(firstLeadingBit(var_0.a.a.c.yz), firstLeadingBit(var_0.a.a.c.wx)), _wgslsmith_sub_vec2_u32(abs(vec2<u32>(global2.x, 1u)) | (vec2<u32>(var_0.a.a.c.x, global2.x) ^ vec2<u32>(92667u, 1u)), vec2<u32>(_wgslsmith_mod_u32(var_0.a.a.c.x, global2.x), 4294967295u)) ^ select(~var_0.a.a.c.yx | vec2<u32>(4294967295u, 16968u), firstTrailingBit(~var_0.a.a.c.yz), !global4.zx));
    var var_1 = var_0.a.e.c.yxx;
    global1 = array<Struct_3, 19>();
    var var_2 = global4.x;
    global2 = var_0.a.a.c.wz ^ vec2<u32>(~_wgslsmith_mod_u32(var_0.a.a.c.x, var_1.x), var_0.a.e.c.x);
    global1 = array<Struct_3, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, _wgslsmith_f_op_vec3_f32(-var_0.a.b.yww), -(~(-(~61098i))));
}

