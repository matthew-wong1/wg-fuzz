struct Struct_1 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: u32,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10>;

var<private> global1: array<Struct_1, 12>;

var<private> global2: array<u32, 10> = array<u32, 10>(84665u, 4294967295u, 0u, 24524u, 4294967295u, 4294967295u, 12893u, 0u, 60914u, 70372u);

var<private> global3: array<u32, 20> = array<u32, 20>(10594u, 1u, 26232u, 4575u, 38584u, 4294967295u, 4376u, 1u, 52374u, 61719u, 0u, 0u, 0u, 47658u, 4294967295u, 13577u, 57206u, 12736u, 4294967295u, 1u);

var<private> global4: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec2<bool>(true, true), -14210i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(374f, -706f, arg_0.a), vec3<f32>(112f, arg_0.a, arg_0.a))))))));
    var var_1 = Struct_2(-765f, global3[_wgslsmith_index_u32(4294967295u, 20u)]);
    global2 = array<u32, 10>();
    var var_2 = u_input.b.wy;
    var var_3 = var_0.zz;
    return Struct_2(arg_0.a, ~19428u);
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: vec4<f32>) -> bool {
    var var_0 = _wgslsmith_clamp_vec4_u32(~(~(~vec4<u32>(global3[_wgslsmith_index_u32(39637u, 20u)], global3[_wgslsmith_index_u32(arg_0.b, 20u)], 8112u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.b, 10u)], 10u)]))), vec4<u32>(18833u, global2[_wgslsmith_index_u32(min(31491u, 4294967295u), 10u)] | countOneBits(4294967295u), 4294967295u, 66718u), firstTrailingBit(~vec4<u32>(4294967295u, 1u, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.b, 10u)], 20u)], 40640u) >> (vec4<u32>(4294967295u, 71021u, arg_0.b, 1u) % vec4<u32>(32u)))) >> (select(vec4<u32>(1u ^ ~arg_1, 8867u, ~arg_1, arg_0.b), _wgslsmith_mod_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(1u, 20u)], firstLeadingBit(global3[_wgslsmith_index_u32(30123u, 20u)]), 40966u, 4294967295u), firstTrailingBit(vec4<u32>(global3[_wgslsmith_index_u32(40150u, 20u)], 25742u, 23093u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 20u)], 10u)], 10u)]))), true) % vec4<u32>(32u));
    global4 = array<Struct_1, 1>();
    var var_1 = !(!any(vec3<bool>(false, false, true)) == true);
    var var_2 = Struct_2(arg_0.a, arg_1);
    var_2 = Struct_2(_wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(arg_2.x * func_1(Struct_2(-814f, 26519u)).a)), 1u);
    return any(vec4<bool>(any(vec4<bool>(true, arg_2.x <= -1132f, true, true)), any(vec2<bool>(true, true)), true, _wgslsmith_f_op_f32(f32(-1f) * -643f) == _wgslsmith_f_op_f32(-349f - arg_0.a)));
}

fn func_2() -> bool {
    let var_0 = Struct_4(vec4<bool>(true, false, !func_3(Struct_3(-625f, global2[_wgslsmith_index_u32(1u, 10u)]), 4294967295u, vec4<f32>(-297f, -1000f, 350f, -1000f)) | true, (1u == global2[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(77u, 20u)], 10u)]) != true), vec2<bool>(true, all(vec4<bool>(true, func_3(Struct_3(-353f, 46586u), global3[_wgslsmith_index_u32(4294967295u, 20u)], vec4<f32>(-600f, 715f, 968f, 1877f)), any(vec2<bool>(false, true)), true))));
    global2 = array<u32, 10>();
    let var_1 = vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(~(~0u), 20u)], abs(abs(~_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 20u)], 20u)], 10u)], 10u)], 10u)], 10u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 20u)]))));
    let var_2 = ~_wgslsmith_div_i32(u_input.b.x, _wgslsmith_dot_vec2_i32(u_input.b.yy, vec2<i32>(max(4449i, u_input.b.x), -u_input.b.x)));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -310f))))), firstLeadingBit(1u));
    return false;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: u32) -> Struct_4 {
    let var_0 = vec3<i32>(2147483647i, 6658i, abs(_wgslsmith_sub_i32(u_input.a, firstTrailingBit(u_input.a))));
    let var_1 = func_1(Struct_2(-1067f, _wgslsmith_sub_u32(~1u, abs(0u))));
    global0 = array<u32, 10>();
    let var_2 = vec3<u32>(firstLeadingBit(102064u), _wgslsmith_div_u32(abs(0u), arg_2), reverseBits(_wgslsmith_div_u32(arg_2, 36553u)));
    global2 = array<u32, 10>();
    return Struct_4(arg_0, !(!arg_0.zz));
}

fn func_5(arg_0: Struct_4, arg_1: i32) -> vec4<u32> {
    global3 = array<u32, 20>();
    var var_0 = arg_0;
    return vec4<u32>(firstTrailingBit(~_wgslsmith_clamp_u32(~55718u, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(0u, 10u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 20u)], 20u)], 10u)]), 1u)), global3[_wgslsmith_index_u32(abs(~global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(29731u, global3[_wgslsmith_index_u32(113529u, 20u)]) << ((4294967295u & global2[_wgslsmith_index_u32(4294967295u, 10u)]) % 32u), 20u)]), 20u)], 33287u, 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 10>();
    let var_0 = func_1(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -744f) + _wgslsmith_f_op_f32(f32(-1f) * -129f))), _wgslsmith_mod_u32(~global3[_wgslsmith_index_u32(4196u, 20u)], 1u) >> (global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(35342u, 20u)], 10u)], 10u)] | ~38098u, 20u)] % 32u)));
    var var_1 = _wgslsmith_div_f32(-1463f, -1254f);
    var var_2 = func_5(func_4(!vec4<bool>(func_2(), all(vec2<bool>(false, false)), true, true), ~vec2<u32>(1u ^ global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(57594u, 10u)], 10u)], var_0.b ^ global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 10u)], 20u)]), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~(~abs(4294967295u)), 10u)], 10u)]), u_input.a);
    var var_3 = func_1(var_0);
    let x = u_input.a;
    s_output = StorageBuffer(abs(-_wgslsmith_clamp_vec2_i32(u_input.b.yx, u_input.b.yy, u_input.b.ww) | vec2<i32>(abs(u_input.a), i32(-1i) * -1i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1017f, var_0.a, var_3.a) * _wgslsmith_div_vec3_f32(vec3<f32>(var_3.a, var_3.a, var_3.a), vec3<f32>(var_0.a, -525f, -1010f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-882f, 755f, var_3.a)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-938f, var_0.a, var_3.a) * vec3<f32>(1051f, var_0.a, -1262f)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))), -369f)), _wgslsmith_mod_u32(17147u, firstTrailingBit(global2[_wgslsmith_index_u32(1u, 10u)]) << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, var_3.b, global2[_wgslsmith_index_u32(0u, 10u)], 38944u), ~vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(var_3.b, 20u)], 1u, 4294967295u)) % 32u)));
}

