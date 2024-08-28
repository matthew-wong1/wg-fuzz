struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: vec2<u32>,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
    c: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<f32>,
    c: Struct_1,
    d: vec2<bool>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<i32> = vec4<i32>(23757i, -40618i, 2147483647i, 2147483647i);

var<private> global2: array<Struct_3, 31>;

var<private> global3: array<Struct_2, 11>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec4<bool>) -> i32 {
    return ~firstLeadingBit(-3397i);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec3<i32>) -> vec4<i32> {
    global3 = array<Struct_2, 11>();
    var var_0 = select(!select(vec3<bool>(true, any(vec3<bool>(false, true, true)), true), select(vec3<bool>(true, true, false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), true), true && all(vec4<bool>(true, true, true, false))), vec3<bool>(true | any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), true)), true, (_wgslsmith_f_op_f32(round(-138f)) == arg_0.x) == false), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), select(vec3<bool>(false, false, false), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), all(vec4<bool>(false, false, false, false)))));
    var var_1 = arg_1;
    var var_2 = false;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1061f * var_1.a.x), arg_0.x, var_0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1188f))))) - _wgslsmith_f_op_f32(min(1321f, _wgslsmith_f_op_f32(f32(-1f) * -1867f))));
    return ~vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(firstTrailingBit(-914i), -58723i), vec2<i32>(-global1.x, arg_2.x)), 5679i, ~global1.x & -37792i, ~_wgslsmith_mod_i32(1i, _wgslsmith_div_i32(global1.x, arg_2.x)));
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: i32, arg_3: vec2<i32>) -> i32 {
    global1 = vec4<i32>(-7820i | ((-arg_2 | 48457i) & (_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2, arg_3.x, arg_3.x), global1.xwy) << (~35410u % 32u))), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(~arg_3.x, arg_2, _wgslsmith_mod_i32(-2848i, global1.x), firstLeadingBit(global1.x))), func_3(vec2<f32>(_wgslsmith_f_op_f32(step(1030f, 366f)), 270f), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(430f, 648f, 1935f) * vec3<f32>(1213f, -1391f, 1446f))), firstLeadingBit(~global1.zyw))), _wgslsmith_dot_vec4_i32(select(vec4<i32>(1i, abs(u_input.d), arg_3.x, func_1(false, arg_2, vec4<bool>(arg_1.x, false, arg_1.x, false))), -vec4<i32>(-24990i, -1i, 6572i, arg_2), arg_1.x), vec4<i32>(-_wgslsmith_div_i32(u_input.b, 11023i), 30003i, arg_3.x, 0i)), u_input.d);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1028f) * _wgslsmith_f_op_f32(sign(970f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-541f, 297f))))) * _wgslsmith_f_op_f32(abs(1143f)));
    global2 = array<Struct_3, 31>();
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -683f), 2245f), 293f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -411f)), _wgslsmith_f_op_f32(-1f)) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1334f + -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -580f))), _wgslsmith_f_op_f32(f32(-1f) * -336f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-764f * _wgslsmith_f_op_f32(-1518f - -458f)), _wgslsmith_f_op_f32(-1288f * 1000f))));
    let var_1 = global2[_wgslsmith_index_u32(~(~abs(arg_0)), 31u)];
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -925f)))) - _wgslsmith_f_op_f32(sign(2880f)));
    var var_0 = any(vec2<bool>(true, true));
    var var_1 = ~vec4<i32>(func_2(u_input.a & 4294967295u, vec2<bool>(true, true), func_1(false, u_input.d, vec4<bool>(true, true, true, false)), -global1.xz) | reverseBits(global1.x), 14839i, global1.x, -78602i);
    global1 = vec4<i32>(i32(-1i) * -1i, u_input.d, u_input.d, _wgslsmith_mod_i32(-27525i, -1i));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(1238f)))), 1077f)));
    let var_3 = global2[_wgslsmith_index_u32(abs(32633u) ^ ~_wgslsmith_dot_vec2_u32(~abs(vec2<u32>(20629u, u_input.e)), vec2<u32>(1u, 91830u << (u_input.a % 32u))), 31u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(-1000f)), 10885i & u_input.b);
}

