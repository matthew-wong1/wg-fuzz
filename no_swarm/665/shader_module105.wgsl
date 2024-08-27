struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(2147483647i, 1i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> i32 {
    let var_0 = 1i;
    global0 = reverseBits(~(-(vec2<i32>(var_0, var_0) << (vec2<u32>(u_input.a.x, 96555u) % vec2<u32>(32u))))) | max(vec2<i32>(-_wgslsmith_add_i32(global0.x, 26908i), u_input.b), ~reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(global0.x, 18572i), vec2<i32>(-15353i, global0.x))));
    global0 = vec2<i32>(var_0, (-27570i >> (u_input.a.x % 32u)) << (1u % 32u));
    var var_1 = vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a.zy, vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 34107u), ~vec4<u32>(4294967295u, 4294967295u, u_input.a.x, 53293u)), _wgslsmith_add_u32(abs(u_input.a.x), u_input.a.x))), ~(~abs(12827u) & ~_wgslsmith_mod_u32(u_input.a.x, 21882u)));
    var_1 = ~(~max(select(select(vec2<u32>(u_input.a.x, 3414u), vec2<u32>(u_input.a.x, var_1.x), true), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, var_1.x), vec2<u32>(13735u, 29633u)), true), u_input.a.yy));
    return var_0;
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_sub_i32(reverseBits(-(-1i | global0.x)), _wgslsmith_sub_i32(global0.x, _wgslsmith_sub_i32(u_input.b, 0i)));
    global0 = ~(vec2<i32>(~1i, _wgslsmith_sub_i32(-1i, func_3())) & ~vec2<i32>(global0.x, 7963i));
    let var_1 = ~firstLeadingBit(u_input.a);
    var var_2 = vec4<bool>(true, true, true, true);
    var var_3 = Struct_4(Struct_3(Struct_2(Struct_1(_wgslsmith_clamp_u32(0u, var_1.x, var_1.x)), firstTrailingBit(1u), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(global0.x, global0.x)), Struct_1(_wgslsmith_add_u32(var_1.x, var_1.x)), vec4<i32>(0i, i32(-1i) * -57641i, ~u_input.b, func_3())), min(~vec4<u32>(26142u, 14776u, 4294967295u, 1u), ~vec4<u32>(var_1.x, u_input.a.x, u_input.a.x, 27698u)), Struct_2(Struct_1(select(40918u, var_1.x, false)), 7437u, _wgslsmith_clamp_i32(_wgslsmith_add_i32(-1i, -2147483647i), _wgslsmith_mod_i32(global0.x, u_input.b), -2147483647i), Struct_1(u_input.a.x), vec4<i32>(func_3(), abs(3343i), _wgslsmith_mod_i32(global0.x, u_input.b), -1i))));
    return 1u;
}

fn func_1(arg_0: vec3<bool>, arg_1: u32) -> u32 {
    let var_0 = i32(-1i) * -_wgslsmith_div_i32(-_wgslsmith_add_i32(1i, -10333i), -46481i);
    let var_1 = ~(~vec3<u32>(~arg_1 ^ func_2(), ~arg_1, abs(abs(13843u))));
    let var_2 = vec4<u32>(0u, 4294967295u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(0u, 4294967295u), arg_1, arg_1), 78702u) << (countOneBits(firstTrailingBit(~abs(vec4<u32>(8705u, u_input.a.x, 1u, 75056u)))) % vec4<u32>(32u));
    global0 = abs(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, 1i), max(vec2<i32>(var_0, u_input.b), vec2<i32>(-51488i, var_0))) >> (vec2<u32>(67849u, var_2.x >> (54063u % 32u)) % vec2<u32>(32u))) << (u_input.a.xz % vec2<u32>(32u));
    global0 = firstTrailingBit(min(firstTrailingBit(vec2<i32>(-3632i, 1i)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, global0.x), abs(vec2<i32>(-2147483647i, global0.x)))) ^ _wgslsmith_mult_vec2_i32(-vec2<i32>(global0.x, var_0), firstTrailingBit(reverseBits(vec2<i32>(u_input.b, -43959i)))));
    return ~15049u;
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: f32, arg_3: vec2<bool>) -> vec2<i32> {
    let var_0 = -_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(u_input.b, ~(-2147483647i)), -(-75918i >> (1u % 32u)), arg_1.a.e.x, arg_1.a.c), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -1i, 67995i, -14197i), _wgslsmith_add_vec4_i32(arg_1.a.e, arg_1.c.e))));
    var var_1 = ~arg_1.b.yyw;
    let var_2 = ~var_0;
    var_1 = arg_1.b.xxz;
    global0 = _wgslsmith_sub_vec2_i32(vec2<i32>(58060i, var_2), -_wgslsmith_mod_vec2_i32(-arg_1.c.e.yz, select(vec2<i32>(4569i, -1i), arg_1.a.e.yx, vec2<bool>(arg_3.x, true))));
    return vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(~arg_1.c.c, -21035i), 85129i), max(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -58583i, 0i, -2147483647i), ~arg_1.c.e)), min(u_input.b, ~_wgslsmith_div_i32(12318i, 29044i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<i32>(-2147483647i, ~0i);
    var var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(39043i, global0.x, _wgslsmith_mult_i32(u_input.b, 0i), _wgslsmith_div_i32(global0.x, _wgslsmith_mult_i32(~global0.x, 0i))), vec4<i32>(~0i, ~(u_input.b << (0u % 32u)), -1i, -2147483647i));
    global0 = _wgslsmith_sub_vec2_i32(~(~func_4(func_1(vec3<bool>(true, false, true), u_input.a.x), Struct_3(Struct_2(Struct_1(u_input.a.x), 59461u, 15703i, Struct_1(0u), vec4<i32>(u_input.b, 2147483647i, global0.x, global0.x)), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x), Struct_2(Struct_1(52801u), u_input.a.x, var_0.x, Struct_1(35754u), vec4<i32>(23308i, global0.x, -81562i, u_input.b))), -161f, vec2<bool>(true, true))), var_0.yy);
    let var_1 = -817f;
    global0 = _wgslsmith_div_vec2_i32(vec2<i32>(4477i, var_0.x), ~select(var_0.zz, ~min(vec2<i32>(u_input.b, global0.x), vec2<i32>(47377i, 0i)), vec2<bool>(true, any(vec3<bool>(true, false, true)))));
    let var_2 = Struct_2(Struct_1(_wgslsmith_div_u32(~u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a.zz, _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 58672u), vec2<u32>(40937u, u_input.a.x))))), 9179u, 1i, Struct_1(~abs(firstLeadingBit(21344u))), ~_wgslsmith_mult_vec4_i32(-countOneBits(vec4<i32>(10952i, 0i, var_0.x, global0.x)), min(max(vec4<i32>(2147483647i, global0.x, global0.x, global0.x), vec4<i32>(var_0.x, u_input.b, 0i, u_input.b)), ~vec4<i32>(47390i, -1i, -38165i, global0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(func_1(select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false), vec3<bool>(true, true, false), false), 3012u), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_2.a.a, 0u), vec2<u32>(u_input.a.x, u_input.a.x)), u_input.a.zy), _wgslsmith_sub_u32(abs(var_2.a.a) >> ((u_input.a.x & var_2.b) % 32u), u_input.a.x)), u_input.a.x, ~func_1(select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false), true), ~u_input.a.x), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(~(~40904u), ~_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(29974u, u_input.a.x, 2583u)), ~(~u_input.a.x)), firstLeadingBit(1u)));
}

