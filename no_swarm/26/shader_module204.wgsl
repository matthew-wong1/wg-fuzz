struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: vec4<i32>) -> f32 {
    let var_0 = -1i;
    global0 = u_input.b.zy;
    global0 = u_input.c;
    global0 = select(_wgslsmith_add_vec2_u32(vec2<u32>(~1u, _wgslsmith_sub_u32(4294967295u, u_input.b.x)) ^ ~u_input.b.xx, _wgslsmith_mod_vec2_u32(~_wgslsmith_div_vec2_u32(u_input.b.zx, vec2<u32>(1u, 0u)), u_input.b.zz)), u_input.c, select(vec2<bool>(any(vec3<bool>(true, true, true)), select(all(vec3<bool>(false, false, false)), true, false)), vec2<bool>(true, true), all(vec2<bool>(true, any(vec2<bool>(true, false))))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0))))))), arg_0, vec2<u32>(_wgslsmith_dot_vec2_u32(max(select(vec2<u32>(global0.x, 42348u), u_input.c, true), u_input.b.xz & vec2<u32>(global0.x, u_input.a)), reverseBits(vec2<u32>(u_input.b.x, 4294967295u))), reverseBits(0u)));
    return 1000f;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: u32) -> u32 {
    global0 = _wgslsmith_mult_vec2_u32(~firstLeadingBit(u_input.c), arg_0.c);
    let var_0 = ~(~(~(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, 1i) >> (vec4<u32>(global0.x, 42222u, arg_3, arg_3) % vec4<u32>(32u))))) & max(~(~abs(vec4<i32>(2147483647i, -11584i, u_input.d.x, 1i))), _wgslsmith_mod_vec4_i32(~vec4<i32>(-21599i, -34511i, u_input.d.x, -2147483647i), ~(vec4<i32>(-2147483647i, u_input.d.x, u_input.d.x, u_input.d.x) & vec4<i32>(2147483647i, u_input.d.x, u_input.d.x, u_input.d.x))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -533f), var_0 << (vec4<u32>(global0.x, 98293u, arg_1.c.x, 0u) % vec4<u32>(32u)))))))), arg_1.b, _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 1u), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, countOneBits(3752u)), ~(~vec2<u32>(42343u, u_input.b.x)))));
    var var_2 = -863f;
    var_1 = Struct_1(-1331f, arg_0.a, ~vec2<u32>(_wgslsmith_mult_u32(~0u, arg_3 >> (48585u % 32u)), firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(43619u, arg_3, 1u, arg_2), vec4<u32>(global0.x, 0u, 12670u, 18771u)))));
    return _wgslsmith_mod_u32(max(~34005u, _wgslsmith_div_u32(~global0.x, ~global0.x << (max(arg_0.c.x, var_1.c.x) % 32u))), _wgslsmith_dot_vec3_u32(~(~_wgslsmith_clamp_vec3_u32(u_input.b, u_input.b, u_input.b)), firstLeadingBit(_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(u_input.c.x, var_1.c.x, arg_3)), abs(u_input.b)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> vec4<i32> {
    global0 = arg_1.c;
    global0 = ~vec2<u32>(func_2(arg_0, Struct_1(_wgslsmith_f_op_f32(579f * arg_1.a), _wgslsmith_f_op_f32(trunc(-984f)), vec2<u32>(4698u, 1u)), ~global0.x | u_input.b.x, _wgslsmith_div_u32(~39397u, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(global0.x, 29490u, arg_1.c.x)))), global0.x);
    var var_0 = arg_0;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-var_0.b), arg_0.a, var_0.c);
    let var_2 = vec4<i32>(-_wgslsmith_mod_i32(-35993i, ~min(arg_2, -33683i)), abs(1i), u_input.d.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, -2147483647i, u_input.d.x, 1i), max(vec4<i32>(-1i, arg_2, -12490i, arg_2), vec4<i32>(u_input.d.x, -54182i, arg_2, -1i))), vec4<i32>(-u_input.d.x, _wgslsmith_div_i32(u_input.d.x, 5515i), arg_2 << (93159u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(-12108i, u_input.d.x, -1i), vec3<i32>(u_input.d.x, -20963i, u_input.d.x)))) | _wgslsmith_mod_i32(arg_2, arg_2));
    return firstLeadingBit(_wgslsmith_mod_vec4_i32(min(~(-vec4<i32>(2147483647i, u_input.d.x, arg_2, 7352i)), -_wgslsmith_mod_vec4_i32(vec4<i32>(var_2.x, arg_2, 2147483647i, 94149i), var_2)), vec4<i32>(-63676i, 17539i, -16043i ^ select(var_2.x, u_input.d.x, false), _wgslsmith_add_i32(0i, var_2.x) | select(u_input.d.x, arg_2, true))));
}

fn func_4(arg_0: vec4<i32>) -> vec3<bool> {
    global0 = u_input.b.zx;
    let var_0 = Struct_1(-1320f, -1000f, _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.c, select(u_input.b.zz, vec2<u32>(1u, global0.x), false)), ~4294967295u), vec2<u32>(_wgslsmith_div_u32(global0.x >> (0u % 32u), ~67550u), u_input.a)));
    var var_1 = 0u;
    let var_2 = 4294967295u;
    let var_3 = vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(~_wgslsmith_sub_vec3_i32(arg_0.xzw, arg_0.yyx), ~(-vec3<i32>(7437i, arg_0.x, arg_0.x))), ~arg_0.xwy), -_wgslsmith_div_i32((2147483647i << (var_2 % 32u)) | ~5868i, arg_0.x), abs(-u_input.d.x), ~_wgslsmith_clamp_i32(_wgslsmith_sub_i32(func_1(var_0, Struct_1(1058f, -422f, vec2<u32>(930u, 23134u)), arg_0.x).x, 0i), min(abs(u_input.d.x), ~arg_0.x), arg_0.x));
    return vec3<bool>(false, true, any(vec4<bool>(true, false, all(vec3<bool>(true, true, true)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(Struct_1(_wgslsmith_f_op_f32(-877f + _wgslsmith_f_op_f32(ceil(-285f))), _wgslsmith_div_f32(-1000f, -134f), abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(30345u, global0.x), u_input.b.xz, vec2<u32>(96234u, u_input.c.x)))), Struct_1(_wgslsmith_f_op_f32(select(-2894f, _wgslsmith_f_op_f32(309f * 813f), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-440f)) - _wgslsmith_f_op_f32(trunc(-1406f))), _wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(42415u, 4294967295u)), vec2<u32>(0u, global0.x) & vec2<u32>(u_input.b.x, 10820u))), ~_wgslsmith_dot_vec2_i32(~u_input.d, u_input.d)));
    let var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1449f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(189f - 1125f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(795f - -606f)))), u_input.b.zx);
    global0 = countOneBits(firstTrailingBit(vec2<u32>(22136u, u_input.a)));
    let var_2 = !vec3<bool>(true, (0i & countOneBits(u_input.d.x)) < u_input.d.x, any(vec4<bool>(true, any(vec2<bool>(var_0.x, var_0.x)), any(vec3<bool>(var_0.x, var_0.x, var_0.x)), var_0.x)));
    var_0 = vec3<bool>(!(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(trunc(var_1.b)), _wgslsmith_sub_vec4_i32(vec4<i32>(32995i, u_input.d.x, -19123i, 1135i), vec4<i32>(-8053i, u_input.d.x, 2147483647i, 17347i)))) > _wgslsmith_f_op_f32(1034f - _wgslsmith_f_op_f32(sign(var_1.b)))), _wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(548f, 124f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), true);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 198f, 439f, 2643f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.a, -150f, var_1.a, -403f))))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, var_1.b, var_1.b, var_1.b)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, var_1.b, 1470f, var_1.b))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.a, 333f, var_1.b, 440f)))))));
    var_0 = !select(!select(vec3<bool>(var_2.x, false, true), select(var_2, vec3<bool>(true, false, var_2.x), var_2), false), var_2, any(var_2.yz));
    var var_4 = !var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), u_input.d, ~((u_input.b.zx ^ ~var_1.c) | min(min(vec2<u32>(59731u, 1u), var_1.c), vec2<u32>(var_1.c.x, u_input.b.x))), 2147483647i);
}

