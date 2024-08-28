struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: bool,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_3, 30>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: f32, arg_1: Struct_4) -> f32 {
    var var_0 = min(select(arg_1.c.b.zx | (select(vec2<i32>(global0.b.b.x, global0.a.x), vec2<i32>(arg_1.a.b.x, -21018i), vec2<bool>(true, global0.c.c.x)) >> (arg_1.e % vec2<u32>(32u))), vec2<i32>(_wgslsmith_mult_i32(min(-45237i, arg_1.a.b.x), -7467i), u_input.c), select(abs(arg_1.c.b.x) == arg_1.a.b.x, true, all(global0.c.c))), ~_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(~vec2<i32>(arg_1.a.b.x, 0i), global0.b.b.zz ^ arg_1.a.b.yz), abs(~global0.a.zy)));
    var_0 = global0.a.wz;
    let var_1 = Struct_4(arg_1.a, ~(u_input.a.x >> (firstLeadingBit(u_input.a.x) % 32u)) >= ~arg_1.e.x, arg_1.a, !any(select(vec3<bool>(true, arg_1.d, arg_1.c.c.x), !vec3<bool>(false, arg_1.d, arg_1.b), global0.c.c.x)), ~u_input.a.xz);
    var var_2 = Struct_4(Struct_1(var_1.c.a, global0.c.b, !vec3<bool>(true, global0.b.c.x | false, global0.b.c.x)), all(!vec2<bool>(u_input.b.x <= 1u, all(vec3<bool>(global0.b.c.x, global0.c.c.x, true)))), global0.c, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0))) != var_1.a.a.x), _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(~_wgslsmith_add_vec2_u32(u_input.a.xy, arg_1.e), vec2<u32>(var_1.e.x << (0u % 32u), _wgslsmith_add_u32(31626u, 0u))), arg_1.e, min(~(~vec2<u32>(u_input.a.x, 0u)), vec2<u32>(arg_1.e.x, var_1.e.x))));
    var var_3 = ~var_2.a.b;
    return _wgslsmith_f_op_f32(arg_1.a.a.x * -806f);
}

fn func_2(arg_0: vec4<i32>, arg_1: u32, arg_2: bool) -> vec2<f32> {
    var var_0 = (_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-702f + global0.b.a.x), Struct_4(Struct_1(vec3<f32>(global0.d, global0.d, 1330f), global0.c.b, global0.c.c), arg_2, global0.b, true, u_input.a.xz))), 555f, arg_2)) >= _wgslsmith_div_f32(global0.c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.a.x)))) | true;
    var_0 = false;
    var var_1 = arg_0.wy;
    global1 = array<Struct_3, 30>();
    let var_2 = u_input.a.x | _wgslsmith_div_u32(_wgslsmith_sub_u32(countOneBits(~arg_1), 4294967295u), abs(~countOneBits(arg_1)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.c.a.zy)));
}

fn func_4(arg_0: vec2<f32>) -> Struct_3 {
    global1 = array<Struct_3, 30>();
    var var_0 = 1u;
    var_0 = _wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, ~u_input.b.x), _wgslsmith_mult_u32(174u, ~(~_wgslsmith_add_u32(u_input.a.x, u_input.b.x))));
    global1 = array<Struct_3, 30>();
    let var_1 = _wgslsmith_f_op_f32(abs(869f));
    return Struct_3(_wgslsmith_sub_vec4_i32(countOneBits(global0.a), ~vec4<i32>(global0.b.b.x, -2147483647i, global0.c.b.x, global0.a.x)) ^ max(global0.a, global0.a), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x, 392f)), global0.c.b, !select(!vec3<bool>(true, global0.c.c.x, true), vec3<bool>(true, false, false), !vec3<bool>(false, global0.b.c.x, true))), global0.b, var_1);
}

fn func_1() -> Struct_1 {
    global1 = array<Struct_3, 30>();
    global0 = func_4(_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_div_vec4_i32(-(~vec4<i32>(u_input.c, -11758i, u_input.c, u_input.c)), -vec4<i32>(u_input.c, 0i, u_input.c, 3792i)), 1u, !any(vec3<bool>(true, false, global0.b.c.x)))));
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(65300u, _wgslsmith_clamp_u32(~1u, u_input.a.x, 1u), reverseBits(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), u_input.b.zx) & _wgslsmith_div_vec2_u32(u_input.a.yx, u_input.b.ww), u_input.b.zw))), 30u)];
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2149f)));
    let var_1 = 4369i;
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.c.a.x - -819f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.a.x * global0.d) * _wgslsmith_f_op_f32(func_3(global0.b.a.x, Struct_4(Struct_1(global0.b.a, vec3<i32>(-6420i, global0.c.b.x, 5893i), vec3<bool>(global0.b.c.x, true, global0.c.c.x)), global0.b.c.x, global0.c, false, vec2<u32>(0u, u_input.b.x))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.b.a.x - 426f), _wgslsmith_f_op_f32(-global0.b.a.x)))), _wgslsmith_f_op_f32(global0.b.a.x - _wgslsmith_f_op_f32(f32(-1f) * -1357f))), global0.a.wzw, select(vec3<bool>(all(func_4(global0.c.a.zy).b.c.zy), global0.c.c.x, global0.c.c.x != global0.b.c.x), global0.c.c, global0.c.c.x));
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: vec2<u32>, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = func_1().c;
    global0 = arg_0;
    global0 = func_4(arg_0.b.a.zy);
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.b.a - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.a.x, arg_0.b.a.x, global0.b.a.x))) - global0.c.a)), func_1().a);
    let var_2 = select(38446i, arg_0.b.b.x, any(vec2<bool>(!func_4(vec2<f32>(-1118f, var_1.x)).c.c.x, var_0.x)));
    return Struct_1(func_4(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(807f, _wgslsmith_f_op_f32(floor(var_1.x)))))).c.a, _wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.c.b.x, i32(-1i) * -2147483647i, ~1i), arg_0.a.xwz), vec3<bool>(true, arg_1, var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(firstTrailingBit(~(abs(u_input.a.x) | 13411u)));
    global0 = global1[_wgslsmith_index_u32(firstTrailingBit(~(~(firstLeadingBit(1u) | _wgslsmith_mod_u32(u_input.b.x, u_input.a.x)))), 30u)];
    let var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.c.a.x * _wgslsmith_f_op_f32(global0.d + -401f)), -1321f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -545f)))), 901f));
    global1 = array<Struct_3, 30>();
    var var_2 = global0.c;
    let var_3 = !all(var_2.c);
    var_2 = func_5(Struct_3(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(global0.a, countOneBits(global0.a)), _wgslsmith_clamp_vec4_i32(global0.a, ~global0.a, vec4<i32>(0i, 15952i, u_input.c, -32646i) >> (u_input.a % vec4<u32>(32u)))), func_1(), func_4(vec2<f32>(_wgslsmith_f_op_f32(select(1175f, var_1.a.x, true)), _wgslsmith_f_op_f32(var_1.a.x + var_2.a.x))).b, _wgslsmith_f_op_f32(-var_2.a.x)), var_2.c.x, countOneBits(firstTrailingBit(~(u_input.a.xw ^ vec2<u32>(u_input.b.x, 1u)))), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, _wgslsmith_mod_u32(2193u | u_input.a.x, abs(u_input.a.x))), abs(_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.a.x, u_input.a.x), min(vec2<u32>(4294967295u, u_input.b.x), vec2<u32>(0u, 64919u)))), ~vec2<u32>(u_input.b.x, u_input.a.x)));
    var var_4 = func_4(var_1.a.xy);
    var var_5 = Struct_2(var_4.c.a);
    let x = u_input.a;
    s_output = StorageBuffer(min(vec4<i32>(var_2.b.x, 0i, var_2.b.x, var_4.b.b.x) >> (countOneBits(u_input.b) % vec4<u32>(32u)), vec4<i32>(37199i, min(global0.b.b.x, var_2.b.x), global0.a.x, max(-4080i, 15330i))) ^ vec4<i32>(-2147483647i, _wgslsmith_div_i32(_wgslsmith_mod_i32(var_2.b.x, u_input.c), _wgslsmith_mod_i32(-24225i, u_input.c)), -1i, i32(-1i) * -45317i), 2115f, ~u_input.b.x);
}

