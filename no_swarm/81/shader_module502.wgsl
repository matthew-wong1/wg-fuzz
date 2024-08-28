struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2, arg_3: bool) -> vec3<f32> {
    var var_0 = Struct_2(Struct_1(-1i, _wgslsmith_add_vec3_u32(~(~vec3<u32>(arg_2.b, 34670u, 43729u)), arg_0.b), -arg_0.c), arg_0.b.x);
    global0 = array<Struct_2, 31>();
    global0 = array<Struct_2, 31>();
    return _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -977f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1289f, -543f) - -737f)))));
}

fn func_2(arg_0: i32) -> Struct_1 {
    global0 = array<Struct_2, 31>();
    global0 = array<Struct_2, 31>();
    var var_0 = vec3<f32>(-1000f, -194f, 740f);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(arg_0, vec3<u32>(1u, u_input.a, 1u), vec2<i32>(arg_0, u_input.b.x)), _wgslsmith_sub_i32(36776i, u_input.b.x), global0[_wgslsmith_index_u32(u_input.c.x, 31u)], true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 526f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(_wgslsmith_mult_i32(arg_0, -2147483647i), vec3<u32>(14296u, u_input.a, u_input.a) & vec3<u32>(0u, 66535u, u_input.c.x), _wgslsmith_div_vec2_i32(vec2<i32>(arg_0, arg_0), u_input.b.yy)), max(i32(-1i) * -26669i, u_input.b.x >> (u_input.c.x % 32u)), Struct_2(Struct_1(u_input.b.x, vec3<u32>(u_input.c.x, 43688u, u_input.a), u_input.b.xz), 2250u), select(true, any(vec3<bool>(true, false, false)), true))) + _wgslsmith_f_op_vec3_f32(func_3(Struct_1(-1i, ~vec3<u32>(40387u, u_input.c.x, 6189u), firstLeadingBit(vec2<i32>(-1i, arg_0))), i32(-1i) * -31132i, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c.x, u_input.c.x), 31u)], false))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.x, -117f, var_1.x)))))));
    return Struct_1(_wgslsmith_clamp_i32(arg_0, 2147483647i, u_input.b.x), vec3<u32>(min(~u_input.a, ~(u_input.c.x & 0u)), _wgslsmith_div_u32(~27067u, ~u_input.a), 0u), _wgslsmith_add_vec2_i32(~vec2<i32>(u_input.b.x, i32(-1i) * -1i), (-vec2<i32>(arg_0, u_input.b.x) << (~u_input.c % vec2<u32>(32u))) ^ vec2<i32>(~(-3018i), 80632i)));
}

fn func_1() -> StorageBuffer {
    let var_0 = func_2(30552i);
    let var_1 = (_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(-2147483647i, var_0.b, u_input.b.yz), 5915i, global0[_wgslsmith_index_u32(0u, 31u)], true)).x + _wgslsmith_f_op_f32(-653f - 1000f)))) > _wgslsmith_div_f32(-785f, _wgslsmith_f_op_f32(f32(-1f) * -100f))) & true;
    var var_2 = ~(-abs(u_input.b.x));
    global0 = array<Struct_2, 31>();
    var var_3 = vec2<bool>(true, firstLeadingBit(_wgslsmith_dot_vec2_i32(u_input.b.xx, -vec2<i32>(u_input.b.x, var_0.c.x))) >= -2147483647i);
    return StorageBuffer(u_input.b.xz);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 31>();
    global0 = array<Struct_2, 31>();
    var var_0 = ~u_input.a;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-161f * -2073f));
    global0 = array<Struct_2, 31>();
    let x = u_input.a;
    s_output = func_1();
}

