struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: f32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(0i, 13719i, 2147483647i);

var<private> global1: array<vec4<u32>, 23>;

var<private> global2: vec4<i32> = vec4<i32>(-19744i, -20411i, -1i, 1i);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec3<bool>, arg_1: bool, arg_2: vec4<u32>) -> vec4<bool> {
    global0 = _wgslsmith_mult_vec3_i32(global2.wyy, -firstTrailingBit(vec3<i32>(-1i, global2.x, global2.x))) << ((~vec3<u32>(~u_input.a.x, _wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(1173u, 23u)], global1[_wgslsmith_index_u32(35971u, 23u)]), _wgslsmith_mod_u32(5289u, u_input.a.x)) << (arg_2.zwx % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_0 = ~(~(~_wgslsmith_sub_vec2_u32(u_input.a.yy, vec2<u32>(76329u, 21612u)))) << (countOneBits(vec2<u32>(arg_2.x, 37349u)) % vec2<u32>(32u));
    global1 = array<vec4<u32>, 23>();
    global0 = min(vec3<i32>(abs(abs(-31890i | global2.x)), abs(-5700i), -2147483647i), u_input.b);
    global2 = select(vec4<i32>(abs(u_input.b.x), global0.x, u_input.b.x, i32(-1i) * -31493i), ~_wgslsmith_clamp_vec4_i32(select(vec4<i32>(u_input.b.x, 2147483647i, global2.x, u_input.b.x), vec4<i32>(global0.x, -1i, -4647i, -12689i) << (vec4<u32>(u_input.a.x, var_0.x, var_0.x, arg_2.x) % vec4<u32>(32u)), arg_0.x), min(vec4<i32>(u_input.b.x, -66720i, global0.x, global2.x), vec4<i32>(-1i, global2.x, 2147483647i, -30349i) << (arg_2 % vec4<u32>(32u))), firstTrailingBit(~vec4<i32>(-33741i, global2.x, -2147483647i, 3984i))), true || !all(select(vec4<bool>(arg_1, false, arg_1, true), vec4<bool>(arg_0.x, false, false, arg_1), false)));
    return vec4<bool>(false, true, arg_1, true);
}

fn func_2() -> Struct_2 {
    var var_0 = all(select(func_3(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), !any(vec4<bool>(false, true, true, true)), global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(0u, u_input.a.x), 23u)]), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), true)), !func_3(vec3<bool>(true, true, true), false, global1[_wgslsmith_index_u32(u_input.a.x, 23u)]), true), true));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -248f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1058f * -1000f) + _wgslsmith_f_op_f32(-625f + -1664f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(768f, -1986f)) + 751f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -873f))))))));
    let var_2 = ~u_input.b.x;
    let var_3 = Struct_2(u_input.a, u_input.a.x);
    var var_4 = var_3;
    return Struct_2((countOneBits(var_3.a << (vec3<u32>(u_input.a.x, 0u, 4294967295u) % vec3<u32>(32u))) | vec3<u32>(var_4.a.x >> (u_input.a.x % 32u), _wgslsmith_clamp_u32(1u, var_3.a.x, 37433u), var_4.a.x | 41729u)) >> ((u_input.a | _wgslsmith_div_vec3_u32(vec3<u32>(44306u, var_3.b, 11060u), ~var_3.a)) % vec3<u32>(32u)), ~(~(~var_4.a.x)));
}

fn func_1(arg_0: vec2<bool>, arg_1: f32, arg_2: vec2<bool>, arg_3: vec2<u32>) -> bool {
    let var_0 = func_2();
    global1 = array<vec4<u32>, 23>();
    var var_1 = 44490u;
    let var_2 = vec2<bool>(!(-378f == _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1), arg_1))), true);
    let var_3 = 585f;
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec3<bool>(true, func_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(-1015f + -482f), vec2<bool>(true, true), u_input.a.zy), true));
    let var_1 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mod_vec3_u32(reverseBits(u_input.a), u_input.a)), select(global2.yzx, select(vec3<i32>(firstLeadingBit(13411i), u_input.b.x, firstTrailingBit(u_input.b.x)), ~global2.xwy, vec3<bool>(!var_0.x, true, all(vec4<bool>(var_0.x, var_0.x, var_0.x, true)))), !all(vec4<bool>(true, true, var_0.x, var_0.x))));
}

