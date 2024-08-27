struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: f32,
    d: u32,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<bool>,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: Struct_3,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec2<f32> = vec2<f32>(156f, 1149f);

var<private> global2: array<Struct_4, 29> = array<Struct_4, 29>(Struct_4(true, 4294967295u, Struct_3(vec2<bool>(true, false), vec4<bool>(true, false, false, false)), -1907f), Struct_4(true, 1u, Struct_3(vec2<bool>(false, true), vec4<bool>(false, true, true, true)), -1117f), Struct_4(true, 0u, Struct_3(vec2<bool>(true, true), vec4<bool>(false, false, true, false)), 2079f), Struct_4(true, 0u, Struct_3(vec2<bool>(false, true), vec4<bool>(false, false, false, false)), -918f), Struct_4(false, 37041u, Struct_3(vec2<bool>(false, true), vec4<bool>(true, false, false, true)), -507f), Struct_4(false, 1u, Struct_3(vec2<bool>(false, true), vec4<bool>(false, true, true, true)), 155f), Struct_4(true, 0u, Struct_3(vec2<bool>(false, false), vec4<bool>(true, false, true, false)), -360f), Struct_4(true, 28193u, Struct_3(vec2<bool>(false, false), vec4<bool>(false, false, false, true)), 762f), Struct_4(false, 0u, Struct_3(vec2<bool>(true, false), vec4<bool>(false, false, true, true)), -1195f), Struct_4(false, 53992u, Struct_3(vec2<bool>(true, true), vec4<bool>(false, false, false, false)), -1758f), Struct_4(true, 1u, Struct_3(vec2<bool>(true, false), vec4<bool>(true, true, false, true)), 357f), Struct_4(true, 1u, Struct_3(vec2<bool>(false, false), vec4<bool>(true, false, false, false)), -586f), Struct_4(true, 125355u, Struct_3(vec2<bool>(true, true), vec4<bool>(true, true, true, false)), 1173f), Struct_4(false, 1u, Struct_3(vec2<bool>(false, true), vec4<bool>(false, false, true, true)), -129f), Struct_4(false, 0u, Struct_3(vec2<bool>(false, true), vec4<bool>(true, true, false, false)), 157f), Struct_4(true, 4294967295u, Struct_3(vec2<bool>(true, false), vec4<bool>(false, false, false, true)), -1990f), Struct_4(false, 1u, Struct_3(vec2<bool>(false, true), vec4<bool>(false, false, false, false)), -184f), Struct_4(true, 38151u, Struct_3(vec2<bool>(true, false), vec4<bool>(true, true, true, false)), 1000f), Struct_4(true, 4294967295u, Struct_3(vec2<bool>(true, false), vec4<bool>(false, true, true, true)), 957f), Struct_4(true, 45498u, Struct_3(vec2<bool>(false, true), vec4<bool>(true, true, true, false)), -483f), Struct_4(false, 2247u, Struct_3(vec2<bool>(false, false), vec4<bool>(true, true, false, true)), -274f), Struct_4(false, 7231u, Struct_3(vec2<bool>(false, false), vec4<bool>(false, false, true, true)), 2084f), Struct_4(false, 1u, Struct_3(vec2<bool>(false, true), vec4<bool>(true, true, true, false)), 1430f), Struct_4(false, 0u, Struct_3(vec2<bool>(true, true), vec4<bool>(true, false, true, false)), 767f), Struct_4(true, 16544u, Struct_3(vec2<bool>(false, true), vec4<bool>(true, false, true, true)), 1286f), Struct_4(false, 1u, Struct_3(vec2<bool>(true, false), vec4<bool>(false, false, true, true)), -466f), Struct_4(false, 0u, Struct_3(vec2<bool>(true, true), vec4<bool>(false, true, true, false)), -322f), Struct_4(false, 1u, Struct_3(vec2<bool>(true, false), vec4<bool>(false, false, false, true)), -563f), Struct_4(false, 4294967295u, Struct_3(vec2<bool>(false, false), vec4<bool>(true, false, true, false)), 1464f));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> vec4<u32> {
    let var_0 = select(arg_0.a, vec2<bool>(false, all(vec4<bool>(arg_0.a.x, false, select(false, arg_0.a.x, arg_0.a.x), arg_0.a.x))), arg_0.a.x);
    global2 = array<Struct_4, 29>();
    let var_1 = global1.x;
    let var_2 = arg_0;
    let var_3 = arg_0;
    return ~_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, arg_0.d, var_2.d, 7761u), vec4<u32>(25220u, var_3.d, 4294967295u, var_2.d), vec4<u32>(u_input.c, var_2.d, var_3.d, var_3.d)), vec4<u32>(var_2.d, ~44771u, u_input.c & arg_0.d, ~u_input.b.x)), ~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(0u, 4294967295u)), u_input.c, 4294967295u, 1u));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -458f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.x * global1.x), _wgslsmith_div_f32(1928f, -326f), true)))), _wgslsmith_f_op_f32(-834f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -930f) * 1f) + -998f))));
    let var_1 = 440f;
    global0 = max(0u, reverseBits(reverseBits(_wgslsmith_mult_u32(arg_0.x, 1u))));
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(step(-563f, global1.x)))));
    global1 = vec2<f32>(114f, 249f);
    return var_2;
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: i32) -> u32 {
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(max(global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global1.x, -1149f))), -1000f))));
    var var_0 = vec3<bool>(_wgslsmith_f_op_f32(func_4(_wgslsmith_sub_vec4_u32(func_3(Struct_2(vec2<bool>(false, true), 1i, global1.x, u_input.b.x, vec4<i32>(arg_0.b, -2147483647i, arg_2, 1i)), arg_2), vec4<u32>(arg_1, arg_0.d, 4294967295u, 108626u) >> (vec4<u32>(47900u, 2630u, arg_1, 0u) % vec4<u32>(32u))), !select(vec4<bool>(false, false, arg_0.a.x, false), vec4<bool>(true, true, false, arg_0.a.x), arg_0.a.x), arg_2)) < 1555f, !arg_0.a.x, !(true && any(select(vec3<bool>(false, false, arg_0.a.x), vec3<bool>(false, arg_0.a.x, arg_0.a.x), vec3<bool>(arg_0.a.x, true, arg_0.a.x)))));
    var var_1 = arg_0.a.x;
    global2 = array<Struct_4, 29>();
    var_1 = any(vec2<bool>(all(vec2<bool>(!arg_0.a.x, arg_0.a.x | arg_0.a.x)), !(39119u <= _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.d, 8681u, arg_0.d, u_input.a.x), vec4<u32>(u_input.a.x, 17556u, arg_0.d, 44812u)))));
    return 47674u;
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_1(~vec3<i32>(47408i << (func_2(Struct_2(vec2<bool>(false, true), 30787i, global1.x, 20219u, vec4<i32>(-20271i, 1i, -12868i, -8134i)), 20296u, 2147483647i) % 32u), _wgslsmith_div_i32(1i, -1i), _wgslsmith_dot_vec3_i32(-vec3<i32>(24920i, -714i, -14437i), vec3<i32>(1i, 1i, 1i))));
    var var_1 = vec3<u32>(55048u, 1u, max(4294967295u, 0u));
    var var_2 = 148f;
    let var_3 = false;
    var var_4 = Struct_3(!(!vec2<bool>(false, var_3 && var_3)), select(select(select(vec4<bool>(var_3, var_3, var_3, true), vec4<bool>(var_3, var_3, false, var_3), var_3), !vec4<bool>(var_3, false, false, false), select(select(vec4<bool>(var_3, var_3, true, true), vec4<bool>(false, var_3, true, var_3), vec4<bool>(true, false, var_3, true)), !vec4<bool>(true, false, var_3, false), var_3)), select(!(!vec4<bool>(true, var_3, false, false)), vec4<bool>(true, all(vec4<bool>(var_3, true, var_3, var_3)), var_0.a.x > var_0.a.x, true), !(!vec4<bool>(var_3, var_3, var_3, var_3))), false));
    return Struct_2(select(var_4.b.xy, var_4.a, true), var_0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -434f), _wgslsmith_f_op_f32(-1567f + 1519f))) + -452f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - -1803f) * _wgslsmith_f_op_f32(-global1.x)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -106f), 1f, var_3)))), abs(max(u_input.a.x, 0u)), ~(~select(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a.x, var_0.a.x, 21794i, 0i), vec4<i32>(-88277i, -14969i, -1i, 23434i), vec4<i32>(-1i, var_0.a.x, 12007i, 0i)), vec4<i32>(-1i, -30155i, var_0.a.x, 2147483647i) >> (vec4<u32>(var_1.x, 0u, 4294967295u, 0u) % vec4<u32>(32u)), var_4.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2147483647i;
    let var_1 = func_1();
    var_0 = _wgslsmith_dot_vec3_i32(func_1().e.yww, -(func_1().e.wxz | vec3<i32>(15078i, abs(var_1.b), var_1.e.x)));
    var var_2 = ~_wgslsmith_mult_vec4_u32(~vec4<u32>(var_1.d | u_input.b.x, ~14694u, 57332u, u_input.b.x), vec4<u32>(u_input.c, _wgslsmith_mult_u32(func_3(Struct_2(var_1.a, 1i, 534f, 1u, var_1.e), 13811i).x, 1u), 1u, ~17475u));
    var_2 = vec4<u32>(u_input.b.x, countOneBits(min(firstTrailingBit(11913u), func_1().d)), firstLeadingBit(var_1.d) >> (firstTrailingBit(~1u) % 32u), func_2(func_1(), ~u_input.c, var_1.b));
    let var_3 = Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, countOneBits(-2147483647i), abs(1i)), _wgslsmith_mod_vec3_i32(-(~vec3<i32>(var_1.b, 0i, var_1.b)), -(~vec3<i32>(var_1.b, var_1.b, -42666i)))));
    var_0 = var_1.e.x << (func_3(Struct_2(select(!var_1.a, var_1.a, var_1.a.x != false), select(-var_3.a.x, -1i, var_1.a.x || var_1.a.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(481f - -600f), 650f)), u_input.c, vec4<i32>(_wgslsmith_mult_i32(var_1.e.x, var_1.b), _wgslsmith_clamp_i32(var_1.b, var_3.a.x, var_1.e.x), ~2147483647i, var_1.b)), var_3.a.x).x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -668f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-1000f - -135f)), global1.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(1f))))), -min(_wgslsmith_sub_i32(var_3.a.x, 9111i), func_1().b));
}

