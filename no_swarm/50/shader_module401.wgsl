struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: vec3<bool>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: Struct_2,
    d: Struct_1,
    e: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<u32, 32>;

var<private> global2: Struct_1;

var<private> global3: vec3<i32> = vec3<i32>(0i, 67711i, -29996i);

var<private> global4: array<vec2<bool>, 8> = array<vec2<bool>, 8>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: bool) -> vec4<bool> {
    let var_0 = ~u_input.a;
    global3 = vec3<i32>(global2.a, ~(-2147483647i), global3.x);
    return vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1625f, _wgslsmith_f_op_f32(trunc(global2.b.x))))) <= 236f, true, select(true, !arg_0, true), !(46644i != ~(-global3.x)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec4<bool>) -> vec4<i32> {
    var var_0 = Struct_2(global3.x, _wgslsmith_mult_vec4_i32(~((vec4<i32>(31410i, global2.a, arg_0.a, arg_0.a) >> (vec4<u32>(arg_1, global1[_wgslsmith_index_u32(arg_0.e, 32u)], arg_0.d, u_input.a.x) % vec4<u32>(32u))) << (~vec4<u32>(u_input.b.x, global1[_wgslsmith_index_u32(4294967295u, 32u)], arg_0.e, 1u) % vec4<u32>(32u))), abs(-(~vec4<i32>(-1i, -65063i, 1i, 10425i)))), arg_0);
    var var_1 = arg_2.yxy;
    global2 = var_0.c;
    let var_2 = _wgslsmith_add_u32(min(countOneBits(64634u), 39284u), 0u) ^ _wgslsmith_mult_u32(_wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(u_input.a, u_input.b), arg_1), _wgslsmith_dot_vec2_u32(select(abs(u_input.b.zx), vec2<u32>(arg_1, 0u), select(var_1.x, false, true)), u_input.b.xx));
    var var_3 = 4294967295u;
    return ~vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(_wgslsmith_mult_i32(49084i, 2173i), _wgslsmith_mod_i32(global2.a, -2147483647i)), reverseBits(-arg_0.a)), -global3.x, firstTrailingBit(select(global3.x, 4365i, var_1.x) | -56578i), global2.a);
}

fn func_1(arg_0: f32, arg_1: u32) -> i32 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.b) - vec2<f32>(global2.b.x, _wgslsmith_div_f32(_wgslsmith_div_f32(arg_0, 260f), global2.b.x))), func_2(true), Struct_2(-4962i, _wgslsmith_div_vec4_i32(abs(vec4<i32>(global3.x, 92053i, global3.x, 21953i)), ~vec4<i32>(global2.a, global3.x, -52156i, -58294i)) ^ func_3(Struct_1(global3.x, vec2<f32>(732f, global2.b.x), global2.c, arg_1, u_input.b.x), min(u_input.b.x, arg_1), vec4<bool>(false, true, false, false)), Struct_1(~global2.a, vec2<f32>(_wgslsmith_div_f32(-413f, global2.b.x), -1000f), global2.c, 4294967295u, global1[_wgslsmith_index_u32(u_input.a.x, 32u)])), Struct_1(_wgslsmith_mod_i32(1i, firstTrailingBit(global3.x)) ^ global3.x, vec2<f32>(_wgslsmith_f_op_f32(1195f - global2.b.x), 248f), 498f, global1[_wgslsmith_index_u32(101924u, 32u)], _wgslsmith_add_u32(global2.e >> (global2.e % 32u), arg_1 ^ global1[_wgslsmith_index_u32(1u, 32u)]) ^ ~global2.e), select(1u != _wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(1u, 4865u, global1[_wgslsmith_index_u32(arg_1, 32u)]))), true, func_2(false).x));
    global3 = (vec3<i32>(countOneBits(var_0.c.b.x << (110646u % 32u)), -28781i, ~min(global2.a, -2147483647i)) << (u_input.b % vec3<u32>(32u))) << (vec3<u32>(73550u, 29898u, 13933u) % vec3<u32>(32u));
    global2 = var_0.c.c;
    var var_1 = 1000f;
    let var_2 = 1531f;
    return -2147483647i;
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> StorageBuffer {
    var var_0 = Struct_5(arg_1, -2147483647i, global4[_wgslsmith_index_u32(u_input.b.x, 8u)]);
    var var_1 = Struct_1(_wgslsmith_add_i32(abs(-91462i), var_0.b), vec2<f32>(-944f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-189f + _wgslsmith_f_op_f32(global2.c * arg_1.c.c)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a.c.c))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.c.c + -1056f), _wgslsmith_f_op_f32(-global2.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.x))), u_input.a.x, 0u);
    let var_2 = 953f;
    global1 = array<u32, 32>();
    let var_3 = arg_1.a;
    return StorageBuffer(i32(-1i) * -arg_1.b.x, 1i, vec4<i32>(-1i) * -abs(firstLeadingBit(vec4<i32>(2147483647i, var_1.a, var_1.a, arg_1.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4((false && all(select(vec2<bool>(true, true), global4[_wgslsmith_index_u32(1u, 8u)], true))) && true, Struct_2(~_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, global2.a, global2.a), vec3<i32>(-2147483647i, 20128i, 9103i)), abs(vec3<i32>(global3.x, -29402i, global3.x))), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, func_1(global2.c, 70717u), ~(-7991i), global2.a), (vec4<i32>(-1i, 34349i, 1i, global2.a) << (vec4<u32>(global2.d, 91505u, global2.e, 0u) % vec4<u32>(32u))) & vec4<i32>(global2.a, -34795i, global3.x, 51758i)), Struct_1(1i & min(global3.x, global2.a), _wgslsmith_f_op_vec2_f32(-global2.b), global2.b.x, 1u, global2.e)));
}

