struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: vec4<f32> = vec4<f32>(-662f, -1344f, 125f, -638f);

var<private> global2: array<vec4<bool>, 26>;

var<private> global3: array<vec2<i32>, 21> = array<vec2<i32>, 21>(vec2<i32>(0i, 8744i), vec2<i32>(15098i, -33404i), vec2<i32>(40036i, -9139i), vec2<i32>(11702i, 2147483647i), vec2<i32>(3432i, 15580i), vec2<i32>(0i, -42839i), vec2<i32>(i32(-2147483648), 20728i), vec2<i32>(50809i, 0i), vec2<i32>(-88177i, -90537i), vec2<i32>(15799i, 36000i), vec2<i32>(23906i, 21247i), vec2<i32>(43674i, -58391i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(0i, 1i), vec2<i32>(-72695i, 2147483647i), vec2<i32>(14259i, 2147483647i), vec2<i32>(9146i, -11470i), vec2<i32>(-1382i, -1i), vec2<i32>(-46126i, 16344i), vec2<i32>(31460i, 2147483647i), vec2<i32>(47698i, 2147483647i));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<bool> {
    global1 = _wgslsmith_div_vec4_f32(vec4<f32>(global1.x, 562f, global1.x, global1.x), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x + global1.x), global1.x), _wgslsmith_f_op_f32(-global1.x), 495f))));
    let var_0 = Struct_2(Struct_1(global1.yx));
    let var_1 = vec4<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true)) && ((u_input.b.x != -global0.x) | true), !((all(vec4<bool>(true, false, false, true)) & (global1.x < var_0.a.a.x)) || false), true, false);
    global0 = global3[_wgslsmith_index_u32(~(~56987u), 21u)];
    let var_2 = Struct_2(var_0.a);
    return !vec2<bool>(!(!var_1.x), var_1.x);
}

fn func_2() -> Struct_1 {
    var var_0 = firstTrailingBit(countOneBits(_wgslsmith_div_i32(_wgslsmith_mod_i32(-u_input.a, 1i), _wgslsmith_sub_i32(global0.x, _wgslsmith_clamp_i32(2147483647i, -19966i, -1i)))));
    global0 = u_input.c.yy;
    var var_1 = func_3();
    var var_2 = Struct_1(global1.yw);
    global3 = array<vec2<i32>, 21>();
    return Struct_1(vec2<f32>(1000f, var_2.a.x));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> Struct_2 {
    var var_0 = func_2();
    let var_1 = global1.yzx;
    var_0 = func_2();
    var var_2 = select(select(select(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true)), true), vec3<bool>(any(vec2<bool>(true, false)), true, all(vec2<bool>(true, true))), vec3<bool>(all(vec4<bool>(false, true, true, true)), any(vec4<bool>(false, false, true, false)), any(vec2<bool>(true, true)))), vec3<bool>(any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), vec3<bool>(false, false, true))), true & func_3().x, !(select(true, true, false) | true)), select(true, func_3().x, any(!(!global2[_wgslsmith_index_u32(12779u, 26u)]))));
    global1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.x, var_0.a.x, var_2.x))), -498f, arg_0.a.x, _wgslsmith_f_op_f32(round(arg_0.a.x)));
    return Struct_2(arg_0);
}

fn func_1() -> u32 {
    var var_0 = func_4(func_2(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-714f * global1.x))), global1.x)) - -835f));
    var var_1 = func_4(var_0.a, -873f);
    global1 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(904f, _wgslsmith_f_op_f32(178f + var_1.a.a.x)))), -324f, var_1.a.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.a.a.x + _wgslsmith_f_op_f32(-var_1.a.a.x)))))));
    var var_2 = func_4(func_2(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.a.a.x - var_1.a.a.x), global1.x)))) + var_1.a.a.x));
    let var_3 = -u_input.a ^ abs(-42978i);
    return u_input.e;
}

fn func_5(arg_0: u32, arg_1: vec2<i32>, arg_2: vec3<u32>, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = func_1();
    var var_1 = global3[_wgslsmith_index_u32(u_input.e, 21u)];
    return vec3<bool>((!all(vec2<bool>(true, false)) & true) || !any(vec4<bool>(true, true, true, true)), true, (1i | ~(~u_input.d.x)) < 1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(1588f - global1.x);
    let var_1 = func_5(_wgslsmith_clamp_u32(func_1(), u_input.e, 4294967295u), u_input.d.yy, vec3<u32>(0u, u_input.e, ~1u), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.xw - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x))))));
    var var_2 = global1.x;
    let var_3 = func_4(func_2(), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, global1.x) + _wgslsmith_f_op_f32(select(global1.x, -1133f, true))), 1f)))));
    let var_4 = func_4(var_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~u_input.e, func_1(), ~u_input.e), u_input.e, 1i);
}

