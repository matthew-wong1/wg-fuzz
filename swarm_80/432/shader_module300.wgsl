struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: vec2<f32> = vec2<f32>(-1458f, -1052f);

var<private> global2: vec3<bool>;

var<private> global3: vec3<bool>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>, arg_2: vec2<u32>, arg_3: f32) -> f32 {
    global2 = !global0.yyy;
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-474f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -692f) * _wgslsmith_f_op_f32(arg_3 - 521f)), -306f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 - -1305f) + _wgslsmith_f_op_f32(-arg_3)))));
    global3 = vec3<bool>(all(global2.zx), global0.x, !select(global2.x, _wgslsmith_mult_u32(68080u, arg_2.x) >= firstTrailingBit(1u), false));
    let var_1 = 1482f;
    global3 = select(global0.yzx, !(!(!global0.yzx)), select(global3.x, !global3.x, true));
    return -166f;
}

fn func_2(arg_0: f32, arg_1: vec2<f32>) -> f32 {
    var var_0 = 1000f;
    var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(1u, ~(_wgslsmith_sub_vec4_i32(vec4<i32>(27555i, 1i, -38034i, u_input.a), vec4<i32>(u_input.a, u_input.b.x, u_input.a, u_input.b.x)) & vec4<i32>(u_input.a, -47455i, u_input.a, u_input.a)), _wgslsmith_mod_vec2_u32(~vec2<u32>(1u, 1u), ~vec2<u32>(1u, 1u)), _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1106f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f - 843f), _wgslsmith_f_op_f32(abs(1000f)))))))));
    let var_1 = arg_1;
    global1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(ceil(-1771f)))) * _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-2488f, arg_1.x)), _wgslsmith_f_op_f32(-arg_0)));
    let var_2 = ~_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(_wgslsmith_clamp_u32(min(1u, 20709u), ~4294967295u, _wgslsmith_div_u32(1u, 1u)), 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), 51979u | _wgslsmith_dot_vec4_u32(vec4<u32>(13463u, 4294967295u, 46429u, 0u), vec4<u32>(1u, 36322u, 83228u, 29576u))));
    return _wgslsmith_f_op_f32(f32(-1f) * -434f);
}

fn func_1() -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global1.x, vec2<f32>(global1.x, global1.x))))))));
    global2 = global0.zzw;
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -1022f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -682f))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x))))));
    var var_1 = -_wgslsmith_div_i32(u_input.a, 2147483647i);
    global0 = select(!select(select(select(vec4<bool>(true, global2.x, true, false), vec4<bool>(global2.x, global3.x, global3.x, global3.x), true), vec4<bool>(global2.x, global0.x, global0.x, global3.x), global0.x), select(vec4<bool>(global2.x, global2.x, false, global0.x), vec4<bool>(true, global3.x, global2.x, true), select(vec4<bool>(global0.x, false, global2.x, false), vec4<bool>(false, global0.x, global0.x, true), true)), !vec4<bool>(global0.x, global3.x, global2.x, global3.x)), !(!vec4<bool>(!global0.x, all(vec3<bool>(global0.x, global2.x, global3.x)), true, true)), select(select(select(select(vec4<bool>(global3.x, false, global3.x, true), vec4<bool>(global3.x, global2.x, false, global2.x), vec4<bool>(false, true, global2.x, global3.x)), !vec4<bool>(false, false, global3.x, true), select(vec4<bool>(global0.x, false, global2.x, global3.x), vec4<bool>(false, true, global0.x, false), vec4<bool>(global0.x, false, global0.x, true))), select(select(vec4<bool>(true, global2.x, global0.x, global0.x), vec4<bool>(false, global3.x, false, false), vec4<bool>(true, global0.x, global2.x, global3.x)), vec4<bool>(global2.x, global2.x, true, true), vec4<bool>(false, true, false, false)), !select(vec4<bool>(true, true, true, true), vec4<bool>(global3.x, false, global0.x, false), global2.x)), !select(!vec4<bool>(true, global2.x, global3.x, true), select(vec4<bool>(false, global0.x, true, global2.x), vec4<bool>(false, global2.x, global2.x, true), false), !vec4<bool>(false, false, false, global3.x)), select(select(select(vec4<bool>(global0.x, global2.x, global3.x, global2.x), vec4<bool>(global0.x, false, false, false), false), !vec4<bool>(true, global3.x, global3.x, false), !global3.x), vec4<bool>(all(global0.wxz), true, true, true), vec4<bool>(!global3.x, global2.x || global0.x, false, true))));
    return vec4<f32>(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + var_0)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-630f * 160f), 349f))))), _wgslsmith_f_op_f32(-744f * 1165f), -1273f, _wgslsmith_f_op_f32(min(-232f, global1.x)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x));
    var var_1 = Struct_2(abs(arg_1.b), vec4<i32>(u_input.a, u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.b.x, -1i, -2147483647i, 0i), arg_1.b), i32(-1i) * -23952i, -u_input.a), vec4<i32>(1i, abs(1i), 1i, _wgslsmith_add_i32(1i, arg_1.b.x))), firstLeadingBit(reverseBits(arg_1.a.x) ^ 7384i)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_0.a.x)), _wgslsmith_f_op_f32(-1910f - var_0), _wgslsmith_f_op_f32(abs(1532f)), _wgslsmith_div_f32(global1.x, global1.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1851f, -399f, global1.x, var_0), arg_0.a, vec4<bool>(false, false, false, true))))))));
    let var_3 = arg_1;
    let var_4 = firstLeadingBit(select(vec2<u32>(1u, 1u), ~vec2<u32>(1u, 1u), select(select(vec2<bool>(true, global0.x), !global0.zz, vec2<bool>(true, global0.x)), select(select(vec2<bool>(true, false), global0.yz, global0.x), vec2<bool>(false, false), true), !(global1.x != var_0))));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, _wgslsmith_f_op_f32(ceil(global1.x)), 2010f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x) * vec3<f32>(global1.x, global1.x, global1.x)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.x, -1519f, var_0.x))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, 1000f, var_0.x), vec3<f32>(var_0.x, var_0.x, global1.x), true)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -230f), global1.x))));
    var var_1 = ~0u;
    let var_2 = func_4(Struct_1(_wgslsmith_f_op_vec4_f32(func_1())), Struct_2(abs(-_wgslsmith_mod_vec4_i32(vec4<i32>(-3115i, u_input.a, u_input.b.x, -10344i), vec4<i32>(1i, u_input.b.x, -1i, u_input.a))), -vec4<i32>(-15590i, 0i, u_input.b.x | u_input.a, u_input.b.x)));
    global0 = !select(!select(!vec4<bool>(true, true, global3.x, global2.x), vec4<bool>(global2.x, true, true, global2.x), all(global0.xy)), select(select(vec4<bool>(true, global3.x, global2.x, global0.x), vec4<bool>(true, global2.x, false, global0.x), false), select(select(vec4<bool>(global0.x, global2.x, false, global2.x), vec4<bool>(true, global0.x, global0.x, global3.x), global2.x), select(vec4<bool>(global0.x, global0.x, global3.x, true), vec4<bool>(true, global2.x, false, true), vec4<bool>(global2.x, global0.x, global0.x, true)), global0.x), select(false, global3.x, true)), !select(vec4<bool>(false, true, false, true), !vec4<bool>(false, global2.x, true, false), global0.x));
    let var_3 = func_4(Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-465f, -1636f, var_0.x, global1.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, global1.x, 889f, var_0.x) * vec4<f32>(var_0.x, -588f, 904f, 1000f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(334f, global1.x, global1.x, -440f) - vec4<f32>(1495f, var_0.x, var_0.x, var_0.x)))))), var_2);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(min(firstLeadingBit(vec3<u32>(4294967295u, 0u, 1u)), vec3<u32>(1u, 1u, 1u))), 4294967295u, _wgslsmith_dot_vec4_i32(func_4(Struct_1(vec4<f32>(global1.x, -916f, var_0.x, global1.x)), Struct_2(vec4<i32>(u_input.a, u_input.b.x, var_3.b.x, -14969i), vec4<i32>(var_3.b.x, -2147483647i, 1i, 23449i))).a, var_3.b), ~firstTrailingBit(select(_wgslsmith_sub_u32(4294967295u, 74746u), 1u, !global2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(3048f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(808f * -681f) - 1f)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.x, var_0.x)) * _wgslsmith_f_op_f32(-var_0.x))))));
}

