struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(493f, -1i, Struct_1(vec3<u32>(1u, 0u, 9597u)), Struct_1(vec3<u32>(44726u, 4294967295u, 22818u)), Struct_1(vec3<u32>(127950u, 4294967295u, 1u))), Struct_2(-1492f, 2147483647i, Struct_1(vec3<u32>(0u, 79444u, 1u)), Struct_1(vec3<u32>(45587u, 0u, 2880u)), Struct_1(vec3<u32>(7351u, 4294967295u, 1u))), Struct_2(712f, 2147483647i, Struct_1(vec3<u32>(21564u, 22402u, 7594u)), Struct_1(vec3<u32>(4294967295u, 1u, 88434u)), Struct_1(vec3<u32>(1u, 45252u, 0u))), Struct_2(322f, -6666i, Struct_1(vec3<u32>(44278u, 15957u, 0u)), Struct_1(vec3<u32>(4294967295u, 0u, 8467u)), Struct_1(vec3<u32>(33211u, 0u, 100747u))), Struct_2(-485f, 6914i, Struct_1(vec3<u32>(40273u, 4294967295u, 38593u)), Struct_1(vec3<u32>(11370u, 4294967295u, 0u)), Struct_1(vec3<u32>(99081u, 4294967295u, 18258u))), Struct_2(1526f, 29570i, Struct_1(vec3<u32>(7444u, 1u, 1u)), Struct_1(vec3<u32>(37823u, 4294967295u, 9262u)), Struct_1(vec3<u32>(1u, 11740u, 29081u))), Struct_2(-2816f, 2147483647i, Struct_1(vec3<u32>(0u, 79860u, 16421u)), Struct_1(vec3<u32>(4294967295u, 1u, 4294967295u)), Struct_1(vec3<u32>(18981u, 3742u, 1u))), Struct_2(160f, i32(-2147483648), Struct_1(vec3<u32>(4294967295u, 4294967295u, 33980u)), Struct_1(vec3<u32>(89277u, 1u, 40639u)), Struct_1(vec3<u32>(4294967295u, 56989u, 1u))), Struct_2(1000f, 0i, Struct_1(vec3<u32>(40133u, 70197u, 0u)), Struct_1(vec3<u32>(5639u, 1u, 5768u)), Struct_1(vec3<u32>(40508u, 0u, 1u))), Struct_2(1080f, i32(-2147483648), Struct_1(vec3<u32>(22864u, 1u, 28004u)), Struct_1(vec3<u32>(47055u, 92471u, 4294967295u)), Struct_1(vec3<u32>(77297u, 32803u, 1u))), Struct_2(289f, 2147483647i, Struct_1(vec3<u32>(3246u, 27741u, 67757u)), Struct_1(vec3<u32>(0u, 0u, 27577u)), Struct_1(vec3<u32>(0u, 12128u, 1u))), Struct_2(163f, i32(-2147483648), Struct_1(vec3<u32>(4294967295u, 1u, 0u)), Struct_1(vec3<u32>(39632u, 7980u, 0u)), Struct_1(vec3<u32>(6284u, 42576u, 4294967295u))), Struct_2(-741f, 0i, Struct_1(vec3<u32>(1u, 1u, 22290u)), Struct_1(vec3<u32>(1u, 1u, 9838u)), Struct_1(vec3<u32>(41423u, 0u, 8366u))), Struct_2(1482f, 0i, Struct_1(vec3<u32>(4294967295u, 4294967295u, 8295u)), Struct_1(vec3<u32>(13618u, 1u, 66812u)), Struct_1(vec3<u32>(31214u, 34710u, 0u))));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> vec2<u32> {
    global0 = array<Struct_2, 14>();
    global0 = array<Struct_2, 14>();
    global0 = array<Struct_2, 14>();
    var var_0 = arg_0;
    let var_1 = ~u_input.d;
    return vec2<u32>(reverseBits(~countOneBits(arg_0.a.x)), 8526u) ^ vec2<u32>(4884u, ~_wgslsmith_dot_vec4_u32(var_1 << (var_1 % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a.x, 55261u, 0u, 12650u), vec4<u32>(0u, 4294967295u, u_input.d.x, var_1.x))));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: f32) -> u32 {
    global0 = array<Struct_2, 14>();
    global0 = array<Struct_2, 14>();
    global0 = array<Struct_2, 14>();
    let var_0 = Struct_1(arg_1.d.a);
    global0 = array<Struct_2, 14>();
    return _wgslsmith_add_u32(~47940u, _wgslsmith_sub_u32(arg_1.c.a.x, 59131u));
}

fn func_1(arg_0: Struct_1) -> vec4<u32> {
    let var_0 = global0[_wgslsmith_index_u32(~(abs(reverseBits(u_input.b)) >> (1u % 32u)), 14u)];
    global0 = array<Struct_2, 14>();
    let var_1 = _wgslsmith_add_vec2_u32(~vec2<u32>(var_0.d.a.x, var_0.e.a.x), _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, var_0.e.a.x) >> (u_input.d.wy % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.d.a.x, 37928u), var_0.e.a.zy)), select(func_2(var_0.e, global0[_wgslsmith_index_u32(arg_0.a.x, 14u)]), ~arg_0.a.yz, select(vec2<bool>(true, true), vec2<bool>(true, false), false)))) << (select(_wgslsmith_mod_vec2_u32(vec2<u32>(func_3(vec2<f32>(-631f, 1147f), Struct_2(var_0.a, -1130i, var_0.c, var_0.c, Struct_1(vec3<u32>(arg_0.a.x, 24995u, 59173u))), -1000f), _wgslsmith_clamp_u32(var_0.d.a.x, u_input.d.x, arg_0.a.x)), reverseBits(arg_0.a.yx)), arg_0.a.yz, vec2<bool>(true, true)) % vec2<u32>(32u));
    global0 = array<Struct_2, 14>();
    var var_2 = global0[_wgslsmith_index_u32(reverseBits((func_2(arg_0, Struct_2(159f, var_0.b, arg_0, Struct_1(vec3<u32>(var_0.e.a.x, 0u, u_input.d.x)), Struct_1(arg_0.a))).x & 8284u) ^ ~_wgslsmith_sub_u32(0u, func_3(vec2<f32>(var_0.a, var_0.a), global0[_wgslsmith_index_u32(36979u, 14u)], var_0.a))), 14u)];
    return max(countOneBits(u_input.d), u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(_wgslsmith_sub_i32(1i, ~0i) | -u_input.c.x, _wgslsmith_sub_i32(1i, -(~(~u_input.a.x))), max(_wgslsmith_mult_i32(u_input.c.x, ~u_input.c.x), _wgslsmith_add_i32(u_input.a.x, abs(-1i))));
    let var_1 = func_1(Struct_1(abs(vec3<u32>(~u_input.d.x, ~u_input.d.x, _wgslsmith_sub_u32(4294967295u, 50447u)))));
    let var_2 = Struct_1(vec3<u32>(57263u, ~37899u, var_1.x));
    let var_3 = global0[_wgslsmith_index_u32(6583u, 14u)];
    var var_4 = true;
    let var_5 = abs(_wgslsmith_div_vec4_i32(vec4<i32>(0i, var_3.b, abs(u_input.c.x), u_input.c.x), -vec4<i32>(-2147483647i, -78672i, u_input.a.x, u_input.c.x))) << (_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(u_input.d | vec4<u32>(14265u, 58158u, u_input.d.x, var_2.a.x), u_input.d >> (var_1 % vec4<u32>(32u))), u_input.d), vec4<u32>(64548u, 7657u, firstTrailingBit(abs(var_3.e.a.x)), 4294967295u)) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(1i, -50845i), var_1.x, u_input.d.zzw, u_input.d.zz);
}

