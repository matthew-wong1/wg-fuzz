struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec3<u32>,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_5 {
    a: bool,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_1(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_5, arg_3: u32) -> bool {
    global0 = u_input.a.zy;
    var var_0 = vec2<i32>(-1i, arg_0.x);
    return false;
}

fn func_3() -> u32 {
    var var_0 = ~(~(~0u));
    var var_1 = 24785u;
    let var_2 = vec3<f32>(-1853f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2093f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-525f * 304f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(1410f)))));
    var var_3 = Struct_4(var_2.x, vec3<u32>(u_input.b, countOneBits(~(~46900u)), 1049u));
    var_1 = abs(_wgslsmith_div_u32(countOneBits(_wgslsmith_clamp_u32(81655u, 4294967295u, 49999u)), u_input.b) << (~(~(43201u << (u_input.b % 32u))) % 32u));
    return _wgslsmith_mult_u32(firstTrailingBit(_wgslsmith_clamp_u32(~var_3.b.x, select(42608u, var_3.b.x, true), u_input.b)), firstTrailingBit(0u)) >> (((~u_input.b | 4294967295u) ^ countOneBits(u_input.b)) % 32u);
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1) -> vec2<bool> {
    global0 = select(vec2<i32>(_wgslsmith_mod_i32(arg_1.a.x, arg_0.x) << (func_3() % 32u), u_input.a.x) << (~select(_wgslsmith_sub_vec2_u32(arg_1.c.yz, arg_1.c.yz), arg_1.c.zy & arg_1.c.xy, true) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(arg_1.a, vec2<i32>(~global0.x, 1i) ^ (-vec2<i32>(0i, arg_0.x) << (max(arg_1.c.xx, arg_1.c.yx) % vec2<u32>(32u)))), vec2<bool>(false, any(vec3<bool>(false, arg_1.d, true))));
    global0 = vec2<i32>(-2147483647i, -1i);
    return select(select(!vec2<bool>(!arg_1.d, all(vec4<bool>(arg_1.d, arg_1.b, arg_1.b, arg_1.b))), !select(!vec2<bool>(arg_1.b, arg_1.b), !vec2<bool>(true, arg_1.d), arg_1.b), true), vec2<bool>(false, true), !select(vec2<bool>(arg_1.c.x == 19237u, !arg_1.d), select(vec2<bool>(arg_1.b, true), !vec2<bool>(arg_1.b, arg_1.d), false), select(!vec2<bool>(false, arg_1.d), select(vec2<bool>(arg_1.d, arg_1.d), vec2<bool>(arg_1.b, arg_1.b), false), arg_1.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_2(u_input.b, select(vec2<bool>(func_1(u_input.a, -2009f, Struct_5(false, vec3<u32>(u_input.b, 13547u, u_input.b)), u_input.b), false), func_2(vec3<i32>(u_input.a.x, -2147483647i, -1i), Struct_1(vec2<i32>(global0.x, 1i), true, vec3<u32>(u_input.b, u_input.b, 1u), true)), true), Struct_1(u_input.a.yx, any(vec2<bool>(true, true)) || true, vec3<u32>(_wgslsmith_div_u32(u_input.b, 4294967295u), _wgslsmith_clamp_u32(u_input.b, 28073u, 4294967295u), u_input.b), any(vec2<bool>(false, true)) == any(vec3<bool>(false, true, true)))));
    var var_1 = any(select(select(select(select(vec3<bool>(var_0.a.b.x, false, var_0.a.b.x), vec3<bool>(var_0.a.c.d, true, var_0.a.c.b), vec3<bool>(false, var_0.a.b.x, var_0.a.c.b)), select(vec3<bool>(var_0.a.b.x, var_0.a.b.x, var_0.a.c.d), vec3<bool>(true, var_0.a.b.x, var_0.a.b.x), var_0.a.b.x), all(vec3<bool>(var_0.a.c.b, false, var_0.a.b.x))), select(select(vec3<bool>(var_0.a.b.x, var_0.a.b.x, false), vec3<bool>(var_0.a.c.b, var_0.a.b.x, true), var_0.a.b.x), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), var_0.a.c.b), u_input.a.x != -28627i), firstLeadingBit(-1i) >= u_input.a.x), select(select(!vec3<bool>(true, var_0.a.b.x, var_0.a.c.b), select(vec3<bool>(false, false, var_0.a.b.x), vec3<bool>(var_0.a.c.d, var_0.a.c.d, true), var_0.a.c.b), vec3<bool>(var_0.a.c.b, true, var_0.a.b.x)), !(!vec3<bool>(var_0.a.b.x, var_0.a.b.x, false)), select(vec3<bool>(true, true, true), select(vec3<bool>(var_0.a.b.x, true, var_0.a.b.x), vec3<bool>(true, true, var_0.a.c.d), false), select(vec3<bool>(var_0.a.b.x, var_0.a.c.b, var_0.a.b.x), vec3<bool>(var_0.a.b.x, false, true), vec3<bool>(true, var_0.a.b.x, true)))), func_2(firstTrailingBit(vec3<i32>(global0.x, 2147483647i, global0.x)), var_0.a.c).x));
    let var_2 = Struct_2(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.a, var_0.a.a, u_input.b), var_0.a.c.c), ~(~1u)) | u_input.b, !func_2(vec3<i32>(global0.x | -35077i, -16215i, _wgslsmith_mult_i32(-28248i, var_0.a.c.a.x)), Struct_1(~vec2<i32>(global0.x, 2147483647i), all(vec3<bool>(true, var_0.a.b.x, false)), vec3<u32>(36869u, var_0.a.c.c.x, 106257u), !var_0.a.c.d)), Struct_1(min(var_0.a.c.a, vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 0i), u_input.a.zx))), any(select(vec4<bool>(false, false, false, var_0.a.c.b), vec4<bool>(var_0.a.b.x, var_0.a.b.x, var_0.a.b.x, var_0.a.c.b), vec4<bool>(true, true, true, var_0.a.b.x))) == true, var_0.a.c.c, true));
    global0 = var_0.a.c.a;
    var var_3 = countOneBits(_wgslsmith_sub_vec2_u32(~max(var_0.a.c.c.xx, var_2.c.c.zz), _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(var_0.a.c.c.xx, ~vec2<u32>(10119u, u_input.b)), vec2<u32>(var_0.a.a, var_0.a.c.c.x))));
    var_1 = false;
    let var_4 = _wgslsmith_add_u32(abs(43924u) & _wgslsmith_add_u32(0u, var_0.a.c.c.x), 40016u);
    var var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1038f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -206f))))) * _wgslsmith_f_op_f32(select(-225f, _wgslsmith_f_op_f32(min(-403f, -1194f)), all(var_0.a.b))));
    var_5 = -370f;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 13492u, var_4) ^ vec4<u32>(var_2.a, var_3.x, 1u, var_0.a.c.c.x), abs(vec4<u32>(3032u, var_4, var_2.c.c.x, u_input.b)), ~vec4<u32>(u_input.b, var_2.c.c.x, 1u, 1u))));
}

