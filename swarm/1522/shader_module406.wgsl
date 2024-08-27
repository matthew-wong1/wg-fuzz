struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_3 = Struct_3(true, Struct_2(Struct_1(-388f, vec2<f32>(-296f, -2097f)), Struct_1(-1106f, vec2<f32>(-203f, -788f))), false);

var<private> global2: vec4<u32> = vec4<u32>(88363u, 28868u, 20572u, 1u);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>, arg_2: vec4<u32>, arg_3: vec3<f32>) -> i32 {
    global0 = Struct_3((global2.x >> (global2.x % 32u)) >= ~reverseBits(55490u), Struct_2(global1.b.a, global1.b.b), !(global0.a && (_wgslsmith_mult_u32(arg_2.x, u_input.a) >= _wgslsmith_sub_u32(49305u, global2.x))));
    let var_0 = Struct_3(global0.a, Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(349f)), _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, 1056f), vec2<f32>(-978f, 438f))), global1.b.b.b))), Struct_1(global1.b.b.b.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.b.a.b) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(971f, -332f)))))), !(true | (all(vec2<bool>(global1.c, global0.a)) || true)));
    let var_1 = Struct_3(var_0.c, global0.b, true);
    let var_2 = var_1;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(abs(var_2.b.a.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-927f, arg_1.x)))));
    return _wgslsmith_mod_i32(0i, _wgslsmith_clamp_i32(10141i, -_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(59424i, 2635i, -57799i)), ~vec3<i32>(-2147483647i, -17669i, -1i)), min(~(-52349i), i32(-1i) * -83840i)));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: u32) -> Struct_1 {
    var var_0 = func_3(arg_0.x, _wgslsmith_div_vec2_f32(global0.b.a.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_1.x), -214f))), abs(_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(arg_2, u_input.a, arg_2, global2.x)) ^ ~vec4<u32>(u_input.a, arg_2, arg_2, 20118u), vec4<u32>(_wgslsmith_mod_u32(4294967295u, global2.x), _wgslsmith_mult_u32(global2.x, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 49183u, u_input.a, 4294967295u), vec4<u32>(u_input.a, u_input.a, u_input.a, 28163u)), ~global2.x))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -882f)), -558f)), 455f, 835f));
    var var_1 = vec2<bool>(!select(global0.a, global0.a, all(!vec4<bool>(global0.c, false, global1.c, true))), all(select(vec4<bool>(global1.a, global0.a, false & global1.c, true), vec4<bool>(global0.a, select(true, global0.a, true), true, global1.a), global1.c)));
    global2 = ~(~(~(~(~vec4<u32>(global2.x, 94543u, 118923u, arg_2)))));
    var var_2 = select(!(!vec3<bool>(arg_0.x >= arg_0.x, any(vec3<bool>(true, true, false)), true)), vec3<bool>(593f != global0.b.a.b.x, all(select(vec2<bool>(global1.c, false), vec2<bool>(true, true), true)), global1.a), !vec3<bool>(true, !var_1.x || all(vec4<bool>(false, false, false, true)), !global0.c));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b.b.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1195f, arg_0.x))));
    return global0.b.b;
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(256f, -2623f, -572f, -1000f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.b.b.x, -629f, -129f, -364f) * vec4<f32>(-2527f, 1421f, global1.b.a.b.x, 1034f)))))));
    let var_1 = global2.x;
    var_0 = vec4<f32>(-807f, 2056f, 927f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) + 1682f)));
    let var_2 = any(!select(vec2<bool>(true, true), !vec2<bool>(false, global0.c), !(!global0.a)));
    var var_3 = func_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.a, -1346f, var_0.x, arg_1.a.b.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2176f, 842f, -1278f, -813f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1017f, global1.b.b.b.x, global1.b.b.a, -531f)) + _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a.b.x, 554f, var_0.x, -664f), vec4<f32>(787f, arg_1.a.a, arg_1.a.a, global1.b.a.b.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-2055f, 850f, -926f, -134f), vec4<f32>(arg_1.a.b.x, 974f, var_0.x, 118f))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(2681f, arg_1.a.a, var_0.x, 602f), vec4<f32>(global1.b.a.b.x, global1.b.a.b.x, global0.b.b.b.x, 1000f)))))), 1u);
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(878f)) * -886f), _wgslsmith_f_op_vec2_f32(-arg_1.a.b));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec4<u32>(~1u, 26902u, u_input.a, u_input.a);
    var var_0 = max(global2.zw, vec2<u32>(abs(_wgslsmith_mod_u32(global2.x, 0u)), ~_wgslsmith_sub_u32(firstTrailingBit(global2.x), _wgslsmith_sub_u32(global2.x, 0u))));
    var var_1 = Struct_3(!any(!vec4<bool>(false, true, false, global1.c)), Struct_2(Struct_1(_wgslsmith_f_op_f32(exp2(global0.b.a.a)), _wgslsmith_f_op_vec2_f32(ceil(global0.b.b.b))), func_1(global0.c, global0.b, select(vec3<u32>(var_0.x, 14448u, var_0.x) & global2.xwy, ~global2.yyy, select(true, false, false)))), true);
    let var_2 = any(select(!vec3<bool>(var_1.a, all(vec4<bool>(true, true, global1.a, var_1.a)), global0.c), select(vec3<bool>(var_1.a, true, global0.a), vec3<bool>(true, all(vec2<bool>(global1.c, true)), var_1.c), _wgslsmith_f_op_f32(-global0.b.b.b.x) < _wgslsmith_f_op_f32(global1.b.b.a + global0.b.a.a)), _wgslsmith_f_op_f32(global0.b.b.b.x + var_1.b.b.a) > _wgslsmith_f_op_f32(var_1.b.b.a * -593f)));
    var var_3 = Struct_3(true, Struct_2(Struct_1(var_1.b.b.a, vec2<f32>(_wgslsmith_f_op_f32(-1600f * -2318f), _wgslsmith_f_op_f32(ceil(var_1.b.a.a)))), Struct_1(global1.b.a.b.x, vec2<f32>(-111f, _wgslsmith_f_op_f32(select(1972f, global1.b.a.b.x, true))))), var_1.a);
    global2 = ~vec4<u32>(select(reverseBits(var_0.x), _wgslsmith_div_u32(_wgslsmith_sub_u32(var_0.x, global2.x), ~u_input.a), global1.c), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(global2.yxz, vec3<u32>(57281u, 1u, global2.x), vec3<u32>(global2.x, 57846u, 1u)), _wgslsmith_add_vec3_u32(global2.zyw, global2.zww)), global2.x), global2.x, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.b.b, _wgslsmith_mod_vec3_u32(abs(abs(global2.zzw)), _wgslsmith_mult_vec3_u32(global2.yxy, global2.zyz)), abs(u_input.a), -177f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1118f, global0.b.b.a, global0.a))))))));
}

