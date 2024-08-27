struct Struct_1 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29> = array<i32, 29>(10462i, 2147483647i, 37887i, 1i, -31082i, -40762i, -10682i, 2147483647i, -1i, i32(-2147483648), -48126i, -34921i, -46284i, 37560i, 2147483647i, 0i, 78987i, -1i, 82822i, 1i, -1i, 6758i, -33647i, 0i, 18282i, -28205i, 22285i, 3691i, 0i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = false;
    var var_1 = true;
    var_1 = arg_1.a;
    var var_2 = 2101i;
    let var_3 = vec2<f32>(-1146f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(283f + -628f) - -338f)), -403f)));
    return arg_1;
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = 731f;
    global0 = array<i32, 29>();
    var var_1 = arg_1;
    var var_2 = arg_1;
    let var_3 = func_2(-vec2<i32>(_wgslsmith_clamp_i32(~0i, _wgslsmith_mod_i32(u_input.b.x, var_2.b), -u_input.d.x), -2244i), func_2(firstLeadingBit(u_input.b.xz), func_2(vec2<i32>(max(var_1.b, global0[_wgslsmith_index_u32(116851u, 29u)]), ~1i), func_2(u_input.d, func_2(vec2<i32>(-27878i, var_2.b), Struct_1(false, var_1.b))))));
    return func_2(u_input.e.xw << (u_input.a.ww % vec2<u32>(32u)), Struct_1(var_3.a || true, var_3.b));
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = any(select(vec3<bool>(any(vec4<bool>(true, true, true, true)), false, true), vec3<bool>(all(vec4<bool>(false, false, true, false)), true, ~u_input.a.x < 1u), all(vec2<bool>(true, false))));
    var var_1 = func_3(2180f, func_2(-(vec2<i32>(-1i) * -vec2<i32>(u_input.d.x, -31335i)), Struct_1(true, _wgslsmith_add_i32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0, 4294967295u), 29u)], _wgslsmith_add_i32(2147483647i, -1i)))));
    var var_2 = Struct_1(-265f >= _wgslsmith_f_op_f32(select(-137f, 950f, var_1.a & true)), firstTrailingBit((8189i ^ _wgslsmith_div_i32(u_input.e.x, 2147483647i)) ^ ~global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_0, 32114u, 0u), 29u)]));
    var var_3 = !select(select(select(!vec4<bool>(var_1.a, var_2.a, true, false), vec4<bool>(true, false, false, true), !vec4<bool>(var_1.a, var_2.a, false, var_2.a)), !select(vec4<bool>(true, var_1.a, false, var_1.a), vec4<bool>(var_2.a, var_1.a, var_2.a, var_2.a), vec4<bool>(true, false, false, var_1.a)), var_2.a), select(!select(vec4<bool>(true, var_2.a, false, true), vec4<bool>(true, var_2.a, var_1.a, var_1.a), vec4<bool>(var_2.a, var_2.a, var_2.a, var_2.a)), !select(vec4<bool>(var_1.a, var_2.a, var_1.a, var_1.a), vec4<bool>(var_2.a, var_2.a, true, false), vec4<bool>(var_1.a, true, true, var_2.a)), !(!var_1.a)), select(vec4<bool>(false, false, var_2.a, all(vec3<bool>(var_1.a, var_1.a, var_2.a))), vec4<bool>(true, !var_2.a, all(vec3<bool>(var_1.a, var_1.a, false)), !var_2.a), true));
    var var_4 = !var_3.yy;
    return Struct_1(var_3.x == var_2.a, 34216i);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = arg_1;
    let var_1 = Struct_1(true, -21177i);
    global0 = array<i32, 29>();
    var var_2 = select(!select(vec2<bool>(!var_1.a, var_0.a), select(!vec2<bool>(true, arg_0.a), vec2<bool>(true, true), select(vec2<bool>(arg_1.a, false), vec2<bool>(arg_0.a, true), vec2<bool>(true, arg_0.a))), arg_1.a && (true && arg_0.a)), select(vec2<bool>(func_2(select(u_input.e.zz, u_input.d, vec2<bool>(arg_0.a, false)), var_0).a, func_3(_wgslsmith_f_op_f32(945f + 644f), func_1(1u)).a), !select(select(vec2<bool>(true, true), vec2<bool>(var_0.a, var_1.a), true), !vec2<bool>(arg_1.a, true), vec2<bool>(var_0.a, arg_0.a)), vec2<bool>(select(u_input.a.x, 96785u, true) > _wgslsmith_div_u32(u_input.a.x, u_input.a.x), false)), !(!(!(!vec2<bool>(false, var_0.a)))));
    global0 = array<i32, 29>();
    return 0u;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = select(select(!select(vec2<bool>(true, true), !vec2<bool>(arg_2.a, arg_1.a), vec2<bool>(true, true)), vec2<bool>(arg_2.a, false), func_1(1u).a), select(!select(vec2<bool>(true, true), !vec2<bool>(arg_2.a, arg_1.a), vec2<bool>(false, arg_1.a)), vec2<bool>(true, true), select(!vec2<bool>(arg_2.a, arg_1.a), !select(vec2<bool>(arg_2.a, arg_1.a), vec2<bool>(true, arg_1.a), true), arg_1.a)), false);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1001f), 1000f)))), 377f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(505f, _wgslsmith_f_op_f32(max(1479f, _wgslsmith_f_op_f32(floor(948f)))))))));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-551f, _wgslsmith_f_op_f32(exp2(var_1.x)), -1984f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.x, -1222f, -196f), vec3<f32>(274f, var_1.x, var_1.x)))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1000f, var_1.x)), var_1.x)), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(586f - var_1.x) - _wgslsmith_f_op_f32(1124f - var_1.x)))));
    let var_2 = select(select(!(!(!vec4<bool>(var_0.x, var_0.x, false, var_0.x))), select(vec4<bool>(all(vec3<bool>(arg_2.a, arg_2.a, false)), false, false, all(vec3<bool>(false, false, arg_2.a))), select(select(vec4<bool>(false, arg_1.a, arg_1.a, arg_1.a), vec4<bool>(true, arg_2.a, true, arg_1.a), false), !vec4<bool>(false, false, var_0.x, arg_1.a), !vec4<bool>(arg_2.a, false, arg_2.a, true)), var_0.x), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1556f + -895f)), func_2(_wgslsmith_mult_vec2_i32(arg_3, vec2<i32>(-9867i, arg_1.b)), Struct_1(var_0.x, arg_1.b))).a), !select(vec4<bool>(any(vec3<bool>(true, true, false)), true | var_0.x, !arg_1.a, true), select(select(vec4<bool>(arg_2.a, arg_2.a, true, arg_2.a), vec4<bool>(arg_1.a, false, true, var_0.x), vec4<bool>(var_0.x, false, arg_1.a, true)), !vec4<bool>(arg_1.a, false, false, arg_1.a), true), true), select(vec4<bool>((arg_2.b < arg_1.b) || any(vec4<bool>(arg_2.a, arg_1.a, arg_2.a, false)), !(!var_0.x), var_1.x < _wgslsmith_f_op_f32(1147f + 246f), true == arg_1.a), select(select(!vec4<bool>(arg_1.a, arg_2.a, true, true), vec4<bool>(false, false, arg_1.a, arg_2.a), !vec4<bool>(arg_2.a, var_0.x, arg_1.a, var_0.x)), select(vec4<bool>(true, false, false, var_0.x), !vec4<bool>(arg_1.a, arg_1.a, true, var_0.x), !vec4<bool>(arg_1.a, false, arg_2.a, var_0.x)), any(vec3<bool>(arg_1.a, var_0.x, false))), false));
    let var_3 = arg_1.a;
    return Struct_1(var_3, ~global0[_wgslsmith_index_u32(u_input.a.x, 29u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 29>();
    var var_0 = func_5(u_input.b, Struct_1(firstTrailingBit(4294967295u) == func_4(func_1(u_input.a.x), func_3(1600f, Struct_1(false, -5998i))), global0[_wgslsmith_index_u32(u_input.a.x, 29u)]), func_2(reverseBits(u_input.e.yx), func_3(_wgslsmith_f_op_f32(floor(1f)), Struct_1(u_input.d.x >= u_input.e.x, 0i))), ~u_input.d);
    global0 = array<i32, 29>();
    global0 = array<i32, 29>();
    global0 = array<i32, 29>();
    let var_1 = min(vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.d.x, 2147483647i), func_5(u_input.b, Struct_1(var_0.a, global0[_wgslsmith_index_u32(80891u, 29u)]), Struct_1(true, global0[_wgslsmith_index_u32(8224u, 29u)]), u_input.b.yx).b, u_input.d.x), countOneBits(~0i)) & _wgslsmith_mod_vec2_i32(abs(select(vec2<i32>(var_0.b, 30631i), vec2<i32>(u_input.c, -33917i), vec2<bool>(true, true))), -_wgslsmith_div_vec2_i32(u_input.d, vec2<i32>(657i, -15964i))), ~(~(-vec2<i32>(16193i, var_0.b))));
    let x = u_input.a;
    s_output = StorageBuffer(select(-max(vec3<i32>(u_input.b.x, global0[_wgslsmith_index_u32(0u, 29u)], -20232i), vec3<i32>(-2147483647i, -2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 29u)])), vec3<i32>(var_0.b, 1i, -1i), !vec3<bool>(true, false, var_0.a)) | u_input.b, u_input.a, u_input.a.x);
}

