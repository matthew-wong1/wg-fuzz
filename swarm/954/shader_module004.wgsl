struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec2<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: u32,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 19>;

var<private> global1: array<vec2<bool>, 15>;

var<private> global2: array<vec3<bool>, 5> = array<vec3<bool>, 5>(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true));

var<private> global3: vec3<i32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2) -> bool {
    global0 = array<vec4<f32>, 19>();
    var var_0 = Struct_1(0u);
    let var_1 = Struct_4(arg_0.b.wzw, _wgslsmith_dot_vec2_u32(~firstTrailingBit(~vec2<u32>(1u, var_0.a)), ~(reverseBits(vec2<u32>(31741u, 74142u)) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(14648u, var_0.a), vec2<u32>(var_0.a, 4583u)) % vec2<u32>(32u)))), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1570f)));
    var var_2 = -12241i;
    let var_3 = min(1065u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(min(4294967295u, var_0.a), var_0.a), ~(~vec2<u32>(26612u, 633u))));
    return arg_0.a;
}

fn func_2(arg_0: Struct_4, arg_1: vec4<u32>) -> Struct_2 {
    global2 = array<vec3<bool>, 5>();
    let var_0 = Struct_3((arg_1.x >= 11339u) && false, Struct_2(!(!func_3(arg_0.c)), -countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, -18341i) ^ vec4<i32>(0i, -42558i, 26104i, arg_0.c.b.x))), vec2<i32>(firstLeadingBit(~abs(u_input.a.x)), global3.x), arg_0.c);
    var var_1 = var_0;
    var_1 = var_0;
    var var_2 = countOneBits(arg_1.zy);
    return Struct_2(any(vec4<bool>(!var_0.a, var_1.b.b.x > 1i, !func_3(var_0.d), var_1.d.a)), select(arg_0.c.b, vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.c.b.x, 17649i, global3.x, u_input.a.x), min(var_1.d.b, var_0.d.b)), 0i, firstTrailingBit(0i), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(u_input.a.x, -15312i, -1i, var_0.d.b.x)), arg_0.c.b)), all(!select(vec3<bool>(false, var_0.a, false), vec3<bool>(arg_0.c.a, false, var_0.b.a), vec3<bool>(var_1.a, false, true)))));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_3, arg_3: Struct_4) -> bool {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * arg_3.d)))));
    global0 = array<vec4<f32>, 19>();
    var var_1 = func_2(arg_3, abs(_wgslsmith_clamp_vec4_u32(~max(vec4<u32>(0u, arg_3.b, 4294967295u, 0u), vec4<u32>(arg_3.b, 66947u, arg_3.b, 36445u)), vec4<u32>(arg_3.b, firstLeadingBit(arg_3.b), 21377u, arg_3.b), _wgslsmith_div_vec4_u32(vec4<u32>(arg_3.b, 4294967295u, 0u, arg_3.b) << (vec4<u32>(7313u, 3534u, arg_3.b, arg_3.b) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 5081u, arg_3.b, 17364u), vec4<u32>(arg_3.b, arg_3.b, 4294967295u, 11885u), vec4<u32>(arg_3.b, 1u, arg_3.b, arg_3.b)))))).b.x;
    var_1 = _wgslsmith_dot_vec2_i32(select(vec2<i32>(1i, arg_0.b.x), ~vec2<i32>(~arg_2.b.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, arg_0.b.x), global3.zy)), !global1[_wgslsmith_index_u32(~15364u, 15u)]), reverseBits(abs(select(arg_0.b.wz ^ vec2<i32>(2219i, -12807i), select(global3.yy, vec2<i32>(30026i, arg_2.b.b.x), true), global1[_wgslsmith_index_u32(arg_3.b << (arg_3.b % 32u), 15u)]))));
    let var_2 = _wgslsmith_div_u32(31850u, 4294967295u);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.d) - arg_3.d) == arg_3.d;
}

fn func_1() -> Struct_3 {
    var var_0 = ~(~vec4<u32>(~4294967295u, _wgslsmith_clamp_u32(16245u, 85714u, 1u), reverseBits(37621u), 1u) << (_wgslsmith_add_vec4_u32(~(~vec4<u32>(1u, 3839u, 12222u, 68090u)), select(firstLeadingBit(vec4<u32>(80401u, 3460u, 1u, 1u)), ~vec4<u32>(49159u, 10017u, 84624u, 8001u), any(vec2<bool>(true, true)))) % vec4<u32>(32u)));
    let var_1 = Struct_4(vec3<i32>(_wgslsmith_mult_i32(-1i, u_input.a.x), -11029i, 1i), _wgslsmith_clamp_u32(1u, ~_wgslsmith_sub_u32(var_0.x, var_0.x) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(16963u, 20413u, var_0.x, 43748u) << (vec4<u32>(27281u, var_0.x, var_0.x, 1u) % vec4<u32>(32u)), ~vec4<u32>(17318u, var_0.x, 4294967295u, var_0.x)), ~var_0.x), Struct_2(!func_4(func_2(Struct_4(u_input.a.zxy, 1u, Struct_2(false, vec4<i32>(693i, u_input.a.x, 3548i, global3.x)), -792f), vec4<u32>(18533u, var_0.x, 2883u, 0u)), all(vec4<bool>(false, false, true, true)), Struct_3(false, Struct_2(true, u_input.a), vec2<i32>(global3.x, 0i), Struct_2(true, u_input.a)), Struct_4(vec3<i32>(global3.x, global3.x, 47019i), var_0.x, Struct_2(true, u_input.a), -1299f)), countOneBits(u_input.a)), 1f);
    global3 = reverseBits(vec3<i32>(min(countOneBits(firstTrailingBit(-56967i)), countOneBits(~14464i)), -u_input.a.x, u_input.a.x >> (_wgslsmith_mod_u32(var_1.b, var_1.b) % 32u)));
    let var_2 = Struct_4(vec3<i32>(global3.x, -reverseBits(1i), _wgslsmith_div_i32(-2147483647i ^ var_1.c.b.x, -17145i)), 0u, var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -882f)));
    let var_3 = Struct_1(var_2.b);
    return Struct_3(func_4(var_2.c, var_2.c.a, Struct_3(true, func_2(var_2, select(vec4<u32>(1u, 21038u, 0u, 37503u), vec4<u32>(76023u, 22243u, var_2.b, 4637u), vec4<bool>(false, var_2.c.a, var_2.c.a, var_1.c.a))), max(vec2<i32>(var_2.a.x, 1184i), select(vec2<i32>(u_input.a.x, global3.x), var_2.c.b.yx, global1[_wgslsmith_index_u32(4634u, 15u)])), func_2(Struct_4(vec3<i32>(var_1.c.b.x, global3.x, var_1.a.x), var_0.x, Struct_2(var_2.c.a, var_2.c.b), -956f), ~vec4<u32>(17933u, 1u, var_3.a, var_3.a))), Struct_4(select(u_input.a.zxw, var_2.a, true), _wgslsmith_clamp_u32(var_1.b, _wgslsmith_sub_u32(var_1.b, 1u), 29279u), Struct_2(false, -vec4<i32>(2147483647i, global3.x, 24173i, global3.x)), _wgslsmith_f_op_f32(min(-883f, -1387f)))), func_2(Struct_4(u_input.a.wyx, 4294967295u, Struct_2(false, vec4<i32>(global3.x, 2045i, 0i, u_input.a.x)), var_2.d), vec4<u32>(~var_2.b, var_3.a, var_3.a, var_3.a) & (vec4<u32>(var_0.x, var_2.b, var_3.a, var_1.b) | reverseBits(vec4<u32>(var_3.a, 0u, var_3.a, 118993u)))), _wgslsmith_add_vec2_i32(vec2<i32>(0i, -8101i), var_2.c.b.zw), func_2(var_1, ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_3.a, var_3.a, 57980u, var_3.a), vec4<u32>(5192u, 44256u, 0u, var_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(global3.x);
    var var_1 = func_1();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f)));
    var_0 = ~(_wgslsmith_mod_i32(37328i, global3.x) | (var_1.d.b.x >> (firstTrailingBit(~0u) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-589f, -256f)))))), u_input.a.x, vec2<u32>(38338u, ~_wgslsmith_mod_u32(2149u, 33175u)), abs(global3.x), 2147483647i);
}

