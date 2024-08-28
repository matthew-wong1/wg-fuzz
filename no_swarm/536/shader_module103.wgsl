struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: u32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), 32054i), vec2<bool>(true, true), 4294967295u, vec4<u32>(1u, 47826u, 0u, 1u));

var<private> global1: array<bool, 23>;

var<private> global2: Struct_1 = Struct_1(vec3<i32>(i32(-2147483648), 0i, i32(-2147483648)), vec2<bool>(false, true), 1u, vec4<u32>(0u, 539u, 0u, 0u));

var<private> global3: array<Struct_1, 8>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: f32, arg_3: f32) -> u32 {
    let var_0 = arg_1.d;
    global2 = Struct_1(_wgslsmith_mult_vec3_i32(arg_1.a, vec3<i32>(firstLeadingBit(~global2.a.x), ~(i32(-1i) * -1i), ~0i)), global0.b, ~(~(~_wgslsmith_mult_u32(1u, arg_0.x))), ~_wgslsmith_div_vec4_u32(select(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, 929u, 1u, 0u), vec4<u32>(arg_0.x, global0.d.x, arg_0.x, 0u)), var_0 << (var_0 % vec4<u32>(32u)), !vec4<bool>(arg_1.b.x, global1[_wgslsmith_index_u32(u_input.b, 23u)], global2.b.x, false)), ~vec4<u32>(global2.c, var_0.x, arg_1.d.x, global2.c)));
    let var_1 = global1[_wgslsmith_index_u32(var_0.x, 23u)];
    var var_2 = (~(_wgslsmith_div_vec2_u32(arg_1.d.xx, arg_1.d.zz) & _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.x, arg_1.d.x), vec2<u32>(global2.c, 4428u), vec2<u32>(global2.c, 11553u))) << (vec2<u32>(abs(~4294967295u), arg_0.x) % vec2<u32>(32u))) & vec2<u32>(abs(var_0.x << (_wgslsmith_mod_u32(62153u, 68443u) % 32u)), 37567u);
    global1 = array<bool, 23>();
    return arg_0.x;
}

fn func_3(arg_0: vec2<f32>) -> vec3<u32> {
    let var_0 = Struct_1(~(vec3<i32>(-1i) * -u_input.a.zxy), vec2<bool>(global0.b.x, all(select(!vec4<bool>(false, global0.b.x, false, false), !vec4<bool>(true, true, global2.b.x, false), select(vec4<bool>(global2.b.x, global2.b.x, true, global0.b.x), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 23u)], false, false, global1[_wgslsmith_index_u32(global0.c, 23u)]), global1[_wgslsmith_index_u32(global0.c, 23u)])))), reverseBits(u_input.b), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(global2.d, vec4<u32>(u_input.b, u_input.b, global0.c, 4294967295u)), reverseBits(global0.d)), global2.d) << (global2.d % vec4<u32>(32u)));
    var var_1 = vec4<bool>(true, false, global1[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(u_input.b, 62913u)) ^ ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(0u, 1u, u_input.b), u_input.b), 23u)], true);
    var var_2 = Struct_1(_wgslsmith_mod_vec3_i32(~vec3<i32>(0i, global2.a.x, -13223i), var_0.a & ~vec3<i32>(global0.a.x, -1i, global2.a.x)) | var_0.a, select(select(!select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 23u)], global0.b.x), global0.b, var_0.b.x), global2.b, true), global0.b, global0.b.x), _wgslsmith_mult_u32(var_0.c, u_input.b), var_0.d);
    let var_3 = true;
    let var_4 = global0.d.x;
    return ~_wgslsmith_div_vec3_u32(var_2.d.xyz, vec3<u32>(var_0.c, u_input.b, ~(~70675u)));
}

fn func_2(arg_0: vec2<f32>, arg_1: u32, arg_2: vec2<f32>) -> vec2<bool> {
    var var_0 = Struct_1(~vec3<i32>(_wgslsmith_div_i32(-u_input.a.x, _wgslsmith_mult_i32(global2.a.x, 42010i)), _wgslsmith_div_i32(abs(u_input.a.x), global2.a.x | -13782i), firstTrailingBit(-22559i)), vec2<bool>(any(!vec4<bool>(global0.b.x, false, false, true)) | global2.b.x, !any(select(vec4<bool>(false, false, global0.b.x, global0.b.x), vec4<bool>(true, true, global1[_wgslsmith_index_u32(global0.c, 23u)], false), vec4<bool>(global0.b.x, global2.b.x, true, global2.b.x)))), ~14203u, vec4<u32>(arg_1, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, global2.d.x, 59943u), ~vec3<u32>(1u, arg_1, global2.d.x)), _wgslsmith_mult_u32(26516u, ~arg_1)), arg_1, arg_1 | ~max(39074u, 5320u)));
    var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(_wgslsmith_mult_vec3_u32(max(~var_0.d.xyz, var_0.d.wzy << (global2.d.wyx % vec3<u32>(32u))), ~abs(vec3<u32>(global0.c, 0u, arg_1))), var_0.d.zwx << (~func_3(arg_2) % vec3<u32>(32u)), vec3<bool>(!(global1[_wgslsmith_index_u32(1u, 23u)] && global2.b.x), all(vec3<bool>(global1[_wgslsmith_index_u32(var_0.c, 23u)], false, global2.b.x)), false)), ~(func_3(vec2<f32>(303f, 236f)) >> (_wgslsmith_div_vec3_u32(vec3<u32>(21831u, u_input.b, 4294967295u), global0.d.zxw) % vec3<u32>(32u))) ^ vec3<u32>(arg_1, max(global0.c, 35929u) & 1217u, firstTrailingBit(~12384u))), 8u)];
    var_0 = global3[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 8u)];
    global1 = array<bool, 23>();
    let var_1 = countOneBits(-vec3<i32>(global2.a.x, _wgslsmith_mult_i32(global2.a.x & u_input.a.x, 1i), max(0i >> (0u % 32u), 0i)));
    return !select(!global2.b, var_0.b, false);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 8>();
    global0 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(4752u, u_input.b ^ global0.c) | u_input.b, 8u)];
    let var_0 = Struct_1(global0.a, global2.b, 4294967295u, vec4<u32>(~u_input.b, ~(~func_1(global2.d, Struct_1(vec3<i32>(global2.a.x, global2.a.x, -1i), global0.b, global0.c, global0.d), -135f, -1464f)), func_1((global2.d << (global2.d % vec4<u32>(32u))) >> (global0.d % vec4<u32>(32u)), Struct_1(_wgslsmith_mod_vec3_i32(global2.a, vec3<i32>(global0.a.x, -2618i, 335i)), func_2(vec2<f32>(-1000f, -1637f), global2.c, vec2<f32>(437f, -1000f)), ~3321u, _wgslsmith_mod_vec4_u32(vec4<u32>(global0.d.x, global2.d.x, u_input.b, global2.c), global0.d)), 1725f, 824f), _wgslsmith_div_u32(u_input.b, 1u)));
    global3 = array<Struct_1, 8>();
    var var_1 = var_0.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.zx, u_input.b);
}

