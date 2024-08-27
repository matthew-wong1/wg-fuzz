struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_2 = Struct_2(Struct_1(false, vec3<f32>(-1196f, 169f, -1588f), -914f), 14097i, Struct_1(false, vec3<f32>(1671f, 490f, -130f), 591f), Struct_1(true, vec3<f32>(-436f, 1355f, 2003f), -1765f));

var<private> global2: array<vec3<bool>, 4>;

var<private> global3: Struct_1;

var<private> global4: vec4<bool>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>, arg_2: vec4<u32>) -> i32 {
    global4 = !select(vec4<bool>(global1.a.a | true, (arg_0 == -1i) || global1.a.a, !global3.a, !global3.a), select(select(vec4<bool>(global3.a, global3.a, global3.a, global4.x), vec4<bool>(global1.d.a, false, true, global3.a), !vec4<bool>(false, global1.d.a, global3.a, global1.d.a)), vec4<bool>(all(vec4<bool>(true, global1.d.a, global4.x, global4.x)), false, true, true), !select(vec4<bool>(global1.d.a, true, global3.a, false), vec4<bool>(false, true, global3.a, false), false)), vec4<bool>(global1.d.c == _wgslsmith_f_op_f32(global1.c.c * 341f), true, global4.x, !global4.x));
    let var_0 = all(select(vec4<bool>(!global1.d.a, !global3.a, global4.x, global4.x & any(global2[_wgslsmith_index_u32(arg_1.x, 4u)])), !(!select(vec4<bool>(false, global3.a, false, global3.a), vec4<bool>(false, global1.a.a, true, global4.x), true)), !select(true, global3.a, global3.a)));
    var var_1 = Struct_2(Struct_1((~1u & ~arg_1.x) == select(firstTrailingBit(arg_2.x), 43905u, select(false, false, global1.c.a)), _wgslsmith_f_op_vec3_f32(-global1.c.b), 750f), -45214i, Struct_1((reverseBits(0i) << (arg_1.x % 32u)) != ~(~(-53009i)), vec3<f32>(-1782f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.b.x), _wgslsmith_div_f32(global3.b.x, 343f)), global3.c), _wgslsmith_f_op_f32(-global3.b.x)), global1.d);
    global1 = Struct_2(global1.a, _wgslsmith_sub_i32(arg_0, reverseBits(-8816i)), var_1.c, global1.c);
    return 1i;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_add_i32(_wgslsmith_add_i32(-_wgslsmith_mod_i32(func_3(-81913i, vec2<u32>(u_input.e.x, u_input.e.x), vec4<u32>(142928u, u_input.d, 47734u, u_input.e.x)), abs(global1.b)), abs(u_input.b)), select(~_wgslsmith_mult_i32(global1.b, _wgslsmith_add_i32(45317i, -60034i)), -2147483647i, select(any(global4.yx), false, any(vec4<bool>(true, global1.d.a, false, false)))));
    let var_1 = global4.x;
    var var_2 = _wgslsmith_f_op_f32(-global3.b.x);
    let var_3 = select(u_input.e.x, firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), u_input.e.yy)), global3.a);
    var var_4 = u_input.e.zw;
    return global1.d;
}

fn func_1(arg_0: vec3<f32>, arg_1: i32) -> vec3<f32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-2286f, global1.a.c))) * 447f) * global3.b.x), arg_0.x, -1208f);
    global3 = func_2();
    global2 = array<vec3<bool>, 4>();
    global2 = array<vec3<bool>, 4>();
    let var_1 = global4.zwz;
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(1286f, _wgslsmith_f_op_f32(trunc(-166f)), _wgslsmith_f_op_f32(-global3.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.d;
    global4 = vec4<bool>(var_0.a, false, !(u_input.e.x <= reverseBits(abs(60543u))), !global3.a);
    var var_1 = Struct_2(Struct_1(false, _wgslsmith_f_op_vec3_f32(-global1.d.b), _wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(abs(-1737f)))), -global1.b, global1.d, Struct_1(any(vec4<bool>(!global3.a, !global3.a, global4.x, true)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(vec3<f32>(global3.b.x, var_0.b.x, -1351f), ~global1.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(319f, global1.a.c, var_0.b.x) * global1.d.b)), var_0.b.x));
    let var_2 = firstTrailingBit(~u_input.e.x);
    let var_3 = _wgslsmith_add_vec3_u32(~select(~vec3<u32>(var_2, 13224u, 22337u), vec3<u32>(_wgslsmith_mult_u32(u_input.d, var_2), 1u, ~u_input.e.x), true), firstLeadingBit(~(~(~vec3<u32>(1u, var_2, 1u)))));
    let var_4 = u_input.a ^ vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(func_3(2147483647i, vec2<u32>(var_2, var_3.x), vec4<u32>(var_2, u_input.e.x, 9681u, u_input.e.x)), 0i), i32(-1i) * -2147483647i), 0i & global1.b);
    var var_5 = select(vec4<bool>(!all(select(vec4<bool>(global1.c.a, true, true, true), vec4<bool>(true, var_0.a, global3.a, global1.a.a), var_0.a)), _wgslsmith_clamp_u32(min(4294967295u, var_3.x), ~4294967295u, 4294967295u) <= ~0u, (_wgslsmith_f_op_f32(select(802f, 1000f, global1.d.a)) > global1.d.b.x) || global1.a.a, select((var_1.b <= -36789i) || all(vec4<bool>(true, global4.x, false, false)), false, false)), !(!select(select(vec4<bool>(var_0.a, var_1.c.a, global3.a, false), vec4<bool>(true, true, global4.x, global4.x), vec4<bool>(false, var_0.a, false, global3.a)), select(vec4<bool>(false, global3.a, global3.a, true), vec4<bool>(true, true, global4.x, false), vec4<bool>(global4.x, false, true, global4.x)), vec4<bool>(global4.x, false, global4.x, var_1.d.a))), !select(!vec4<bool>(var_1.c.a, global1.d.a, var_1.d.a, true), select(vec4<bool>(true, false, true, global4.x), !vec4<bool>(global4.x, true, true, global1.d.a), vec4<bool>(var_0.a, false, false, true)), select(select(vec4<bool>(global4.x, var_1.d.a, true, true), vec4<bool>(global3.a, false, false, var_0.a), vec4<bool>(false, true, false, true)), !vec4<bool>(false, global4.x, false, global3.a), !vec4<bool>(false, global1.a.a, var_0.a, var_0.a))));
    var var_6 = Struct_2(global1.d, _wgslsmith_dot_vec3_i32(min(vec3<i32>(0i, ~global1.b, 77733i), firstTrailingBit(vec3<i32>(global1.b, u_input.a.x, var_1.b)) ^ ~vec3<i32>(u_input.c, global1.b, -13847i)), abs(firstTrailingBit(vec3<i32>(-2147483647i, 61747i, u_input.a.x)))), var_1.d, Struct_1(global3.a, _wgslsmith_f_op_vec3_f32(exp2(global1.a.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(282f, _wgslsmith_f_op_f32(var_1.d.b.x * var_0.b.x))), _wgslsmith_f_op_f32(642f + global3.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer((51031i << (abs(min(21993u, u_input.e.x)) % 32u)) >> (abs(~(u_input.d ^ 54895u)) % 32u), ~(-(u_input.a << (var_3.xx % vec2<u32>(32u)))) | u_input.a, 21378u, ~vec4<i32>(var_6.b, firstTrailingBit(-var_4.x), _wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.b, var_6.b), var_1.b), var_6.b), var_3.yx);
}

