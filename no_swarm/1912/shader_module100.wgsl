struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: vec3<bool>,
    e: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
    c: u32,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 31> = array<vec4<bool>, 31>(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false));

var<private> global1: bool;

var<private> global2: array<vec3<i32>, 30>;

var<private> global3: vec2<i32> = vec2<i32>(2147483647i, 2147483647i);

var<private> global4: Struct_5;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: i32, arg_1: Struct_5, arg_2: bool, arg_3: i32) -> u32 {
    var var_0 = arg_1.b.b.b;
    var var_1 = u_input.c.yz;
    var var_2 = global4.b;
    var var_3 = firstLeadingBit((global3.x ^ (-31593i | (global3.x | 1i))) | 52444i);
    let var_4 = global4.b.b;
    return 0u;
}

fn func_2(arg_0: Struct_5, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: Struct_2) -> Struct_2 {
    global2 = array<vec3<i32>, 30>();
    let var_0 = countOneBits(min(~(~vec2<u32>(1u, 219u)), vec2<u32>(func_3(-11207i, arg_0, arg_1.x, _wgslsmith_sub_i32(arg_3.b.x, -2147483647i)), 69271u)));
    let var_1 = global4.b.b.b;
    global1 = any(arg_0.b.b.b.d);
    let var_2 = global4.b.b.b.c.x;
    return Struct_2(vec4<u32>(_wgslsmith_clamp_u32(arg_2.b.b, ~_wgslsmith_sub_u32(arg_0.c, u_input.e), var_0.x), u_input.d.x, arg_2.b.b, ~arg_3.a.x), abs(vec4<i32>(4484i, abs(abs(global3.x)), select(select(20315i, global4.b.b.b.a, false), arg_0.b.b.b.a, arg_1.x), max(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.e, arg_3.b.x, arg_2.b.a, -587i), vec4<i32>(u_input.a.x, arg_2.b.e, 2147483647i, -33187i)), ~2195i))));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: i32) -> u32 {
    var var_0 = abs(u_input.d);
    var var_1 = ~func_2(Struct_5(select(select(global4.b.b.b.d.x, global4.d, global4.d), true, false), global4.b, 265u & ~arg_0, global4.b.b.b.d.x, any(!vec2<bool>(global4.a, false))), !global4.b.b.b.d, Struct_3(abs(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d.x, u_input.e), u_input.d)), Struct_1(~(-31886i), 13696u, _wgslsmith_f_op_vec2_f32(-global4.b.b.b.c), !vec3<bool>(global4.b.b.b.d.x, false, global4.a), _wgslsmith_dot_vec3_i32(vec3<i32>(1533i, -8502i, 1i), vec3<i32>(global3.x, arg_1.b.x, -4847i))), vec4<f32>(_wgslsmith_f_op_f32(trunc(global4.b.b.b.c.x)), _wgslsmith_f_op_f32(min(global4.b.b.c.x, -130f)), _wgslsmith_f_op_f32(256f + global4.b.b.b.c.x), 1748f)), Struct_2(~(~arg_1.a), _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-70584i, u_input.c.x, -6812i, global3.x), arg_1.b), -u_input.a))).b.x;
    var_0 = vec2<u32>(_wgslsmith_dot_vec3_u32(func_2(Struct_5(global4.b.a.x, Struct_4(vec4<bool>(global4.e, false, false, true), global4.b.b), 0u, global4.b.b.b.d.x, global4.b.b.b.d.x), select(vec3<bool>(global4.b.a.x, global4.b.b.b.d.x, global4.b.b.b.d.x), vec3<bool>(true, global4.a, true), vec3<bool>(true, true, true)), global4.b.b, arg_1).a.wxz << (arg_1.a.yxw % vec3<u32>(32u)), vec3<u32>(~(~0u), 17746u, ~(~4294967295u))), 1u);
    let var_2 = false;
    var var_3 = Struct_3(~arg_1.a.zw, global4.b.b.b, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-global4.b.b.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2685f, 648f, 1463f, global4.b.b.b.c.x)))))));
    return 73440u | (u_input.d.x ^ var_0.x);
}

fn func_5(arg_0: Struct_3, arg_1: vec2<i32>) -> vec4<u32> {
    global3 = firstLeadingBit(-vec2<i32>(85135i, -1i));
    var var_0 = global4.b.b;
    var var_1 = Struct_4(vec4<bool>(false, arg_0.b.d.x, global4.e, all(!select(vec2<bool>(global4.d, false), global4.b.b.b.d.xx, false))), arg_0);
    let var_2 = max(vec4<u32>(arg_0.b.b, ~arg_0.a.x, var_0.b.b, firstLeadingBit(47712u)), vec4<u32>(arg_0.a.x, select(reverseBits(~30463u), var_1.b.a.x, _wgslsmith_f_op_f32(trunc(global4.b.b.c.x)) >= _wgslsmith_f_op_f32(exp2(var_0.b.c.x))), max(0u, (global4.b.b.a.x | arg_0.b.b) | ~1u), ~4294967295u));
    return ~_wgslsmith_sub_vec4_u32(select(~(var_2 << (var_2 % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(firstTrailingBit(var_2), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_0.b.b, 0u, var_1.b.b.b), var_2)), !vec4<bool>(arg_0.b.d.x, var_0.b.d.x, true, false)), var_2);
}

fn func_1() -> vec3<f32> {
    var var_0 = global4.b.b;
    var var_1 = func_5(Struct_3(vec2<u32>(func_4(69339u, func_2(Struct_5(var_0.b.d.x, global4.b, global4.b.b.b.b, global4.b.a.x, false), vec3<bool>(var_0.b.d.x, var_0.b.d.x, global4.a), global4.b.b, Struct_2(vec4<u32>(global4.c, 12639u, var_0.b.b, global4.b.b.a.x), vec4<i32>(global3.x, -14153i, var_0.b.a, global3.x))), u_input.c, ~global4.b.b.b.a), global4.c), Struct_1(~u_input.c.x, u_input.d.x, _wgslsmith_f_op_vec2_f32(-global4.b.b.b.c), select(!vec3<bool>(var_0.b.d.x, false, true), vec3<bool>(true, true, true), var_0.b.d.x), _wgslsmith_div_i32(u_input.a.x, global4.b.b.b.e >> (global4.b.b.a.x % 32u))), var_0.c), -(~max(~vec2<i32>(u_input.a.x, var_0.b.a), -vec2<i32>(global4.b.b.b.e, u_input.c.x))));
    var_1 = vec4<u32>(0u, 8775u, 0u, ~(~(~84378u)) ^ _wgslsmith_dot_vec4_u32((vec4<u32>(0u, 0u, var_1.x, var_0.a.x) ^ vec4<u32>(global4.c, 4294967295u, var_0.b.b, 826u)) & firstLeadingBit(vec4<u32>(u_input.e, u_input.d.x, var_0.b.b, u_input.d.x)), ~func_5(global4.b.b, vec2<i32>(7603i, 17581i))));
    var var_2 = firstLeadingBit(-_wgslsmith_div_i32(global4.b.b.b.e, ~u_input.c.x) >> (firstLeadingBit(var_1.x) % 32u));
    let var_3 = min(~(~firstLeadingBit(1u) << (_wgslsmith_mult_u32(u_input.d.x, 0u) % 32u)), ~0u);
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(global4.b.b.c.wyy + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_0.c.xwy), _wgslsmith_f_op_vec3_f32(var_0.c.yxy * var_0.c.wzz))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = any(!(!global4.b.a.wx));
    let var_0 = Struct_1(_wgslsmith_div_i32(0i, ~1i), global4.b.b.a.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global4.b.b.c.xx + vec2<f32>(_wgslsmith_f_op_f32(-global4.b.b.c.x), _wgslsmith_f_op_f32(-global4.b.b.b.c.x))) * global4.b.b.c.yw), global4.b.b.b.d, -1i);
    global4 = Struct_5(!global4.b.b.b.d.x, global4.b, u_input.e, var_0.d.x, !global4.e);
    global2 = array<vec3<i32>, 30>();
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1()), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) + _wgslsmith_div_f32(global4.b.b.b.c.x, var_0.c.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(807f * var_0.c.x))), global4.b.b.b.c.x, _wgslsmith_f_op_f32(-var_0.c.x)));
    let var_2 = Struct_5((true && global4.a) && any(global4.b.b.b.d.xx), Struct_4(global0[_wgslsmith_index_u32(u_input.d.x, 31u)], global4.b.b), 1u, select(global4.b.a.x && global4.a, global4.c != 1u, global4.d), all(var_0.d));
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(~u_input.d.x ^ 47246u, 30u)], ~(vec4<u32>(var_0.b, var_2.c << (var_2.b.b.a.x % 32u), func_2(Struct_5(var_0.d.x, var_2.b, 0u, true, var_2.a), global4.b.b.b.d, var_2.b.b, Struct_2(vec4<u32>(var_2.b.b.a.x, 4294967295u, global4.c, 11140u), u_input.a)).a.x, ~4676u) ^ vec4<u32>(~1u, func_5(var_2.b.b, vec2<i32>(13370i, 56052i)).x, var_0.b, var_2.c | 0u)), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), global4.b.b.b.c.x, global4.b.b.b.c.x), u_input.d.x, vec4<f32>(-1079f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-869f, -221f) + _wgslsmith_f_op_f32(global4.b.b.b.c.x * _wgslsmith_f_op_f32(-global4.b.b.c.x))), _wgslsmith_f_op_f32(sign(var_2.b.b.b.c.x)), -1000f));
}

