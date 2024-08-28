struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 6040i;

var<private> global1: Struct_2 = Struct_2(Struct_1(true, 13335u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> vec2<u32> {
    var var_0 = Struct_2(global1.a);
    var_0 = Struct_2(Struct_1(false, 1u));
    var var_1 = Struct_2(var_0.a);
    var_0 = Struct_2(var_0.a);
    let var_2 = Struct_1(!global1.a.a, u_input.e.x);
    return ~countOneBits(vec2<u32>(~var_2.b & countOneBits(69967u), 40599u));
}

fn func_2(arg_0: f32) -> u32 {
    var var_0 = global1.a.a;
    let var_1 = firstTrailingBit(u_input.e);
    var var_2 = _wgslsmith_add_vec2_u32(func_3(), u_input.e);
    var var_3 = Struct_2(global1.a);
    var var_4 = _wgslsmith_sub_vec4_i32(-vec4<i32>(_wgslsmith_clamp_i32(u_input.c.x, -27687i, 24120i), ~u_input.a.x, u_input.a.x, _wgslsmith_div_i32(-23324i, u_input.a.x)) >> (max(vec4<u32>(1u | var_2.x, _wgslsmith_dot_vec2_u32(u_input.e, vec2<u32>(27535u, 1u)), ~global1.a.b, _wgslsmith_add_u32(52235u, 1u)), ~vec4<u32>(5435u, u_input.e.x, u_input.e.x, var_1.x) >> (min(vec4<u32>(u_input.b, 25639u, 0u, var_3.a.b), vec4<u32>(13474u, var_1.x, 40968u, 63664u)) % vec4<u32>(32u))) % vec4<u32>(32u)), u_input.a);
    return min(abs(var_3.a.b) >> (_wgslsmith_clamp_u32(firstTrailingBit(~0u), _wgslsmith_sub_u32(_wgslsmith_sub_u32(4294967295u, u_input.b), 1u), var_2.x) % 32u), 59377u);
}

fn func_1(arg_0: vec4<f32>) -> Struct_2 {
    var var_0 = Struct_3(-1000f, func_2(arg_0.x));
    let var_1 = Struct_4(false, -246f, Struct_2(global1.a));
    let var_2 = var_1.b;
    let var_3 = abs(_wgslsmith_mult_vec4_i32(u_input.a, _wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(u_input.c.x, u_input.a.x, 0i, -50529i))));
    let var_4 = global1.a.a;
    return Struct_2(global1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(vec4<f32>(-1094f, -548f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-261f, _wgslsmith_f_op_f32(f32(-1f) * -153f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-663f))))));
    var var_0 = Struct_1(false, u_input.d);
    let var_1 = Struct_1(false, 45970u);
    global1 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(543f, 392f, -991f, -1692f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1370f, 871f, -1047f, -1094f), vec4<f32>(555f, 1133f, -1044f, 302f)))))));
    let var_2 = true;
    global0 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(675f, 826f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(297f, 144f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2151f, -867f))))), -abs(vec3<i32>(-38317i, u_input.c.x, -19445i)));
}

