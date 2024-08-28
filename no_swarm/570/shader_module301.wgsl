struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: Struct_3,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1584f;

var<private> global1: array<u32, 27> = array<u32, 27>(7194u, 93445u, 0u, 72101u, 16855u, 0u, 1u, 37147u, 0u, 24380u, 0u, 1u, 10680u, 1u, 32068u, 29633u, 43006u, 1u, 1u, 69489u, 4294967295u, 9450u, 43278u, 4294967295u, 24137u, 1u, 55916u);

var<private> global2: vec3<u32> = vec3<u32>(14126u, 0u, 32726u);

var<private> global3: vec3<f32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<u32>) -> bool {
    let var_0 = max(~firstTrailingBit(select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a), vec2<bool>(true, true))), vec2<i32>(min(7776i, _wgslsmith_mult_i32(0i, -2147483647i)), u_input.a));
    return true;
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = Struct_4(vec2<bool>(true, true), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(abs(~vec4<i32>(-2124i, u_input.a, -2147483647i, u_input.a)), -_wgslsmith_sub_vec4_i32(vec4<i32>(-14270i, u_input.a, u_input.a, 0i), vec4<i32>(2147483647i, -42948i, u_input.a, u_input.a))), ~vec4<i32>(u_input.a, ~u_input.a, ~(-1i), -2147483647i)));
    let var_1 = Struct_4(select(!var_0.a, select(var_0.a, !(!var_0.a), false), func_3(~_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 49549u, global2.x), vec3<u32>(global2.x, 10323u, 94259u)))), var_0.b);
    var var_2 = Struct_2(Struct_1(global2.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(47431u, global2.x), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 90429u), global2.yy)), arg_0)), Struct_1(u_input.b, arg_0));
    return var_2.b;
}

fn func_1() -> Struct_4 {
    global0 = _wgslsmith_f_op_f32(global3.x * -1460f);
    global2 = ~(~vec3<u32>(~_wgslsmith_sub_u32(42899u, global2.x), min(4294967295u, global1[_wgslsmith_index_u32(max(64800u, global2.x), 27u)]), u_input.b));
    var var_0 = -abs(abs(~select(vec4<i32>(u_input.a, u_input.a, 11954i, 2147483647i), vec4<i32>(1i, 16931i, 18173i, u_input.a), false)));
    var var_1 = func_2(global1[_wgslsmith_index_u32(~min(~u_input.b, u_input.b), 27u)]);
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1460f * -409f)), -1243f, _wgslsmith_f_op_f32(global3.x + 312f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global3.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global3.x), -1572f, -606f, _wgslsmith_f_op_f32(floor(global3.x))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, -2108f, global3.x, global3.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1024f, -157f, global3.x, global3.x))))), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(556f, -936f, -850f, 336f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-112f, global3.x, 399f, -833f))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), true), true))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global3.x, global3.x, global3.x, global3.x), vec4<f32>(1363f, -2798f, global3.x, 541f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, -1442f, 601f, 599f)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, 220f, -785f, global3.x)), vec4<f32>(113f, global3.x, global3.x, global3.x), vec4<bool>(true, true, true, true))))));
    return Struct_4(vec2<bool>(true, !(var_2.x > -1163f)), ~vec4<i32>(_wgslsmith_mod_i32(u_input.a, countOneBits(var_0.x)), ~var_0.x, u_input.a >> (5191u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(-73460i, -49757i, 1i), var_0.xyw)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(u_input.a, abs(-20920i));
    var var_1 = func_1();
    global1 = array<u32, 27>();
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1462f, _wgslsmith_f_op_f32(552f + global3.x))), _wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(min(global3.x, -614f)))))));
    global0 = global3.x;
    let var_2 = func_2(global1[_wgslsmith_index_u32(51190u, 27u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(25012u, global2.x, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(global2.x, 39073u, 10652u))) & ~vec3<u32>(4294967295u, 53970u, u_input.b), firstLeadingBit(vec3<u32>(~global1[_wgslsmith_index_u32(1u, 27u)], _wgslsmith_sub_u32(4294967295u, global2.x), u_input.b)), vec3<u32>(func_2(global1[_wgslsmith_index_u32(~35076u, 27u)]).a, min(1u, 96535u), _wgslsmith_clamp_u32(firstTrailingBit(global2.x), ~5562u, ~56685u))), vec2<u32>(countOneBits(u_input.b), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, 27801u, global1[_wgslsmith_index_u32(4294967295u, 27u)]), vec3<u32>(global1[_wgslsmith_index_u32(0u, 27u)], u_input.b, 0u), vec3<bool>(false, false, false)), vec3<u32>(global2.x, 48343u, 53693u)), _wgslsmith_clamp_u32(1u, u_input.b, _wgslsmith_div_u32(1437u, global2.x)))));
}

