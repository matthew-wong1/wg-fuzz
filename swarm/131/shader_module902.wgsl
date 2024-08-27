struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
}

struct Struct_4 {
    a: f32,
    b: vec4<bool>,
    c: Struct_1,
    d: i32,
    e: vec4<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<i32>,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 20>;

var<private> global1: vec3<bool> = vec3<bool>(true, true, true);

var<private> global2: array<vec3<i32>, 19> = array<vec3<i32>, 19>(vec3<i32>(1i, -42638i, i32(-2147483648)), vec3<i32>(-1i, i32(-2147483648), 0i), vec3<i32>(0i, -1i, -25081i), vec3<i32>(43702i, 11553i, 2147483647i), vec3<i32>(1i, 34645i, -1i), vec3<i32>(0i, 3513i, -1i), vec3<i32>(-15552i, 1i, -80345i), vec3<i32>(9459i, 2147483647i, -20302i), vec3<i32>(-1i, -50199i, 2147483647i), vec3<i32>(10471i, -53829i, -36763i), vec3<i32>(i32(-2147483648), -17690i, i32(-2147483648)), vec3<i32>(71983i, 1i, -14320i), vec3<i32>(1i, -14230i, 1i), vec3<i32>(i32(-2147483648), 1i, 30227i), vec3<i32>(2147483647i, -8617i, 1i), vec3<i32>(23225i, i32(-2147483648), 1i), vec3<i32>(i32(-2147483648), -6793i, i32(-2147483648)), vec3<i32>(-43618i, 1i, 2147483647i), vec3<i32>(0i, -35995i, -49936i));

var<private> global3: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(i32(-2147483648), false), Struct_3(43721i, true), Struct_3(25753i, true), Struct_3(-14092i, true), Struct_3(-7881i, true), Struct_3(2147483647i, false), Struct_3(-1i, true), Struct_3(i32(-2147483648), true), Struct_3(-12104i, false), Struct_3(17181i, true), Struct_3(i32(-2147483648), false), Struct_3(1718i, true), Struct_3(31775i, false), Struct_3(-14201i, true), Struct_3(6858i, true), Struct_3(8130i, true), Struct_3(-29287i, false), Struct_3(i32(-2147483648), false), Struct_3(i32(-2147483648), false), Struct_3(1i, false), Struct_3(0i, false), Struct_3(56195i, false), Struct_3(4208i, true));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec3<bool> {
    let var_0 = false;
    global1 = vec3<bool>(true, false, true);
    let var_1 = select(~abs(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(8377u, u_input.c, u_input.c), vec3<u32>(u_input.a.x, u_input.c, 76596u)), ~vec3<u32>(1u, u_input.a.x, u_input.b))), ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 12472u, u_input.c), vec3<u32>(u_input.b, 6174u, 0u))) >> (abs(~max(vec3<u32>(u_input.b, 0u, u_input.c), vec3<u32>(u_input.b, u_input.a.x, 25147u))) % vec3<u32>(32u)), vec3<bool>(!var_0, var_0, true));
    var var_2 = false;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-971f, -520f) - _wgslsmith_f_op_f32(min(-806f, 333f)))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(110f)) + 1246f)))));
    return !select(!(!select(vec3<bool>(false, false, false), vec3<bool>(false, var_0, true), true)), !(!vec3<bool>(true, global1.x, global1.x)), false);
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: vec4<i32>, arg_3: vec3<f32>) -> bool {
    return !(true || global1.x);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_5(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(0u, ~u_input.a.x)), u_input.c), 23u)], select(~firstLeadingBit(vec4<i32>(7707i, -1i, -13340i, 0i)), vec4<i32>(~0i & (3727i << (u_input.a.x % 32u)), -(~2147483647i), abs(-22084i), _wgslsmith_dot_vec3_i32(global2[_wgslsmith_index_u32(min(u_input.c, 1u), 19u)], global2[_wgslsmith_index_u32(u_input.b, 19u)] ^ global2[_wgslsmith_index_u32(u_input.c, 19u)])), func_4(select(vec3<bool>(global1.x, global1.x, true), !vec3<bool>(global1.x, true, true), func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1169f, -1000f)) + _wgslsmith_f_op_f32(max(-574f, 339f))), ~abs(vec4<i32>(-4717i, -6008i, -51212i, 0i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(214f, 374f, 1053f)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(385f + 691f) - _wgslsmith_f_op_f32(-156f + 429f)))), 1i);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(var_0.c.a, 1237f, false)), var_0.c.a)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.a), _wgslsmith_f_op_f32(1892f - _wgslsmith_f_op_f32(783f - -1083f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(466f, var_0.c.a, false)))) + -1090f)));
    var var_2 = global3[_wgslsmith_index_u32(~u_input.a.x, 23u)];
    global1 = vec3<bool>(!var_0.a.b, false, global1.x);
    let var_3 = Struct_3(-(56308i >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 0u, u_input.b), ~vec3<u32>(u_input.c, u_input.a.x, 16879u)) % 32u)), false);
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-855f, -1254f, true))))), var_0.c, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1152f)), var_0.c);
}

fn func_1() -> vec4<u32> {
    global1 = vec3<bool>(true, !global1.x, true);
    var var_0 = _wgslsmith_clamp_i32(~select(-2147483647i, 1i, any(vec2<bool>(false, global1.x))) >> (0u % 32u), firstTrailingBit(countOneBits(-23731i)), abs(1i));
    var var_1 = func_2();
    let var_2 = vec3<bool>(true, true, true);
    var var_3 = func_2().d;
    return vec4<u32>(_wgslsmith_sub_u32(max(~u_input.b, ~_wgslsmith_dot_vec3_u32(vec3<u32>(175u, u_input.a.x, 28273u), vec3<u32>(u_input.c, u_input.b, 48398u))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 1u, u_input.a.x), vec3<u32>(898u, 1u, 76765u)) | ~u_input.a.x, u_input.c, u_input.b << (_wgslsmith_mod_u32(52386u, 26926u) % 32u))), _wgslsmith_div_u32(firstLeadingBit(_wgslsmith_mod_u32(u_input.a.x, 4294967295u)) << (4476u % 32u), u_input.a.x << (1u % 32u)), ~u_input.c, u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<i32>, 19>();
    var var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(42595u, u_input.a.x, 1u, _wgslsmith_mult_u32(~(~1u), ~u_input.a.x)), func_1());
    var var_1 = -1i;
    let var_2 = global0[_wgslsmith_index_u32(select(u_input.b, _wgslsmith_sub_u32(firstTrailingBit(4294967295u), u_input.a.x & (abs(var_0.x) & 1680u)), true), 20u)];
    var var_3 = var_2.c;
    var var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(var_2.a)), ~(~2147483647i), ~(~(_wgslsmith_mult_vec3_u32(var_0.ywz, var_0.wyz) & _wgslsmith_sub_vec3_u32(var_0.wzx, vec3<u32>(0u, var_0.x, u_input.a.x)))));
}

