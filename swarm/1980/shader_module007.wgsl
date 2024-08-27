struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2806i;

var<private> global1: array<Struct_1, 2>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> u32 {
    var var_0 = arg_0;
    global1 = array<Struct_1, 2>();
    global0 = ~countOneBits(19809i);
    let var_1 = -2147483647i;
    let var_2 = -30160i;
    return u_input.e.x;
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: u32, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = func_3(Struct_1(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-8792i, arg_1.b.x, -21548i, 23788i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, -22602i, 44121i, 2147483647i), vec4<i32>(2057i, -55689i, u_input.a, arg_1.b.x))), ~vec4<i32>(29870i, 2147483647i, arg_1.b.x, 0i), _wgslsmith_sub_vec4_i32(~vec4<i32>(1i, 5607i, u_input.b, -2147483647i), vec4<i32>(16942i, 17111i, arg_1.b.x, 17412i))), arg_1.b.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(122f * -1000f), -277f, _wgslsmith_f_op_f32(floor(-892f)), 562f))), arg_1);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -690f));
    global0 = ~(-(-33575i | _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, -1i, 1i, u_input.b), vec4<i32>(arg_1.b.x, -25556i, u_input.a, -2390i)), vec4<i32>(-1i, 0i, -1i, u_input.a) ^ vec4<i32>(1i, arg_1.b.x, arg_1.b.x, arg_1.b.x))));
    let var_2 = Struct_2(~var_0, _wgslsmith_clamp_vec2_i32(-select(-arg_1.b, u_input.c.yz, !vec2<bool>(arg_3.x, false)), min(~vec2<i32>(-2147483647i, 49434i), ~u_input.c.yy) >> (u_input.e % vec2<u32>(32u)), vec2<i32>(u_input.a | u_input.c.x, arg_1.b.x) ^ reverseBits(arg_1.b)));
    global0 = _wgslsmith_mod_i32(var_2.b.x, _wgslsmith_mult_i32(arg_1.b.x, _wgslsmith_mult_i32(var_2.b.x, arg_1.b.x)));
    return Struct_1(abs(-select(_wgslsmith_mod_vec4_i32(vec4<i32>(14252i, 55655i, 1i, 1i), vec4<i32>(arg_1.b.x, var_2.b.x, var_2.b.x, 0i)), -vec4<i32>(u_input.b, -2147483647i, arg_1.b.x, arg_1.b.x), !vec4<bool>(arg_3.x, arg_0, false, arg_3.x))), var_2.b.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-707f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_f_op_f32(-682f - var_1)), -1595f, -193f)));
}

fn func_1() -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(0u, 2u)];
    global1 = array<Struct_1, 2>();
    let var_1 = global1[_wgslsmith_index_u32(~u_input.d, 2u)];
    global1 = array<Struct_1, 2>();
    return func_2(all(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), any(vec4<bool>(false, false, false, true))), vec3<bool>(true, true, true), any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false))))), Struct_2(u_input.e.x, vec2<i32>(-8788i, var_0.b)), 1u, vec2<bool>(false, true));
}

fn func_4(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_2 {
    global1 = array<Struct_1, 2>();
    var var_0 = _wgslsmith_f_op_f32(arg_2.c.x - _wgslsmith_f_op_f32(-arg_2.c.x));
    var_0 = 675f;
    return Struct_2(1u, vec2<i32>(arg_0, ~arg_2.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, all(vec3<bool>(false, true, false)), true), true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, all(vec3<bool>(false, true, true)) && true));
    global0 = abs(~u_input.a << (u_input.d % 32u));
    let var_1 = Struct_2(~max(u_input.e.x, _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.e.x, u_input.d), 1u)), -u_input.c.yx);
    global1 = array<Struct_1, 2>();
    let var_2 = true;
    var var_3 = func_4(select(var_1.b.x >> (var_1.a % 32u), min(abs(-23949i) << (_wgslsmith_clamp_u32(4294967295u, var_1.a, 82556u) % 32u), u_input.b), false | any(select(vec4<bool>(true, true, var_2, true), vec4<bool>(false, true, var_2, false), vec4<bool>(true, false, false, var_2)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-594f, -1949f, 231f, 385f)), vec4<f32>(1000f, -110f, -777f, 119f)), vec4<f32>(_wgslsmith_f_op_f32(-1399f - -283f), 271f, _wgslsmith_f_op_f32(1304f + 315f), _wgslsmith_f_op_f32(abs(-413f))), false)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1634f, 397f, -2170f, -1922f), vec4<f32>(384f, -1653f, -1816f, -217f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-709f, -1288f, 276f, -882f), vec4<f32>(-520f, -328f, 200f, -282f))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-152f, 1038f, 749f, 121f), vec4<f32>(-1996f, -566f, -2261f, -1383f)))))), func_1());
    var_3 = Struct_2(select(var_3.a, 22619u, _wgslsmith_f_op_f32(select(-235f, _wgslsmith_f_op_f32(ceil(-572f)), 1i <= var_1.b.x)) < _wgslsmith_f_op_f32(-1259f - -1533f)), ~vec2<i32>(-(i32(-1i) * -16311i), 19326i));
    var var_4 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(435f, _wgslsmith_f_op_f32(f32(-1f) * -1710f), _wgslsmith_f_op_f32(ceil(538f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-321f, 113f, -858f) + vec3<f32>(-123f, 1539f, -842f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1258f, 575f, -1573f) - vec3<f32>(-1553f, -465f, -188f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1216f, -1179f, -648f) - vec3<f32>(990f, 1729f, -1000f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2396f, -295f, 265f)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-252f, -225f, 1264f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-758f, 1120f, 697f))))), var_0.zzw))));
    var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.x + 1026f) + -2791f), -183f), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_4.x)) - _wgslsmith_f_op_f32(-871f + -1416f)), _wgslsmith_f_op_f32(var_4.x * var_4.x), _wgslsmith_f_op_f32(546f * _wgslsmith_f_op_f32(f32(-1f) * -189f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.b & -(~(-vec2<i32>(1i, 43860i))), _wgslsmith_f_op_vec4_f32(floor(func_2(all(!var_0), Struct_2(var_1.a, vec2<i32>(-32379i, var_1.b.x) << (u_input.e % vec2<u32>(32u))), ~(var_1.a >> (6743u % 32u)), select(!vec2<bool>(var_0.x, var_0.x), var_0.wy, all(vec4<bool>(true, true, false, false)))).c)));
}

