struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1471f;

var<private> global1: Struct_2;

var<private> global2: vec2<i32> = vec2<i32>(2147483647i, 18599i);

var<private> global3: array<f32, 13> = array<f32, 13>(765f, 1428f, -438f, -1637f, 523f, 239f, 328f, -124f, -128f, 627f, -1243f, 1376f, 869f);

var<private> global4: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = arg_0;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -168f)));
    let var_1 = global3[_wgslsmith_index_u32(26812u, 13u)];
    var var_2 = Struct_2(global1.a);
    let var_3 = vec2<u32>(10806u, firstLeadingBit(65317u));
    return global1.a;
}

fn func_1() -> Struct_2 {
    let var_0 = -global2.x;
    global3 = array<f32, 13>();
    var var_1 = global4.d;
    global1 = Struct_2(global1.a);
    let var_2 = !global4.b;
    return Struct_2(select(vec3<bool>(global1.a.x, global4.b, any(select(global1.a, global1.a, global1.a))), func_2(Struct_1(_wgslsmith_mult_u32(1u, u_input.a.x), !var_2, global4.a, global4.d, var_0)), vec3<bool>(false, !(false & global4.b), true)));
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> f32 {
    let var_0 = Struct_1(u_input.b.x, !((any(vec2<bool>(true, true)) || !global4.b) || arg_1.a.x), global4.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(387f * global4.d))))) * -369f), ~firstTrailingBit(-48975i) << (~(~0u) % 32u));
    let var_1 = Struct_1(~(~(~(~global4.c))), !arg_0, countOneBits(_wgslsmith_clamp_u32(global4.a, ~(u_input.a.x >> (1u % 32u)), global4.c)), _wgslsmith_f_op_f32(select(-1452f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 13u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1125f))) < _wgslsmith_div_f32(global3[_wgslsmith_index_u32(var_0.a, 13u)], -375f))), i32(-1i) * -global2.x);
    let var_2 = func_1();
    let var_3 = vec4<bool>(var_1.d == _wgslsmith_div_f32(350f, global4.d), true, !(!(!(var_1.b || var_2.a.x))), any(!(!vec3<bool>(var_1.b, false, global1.a.x))));
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.d, -1059f, 749f), vec3<f32>(var_1.d, -335f, -1000f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.d, global4.d, 372f))))), vec3<f32>(var_0.d, _wgslsmith_f_op_f32(abs(-236f)), _wgslsmith_f_op_f32(f32(-1f) * -1030f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_1.a, 13u)]), _wgslsmith_f_op_f32(round(433f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.d) - _wgslsmith_f_op_f32(trunc(global4.d))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1013f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 7874u;
    let var_1 = !global1.a.zz;
    global3 = array<f32, 13>();
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1249f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(324f - global3[_wgslsmith_index_u32(var_0, 13u)])) + _wgslsmith_f_op_f32(-1433f * _wgslsmith_f_op_f32(global4.d * global4.d)))));
    let var_3 = ~global4.a;
    let var_4 = func_1();
    let var_5 = Struct_1(1u, false, 25521u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x - -1009f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global4.d)), 909f))), _wgslsmith_mod_i32(-3887i, _wgslsmith_mod_i32(global4.e, global2.x >> (var_0 % 32u))));
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(9795i > ~global4.e, var_4))))));
    global1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(var_3);
}

