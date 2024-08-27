struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<f32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: i32,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(30234u, 2147483647i, true, 43660u, 1307f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3) -> f32 {
    var var_0 = arg_0;
    let var_1 = select(vec3<bool>(global0.c, select(!all(vec3<bool>(false, false, false)), arg_0.d > firstTrailingBit(-1i), true), !(false & (global0.b != 7491i))), !select(select(!vec3<bool>(global0.c, global0.c, false), vec3<bool>(global0.c, global0.c, false), false), !vec3<bool>(global0.c, true, true), !(true != global0.c)), vec3<bool>(true, !(global0.c | true), true));
    global0 = Struct_1(_wgslsmith_div_u32(0u, _wgslsmith_mod_u32(abs(max(var_0.c, 31216u)), arg_0.c)), _wgslsmith_add_i32(-2147483647i, abs(~(-1i))), global0.c, _wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(max(u_input.c.x, var_0.c)), arg_0.c), vec2<u32>(63645u >> (var_0.c % 32u), _wgslsmith_mod_u32(3784u, 52081u) >> ((u_input.c.x & u_input.c.x) % 32u))), 318f);
    var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(max(arg_0.a.x, var_0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.e)) * -333f), _wgslsmith_f_op_f32(sign(2210f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1642f))))), global0.e, _wgslsmith_dot_vec3_u32(abs(u_input.c.zwx), vec3<u32>(_wgslsmith_add_u32(~u_input.c.x, _wgslsmith_add_u32(global0.a, 63404u)), ~4294967295u, 0u)), _wgslsmith_dot_vec4_i32(-min(u_input.a, min(vec4<i32>(var_0.d, var_0.d, global0.b, 0i), u_input.a)), max(u_input.a, _wgslsmith_clamp_vec4_i32(vec4<i32>(global0.b, 12288i, 0i, arg_0.d), u_input.a, u_input.a) << (abs(u_input.c) % vec4<u32>(32u)))));
    global0 = Struct_1(global0.d, _wgslsmith_div_i32(var_0.d, 19086i), global0.c, 66254u, 893f);
    return 213f;
}

fn func_2() -> Struct_1 {
    let var_0 = vec2<f32>(-660f, _wgslsmith_f_op_f32(f32(-1f) * -337f));
    let var_1 = u_input.a.yyx;
    global0 = Struct_1(~abs(_wgslsmith_sub_u32(u_input.b, _wgslsmith_dot_vec3_u32(u_input.c.yzy, u_input.c.zzx))), -2147483647i, global0.c, _wgslsmith_sub_u32(~(~0u), ~u_input.c.x | 25299u), _wgslsmith_f_op_f32(func_3(Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.e, -717f, -209f, var_0.x) - vec4<f32>(-817f, var_0.x, -446f, 387f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 683f, var_0.x, 969f))), global0.e, select(global0.a, 19712u, global0.c) ^ u_input.c.x, u_input.a.x))));
    var var_2 = !(global0.c | any(!(!vec3<bool>(global0.c, true, global0.c))));
    var var_3 = true;
    return Struct_1(u_input.c.x, u_input.a.x, all(vec2<bool>(global0.c, true)), _wgslsmith_mult_u32(u_input.c.x, ~(~49887u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.e + 776f) + -340f)), _wgslsmith_f_op_f32(-262f + -487f)));
}

fn func_1(arg_0: u32) -> Struct_3 {
    global0 = func_2();
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.e - -544f) + 649f), global0.e, _wgslsmith_div_f32(global0.e, -744f), _wgslsmith_f_op_f32(-global0.e))), 504f, u_input.b, select(func_2().b, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, global0.b, global0.b, 1i), ~u_input.a) >> (firstLeadingBit(1u) % 32u), global0.c));
    var var_1 = var_0.a.x;
    global0 = Struct_1(~func_2().d, _wgslsmith_dot_vec2_i32(-u_input.a.xy, firstTrailingBit(~vec2<i32>(-51540i, global0.b))), any(select(vec3<bool>(global0.c, false, global0.c), !vec3<bool>(true, true, global0.c), select(vec3<bool>(global0.c, true, true), vec3<bool>(global0.c, false, true), vec3<bool>(false, global0.c, true)))) || true, ~(~(~1u)), global0.e);
    var var_2 = any(!(!select(select(vec3<bool>(false, global0.c, global0.c), vec3<bool>(global0.c, true, true), false), vec3<bool>(true, global0.c, false), u_input.c.x >= arg_0)));
    return Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, global0.e, var_0.b, var_0.a.x) * var_0.a)))), global0.e, _wgslsmith_clamp_u32(~4294967295u, _wgslsmith_sub_u32(4294967295u, var_0.c), 1u), abs(global0.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(false, false);
    var var_1 = !var_0.x;
    var_1 = !(!global0.c);
    let var_2 = func_1(_wgslsmith_add_u32(_wgslsmith_add_u32(~u_input.c.x, ~u_input.b), 31360u));
    let var_3 = 2147483647i;
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(-func_1(var_2.c).a.x), _wgslsmith_f_op_f32(abs(global0.e)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-918f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.e - global0.e)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e) + _wgslsmith_f_op_f32(731f - _wgslsmith_f_op_f32(min(-545f, 262f))))), func_2().e);
    var var_5 = _wgslsmith_mod_vec3_u32(~(countOneBits(u_input.c.xyw ^ u_input.c.xzz) & vec3<u32>(u_input.b, global0.a, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_2.c, 0u), u_input.c.wzw))), u_input.c.xzy);
    let var_6 = _wgslsmith_f_op_f32(ceil(func_1(_wgslsmith_sub_u32(global0.a & 1u, 1u)).b)) == func_1(~(var_2.c ^ _wgslsmith_div_u32(13201u, 28203u))).a.x;
    var var_7 = Struct_2(Struct_1((_wgslsmith_dot_vec3_u32(u_input.c.zxz, u_input.c.xyw) ^ 33514u) ^ global0.a, global0.b, var_6, ~global0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x))), var_5.x, _wgslsmith_f_op_vec3_f32(ceil(func_1(reverseBits(var_5.x) | 1u).a.yyw)), u_input.a.wxw);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_4.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e))), _wgslsmith_add_i32(var_2.d, -var_3), vec3<u32>(var_7.a.d, var_7.a.d & var_5.x, var_5.x), -2571f, ~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, global0.d), u_input.c.yx), u_input.c.xy));
}

