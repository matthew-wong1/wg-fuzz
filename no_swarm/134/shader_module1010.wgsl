struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(921f);

var<private> global1: vec3<u32> = vec3<u32>(1u, 4294967295u, 23705u);

var<private> global2: vec2<i32> = vec2<i32>(-31966i, -43838i);

var<private> global3: array<i32, 22> = array<i32, 22>(-1i, 18301i, 41203i, i32(-2147483648), 29785i, 2147483647i, i32(-2147483648), -69572i, 24744i, i32(-2147483648), -29073i, 0i, 2147483647i, 80443i, 2147483647i, -86462i, 3319i, 0i, i32(-2147483648), 13543i, -1i, 6176i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec2<bool>, arg_1: i32, arg_2: vec2<u32>, arg_3: vec3<f32>) -> Struct_2 {
    let var_0 = vec4<i32>(-((u_input.c >> (45540u % 32u)) << (global1.x % 32u)), ~global3[_wgslsmith_index_u32(arg_2.x, 22u)], -(firstTrailingBit(select(-1i, global2.x, arg_0.x)) ^ arg_1), max(1i, ~(~0i)));
    var var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, -1000f, -2507f, global0.a))) - vec4<f32>(_wgslsmith_f_op_f32(select(global0.a, global0.a, false)), 1040f, _wgslsmith_f_op_f32(f32(-1f) * -654f), _wgslsmith_f_op_f32(arg_3.x * arg_3.x))) - vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_3.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-265f, 913f) + arg_3.x), _wgslsmith_f_op_f32(-1f), -257f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-global0.a), 586f, arg_3.x, _wgslsmith_f_op_f32(step(722f, -418f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-179f, global0.a, -291f, global0.a), vec4<f32>(arg_3.x, -148f, arg_3.x, arg_3.x), arg_0.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, arg_3.x, -1000f, global0.a))) * vec4<f32>(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(f32(-1f) * -787f), _wgslsmith_f_op_f32(-global0.a))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2352f, -1000f, 841f, arg_3.x));
    global0 = Struct_1(var_1.x);
    let var_2 = global0.a;
    return Struct_2(vec3<u32>(u_input.b.x, arg_2.x, ~(~0u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> vec2<u32> {
    global1 = u_input.b.xww;
    var var_0 = func_2(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)))), select(2147483647i, _wgslsmith_div_i32(_wgslsmith_add_i32(-global2.x, global3[_wgslsmith_index_u32(~1u, 22u)]), 4889i), true), select(arg_0.a.zz, _wgslsmith_sub_vec2_u32(~u_input.b.xx >> (reverseBits(arg_0.a.yy) % vec2<u32>(32u)), vec2<u32>(u_input.b.x, global1.x)), true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, _wgslsmith_f_op_f32(-105f + global0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) - arg_1.a))));
    let var_1 = vec2<f32>(arg_1.a, -376f);
    global3 = array<i32, 22>();
    let var_2 = arg_0.a.zy;
    return _wgslsmith_clamp_vec2_u32(vec2<u32>(~reverseBits(_wgslsmith_mod_u32(var_0.a.x, 63562u)), _wgslsmith_sub_u32(0u & global1.x, abs(0u)) | abs(_wgslsmith_sub_u32(arg_0.a.x, u_input.b.x))), select(min(min(select(vec2<u32>(global1.x, arg_0.a.x), vec2<u32>(var_0.a.x, var_0.a.x), vec2<bool>(false, true)), vec2<u32>(30699u, var_2.x)), vec2<u32>(_wgslsmith_mod_u32(1u, u_input.b.x), 63335u >> (1u % 32u))), _wgslsmith_add_vec2_u32(arg_0.a.xy, u_input.b.xz), select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(false, true)), true)), ~global1.zy);
}

fn func_4(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_2(vec3<u32>(_wgslsmith_add_u32(max(~arg_0.x, firstLeadingBit(2251u)), ~31039u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 59853u, 22053u), u_input.b.zww)), _wgslsmith_mult_u32(48702u, 1u), global1.x));
    var var_1 = countOneBits(countOneBits(global3[_wgslsmith_index_u32(~0u << (func_3(Struct_2(u_input.b.xzw), Struct_1(1481f)).x % 32u), 22u)]));
    let var_2 = true;
    let var_3 = var_2 && !(var_2 != any(select(vec3<bool>(var_2, true, var_2), vec3<bool>(var_2, var_2, true), vec3<bool>(var_2, var_2, false))));
    var var_4 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-943f, global0.a)))))));
    return Struct_1(var_4.x);
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_1.a)), arg_1.a));
    global0 = func_4(vec2<u32>(~func_2(vec2<bool>(false, true), global2.x, global1.zz << (vec2<u32>(27011u, global1.x) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-770f, 454f, global0.a) - vec3<f32>(global0.a, arg_1.a, -2527f))).a.x, 56834u));
    let var_0 = !(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, true), _wgslsmith_f_op_f32(-global0.a) > _wgslsmith_f_op_f32(-arg_1.a)));
    var var_1 = false;
    var var_2 = vec3<i32>(_wgslsmith_add_i32(-43977i, -41135i >> (arg_0.x % 32u)), u_input.a, -max(~u_input.c, -1i));
    return func_4(abs(vec2<u32>(arg_0.x, ~u_input.b.x)) ^ reverseBits(~(~vec2<u32>(0u, u_input.b.x))));
}

fn func_1(arg_0: bool) -> vec3<u32> {
    let var_0 = global1.x <= 1u;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(global0.a + 263f));
    global1 = vec3<u32>(min(u_input.b.x, 4294967295u), ~firstTrailingBit(_wgslsmith_dot_vec2_u32(global1.xx << (vec2<u32>(u_input.b.x, 1u) % vec2<u32>(32u)), vec2<u32>(1u, u_input.b.x))), 19037u);
    var var_2 = Struct_2(u_input.b.wwx);
    global0 = func_5(vec4<u32>(var_2.a.x, ~var_2.a.x, ~_wgslsmith_mod_u32(1u, ~global1.x), _wgslsmith_div_u32(var_2.a.x, u_input.b.x)), func_4(func_3(func_2(select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, false), vec2<bool>(true, var_0)), abs(u_input.a), ~global1.yz, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, var_1.a, 1000f) * vec3<f32>(410f, global0.a, var_1.a))), Struct_1(var_1.a))));
    return u_input.b.wyw;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(-507f)));
    var var_2 = Struct_2(u_input.b.wxw);
    global1 = func_1(select(!(!all(vec3<bool>(false, false, true))), (_wgslsmith_dot_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(var_2.a.x, 22u)], u_input.a, 67336i), vec3<i32>(u_input.c, global2.x, 60967i)) <= u_input.a) || !(0u >= global1.x), false & (false & any(vec3<bool>(true, true, true)))));
    global0 = var_1;
    var_0 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(-abs(_wgslsmith_mult_i32(0i, global3[_wgslsmith_index_u32(u_input.b.x, 22u)])) | 20073i);
}

