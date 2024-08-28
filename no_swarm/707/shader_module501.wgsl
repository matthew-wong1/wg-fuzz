struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec3<bool>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(2147483647i, vec2<f32>(-879f, 1138f), vec2<i32>(-29539i, 0i), vec3<bool>(true, false, true), vec2<i32>(30963i, i32(-2147483648))), Struct_1(-29591i, vec2<f32>(2123f, 582f), vec2<i32>(1i, -12137i), vec3<bool>(true, true, false), vec2<i32>(-60924i, -15738i)), Struct_1(59774i, vec2<f32>(-1661f, -491f), vec2<i32>(1i, 0i), vec3<bool>(false, true, false), vec2<i32>(2147483647i, 2147483647i)), Struct_1(0i, vec2<f32>(-674f, 364f), vec2<i32>(33145i, i32(-2147483648)), vec3<bool>(true, true, true), vec2<i32>(21982i, -1i)), Struct_1(2788i, vec2<f32>(2112f, -540f), vec2<i32>(i32(-2147483648), -53117i), vec3<bool>(true, true, false), vec2<i32>(18298i, -19034i)), Struct_1(80i, vec2<f32>(-678f, -524f), vec2<i32>(1i, 2147483647i), vec3<bool>(false, true, true), vec2<i32>(i32(-2147483648), 1i)), Struct_1(0i, vec2<f32>(-180f, 212f), vec2<i32>(35619i, 1i), vec3<bool>(false, false, true), vec2<i32>(-31078i, 64517i)), Struct_1(0i, vec2<f32>(2079f, -111f), vec2<i32>(-1i, 2147483647i), vec3<bool>(true, true, true), vec2<i32>(42840i, 53685i)), Struct_1(-1i, vec2<f32>(757f, 702f), vec2<i32>(i32(-2147483648), -26832i), vec3<bool>(false, true, false), vec2<i32>(2147483647i, i32(-2147483648))), Struct_1(-46696i, vec2<f32>(-912f, 1095f), vec2<i32>(i32(-2147483648), 2147483647i), vec3<bool>(true, true, false), vec2<i32>(i32(-2147483648), 0i)));

var<private> global1: array<vec2<u32>, 21> = array<vec2<u32>, 21>(vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 5063u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 13949u), vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<u32>(87599u, 0u), vec2<u32>(1u, 0u), vec2<u32>(817u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(64283u, 4294967295u), vec2<u32>(50585u, 7198u), vec2<u32>(4294967295u, 1u), vec2<u32>(64682u, 1u), vec2<u32>(4717u, 23345u), vec2<u32>(55353u, 4294967295u), vec2<u32>(9322u, 4294967295u), vec2<u32>(9608u, 1u), vec2<u32>(55469u, 4294967295u), vec2<u32>(4294967295u, 59286u));

var<private> global2: i32 = 12990i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_1) -> f32 {
    global1 = array<vec2<u32>, 21>();
    var var_0 = arg_0.b.x;
    var var_1 = arg_0.b;
    var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(arg_0.b))));
    var_0 = -998f;
    return arg_0.b.x;
}

fn func_3(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = arg_3;
    var var_1 = vec2<bool>(arg_3.d.x, !(!(!any(vec2<bool>(true, arg_2.d.x)))));
    var_1 = select(vec2<bool>(any(!(!vec4<bool>(true, var_0.d.x, true, var_1.x))), false), select(select(vec2<bool>(all(vec4<bool>(var_0.d.x, var_1.x, false, var_0.d.x)), any(vec4<bool>(arg_2.d.x, true, false, arg_3.d.x))), vec2<bool>(!arg_3.d.x, any(vec3<bool>(arg_2.d.x, false, var_1.x))), arg_3.d.xz), select(vec2<bool>(false, var_0.d.x), vec2<bool>(var_0.d.x, false && var_0.d.x), vec2<bool>(arg_2.d.x | false, arg_3.d.x)), !(!all(vec2<bool>(arg_3.d.x, false)))), var_1.x);
    var var_2 = arg_3;
    var var_3 = var_2.b.x;
    return arg_1.x;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global1 = array<vec2<u32>, 21>();
    let var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_2.b.x, _wgslsmith_f_op_f32(-429f * _wgslsmith_f_op_f32(-arg_3.b.x)), arg_3.b.x))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_3))), _wgslsmith_f_op_f32(func_2(arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b.x)))))));
    return _wgslsmith_dot_vec2_u32(vec2<u32>(~1u, 0u), vec2<u32>(func_3(_wgslsmith_f_op_f32(-arg_1.x), vec3<u32>(1u, 1u, 1u), arg_3, arg_2) | max(1u, ~1u), _wgslsmith_mult_u32(~5143u, _wgslsmith_div_u32(4294967295u, ~103157u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~max(vec4<u32>(116801u, 4294967295u, 84590u, 4294967295u), vec4<u32>(0u, 0u, 30081u, 1u)))) & vec4<u32>(abs(4294967295u), firstTrailingBit(1u) | 0u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, min(7408u, 4294967295u), 22912u), func_1(vec2<bool>(false, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-692f, -1835f)), Struct_1(u_input.c, vec2<f32>(1439f, -193f), vec2<i32>(1i, u_input.a.x), vec3<bool>(false, false, false), u_input.a.zx), global0[_wgslsmith_index_u32(select(15152u, 4294967295u, false), 10u)])), _wgslsmith_dot_vec2_u32(abs(global1[_wgslsmith_index_u32(1u, 21u)]), ~vec2<u32>(1u, 3912u)) & 2913u);
    var var_1 = global0[_wgslsmith_index_u32(var_0.x, 10u)];
    let var_2 = Struct_1(u_input.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -559f), _wgslsmith_f_op_f32(1097f * -590f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.x, -472f) * _wgslsmith_f_op_vec2_f32(var_1.b + var_1.b)))), ~(var_1.e >> (~vec2<u32>(var_0.x, 22045u) % vec2<u32>(32u))) >> (global1[_wgslsmith_index_u32(2319u, 21u)] % vec2<u32>(32u)), !vec3<bool>(var_0.x != 1u, false, _wgslsmith_div_f32(-512f, -805f) < _wgslsmith_f_op_f32(-var_1.b.x)), var_1.c);
    var var_3 = u_input.a.yx;
    var var_4 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(Struct_1(var_1.c.x, var_1.b, u_input.a.zy, var_1.d, vec2<i32>(var_3.x, -42250i)))), var_2.b.x) + _wgslsmith_f_op_f32(step(1183f, var_2.b.x))), var_2.b.x, -1462f, var_1.b.x), reverseBits(vec2<u32>(~(~42062u), ~1u)), ~(~(var_0 | vec4<u32>(var_0.x, 54894u, var_0.x, var_0.x))), 1i);
}

