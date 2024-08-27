struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-58132i, 78899i);

var<private> global1: Struct_3;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> bool {
    let var_0 = Struct_2(global1.a, !select(true, all(vec4<bool>(true, true, true, true)), true));
    let var_1 = global1.d;
    let var_2 = !select(select(!select(vec3<bool>(var_0.b, true, false), vec3<bool>(true, var_0.b, var_0.b), false), vec3<bool>(all(vec2<bool>(false, false)), true, false), !(!vec3<bool>(true, true, var_0.b))), vec3<bool>(!var_0.b, true, var_0.b), !(!var_0.b) || var_0.b);
    global0 = _wgslsmith_mult_vec2_i32(global1.c.zy, ~max(vec2<i32>(-1i ^ global0.x, global1.c.x), countOneBits(vec2<i32>(0i, global0.x))));
    let var_3 = -global1.c.zz;
    return var_2.x;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: bool) -> bool {
    var var_0 = vec4<f32>(-537f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x)), global1.a.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.a.x - _wgslsmith_f_op_f32(-826f + global1.a.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(global1.b.x))))));
    let var_1 = _wgslsmith_sub_vec2_i32(-(-vec2<i32>(global0.x, 0i) | ~(-arg_0.yx)), arg_0.zy);
    var var_2 = ~(select(_wgslsmith_add_vec3_u32(u_input.a.yyw, u_input.a.wyz & u_input.a.wzx), ~u_input.a.yzz, vec3<bool>(true, true, true)) | ~u_input.a.xwx);
    var_2 = _wgslsmith_clamp_vec3_u32(vec3<u32>(~_wgslsmith_add_u32(_wgslsmith_add_u32(24291u, 38624u), u_input.a.x), ~min(~global1.e, 4294967295u), ~(~(~u_input.a.x))), firstLeadingBit(~(~(~u_input.a.yyw))), ~(u_input.a.zzy | u_input.a.wyw));
    let var_3 = reverseBits(vec3<u32>(global1.e, 4294967295u & ~(var_2.x & global1.d), global1.d));
    return !(true | arg_1.b);
}

fn func_2() -> vec4<bool> {
    let var_0 = -305f;
    var var_1 = select(vec3<bool>((~global0.x > ~global1.c.x) || false, func_4(max(vec3<i32>(global0.x, global1.c.x, 21595i), vec3<i32>(0i, global0.x, 37467i)), Struct_2(global1.a, func_3()), true), func_4(firstTrailingBit(global1.c), Struct_2(global1.a, true), global1.d <= 1u)), vec3<bool>(global1.a.a.x >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(global1.b.x)))), !func_4(vec3<i32>(-6065i, global1.c.x, 1i), Struct_2(Struct_1(global1.b), true), true), false), select(select(vec3<bool>(all(vec2<bool>(false, true)), false, true), vec3<bool>(true, select(false, false, false), true), any(vec4<bool>(false, false, true, true))), vec3<bool>(true, 1f < _wgslsmith_f_op_f32(var_0 - -454f), false | (var_0 == var_0)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), func_4(global1.c, Struct_2(Struct_1(vec4<f32>(702f, var_0, global1.a.a.x, var_0)), false), false)), !select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true))));
    global0 = ((vec2<i32>(47272i, global1.c.x) << ((abs(u_input.a.yw) ^ vec2<u32>(11419u, global1.e)) % vec2<u32>(32u))) << (~u_input.a.xw % vec2<u32>(32u))) << (~u_input.a.yx % vec2<u32>(32u));
    global1 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.b.x, var_0, var_0, var_0))), _wgslsmith_f_op_vec4_f32(-global1.b)))), _wgslsmith_f_op_vec4_f32(-global1.b), abs(~vec3<i32>(2147483647i, 18554i, _wgslsmith_add_i32(global1.c.x, global0.x))), _wgslsmith_mult_u32(~1u, max(firstLeadingBit(u_input.a.x), max(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.e, u_input.a.x), vec2<u32>(0u, global1.e)), 1u))), ~u_input.a.x);
    var var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(global1.c.x, 11265i, _wgslsmith_div_i32(global0.x, _wgslsmith_dot_vec2_i32(global1.c.yz, vec2<i32>(global0.x, global0.x)))), global1.c.x, -firstTrailingBit(2147483647i)), global1.c);
    return select(vec4<bool>(var_1.x, !(!func_4(global1.c, Struct_2(global1.a, var_1.x), true)), var_1.x, !func_4(global1.c, Struct_2(Struct_1(vec4<f32>(1869f, -599f, -188f, 667f)), false), any(vec3<bool>(var_1.x, var_1.x, true)))), !vec4<bool>(true, all(select(vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, false, false, var_1.x))), false, var_1.x), var_1.x);
}

fn func_1() -> Struct_3 {
    let var_0 = select(func_2(), !func_2(), 376f == global1.a.a.x);
    global1 = Struct_3(Struct_1(global1.b), vec4<f32>(global1.b.x, global1.b.x, 233f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1070f - 1230f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.a.x)))), vec3<i32>(countOneBits(~abs(global1.c.x)), ~20426i, global0.x), ~(~38073u), _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_mult_u32(abs(0u), ~_wgslsmith_dot_vec3_u32(u_input.a.yxx, u_input.a.zyy))));
    let var_1 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(abs(-205f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1385f * global1.a.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.a.a.x))), -1079f)), true);
    var var_2 = u_input.a.x;
    global0 = global1.c.yx | vec2<i32>(min(abs(global1.c.x), global1.c.x ^ 4284i) & 0i, reverseBits((global0.x >> (21176u % 32u)) << (global1.d % 32u)));
    return Struct_3(var_1.a, global1.a.a, global1.c << (countOneBits(u_input.a.wwz) % vec3<u32>(32u)), countOneBits(countOneBits(global1.d)), _wgslsmith_div_u32(4294967295u, u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    var var_0 = vec3<i32>(min(_wgslsmith_mod_i32(global0.x, countOneBits(-12012i)), global1.c.x), countOneBits(abs(_wgslsmith_div_i32(global1.c.x, global1.c.x)) | 21561i), abs(global1.c.x));
    var var_1 = Struct_1(global1.a.a);
    let var_2 = vec3<bool>(((select(true, false, true) && true) | true) | true, func_3(), false);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~global0.x), ~vec4<i32>(global1.c.x ^ max(34295i, -27447i), abs(1i), reverseBits(-2147483647i), 6316i));
}

