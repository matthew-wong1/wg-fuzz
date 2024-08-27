struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: bool,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5>;

var<private> global1: Struct_1 = Struct_1(vec4<bool>(false, true, true, false), vec3<bool>(true, true, true), true, vec3<f32>(-1425f, -1000f, -252f));

var<private> global2: array<vec4<bool>, 31> = array<vec4<bool>, 31>(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    var var_0 = Struct_1(vec4<bool>(select(any(global1.a), any(!global1.a), false), arg_0.x, select(global1.b.x, any(vec4<bool>(true, false, false, true)), all(global1.a.zwy)) && (arg_0.x == global1.b.x), select(!(95774u > u_input.b), false, _wgslsmith_sub_u32(68034u, u_input.b) < ~u_input.b)), vec3<bool>(!((u_input.b == u_input.b) && !arg_0.x), true, u_input.b <= _wgslsmith_mod_u32(reverseBits(105800u), ~u_input.b)), false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1.d.x, global1.d.x, global1.d.x))) + _wgslsmith_f_op_vec3_f32(global1.d - global1.d)), global1.d)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(global1.d.x, global1.d.x, 650f), _wgslsmith_f_op_vec3_f32(vec3<f32>(491f, global1.d.x, -1210f) + vec3<f32>(global1.d.x, global1.d.x, -700f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-global1.d), vec3<f32>(global1.d.x, 1522f, global1.d.x))), vec3<bool>(true, true, true)))));
    global2 = array<vec4<bool>, 31>();
    let var_1 = ~(-1i);
    var var_2 = !global1.a;
    let var_3 = vec4<u32>(_wgslsmith_add_u32(u_input.b, 3604u) | 1u, 4294967295u, ~countOneBits(~(~u_input.b)), _wgslsmith_mult_u32(u_input.b, u_input.b));
    return 52165u;
}

fn func_2(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = arg_0.d.x;
    let var_1 = global2[_wgslsmith_index_u32(select(~func_3(!vec3<bool>(true, global1.b.x, true)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u), _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 39506u), vec2<u32>(75944u, u_input.b)), countOneBits(vec2<u32>(24111u, u_input.b)))), any(!(!(!arg_0.a.wzy)))), 31u)];
    global2 = array<vec4<bool>, 31>();
    let var_2 = 768f;
    let var_3 = arg_0;
    return select(select(var_1.xwx, !(!(!global1.a.yyw)), !any(var_1.wxy)), vec3<bool>(false, arg_0.b.x, !(false || all(vec4<bool>(true, var_1.x, true, false)))), var_1.yzz);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: vec4<i32>, arg_3: f32) -> i32 {
    let var_0 = any(!func_2(Struct_1(select(vec4<bool>(global1.b.x, true, true, global1.a.x), vec4<bool>(arg_1.x, global1.c, false, arg_1.x), vec4<bool>(global1.b.x, true, false, global1.c)), arg_1.wwy, all(global1.b.xx), _wgslsmith_div_vec3_f32(global1.d, vec3<f32>(-534f, -449f, -418f)))));
    global2 = array<vec4<bool>, 31>();
    var var_1 = global1.a.x;
    var var_2 = _wgslsmith_add_vec3_i32(vec3<i32>(29260i, -7746i, ~(-1i)), u_input.a.zxx);
    global2 = array<vec4<bool>, 31>();
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(~vec4<u32>(abs(4294967295u), ~27682u, u_input.b ^ 6856u, 0u)) ^ vec4<u32>(u_input.b, ~1u & u_input.b, ~_wgslsmith_sub_u32(u_input.b << (u_input.b % 32u), select(59798u, 0u, true)), 1213u);
    let var_1 = -(51432i ^ reverseBits(u_input.e.x));
    let var_2 = Struct_1(select(global1.a, !(!global2[_wgslsmith_index_u32(~var_0.x, 31u)]), vec4<bool>(true, all(vec2<bool>(false, global1.b.x)), global1.d.x <= 1458f, true == !global1.a.x)), !vec3<bool>(global1.d.x != -447f, select(true, true, global1.b.x) && any(vec2<bool>(true, false)), global1.c & all(vec3<bool>(global1.a.x, true, true))), false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1832f, -2298f, -1000f) - vec3<f32>(global1.d.x, global1.d.x, global1.d.x)))))));
    global2 = array<vec4<bool>, 31>();
    var var_3 = var_2;
    let var_4 = var_2;
    var var_5 = Struct_1(vec4<bool>(false && !var_3.a.x, var_2.b.x, !(!var_2.b.x & true), !(var_3.b.x | var_4.c)), var_2.a.zxw, select(var_2.b.x, !(!var_3.a.x), false), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global1.d), var_4.d)));
    let var_6 = u_input.c.yy;
    let x = u_input.a;
    s_output = StorageBuffer(1u, ~countOneBits(u_input.e.x >> (14591u % 32u)) >> (var_0.x % 32u), vec3<u32>(countOneBits(89961u), _wgslsmith_div_u32(_wgslsmith_clamp_u32(var_0.x, 1u, 1u), u_input.b) << (~16739u % 32u), 4294967295u), func_1(_wgslsmith_sub_vec4_i32((u_input.c << (vec4<u32>(1u, 1344u, u_input.b, u_input.b) % vec4<u32>(32u))) & u_input.c, vec4<i32>(-var_1, i32(-1i) * -2147483647i, -1i, -u_input.c.x)), var_5.a, u_input.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_5.d.x, global1.d.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d.x) + -308f))), ~max(-u_input.c.zyw ^ _wgslsmith_clamp_vec3_i32(u_input.a.xyy, u_input.a.yzy, vec3<i32>(3706i, var_6.x, 2147483647i)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, global0[_wgslsmith_index_u32(var_0.x, 5u)], global0[_wgslsmith_index_u32(0u, 5u)]), u_input.c.wxw & u_input.c.wwx)));
}

