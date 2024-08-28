struct Struct_1 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: Struct_1 = Struct_1(1151f, true);

var<private> global2: vec2<bool>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    let var_0 = global1.a;
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-197f, -976f)))), vec2<f32>(global1.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1442f)) * _wgslsmith_f_op_f32(floor(global1.a)))))));
    global2 = !vec2<bool>(global0.x >= -1i, global2.x);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.x)))), true || any(!(!vec3<bool>(true, global1.b, global2.x))));
    var var_3 = Struct_1(-405f, (u_input.b.x | u_input.b.x) < ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 0u), vec2<u32>(u_input.b.x, 5054u))));
    return ~abs(9065i);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: f32) -> f32 {
    global0 = vec4<i32>(global0.x, ~(-1i | reverseBits(func_3())), _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.a.x, -48303i), 28401i) | (i32(-1i) * -87806i), u_input.a.x);
    return _wgslsmith_div_f32(global1.a, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a - arg_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1249f)) - _wgslsmith_f_op_f32(max(arg_0.a, global1.a)))), arg_0.a));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(375f, arg_0.a, 584f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a - -1307f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, -774f, _wgslsmith_f_op_f32(exp2(global1.a)), 104f)) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-609f, global1.a, -614f, arg_0.a)), vec4<f32>(arg_0.a, -1006f, arg_0.a, global1.a), vec4<bool>(false, global1.b, true, global2.x)))))));
    var var_1 = vec4<bool>(global1.b, true && global1.b, all(select(select(!vec3<bool>(global2.x, arg_0.b, global2.x), select(vec3<bool>(false, global1.b, false), vec3<bool>(global2.x, false, global2.x), vec3<bool>(true, false, true)), true), select(select(vec3<bool>(global2.x, global1.b, global1.b), vec3<bool>(global1.b, true, global2.x), false), !vec3<bool>(global2.x, global1.b, arg_0.b), !arg_0.b), select(!vec3<bool>(false, arg_0.b, arg_0.b), select(vec3<bool>(false, true, global2.x), vec3<bool>(global2.x, true, arg_0.b), vec3<bool>(global1.b, global2.x, arg_0.b)), vec3<bool>(false, arg_0.b, false)))), u_input.a.x < u_input.c.x);
    var var_2 = arg_0;
    var var_3 = var_1.yyy;
    return arg_0;
}

fn func_1() -> Struct_1 {
    global2 = select(!(!(!(!vec2<bool>(global2.x, true)))), !vec2<bool>(any(select(vec2<bool>(global1.b, global2.x), vec2<bool>(global2.x, true), vec2<bool>(true, true))), false), global2.x);
    global0 = u_input.a;
    let var_0 = func_4(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(Struct_1(-2772f, false), vec4<bool>(true, true, false, true), -708f)))), global1.a)), u_input.b.x == ~u_input.b.x));
    var var_1 = var_0;
    let var_2 = _wgslsmith_f_op_f32(func_4(func_4(Struct_1(1002f, var_1.b))).a - global1.a);
    return var_0;
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    global1 = func_4(arg_1);
    let var_0 = func_4(func_1());
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.a, 1542f, var_0.a), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 630f, global1.a) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.a, -1531f, 2120f))))))))));
    var var_2 = _wgslsmith_mod_i32(_wgslsmith_mult_i32(max(-2147483647i, func_3()), i32(-1i) * -u_input.c.x), _wgslsmith_clamp_i32(~(global0.x | global0.x) << ((~0u | u_input.b.x) % 32u), 2147483647i, -30688i >> (1u % 32u)));
    global0 = ~vec4<i32>(_wgslsmith_mod_i32(~u_input.c.x, 7817i >> (u_input.b.x % 32u)) | 2147483647i, u_input.c.x, u_input.c.x << (0u % 32u), ~global0.x);
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.a, -285f))))) * -574f), global2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec2<bool>(!all(select(!vec2<bool>(true, global2.x), select(vec2<bool>(global2.x, global1.b), vec2<bool>(true, global2.x), true), false)), select(all(select(vec3<bool>(global1.b, global2.x, global1.b), vec3<bool>(true, true, true), false)), (_wgslsmith_f_op_f32(sign(global1.a)) <= _wgslsmith_f_op_f32(min(-271f, global1.a))) || (select(global2.x, false, true) || true), true));
    global1 = func_5(-1910f, func_1());
    let var_0 = Struct_1(-1000f, global1.b);
    var var_1 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a), -568f)));
    var var_2 = ~global0.x;
    global2 = !vec2<bool>(any(vec3<bool>(false, var_0.b | false, any(vec4<bool>(false, var_0.b, global1.b, var_0.b)))), true);
    var var_3 = func_5(408f, Struct_1(_wgslsmith_div_f32(526f, -123f), all(!vec2<bool>(false, global2.x))));
    let var_4 = select(firstLeadingBit(~(~vec3<u32>(u_input.b.x, 1u, u_input.b.x))), max(~min(~vec3<u32>(33132u, u_input.b.x, 1u), ~vec3<u32>(42647u, 0u, u_input.b.x)), ~select(~vec3<u32>(1u, 3911u, 4294967295u), select(vec3<u32>(31946u, 60642u, u_input.b.x), vec3<u32>(0u, u_input.b.x, u_input.b.x), vec3<bool>(global2.x, true, global1.b)), global1.b)), any(vec4<bool>(any(vec2<bool>(var_3.b, global2.x)), true, var_0.b, all(!vec3<bool>(var_3.b, false, global2.x)))));
    let var_5 = vec3<f32>(865f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1159f * var_1.x) * -814f), _wgslsmith_f_op_f32(trunc(var_0.a)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, firstTrailingBit(u_input.b.x), ~u_input.c, -countOneBits(_wgslsmith_clamp_vec4_i32(u_input.a << (vec4<u32>(u_input.b.x, var_4.x, 4294967295u, u_input.b.x) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(u_input.a, vec4<i32>(global0.x, -1i, 2147483647i, 18707i), vec4<i32>(-2147483647i, 32065i, global0.x, 0i)), ~u_input.a)));
}

