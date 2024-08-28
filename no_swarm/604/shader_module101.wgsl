struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec2<bool>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 19> = array<Struct_4, 19>(Struct_4(false), Struct_4(false), Struct_4(true), Struct_4(false), Struct_4(false), Struct_4(false), Struct_4(true), Struct_4(true), Struct_4(true), Struct_4(false), Struct_4(true), Struct_4(true), Struct_4(true), Struct_4(true), Struct_4(true), Struct_4(false), Struct_4(true), Struct_4(true), Struct_4(true));

var<private> global1: array<Struct_2, 32>;

var<private> global2: array<vec2<i32>, 24> = array<vec2<i32>, 24>(vec2<i32>(28333i, 0i), vec2<i32>(1i, 0i), vec2<i32>(2147483647i, -8707i), vec2<i32>(0i, 2147483647i), vec2<i32>(30458i, i32(-2147483648)), vec2<i32>(-1i, -118i), vec2<i32>(17090i, 1i), vec2<i32>(-18835i, -20632i), vec2<i32>(1i, 1i), vec2<i32>(-26728i, -14578i), vec2<i32>(0i, 1930i), vec2<i32>(1i, 1i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(-48471i, i32(-2147483648)), vec2<i32>(43364i, 1i), vec2<i32>(2147483647i, 1i), vec2<i32>(0i, -1i), vec2<i32>(-1i, 11761i), vec2<i32>(1i, 0i), vec2<i32>(2147483647i, -13977i), vec2<i32>(2147483647i, 21829i), vec2<i32>(0i, -6857i), vec2<i32>(-30428i, 0i), vec2<i32>(1i, -45106i));

var<private> global3: array<Struct_4, 19> = array<Struct_4, 19>(Struct_4(false), Struct_4(false), Struct_4(false), Struct_4(false), Struct_4(false), Struct_4(false), Struct_4(false), Struct_4(true), Struct_4(true), Struct_4(false), Struct_4(false), Struct_4(true), Struct_4(true), Struct_4(true), Struct_4(true), Struct_4(false), Struct_4(true), Struct_4(false), Struct_4(true));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = Struct_3(Struct_1(vec3<bool>(!(arg_1.a.x <= 638f), select(arg_1.c.a.x & arg_2.a.x, true, false), arg_0.a)), 194f, arg_1.b.a.xy);
    var var_1 = arg_1.e > firstTrailingBit(i32(-1i) * -1i);
    var var_2 = -32544i;
    global3 = array<Struct_4, 19>();
    global3 = array<Struct_4, 19>();
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(853f)), _wgslsmith_f_op_f32(-418f + _wgslsmith_f_op_f32(sign(-1840f)))), arg_1.a.x, arg_1.a.x));
}

fn func_2(arg_0: bool) -> Struct_2 {
    global1 = array<Struct_2, 32>();
    var var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_3(global3[_wgslsmith_index_u32(9739u, 19u)], global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(26690u, 87854u), 32u)], Struct_1(vec3<bool>(!arg_0, select(arg_0, false, arg_0), true)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1517f, 776f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(848f, -899f, false)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(232f)))))), -246f)));
    global1 = array<Struct_2, 32>();
    var var_1 = global3[_wgslsmith_index_u32(~29633u, 19u)];
    let var_2 = Struct_3(Struct_1(!vec3<bool>(true, u_input.a != 42067u, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -112f))), !(!(!select(vec2<bool>(true, var_1.a), vec2<bool>(false, var_1.a), true))));
    return Struct_2(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(floor(var_0.x)), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b * -1000f) + _wgslsmith_f_op_f32(729f * var_0.x))))), var_2.a, var_2.a, select(~vec3<u32>(u_input.d, ~53843u, u_input.d), abs(~(~vec3<u32>(39127u, 4294967295u, u_input.c))), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, arg_0), var_2.a.a, var_2.a.a.x), var_2.a.a)), 40396i);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: f32, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = u_input.e.x;
    var var_1 = func_2(arg_3.x);
    global0 = array<Struct_4, 19>();
    var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1127f + 1242f)), -1916f), func_2(arg_3.x).c, func_2(!var_1.c.a.x).b, vec3<u32>(_wgslsmith_add_u32(1u & min(u_input.b, 67279u), (var_1.d.x | 31345u) ^ firstTrailingBit(20939u)), (_wgslsmith_div_u32(u_input.a, 1u) | ~arg_1.x) | 0u, ~arg_1.x), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(1i, 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(-41469i, 0i, 28936i) | vec3<i32>(-29646i, var_1.e, u_input.e.x), vec3<i32>(52853i, var_1.e, -2147483647i)), countOneBits(-var_1.e)), -_wgslsmith_mult_vec3_i32(~vec3<i32>(17266i, var_1.e, var_1.e), vec3<i32>(9109i, u_input.e.x, -2147483647i))));
    global1 = array<Struct_2, 32>();
    return Struct_1(var_1.c.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!(!(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)))));
    let var_1 = Struct_3(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-156f, -1000f))), min(~(~vec4<u32>(u_input.a, u_input.b, u_input.a, u_input.c)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(33534u, u_input.b), vec2<u32>(0u, 42813u)), _wgslsmith_sub_u32(u_input.b, 28552u), 5205u, u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(1302f + _wgslsmith_f_op_f32(sign(-915f)))), var_0.a.yy), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-890f))) > -1844f).a.x, var_0.a.zx);
    var_0 = Struct_1(func_2(var_1.a.a.x).c.a);
    var var_2 = Struct_1(vec3<bool>(true, false, var_1.a.a.x));
    var var_3 = countOneBits(-6882i << (abs(_wgslsmith_mod_u32(u_input.c, 4294967295u)) % 32u));
    let var_4 = Struct_3(Struct_1(!select(func_1(vec2<f32>(var_1.b, var_1.b), vec4<u32>(22204u, u_input.a, 4294967295u, u_input.c), -770f, var_0.a.xx).a, vec3<bool>(false, true, var_0.a.x), var_0.a.x)), _wgslsmith_f_op_f32(306f + var_1.b), !select(var_1.c, vec2<bool>(true, true), 1i <= ~u_input.e.x));
    let var_5 = select(u_input.e.x, _wgslsmith_div_i32(-2147483647i, ~u_input.e.x | u_input.e.x) | 20066i, !all(vec4<bool>(var_4.c.x, func_2(true).c.a.x, u_input.e.x <= u_input.e.x, var_2.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_u32(u_input.d, ~u_input.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.b, 1000f, 296f, 509f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-924f, 1292f, var_4.b, var_4.b)) * vec4<f32>(3031f, 500f, var_1.b, var_4.b)))), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, _wgslsmith_mult_u32(~5717u, u_input.b)), ~vec2<u32>(u_input.a, u_input.a)), reverseBits(1i));
}

