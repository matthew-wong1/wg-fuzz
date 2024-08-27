struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec3<f32>(212f, -360f, -1000f)), Struct_1(vec3<f32>(1316f, 886f, 1335f)), Struct_1(vec3<f32>(1971f, 645f, -221f)), Struct_1(vec3<f32>(415f, 265f, 808f)), Struct_1(vec3<f32>(928f, -264f, 349f)), Struct_1(vec3<f32>(178f, 277f, 1648f)), Struct_1(vec3<f32>(2205f, 948f, -1033f)), Struct_1(vec3<f32>(171f, -352f, -101f)));

var<private> global1: vec3<bool> = vec3<bool>(true, true, false);

var<private> global2: f32;

var<private> global3: vec3<u32>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = arg_0;
    global3 = u_input.c;
    return _wgslsmith_f_op_f32(-arg_0.a.x);
}

fn func_3(arg_0: u32, arg_1: vec2<u32>, arg_2: vec4<u32>) -> u32 {
    global1 = !(!select(vec3<bool>(true, all(vec4<bool>(global1.x, true, true, global1.x)), 7516i >= u_input.d), select(vec3<bool>(global1.x, false, false), select(vec3<bool>(true, true, global1.x), vec3<bool>(true, global1.x, global1.x), vec3<bool>(true, global1.x, true)), select(vec3<bool>(global1.x, false, global1.x), vec3<bool>(true, global1.x, false), vec3<bool>(global1.x, global1.x, false))), vec3<bool>(global1.x, !global1.x, true)));
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(629f, 468f, _wgslsmith_f_op_f32(trunc(-128f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(463f, -1019f, 851f))))));
    global3 = vec3<u32>(~4294967295u, _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0, 4294967295u), (vec2<u32>(0u, 59783u) & ~arg_2.yx) >> (arg_1 % vec2<u32>(32u))), ~arg_0);
    var var_1 = !select(vec4<bool>(var_0.a.x != -397f, !(var_0.a.x <= 865f), select(!global1.x, !global1.x, false), _wgslsmith_div_f32(608f, var_0.a.x) < 601f), vec4<bool>(any(select(global1.xy, vec2<bool>(true, global1.x), false)), !(global1.x && global1.x), select(false, true, global1.x) & global1.x, true), true);
    let var_2 = var_1.x;
    return _wgslsmith_sub_u32(arg_1.x, arg_2.x);
}

fn func_2(arg_0: i32, arg_1: vec3<i32>, arg_2: u32, arg_3: bool) -> bool {
    global3 = min(abs(~u_input.c ^ ~(~u_input.c)), vec3<u32>(func_3(~select(arg_2, 4294967295u, global1.x), vec2<u32>(4294967295u, 23846u), vec4<u32>(global3.x, 1u, u_input.c.x, global3.x)), ~(~global3.x << (0u % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(abs(4294967295u), _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(4294967295u, arg_2, 1u)), u_input.c.x), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(u_input.c, vec3<u32>(u_input.b, u_input.a.x, 80644u)), vec3<u32>(arg_2, 0u, u_input.c.x)))));
    let var_0 = u_input.a;
    let var_1 = true;
    global0 = array<Struct_1, 8>();
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -574f), _wgslsmith_f_op_f32(-791f - 1000f)), _wgslsmith_f_op_f32(func_1(Struct_1(vec3<f32>(-1000f, -142f, -1057f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1125f, -2033f), _wgslsmith_f_op_vec2_f32(vec2<f32>(232f, -1634f) + vec2<f32>(470f, 1696f)))))));
    return max(reverseBits(1u), ~(~31583u)) > ~min(~arg_2 << (~23353u % 32u), ~(~42814u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 1041f;
    global1 = select(!select(vec3<bool>(true, true, false), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, global1.x), false), vec3<bool>(true, true, true), !vec3<bool>(global1.x, global1.x, global1.x)), true), !vec3<bool>(!global1.x, _wgslsmith_add_u32(98024u, u_input.a.x) != 31521u, _wgslsmith_f_op_f32(func_1(Struct_1(vec3<f32>(1203f, 196f, -382f)))) >= _wgslsmith_f_op_f32(round(-1119f))), func_2(-_wgslsmith_sub_i32(u_input.d, select(-2147483647i, u_input.d, global1.x)), ~(-_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, 1i, u_input.d), vec3<i32>(-27059i, u_input.d, -21782i))), ~(~global3.x), true));
    global1 = !(!(!vec3<bool>(false && global1.x, true == global1.x, global1.x)));
    var var_0 = !select(select(vec4<bool>(true, true, true, true), !(!vec4<bool>(false, global1.x, global1.x, global1.x)), false), vec4<bool>(true, !(global1.x & true), select(all(vec3<bool>(global1.x, false, global1.x)), true, true), true), !(!vec4<bool>(global1.x, global1.x, global1.x, false)));
    var var_1 = global0[_wgslsmith_index_u32(4294967295u, 8u)];
    var var_2 = _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, ~u_input.a.x), global3.zx, u_input.c.yx);
    var var_3 = global0[_wgslsmith_index_u32(var_2.x, 8u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1000f + 957f), vec3<i32>(u_input.d, _wgslsmith_sub_i32(select(_wgslsmith_sub_i32(u_input.d, 0i), ~(-2147483647i), false), u_input.d), u_input.d));
}

