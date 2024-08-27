struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec2<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 29>;

var<private> global1: vec4<bool> = vec4<bool>(true, false, false, false);

var<private> global2: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> Struct_1 {
    let var_0 = !(!vec3<bool>(global1.x, false, any(global1.zy)));
    var var_1 = ~(~(~(~4294967295u)));
    global1 = !vec4<bool>(!(!var_0.x), var_0.x, var_0.x, !(true && global1.x));
    let var_2 = Struct_1(vec2<i32>(-2147483647i, u_input.c), ~global0[_wgslsmith_index_u32(1u, 29u)]);
    global0 = array<vec3<u32>, 29>();
    return var_2;
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> bool {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(439f)) - _wgslsmith_f_op_f32(f32(-1f) * -716f)), -884f)), -972f);
    let var_1 = 1i;
    global0 = array<vec3<u32>, 29>();
    var var_2 = 786f;
    return !((u_input.c << (_wgslsmith_mod_u32(arg_2.b.x, arg_0.b.x) % 32u)) > (arg_2.a.x << (arg_2.b.x % 32u))) | false;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: i32) -> bool {
    var var_0 = reverseBits(abs(abs(countOneBits(vec3<i32>(-54030i, -42888i, u_input.c)) & ~vec3<i32>(u_input.c, -22785i, arg_1.a.x))));
    var var_1 = arg_1;
    var_0 = firstTrailingBit(vec3<i32>(28878i, -_wgslsmith_mod_i32(abs(1i), -22676i), u_input.c));
    let var_2 = true;
    var var_3 = Struct_1(var_1.a, (~vec3<u32>(1u, arg_1.b.x, 47267u) | ~arg_1.b) >> (vec3<u32>(abs(var_1.b.x), 0u, u_input.b) % vec3<u32>(32u)));
    return func_3(func_2(), 4188i, arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1277f, -1526f, true))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1267f, 331f) - _wgslsmith_f_op_f32(ceil(-1000f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-530f, -932f))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-242f, -618f), vec2<f32>(-1572f, -2151f), false))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-437f, -821f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(632f, -109f)) * vec2<f32>(-925f, -179f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-775f, -208f)), select(vec2<bool>(global1.x, false), global1.yx, global1.x))), vec2<bool>(true, global1.x))));
    let var_1 = select(global1.zzx, select(!select(vec3<bool>(true, global1.x, true), global1.wwz, func_1(vec3<bool>(false, global1.x, global1.x), Struct_1(global2.a, global0[_wgslsmith_index_u32(43679u, 29u)]), global2.a.x)), vec3<bool>(select(true || global1.x, global1.x | global1.x, true), min(2147483647i, 38252i) == max(global2.a.x, global2.a.x), any(select(vec4<bool>(true, global1.x, global1.x, true), vec4<bool>(global1.x, true, true, false), global1.x))), !all(global1.zw)), global1.x);
    let var_2 = u_input.a;
    var var_3 = global1.x || var_1.x;
    global1 = !(!vec4<bool>(var_1.x | any(var_1), global1.x, var_1.x, !var_1.x | any(vec3<bool>(false, false, var_1.x))));
    var_3 = select(var_1.x, global1.x, true);
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(3055f, -427f, -1340f, var_0.x))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-475f, 483f, -1623f, -363f) * vec4<f32>(-1324f, -773f, 585f, var_0.x)))), true))), firstTrailingBit(reverseBits(vec3<i32>(-36928i, ~2147483647i, abs(1i)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-206f * var_0.x), _wgslsmith_f_op_f32(-432f - -2142f), _wgslsmith_f_op_f32(284f - var_0.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -584f, 351f) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(366f, -1749f, var_0.x), vec3<f32>(1000f, var_0.x, -314f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(781f, var_0.x)), vec2<f32>(-606f, -1108f)))))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, 128f, var_0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, -1098f) - vec3<f32>(var_0.x, var_0.x, -272f)))))));
}

