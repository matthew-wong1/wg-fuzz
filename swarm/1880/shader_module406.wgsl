struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<bool>,
    d: bool,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20> = array<i32, 20>(-297i, -379i, 29054i, i32(-2147483648), -1i, -14557i, 0i, i32(-2147483648), 1i, 3405i, 2147483647i, -5892i, -24914i, -32608i, 2147483647i, -1i, i32(-2147483648), 31311i, -1i, 2147483647i);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: u32) -> u32 {
    return _wgslsmith_dot_vec2_u32(u_input.a.zx, vec2<u32>(arg_2 | _wgslsmith_clamp_u32(arg_2, ~10558u, arg_2), _wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(arg_2, arg_2))), firstLeadingBit(abs(u_input.a.x)))));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(max(vec4<i32>(21901i, -7774i, 1i, _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], 2147483647i)), vec4<i32>(i32(-1i) * -2147483647i, abs(global0[_wgslsmith_index_u32(u_input.a.x, 20u)]), global0[_wgslsmith_index_u32(u_input.a.x, 20u)] << (u_input.a.x % 32u), 57557i)) ^ _wgslsmith_add_vec4_i32(~vec4<i32>(0i, global0[_wgslsmith_index_u32(7018u, 20u)], global0[_wgslsmith_index_u32(u_input.a.x, 20u)], global0[_wgslsmith_index_u32(u_input.a.x, 20u)]), vec4<i32>(max(global0[_wgslsmith_index_u32(35085u, 20u)], -2147483647i), 1i, global0[_wgslsmith_index_u32(func_3(vec2<bool>(true, true), vec4<bool>(false, true, true, false), 39141u), 20u)], -global0[_wgslsmith_index_u32(u_input.a.x, 20u)])), ~abs(_wgslsmith_sub_vec3_u32(max(vec3<u32>(u_input.a.x, u_input.a.x, 0u), vec3<u32>(15778u, 0u, u_input.a.x)), ~u_input.a.xxz)), select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(true, false)), true, true, true), any(vec2<bool>(true, true))), true, ~(~vec3<i32>(-28088i, min(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], global0[_wgslsmith_index_u32(u_input.a.x, 20u)]), _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], 2147483647i))));
    let var_1 = var_0.e.zz;
    global0 = array<i32, 20>();
    global0 = array<i32, 20>();
    var var_2 = vec4<u32>(reverseBits(~(~var_0.b.x)), _wgslsmith_clamp_u32(_wgslsmith_div_u32(var_0.b.x << (u_input.a.x % 32u), 0u) | ~(u_input.a.x << (u_input.a.x % 32u)), u_input.a.x, _wgslsmith_clamp_u32(reverseBits(0u), var_0.b.x, _wgslsmith_div_u32(countOneBits(1u), _wgslsmith_sub_u32(u_input.a.x, var_0.b.x)))), 1u, ~(~u_input.a.x));
    return var_0;
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    global0 = array<i32, 20>();
    let var_0 = Struct_2(arg_1);
    global0 = array<i32, 20>();
    let var_1 = var_0.a;
    var var_2 = func_2();
    return arg_1;
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = ~(~min(~vec3<i32>(-60853i, global0[_wgslsmith_index_u32(108144u, 20u)], global0[_wgslsmith_index_u32(arg_0, 20u)]), vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(arg_0, 20u)], -38582i))) | ~(~vec3<i32>(firstTrailingBit(global0[_wgslsmith_index_u32(u_input.a.x, 20u)]), _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], -1i), 2147483647i));
    return func_4(any(vec3<bool>(true, true, true)), func_2());
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 20>();
    let var_0 = func_1(firstTrailingBit(~1u));
    let var_1 = func_1(var_0.b.x).c.ywx;
    let var_2 = -abs(38294i >> (u_input.a.x % 32u));
    var var_3 = Struct_2(Struct_1(vec4<i32>(0i, var_0.e.x, i32(-1i) * -39734i, -35203i) << (vec4<u32>(u_input.a.x, 81051u, 29298u, 4294967295u) % vec4<u32>(32u)), ~abs(var_0.b), func_4(false, Struct_1(min(var_0.a, vec4<i32>(1i, global0[_wgslsmith_index_u32(22971u, 20u)], 1i, global0[_wgslsmith_index_u32(var_0.b.x, 20u)])), var_0.b, vec4<bool>(false, true, true, true), true, vec3<i32>(var_0.a.x, var_2, 0i))).c, all(var_0.c), vec3<i32>(_wgslsmith_sub_i32(select(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], global0[_wgslsmith_index_u32(u_input.a.x, 20u)], var_1.x), ~global0[_wgslsmith_index_u32(var_0.b.x, 20u)]), var_2, firstLeadingBit(-55699i))));
    let var_4 = func_4(var_3.a.d, Struct_1(-(max(vec4<i32>(var_0.a.x, global0[_wgslsmith_index_u32(4294967295u, 20u)], 2147483647i, 0i), vec4<i32>(var_0.a.x, 4417i, global0[_wgslsmith_index_u32(2357u, 20u)], -16233i)) ^ firstLeadingBit(vec4<i32>(global0[_wgslsmith_index_u32(var_0.b.x, 20u)], 36975i, 36700i, global0[_wgslsmith_index_u32(u_input.a.x, 20u)]))), u_input.a.xxy, func_4(true, var_3.a).c, all(var_0.c.zyz), -(~var_0.a.zzx)));
    var_3 = Struct_2(Struct_1(~_wgslsmith_clamp_vec4_i32(var_0.a, firstTrailingBit(var_3.a.a), _wgslsmith_div_vec4_i32(vec4<i32>(var_2, -12085i, 1i, global0[_wgslsmith_index_u32(u_input.a.x, 20u)]), var_0.a)), ~vec3<u32>(~u_input.a.x, min(u_input.a.x, 14483u), u_input.a.x), !(!select(vec4<bool>(false, var_0.c.x, true, true), vec4<bool>(true, true, true, var_3.a.d), var_4.d)), false, min(_wgslsmith_mult_vec3_i32(vec3<i32>(-29458i, 1i, -2147483647i), abs(var_4.a.yxz)), -(~vec3<i32>(40544i, var_0.e.x, global0[_wgslsmith_index_u32(1u, 20u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(select(vec4<i32>(-2147483647i, abs(-2147483647i), 2147483647i, ~var_2), select(vec4<i32>(7306i, -8143i, var_0.e.x, 2147483647i), var_0.a, var_0.c.x & false), reverseBits(var_0.a.x) > var_0.e.x)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~82997u), _wgslsmith_clamp_u32(firstTrailingBit(35921u), u_input.a.x, 671u)) ^ 4294967295u, 20u)]);
}

