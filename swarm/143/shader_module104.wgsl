struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec2<f32>,
    d: vec2<bool>,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: u32,
    d: vec2<f32>,
    e: i32,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(59681u, 60308i, 0i);

var<private> global1: array<vec4<f32>, 3>;

var<private> global2: Struct_2;

var<private> global3: array<vec2<u32>, 8>;

var<private> global4: Struct_3;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_5, arg_1: i32, arg_2: vec4<f32>, arg_3: f32) -> vec2<bool> {
    let var_0 = arg_0.a.c.x;
    var var_1 = max(select(vec4<i32>(-1i, -2147483647i, 15016i, 0i) & vec4<i32>(global0.c, global0.b, arg_1, arg_0.a.b.a.c), max(vec4<i32>(-43423i, global4.b.a.c, arg_1, 1i), vec4<i32>(arg_0.a.a, global4.b.a.b, arg_1, 15772i)), !vec4<bool>(global2.b.x, global2.b.x, true, arg_0.a.d.x)) << (~(~vec4<u32>(4294967295u, 13642u, 40258u, 4294967295u)) % vec4<u32>(32u)), -_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(27380i, global4.b.a.c, 0i, global0.b), vec4<i32>(50297i, global2.a.b, 1i, 2147483647i)), _wgslsmith_add_vec4_i32(vec4<i32>(10368i, global0.c, 11645i, 2147483647i), vec4<i32>(arg_0.a.a, 2147483647i, 32503i, -1i)))) & ~(~countOneBits(select(vec4<i32>(-90958i, arg_1, 39750i, 0i), vec4<i32>(global4.b.a.c, global0.b, global4.b.a.b, arg_1), global2.b.x)));
    var var_2 = -352f;
    let var_3 = arg_0.a;
    let var_4 = _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(~var_3.a, max(-1i, var_3.a), reverseBits(arg_0.a.a), ~global2.a.b)), vec4<i32>(var_1.x, ~(-58984i ^ var_1.x), global4.a, ~abs(var_1.x)), countOneBits(_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(var_1.x, 2147483647i, arg_0.a.b.a.c, global4.b.a.b)), vec4<i32>(19349i, 55219i, 1i, arg_1)))), -firstTrailingBit(min(select(vec4<i32>(-2147483647i, global0.c, 4472i, -1i), vec4<i32>(var_3.a, 0i, var_1.x, 1718i), true), -vec4<i32>(-30678i, -22133i, arg_1, global2.a.c))));
    return vec2<bool>(all(!select(!vec4<bool>(false, arg_0.a.b.b.x, arg_0.a.b.b.x, false), select(vec4<bool>(arg_0.a.d.x, global4.b.b.x, var_3.b.b.x, false), vec4<bool>(true, false, global4.b.b.x, true), vec4<bool>(false, true, true, var_3.d.x)), global2.b.x)), !(!(!(!global2.b.x))));
}

fn func_2() -> Struct_3 {
    global2 = Struct_2(Struct_1(u_input.a, -29797i, (max(global4.a, -17301i) | (19060i >> (global2.a.a % 32u))) << (29414u % 32u)), vec2<bool>(true, global4.d.x));
    global1 = array<vec4<f32>, 3>();
    let var_0 = -4525i;
    let var_1 = !(!(!(!select(vec3<bool>(true, global2.b.x, true), vec3<bool>(false, true, global2.b.x), vec3<bool>(global2.b.x, true, true)))));
    var var_2 = Struct_5(Struct_3(var_0, global4.b, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_div_f32(2421f, global4.c.x), global4.c.x))), select(select(vec2<bool>(global4.d.x, var_1.x), func_3(Struct_5(Struct_3(-742i, global4.b, global4.c, vec2<bool>(false, true))), global2.a.b, global1[_wgslsmith_index_u32(27534u, 3u)], global4.c.x), global4.b.b), vec2<bool>(false, false), vec2<bool>(all(var_1), global4.b.b.x))));
    return var_2.a;
}

fn func_1() -> Struct_3 {
    let var_0 = func_2();
    let var_1 = ~global2.a.c & reverseBits(-global0.b);
    global4 = var_0;
    global4 = Struct_3(var_1, global4.b, vec2<f32>(_wgslsmith_f_op_f32(global4.c.x * -1468f), global4.c.x), var_0.d);
    let var_2 = !any(global4.d);
    return Struct_3(var_1, var_0.b, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1887f)), _wgslsmith_f_op_f32(-355f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -871f), _wgslsmith_f_op_f32(-global4.c.x))))), select(!var_0.d, !global2.b, vec2<bool>(select(true, true, var_2), any(vec3<bool>(false, global2.b.x, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = true;
    let var_2 = func_1();
    let var_3 = vec2<i32>(0i, _wgslsmith_sub_i32(~global2.a.b, 7200i));
    global2 = Struct_2(Struct_1(0u, -19615i, global2.a.b), !func_1().d);
    global2 = Struct_2(Struct_1(46821u, ~3551i, max(-var_0.b.a.c, ~(~2147483647i))), select(var_2.d, global4.b.b, true));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_mult_i32(~_wgslsmith_div_i32(6610i, -32191i), _wgslsmith_dot_vec3_i32(~vec3<i32>(-4853i, global0.b, var_2.b.a.c), abs(vec3<i32>(var_2.b.a.c, global0.b, -2147483647i)))), 0i, var_2.a));
}

