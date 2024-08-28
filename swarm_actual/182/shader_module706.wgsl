struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: f32,
    d: vec2<u32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<f32>) -> vec3<i32> {
    global0 = Struct_5(~vec3<u32>(~countOneBits(arg_1.x), 12003u, 1u), arg_1.xzx, vec4<u32>(countOneBits(~1u), ~1u, ~(~(540u >> (arg_1.x % 32u))), 26177u), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-arg_2.x), 1f), vec2<f32>(arg_2.x, arg_2.x))));
    let var_0 = Struct_2(vec2<i32>(_wgslsmith_mod_i32(8327i, -arg_0.a.x), u_input.d.x));
    global0 = Struct_5(~vec3<u32>(global0.c.x, firstTrailingBit(arg_0.b.x >> (arg_0.b.x % 32u)), _wgslsmith_div_u32(48030u, 22811u)), select(arg_1.xxw, arg_1.xxy, false), min(_wgslsmith_add_vec4_u32(global0.c, _wgslsmith_mult_vec4_u32(vec4<u32>(23875u, arg_0.b.x, global0.c.x, 26766u), _wgslsmith_mult_vec4_u32(arg_1, global0.c))), (min(vec4<u32>(arg_0.b.x, arg_0.b.x, 26657u, 4294967295u), arg_1) ^ ~vec4<u32>(4294967295u, 4294967295u, arg_0.b.x, arg_0.b.x)) ^ _wgslsmith_mult_vec4_u32(~vec4<u32>(0u, global0.b.x, 16481u, 0u), global0.c)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.x, 373f)))), _wgslsmith_f_op_f32(-global0.d.x)));
    var var_1 = Struct_2(_wgslsmith_add_vec2_i32(-(-vec2<i32>(var_0.a.x, -25366i) >> (~arg_1.xz % vec2<u32>(32u))), vec2<i32>(~u_input.d.x, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_0.c, 0i, 2147483647i, u_input.c.x)), _wgslsmith_div_vec4_i32(u_input.c, u_input.c)))));
    let var_2 = var_0;
    return ~arg_0.a;
}

fn func_2() -> Struct_5 {
    let var_0 = Struct_5(global0.c.wwy, ~(~select(vec3<u32>(0u, 9724u, 0u), vec3<u32>(global0.c.x, global0.c.x, global0.a.x), true)), abs(global0.c), vec2<f32>(global0.d.x, global0.d.x));
    global0 = var_0;
    var var_1 = ~(firstTrailingBit(~(~0u)) | select(var_0.a.x, _wgslsmith_div_u32(0u, abs(var_0.b.x)), -12899i != (14911i ^ u_input.d.x)));
    let var_2 = -func_3(Struct_1(~vec3<i32>(u_input.d.x, -25458i, u_input.c.x), ~(~vec2<u32>(54824u, 4294967295u)), -min(u_input.b.x, 34063i)), ~firstLeadingBit(~var_0.c), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.d.x, global0.d.x, -1543f, var_0.d.x), vec4<f32>(global0.d.x, -966f, 906f, var_0.d.x)))))));
    var_1 = _wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(var_0.a.yx & var_0.b.xx, ~vec2<u32>(0u, var_0.a.x)) ^ _wgslsmith_mult_u32(_wgslsmith_sub_u32(~global0.b.x, _wgslsmith_add_u32(7467u, 87441u)), var_0.c.x), ~(~var_0.c.x));
    return Struct_5(var_0.c.wxy, firstLeadingBit(~(~global0.c.yxw) >> (vec3<u32>(92856u, select(global0.c.x, global0.b.x, false), ~global0.b.x) % vec3<u32>(32u))), var_0.c, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.d.x), var_0.d.x) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.d) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(2020f, var_0.d.x)))))));
}

fn func_1() -> u32 {
    var var_0 = func_2();
    var var_1 = var_0.c.x;
    global0 = func_2();
    var var_2 = Struct_1(reverseBits(~max(vec3<i32>(u_input.b.x, u_input.c.x, 2147483647i) | u_input.c.yxw, u_input.c.yzz)), global0.c.xz, ~(-2147483647i));
    var var_3 = ~_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(global0.c << (vec4<u32>(0u, 43207u, 0u, var_0.c.x) % vec4<u32>(32u)), global0.c), firstTrailingBit(min(var_0.c, vec4<u32>(global0.c.x, 67796u, 1761u, 4294967295u)))), ~(vec4<u32>(1u, global0.a.x, var_0.a.x, 76u) << (~global0.c % vec4<u32>(32u))));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(vec3<u32>(~4294967295u, func_1(), 1u), vec3<u32>(global0.c.x, global0.b.x, global0.a.x), _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(global0.c, global0.c, firstTrailingBit(vec4<u32>(1u, global0.c.x, 129u, 54033u))) >> (~vec4<u32>(4294967295u, global0.c.x, 25684u, 1u) % vec4<u32>(32u)), ~(~vec4<u32>(0u, 4294967295u, 69187u, global0.c.x))), _wgslsmith_f_op_vec2_f32(-global0.d));
    global0 = var_0;
    let var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1389f, 1140f)) * var_0.d.x)) * global0.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.d.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(872f - -1283f))), -153f))));
}

