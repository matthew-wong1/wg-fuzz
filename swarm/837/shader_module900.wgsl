struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec3<bool>,
    c: vec4<i32>,
    d: Struct_3,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28>;

var<private> global1: array<vec4<i32>, 30>;

var<private> global2: Struct_4;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: i32, arg_1: i32) -> i32 {
    var var_0 = global2.d;
    global1 = array<vec4<i32>, 30>();
    global0 = array<f32, 28>();
    global1 = array<vec4<i32>, 30>();
    global0 = array<f32, 28>();
    return 1i;
}

fn func_3(arg_0: u32) -> vec2<f32> {
    global0 = array<f32, 28>();
    global2 = Struct_4(max(_wgslsmith_mod_u32(global2.a, ~firstTrailingBit(101897u)), ~arg_0), !global2.b, _wgslsmith_div_vec4_i32(countOneBits(global2.c), vec4<i32>((-4448i | global2.d.a.x) & 4352i, u_input.d, ~(19682i | u_input.c.x), abs(min(u_input.d, global2.d.a.x)))), global2.d, false);
    global0 = array<f32, 28>();
    global0 = array<f32, 28>();
    var var_0 = false;
    return global2.d.b.a;
}

fn func_1(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_3) -> Struct_2 {
    let var_0 = func_2(_wgslsmith_clamp_i32(reverseBits(2147483647i), 1i, arg_1.a.x), 25403i);
    let var_1 = global2.c.yzy;
    global1 = array<vec4<i32>, 30>();
    global1 = array<vec4<i32>, 30>();
    let var_2 = _wgslsmith_f_op_vec2_f32(func_3(global2.a));
    return Struct_2(global2.d.b);
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_2) -> Struct_4 {
    global1 = array<vec4<i32>, 30>();
    var var_0 = select(vec2<bool>(any(select(global2.b.zx, !vec2<bool>(global2.b.x, arg_2.a.b), global2.b.x)), !(false || arg_0)), vec2<bool>(true, any(select(vec3<bool>(global2.b.x, global2.d.b.b, arg_2.a.b), vec3<bool>(arg_2.a.b, false, false), vec3<bool>(arg_2.a.b, arg_0, false)))), all(select(vec2<bool>(arg_1.x > global0[_wgslsmith_index_u32(1u, 28u)], func_1(Struct_4(26382u, vec3<bool>(arg_0, true, arg_0), global1[_wgslsmith_index_u32(12450u, 30u)], global2.d, true), global2.d, global2.d).a.b), global2.b.xx, global2.b.zy)));
    return Struct_4(u_input.e.x, !select(vec3<bool>(false, true, arg_2.a.b), global2.b, true), ~vec4<i32>(-5548i, global2.c.x, global2.c.x, _wgslsmith_mod_i32(-14068i, u_input.a.x)), Struct_3(reverseBits(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-31467i, 1i, u_input.a.x), vec3<i32>(global2.c.x, u_input.c.x, global2.c.x)), u_input.a.xxx)), Struct_1(global2.d.b.a, true, arg_2.a.a.x)), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.c.zw;
    global2 = func_4(true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.d.b.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(438f * global0[_wgslsmith_index_u32(u_input.e.x, 28u)]), _wgslsmith_f_op_f32(global2.d.b.c * global2.d.b.a.x))), global0[_wgslsmith_index_u32(314u, 28u)])), func_1(Struct_4(_wgslsmith_sub_u32(0u, 0u), global2.b, abs(vec4<i32>(var_0.x, -2147483647i, u_input.c.x, 9686i)), global2.d, true), Struct_3(abs(u_input.a.wxx), Struct_1(_wgslsmith_f_op_vec2_f32(-global2.d.b.a), global2.e, global0[_wgslsmith_index_u32(~u_input.e.x, 28u)])), global2.d));
    let var_1 = any(!global2.b.yy);
    var var_2 = ~firstTrailingBit(~vec4<u32>(u_input.e.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global2.a, 53418u), vec2<u32>(u_input.e.x, u_input.e.x)), 152862u, u_input.e.x));
    let var_3 = global2.b.zy;
    global0 = array<f32, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(~vec2<u32>(0u, var_2.x)))), 879f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-381f, -556f, 397f, global2.d.b.c)) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -109f), -1753f, global2.d.b.c, _wgslsmith_f_op_f32(round(global2.d.b.c))))), global2.a);
}

