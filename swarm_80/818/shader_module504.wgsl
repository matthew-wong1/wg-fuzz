struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: i32) -> i32 {
    global0 = array<u32, 6>();
    return u_input.e;
}

fn func_2() -> Struct_3 {
    global0 = array<u32, 6>();
    var var_0 = Struct_1(_wgslsmith_div_i32(u_input.e, ~_wgslsmith_add_i32(-u_input.b, countOneBits(-74035i))));
    let var_1 = Struct_3(Struct_2(Struct_1(-1i), -func_3(Struct_1(u_input.e), vec2<u32>(u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 6u)], 6u)], 6u)]), 0i), Struct_1(-abs(-1i)), (firstTrailingBit(u_input.a) & (u_input.d >> (vec4<u32>(1u, 0u, 56296u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 6u)], 6u)]) % vec4<u32>(32u)))) | reverseBits(reverseBits(vec4<u32>(u_input.d.x, 58760u, u_input.a.x, 4294967295u))), ~abs(vec4<i32>(52183i, var_0.a, var_0.a, 2147483647i))), abs(~vec2<i32>(-var_0.a, u_input.b | u_input.e)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1243f + 226f) - _wgslsmith_f_op_f32(sign(1940f))), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -297f)))));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-674f)) - var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -2118f));
    return var_1;
}

fn func_1() -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-394f)))));
    let var_1 = _wgslsmith_add_vec4_u32(~select(vec4<u32>(~u_input.a.x, u_input.d.x, u_input.a.x, 15548u), vec4<u32>(~1u, 100424u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(firstTrailingBit(27209u), 6u)], 6u)], u_input.d.x), false), ~u_input.a);
    var var_2 = func_2();
    global0 = array<u32, 6>();
    global0 = array<u32, 6>();
    return vec2<bool>(false, any(vec2<bool>(false, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.d;
    let var_1 = u_input.d.xxz;
    var var_2 = func_1();
    let var_3 = !select(!(!vec3<bool>(var_2.x, true, var_2.x)), vec3<bool>(true, false, true), select(vec3<bool>(any(vec3<bool>(true, true, false)), true, var_2.x), !select(vec3<bool>(var_2.x, true, var_2.x), vec3<bool>(false, var_2.x, true), var_2.x), !vec3<bool>(var_2.x, var_2.x, var_2.x)));
    global0 = array<u32, 6>();
    var var_4 = vec4<bool>(all(!(!(!vec4<bool>(var_3.x, var_2.x, var_3.x, true)))), true, true, 0u >= _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 14770u), func_2().a.d.zw), var_1.x));
    var var_5 = select(var_2.x, true, (_wgslsmith_sub_i32(abs(u_input.b), firstLeadingBit(564i)) ^ u_input.e) != countOneBits(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(1i, -1i, -1112i), vec3<i32>(1i, 1i, -1i)), vec3<i32>(-2147483647i, 38947i, -41648i))));
    var_2 = var_4.xz;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

