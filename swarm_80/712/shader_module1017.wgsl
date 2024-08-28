struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: vec4<f32>;

var<private> global2: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec2<bool>(true, false), true, vec2<u32>(57197u, 24591u)), Struct_1(vec2<bool>(true, false), true, vec2<u32>(1u, 0u)), Struct_1(vec2<bool>(true, false), true, vec2<u32>(0u, 27200u)), Struct_1(vec2<bool>(true, true), true, vec2<u32>(23647u, 41863u)), Struct_1(vec2<bool>(true, false), false, vec2<u32>(26463u, 1u)), Struct_1(vec2<bool>(true, false), true, vec2<u32>(0u, 1u)), Struct_1(vec2<bool>(false, false), false, vec2<u32>(0u, 4294967295u)), Struct_1(vec2<bool>(false, true), false, vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec2<bool>(false, true), false, vec2<u32>(0u, 0u)), Struct_1(vec2<bool>(false, true), false, vec2<u32>(58748u, 22276u)), Struct_1(vec2<bool>(false, true), true, vec2<u32>(0u, 13041u)), Struct_1(vec2<bool>(true, true), false, vec2<u32>(1u, 4294967295u)), Struct_1(vec2<bool>(false, false), true, vec2<u32>(15251u, 12883u)), Struct_1(vec2<bool>(false, false), false, vec2<u32>(0u, 4294967295u)), Struct_1(vec2<bool>(true, false), true, vec2<u32>(72276u, 25396u)), Struct_1(vec2<bool>(false, false), true, vec2<u32>(18605u, 51815u)), Struct_1(vec2<bool>(false, false), true, vec2<u32>(1u, 22666u)), Struct_1(vec2<bool>(false, false), false, vec2<u32>(17060u, 37279u)), Struct_1(vec2<bool>(false, false), true, vec2<u32>(0u, 4294967295u)), Struct_1(vec2<bool>(false, false), false, vec2<u32>(1u, 31725u)), Struct_1(vec2<bool>(false, false), true, vec2<u32>(1u, 1u)), Struct_1(vec2<bool>(true, true), false, vec2<u32>(53987u, 28611u)), Struct_1(vec2<bool>(false, true), true, vec2<u32>(54898u, 0u)), Struct_1(vec2<bool>(true, true), false, vec2<u32>(4294967295u, 79135u)), Struct_1(vec2<bool>(true, true), false, vec2<u32>(63838u, 4294967295u)), Struct_1(vec2<bool>(false, false), true, vec2<u32>(23456u, 71948u)), Struct_1(vec2<bool>(true, true), true, vec2<u32>(54418u, 1206u)), Struct_1(vec2<bool>(true, true), true, vec2<u32>(1u, 0u)), Struct_1(vec2<bool>(true, false), true, vec2<u32>(1u, 1u)), Struct_1(vec2<bool>(false, false), false, vec2<u32>(18545u, 0u)), Struct_1(vec2<bool>(false, false), false, vec2<u32>(11828u, 1u)), Struct_1(vec2<bool>(false, false), false, vec2<u32>(0u, 36337u)));

var<private> global3: vec3<u32>;

var<private> global4: Struct_1;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    global2 = array<Struct_1, 32>();
    let var_0 = ~max(global3.x, max(global4.c.x, u_input.d));
    let var_1 = select(~max(select(reverseBits(vec3<u32>(global3.x, arg_0.c.x, 0u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, global4.c.x, var_0), vec3<u32>(u_input.d, 59372u, 75915u), vec3<u32>(global4.c.x, 1u, 1u)), arg_0.a.x | arg_1.b), ~_wgslsmith_div_vec3_u32(vec3<u32>(0u, 29498u, global3.x), vec3<u32>(4312u, arg_1.c.x, global3.x))), abs(~(~vec3<u32>(var_0, 20049u, u_input.c))), true);
    var var_2 = arg_0;
    var_2 = arg_0;
    return vec4<bool>(true, u_input.e <= u_input.e, !global4.b, !arg_1.b);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = vec4<bool>(all(func_3(Struct_1(select(vec2<bool>(false, arg_0.a.x), global4.a, vec2<bool>(global4.b, true)), !global4.a.x, vec2<u32>(4294967295u, global3.x)), Struct_1(global4.a, true, arg_0.c ^ global4.c))), false, false, any(!select(vec4<bool>(true, false, true, true), vec4<bool>(arg_0.a.x, true, global4.a.x, arg_0.b), select(global4.a.x, global4.a.x, arg_0.b))));
    global4 = Struct_1(global4.a, true, _wgslsmith_mod_vec2_u32(arg_0.c, vec2<u32>(1u, global4.c.x) & _wgslsmith_clamp_vec2_u32(firstLeadingBit(arg_0.c), select(global3.zy, vec2<u32>(u_input.a, global4.c.x), arg_0.a.x), countOneBits(global4.c))));
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, global1.x)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.x, global1.x, -184f, global1.x), vec4<f32>(global1.x, -603f, global1.x, 142f)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(702f, global1.x, global1.x, global1.x), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(176f, 1199f, global1.x, 929f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 398f, 1000f, global1.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -1826f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.x - global1.x))), 633f))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 928f, var_1.x, global1.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.x, 152f, 1006f, global1.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, var_1.x, var_1.x, var_1.x) + vec4<f32>(588f, var_1.x, 1463f, global1.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.x, global1.x, -1000f, 1095f), vec4<f32>(var_1.x, 611f, 451f, global1.x))))), true)));
    var var_2 = 1u;
    return Struct_1(arg_0.a, true, countOneBits(~countOneBits(~vec2<u32>(78956u, 4294967295u))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: i32, arg_3: vec2<bool>) -> vec4<i32> {
    let var_0 = func_2(global2[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(12110u, global3.x, ~58562u)), 32u)]);
    var var_1 = var_0;
    global1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-437f, global1.x, global1.x, global1.x)))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, -1910f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.x, global1.x, global1.x, global1.x))))))));
    global0 = 34869u;
    global4 = var_0;
    return vec4<i32>(7364i, arg_2, 1i, ~_wgslsmith_add_i32(u_input.e | (arg_2 | arg_2), 2147483647i));
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_1) -> StorageBuffer {
    let var_0 = true;
    return StorageBuffer(12707u, ~vec3<u32>(115715u, max(1u, 1u), global3.x), abs(func_4(func_2(arg_2), true, _wgslsmith_clamp_i32(1i, min(arg_1.x, 1104i), firstTrailingBit(-2147483647i)), arg_2.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(615f * global1.x))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.x + global1.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 32>();
    var var_0 = vec4<f32>(1026f, _wgslsmith_f_op_f32(ceil(1088f)), _wgslsmith_f_op_f32(max(-2196f, _wgslsmith_f_op_f32(abs(global1.x)))), global1.x);
    var var_1 = all(vec2<bool>(global4.a.x, !global4.b));
    global4 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(global3.x >> (_wgslsmith_mod_u32(u_input.c, global3.x) % 32u)), _wgslsmith_clamp_u32(u_input.d, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(global3.x, u_input.d), 61310u, countOneBits(94361u)), 1u)) ^ global3.x, 32u)];
    global0 = u_input.b;
    let var_2 = 691f;
    let x = u_input.a;
    s_output = func_1(2147483647i, vec2<i32>(u_input.e >> (global4.c.x % 32u), abs(-reverseBits(28696i))), global2[_wgslsmith_index_u32(global4.c.x, 32u)]);
}

