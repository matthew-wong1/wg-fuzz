struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec3<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(56490u, 34757u, 11903u, 53330u);

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec4<i32>(-37568i, -42647i, 1i, -31140i)), Struct_1(vec4<i32>(-21353i, i32(-2147483648), i32(-2147483648), 24871i)), Struct_1(vec4<i32>(49196i, -53014i, 7800i, 0i)), Struct_1(vec4<i32>(1i, 1i, -28280i, 1i)), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 36463i, 27203i)), Struct_1(vec4<i32>(24105i, i32(-2147483648), 1i, -6663i)), Struct_1(vec4<i32>(1i, 5325i, -48805i, 51894i)), Struct_1(vec4<i32>(-19708i, 1i, -36358i, 72050i)), Struct_1(vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), -27146i)), Struct_1(vec4<i32>(57043i, 1i, 1i, 0i)), Struct_1(vec4<i32>(-31914i, -10406i, 12347i, 40810i)), Struct_1(vec4<i32>(24835i, i32(-2147483648), 1i, -7268i)), Struct_1(vec4<i32>(6959i, -1i, 89790i, -41958i)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_1(arg_0: vec2<i32>) -> i32 {
    return -u_input.b.x & 1i;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>) -> bool {
    global2 = array<Struct_1, 13>();
    var var_0 = reverseBits(abs(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(72377u, global0.x), vec2<u32>(u_input.a, 1u)), _wgslsmith_mult_vec2_u32(global0.wz, vec2<u32>(u_input.a, u_input.a)))) << (global0.xw % vec2<u32>(32u)));
    let var_1 = reverseBits(-_wgslsmith_add_vec3_i32(min(u_input.b, global1.a.zyw) | _wgslsmith_div_vec3_i32(vec3<i32>(arg_0.a.x, -2147483647i, arg_0.a.x), global1.a.xwy), vec3<i32>(_wgslsmith_div_i32(-1i, -1i), -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.b.x, 67499i), arg_0.a.zzw))));
    global1 = arg_0;
    let var_2 = Struct_1(_wgslsmith_add_vec4_i32(countOneBits(firstTrailingBit(vec4<i32>(var_1.x, arg_0.a.x, global1.a.x, var_1.x))), ~(global1.a >> (vec4<u32>(u_input.a, global0.x, 1u, 4294967295u) % vec4<u32>(32u)))));
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec2<bool>, arg_3: i32) -> i32 {
    global0 = ~vec4<u32>(reverseBits(~u_input.a), ~(~u_input.a), 74925u, 13397u);
    var var_0 = vec3<bool>(false, arg_1.x, !arg_2.x);
    let var_1 = _wgslsmith_sub_i32(1i, 30436i);
    let var_2 = arg_0;
    return ~global1.a.x;
}

fn func_2(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = Struct_1(global1.a);
    let var_1 = func_4(Struct_1(~vec4<i32>(_wgslsmith_sub_i32(-1i, 1i), countOneBits(arg_0.a.x), -2147483647i, ~u_input.b.x)), select(vec4<bool>(all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true))), all(vec3<bool>(false, true, false)) & true, any(vec2<bool>(true, false)), true), select(vec4<bool>(any(vec4<bool>(true, true, false, true)), true, true, true), vec4<bool>(true, 5169u == u_input.a, true, true), vec4<bool>(all(vec2<bool>(true, false)), true, func_3(Struct_1(global1.a), vec3<bool>(true, true, true)), all(vec2<bool>(true, true)))), select(false, true, false) || !(u_input.a >= u_input.a)), vec2<bool>(true, true), min(arg_0.a.x, _wgslsmith_dot_vec2_i32(-vec2<i32>(var_0.a.x, var_0.a.x), var_0.a.xx)));
    let var_2 = firstLeadingBit(-func_1(var_0.a.yy));
    var_0 = Struct_1(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(21955i, arg_0.a.x | global1.a.x, firstTrailingBit(20585i), -41794i), ~vec4<i32>(var_0.a.x, 1i, var_0.a.x, var_0.a.x)), ~select(arg_0.a >> (vec4<u32>(global0.x, u_input.a, 0u, u_input.a) % vec4<u32>(32u)), -arg_0.a, select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false))), ~var_0.a));
    let var_3 = var_0.a.x >> (_wgslsmith_div_u32(1u, u_input.a) % 32u);
    return -select(firstLeadingBit(firstLeadingBit(reverseBits(vec4<i32>(u_input.b.x, global1.a.x, var_0.a.x, arg_0.a.x)))), _wgslsmith_mod_vec4_i32(firstLeadingBit(arg_0.a), var_0.a), !vec4<bool>(arg_0.a.x > global1.a.x, true, select(true, true, false), any(vec4<bool>(false, false, true, false))));
}

fn func_5(arg_0: Struct_1) -> StorageBuffer {
    global1 = global2[_wgslsmith_index_u32(global0.x << (~u_input.a % 32u), 13u)];
    var var_0 = vec2<i32>(-1i) * -vec2<i32>(arg_0.a.x, _wgslsmith_sub_i32(i32(-1i) * -1i, -global1.a.x));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, u_input.a), 13u)];
    let var_2 = 0u;
    let var_3 = Struct_1(~arg_0.a);
    return StorageBuffer(~(~26942u), -1277f, arg_0.a.x, vec3<f32>(138f, -315f, 1956f), var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_u32(_wgslsmith_add_u32(1u, 1u), global0.x);
    let var_1 = global1.a | ~global1.a;
    let var_2 = abs(vec3<i32>(select(_wgslsmith_clamp_i32(-1i, global1.a.x, global1.a.x) >> (~0u % 32u), ~1i, true), ~50251i, func_1(u_input.b.yy)));
    let var_3 = -206f;
    var var_4 = var_2.x;
    let x = u_input.a;
    s_output = func_5(Struct_1(func_2(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(global0.x, 11097u), global0.x), 13u)])));
}

