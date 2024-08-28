struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
    d: u32,
    e: vec3<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 24>;

var<private> global1: i32;

var<private> global2: array<Struct_3, 31>;

var<private> global3: f32 = -465f;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(-1262f, 1068f, all(vec3<bool>(true, true, false)))), _wgslsmith_f_op_f32(sign(-277f)))));
    global2 = array<Struct_3, 31>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) + _wgslsmith_f_op_f32(sign(928f))))));
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x)));
    var var_3 = arg_0;
    return 15261i;
}

fn func_2() -> vec4<i32> {
    let var_0 = select(vec2<bool>((func_3(-1i) == -2147483647i) && all(vec4<bool>(true, true, true, true)), true), vec2<bool>(u_input.b == u_input.a, false), true);
    let var_1 = countOneBits(max(u_input.c.yz << (u_input.c.zy % vec2<u32>(32u)), abs(u_input.c.zx) << (vec2<u32>(min(u_input.c.x, 1u), abs(u_input.c.x)) % vec2<u32>(32u))));
    global2 = array<Struct_3, 31>();
    global2 = array<Struct_3, 31>();
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2084f)) + _wgslsmith_f_op_f32(min(404f, -847f)))) * 1f), _wgslsmith_f_op_f32(max(-2537f, 2430f))));
    return vec4<i32>(_wgslsmith_mod_i32(u_input.a, -reverseBits(0i)), 1i, _wgslsmith_dot_vec2_i32(-(~reverseBits(vec2<i32>(u_input.b, -2147483647i))), min(~vec2<i32>(u_input.b, u_input.d.x), (u_input.d << (var_1 % vec2<u32>(32u))) | -vec2<i32>(u_input.b, u_input.b))), -u_input.b);
}

fn func_1(arg_0: Struct_4, arg_1: i32, arg_2: Struct_2, arg_3: Struct_1) -> vec4<i32> {
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(Struct_1(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), true)), -u_input.a, ~(-_wgslsmith_add_vec2_i32(u_input.d, vec2<i32>(u_input.a, u_input.d.x))), firstTrailingBit(vec2<i32>(-1i << (u_input.c.x % 32u), -9868i))), global2[_wgslsmith_index_u32(8158u, 31u)], _wgslsmith_mod_vec4_i32(~(~vec4<i32>(2801i, -11062i, u_input.a, u_input.b) & -vec4<i32>(9029i, -2147483647i, 1i, -2147483647i)), _wgslsmith_div_vec4_i32(select(-vec4<i32>(-50547i, u_input.a, u_input.b, u_input.b), _wgslsmith_sub_vec4_i32(vec4<i32>(-30563i, 1i, u_input.d.x, 32970i), vec4<i32>(u_input.b, u_input.d.x, u_input.d.x, u_input.a)), true), ~func_1(Struct_4(Struct_2(u_input.c, vec2<bool>(true, true), Struct_1(vec2<bool>(true, true), 7994i, u_input.d, vec2<i32>(u_input.a, 2147483647i)), u_input.b, Struct_1(vec2<bool>(true, false), 38684i, vec2<i32>(u_input.b, -38728i), vec2<i32>(u_input.d.x, -2147483647i))), Struct_2(vec3<u32>(u_input.c.x, u_input.c.x, 1u), vec2<bool>(false, true), Struct_1(vec2<bool>(true, false), u_input.a, vec2<i32>(1i, 54730i), u_input.d), u_input.a, Struct_1(vec2<bool>(false, true), 1i, vec2<i32>(u_input.b, u_input.b), u_input.d)), -52032i, 0u, vec3<f32>(866f, 331f, -700f)), 36823i, Struct_2(u_input.c, vec2<bool>(false, true), Struct_1(vec2<bool>(true, true), u_input.a, vec2<i32>(u_input.d.x, -13516i), u_input.d), 1i, Struct_1(vec2<bool>(false, false), u_input.b, vec2<i32>(u_input.d.x, 2147483647i), vec2<i32>(u_input.a, u_input.d.x))), Struct_1(vec2<bool>(false, true), -2147483647i, u_input.d, vec2<i32>(u_input.a, u_input.b))))));
    global3 = 1672f;
    let var_1 = vec4<f32>(var_0.b.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -271f) + var_0.b.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.b.b.x, var_0.b.b.x)))));
    let var_2 = Struct_4(var_0.b.c, var_0.b.c, -41347i, ~(~4294967295u << (~_wgslsmith_dot_vec3_u32(var_0.b.c.a, vec3<u32>(u_input.c.x, 4294967295u, u_input.c.x)) % 32u)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(1000f + var_0.b.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - var_0.b.a.x) + _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(1243f + _wgslsmith_f_op_f32(f32(-1f) * -708f))))));
    var var_3 = var_0.c.wyx;
    global2 = array<Struct_3, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.b.x, 280f, _wgslsmith_dot_vec3_i32(var_0.c.yww & vec3<i32>(-1i, _wgslsmith_add_i32(u_input.d.x, var_3.x), u_input.b), vec3<i32>(select(~1i, func_3(var_2.a.e.b), var_2.a.c.a.x), var_2.a.d, -1i)));
}

