struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<bool>, 27> = array<vec3<bool>, 27>(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true));

var<private> global2: Struct_1 = Struct_1(88u);

var<private> global3: u32;

var<private> global4: vec3<bool> = vec3<bool>(false, false, true);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: i32) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_2.x, arg_2.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, -745f, 242f) - vec3<f32>(arg_2.x, -844f, -1000f)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -948f), _wgslsmith_f_op_f32(-arg_2.x), arg_2.x) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1670f, 247f, arg_2.x))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-917f, 102f, 1548f), vec3<f32>(arg_2.x, -217f, arg_2.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, arg_2.x, arg_2.x) - vec3<f32>(-357f, arg_2.x, arg_2.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, arg_2.x, -127f)))))));
    let var_1 = arg_1;
    var var_2 = 11982u;
    var var_3 = vec2<bool>(any(global4.yy), all(global4.zz));
    var var_4 = vec3<u32>(abs(_wgslsmith_mult_u32(u_input.b.x, ~1u)), firstTrailingBit(~(~global2.a | global0.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(1u, 105455u) & countOneBits(u_input.b.x), min(1u, arg_1.a), 47497u), min(vec3<u32>(0u, ~global2.a, ~0u), u_input.b.yyx)));
    return Struct_1(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~(~var_4.xy), vec2<u32>(var_1.a & var_4.x, 75819u ^ var_4.x)), 4294967295u));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<bool>) -> u32 {
    global0 = Struct_1(_wgslsmith_add_u32(firstLeadingBit(4294967295u), ~1u));
    global3 = 41879u;
    let var_0 = all(vec3<bool>(!arg_1.x, true, u_input.a >= ~(~(-2147483647i))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(1f, _wgslsmith_div_f32(-573f, 1048f), true)))) - 694f), _wgslsmith_f_op_f32(f32(-1f) * -649f), _wgslsmith_f_op_f32(2342f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(565f, -2040f, arg_0.x == arg_0.x)), -1000f)));
    var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, -168f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, 518f))) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(404f, 965f, var_1.x)))))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, -101f) * _wgslsmith_f_op_f32(-641f - 1862f)), 1146f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-172f, -1000f)))))));
    return 2061u;
}

fn func_1() -> Struct_1 {
    var var_0 = func_2(global4.x, Struct_1(global0.a), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1231f, -107f)), _wgslsmith_f_op_f32(select(-364f, -108f, !global4.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(714f, -582f)))))), -1i);
    global0 = Struct_1(abs(_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.b.x, 1u), func_3(vec2<bool>(global4.x, global4.x), global1[_wgslsmith_index_u32(u_input.b.x, 27u)]))) >> (~(~(~4294967295u)) % 32u));
    var_0 = func_2((global2.a >> (2792u % 32u)) > func_3(global4.yz, global1[_wgslsmith_index_u32(global0.a, 27u)]), func_2(all(vec3<bool>(global4.x, !global4.x, any(global1[_wgslsmith_index_u32(global2.a, 27u)]))), func_2(true, Struct_1(_wgslsmith_dot_vec2_u32(u_input.b.ww, vec2<u32>(var_0.a, u_input.b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1000f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-547f, 480f))), u_input.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(338f, 1528f) - vec2<f32>(854f, -482f))))), -_wgslsmith_add_i32(u_input.a & 21562i, u_input.a ^ -2147483647i)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -261f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -735f), _wgslsmith_f_op_f32(step(-966f, -449f)))))), _wgslsmith_clamp_i32(-37052i, _wgslsmith_add_i32(1i, min(i32(-1i) * -1i, ~u_input.a)), -((-39838i ^ u_input.a) | _wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a))));
    var var_1 = 0i;
    let var_2 = func_2(true, Struct_1(_wgslsmith_sub_u32(1238u, _wgslsmith_add_u32(1u, global2.a)) & 26066u), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -143f))), 331f), 35039i);
    return Struct_1(var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -120f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(529f)) - 838f)));
    global1 = array<vec3<bool>, 27>();
    global3 = 12951u;
    var var_1 = func_1();
    let var_2 = Struct_1(~6546u);
    global0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(-(~u_input.a >> (~select(61879u, var_1.a, global4.x) % 32u)), ~1u, global0.a, u_input.b.zw);
}

