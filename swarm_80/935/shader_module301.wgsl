struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: bool, arg_3: vec4<bool>) -> vec3<bool> {
    let var_0 = vec2<u32>(~firstLeadingBit(_wgslsmith_dot_vec2_u32(arg_0.d.xx, vec2<u32>(1u, u_input.a.x)) >> (u_input.a.x % 32u)), _wgslsmith_mult_u32(~abs(_wgslsmith_div_u32(4294967295u, u_input.a.x)), _wgslsmith_dot_vec2_u32(~(u_input.a.zy & arg_0.d.zz), max(vec2<u32>(arg_0.d.x, 1u), ~vec2<u32>(1u, arg_0.d.x)))));
    var var_1 = ((_wgslsmith_clamp_u32(u_input.a.x, 25366u, select(1u, var_0.x, false)) >> (1u % 32u)) >= ~4294967295u) | all(arg_3);
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    let var_2 = firstTrailingBit(vec2<i32>(u_input.b, _wgslsmith_mod_i32(i32(-1i) * -2510i, abs(arg_0.a))));
    return !(!(!(!(!arg_3.xzx))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>) -> vec2<bool> {
    var var_0 = global0[_wgslsmith_index_u32(~(firstTrailingBit(_wgslsmith_sub_u32(max(arg_0.d.x, u_input.a.x), countOneBits(23990u))) << (~select(arg_1.d.x, _wgslsmith_dot_vec3_u32(arg_1.d, vec3<u32>(arg_0.d.x, 4294967295u, 0u)), true) % 32u)), 23u)];
    let var_1 = true;
    var var_2 = select(reverseBits(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.a, arg_1.a, arg_1.a, arg_1.a), vec4<i32>(u_input.b, u_input.b, -1i, var_0.a)), reverseBits(vec4<i32>(arg_0.a, u_input.b, u_input.b, -17250i)))), vec4<i32>(u_input.b, 47749i, ~0i, var_0.a), false) & _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-13000i, 38603i), _wgslsmith_add_i32(arg_1.a, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a, arg_0.a), vec2<i32>(arg_0.a, var_0.a))), -1i, i32(-1i) * -arg_0.a), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.a, arg_1.a, arg_0.a, -2147483647i) | vec4<i32>(u_input.b, -1i, 2147483647i, arg_0.a), firstLeadingBit(vec4<i32>(1i, var_0.a, var_0.a, arg_1.a))) | ~_wgslsmith_mod_vec4_i32(vec4<i32>(-37891i, u_input.b, u_input.b, 0i), vec4<i32>(var_0.a, 106494i, u_input.b, arg_0.a)));
    let var_3 = Struct_1(i32(-1i) * -13663i, abs(arg_0.d.x), func_1(arg_1, arg_2.x, any(arg_2.zww), select(!(!vec4<bool>(arg_2.x, var_1, arg_0.c, arg_1.c)), !(!arg_2), arg_2.x)).x, ~(select(var_0.d, vec3<u32>(u_input.a.x, 4294967295u, arg_0.d.x), any(vec2<bool>(true, arg_1.c))) & var_0.d));
    var_0 = Struct_1(_wgslsmith_mod_i32(-1i, -34271i), 35763u, !(!var_1 != !arg_1.c), ~vec3<u32>(~(~0u), ~u_input.a.x, abs(_wgslsmith_dot_vec3_u32(var_0.d, arg_0.d))));
    return func_1(Struct_1(var_3.a, ~_wgslsmith_dot_vec2_u32(~var_3.d.xx, u_input.a.xx), all(arg_2.yyw), vec3<u32>(12015u, ~152900u, u_input.a.x)), any(!arg_2.yyy), !any(!(!arg_2.xz)), arg_2).xz;
}

fn func_2() -> u32 {
    let var_0 = vec2<bool>(all(vec3<bool>(true, true, true)), true);
    global0 = array<Struct_1, 23>();
    var var_1 = all(!(!func_3(global0[_wgslsmith_index_u32(~78212u, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)], !vec4<bool>(var_0.x, var_0.x, var_0.x, true))));
    let var_2 = true;
    global0 = array<Struct_1, 23>();
    return 15372u;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: u32) -> StorageBuffer {
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    let var_0 = 1f;
    return StorageBuffer(-vec4<i32>(arg_1.a, ~u_input.b | -u_input.b, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.x, -5476i, 0i, 1i), vec4<i32>(0i, u_input.b, u_input.b, 2147483647i), vec4<i32>(u_input.b, arg_0.x, arg_1.a, u_input.b)), vec4<i32>(-47464i, 11090i, u_input.b, 2147483647i)), -55753i), _wgslsmith_dot_vec2_i32(max(arg_0.yy, arg_0.zx) & arg_0.yy, arg_0.zx), ~_wgslsmith_add_vec4_i32(vec4<i32>(reverseBits(u_input.b), _wgslsmith_div_i32(-2147483647i, 2147483647i), -u_input.b, arg_1.a), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.x, 0i, arg_1.a, arg_0.x), vec4<i32>(arg_1.a, u_input.b, 50537i, arg_1.a)), _wgslsmith_div_vec4_i32(vec4<i32>(-50390i, 29334i, arg_0.x, -19320i), vec4<i32>(arg_1.a, -1i, -28434i, arg_1.a)))), ~arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_div_u32(max(~abs(u_input.a.x), u_input.a.x), _wgslsmith_mult_u32(u_input.a.x, 31011u))), 23u)];
    var var_1 = global0[_wgslsmith_index_u32(u_input.a.x, 23u)];
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    var_1 = Struct_1(1i >> (firstTrailingBit(1u) % 32u), 25702u, true, _wgslsmith_sub_vec3_u32(u_input.a, var_0.d));
    let var_2 = 2147483647i;
    global0 = array<Struct_1, 23>();
    var_1 = Struct_1(-u_input.b, 0u << (~_wgslsmith_mult_u32(~var_0.b, 1u) % 32u), all(func_1(global0[_wgslsmith_index_u32(1189u, 23u)], var_0.a > (-2147483647i ^ u_input.b), var_0.c, !(!vec4<bool>(var_0.c, var_0.c, false, true)))), max(vec3<u32>(~(0u >> (u_input.a.x % 32u)), u_input.a.x, 62713u), ~(~var_0.d)));
    let var_3 = reverseBits(u_input.b | (_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b, var_0.a, 1272i), ~vec3<i32>(1i, var_2, -1i)) << ((var_0.d.x >> (_wgslsmith_add_u32(1u, 0u) % 32u)) % 32u)));
    let x = u_input.a;
    s_output = func_4(vec3<i32>(max(-9789i, 0i), ~_wgslsmith_dot_vec3_i32(vec3<i32>(var_3, -15486i, var_1.a) ^ vec3<i32>(-7349i, var_0.a, var_0.a), abs(vec3<i32>(2147483647i, 0i, 1i))), -1i), Struct_1(var_2 << (reverseBits(11622u >> (var_1.d.x % 32u)) % 32u), func_2(), false, _wgslsmith_clamp_vec3_u32(var_1.d, var_1.d, vec3<u32>(1u, u_input.a.x, ~3151u))), ~40297u);
}

