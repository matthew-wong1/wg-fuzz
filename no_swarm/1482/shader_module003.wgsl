struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
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

var<private> global0: Struct_2;

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)));

var<private> global2: array<vec4<u32>, 16> = array<vec4<u32>, 16>(vec4<u32>(4294967295u, 0u, 1u, 0u), vec4<u32>(0u, 47151u, 31841u, 822u), vec4<u32>(50172u, 4294967295u, 0u, 72755u), vec4<u32>(1u, 30130u, 43323u, 9960u), vec4<u32>(1u, 0u, 0u, 24854u), vec4<u32>(4294967295u, 76937u, 4294967295u, 4294967295u), vec4<u32>(0u, 2220u, 4294967295u, 4294967295u), vec4<u32>(3263u, 4294967295u, 4294967295u, 1u), vec4<u32>(50250u, 4294967295u, 11880u, 4294967295u), vec4<u32>(4294967295u, 33749u, 79723u, 38542u), vec4<u32>(0u, 1u, 4294967295u, 0u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u), vec4<u32>(0u, 39385u, 0u, 49824u), vec4<u32>(4294967295u, 3272u, 72982u, 44698u), vec4<u32>(13869u, 0u, 4294967295u, 0u), vec4<u32>(0u, 1u, 4826u, 1u));

var<private> global3: vec2<f32> = vec2<f32>(-503f, -1107f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: Struct_2) -> bool {
    var var_0 = arg_2;
    let var_1 = vec2<u32>(30737u, reverseBits(~(~0u)) ^ ~u_input.b.x);
    var var_2 = Struct_3(Struct_2(var_0.a));
    let var_3 = Struct_2(arg_2.a);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global3.x, 479f), global3.x))) + 810f);
    return any(select(!vec3<bool>(true, true, any(vec4<bool>(true, false, false, true))), select(vec3<bool>(any(vec2<bool>(var_3.a.a.x, arg_1)), true, arg_0 <= 13805i), vec3<bool>(true, global0.a.a.x, global0.a.a.x), !global0.a.a.x), !select(select(vec3<bool>(false, var_2.a.a.a.x, var_2.a.a.a.x), vec3<bool>(global0.a.a.x, arg_1, false), var_3.a.a.x), vec3<bool>(false, var_3.a.a.x, false), true)));
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_2(global0.a);
    global1 = array<Struct_1, 19>();
    let var_1 = select(vec4<bool>(global0.a.a.x, global3.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x - global3.x)), select(true, true, !(!var_0.a.a.x)), var_0.a.a.x), vec4<bool>(select(false, firstLeadingBit(-1i) >= u_input.a.x, global0.a.a.x), select(true, var_0.a.a.x, global0.a.a.x), global0.a.a.x, func_3(_wgslsmith_sub_i32(1234i, 2147483647i) >> (max(u_input.c, 28341u) % 32u), true, var_0)), select(vec4<bool>(false, true, true, false), vec4<bool>(false, global0.a.a.x, !var_0.a.a.x, true), !vec4<bool>(!global0.a.a.x, var_0.a.a.x, true, var_0.a.a.x || false)));
    global2 = array<vec4<u32>, 16>();
    let var_2 = Struct_3(var_0);
    return var_2;
}

fn func_1() -> Struct_2 {
    global2 = array<vec4<u32>, 16>();
    let var_0 = vec2<i32>(firstLeadingBit(firstTrailingBit(max(-u_input.d, _wgslsmith_div_i32(2147483647i, -1i)))), 1367i);
    let var_1 = ~vec2<u32>(~25677u, 1u);
    var var_2 = func_2();
    let var_3 = -u_input.a;
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1729f, _wgslsmith_f_op_f32(min(global3.x, 1164f)), 675f));
    let var_1 = max(~select(min(49517u, 4294967295u), 0u, true) >> (66558u % 32u), 1u);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 487f, -136f) + vec3<f32>(445f, var_0.x, 1000f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1233f, -238f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -933f, -1000f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-3078f, 842f, global3.x))))));
    var var_3 = select(global0.a.a, global0.a.a, func_1().a.a.x);
    var var_4 = Struct_3(func_1());
    var_4 = Struct_3(Struct_2(func_1().a));
    let x = u_input.a;
    s_output = StorageBuffer(-1684f, var_2.x);
}

