struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: bool,
    b: vec3<bool>,
    c: u32,
    d: vec3<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    var var_0 = 2501f;
    var_0 = _wgslsmith_f_op_f32(-1352f * arg_0.a.x);
    let var_1 = Struct_2(Struct_1(arg_0.a, arg_0.b));
    var_0 = arg_0.a.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.a.a.zy - arg_1.a.yx) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(-var_1.a.a.x))))));
    return -26477i;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_4(true, vec3<bool>(false, true, -_wgslsmith_mult_i32(-62241i, -27101i) < -func_3(Struct_1(vec3<f32>(552f, 605f, -1035f), vec2<i32>(-30294i, 0i)), Struct_1(vec3<f32>(-838f, 136f, 335f), vec2<i32>(0i, 44656i)))), firstLeadingBit(_wgslsmith_div_u32(u_input.a.x, _wgslsmith_clamp_u32(1u, u_input.a.x, 1u))) << (4294967295u % 32u), _wgslsmith_div_vec3_i32(vec3<i32>(i32(-1i) * -2317i, ~(-113651i), firstLeadingBit(-37112i)) >> (_wgslsmith_div_vec3_u32(u_input.a.wwz, vec3<u32>(u_input.a.x, 0u, 4294967295u)) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-19565i, 34385i, -40024i), vec3<i32>(-14524i, -19167i, -1i)), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, 38059i, 28524i), vec3<i32>(8811i, -2147483647i, 2147483647i))), -32469i, -32209i)), Struct_2(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(316f, -928f, -175f) - vec3<f32>(-209f, 579f, -263f)), vec3<f32>(626f, -610f, 294f)), vec2<i32>(-2147483647i, abs(-72143i)))));
    var var_1 = _wgslsmith_dot_vec2_i32(firstLeadingBit(abs(max(vec2<i32>(0i, -1i) << (vec2<u32>(var_0.c, 1u) % vec2<u32>(32u)), -vec2<i32>(0i, var_0.d.x)))), -select(firstTrailingBit(reverseBits(vec2<i32>(-65216i, -1i))), var_0.d.zy, vec2<bool>(var_0.b.x, var_0.b.x)));
    let var_2 = _wgslsmith_sub_vec4_u32(abs(~vec4<u32>(var_0.c & u_input.a.x, u_input.a.x, 20413u, select(var_0.c, 17951u, var_0.a))), ~u_input.a);
    let var_3 = vec2<i32>(0i & var_0.d.x, ~(~(~(i32(-1i) * -2147483647i))));
    var var_4 = abs(-firstTrailingBit(~(~vec4<i32>(-5291i, var_3.x, 1i, var_3.x))));
    return Struct_2(var_0.e.a);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<i32>) -> f32 {
    let var_0 = func_2();
    let var_1 = vec2<bool>(u_input.a.x < 4294967295u, any(!(!select(vec3<bool>(arg_1.a, true, arg_0.a), vec3<bool>(false, arg_0.a, false), false))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-250f, var_0.a.a.x, true))), _wgslsmith_f_op_f32(f32(-1f) * -1177f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a.x)), _wgslsmith_f_op_f32(min(189f, 199f)));
    var_2 = vec4<f32>(var_2.x, _wgslsmith_f_op_f32(-116f - -614f), -1337f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(237f))));
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1077f, -485f, var_0.a.a.x, var_0.a.a.x))) + vec4<f32>(var_0.a.a.x, var_0.a.a.x, 1000f, 1218f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 1116f, var_2.x, var_2.x) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.a.a.x, 445f, -993f, var_0.a.a.x), vec4<f32>(var_2.x, -110f, 835f, 847f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1065f, -2729f, 256f, var_0.a.a.x))))));
    return _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-657f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-var_0.a.a.x)))), -500f, var_1.x));
}

fn func_4(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_3, arg_3: f32) -> vec4<f32> {
    var var_0 = Struct_2(func_2().a);
    let var_1 = vec4<bool>(false, arg_1, (all(!vec2<bool>(arg_1, true)) || false) != arg_1, !arg_2.a);
    var_0 = func_2();
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_0.a.a))), var_0.a.b));
    var_0 = Struct_2(func_2().a);
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1312f, var_0.a.a.x, arg_3, arg_3), vec4<f32>(403f, 618f, 1000f, arg_0.x), arg_2.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(306f, arg_0.x, -1010f, -714f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 1000f, 789f, -617f) + vec4<f32>(264f, 1000f, -1700f, -2457f)) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, 1061f, arg_3, -473f), vec4<f32>(arg_0.x, var_0.a.a.x, var_0.a.a.x, arg_0.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec2<i32>(i32(-1i) * -22762i, 19135i >> (u_input.a.x % 32u));
    let var_1 = !any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec2<bool>(true, true)), true, all(vec4<bool>(true, true, false, false)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(vec2<f32>(_wgslsmith_f_op_f32(func_1(Struct_3(false), Struct_3(false), var_0)), _wgslsmith_f_op_f32(f32(-1f) * -508f)), true, Struct_3(false), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-1688f))))))) - vec4<f32>(1f, 1f, 1f, 1f));
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * 880f) * 1000f)) - var_2.x), _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.x), var_2.x)))), var_2.x, _wgslsmith_f_op_f32(1797f - var_2.x));
    let var_3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.xw - var_2.ww) + vec2<f32>(301f, 452f)) - _wgslsmith_f_op_vec2_f32(-var_2.yy)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(-1565f, var_2.x), -398f), _wgslsmith_f_op_vec2_f32(-var_2.yx))) - vec2<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - 1753f))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, _wgslsmith_f_op_f32(func_1(Struct_3(select(var_1, u_input.a.x == u_input.a.x, any(vec3<bool>(false, true, var_1)))), Struct_3(select(all(vec2<bool>(false, true)), true, select(var_1, false, true))), select(var_0, var_0, vec2<bool>(var_1, select(false, false, false))))));
}

