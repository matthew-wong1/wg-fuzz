struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec2<bool>,
    d: vec4<u32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19>;

var<private> global1: Struct_1;

var<private> global2: vec2<bool> = vec2<bool>(true, false);

var<private> global3: vec3<i32>;

var<private> global4: array<vec2<f32>, 23>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_1(!global1.a, ~(~(~_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(32423u, 19u)], u_input.a))), arg_0.e, _wgslsmith_mod_vec4_u32(vec4<u32>(reverseBits(countOneBits(1u)), global0[_wgslsmith_index_u32(global1.d.x, 19u)], select(global0[_wgslsmith_index_u32(1u, 19u)], _wgslsmith_add_u32(global0[_wgslsmith_index_u32(global1.d.x, 19u)], global0[_wgslsmith_index_u32(0u, 19u)]), true), ~(~arg_0.d.x)), min(~vec4<u32>(global0[_wgslsmith_index_u32(12542u, 19u)], 1u, global0[_wgslsmith_index_u32(global1.b, 19u)], arg_0.d.x), vec4<u32>(reverseBits(u_input.a), arg_0.b, _wgslsmith_div_u32(36118u, u_input.a), ~global1.d.x))), select(select(select(vec2<bool>(true, true), select(arg_0.c, global1.c, true), true), arg_0.c, vec2<bool>(all(vec2<bool>(arg_0.e.x, global2.x)), true)), arg_0.c, arg_0.c));
    let var_1 = ~u_input.b;
    let var_2 = i32(-1i) * -(~u_input.b);
    var var_3 = arg_0;
    let var_4 = ~global0[_wgslsmith_index_u32(~min(global0[_wgslsmith_index_u32(~(~var_0.b), 19u)], var_0.b), 19u)];
    return 4294967295u;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(vec4<bool>(!(!(global2.x && global1.e.x)), all(global1.a.zz), true, global1.a.x), global0[_wgslsmith_index_u32(1u, 19u)], global1.a.yy, vec4<u32>(97641u, _wgslsmith_mod_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(~4294967295u, 19u)], _wgslsmith_dot_vec4_u32(vec4<u32>(global1.d.x, 4294967295u, 4294967295u, 1u), global1.d)), global1.b), abs(1u & global0[_wgslsmith_index_u32(4294967295u, 19u)]), global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, global0[_wgslsmith_index_u32(1u, 19u)]), vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(u_input.a, 19u)], global1.d.x) | global1.d.xwx), 19u)], 19u)]), !select(!global1.a.zz, !(!global1.c), true));
    let var_1 = u_input.d;
    let var_2 = -531f;
    global4 = array<vec2<f32>, 23>();
    let var_3 = -636f;
    return Struct_1(!global1.a, global1.b, select(select(!(!var_0.a.yy), !vec2<bool>(false, global1.c.x), global2.x), !select(select(global1.a.ww, global1.a.xy, vec2<bool>(global2.x, false)), !global1.a.wy, global1.a.yz), true), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.a, 19u)], func_3(Struct_1(vec4<bool>(var_0.c.x, global2.x, global2.x, global1.a.x), 4294967295u, global1.a.xz, global1.d, vec2<bool>(global2.x, true))), ~(u_input.a << (71475u % 32u))), vec4<u32>(0u, _wgslsmith_mod_u32(global1.b, global1.d.x), 1u, ~global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(1u, 19u)], 19u)])), var_0.a.ww);
}

fn func_1() -> u32 {
    let var_0 = !(!(10230u <= (global1.b ^ ~u_input.a)));
    global0 = array<u32, 19>();
    global3 = _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(select(_wgslsmith_sub_vec3_i32(vec3<i32>(-1411i, u_input.b, -2147483647i), vec3<i32>(2147483647i, u_input.c.x, global3.x)), ~u_input.d.wyw, select(global1.a.wzz, global1.a.yxw, var_0)), -u_input.d.zww), ~_wgslsmith_add_vec3_i32(vec3<i32>(0i, 2147483647i, u_input.c.x), u_input.d.xxw) ^ ((vec3<i32>(u_input.c.x, u_input.c.x, u_input.b) & vec3<i32>(u_input.b, global3.x, u_input.d.x)) ^ abs(vec3<i32>(u_input.b, u_input.d.x, u_input.d.x)))), max(~(-u_input.d.zwx) & u_input.d.zwz, vec3<i32>(-2147483647i, ~(u_input.c.x & u_input.d.x), u_input.c.x)));
    global1 = func_2();
    var var_1 = abs(reverseBits(-11870i));
    return global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mod_u32(~global1.d.x, _wgslsmith_dot_vec4_u32(~func_2().d, ~select(global1.d, global1.d, var_0)))), 19u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(countOneBits(func_1()), u_input.a, max(~u_input.a, abs(149646u ^ ~u_input.a)));
    let var_1 = _wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(u_input.a, ~global0[_wgslsmith_index_u32(global1.b, 19u)])) & max(~global1.d.wz, vec2<u32>(81407u, 60349u)), var_0.yx, ~vec2<u32>(var_0.x, ~2387u) ^ (vec2<u32>(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(68022u, 19u)], 49304u), ~u_input.a) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.x, 65596u), ~vec2<u32>(18375u, 52973u), vec2<u32>(0u, 32121u)) % vec2<u32>(32u))));
    var var_2 = func_2();
    var var_3 = u_input.a;
    let var_4 = _wgslsmith_dot_vec3_u32(select(~(~(var_2.d.xzy | vec3<u32>(44866u, 0u, 43641u))), ~(~(vec3<u32>(4294967295u, 1u, var_2.d.x) | var_0)), vec3<bool>(false, all(select(vec3<bool>(var_2.c.x, var_2.e.x, false), vec3<bool>(false, var_2.e.x, global2.x), vec3<bool>(false, global1.e.x, global2.x))), all(func_2().a))), countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(func_2().d.x, var_1.x, 17093u), vec3<u32>(global0[_wgslsmith_index_u32(var_2.d.x, 19u)] << (0u % 32u), _wgslsmith_sub_u32(861u, global0[_wgslsmith_index_u32(1094u, 19u)]), 35000u), vec3<u32>(reverseBits(4294967295u), 1u, 1u))));
    var var_5 = Struct_1(!vec4<bool>(true || !var_2.a.x, !var_2.a.x, (u_input.b == 0i) & true, all(select(global1.a.xzx, vec3<bool>(true, global2.x, var_2.c.x), vec3<bool>(var_2.e.x, false, false)))), global1.d.x, func_2().c, abs(var_2.d), !(!select(vec2<bool>(false, global2.x), var_2.a.yy, true)));
    let x = u_input.a;
    s_output = StorageBuffer(global4[_wgslsmith_index_u32(39018u, 23u)]);
}

