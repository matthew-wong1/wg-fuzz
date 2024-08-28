struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<f32, 20> = array<f32, 20>(220f, -974f, 643f, -1007f, -187f, 1028f, 217f, 1237f, 753f, 1239f, 843f, 471f, -1121f, 853f, -931f, -147f, -1306f, 220f, 294f, 1195f);

var<private> global2: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(false, -46332i, -1619f, 39088i), Struct_2(false, i32(-2147483648), -1123f, -8041i));

var<private> global3: array<Struct_2, 21>;

var<private> global4: array<vec2<i32>, 30> = array<vec2<i32>, 30>(vec2<i32>(-24440i, 0i), vec2<i32>(1i, 27327i), vec2<i32>(12977i, i32(-2147483648)), vec2<i32>(8043i, 0i), vec2<i32>(-50444i, 2147483647i), vec2<i32>(-1i, 8401i), vec2<i32>(1i, 0i), vec2<i32>(-48392i, 2147483647i), vec2<i32>(1i, -44464i), vec2<i32>(-22819i, 2147483647i), vec2<i32>(0i, -8755i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(9999i, -42733i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(14479i, 19455i), vec2<i32>(-1i, -30704i), vec2<i32>(1i, -2838i), vec2<i32>(0i, -58862i), vec2<i32>(-664i, 2147483647i), vec2<i32>(-39666i, 0i), vec2<i32>(-1i, -12010i), vec2<i32>(0i, 1i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(-28286i, 1i), vec2<i32>(-17711i, -6231i), vec2<i32>(1i, 1i), vec2<i32>(1i, 2147483647i), vec2<i32>(2147483647i, 20207i), vec2<i32>(-9715i, -1i), vec2<i32>(2147483647i, 5378i));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = vec3<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_sub_i32(arg_0.a.x, firstLeadingBit(arg_0.a.x)), arg_0.a.x), 1i), 1i, -reverseBits(_wgslsmith_mult_i32(abs(-1i), u_input.a)));
    let var_1 = arg_0.c;
    global1 = array<f32, 20>();
    global2 = array<Struct_2, 2>();
    global0 = any(vec2<bool>(true, 43015i <= u_input.b.x));
    return !(!vec2<bool>(!(-15896i >= var_1), true));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: vec4<f32>) -> vec2<bool> {
    let var_0 = Struct_1(-u_input.b.zwz, vec2<u32>(~firstTrailingBit(countOneBits(4294967295u)), u_input.c.x), max(-1i, 1i));
    let var_1 = !select(vec3<bool>(func_2(var_0).x, func_2(Struct_1(vec3<i32>(-125i, var_0.a.x, 2147483647i), var_0.b, 0i)).x, !any(vec4<bool>(true, arg_1.x, arg_0.x, arg_0.x))), vec3<bool>(_wgslsmith_f_op_f32(-270f - 752f) <= _wgslsmith_f_op_f32(-559f - global1[_wgslsmith_index_u32(23458u, 20u)]), false, !(arg_1.x && true)), any(vec3<bool>(select(arg_0.x, arg_0.x, false), 1u != u_input.c.x, !arg_0.x)));
    let var_2 = arg_2.yy;
    var var_3 = -347f;
    global4 = array<vec2<i32>, 30>();
    return func_2(var_0);
}

fn func_1() -> i32 {
    global4 = array<vec2<i32>, 30>();
    let var_0 = _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(36870u, 20u)], global1[_wgslsmith_index_u32(abs(abs(~u_input.c.x)) >> (u_input.c.x % 32u), 20u)], any(!select(func_2(Struct_1(u_input.b.xxz, vec2<u32>(u_input.c.x, u_input.c.x), -1i)), func_3(vec2<bool>(true, true), vec2<bool>(true, true), vec4<f32>(1376f, 899f, global1[_wgslsmith_index_u32(20896u, 20u)], global1[_wgslsmith_index_u32(u_input.c.x, 20u)])), select(vec2<bool>(false, false), vec2<bool>(false, true), false)))));
    var var_1 = false;
    var var_2 = _wgslsmith_div_vec2_i32(vec2<i32>(min(1i, _wgslsmith_add_i32(u_input.a, 2147483647i)), 2147483647i) << (u_input.c.xy % vec2<u32>(32u)), u_input.b.ww);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.c.x, u_input.c.x) | vec2<u32>(0u, u_input.c.x), _wgslsmith_div_vec2_u32(u_input.c.zy, vec2<u32>(15092u, 21390u))), _wgslsmith_mod_vec2_u32(u_input.c.wz >> (u_input.c.zx % vec2<u32>(32u)), vec2<u32>(u_input.c.x, 39098u) & u_input.c.zy)), 20u)]));
    return _wgslsmith_add_i32(var_2.x ^ -1i, _wgslsmith_div_i32(var_2.x, var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 2>();
    var var_0 = abs(func_1());
    let var_1 = abs(u_input.b.yx);
    let var_2 = vec3<u32>(u_input.c.x, _wgslsmith_sub_u32(_wgslsmith_div_u32(firstTrailingBit(~u_input.c.x), 19884u), u_input.c.x), ~(max(max(4294967295u, 1u), 1u) & u_input.c.x));
    let var_3 = select(false || ((~(-35581i) >= func_1()) | all(vec4<bool>(true, true, true, true))), true, any(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false))))));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(reverseBits(u_input.c.wwy) >> (select(vec3<u32>(0u, 0u, 1u), u_input.c.xzw, vec3<bool>(var_3, false, true)) % vec3<u32>(32u))), ~abs(_wgslsmith_clamp_vec3_i32(u_input.b.xzx, ~u_input.b.zzw, vec3<i32>(1i, var_1.x, -60662i))));
}

