struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: i32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(true));

var<private> global2: i32;

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    var var_0 = arg_1;
    return arg_1;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32, arg_3: Struct_2) -> u32 {
    var var_0 = Struct_2(true);
    return 22406u;
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_1) -> i32 {
    var var_0 = vec3<u32>(0u, firstTrailingBit(arg_0.x), firstLeadingBit(arg_0.x));
    let var_1 = func_3(global1[_wgslsmith_index_u32(4294967295u, 18u)], func_2(!(!vec4<bool>(arg_2.a, arg_2.a, global3.a, arg_1.a)), arg_2, arg_1), 2061f, Struct_2(!arg_1.a));
    var var_2 = max(firstTrailingBit(global3.c ^ select(-1i, u_input.b, false)), -5703i) | max(global0.c, max(_wgslsmith_sub_i32(global3.c, arg_2.c) | _wgslsmith_mod_i32(-78i, 2147483647i), arg_2.c));
    var_0 = ~vec3<u32>(~abs(~65497u), _wgslsmith_clamp_u32(arg_0.x, arg_0.x, 4294967295u), _wgslsmith_clamp_u32(var_1, reverseBits(var_1), arg_0.x & ~4294967295u));
    let var_3 = Struct_1(global0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(124f, _wgslsmith_f_op_f32(-558f + global3.b.x)))), global0.c);
    return global0.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(any(!vec3<bool>(all(vec4<bool>(false, false, global3.a, false)), any(vec2<bool>(global3.a, global3.a)), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.b * vec2<f32>(global0.b.x, -1162f))) - global0.b)), _wgslsmith_clamp_i32(18040i, 0i, -77675i));
    let var_0 = ~(~vec2<i32>(_wgslsmith_div_i32(-13621i, global3.c), -2147483647i));
    var var_1 = firstLeadingBit(_wgslsmith_dot_vec2_i32(firstTrailingBit(var_0), vec2<i32>(_wgslsmith_sub_i32(var_0.x, -3771i), func_1(vec3<u32>(0u, 55314u, 38968u), Struct_2(true), Struct_1(true, global0.b, var_0.x))))) | max(_wgslsmith_mod_i32(-1i, global0.c), u_input.c);
    var var_2 = firstLeadingBit(reverseBits(vec4<u32>(1u, _wgslsmith_mod_u32(~4294967295u, countOneBits(41243u)), ~(~46791u), abs(1u))));
    let var_3 = vec2<u32>(firstTrailingBit(0u), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(ceil(-279f)), -1841f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1208f + global3.b.x) * _wgslsmith_f_op_f32(f32(-1f) * -1542f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x * -494f) * _wgslsmith_f_op_f32(-global0.b.x))))), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, ~u_input.a, global0.c, ~38364i), abs(~(vec4<i32>(11877i, 0i, 14927i, 1i) | vec4<i32>(0i, 6628i, u_input.c, 0i)))), 52397i, -2147483647i);
}

