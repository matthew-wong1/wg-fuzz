struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<bool>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 30>;

var<private> global1: Struct_3 = Struct_3(Struct_1(28957u, 35526u, vec4<bool>(true, false, false, true), vec2<bool>(false, false)), vec2<u32>(58269u, 1u), vec2<u32>(26347u, 23552u), vec3<bool>(true, true, false));

var<private> global2: f32;

var<private> global3: vec4<f32> = vec4<f32>(-1113f, -382f, -1000f, -1264f);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: vec2<u32>) -> u32 {
    var var_0 = Struct_3(global1.a, reverseBits(abs(vec2<u32>(u_input.c.x, arg_1.b.a) | vec2<u32>(u_input.d.x, 1u))), arg_3, vec3<bool>(true, false, true));
    global0 = array<vec4<f32>, 30>();
    global0 = array<vec4<f32>, 30>();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(sign(global3.x)), -964f, global3.x);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -702f) * var_1.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-438f - _wgslsmith_f_op_f32(207f + 1571f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(step(327f, 1554f))) + _wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(min(-1000f, global3.x)))))), var_1.x, 351f);
    return _wgslsmith_clamp_u32(~54262u, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(40838u, u_input.c.x, 26421u), ~u_input.d)), 0u);
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> u32 {
    global2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(912f, -2303f, !select(true, true, true))), arg_1, all(global1.a.c)));
    global0 = array<vec4<f32>, 30>();
    let var_0 = Struct_2(!(!select(vec2<bool>(true, false), arg_0.b.d, arg_0.b.c.x)), Struct_1(~(func_3(vec4<bool>(true, arg_0.a.x, arg_0.a.x, false), Struct_2(global1.d.xx, Struct_1(1u, 4294967295u, vec4<bool>(arg_0.b.d.x, arg_0.a.x, global1.a.d.x, true), arg_0.b.c.ww)), u_input.d, u_input.d.zz) << (~arg_0.b.b % 32u)), 1u, select(!select(vec4<bool>(true, true, global1.d.x, false), vec4<bool>(false, global1.a.c.x, false, false), true), select(select(vec4<bool>(true, arg_0.a.x, global1.a.d.x, arg_0.a.x), vec4<bool>(true, global1.d.x, true, global1.a.c.x), global1.d.x), !global1.a.c, true), !global1.d.x || (global1.a.d.x & global1.d.x)), vec2<bool>(true, !(arg_0.a.x & true))));
    var var_1 = ~(~max(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(38771u, 1u, 43030u, 92720u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.b.x, var_0.b.b, global1.a.a, 1u), vec4<u32>(43696u, var_0.b.b, var_0.b.a, 0u), vec4<u32>(27529u, 15485u, var_0.b.b, u_input.c.x))), vec4<u32>(global1.b.x, 74006u, ~1u, 21062u)));
    let var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1)) - _wgslsmith_f_op_f32(select(-2720f, arg_1, false))) + _wgslsmith_f_op_f32(select(global3.x, _wgslsmith_f_op_f32(sign(1000f)), arg_0.b.c.x)))), arg_1, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(arg_1)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x - -299f) - _wgslsmith_f_op_f32(max(global3.x, arg_1))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(818f - arg_1))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1)))));
    return ~6090u;
}

fn func_1() -> Struct_3 {
    var var_0 = any(global1.a.c);
    var var_1 = u_input.c.xx;
    var var_2 = global1.d;
    let var_3 = countOneBits(~max(0u, _wgslsmith_div_u32(~4294967295u, func_2(Struct_2(var_2.xz, global1.a), 1000f))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.x, 500f)) * 163f), false)));
    return Struct_3(Struct_1(0u, countOneBits(1u), select(global1.a.c, global1.a.c, false), select(select(var_2.xz, var_2.zy, vec2<bool>(global1.a.c.x, false)), var_2.xz, vec2<bool>(true, -1i > u_input.a))), firstTrailingBit(~_wgslsmith_div_vec2_u32(global1.c, vec2<u32>(25130u, 1u) | u_input.d.yx)), max(_wgslsmith_mod_vec2_u32(~global1.c, vec2<u32>(var_1.x << (23548u % 32u), 4294967295u)), global1.b), vec3<bool>(var_2.x && any(select(global1.a.c, vec4<bool>(false, false, true, false), global1.a.c)), true, !global1.a.c.x));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: u32) -> u32 {
    global0 = array<vec4<f32>, 30>();
    let var_0 = vec4<u32>(abs(_wgslsmith_sub_u32(select(1u, 1u, false), _wgslsmith_mult_u32(arg_3, 1u))), _wgslsmith_dot_vec2_u32(reverseBits(_wgslsmith_mod_vec2_u32(global1.b, u_input.c.zz)), u_input.d.zy), global1.b.x, _wgslsmith_div_u32(~(~97747u), u_input.c.x >> (0u % 32u))) << (_wgslsmith_add_vec4_u32(~(~vec4<u32>(global1.a.a, 57748u, 4294967295u, u_input.d.x)) << (_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(69692u, arg_1.c.x, 1u, 10778u), vec4<u32>(86416u, arg_3, arg_3, u_input.d.x)), ~vec4<u32>(u_input.b, arg_1.c.x, 1u, 6649u)) % vec4<u32>(32u)), ~abs(vec4<u32>(1u, 50635u, arg_3, arg_3)) | select(vec4<u32>(u_input.c.x, 11118u, 0u, u_input.d.x) ^ vec4<u32>(3359u, u_input.b, 11792u, u_input.d.x), ~vec4<u32>(4294967295u, arg_3, 0u, 4294967295u), !vec4<bool>(true, arg_1.d.x, true, arg_2.x))) % vec4<u32>(32u));
    var var_1 = ~(~u_input.c) ^ vec3<u32>(arg_3, u_input.c.x, func_1().a.b);
    let var_2 = u_input.a | -_wgslsmith_dot_vec2_i32(~arg_0.ww, reverseBits(-arg_0.xx));
    global2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-434f + -424f), _wgslsmith_f_op_f32(f32(-1f) * -253f)), _wgslsmith_f_op_f32(f32(-1f) * -837f))) - _wgslsmith_f_op_f32(trunc(global3.x)))));
    return 72894u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(~(~reverseBits(~global1.c.x ^ (global1.a.a << (41172u % 32u)))), 30u)];
    var var_1 = vec4<i32>(u_input.a, 1i, _wgslsmith_mod_i32(-2147483647i, firstTrailingBit(-u_input.a)) & ~(~(~u_input.a)), ~u_input.a);
    let var_2 = global1.a;
    let var_3 = Struct_1(4294967295u, global1.b.x, !vec4<bool>(true, !global1.d.x, all(!vec4<bool>(false, false, var_2.d.x, global1.a.c.x)), any(select(global1.a.c.xy, global1.d.xz, var_2.d.x))), vec2<bool>(true, var_0.x != 1000f));
    var var_4 = select(-1i, _wgslsmith_add_i32(~20180i | u_input.a, countOneBits(reverseBits(var_1.x))), false);
    let var_5 = vec4<u32>(_wgslsmith_mult_u32(0u, _wgslsmith_mod_u32(1u, func_4(vec4<i32>(-2147483647i, var_1.x, u_input.a, 2147483647i), func_1(), global1.d, var_3.b))), max(_wgslsmith_dot_vec3_u32(vec3<u32>(~38891u, firstLeadingBit(38488u), var_2.b & 4294967295u), _wgslsmith_div_vec3_u32(vec3<u32>(30196u, 0u, 6324u), ~vec3<u32>(u_input.d.x, global1.c.x, var_2.a))), _wgslsmith_add_u32(u_input.b, 0u & _wgslsmith_div_u32(global1.c.x, 4294967295u))), func_1().c.x, ~select(u_input.c.x, 6019u, true));
    var_4 = u_input.a;
    var var_6 = -u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(func_2(Struct_2(!global1.a.c.zy, func_1().a), global3.x), u_input.d.x & ~(~var_5.x)), ~select(abs(~vec4<u32>(15659u, global1.a.a, var_3.a, global1.a.a)), var_5, true & all(global1.d.xz)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(global0[_wgslsmith_index_u32(var_2.a, 30u)]))))), _wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -var_1.x, u_input.a), countOneBits(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(var_1.yw, vec2<i32>(-43463i, u_input.a)), abs(var_1.xz)))), _wgslsmith_f_op_vec2_f32(floor(global3.xx)));
}

