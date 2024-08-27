struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: vec2<bool>,
    e: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: vec3<f32>,
    d: vec4<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -421f;

var<private> global1: array<f32, 14>;

var<private> global2: Struct_1;

var<private> global3: Struct_3;

var<private> global4: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(35123i, 109424u, true, vec2<bool>(false, true), 17864u), Struct_1(-1i, 4614u, true, vec2<bool>(true, false), 4294967295u), Struct_1(0i, 0u, false, vec2<bool>(false, false), 4294967295u), Struct_1(0i, 4294967295u, true, vec2<bool>(false, false), 72720u), Struct_1(-1i, 68673u, true, vec2<bool>(true, false), 30353u), Struct_1(2147483647i, 13007u, true, vec2<bool>(false, false), 1u), Struct_1(64712i, 2721u, false, vec2<bool>(true, false), 61766u), Struct_1(6856i, 1u, true, vec2<bool>(true, true), 1u), Struct_1(-45i, 11462u, true, vec2<bool>(true, true), 1u), Struct_1(2147483647i, 60576u, true, vec2<bool>(true, false), 8158u), Struct_1(0i, 54389u, true, vec2<bool>(false, false), 21515u), Struct_1(-1i, 1u, true, vec2<bool>(false, true), 0u), Struct_1(-17900i, 47445u, false, vec2<bool>(true, false), 81981u), Struct_1(43708i, 1u, true, vec2<bool>(false, true), 3146u), Struct_1(-47022i, 1u, false, vec2<bool>(true, false), 0u), Struct_1(-1i, 30889u, true, vec2<bool>(false, true), 0u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> bool {
    var var_0 = -_wgslsmith_mod_i32(~global3.a.x, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, global3.a.x, global2.a), -vec3<i32>(-7849i, -1i, global2.a)), vec3<i32>(-65670i, u_input.a.x, -15192i)));
    var var_1 = all(vec3<bool>(!select(!global3.b.x, true, global3.b.x && true), false, !((global3.d.x > global2.b) || false)));
    let var_2 = _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(~1u, 14u)]));
    let var_3 = -global3.a.x;
    var var_4 = Struct_2(-u_input.a.x);
    return true;
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: vec3<f32>) -> Struct_3 {
    let var_0 = Struct_3(vec3<i32>(-1i) * -abs(-u_input.a), vec3<bool>(false, true, all(vec4<bool>(all(global3.b.xx), true, arg_1.b.x, !global2.d.x))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1228f, global1[_wgslsmith_index_u32(global3.d.x, 14u)]))), _wgslsmith_f_op_f32(-1247f * global3.c.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(525f))), global1[_wgslsmith_index_u32(61984u, 14u)]))), ~(_wgslsmith_mod_vec4_u32(~arg_1.d, min(vec4<u32>(4294967295u, 4294967295u, global3.d.x, 1u), vec4<u32>(global2.e, global3.d.x, 40407u, 70492u))) >> (global3.d % vec4<u32>(32u))), -428f);
    var var_1 = Struct_2(11343i);
    global4 = array<Struct_1, 16>();
    let var_2 = vec4<bool>(true, all(vec3<bool>(func_3(global1[_wgslsmith_index_u32(4479u, 14u)], Struct_2(var_1.a)) | true, !global2.d.x, !any(vec4<bool>(arg_1.b.x, true, true, var_0.b.x)))), all(select(select(!var_0.b, select(vec3<bool>(false, true, true), global3.b, vec3<bool>(true, false, arg_1.b.x)), select(arg_1.b, vec3<bool>(var_0.b.x, false, arg_1.b.x), vec3<bool>(false, true, false))), vec3<bool>(arg_1.b.x, true, true), var_0.b.x)), true);
    var var_3 = Struct_3(var_0.a | vec3<i32>(global2.a, 0i, -2714i), var_2.yyx, _wgslsmith_f_op_vec3_f32(global3.c + var_0.c), vec4<u32>(arg_1.d.x, 1844u, global3.d.x, var_0.d.x), -290f);
    return Struct_3(global3.a, vec3<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.e + arg_2.x), -124f) > _wgslsmith_div_f32(-1378f, arg_2.x), true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c))), (vec4<u32>(15900u & var_0.d.x, global3.d.x, global3.d.x, global2.b) ^ ~_wgslsmith_mult_vec4_u32(arg_1.d, vec4<u32>(arg_1.d.x, 44880u, global3.d.x, global2.e))) << (abs(arg_1.d) % vec4<u32>(32u)), 210f);
}

fn func_4(arg_0: Struct_3) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.c.x, _wgslsmith_f_op_f32(arg_0.e * 116f)) + _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(global2.b, 14u)])));
    var_0 = global3.e;
    var var_1 = firstTrailingBit(min(arg_0.a, u_input.a));
    var var_2 = !select(global3.b.yy, arg_0.b.xz, arg_0.b.xx);
    var var_3 = global4[_wgslsmith_index_u32(abs(10953u << (~(~global3.d.x) % 32u)), 16u)];
    return vec2<i32>(func_2(0i, func_2(global3.a.x, Struct_3(vec3<i32>(19659i, 40775i, 1i), arg_0.b, arg_0.c, vec4<u32>(1u, global3.d.x, 23344u, 55202u) & vec4<u32>(39437u, 4294967295u, global2.e, global2.b), _wgslsmith_div_f32(global3.c.x, global3.c.x)), vec3<f32>(_wgslsmith_f_op_f32(1436f + 1450f), _wgslsmith_f_op_f32(-808f + global1[_wgslsmith_index_u32(40u, 14u)]), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(35535u, 14u)], -464f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(arg_0.c, vec3<f32>(178f, 2169f, 636f), var_2.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(664f, -934f, 143f) * global3.c))))).a.x, var_1.x);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<bool>) -> vec4<i32> {
    let var_0 = select(max(_wgslsmith_add_vec2_i32(-u_input.a.zx, _wgslsmith_mult_vec2_i32(firstTrailingBit(global3.a.yz), _wgslsmith_mod_vec2_i32(vec2<i32>(global3.a.x, u_input.a.x), global3.a.yy))), -global3.a.zy), func_4(func_2(1i, Struct_3(vec3<i32>(2147483647i, global2.a, -12352i), vec3<bool>(arg_1.x, arg_1.x, true), _wgslsmith_f_op_vec3_f32(-global3.c), ~global3.d, _wgslsmith_f_op_f32(f32(-1f) * -434f)), arg_0.yxz)), arg_1.x);
    var var_1 = global3.d.x;
    var var_2 = Struct_3(global3.a, !select(!select(vec3<bool>(global2.d.x, arg_1.x, global2.c), global3.b, true), func_2(-var_0.x, Struct_3(vec3<i32>(-1i, 0i, -1i), vec3<bool>(arg_1.x, false, true), vec3<f32>(-372f, 189f, global3.e), vec4<u32>(global2.b, global3.d.x, 98713u, 4294967295u), -175f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.c.x, 824f, global1[_wgslsmith_index_u32(0u, 14u)]) + vec3<f32>(1104f, -1747f, -484f))).b, global3.b), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-431f - -270f))), arg_0.x, func_2(~global2.a, func_2(_wgslsmith_sub_i32(var_0.x, 2147483647i), Struct_3(vec3<i32>(25028i, 5651i, global3.a.x), vec3<bool>(true, true, true), global3.c, vec4<u32>(global2.b, global3.d.x, global3.d.x, 4294967295u), arg_0.x), vec3<f32>(3562f, 192f, arg_0.x)), _wgslsmith_f_op_vec3_f32(-arg_0.yxx)).e), vec4<u32>((firstTrailingBit(global3.d.x) & global2.b) << ((global3.d.x ^ global2.e) % 32u), ~abs(75904u << (global2.e % 32u)), ~_wgslsmith_dot_vec2_u32(abs(global3.d.wy), reverseBits(global3.d.ww)), 0u), arg_0.x);
    let var_3 = any(!select(vec4<bool>(arg_1.x, arg_1.x, false, false), select(!vec4<bool>(arg_1.x, true, true, false), vec4<bool>(global2.d.x, global3.b.x, global2.d.x, global3.b.x), false), any(global3.b) && global2.c));
    let var_4 = select(vec4<bool>(all(global2.d), true, global2.d.x, false), select(select(select(select(vec4<bool>(var_3, global3.b.x, global3.b.x, false), vec4<bool>(var_3, global2.c, false, false), true), select(vec4<bool>(true, global2.c, true, var_3), vec4<bool>(var_2.b.x, global3.b.x, true, false), vec4<bool>(false, arg_1.x, arg_1.x, true)), select(vec4<bool>(var_2.b.x, false, global3.b.x, true), vec4<bool>(false, true, false, global2.c), vec4<bool>(var_2.b.x, arg_1.x, var_3, false))), select(!vec4<bool>(arg_1.x, global2.d.x, global2.d.x, global3.b.x), vec4<bool>(var_2.b.x, global2.d.x, true, true), true), all(vec4<bool>(arg_1.x, var_2.b.x, true, false))), select(select(!vec4<bool>(global3.b.x, true, false, true), select(vec4<bool>(global2.d.x, global3.b.x, false, true), vec4<bool>(arg_1.x, true, false, true), true), true), select(vec4<bool>(true, var_3, var_3, global2.c), vec4<bool>(false, true, global2.d.x, false), !vec4<bool>(var_3, global2.d.x, global2.c, global3.b.x)), !(!vec4<bool>(var_2.b.x, false, false, global3.b.x))), !(!vec4<bool>(var_3, false, global2.c, var_3))), select(!vec4<bool>(global3.b.x, all(var_2.b), true, false), !vec4<bool>(u_input.a.x >= global2.a, all(var_2.b.xz), false, global2.d.x | true), func_3(var_2.c.x, Struct_2(global3.a.x)) || global3.b.x));
    return -_wgslsmith_div_vec4_i32(vec4<i32>(-4464i, -14146i, global3.a.x, 1i), (vec4<i32>(global2.a, global2.a, 18492i, u_input.a.x) ^ vec4<i32>(10193i, u_input.a.x, -1i, var_2.a.x)) | min(vec4<i32>(var_2.a.x, global2.a, var_2.a.x, var_2.a.x), vec4<i32>(1i, var_0.x, var_2.a.x, u_input.a.x))) >> (vec4<u32>(max(global2.b, abs(_wgslsmith_dot_vec2_u32(global3.d.zy, vec2<u32>(1u, 23969u)))), select(abs(~39466u), ~global3.d.x, false), var_2.d.x, global2.e << (~firstTrailingBit(global3.d.x) % 32u)) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(~(global2.a << (~_wgslsmith_add_u32(global3.d.x, global2.e) % 32u)));
    let var_1 = _wgslsmith_add_vec4_i32(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1123f, -913f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global3.d.x, 14u)] * global1[_wgslsmith_index_u32(global3.d.x, 14u)]), global3.c.x) * vec4<f32>(-412f, _wgslsmith_f_op_f32(-525f - global3.e), -660f, _wgslsmith_f_op_f32(abs(931f)))), select(vec2<bool>(true, global3.b.x), vec2<bool>(!global3.b.x, true), !(!vec2<bool>(global2.d.x, false)))), firstLeadingBit(~_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, var_0.a, var_0.a, u_input.a.x), vec4<i32>(u_input.a.x, global3.a.x, u_input.a.x, 26891i))));
    global0 = 309f;
    let var_2 = global3.b.x;
    var var_3 = _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(global2.a, var_1.x, global2.a, -1i), ~select(var_1, vec4<i32>(2858i, -1i, var_0.a, -1i), global3.b.x)), vec4<i32>(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(var_1.x, var_0.a, global2.a, -57415i)), var_1), ~(-u_input.a.x), var_1.x, _wgslsmith_mod_i32(40807i, _wgslsmith_clamp_i32(var_0.a, -8599i, -1i)))), firstLeadingBit(var_1));
    let x = u_input.a;
    s_output = StorageBuffer(global2.a, -1635f, -_wgslsmith_clamp_vec2_i32(-_wgslsmith_mod_vec2_i32(u_input.a.zz, u_input.a.zz), vec2<i32>(1i, var_0.a), _wgslsmith_sub_vec2_i32(global3.a.zz, vec2<i32>(u_input.a.x, 39574i)) & u_input.a.xz));
}

