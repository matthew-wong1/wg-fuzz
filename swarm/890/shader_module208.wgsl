struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
    c: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: vec3<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    let var_0 = Struct_4(global0.a, -275f);
    global1 = vec3<bool>(any(global1.xy), global1.x, abs(_wgslsmith_dot_vec4_i32(select(vec4<i32>(27486i, -1i, -14835i, -1i), vec4<i32>(-2147483647i, u_input.b, u_input.a, u_input.c), false), vec4<i32>(5427i, u_input.c, u_input.c, -1i) | vec4<i32>(u_input.a, u_input.c, u_input.a, u_input.b))) <= ~1i);
    let var_1 = var_0.a;
    return -u_input.a;
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: i32, arg_3: Struct_1) -> i32 {
    let var_0 = Struct_3(arg_2, select(vec3<bool>(false, true, any(global1.yz) | any(vec3<bool>(false, arg_3.a, global0.a.a))), vec3<bool>(true, true, arg_3.a), true), all(global1.xx));
    return func_3();
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: i32, arg_3: Struct_3) -> vec3<bool> {
    let var_0 = _wgslsmith_mult_vec3_i32(min((vec3<i32>(-1i) * -vec3<i32>(arg_3.a, u_input.b, arg_2)) & ((vec3<i32>(arg_2, arg_3.a, -59308i) >> (vec3<u32>(24625u, u_input.d, u_input.d) % vec3<u32>(32u))) | vec3<i32>(arg_3.a, u_input.a, arg_2)), reverseBits(abs(vec3<i32>(2852i, arg_1.a, arg_2)) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, arg_1.a, 58020i), vec3<i32>(-35232i, arg_1.a, u_input.a)))), vec3<i32>(2147483647i, ~_wgslsmith_mult_i32(1i, arg_2), -_wgslsmith_clamp_i32(44702i, arg_2, -37756i)) << ((vec3<u32>(51762u & u_input.e, 0u, 27118u) >> (min(abs(vec3<u32>(u_input.d, 25288u, 81310u)), ~vec3<u32>(23242u, u_input.e, 2976u)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    global0 = Struct_4(global0.a, global0.b);
    var var_1 = arg_1;
    global0 = Struct_4(arg_0, 1429f);
    let var_2 = Struct_2(~(~(~vec2<u32>(0u, u_input.e))), arg_2, arg_0);
    return arg_1.b;
}

fn func_1() -> Struct_4 {
    let var_0 = min(~_wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(10664u, u_input.d)), vec2<u32>(1u, abs(u_input.d))), min(_wgslsmith_mod_u32(_wgslsmith_sub_u32(countOneBits(u_input.e), u_input.e >> (u_input.d % 32u)), _wgslsmith_sub_u32(u_input.e, 72982u)), ~1u));
    var var_1 = global0.b;
    let var_2 = Struct_3(u_input.a, !select(vec3<bool>(var_0 >= u_input.d, all(vec4<bool>(global1.x, global0.a.a, true, false)), true), func_4(global0.a, Struct_3(u_input.b, vec3<bool>(true, global0.a.a, true), global1.x), func_2(1u, vec3<u32>(0u, 1u, 71541u), -19139i, global0.a), Struct_3(u_input.c, vec3<bool>(global0.a.a, false, true), true)), !func_4(global0.a, Struct_3(-23845i, vec3<bool>(true, global0.a.a, global1.x), global1.x), 10276i, Struct_3(u_input.b, vec3<bool>(global1.x, true, global1.x), global1.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1053f + -717f)), global0.b)) < _wgslsmith_f_op_f32(floor(337f)));
    global0 = Struct_4(Struct_1(var_2.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) + -240f));
    return Struct_4(Struct_1(_wgslsmith_f_op_f32(select(1661f, -602f, global0.b >= -151f)) == _wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(global0.b * global0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -374f) + -1022f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1589u;
    var var_1 = vec4<i32>(40730i, min(-75413i, 970i), ~(-u_input.c), -2147483647i) & (-vec4<i32>(u_input.b, u_input.b, max(u_input.b, u_input.a), _wgslsmith_sub_i32(u_input.b, 30342i)) | (vec4<i32>(-1i) * -firstTrailingBit(vec4<i32>(16893i, -2147483647i, u_input.c, -2147483647i))));
    global0 = func_1();
    global0 = func_1();
    global0 = Struct_4(global0.a, global0.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.yyy, ~(~(~var_0)), 60841i);
}

