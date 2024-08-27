struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 16>;

var<private> global1: vec2<u32>;

var<private> global2: vec3<bool>;

var<private> global3: array<Struct_2, 10>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> bool {
    return 0i == u_input.a;
}

fn func_2(arg_0: f32, arg_1: vec4<bool>) -> Struct_2 {
    var var_0 = u_input.a;
    global0 = array<vec2<bool>, 16>();
    let var_1 = 1i;
    return global3[_wgslsmith_index_u32(select(4294967295u, ~global1.x, !arg_1.x), 10u)];
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> Struct_2 {
    global2 = !select(vec3<bool>(true, true, true), vec3<bool>(true, global2.x, global2.x), ~_wgslsmith_clamp_i32(u_input.a, -4431i, u_input.a) >= _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(10882i, u_input.a), vec2<i32>(u_input.a, 47689i)), ~vec2<i32>(1i, 0i)));
    let var_0 = func_2(_wgslsmith_f_op_f32(-610f + -1404f), vec4<bool>(true & (-291f <= _wgslsmith_f_op_f32(ceil(arg_1.b.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.a.x)) >= _wgslsmith_f_op_f32(f32(-1f) * -155f), false, global2.x));
    global2 = vec3<bool>(true, global2.x, any(!vec2<bool>(global2.x, global2.x)));
    var var_1 = _wgslsmith_f_op_f32(987f + 1096f);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.c.a * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(arg_0.c.a, vec3<f32>(arg_1.b.a.x, 3534f, var_0.a.x)))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.a.zzx) - arg_1.a.yyw), var_0.b.a)));
    return arg_0;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec3<bool>) -> vec3<bool> {
    global2 = arg_3;
    global1 = ~(~vec2<u32>((arg_2.d | global1.x) ^ arg_1.d, _wgslsmith_dot_vec4_u32(~vec4<u32>(global1.x, arg_2.d, global1.x, arg_1.d), ~vec4<u32>(arg_1.d, 4294967295u, 43058u, global1.x))));
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1389f, arg_2.c.a.x, -968f), arg_2.a.wzw))))));
    global3 = array<Struct_2, 10>();
    return vec3<bool>(true, true, arg_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -max(abs(-vec4<i32>(u_input.a, u_input.a, 0i, -2147483647i)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(-2763i, 0i, u_input.a, u_input.a), firstTrailingBit(vec4<i32>(0i, u_input.a, u_input.a, -1i)), vec4<i32>(-51514i, u_input.a, u_input.a, u_input.a))) << ((~(vec4<u32>(13720u, 12240u, global1.x, global1.x) >> (~vec4<u32>(global1.x, 21439u, 1u, global1.x) % vec4<u32>(32u))) ^ ~firstTrailingBit(abs(vec4<u32>(0u, global1.x, 23594u, global1.x)))) % vec4<u32>(32u));
    var var_1 = true;
    var var_2 = _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(min(vec2<u32>(global1.x, 1u), vec2<u32>(1u, 14126u)), ~vec2<u32>(2269u, 4294967295u), ~vec2<u32>(0u, global1.x)), vec2<u32>(global1.x, ~21352u)), global1.x), vec2<u32>(global1.x, 1u));
    var_1 = select(!(func_1(Struct_2(vec4<f32>(-202f, 169f, 372f, -1806f), Struct_1(vec3<f32>(-506f, 109f, 217f)), Struct_1(vec3<f32>(302f, -520f, 917f)), var_2.x), Struct_1(vec3<f32>(1000f, 2010f, -1000f)), 852f, Struct_1(vec3<f32>(378f, 554f, -900f))) && true), !all(!vec4<bool>(true, true, global2.x, true)), all(select(vec3<bool>(global2.x, global2.x, true), !vec3<bool>(false, true, global2.x), select(vec3<bool>(global2.x, false, global2.x), vec3<bool>(true, false, global2.x), vec3<bool>(false, true, global2.x))))) | true;
    global0 = array<vec2<bool>, 16>();
    var var_3 = var_0.yx;
    global2 = select(func_4(true, func_3(func_2(_wgslsmith_f_op_f32(abs(1966f)), vec4<bool>(global2.x, true, global2.x, global2.x)), func_2(_wgslsmith_f_op_f32(round(-358f)), vec4<bool>(global2.x, true, global2.x, global2.x))), global3[_wgslsmith_index_u32(~reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(48404u, 0u, var_2.x), vec3<u32>(47143u, 4294967295u, global1.x))), 10u)], select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, global2.x), global2.x), vec3<bool>(global2.x, false, true), u_input.a >= -1i), select(select(vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(global2.x, false, global2.x), global2.x), !vec3<bool>(true, global2.x, global2.x), vec3<bool>(true, true, true)), 0u == ~global1.x)), !(!(!select(vec3<bool>(global2.x, false, true), vec3<bool>(global2.x, global2.x, false), true))), select(!(!select(vec3<bool>(false, true, true), vec3<bool>(global2.x, global2.x, true), vec3<bool>(global2.x, false, false))), select(select(vec3<bool>(global2.x, true, false), !vec3<bool>(global2.x, global2.x, false), vec3<bool>(true, true, global2.x)), vec3<bool>(true, global2.x, !global2.x), global2.x), vec3<bool>(any(vec3<bool>(true, true, global2.x)) | func_4(global2.x, Struct_2(vec4<f32>(1000f, -212f, -2028f, 987f), Struct_1(vec3<f32>(-1000f, -187f, 908f)), Struct_1(vec3<f32>(326f, -782f, 585f)), 11206u), global3[_wgslsmith_index_u32(98111u, 10u)], vec3<bool>(true, global2.x, false)).x, global2.x, select(true, global2.x, global2.x))));
    let var_4 = _wgslsmith_div_vec2_u32(max(_wgslsmith_clamp_vec2_u32(vec2<u32>(global1.x, 50274u), ~vec2<u32>(24038u, 21473u) | (vec2<u32>(1u, global1.x) ^ vec2<u32>(0u, var_2.x)), abs(~vec2<u32>(45272u, 0u))), countOneBits(_wgslsmith_mod_vec2_u32(~vec2<u32>(1u, 59829u), ~vec2<u32>(4294967295u, var_2.x)))), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, var_2.x) << (vec2<u32>(var_2.x, 4294967295u) % vec2<u32>(32u)), vec2<u32>(var_2.x, global1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(1464f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-961f - -127f))))), vec3<i32>(_wgslsmith_mult_i32(u_input.a, u_input.a), var_3.x, _wgslsmith_sub_i32(firstLeadingBit(-38816i), -627i)), -633f);
}

