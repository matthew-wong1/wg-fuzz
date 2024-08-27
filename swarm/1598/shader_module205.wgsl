struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<f32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(true, true, false, true), -1316f);

var<private> global1: vec4<i32> = vec4<i32>(i32(-2147483648), 3673i, 1i, 2147483647i);

var<private> global2: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec4<bool>(true, true, true, true), 1434f), Struct_1(vec4<bool>(true, true, true, true), 1412f), Struct_1(vec4<bool>(true, false, false, false), -1129f), Struct_1(vec4<bool>(true, true, false, false), 574f), Struct_1(vec4<bool>(false, true, true, false), -530f), Struct_1(vec4<bool>(true, true, true, false), 123f), Struct_1(vec4<bool>(false, true, true, false), -1741f), Struct_1(vec4<bool>(false, true, false, true), -194f), Struct_1(vec4<bool>(true, true, true, true), 1912f), Struct_1(vec4<bool>(false, true, false, false), -2125f), Struct_1(vec4<bool>(true, false, false, true), 1312f), Struct_1(vec4<bool>(true, false, true, false), 1498f), Struct_1(vec4<bool>(false, false, true, true), 113f));

var<private> global3: array<vec2<i32>, 27>;

var<private> global4: f32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32) -> vec4<f32> {
    var var_0 = Struct_1(!(!select(global0.a, !global0.a, !global0.a)), _wgslsmith_f_op_f32(min(1000f, 893f)));
    let var_1 = global0.a.x;
    var var_2 = select(vec2<bool>(true, global0.a.x), var_0.a.xw, !(var_0.a.x == false));
    var_0 = Struct_1(global0.a, _wgslsmith_f_op_f32(step(var_0.b, 678f)));
    var var_3 = vec2<u32>(arg_0, _wgslsmith_div_u32(firstTrailingBit(arg_0), 4294967295u << (~(arg_0 & 0u) % 32u)));
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) - var_0.b)), global0.b, var_0.b, -803f);
}

fn func_2(arg_0: vec2<u32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.b), 595f, _wgslsmith_f_op_f32(step(global0.b, global0.b)), _wgslsmith_f_op_f32(ceil(-205f))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_mod_u32(~arg_0.x, ~21709u))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -481f))), global0.b, _wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(global0.b * global0.b)), global0.b)));
    let var_1 = vec4<bool>(!(!(~arg_0.x >= _wgslsmith_add_u32(arg_0.x, 20134u))), global0.a.x, !(global0.a.x & any(!global0.a.zy)), true);
    let var_2 = ~(~vec3<u32>(~arg_0.x | ~arg_0.x, _wgslsmith_sub_u32(~30974u, 35509u), arg_0.x));
    var var_3 = Struct_1(select(vec4<bool>(true, var_1.x, true, any(global0.a.xx)), var_1, select(select(select(var_1, vec4<bool>(false, global0.a.x, var_1.x, false), vec4<bool>(false, global0.a.x, global0.a.x, global0.a.x)), !vec4<bool>(var_1.x, false, true, false), !vec4<bool>(true, true, false, global0.a.x)), !vec4<bool>(var_1.x, global0.a.x, true, global0.a.x), true)), -278f);
    global0 = Struct_1(vec4<bool>(any(!(!var_3.a)), true, all(select(!vec4<bool>(var_3.a.x, false, var_3.a.x, var_3.a.x), vec4<bool>(false, true, var_1.x, var_1.x), vec4<bool>(var_3.a.x, var_3.a.x, var_1.x, false))), true), var_0.x);
    return select(!(!all(select(var_1, var_3.a, true))), (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -401f)) >= _wgslsmith_div_f32(global0.b, _wgslsmith_f_op_f32(1333f + -1000f))) & true, !any(!(!global0.a.yz)));
}

fn func_4(arg_0: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.b), -362f) - _wgslsmith_f_op_vec4_f32(func_3(1u)).ww);
    var var_1 = Struct_1(global0.a, _wgslsmith_f_op_f32(1370f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b * var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var var_2 = var_1.a.yz;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, global0.b, 419f)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, global0.b, -653f) - vec3<f32>(var_0.x, global0.b, var_1.b))))))));
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -559f);
    return Struct_1(select(vec4<bool>(var_2.x, true, true, true), select(vec4<bool>(true || global0.a.x, false, true, true), select(vec4<bool>(arg_0, var_1.a.x, var_2.x, var_1.a.x), select(vec4<bool>(var_2.x, true, true, false), vec4<bool>(global0.a.x, global0.a.x, var_1.a.x, false), var_2.x), vec4<bool>(var_2.x, true, var_2.x, true)), vec4<bool>(true, select(false, false, var_2.x), var_0.x != -591f, u_input.a <= global1.x)), global0.a), var_1.b);
}

fn func_1(arg_0: vec2<u32>) -> u32 {
    let var_0 = func_4(!any(vec3<bool>(true, global0.a.x, func_2(arg_0))));
    global0 = func_4(all(global0.a.wz));
    let var_1 = !(!(!(!vec3<bool>(global0.a.x, false, var_0.a.x))));
    let var_2 = Struct_1(global0.a, var_0.b);
    var var_3 = _wgslsmith_div_f32(-1119f, -1212f);
    return 4294967295u << ((4294967295u & ~(~_wgslsmith_add_u32(66058u, arg_0.x))) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = global0.b;
    var var_0 = _wgslsmith_mult_vec3_i32(~firstTrailingBit(-vec3<i32>(9571i, global1.x, -19382i) ^ vec3<i32>(global1.x, global1.x, -2147483647i)), u_input.b.wyx);
    let var_1 = u_input.b.zyz;
    var var_2 = vec3<u32>(abs(1u), ~func_1(~vec2<u32>(1u, 1u)), 2318u);
    var var_3 = var_1.x;
    var var_4 = func_4(true);
    let var_5 = !vec4<bool>(false, var_4.a.x, var_4.a.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(~0u, 1u, 89171u) | firstTrailingBit(~countOneBits(vec3<u32>(1u, var_2.x, 49928u))), var_4.b, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, 1000f, 1000f, -237f), vec4<f32>(-200f, var_4.b, global0.b, var_4.b)))))))), vec4<i32>(u_input.b.x, _wgslsmith_clamp_i32(~(-1i), -71931i, 2147483647i), -2147483647i, 26309i), u_input.b);
}

