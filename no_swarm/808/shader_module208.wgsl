struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 43291u;

var<private> global1: array<Struct_2, 24>;

var<private> global2: vec2<bool> = vec2<bool>(true, true);

var<private> global3: vec4<u32>;

var<private> global4: vec3<i32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: vec2<u32>, arg_3: bool) -> bool {
    var var_0 = true;
    var var_1 = !select(all(vec2<bool>(false, true)), true, arg_0.x);
    global1 = array<Struct_2, 24>();
    return !any(vec4<bool>(true, true, true, true));
}

fn func_2(arg_0: vec4<f32>, arg_1: u32) -> Struct_1 {
    global2 = !select(select(!vec2<bool>(global2.x, true), select(vec2<bool>(global2.x, global2.x), vec2<bool>(false, true), func_3(vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(false, global2.x, global2.x), global3.zz, global2.x)), vec2<bool>(true, true)), select(select(!vec2<bool>(global2.x, true), vec2<bool>(true, true), vec2<bool>(global2.x, global2.x)), select(!vec2<bool>(global2.x, true), vec2<bool>(true, global2.x), !vec2<bool>(global2.x, true)), all(vec4<bool>(false, global2.x, global2.x, global2.x))), select(select(select(vec2<bool>(true, false), vec2<bool>(false, true), global2.x), !vec2<bool>(global2.x, global2.x), !vec2<bool>(false, global2.x)), vec2<bool>(true, global2.x), vec2<bool>(true, global2.x || true)));
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(max(-1850f, arg_0.x))), arg_0.x, _wgslsmith_f_op_f32(sign(arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x)) - vec4<f32>(-930f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * 522f)), arg_0.x, _wgslsmith_f_op_f32(-arg_0.x))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0 - _wgslsmith_f_op_vec4_f32(-arg_0))))));
    global2 = vec2<bool>(true, true);
    var var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~(4294967295u >> (~arg_1 % 32u)), 1u), 24u)];
    var var_2 = firstLeadingBit(1u);
    return Struct_1(vec4<u32>(28307u, _wgslsmith_dot_vec2_u32(~(~global3.zz), min(select(vec2<u32>(0u, global3.x), global3.zx, global2.x), ~global3.ww)), 4294967295u, 4294967295u), global3.zzw, vec4<u32>(global3.x, global3.x, global3.x, _wgslsmith_add_u32(arg_1, global3.x)), 1u);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> u32 {
    global4 = u_input.a;
    global3 = arg_0.c;
    global4 = -vec3<i32>((-15176i << (1u % 32u)) & countOneBits(-arg_1), 47821i, select(firstLeadingBit(global4.x), ~reverseBits(arg_1), global2.x));
    global4 = -_wgslsmith_clamp_vec3_i32(vec3<i32>(~u_input.b.x, -14986i, -1i) | vec3<i32>(i32(-1i) * -1643i, arg_1 | arg_1, arg_1), -firstTrailingBit(u_input.b << (vec3<u32>(global3.x, global3.x, 4294967295u) % vec3<u32>(32u))), u_input.a);
    global3 = arg_0.a;
    return abs(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(~1u, 31013u, func_2(_wgslsmith_div_vec4_f32(vec4<f32>(1320f, -872f, -392f, 416f), vec4<f32>(1240f, 1304f, -615f, -1002f)), _wgslsmith_mod_u32(arg_0.b.x, 19962u)).d), _wgslsmith_mult_u32(~46030u, _wgslsmith_dot_vec3_u32(firstTrailingBit(global3.wzx), ~vec3<u32>(28353u, global3.x, 4294967295u)))));
}

fn func_1(arg_0: vec4<u32>) -> vec4<u32> {
    global0 = global3.x;
    var var_0 = ~(vec4<u32>(26734u, arg_0.x, 1u, arg_0.x) >> (~(~vec4<u32>(0u, arg_0.x, 2408u, 4294967295u)) % vec4<u32>(32u)));
    var var_1 = Struct_1(~vec4<u32>(15757u, 0u, ~global3.x, abs(7529u)) << (arg_0 % vec4<u32>(32u)), reverseBits(~global3.yyy & vec3<u32>(4294967295u, arg_0.x, _wgslsmith_sub_u32(57745u, 138u))), arg_0, var_0.x);
    var var_2 = global1[_wgslsmith_index_u32(func_4(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(897f, 1552f, 1321f, -642f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1380f, -2166f, 931f, 1260f)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-320f, -678f, 1500f, -1081f))))), 1u), global4.x, false), 24u)];
    global3 = arg_0;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_2(-1i));
    global1 = array<Struct_2, 24>();
    global3 = ~(~_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(func_1(vec4<u32>(global3.x, global3.x, 1u, global3.x)), vec4<u32>(global3.x, global3.x, 23071u, 25127u)), (vec4<u32>(21305u, 26419u, 85318u, global3.x) >> (vec4<u32>(4294967295u, global3.x, global3.x, 0u) % vec4<u32>(32u))) << ((vec4<u32>(4294967295u, 28220u, 1u, global3.x) << (vec4<u32>(0u, 11003u, 5850u, global3.x) % vec4<u32>(32u))) % vec4<u32>(32u)), abs(vec4<u32>(global3.x, 1u, 1u, 0u))));
    global2 = !(!vec2<bool>(func_3(vec3<bool>(global2.x, false, global2.x), select(vec3<bool>(global2.x, false, false), vec3<bool>(false, false, true), vec3<bool>(global2.x, true, global2.x)), vec2<u32>(global3.x, 35833u) << (global3.wy % vec2<u32>(32u)), true), !any(vec2<bool>(global2.x, true))));
    var var_1 = Struct_1(~(~vec4<u32>(global3.x, 1u, 75360u, _wgslsmith_add_u32(12628u, global3.x))), global3.zzx, abs(~(~vec4<u32>(29801u, global3.x, global3.x, 0u))), ~global3.x);
    global2 = !(!(!select(!vec2<bool>(global2.x, global2.x), select(vec2<bool>(global2.x, false), vec2<bool>(global2.x, global2.x), global2.x), global2.x || global2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec2_u32(firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(var_1.d, var_1.a.x))), global3.xz), vec4<i32>(-40499i, u_input.b.x, 0i, -u_input.a.x));
}

