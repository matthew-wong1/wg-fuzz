struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
    d: vec2<f32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
    c: f32,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: Struct_3, arg_3: vec2<i32>) -> f32 {
    var var_0 = arg_2.b.e.x;
    var_0 = true;
    let var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1315f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -154f) * arg_1), _wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -734f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -699f) - _wgslsmith_f_op_f32(select(-447f, -359f, true)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1501f, arg_2.b.d.x, arg_2.b.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a))))));
    var var_2 = false;
    var_0 = all(!vec3<bool>(arg_2.d.e.x, arg_2.d.b, arg_2.d.b));
    return 604f;
}

fn func_2() -> vec2<i32> {
    var var_0 = ~(~u_input.a);
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -624f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1023f)) * _wgslsmith_f_op_f32(func_3(u_input.c, _wgslsmith_f_op_f32(1570f - 1160f), Struct_3(-681f, Struct_1(1i, false, 11846i, vec2<f32>(774f, -134f), vec4<bool>(true, false, true, false)), u_input.c, Struct_1(u_input.c, true, -2147483647i, vec2<f32>(-316f, -102f), vec4<bool>(false, false, true, true)), vec4<i32>(13343i, u_input.c, u_input.c, -8138i)), firstLeadingBit(vec2<i32>(u_input.c, u_input.c))))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-727f - _wgslsmith_f_op_f32(-733f - 1000f)), 279f))), true));
    let var_2 = Struct_1(u_input.c, u_input.c < -abs(-u_input.c), u_input.c, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -386f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, -1475f)))), vec2<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - -1154f), _wgslsmith_div_f32(1422f, 406f)))), vec4<bool>(all(select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, false))), false, false, true));
    let var_3 = ~u_input.a.xx;
    let var_4 = Struct_1(~min(_wgslsmith_sub_i32(32741i, var_2.c) ^ max(var_2.a, u_input.c), -100210i), var_2.b, 1i, vec2<f32>(-515f, _wgslsmith_f_op_f32(-var_2.d.x)), vec4<bool>(select(false | any(var_2.e.wxx), !all(vec2<bool>(var_2.b, var_2.b)), true), any(vec2<bool>(true, any(vec2<bool>(false, var_2.e.x)))), !any(select(vec3<bool>(true, false, var_2.e.x), vec3<bool>(false, true, true), var_2.e.x)), true));
    return _wgslsmith_clamp_vec2_i32(abs(max(_wgslsmith_div_vec2_i32(vec2<i32>(0i, var_4.a), vec2<i32>(-2147483647i, 1i)), countOneBits(vec2<i32>(0i, -1i)))), countOneBits(vec2<i32>(-1i) * -vec2<i32>(0i, 1i)), ~vec2<i32>(u_input.c, 0i) ^ _wgslsmith_add_vec2_i32(vec2<i32>(0i, -2147483647i) << (u_input.b.yx % vec2<u32>(32u)), -vec2<i32>(-2147483647i, -2147483647i))) >> (vec2<u32>(~44666u, u_input.b.x) % vec2<u32>(32u));
}

fn func_1(arg_0: vec3<i32>) -> Struct_2 {
    var var_0 = func_2();
    var_0 = ~abs((arg_0.xx & reverseBits(arg_0.yz)) | vec2<i32>(2147483647i, 1002i & var_0.x));
    var var_1 = Struct_3(-1000f, Struct_1(var_0.x, all(vec4<bool>(true, true, true, true)), arg_0.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(941f, -695f) + vec2<f32>(-1256f, 204f))) + vec2<f32>(-128f, -2009f)), !vec4<bool>(true, true, all(vec2<bool>(true, true)), true)), arg_0.x, Struct_1(func_2().x, false, 2147483647i, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1579f, 606f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-750f, 1114f) + vec2<f32>(119f, -1622f)), false)))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, any(vec4<bool>(false, true, true, true))))), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(abs(0i), _wgslsmith_mod_i32(u_input.c, 7463i)), -7126i), -var_0.x, -u_input.c, func_2().x));
    var var_2 = false;
    var var_3 = -vec3<i32>(_wgslsmith_dot_vec3_i32(var_1.e.www, vec3<i32>(countOneBits(u_input.c), arg_0.x, _wgslsmith_div_i32(arg_0.x, -2147483647i))), arg_0.x, 34154i);
    return Struct_2(var_1.d.a, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(var_1.b.d)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(abs(-(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, u_input.c, -37301i), vec3<i32>(5271i, 1i, u_input.c)) & select(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(65944i, 2147483647i, u_input.c), vec3<bool>(false, false, false)))));
    var var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1168f * _wgslsmith_f_op_f32(f32(-1f) * -1942f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -409f), _wgslsmith_f_op_f32(sign(-700f)))), _wgslsmith_f_op_f32(-var_0.b.x), var_0.b.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(var_0.b.x)), _wgslsmith_f_op_f32(ceil(-130f)), _wgslsmith_f_op_f32(351f * var_1.x)), vec3<f32>(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(func_3(0i, 625f, Struct_3(var_0.b.x, Struct_1(var_0.a, true, var_0.a, vec2<f32>(1000f, 526f), vec4<bool>(true, false, false, true)), 1i, Struct_1(2147483647i, false, var_0.a, var_0.b, vec4<bool>(true, true, false, true)), vec4<i32>(-2147483647i, u_input.c, u_input.c, var_0.a)), vec2<i32>(2147483647i, u_input.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1131f)), 1803f))));
    var_2 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(func_3(abs(reverseBits(var_0.a)), var_0.b.x, Struct_3(_wgslsmith_div_f32(var_0.b.x, var_2.x), Struct_1(0i, true, -1i, var_0.b, vec4<bool>(true, true, false, false)), -21667i, Struct_1(-46087i, false, var_0.a, vec2<f32>(-2584f, var_0.b.x), vec4<bool>(false, false, true, true)), max(vec4<i32>(0i, 47976i, var_0.a, 1i), vec4<i32>(var_0.a, -29501i, 9129i, var_0.a))), vec2<i32>(~(-41996i), var_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1014f, 768f)) + _wgslsmith_f_op_f32(min(-127f, -140f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + _wgslsmith_f_op_f32(f32(-1f) * -691f)))))));
    let var_3 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(~(u_input.b >> (_wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_3, 4269u, 1u), u_input.b) % vec4<u32>(32u))));
}

