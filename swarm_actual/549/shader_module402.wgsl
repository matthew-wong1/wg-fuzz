struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
    c: vec4<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: bool;

var<private> global2: array<Struct_1, 2>;

var<private> global3: vec3<i32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec3<bool>) -> u32 {
    let var_0 = ~u_input.b;
    global0 = 1629f;
    global0 = _wgslsmith_f_op_f32(-arg_0.b.x);
    let var_1 = select(!select(arg_2.yy, arg_2.yy, arg_2.x), vec2<bool>(!arg_2.x, arg_2.x), vec2<bool>(!(arg_1.x >= _wgslsmith_f_op_f32(-arg_0.b.x)), true));
    let var_2 = 19490u;
    return max(max(select(118650u, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(var_2, var_2, 49546u, 1u)), vec4<u32>(35491u, var_0, 45626u, var_2)), arg_2.x), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~u_input.a.ww, u_input.a.ww), 0u << (var_2 % 32u))), 4294967295u);
}

fn func_2(arg_0: Struct_4) -> i32 {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, u_input.c.x, firstTrailingBit(1u), _wgslsmith_mod_u32(u_input.a.x, 7429u))), vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, u_input.b, 4294967295u) << (vec4<u32>(u_input.c.x, u_input.a.x, 40891u, u_input.a.x) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(u_input.a, u_input.a)), func_3(arg_0.a, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-940f, 1437f, arg_0.a.b.x, -316f))), !arg_0.c.xzy) ^ _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.a.zzw, vec3<u32>(1u, 83801u, u_input.c.x)), u_input.b | u_input.a.x), func_3(arg_0.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(-876f, arg_0.d, arg_0.a.b.x, arg_0.d) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-113f, 821f, 1640f, 300f) + vec4<f32>(1673f, arg_0.d, -368f, 1144f))), !arg_0.c.zyw), ~(_wgslsmith_dot_vec2_u32(u_input.d.zz, u_input.a.zx) | _wgslsmith_sub_u32(u_input.c.x, u_input.c.x)))), 2u)];
    global3 = select(arg_0.b & vec3<i32>(global3.x, _wgslsmith_sub_i32(~16920i, u_input.e.x), u_input.e.x), u_input.e, !arg_0.c.x);
    var var_1 = !all(select(arg_0.c.yz, select(select(arg_0.c.xz, vec2<bool>(arg_0.c.x, arg_0.c.x), arg_0.c.wy), arg_0.c.wz, arg_0.c.yw), arg_0.c.xx));
    return arg_0.a.a.x;
}

fn func_1() -> Struct_2 {
    let var_0 = (u_input.b <= firstTrailingBit(countOneBits(~1u))) & false;
    global1 = true;
    var var_1 = 0u;
    let var_2 = u_input.e.x;
    var var_3 = Struct_2(vec4<i32>(~(~global3.x), -2147483647i, ~(~func_2(Struct_4(Struct_2(vec4<i32>(0i, u_input.e.x, var_2, 1i), vec2<f32>(817f, -928f)), vec3<i32>(-1i, u_input.e.x, 0i), vec4<bool>(var_0, true, var_0, false), -2458f))), -2147483647i), vec2<f32>(230f, -815f));
    return Struct_2(var_3.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(var_3.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1624f, var_3.b.x, var_0)))) * var_3.b));
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(arg_0.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_0.b.x, _wgslsmith_div_f32(237f, 812f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))))));
    var var_1 = vec3<bool>(_wgslsmith_sub_i32(~arg_0.a.x, -5253i) > u_input.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_0.b.x, arg_0.b.x)))), any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true))) | true);
    let var_2 = global2[_wgslsmith_index_u32(u_input.c.x, 2u)];
    var var_3 = all(!var_1.xz);
    var var_4 = select(vec3<bool>(all(vec2<bool>(true, u_input.e.x < -1i)), var_1.x, 1283f != _wgslsmith_div_f32(var_2.b.x, _wgslsmith_f_op_f32(-var_0))), vec3<bool>(any(var_1.xy), var_1.x, true), vec3<bool>(all(select(!vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(false, var_1.x, false), vec3<bool>(var_1.x, var_1.x, var_1.x))), var_1.x, !all(select(vec4<bool>(true, false, var_1.x, true), vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(false, true, var_1.x, false)))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = all(vec4<bool>(true, select(4294967295u == u_input.b, true, true), any(vec2<bool>(true, true)), !all(vec3<bool>(true, true, false)))) != func_4(func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -161f)));
    var var_0 = ~firstTrailingBit(u_input.a.yx);
    global1 = (firstLeadingBit(reverseBits(u_input.e.x)) > u_input.e.x) && true;
    var var_1 = Struct_2(abs(_wgslsmith_div_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.e.x, -23180i, -1i, u_input.e.x), vec4<i32>(0i, -61335i, global3.x, global3.x)), -_wgslsmith_div_vec4_i32(vec4<i32>(-1i, u_input.e.x, u_input.e.x, 19241i), vec4<i32>(u_input.e.x, -18432i, global3.x, -2448i)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(floor(-203f)), _wgslsmith_f_op_f32(round(1000f))), vec2<f32>(-1056f, _wgslsmith_div_f32(346f, 467f)))))));
    var_1 = Struct_2(var_1.a, var_1.b);
    var_0 = ~max(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.x, var_0.x) & u_input.d.wy, ~firstTrailingBit(u_input.a.xx), vec2<u32>(~var_0.x, 1u)), u_input.d.xz);
    var var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~_wgslsmith_sub_vec2_u32(u_input.d.yy, ~u_input.d.xy)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b.x, var_1.b.x) * _wgslsmith_f_op_vec2_f32(var_2.b - var_2.b)), max(4294967295u, 4294967295u), firstLeadingBit((abs(vec4<u32>(0u, 4294967295u, 38123u, var_0.x)) | u_input.d) | ~reverseBits(u_input.d)));
}

