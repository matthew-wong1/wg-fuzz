struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 29>;

var<private> global1: array<bool, 12> = array<bool, 12>(false, false, false, false, false, false, false, true, true, true, true, false);

var<private> global2: vec3<f32> = vec3<f32>(-1000f, 1202f, -707f);

var<private> global3: vec2<u32> = vec2<u32>(4294967295u, 4294967295u);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-global2.x), vec2<u32>(1u, _wgslsmith_mod_u32(1u, 1u)), _wgslsmith_dot_vec3_i32(vec3<i32>(~2147483647i, u_input.a, ~u_input.a), _wgslsmith_div_vec3_i32(global0[_wgslsmith_index_u32(~(~17098u), 29u)], max(-vec3<i32>(0i, u_input.c.x, 9649i), countOneBits(global0[_wgslsmith_index_u32(29036u, 29u)])))), ~(~(~(~vec3<u32>(global3.x, 52102u, 41207u)))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_0.a)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-765f, var_0.a)))), var_0.b, ~var_0.c, countOneBits(~var_0.d)), vec4<bool>(global1[_wgslsmith_index_u32(~abs(1u), 12u)], _wgslsmith_div_f32(var_0.a, var_0.a) < 1104f, !global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(var_0.b.x, 12u)]), global1[_wgslsmith_index_u32(var_0.d.x, 12u)], ~var_0.d.x | countOneBits(abs(~74683u)));
    return var_1.a.c;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>) -> u32 {
    global1 = array<bool, 12>();
    var var_0 = arg_0.a;
    let var_1 = Struct_3(Struct_2(Struct_1(var_0.a, max(var_0.b, vec2<u32>(var_0.d.x, 24879u)) << (arg_0.a.b % vec2<u32>(32u)), u_input.a, ~firstTrailingBit(vec3<u32>(arg_0.a.d.x, 28825u, 4294967295u))), select(arg_0.b, arg_0.b, arg_0.b), !arg_0.c, 99220u >> (~max(u_input.b, 33166u) % 32u)));
    var_0 = Struct_1(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(1000f * var_0.a)), ~var_1.a.a.d.xz, func_3(u_input.b), max(~(vec3<u32>(5453u, 30175u, arg_1.x) & arg_0.a.d), arg_0.a.d));
    global2 = vec3<f32>(var_1.a.a.a, global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-437f + 288f))) * -148f)));
    return 22757u;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_2(Struct_1(global2.x, ~(~vec2<u32>(u_input.b, 1u)) << (_wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(global3.x, 39623u)), vec2<u32>(global3.x, u_input.b)) % vec2<u32>(32u)), u_input.c.x, select(~(~vec3<u32>(global3.x, 4294967295u, 4294967295u)), vec3<u32>(~global3.x, ~13529u, func_2(Struct_2(Struct_1(343f, vec2<u32>(u_input.b, 4294967295u), u_input.a, vec3<u32>(4294967295u, 0u, u_input.b)), vec4<bool>(false, global1[_wgslsmith_index_u32(global3.x, 12u)], global1[_wgslsmith_index_u32(31732u, 12u)], false), global1[_wgslsmith_index_u32(123417u, 12u)], u_input.b), vec4<u32>(global3.x, 66480u, global3.x, 0u))), all(!vec4<bool>(global1[_wgslsmith_index_u32(0u, 12u)], false, true, false)))), vec4<bool>(any(select(vec2<bool>(global1[_wgslsmith_index_u32(global3.x, 12u)], global1[_wgslsmith_index_u32(global3.x, 12u)]), vec2<bool>(global1[_wgslsmith_index_u32(global3.x, 12u)], true), true)), true, -820f > _wgslsmith_f_op_f32(-802f * _wgslsmith_div_f32(global2.x, -174f)), 1i == (abs(u_input.a) & -2147483647i)), any(vec3<bool>(!global1[_wgslsmith_index_u32(4294967295u, 12u)] & false, false, u_input.a != u_input.c.x)), u_input.b);
    var var_1 = Struct_3(Struct_2(Struct_1(359f, abs(var_0.a.d.xy), -59424i, _wgslsmith_clamp_vec3_u32(var_0.a.d, var_0.a.d, var_0.a.d << (var_0.a.d % vec3<u32>(32u)))), vec4<bool>(global1[_wgslsmith_index_u32(~40018u, 12u)], var_0.c, !(!global1[_wgslsmith_index_u32(u_input.b, 12u)]), true), true, _wgslsmith_clamp_u32(u_input.b, 7194u, countOneBits(u_input.b >> (u_input.b % 32u)))));
    var var_2 = ~var_0.a.b;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a.a))));
    var_3 = 1394f;
    return var_1.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(u_input.c.x, u_input.a);
    let var_1 = func_1();
    global3 = _wgslsmith_add_vec2_u32(~var_1.d.xy, var_1.b);
    global3 = var_1.b ^ var_1.d.xx;
    global1 = array<bool, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, u_input.c.x, 579f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.x * 2223f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1524f) * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_1.a, -960f), _wgslsmith_f_op_f32(var_1.a - var_1.a)))), !any(vec3<bool>(global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(global3.x, 12u)], global1[_wgslsmith_index_u32(global3.x, 12u)])) & (!global1[_wgslsmith_index_u32(u_input.b, 12u)] & true))));
}

