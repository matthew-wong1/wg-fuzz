struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
    c: f32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_3,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec4<bool> = vec4<bool>(true, true, true, true);

var<private> global2: array<bool, 31> = array<bool, 31>(true, true, false, false, true, false, false, false, true, false, false, true, true, true, false, false, true, true, false, false, false, true, false, true, true, false, false, false, true, false, false);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<bool>, arg_1: u32, arg_2: f32, arg_3: Struct_4) -> vec3<f32> {
    let var_0 = any(select(global1.zxw, vec3<bool>(!arg_0.x, true, arg_0.x), global2[_wgslsmith_index_u32(reverseBits(92578u), 31u)]));
    global2 = array<bool, 31>();
    var var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(1004f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(637f, arg_2)), _wgslsmith_f_op_f32(select(-998f, 586f, global1.x))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1036f, 494f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.a.c.c.x, 144f) * arg_3.b)))), Struct_3(arg_3.a.c, -(~u_input.a.x) ^ 0i, arg_3.a.c), _wgslsmith_f_op_f32(ceil(-1399f)), arg_0.x);
    var var_2 = 38685u;
    let var_3 = ~_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(var_1.b.a.a.c, u_input.c.x, global0.x, 0u) >> (u_input.b % vec4<u32>(32u))), reverseBits(~vec4<u32>(13104u, var_1.b.a.b.b.x, arg_3.a.a.b.c, 22590u))), max(~vec4<u32>(19154u, arg_3.a.c.a.b.x, 34139u, 51242u), max(_wgslsmith_mult_vec4_u32(u_input.b, u_input.b), vec4<u32>(global0.x, arg_3.a.a.a.b.x, arg_3.a.c.b.c, 4294967295u) | vec4<u32>(0u, u_input.b.x, 52390u, 125646u))), ~(~(~vec4<u32>(global0.x, 13323u, 787u, global0.x))));
    return _wgslsmith_f_op_vec3_f32(-var_1.b.c.c);
}

fn func_2(arg_0: vec3<i32>) -> vec4<bool> {
    global0 = firstLeadingBit(~abs(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 1u, 11938u), u_input.b.ywz)));
    global2 = array<bool, 31>();
    let var_0 = arg_0.x > max(1i, _wgslsmith_mod_i32(u_input.a.x, ~firstTrailingBit(arg_0.x)));
    var var_1 = 1i;
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(vec3<bool>(false | var_0, false || global1.x, var_0), ~global0.x | ~global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1050f), Struct_4(Struct_3(Struct_2(Struct_1(u_input.a.yw, u_input.b.wyw, u_input.b.x, u_input.a.x), Struct_1(arg_0.zx, u_input.b.xxz, 0u, u_input.a.x), vec3<f32>(-1150f, -453f, -2654f), vec2<i32>(u_input.a.x, -17229i)), arg_0.x, Struct_2(Struct_1(arg_0.yx, vec3<u32>(u_input.b.x, 4294967295u, u_input.c.x), 101739u, 6217i), Struct_1(vec2<i32>(arg_0.x, arg_0.x), vec3<u32>(u_input.c.x, 1u, 1533u), u_input.c.x, -54082i), vec3<f32>(-454f, 1000f, 471f), vec2<i32>(u_input.a.x, u_input.a.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2462f, -218f) + vec2<f32>(1000f, -1000f)), -1180f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1288f, 565f, -1000f), vec3<f32>(-1024f, 851f, 1032f)) * _wgslsmith_div_vec3_f32(vec3<f32>(-324f, 798f, 715f), vec3<f32>(-894f, 609f, 1603f)))))));
    return vec4<bool>(!(!all(select(global1.wx, vec2<bool>(false, global1.x), vec2<bool>(true, false)))), !(!(true || all(vec4<bool>(global1.x, false, false, var_0)))), !((true & global2[_wgslsmith_index_u32(u_input.b.x, 31u)]) | false) && select(true | any(vec4<bool>(true, global2[_wgslsmith_index_u32(global0.x, 31u)], true, true)), all(select(vec4<bool>(global1.x, global1.x, false, true), vec4<bool>(global1.x, true, true, true), global1.x)), !any(vec4<bool>(true, global2[_wgslsmith_index_u32(4939u, 31u)], global1.x, true))), false);
}

fn func_1() -> Struct_2 {
    global1 = vec4<bool>(true, true, !all(func_2(u_input.a.zzx)), countOneBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(global0.x, 13754u, 85898u, 1802u), abs(vec4<u32>(33138u, u_input.b.x, global0.x, 79601u)))) >= ~20515u);
    var var_0 = Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1186f, 835f) * vec2<f32>(-1345f, 1034f))))), Struct_3(Struct_2(Struct_1(u_input.a.xy ^ u_input.a.wx, vec3<u32>(1u, 129014u, 1u), firstTrailingBit(4294967295u), 1i), Struct_1(u_input.a.zz, countOneBits(vec3<u32>(28228u, u_input.b.x, 0u)), abs(1u), abs(u_input.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-219f, -759f, 416f))), vec2<i32>(u_input.a.x, u_input.a.x)), u_input.a.x, Struct_2(Struct_1(vec2<i32>(-553i, u_input.a.x), ~vec3<u32>(4294967295u, 73267u, 4294967295u), _wgslsmith_mod_u32(8095u, 508u), _wgslsmith_div_i32(-39638i, u_input.a.x)), Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(-36938i, 15093i), u_input.a.yy), firstLeadingBit(vec3<u32>(global0.x, u_input.b.x, u_input.b.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, global0.x, u_input.c.x), u_input.b.xwx), -2147483647i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1047f, -772f)), -u_input.a.yw << (u_input.c % vec2<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(608f, 610f) - _wgslsmith_f_op_f32(435f - -1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-992f))))), all(global1.wx));
    var var_1 = var_0.b.a.c.xy;
    var var_2 = _wgslsmith_mod_vec2_u32(u_input.c, abs((u_input.c >> (vec2<u32>(var_0.b.a.b.b.x, 56130u) % vec2<u32>(32u))) ^ vec2<u32>(1u, countOneBits(u_input.c.x))));
    global2 = array<bool, 31>();
    return Struct_2(var_0.b.a.a, Struct_1(var_0.b.c.d, ~var_0.b.c.b.b, var_2.x, var_0.b.a.a.d), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x * var_1.x), var_0.c), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(768f)))))), vec2<i32>(-var_0.b.c.b.a.x, 24998i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !(!(!vec4<bool>(global1.x & true, u_input.a.x != u_input.a.x, select(global2[_wgslsmith_index_u32(21460u, 31u)], global2[_wgslsmith_index_u32(79903u, 31u)], false), true)));
    global0 = abs(vec3<u32>(~(~(~u_input.b.x)), _wgslsmith_sub_u32(17953u, global0.x), u_input.b.x));
    global2 = array<bool, 31>();
    let var_0 = func_1();
    global1 = !vec4<bool>(!func_2(u_input.a.xyx).x, !global2[_wgslsmith_index_u32(78430u, 31u)], !func_2(vec3<i32>(u_input.a.x, var_0.a.a.x, u_input.a.x)).x, true);
    global1 = !(!func_2(u_input.a.zzz));
    global1 = !(!vec4<bool>(all(select(vec4<bool>(true, global1.x, global1.x, global2[_wgslsmith_index_u32(u_input.b.x, 31u)]), vec4<bool>(global2[_wgslsmith_index_u32(5507u, 31u)], global1.x, global1.x, false), global2[_wgslsmith_index_u32(global0.x, 31u)])), global1.x, all(select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 31u)], global2[_wgslsmith_index_u32(33060u, 31u)], false), vec3<bool>(global2[_wgslsmith_index_u32(19655u, 31u)], global1.x, global2[_wgslsmith_index_u32(var_0.b.c, 31u)]), vec3<bool>(false, global2[_wgslsmith_index_u32(0u, 31u)], global1.x))), global2[_wgslsmith_index_u32(~8768u, 31u)]));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, var_0.c.x, vec3<i32>(-8706i, _wgslsmith_mod_i32(var_0.b.a.x, _wgslsmith_mod_i32(var_0.b.a.x, -2147483647i)), _wgslsmith_add_i32(-3769i, _wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.a.x, 1i), 1i))), var_0.c.x, ~global0.x);
}

