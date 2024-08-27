struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec2<f32>(1706f, -962f)), Struct_1(vec2<f32>(-1118f, 808f)), Struct_1(vec2<f32>(-1016f, 311f)), Struct_1(vec2<f32>(318f, -521f)), Struct_1(vec2<f32>(-1102f, -1000f)), Struct_1(vec2<f32>(826f, 1000f)), Struct_1(vec2<f32>(253f, -1389f)), Struct_1(vec2<f32>(1209f, -497f)), Struct_1(vec2<f32>(1000f, 1081f)), Struct_1(vec2<f32>(1113f, -971f)), Struct_1(vec2<f32>(-749f, -658f)), Struct_1(vec2<f32>(1082f, -871f)), Struct_1(vec2<f32>(1061f, 1062f)), Struct_1(vec2<f32>(-1000f, -1000f)), Struct_1(vec2<f32>(739f, 1653f)), Struct_1(vec2<f32>(-222f, -1361f)), Struct_1(vec2<f32>(375f, 409f)), Struct_1(vec2<f32>(-192f, 300f)), Struct_1(vec2<f32>(-1788f, -1200f)), Struct_1(vec2<f32>(-1054f, 116f)), Struct_1(vec2<f32>(1474f, -3301f)), Struct_1(vec2<f32>(152f, -693f)), Struct_1(vec2<f32>(334f, -636f)));

var<private> global2: Struct_1;

var<private> global3: array<vec3<i32>, 16>;

var<private> global4: Struct_1 = Struct_1(vec2<f32>(-643f, -636f));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    return global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(6747u, 16192u), 23u)];
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: vec3<f32>) -> f32 {
    global1 = array<Struct_1, 23>();
    global4 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(step(arg_0.a.x, func_1(-vec2<i32>(0i, -17883i), func_1(vec2<i32>(arg_1, 0i), global1[_wgslsmith_index_u32(u_input.a.x, 23u)], arg_3.x), 636f).a.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_3.x * 953f)))))));
    var var_0 = false;
    global2 = Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-585f, -703f)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, 697f)))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-func_1(vec2<i32>(1i, arg_1), Struct_1(arg_0.a), arg_0.a.x).a), arg_3.zy)))));
    global2 = arg_0;
    return _wgslsmith_f_op_f32(1149f * _wgslsmith_f_op_f32(-1001f * _wgslsmith_f_op_f32(-global4.a.x)));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> i32 {
    let var_0 = func_1(vec2<i32>(-2147483647i, max(abs(i32(-1i) * -2944i), -3363i)), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)));
    let var_1 = func_1(~max(countOneBits(vec2<i32>(1i, 1i)), ~vec2<i32>(5580i, 0i)), func_1(vec2<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(1i, 19193i) >> (vec2<u32>(u_input.a.x, global0.x) % vec2<u32>(32u)))), Struct_1(vec2<f32>(628f, _wgslsmith_f_op_f32(-246f * global2.a.x))), -224f), func_1(vec2<i32>(-(-304i >> (global0.x % 32u)), ~firstTrailingBit(-23102i)), func_1(vec2<i32>(~1i, 1i), func_1(select(vec2<i32>(0i, 1i), vec2<i32>(-2147483647i, -14703i), vec2<bool>(false, arg_1)), Struct_1(vec2<f32>(-1000f, global4.a.x)), _wgslsmith_f_op_f32(-var_0.a.x)), -554f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(3029f, arg_0.a.x)))).a.x);
    let var_2 = global1[_wgslsmith_index_u32(4294967295u, 23u)];
    global4 = func_1(vec2<i32>(min(-(i32(-1i) * -1i), i32(-1i) * -2147483647i), reverseBits(firstTrailingBit(1i))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(global4.a))))), _wgslsmith_f_op_f32(f32(-1f) * -925f));
    var var_3 = ~(~vec3<u32>(4294967295u, global0.x, reverseBits(global0.x)));
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(-460f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1754f - _wgslsmith_f_op_f32(-global2.a.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.a.x) + global4.a.x)), 407f, _wgslsmith_f_op_f32(step(-1044f, global4.a.x)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_2(func_1(vec2<i32>(0i, 0i), global1[_wgslsmith_index_u32(0u, 23u)], global4.a.x), ~(-1i), all(vec2<bool>(true, true)), var_0.wzw)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), -403f))));
    global1 = array<Struct_1, 23>();
    var var_2 = func_1(firstTrailingBit(vec2<i32>(max(_wgslsmith_add_i32(2147483647i, -32765i), func_3(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], true)), (-27399i << (u_input.a.x % 32u)) | _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, 29125i, 2147483647i), vec4<i32>(20020i, -9613i, -1i, 2147483647i)))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(vec2<u32>(global0.x, u_input.a.x) & _wgslsmith_mod_vec2_u32(global0.xy, vec2<u32>(global0.x, u_input.a.x))), ~global0.yy), 23u)], var_1.a.x);
    var var_3 = _wgslsmith_f_op_f32(ceil(global2.a.x));
    var var_4 = 4294967295u;
    let var_5 = max(firstTrailingBit(~firstLeadingBit(vec4<u32>(u_input.a.x, 1u, global0.x, u_input.a.x))), abs(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 42685u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, global0.x, 1u)) | firstTrailingBit(vec4<u32>(global0.x, 4294967295u, u_input.a.x, 46871u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(((var_5.ywx << (vec3<u32>(0u, 36574u, global0.x) % vec3<u32>(32u))) >> (vec3<u32>(global0.x, var_5.x, 138u) % vec3<u32>(32u))) << (abs(~var_5.xyz) % vec3<u32>(32u)), vec3<u32>(~1u, u_input.a.x & _wgslsmith_div_u32(global0.x, 1u), _wgslsmith_div_u32(u_input.a.x, 62256u) >> (4294967295u % 32u))), -10697i);
}

