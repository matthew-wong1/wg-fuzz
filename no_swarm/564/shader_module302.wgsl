struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: vec2<f32> = vec2<f32>(1357f, 274f);

var<private> global2: array<Struct_1, 28>;

var<private> global3: Struct_1;

var<private> global4: Struct_1 = Struct_1(vec3<u32>(0u, 18197u, 8513u), 24047u, vec2<i32>(0i, -1i));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> i32 {
    var var_0 = global2[_wgslsmith_index_u32(~12452u >> (global4.b % 32u), 28u)];
    global3 = global2[_wgslsmith_index_u32(global4.a.x, 28u)];
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - 1671f)), global1.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-330f, -242f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1410f, global1.x), vec2<f32>(-1000f, global1.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) * vec2<f32>(405f, -115f)))))));
    let var_1 = Struct_1(select(~_wgslsmith_div_vec3_u32(global4.a, firstTrailingBit(vec3<u32>(global3.b, 0u, 16577u))), global3.a, vec3<bool>((var_0.a.x | global4.b) <= _wgslsmith_sub_u32(var_0.a.x, 11150u), global0.x, true)), 0u, global4.c);
    var var_2 = _wgslsmith_f_op_f32(-global1.x);
    return var_0.c.x;
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    global2 = array<Struct_1, 28>();
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.x, global1.x), vec2<f32>(469f, global1.x))))))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1166f, _wgslsmith_div_f32(238f, global1.x)))));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-208f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.x)) + -2178f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_0)) * var_0)));
    var var_1 = vec3<u32>(14499u, 0u, ~global3.a.x);
    var var_2 = arg_1;
    return global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, ~31577u >> (~4294967295u % 32u)), 28u)];
}

fn func_1(arg_0: i32) -> vec2<bool> {
    var var_0 = countOneBits(~(~vec4<u32>(global4.a.x, ~0u, global4.a.x, firstTrailingBit(0u))));
    var var_1 = func_3(func_2(), Struct_1(countOneBits(firstTrailingBit(vec3<u32>(1u, 840u, var_0.x))) << (vec3<u32>(abs(global4.a.x), 1u, global4.a.x) % vec3<u32>(32u)), ~max(1u, ~18130u), -firstTrailingBit(global3.c)));
    var var_2 = vec4<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -330f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(trunc(426f)))) * _wgslsmith_f_op_f32(select(global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -472f), _wgslsmith_f_op_f32(max(global1.x, global1.x))), !(!global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * global1.x)));
    global0 = !vec4<bool>(false, global0.x, global0.x, false);
    var var_3 = global3.a;
    return !global0.yx;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: vec2<bool>) -> u32 {
    global0 = vec4<bool>(any(arg_0.zzz), false, false, true);
    var var_0 = func_3(firstTrailingBit(countOneBits(u_input.a.x) ^ _wgslsmith_dot_vec2_i32(~vec2<i32>(global4.c.x, 32095i), global4.c)), Struct_1(vec3<u32>(1u, global4.b, ~_wgslsmith_div_u32(global4.a.x, global3.b)), _wgslsmith_dot_vec3_u32(~abs(global4.a), vec3<u32>(~48438u, global4.a.x, ~60553u)), vec2<i32>(~global3.c.x, (i32(-1i) * -55491i) ^ firstLeadingBit(u_input.a.x))));
    global0 = select(vec4<bool>(any(select(vec2<bool>(false, arg_2.x), vec2<bool>(true, true), !arg_0.x)), !(!all(global0.yx)), arg_0.x, ~global4.b <= ~4294967295u), arg_0, !arg_0);
    let var_1 = global2[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(18849u, var_0.a.x, 1u >> (global4.b % 32u), 54417u), countOneBits(vec4<u32>(1u, global3.a.x, global3.b, global3.a.x))), ~4294967295u)), 28u)];
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_1.a.x, var_0.a.x >> (func_3(-func_3(12111i, Struct_1(global4.a, 4294967295u, vec2<i32>(global3.c.x, -2147483647i))).c.x, Struct_1(vec3<u32>(var_0.a.x, 1u, 4294967295u), global3.b, vec2<i32>(-26604i, -31136i))).b % 32u), reverseBits(~_wgslsmith_dot_vec3_u32(var_1.a, vec3<u32>(global4.a.x, 0u, 4294967295u)))), 28u)];
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global4.a, _wgslsmith_add_u32(func_4(vec4<bool>(global0.x, global1.x > -2217f, all(vec4<bool>(global0.x, false, global0.x, global0.x)), all(vec4<bool>(true, false, global0.x, false))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.x, global1.x, global1.x, global1.x))), !func_1(28258i)), ~abs(15038u)), u_input.a.wz);
    var var_1 = global1.x;
    var var_2 = global0.zzx;
    global2 = array<Struct_1, 28>();
    var var_3 = global2[_wgslsmith_index_u32(func_4(!select(!(!vec4<bool>(var_2.x, false, var_2.x, true)), select(!vec4<bool>(var_2.x, false, true, true), !vec4<bool>(false, var_2.x, var_2.x, false), !vec4<bool>(var_2.x, global0.x, global0.x, global0.x)), firstTrailingBit(4294967295u) != global4.a.x), vec4<f32>(926f, global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.x)) * global1.x), _wgslsmith_f_op_f32(-105f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-285f)) * global1.x))), global0.xz), 28u)];
    var var_4 = var_0.a.x;
    var var_5 = func_3(global4.c.x, global2[_wgslsmith_index_u32(~(~abs(var_0.a.x)), 28u)]);
    var var_6 = _wgslsmith_mult_u32(var_0.b, var_3.b) >> (var_5.b % 32u);
    var var_7 = vec2<bool>(true, true);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(global4.c.x | global3.c.x, global3.c.x), -18437i, var_0.a.yx, _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(abs(select(vec3<i32>(0i, 1i, 0i), u_input.a.wzy, vec3<bool>(var_7.x, false, true))), vec3<i32>(var_0.c.x, func_3(15168i, global2[_wgslsmith_index_u32(var_3.a.x, 28u)]).c.x, countOneBits(34342i))), -u_input.a.wzx));
}

