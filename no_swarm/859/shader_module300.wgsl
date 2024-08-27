struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1098f, -476f);

var<private> global1: Struct_2;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<i32>) -> vec3<f32> {
    var var_0 = vec4<f32>(867f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * -294f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - global0.x) + _wgslsmith_f_op_f32(sign(-646f))), global0.x))), _wgslsmith_f_op_f32(-global0.x));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(var_0.yx, var_0.yz, !select(vec2<bool>(true, false), vec2<bool>(false, true), true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.yx - _wgslsmith_f_op_vec2_f32(var_0.wz * var_0.yz)) * _wgslsmith_f_op_vec2_f32(floor(var_0.zz))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, -908f, var_0.x, var_0.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, 369f, var_0.x, global0.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -372f, var_0.x, 206f) * vec4<f32>(-209f, var_0.x, global0.x, var_0.x)))) + vec4<f32>(_wgslsmith_f_op_f32(abs(-395f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2090f) * _wgslsmith_f_op_f32(floor(var_0.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(584f * var_0.x))), _wgslsmith_f_op_f32(ceil(329f)))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, var_0.x, global0.x, -1716f))) - _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-863f, 2260f, var_0.x, var_0.x), vec4<f32>(global0.x, -408f, 1066f, -122f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, global0.x, 1031f, var_0.x)))))));
    let var_1 = min(arg_0.x, u_input.a.x);
    var var_2 = Struct_2(_wgslsmith_div_vec2_i32(-(~global1.a), vec2<i32>(7910i, 0i)) >> (_wgslsmith_mult_vec2_u32(max(select(arg_0, vec2<u32>(4294967295u, var_1), vec2<bool>(true, false)), reverseBits(vec2<u32>(1u, 0u))), vec2<u32>(1u, 0u)) % vec2<u32>(32u)));
    return vec3<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x - 1063f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -227f)), var_0.x)));
}

fn func_2(arg_0: Struct_2) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(u_input.c.xy, vec2<i32>(-41415i, arg_0.a.x))))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec3_f32(func_3(vec2<u32>(1u, u_input.c.x), vec2<i32>(arg_0.a.x, 2147483647i))).x, -552f, global1.a.x < global1.a.x)), 844f, _wgslsmith_div_f32(_wgslsmith_div_f32(428f, -1142f), _wgslsmith_f_op_f32(-global0.x)))));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-arg_1.a.x);
    var var_1 = -arg_1.c;
    let var_2 = Struct_2(reverseBits(u_input.b | (firstTrailingBit(global1.a) << (u_input.a.xx % vec2<u32>(32u)))));
    var var_3 = u_input.c.x;
    var_1 = 0i;
    return arg_1;
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_2 {
    let var_0 = arg_1;
    let var_1 = arg_2.xx;
    let var_2 = global1.a;
    let var_3 = !any(vec2<bool>(arg_2.x, !any(var_0.b)));
    var var_4 = func_4(!arg_1.b.x, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1658f, _wgslsmith_f_op_f32(-139f * arg_1.a.x), _wgslsmith_div_f32(-346f, arg_1.a.x))), select(arg_2.xx, func_4(any(vec4<bool>(var_0.b.x, arg_2.x, false, var_0.b.x)), Struct_1(var_0.a, var_0.b, 19687i), reverseBits(arg_0)).b, !select(arg_1.b, vec2<bool>(true, var_3), arg_2.yy)), u_input.b.x), 4294967295u).b.x;
    return Struct_2(u_input.b << (u_input.c.yx % vec2<u32>(32u)));
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_2(u_input.b);
    var var_1 = ~(~u_input.a.x);
    var_0 = func_5(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), func_4(any(vec2<bool>(true, true)), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, -1174f) - _wgslsmith_f_op_vec3_f32(func_2(Struct_2(var_0.a)))), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, false), 0i == var_0.a.x), min(countOneBits(u_input.b.x), 49729i << (u_input.a.x % 32u))), u_input.c.x), vec3<bool>(!any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), false)), all(vec3<bool>(true, all(vec3<bool>(false, true, true)), true)), !(!(4294967295u <= u_input.a.x))));
    var var_2 = select(!(!vec3<bool>(func_4(true, Struct_1(vec3<f32>(568f, global0.x, -352f), vec2<bool>(true, false), 1i), u_input.c.x).b.x, true, true)), vec3<bool>(any(vec4<bool>(true, true, select(false, true, true), all(vec4<bool>(false, false, true, true)))), true, 0i == ~firstTrailingBit(global1.a.x)), true);
    var var_3 = select(vec4<bool>(var_2.x, var_2.x, true, false), vec4<bool>(var_2.x, false, var_2.x, reverseBits(abs(0u)) == _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_add_u32(u_input.c.x, 4294967295u))), select(vec4<bool>((u_input.a.x > u_input.c.x) & var_2.x, var_2.x, var_2.x, !(false && var_2.x)), vec4<bool>(true, false, (-18949i >= u_input.b.x) == true, false), var_2.x));
    return Struct_2(~(~(-global1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.x;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1086f));
    let var_1 = func_1();
    let var_2 = var_1;
    var var_3 = Struct_2(vec2<i32>(_wgslsmith_add_i32(max(global1.a.x, _wgslsmith_div_i32(u_input.b.x, global1.a.x)), -1i), ~countOneBits(21443i)));
    global0 = vec2<f32>(2057f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, global0.x, true)))))));
    let var_4 = var_1;
    var var_5 = ~func_1().a.x;
    let x = u_input.a;
    s_output = StorageBuffer(-2541f, global1.a.x, vec3<i32>(~(-10690i), var_3.a.x, -(~(~10557i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2099f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + global0.x))) * 1568f));
}

