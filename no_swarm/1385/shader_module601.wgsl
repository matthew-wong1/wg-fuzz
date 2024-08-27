struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: bool,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
    c: bool,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec4<u32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<i32, 20>;

var<private> global2: array<i32, 20> = array<i32, 20>(20807i, 13680i, 0i, -16677i, 5264i, 1i, -1i, i32(-2147483648), i32(-2147483648), 24727i, 37674i, 62346i, i32(-2147483648), -1i, i32(-2147483648), 2147483647i, -39813i, i32(-2147483648), 8734i, 11867i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>) -> vec3<u32> {
    var var_0 = -1036i << (_wgslsmith_mod_u32(u_input.b.x, ~firstLeadingBit(u_input.b.x)) % 32u);
    var var_1 = vec4<f32>(492f, _wgslsmith_f_op_f32(sign(-842f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-260f * 1110f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-224f))))), _wgslsmith_f_op_f32(f32(-1f) * -331f));
    var_0 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(45850u, u_input.b.x ^ 0u, ~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(u_input.b, ~vec4<u32>(0u, u_input.b.x, 4294967295u, u_input.b.x)), 0u)), 20u)];
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-132f, var_1.x, var_1.x, -1314f) + vec4<f32>(-421f, var_1.x, var_1.x, -449f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, -172f, var_1.x, var_1.x), vec4<f32>(var_1.x, 387f, -361f, var_1.x), true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -1372f, 1991f, var_1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-621f, var_1.x, -779f, -1141f), vec4<f32>(-147f, 1153f, var_1.x, -979f))))))));
    var var_2 = _wgslsmith_clamp_vec2_i32(arg_0.xw, arg_0.xy, reverseBits(firstTrailingBit(-_wgslsmith_mult_vec2_i32(arg_0.xx, vec2<i32>(2147483647i, 1i)))));
    return firstTrailingBit(u_input.b.xwy) << (u_input.b.wyw % vec3<u32>(32u));
}

fn func_4(arg_0: Struct_5, arg_1: vec2<f32>) -> bool {
    let var_0 = global2[_wgslsmith_index_u32(arg_0.c.x, 20u)] ^ 1i;
    var var_1 = -_wgslsmith_clamp_vec4_i32(~(~reverseBits(vec4<i32>(u_input.a, global2[_wgslsmith_index_u32(1u, 20u)], u_input.a, -66755i))), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, u_input.a, global1[_wgslsmith_index_u32(0u, 20u)], -3416i), vec4<i32>(global1[_wgslsmith_index_u32(29508u, 20u)], var_0, u_input.a, 14636i)), vec4<i32>(16150i, u_input.a, -25959i, u_input.a)) & _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0, global2[_wgslsmith_index_u32(u_input.b.x, 20u)], global2[_wgslsmith_index_u32(4294967295u, 20u)], 17462i), vec4<i32>(u_input.a, -2147483647i, 17225i, global2[_wgslsmith_index_u32(u_input.b.x, 20u)])), -vec4<i32>(21491i, 57811i, 1892i, -1i)), vec4<i32>(firstTrailingBit(-global1[_wgslsmith_index_u32(arg_0.a.x, 20u)]), -2147483647i, 1i, var_0));
    var var_2 = vec4<f32>(_wgslsmith_div_f32(-1599f, 325f), -590f, 548f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.x)) + _wgslsmith_f_op_f32(arg_0.d.x + arg_0.d.x)), arg_1.x))));
    let var_3 = Struct_1(abs(-_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, -837i, var_1.x), var_1.xyy, vec3<i32>(u_input.a, global1[_wgslsmith_index_u32(u_input.b.x, 20u)], 0i)), var_1.yxx)));
    global0 = all(vec4<bool>(true, arg_0.b.x, !(!(!arg_0.b.x)), arg_0.b.x));
    return _wgslsmith_dot_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(378u, 20u)], var_1.x, var_3.a.x), _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(var_3.a, var_3.a) << ((vec3<u32>(arg_0.a.x, 11956u, arg_0.a.x) << (vec3<u32>(4294967295u, u_input.b.x, 1u) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(var_3.a, var_1.zxy, vec3<i32>(var_1.x, 7436i, -63805i) ^ vec3<i32>(-17125i, 17422i, global1[_wgslsmith_index_u32(81775u, 20u)])))) >= ~firstTrailingBit(0i);
}

fn func_5(arg_0: bool, arg_1: Struct_3) -> bool {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2012f, 375f) - vec2<f32>(arg_1.d.e, arg_1.d.e)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-153f, 1150f))))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(323f, _wgslsmith_f_op_f32(ceil(arg_1.d.e))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.d.e, arg_1.d.e) - vec2<f32>(arg_1.d.e, arg_1.d.e))))));
    var var_1 = 1551f;
    let var_2 = Struct_3(arg_1.d.b, Struct_1(-vec3<i32>(1i, 1i, 1i)), max((_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.c.x, global1[_wgslsmith_index_u32(40944u, 20u)]), arg_1.d.a.a.yx, vec2<i32>(2147483647i, -22475i)) << (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u))) << (u_input.b.yy % vec2<u32>(32u)), vec2<i32>(~(-2147483647i), ~arg_1.b.a.x & _wgslsmith_div_i32(u_input.a, 1i))), Struct_2(Struct_1(arg_1.b.a), arg_1.d.a, arg_1.d.c, select(false, all(select(vec4<bool>(false, arg_1.d.c, false, false), vec4<bool>(arg_0, arg_1.d.c, false, false), vec4<bool>(arg_0, arg_0, arg_0, arg_0))), arg_1.d.d), _wgslsmith_f_op_f32(step(-354f, _wgslsmith_f_op_f32(floor(var_0.x))))));
    var var_3 = all(select(select(vec2<bool>(true, all(vec4<bool>(true, arg_1.d.d, false, true))), select(vec2<bool>(var_2.d.c, arg_1.d.d), vec2<bool>(false, true), !vec2<bool>(arg_0, arg_1.d.d)), vec2<bool>(u_input.b.x >= 90495u, var_2.d.d)), select(select(vec2<bool>(true, arg_0), select(vec2<bool>(arg_1.d.c, arg_0), vec2<bool>(arg_0, false), var_2.d.c), vec2<bool>(arg_0, arg_0)), vec2<bool>(arg_0, var_2.d.c), true), select(vec2<bool>(true, var_2.d.e >= var_2.d.e), vec2<bool>(!arg_1.d.d, true), select(!vec2<bool>(true, var_2.d.d), !vec2<bool>(var_2.d.d, true), vec2<bool>(false, true)))));
    global0 = false;
    return arg_1.d.c;
}

fn func_2(arg_0: Struct_5) -> f32 {
    let var_0 = abs(u_input.a);
    global0 = func_5(func_4(Struct_5(func_3(vec4<i32>(-1i, -1i, global1[_wgslsmith_index_u32(1u, 20u)], var_0)), arg_0.b, u_input.b, arg_0.d), _wgslsmith_f_op_vec2_f32(arg_0.d.zy + _wgslsmith_f_op_vec2_f32(select(arg_0.d.xx, arg_0.d.xx, false)))), Struct_3(Struct_1(~vec3<i32>(43585i, global2[_wgslsmith_index_u32(1u, 20u)], 1i)), Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(var_0, -18127i, -1123i), vec3<i32>(-38783i, global2[_wgslsmith_index_u32(0u, 20u)], 35785i))), abs(~vec2<i32>(global1[_wgslsmith_index_u32(0u, 20u)], 1i)), Struct_2(Struct_1(vec3<i32>(u_input.a, global2[_wgslsmith_index_u32(u_input.b.x, 20u)], var_0)), Struct_1(vec3<i32>(global1[_wgslsmith_index_u32(arg_0.c.x, 20u)], 0i, -49377i)), arg_0.b.x, arg_0.b.x, _wgslsmith_f_op_f32(select(arg_0.d.x, 635f, arg_0.b.x))))) & all(vec3<bool>(_wgslsmith_f_op_f32(arg_0.d.x * arg_0.d.x) == _wgslsmith_f_op_f32(-273f + 1878f), arg_0.b.x, select(arg_0.b.x, global2[_wgslsmith_index_u32(53713u, 20u)] < 1i, true)));
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.d.x, arg_0.d.x, -1665f, arg_0.d.x), vec4<f32>(1000f, -1000f, arg_0.d.x, 1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1319f, arg_0.d.x, arg_0.d.x, -1555f))))));
    var var_2 = global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~u_input.b.yzy, vec3<u32>(u_input.b.x, ~58273u, arg_0.a.x)), ~4294967295u), 20u)];
    var var_3 = Struct_4(Struct_1(~(-(~vec3<i32>(var_0, -29139i, u_input.a)))), ~(~vec4<i32>(0i, 0i, global1[_wgslsmith_index_u32(arg_0.a.x, 20u)], global1[_wgslsmith_index_u32(arg_0.a.x, 20u)])) ^ firstLeadingBit(vec4<i32>(u_input.a, u_input.a, var_0, global2[_wgslsmith_index_u32(u_input.b.x, 20u)]) << (vec4<u32>(u_input.b.x, u_input.b.x, 0u, arg_0.a.x) % vec4<u32>(32u))), arg_0.b.x, vec4<f32>(_wgslsmith_div_f32(arg_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(549f)) - arg_0.d.x)), _wgslsmith_div_f32(-784f, var_1.x), arg_0.d.x, 738f), _wgslsmith_mult_vec3_i32(~(~firstLeadingBit(vec3<i32>(1i, global2[_wgslsmith_index_u32(u_input.b.x, 20u)], 99085i))), _wgslsmith_clamp_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(3846u, 20u)], var_0, global2[_wgslsmith_index_u32(arg_0.a.x, 20u)]), vec3<i32>(-2147483647i, 2147483647i, -1i), vec3<i32>(-46200i, 1i, global2[_wgslsmith_index_u32(arg_0.c.x, 20u)])), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 26324i, 73899i), -vec3<i32>(u_input.a, u_input.a, 0i)), ~vec3<i32>(var_0, 28687i, -23781i) | vec3<i32>(global1[_wgslsmith_index_u32(arg_0.c.x, 20u)], 27663i, 0i))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -699f), 642f);
}

fn func_6(arg_0: vec3<bool>, arg_1: f32, arg_2: f32) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_div_f32(1000f, arg_1), arg_1))))));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.b.x | (~1u ^ firstTrailingBit(17054u)), u_input.b.x), 20u)] ^ global1[_wgslsmith_index_u32(u_input.b.x, 20u)];
    var var_2 = Struct_5(_wgslsmith_div_vec3_u32(~_wgslsmith_sub_vec3_u32(u_input.b.xww, ~vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x)), ~_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.b.zww), select(u_input.b.wyw, vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<bool>(false, false, false)))), select(arg_0, select(arg_0, vec3<bool>(arg_0.x, !arg_0.x, arg_0.x || arg_0.x), select(select(vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(arg_0.x, true, arg_0.x), true), arg_0, any(vec4<bool>(false, arg_0.x, true, false)))), arg_0), u_input.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1, var_0.x, 435f))) + vec3<f32>(1320f, 2183f, 1176f)))));
    var var_3 = Struct_2(Struct_1(firstTrailingBit(select(select(vec3<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 20u)], 2147483647i, -49614i), vec3<i32>(1i, 5358i, -1i), var_2.b), vec3<i32>(49909i, -2147483647i, 2147483647i) ^ vec3<i32>(global2[_wgslsmith_index_u32(var_2.a.x, 20u)], u_input.a, -1089i), false))), Struct_1(~max(reverseBits(vec3<i32>(-2147483647i, global2[_wgslsmith_index_u32(var_2.a.x, 20u)], u_input.a)), -vec3<i32>(u_input.a, global1[_wgslsmith_index_u32(0u, 20u)], global2[_wgslsmith_index_u32(25070u, 20u)]))), func_4(Struct_5(~vec3<u32>(var_2.a.x, u_input.b.x, var_2.c.x), !var_2.b, u_input.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_2.d, vec3<f32>(arg_2, 1060f, var_2.d.x)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(516f, var_0.x))) - _wgslsmith_f_op_vec2_f32(var_2.d.xy - var_2.d.yx))))), true, arg_2);
    let var_4 = !any(var_2.b.yy);
    return !(!(true | select(var_3.c && arg_0.x, func_4(Struct_5(vec3<u32>(32533u, var_2.c.x, var_2.a.x), var_2.b, u_input.b, var_2.d), vec2<f32>(var_0.x, -1037f)), var_2.b.x)));
}

fn func_1() -> vec4<f32> {
    global0 = all(vec4<bool>(true | (true | all(vec2<bool>(false, true))), all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true)) & true, any(vec3<bool>(true, true, true)), true));
    global0 = func_6(vec3<bool>(!any(vec2<bool>(true, true)), !all(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_5(u_input.b.zwx, vec3<bool>(false, false, false), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec3<f32>(-1000f, 405f, 337f))))), _wgslsmith_f_op_f32(-1208f * _wgslsmith_f_op_f32(-1854f - -1460f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -584f), _wgslsmith_f_op_f32(min(2384f, 706f)))) - -1052f), _wgslsmith_f_op_f32(-115f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(802f))))))));
    let var_0 = Struct_5(_wgslsmith_mult_vec3_u32(u_input.b.zxx, _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), ~u_input.b.zxw)), select(vec3<bool>(select(false, true, false), false, true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), true)), false), max(abs(~vec4<u32>(u_input.b.x, u_input.b.x, 0u, 1u)), u_input.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(407f, -1318f, -811f)))) * vec3<f32>(_wgslsmith_f_op_f32(1071f - -551f), _wgslsmith_f_op_f32(-1796f - 536f), _wgslsmith_f_op_f32(max(-679f, 765f)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-349f, _wgslsmith_f_op_f32(-617f + 247f), _wgslsmith_f_op_f32(-2157f * 886f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-314f, 1749f, -2575f) + vec3<f32>(1956f, -1879f, -2305f))))));
    let var_1 = _wgslsmith_sub_vec2_i32(max(vec2<i32>(global1[_wgslsmith_index_u32(~(~var_0.a.x), 20u)], _wgslsmith_dot_vec4_i32(vec4<i32>(-12171i, -2147483647i, 2147483647i, 31844i) | vec4<i32>(global2[_wgslsmith_index_u32(12355u, 20u)], -1i, global1[_wgslsmith_index_u32(var_0.a.x, 20u)], -1i), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, global2[_wgslsmith_index_u32(u_input.b.x, 20u)], global2[_wgslsmith_index_u32(45785u, 20u)], 14358i), vec4<i32>(-49678i, 27915i, 2147483647i, 2147483647i)))), vec2<i32>(_wgslsmith_add_i32(38053i, -u_input.a), u_input.a & -u_input.a)), firstTrailingBit(_wgslsmith_div_vec2_i32(min(vec2<i32>(-1i, -2147483647i), ~vec2<i32>(-52424i, -2147483647i)), abs(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, 13739i), vec2<i32>(global1[_wgslsmith_index_u32(51177u, 20u)], 0i))))));
    global1 = array<i32, 20>();
    return vec4<f32>(-943f, _wgslsmith_f_op_f32(ceil(-657f)), -1000f, 2463f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<i32>(global2[_wgslsmith_index_u32(23301u, 20u)], ~(-2147483647i), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(10085u, 4294967295u), 20u)]));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-113f, 789f, 497f, 1596f)) + vec4<f32>(-108f, _wgslsmith_f_op_f32(-107f + -1489f), _wgslsmith_f_op_f32(floor(-285f)), _wgslsmith_f_op_f32(f32(-1f) * -141f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1133f, 1443f, 1000f, 309f))))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-565f, 1210f, 657f, -1124f)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1998f, 134f, -254f, -196f)) * _wgslsmith_f_op_vec4_f32(func_1()))));
    global2 = array<i32, 20>();
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-678f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.x)))), -395f, 443f) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -1349f), -248f), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.x - var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-325f))), var_1.x, -369f))));
    var var_3 = _wgslsmith_f_op_f32(step(-245f, -1507f));
    let var_4 = vec3<bool>(any(!(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false))), 1f != _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec4_f32(func_1()).x)), !(!(~1i < var_0.a.x)));
    var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.x, 202f, _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(var_2.x - var_2.x)), _wgslsmith_f_op_vec4_f32(func_1()))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_2.x, var_1.x, 275f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-588f, 910f, 1105f, 1134f) * vec4<f32>(-259f, var_2.x, var_2.x, var_2.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_2.x, var_2.x, 1000f))))));
    var var_5 = ~_wgslsmith_mult_u32(~u_input.b.x, min(~min(1u, 0u), _wgslsmith_add_u32(~u_input.b.x, ~4294967295u)));
    var var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(var_2.x, var_2.x)))))) + _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(ceil(var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_mod_vec2_i32(var_0.a.yy, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, -1i), reverseBits(var_0.a.xz))), abs(vec2<i32>(-global2[_wgslsmith_index_u32(u_input.b.x, 20u)], 26624i >> (u_input.b.x % 32u)))), ~4294967295u);
}

