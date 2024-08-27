struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: i32,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: Struct_2,
    d: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
    d: f32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26> = array<bool, 26>(false, false, true, true, true, false, true, true, true, true, false, false, true, true, false, true, false, true, true, true, true, false, false, false, false, true);

var<private> global1: vec4<u32> = vec4<u32>(0u, 0u, 1u, 3046u);

var<private> global2: vec4<bool>;

var<private> global3: bool;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: vec4<f32>) -> i32 {
    var var_0 = Struct_1(vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(~u_input.e, ~arg_1.c.a.a));
    global0 = array<bool, 26>();
    let var_1 = -var_0.a.x;
    global1 = _wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1357u, 0u, arg_1.b.x), vec4<u32>(arg_1.b.x, u_input.b, u_input.b, 16433u)), select(arg_1.b.x << (global1.x % 32u), _wgslsmith_mult_u32(arg_1.b.x, global1.x), true), ~(~arg_1.b.x), select(~global1.x, select(0u, global1.x, global0[_wgslsmith_index_u32(2543u, 26u)]), true))), ~(~abs(vec4<u32>(global1.x, global1.x, u_input.c.x, u_input.b) << (vec4<u32>(4294967295u, 735u, 1881u, u_input.b) % vec4<u32>(32u)))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1097f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-925f, arg_1.c.b.x)), arg_2.x))) - -560f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(arg_2.x, 136f, true)), _wgslsmith_f_op_f32(abs(535f)))), _wgslsmith_f_op_f32(-arg_1.a.x)))));
    return -2147483647i;
}

fn func_2() -> Struct_3 {
    global0 = array<bool, 26>();
    let var_0 = vec2<u32>(global1.x, _wgslsmith_mod_u32(~global1.x, global1.x));
    var var_1 = Struct_2(Struct_1(vec4<i32>(_wgslsmith_sub_i32(u_input.a, -2147483647i), -u_input.a, -1i, -u_input.a) ^ u_input.e), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(510f, -1000f, -822f, 1614f))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1230f, 210f, 805f, 983f) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-551f, -746f, -1101f, -1122f), vec4<f32>(702f, 497f, 182f, -373f))))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -969f), _wgslsmith_f_op_f32(f32(-1f) * -1610f), 398f)))), 3780i);
    var var_2 = min(-func_3(~firstTrailingBit(var_1.a.a.wy), Struct_4(_wgslsmith_f_op_vec2_f32(-var_1.b.wx), _wgslsmith_mod_vec3_u32(u_input.c, global1.wxx), Struct_2(var_1.a, vec4<f32>(var_1.b.x, 312f, var_1.b.x, 727f), var_1.c), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(var_1.b)))), _wgslsmith_div_i32(_wgslsmith_mod_i32(-3663i, -_wgslsmith_sub_i32(0i, 6642i)), _wgslsmith_sub_i32(-_wgslsmith_div_i32(var_1.a.a.x, 30226i), -_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.c, u_input.e.x), u_input.e.yw))));
    var var_3 = Struct_2(var_1.a, var_1.b, _wgslsmith_dot_vec4_i32(-_wgslsmith_add_vec4_i32(u_input.e, -var_1.a.a), -u_input.e >> (~firstLeadingBit(vec4<u32>(4294967295u, u_input.b, 34593u, 0u)) % vec4<u32>(32u))));
    return Struct_3((((var_0.x & 1u) & _wgslsmith_clamp_u32(global1.x, global1.x, 63921u)) == _wgslsmith_mult_u32(1u, abs(39700u))) | (global0[_wgslsmith_index_u32(~(4294967295u | var_0.x), 26u)] && false), abs(firstLeadingBit(abs(select(vec3<i32>(1018i, -5086i, u_input.a), var_1.a.a.yxy, true)))), var_0.x, 0i, Struct_2(Struct_1(abs(var_3.a.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, var_1.b.x, -1822f, 1000f) * vec4<f32>(var_1.b.x, -649f, -1000f, var_1.b.x)))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.b.x, -1000f, -1000f, var_3.b.x), var_1.b), vec4<f32>(-1450f, var_3.b.x, var_1.b.x, var_3.b.x)))), 2147483647i));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_3) -> Struct_2 {
    let var_0 = global2.wx;
    return func_2().e;
}

fn func_1() -> Struct_2 {
    return func_4(Struct_2(Struct_1(~_wgslsmith_sub_vec4_i32(u_input.e, vec4<i32>(2147483647i, -2147483647i, u_input.a, 1i))), vec4<f32>(-425f, _wgslsmith_f_op_f32(sign(-472f)), 1241f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1376f, -1259f))), -firstLeadingBit(-2147483647i)), func_2(), func_2());
}

fn func_5(arg_0: Struct_4, arg_1: f32, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = 1u;
    global2 = !vec4<bool>(global2.x, true, true, any(select(vec2<bool>(true, true), global2.yw, arg_2.x)));
    global2 = vec4<bool>(!func_2().a, arg_0.d, !any(!global2.xx), arg_2.x);
    var var_1 = Struct_3(!((u_input.b < _wgslsmith_sub_u32(var_0, u_input.b)) != true), _wgslsmith_sub_vec3_i32(vec3<i32>((i32(-1i) * -35839i) | ~arg_0.c.c, _wgslsmith_mult_i32(reverseBits(arg_3.a.x), -arg_3.a.x), ~arg_3.a.x), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(-vec3<i32>(36558i, arg_0.c.c, -1i), arg_0.c.a.a.wxw), func_1().a.a.wyy)), 32467u, _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.e.yx & vec2<i32>(arg_3.a.x, arg_0.c.a.a.x)), arg_0.c.a.a.yz), arg_3.a.x), func_2().e);
    global3 = true;
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_5(Struct_4(vec2<f32>(_wgslsmith_div_f32(1747f, 1114f), _wgslsmith_f_op_f32(935f + 455f)), u_input.c, func_1(), global0[_wgslsmith_index_u32(~26096u, 26u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1407f, _wgslsmith_f_op_f32(f32(-1f) * -305f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-127f - 678f))), vec2<bool>(true && any(vec4<bool>(true, false, global2.x, false)), true), func_1().a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1015f, -1398f, _wgslsmith_f_op_f32(f32(-1f) * -779f), _wgslsmith_f_op_f32(f32(-1f) * -755f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1141f, 1000f, 1213f, -1580f)))))), -25209i);
    global3 = global0[_wgslsmith_index_u32(~u_input.b, 26u)];
    var var_1 = global1.yzz;
    var var_2 = Struct_3(true, u_input.e.wxx, ~0u, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(u_input.e.zzx, _wgslsmith_add_vec3_i32(abs(vec3<i32>(-1i, -1i, -2147483647i)), vec3<i32>(2147483647i, 12963i, u_input.e.x))), -33708i), func_2().e);
    var_2 = Struct_3(func_2().d > _wgslsmith_clamp_i32(22823i, -countOneBits(-25229i), max(~var_2.e.a.a.x, u_input.a >> (30171u % 32u))), -firstLeadingBit(~(~u_input.e.ywy)), firstTrailingBit(var_1.x), var_2.e.a.a.x, func_4(Struct_2(Struct_1(-vec4<i32>(u_input.d, 60286i, var_2.e.c, -11555i)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-627f, var_2.e.b.x, -1850f, 2876f), vec4<f32>(-1000f, var_2.e.b.x, -600f, var_2.e.b.x))), select(func_4(Struct_2(Struct_1(var_0.a.a), vec4<f32>(-1385f, var_2.e.b.x, var_2.e.b.x, -693f), var_0.c), Struct_3(global0[_wgslsmith_index_u32(global1.x, 26u)], vec3<i32>(var_0.a.a.x, 2147483647i, var_2.d), 79711u, 2147483647i, var_2.e), Struct_3(false, var_0.a.a.zwz, var_2.c, 0i, Struct_2(var_0.a, vec4<f32>(-168f, var_2.e.b.x, var_2.e.b.x, 571f), var_0.a.a.x))).c, func_4(var_2.e, Struct_3(false, var_2.e.a.a.ywx, var_2.c, 16590i, var_2.e), Struct_3(global0[_wgslsmith_index_u32(0u, 26u)], vec3<i32>(var_0.c, -4440i, -24843i), 61226u, var_2.b.x, var_2.e)).c, true)), Struct_3(all(vec2<bool>(false, var_2.a)), ~(vec3<i32>(31521i, 1i, var_0.a.a.x) & vec3<i32>(var_2.b.x, -45663i, var_0.a.a.x)), ~(~u_input.b), ~_wgslsmith_add_i32(1i, 73376i), Struct_2(var_2.e.a, vec4<f32>(-107f, 177f, var_0.b.x, -731f), -19989i << (var_2.c % 32u))), func_2()));
    var var_3 = Struct_5(func_1(), var_0.a, abs(-var_0.c), -227f, max(~select(reverseBits(vec2<u32>(global1.x, var_1.x)), _wgslsmith_add_vec2_u32(var_1.xy, vec2<u32>(global1.x, 0u)), true), u_input.c.xz));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, _wgslsmith_mod_u32(~(~var_3.e.x), global1.x), 41975u), firstLeadingBit(firstLeadingBit(var_2.c)), 34666u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, var_2.e.b.x) - vec2<f32>(1984f, 584f)) * _wgslsmith_f_op_vec2_f32(var_0.b.xy * vec2<f32>(var_0.b.x, var_0.b.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.e.b.x, 1072f))))));
}

