struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_1,
    c: i32,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 6>;

var<private> global1: Struct_3;

var<private> global2: vec3<i32>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<u32> {
    return select(u_input.a & u_input.a, countOneBits(vec4<u32>(~11757u, ~u_input.a.x, 130197u, 11145u) << (abs(vec4<u32>(u_input.a.x, 57737u, 4294967295u, 4294967295u)) % vec4<u32>(32u))), false);
}

fn func_2() -> Struct_5 {
    let var_0 = vec3<u32>(1051u, ~(~(~1u)), _wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, u_input.a.x), ~max(1u, u_input.a.x)));
    let var_1 = Struct_2(Struct_1(func_3(), !select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), vec3<bool>(false, true, true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, select(true, false, false), true, true), vec4<bool>(true, true, true, true))), Struct_1(u_input.a, select(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), any(vec3<bool>(true, true, true))), vec4<bool>(any(vec2<bool>(false, true)), !(var_0.x < u_input.a.x), true, false | any(vec2<bool>(false, true)))), Struct_1(_wgslsmith_sub_vec4_u32(u_input.a, u_input.a), !vec3<bool>(any(vec4<bool>(false, false, true, false)), true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true))), _wgslsmith_mod_vec3_i32(global1.b, _wgslsmith_mult_vec3_i32(global1.b, global0[_wgslsmith_index_u32(91136u, 6u)])));
    global2 = global1.b;
    var var_2 = var_1.c;
    var var_3 = true;
    return Struct_5(~(~var_1.b.a.xxz), Struct_1((var_2.a << (vec4<u32>(90044u, 29555u, 33062u, u_input.a.x) % vec4<u32>(32u))) >> (var_2.a % vec4<u32>(32u)), var_1.a.c.zyx, vec4<bool>(true, var_1.b.c.x, any(var_1.c.c), var_1.c.b.x)), -4957i, ~(~var_1.b.a.x), all(var_2.b.yz));
}

fn func_4(arg_0: Struct_5, arg_1: vec3<bool>) -> Struct_3 {
    global1 = Struct_3(global1.a, global1.b);
    let var_0 = !any(select(!arg_0.b.c, arg_0.b.c, all(arg_0.b.c)));
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u & (39845u ^ firstLeadingBit(select(u_input.a.x, arg_0.b.a.x, arg_1.x))), max(_wgslsmith_mult_u32(0u, abs(u_input.a.x)), ~(~(~arg_0.a.x)))), 6u)];
    global1 = Struct_3(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a.x, -1073f)), -149f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global1.a, global1.a)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.x, global1.a.x) + vec2<f32>(845f, 1445f))) - global1.a), select(any(!arg_0.b.c.xw), true, arg_1.x))), global1.b);
    global1 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(step(596f, -1092f)))), 282f), -vec3<i32>(~select(global2.x, var_1.x, false), 55960i, func_2().c));
    return Struct_3(global1.a, global1.b);
}

fn func_1() -> Struct_4 {
    var var_0 = func_4(func_2(), vec3<bool>(_wgslsmith_clamp_i32(global1.b.x, -global2.x, min(global1.b.x, global2.x)) != 11133i, any(select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true))), true));
    let var_1 = func_4(Struct_5(u_input.a.xwx, func_2().b, global2.x, u_input.a.x, (~u_input.a.x ^ abs(0u)) >= ~u_input.a.x), vec3<bool>(select((u_input.a.x <= u_input.a.x) | select(false, false, true), select(u_input.a.x > 2040u, true, any(vec3<bool>(false, true, true))), false), ~(~u_input.a.x) != _wgslsmith_mod_u32(~u_input.a.x, max(36996u, 1u)), !(_wgslsmith_div_f32(-566f, var_0.a.x) >= 278f)));
    global2 = -_wgslsmith_mult_vec3_i32(firstLeadingBit(-(~var_0.b)), var_0.b);
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x * var_0.a.x)), _wgslsmith_div_f32(-198f, _wgslsmith_f_op_f32(exp2(var_1.a.x)))))));
    var var_3 = Struct_3(var_0.a, _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(global1.b.x, global2.x, var_0.b.x, global2.x), vec4<i32>(59068i, -19615i, global1.b.x, 16367i)), -_wgslsmith_mult_i32(-1i, 1i), global2.x), global0[_wgslsmith_index_u32(1u, 6u)], select(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], firstLeadingBit(-global1.b), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true))));
    return Struct_4(Struct_1(u_input.a, select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(true, false, false)), true), select(vec4<bool>(true, true, true, true), !func_2().b.c, true)), func_2().b, Struct_2(func_2().b, func_2().b, func_2().b, vec3<i32>(-2147483647i, -abs(-12415i), _wgslsmith_mult_i32(var_3.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global1.b.x, -1i, -23551i), var_1.b)))), var_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(457f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.a.x - 1292f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.d.a.x)) + _wgslsmith_f_op_f32(select(var_0.d.a.x, -408f, 69942u > u_input.a.x)))), vec3<i32>(-1i, global1.b.x, reverseBits(-var_0.d.b.x)));
    var var_2 = var_0.d;
    let var_3 = Struct_5(~vec3<u32>(~4294967295u, ~4294967295u, 46564u), Struct_1(~(~u_input.a) >> (func_2().b.a % vec4<u32>(32u)), func_2().b.b, !var_0.c.a.c), func_2().c, u_input.a.x, true || any(!var_0.c.c.b.yx));
    let var_4 = ~var_0.a.a.x;
    global0 = array<vec3<i32>, 6>();
    let var_5 = Struct_2(Struct_1(~var_3.b.a, vec3<bool>(var_3.e, true, true), vec4<bool>(var_3.e, !func_1().c.c.b.x, (var_3.e | false) || var_0.b.c.x, all(!vec2<bool>(var_3.e, var_3.e)))), var_0.c.c, func_1().b, select(~vec3<i32>(var_0.c.d.x >> (0u % 32u), ~(-11372i), _wgslsmith_sub_i32(global2.x, 2959i)), firstTrailingBit(firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(38967i, -35341i, var_0.d.b.x), vec3<i32>(48619i, var_1.b.x, 41079i)))), all(!(!var_0.c.a.c))));
    var var_6 = var_3;
    var_6 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(func_1().a.a.x), _wgslsmith_mod_vec2_i32(var_1.b.xx, global1.b.xz));
}

