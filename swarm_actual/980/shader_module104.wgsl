struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: array<Struct_2, 29>;

var<private> global2: array<vec4<u32>, 1> = array<vec4<u32>, 1>(vec4<u32>(37993u, 0u, 76952u, 6893u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> vec4<bool> {
    global0 = select(!select(!(!vec2<bool>(arg_0.c, global0.x)), !select(vec2<bool>(true, arg_1.c), vec2<bool>(arg_1.c, arg_0.c), arg_0.c), !(!vec2<bool>(global0.x, global0.x))), vec2<bool>(arg_0.c, true), vec2<bool>(!(!arg_0.c) && true, ~12650i != (_wgslsmith_mult_i32(1i, u_input.a) >> ((u_input.c.x & 1u) % 32u))));
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-515f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1058f * 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b * _wgslsmith_f_op_f32(round(arg_1.b)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(658f + arg_0.b))))));
    let var_1 = var_0.xx;
    var var_2 = Struct_3(Struct_1(u_input.c.yx), -2147483647i);
    var var_3 = arg_0.b;
    return !vec4<bool>(!(~arg_1.a <= arg_1.a), any(select(vec4<bool>(arg_1.c, true, true, arg_1.c), !vec4<bool>(arg_0.c, true, arg_0.c, true), select(vec4<bool>(global0.x, false, false, false), vec4<bool>(false, arg_0.c, true, arg_0.c), false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1208f * arg_0.b)) >= arg_0.b, arg_0.c);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> vec2<u32> {
    let var_0 = select(select(select(select(vec4<bool>(arg_1.c, arg_1.c, arg_1.c, arg_1.c), select(vec4<bool>(arg_1.c, false, false, true), vec4<bool>(true, true, arg_0.c, global0.x), vec4<bool>(true, arg_1.c, true, arg_1.c)), !vec4<bool>(true, arg_1.c, global0.x, true)), vec4<bool>(true, false, arg_0.c && global0.x, true), any(!vec4<bool>(global0.x, arg_1.c, true, global0.x))), !func_3(Struct_2(1u, arg_0.b, false), global1[_wgslsmith_index_u32(countOneBits(30014u), 29u)]), true), vec4<bool>(global0.x, false, !global0.x, false), any(func_3(Struct_2(reverseBits(60143u), _wgslsmith_f_op_f32(abs(arg_0.b)), true), arg_1).yxz));
    let var_1 = Struct_1(~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 23031u, arg_0.a, 4295u), countOneBits(global2[_wgslsmith_index_u32(1u, 1u)])), u_input.c.x));
    var var_2 = Struct_2(firstLeadingBit(abs(arg_0.a)), arg_1.b, false);
    let var_3 = var_0;
    var_2 = arg_0;
    return ~u_input.c.xz;
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1189f));
    var var_1 = false;
    global1 = array<Struct_2, 29>();
    var_1 = true;
    var var_2 = any(select(vec4<bool>(!global0.x, true, false, u_input.d >= u_input.d), vec4<bool>(true, false, global0.x, any(vec4<bool>(global0.x, true, global0.x, global0.x))), !(!vec4<bool>(global0.x, true, global0.x, true)))) & !(!global0.x);
    return Struct_1(func_2(Struct_2(min(~arg_0, u_input.c.x), -968f, global0.x), global1[_wgslsmith_index_u32(max(0u, 0u), 29u)]));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> Struct_3 {
    global1 = array<Struct_2, 29>();
    global0 = select(func_3(Struct_2(~(~1u), 1129f, !global0.x & true), Struct_2(1u, arg_1, true)).xz, !(!(!select(vec2<bool>(true, false), vec2<bool>(global0.x, true), vec2<bool>(global0.x, global0.x)))), any(select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, global0.x, false))) && !(func_1(u_input.c.x).a.x >= ~60821u));
    var var_0 = -(_wgslsmith_sub_i32(u_input.a, -(u_input.d << (u_input.b % 32u))) ^ 20483i);
    let var_1 = select(vec4<i32>(u_input.a, u_input.a, u_input.d, 0i), vec4<i32>(-1i, u_input.a, 1i, u_input.d) & reverseBits(vec4<i32>(~(-8792i), u_input.a, u_input.d, u_input.d)), true & (_wgslsmith_add_i32(firstTrailingBit(-2147483647i), -5422i) > _wgslsmith_mod_i32(1i | u_input.d, u_input.d)));
    var var_2 = Struct_3(func_1(u_input.b), _wgslsmith_sub_i32(u_input.a, _wgslsmith_dot_vec3_i32(~vec3<i32>(0i, var_1.x, -27621i), _wgslsmith_sub_vec3_i32(vec3<i32>(-6129i, u_input.a, var_1.x), var_1.ywx))));
    return Struct_3(func_1(func_1(firstTrailingBit(var_2.a.a.x) & 26213u).a.x), var_1.x);
}

fn func_5(arg_0: Struct_3) -> Struct_3 {
    let var_0 = -834f;
    var var_1 = abs(func_4(arg_0.a, _wgslsmith_f_op_f32(-var_0)).a.a);
    let var_2 = u_input.c.zz;
    let var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, -680f, var_0)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1255f, var_0, 1104f, var_0), vec4<f32>(-572f, var_0, var_0, 168f), global0.x)), select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(global0.x, global0.x, false, global0.x), global0.x))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0, var_0, 1317f, -695f)))))))), _wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0, var_0, var_0, 407f))), _wgslsmith_div_vec4_f32(vec4<f32>(var_0, 482f, var_0, var_0), vec4<f32>(var_0, 1924f, var_0, var_0))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -404f), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-var_0), _wgslsmith_div_f32(var_0, 1277f))))));
    return arg_0;
}

fn func_6(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: Struct_3) -> u32 {
    var var_0 = vec3<bool>(true, _wgslsmith_f_op_f32(153f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(228f + -288f))) <= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.x))))), true);
    var var_1 = global1[_wgslsmith_index_u32(1u, 29u)];
    var var_2 = u_input.c;
    let var_3 = true;
    let var_4 = Struct_1(u_input.c.yy);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec3<u32>(4294967295u, ~(~u_input.b), ~(~u_input.b ^ 73012u));
    var var_1 = vec2<u32>(var_0.x, func_6(func_5(func_4(func_1(u_input.b), 1f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-388f, 313f, -517f, _wgslsmith_f_op_f32(min(249f, 463f)))), Struct_3(func_5(Struct_3(Struct_1(var_0.yz), u_input.a)).a, _wgslsmith_clamp_i32(~u_input.a, u_input.a & -1i, 1i))));
    var var_2 = Struct_2(0u, 1345f, true);
    let var_3 = vec4<u32>(var_0.x, _wgslsmith_add_u32(countOneBits(~var_2.a | var_0.x), 4294967295u), 1u, 4294967295u);
    var_0 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-233f, _wgslsmith_f_op_f32(min(-1021f, 1124f)), !global0.x)))), vec2<i32>(-u_input.a, u_input.d), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-855f * var_2.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.b * var_2.b), -317f))));
}

