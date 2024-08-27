struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: vec2<i32> = vec2<i32>(-15809i, 38823i);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<i32> {
    var var_0 = -(-vec4<i32>(2147483647i, global1.x, global1.x | -87608i, ~(-290i)) << ((~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) << (~(~vec4<u32>(36614u, u_input.a, 73135u, u_input.a)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1050f, 343f, global0.x, global0.x) + vec4<f32>(-232f, -1000f, global0.x, global0.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(267f, -180f, global0.x, -1600f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1021f, global0.x, 317f, 2128f))))));
    let var_2 = Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(var_0.x, 23213i, global1.x) >> (~78514u % 32u), ~(global1.x >> (u_input.a % 32u)), _wgslsmith_div_i32(_wgslsmith_clamp_i32(global1.x, -32689i, var_0.x), 1i)), vec3<i32>(~abs(91533i), 1i, -1i)));
    return _wgslsmith_sub_vec3_i32(~var_2.a, var_0.xyy);
}

fn func_2(arg_0: vec4<u32>, arg_1: i32) -> vec2<i32> {
    let var_0 = Struct_2(arg_0.ywx, Struct_1(~_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-10679i, -1i, -2147483647i), vec3<i32>(global1.x, global1.x, -1i)), func_3())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1429f), global0.x))), Struct_1(-(~(~vec3<i32>(global1.x, arg_1, -18300i)))));
    var var_1 = var_0;
    var_1 = var_0;
    global1 = vec2<i32>(-_wgslsmith_clamp_i32(~(global1.x << (u_input.a % 32u)), ~(i32(-1i) * -18377i), _wgslsmith_sub_i32(-2147483647i, var_1.d.a.x & var_1.b.a.x)), var_1.d.a.x);
    var var_2 = _wgslsmith_f_op_f32(floor(global0.x));
    return var_0.b.a.zy;
}

fn func_1(arg_0: bool) -> i32 {
    var var_0 = _wgslsmith_clamp_u32(0u, ~u_input.a, _wgslsmith_div_u32(u_input.a, ~(~u_input.a << (_wgslsmith_add_u32(u_input.a, u_input.a) % 32u))));
    var var_1 = Struct_2(vec3<u32>(u_input.a, ~u_input.a, 4294967295u), Struct_1(_wgslsmith_mult_vec3_i32(~select(vec3<i32>(global1.x, global1.x, global1.x), vec3<i32>(-49656i, global1.x, global1.x), true), firstTrailingBit(vec3<i32>(global1.x, -16020i, global1.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1499f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, 1798f) - _wgslsmith_f_op_f32(-global0.x)) - global0.x))), Struct_1(_wgslsmith_clamp_vec3_i32(~vec3<i32>(global1.x, 0i, 7508i), vec3<i32>(-2147483647i, _wgslsmith_sub_i32(global1.x, global1.x), global1.x | global1.x), vec3<i32>(-1i, _wgslsmith_add_i32(1i, -56668i), global1.x << (u_input.a % 32u)))));
    global1 = _wgslsmith_mult_vec2_i32(-(~var_1.b.a.zx), -func_2(vec4<u32>(~var_1.a.x, ~var_1.a.x, ~var_1.a.x, abs(u_input.a)), 28084i));
    var var_2 = !arg_0;
    global1 = ~vec2<i32>(var_1.b.a.x, global1.x);
    return func_3().x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~(~vec2<i32>(14479i >> (u_input.a % 32u), func_1(true))) ^ vec2<i32>(~2147483647i, global1.x);
    global0 = vec4<f32>(299f, 567f, global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -587f) * 2247f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(max(global0.x, global0.x))))))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(1190f - 1500f), _wgslsmith_f_op_f32(839f * global0.x), _wgslsmith_f_op_f32(939f + -877f), 1596f))))));
    var var_0 = _wgslsmith_f_op_f32(trunc(756f));
    let var_1 = Struct_2((~vec3<u32>(4294967295u, 4294967295u, u_input.a) & vec3<u32>(~u_input.a, 41452u, _wgslsmith_dot_vec2_u32(vec2<u32>(41240u, u_input.a), vec2<u32>(1u, 78912u)))) << (((vec3<u32>(1u, u_input.a, u_input.a) ^ vec3<u32>(u_input.a, 74889u, 4294967295u)) << (firstTrailingBit(vec3<u32>(77685u, u_input.a, 1u)) % vec3<u32>(32u))) % vec3<u32>(32u)), Struct_1(select(select(-vec3<i32>(global1.x, global1.x, global1.x), _wgslsmith_sub_vec3_i32(vec3<i32>(global1.x, 1881i, global1.x), vec3<i32>(2147483647i, global1.x, global1.x)), vec3<bool>(true, true, true)), vec3<i32>(-1i) * -vec3<i32>(1i, 0i, 14154i), true)), _wgslsmith_f_op_f32(-global0.x), Struct_1(-_wgslsmith_clamp_vec3_i32(min(vec3<i32>(-1507i, 71454i, -2147483647i), vec3<i32>(global1.x, 25002i, global1.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(global1.x, global1.x, global1.x), vec3<i32>(0i, -21929i, -49645i), vec3<i32>(global1.x, -44325i, -70533i)), ~vec3<i32>(-20811i, global1.x, -2147483647i))));
    var var_2 = max(var_1.d.a.xx, var_1.b.a.xx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(751f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(global0.ww, vec2<f32>(_wgslsmith_f_op_f32(round(-1149f)), _wgslsmith_f_op_f32(floor(var_1.c))))) * global0.xx));
}

