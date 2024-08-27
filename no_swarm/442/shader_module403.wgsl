struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 26> = array<vec3<u32>, 26>(vec3<u32>(1u, 102607u, 6227u), vec3<u32>(1u, 29715u, 17122u), vec3<u32>(21864u, 0u, 3745u), vec3<u32>(23670u, 4294967295u, 27948u), vec3<u32>(0u, 0u, 4222u), vec3<u32>(0u, 18340u, 21231u), vec3<u32>(12413u, 31577u, 4294967295u), vec3<u32>(23976u, 0u, 16404u), vec3<u32>(0u, 0u, 0u), vec3<u32>(50032u, 6853u, 1u), vec3<u32>(82661u, 4294967295u, 4294967295u), vec3<u32>(100583u, 32989u, 88208u), vec3<u32>(22188u, 8716u, 10410u), vec3<u32>(75690u, 0u, 1u), vec3<u32>(89873u, 5427u, 0u), vec3<u32>(54930u, 1u, 29423u), vec3<u32>(56693u, 0u, 4294967295u), vec3<u32>(44657u, 30746u, 68103u), vec3<u32>(73069u, 31110u, 9784u), vec3<u32>(2489u, 15532u, 1u), vec3<u32>(14401u, 0u, 4869u), vec3<u32>(28654u, 4294967295u, 1u), vec3<u32>(44852u, 48036u, 4294967295u), vec3<u32>(12444u, 1u, 11678u), vec3<u32>(33802u, 1u, 22647u), vec3<u32>(89943u, 4294967295u, 18219u));

var<private> global1: array<Struct_1, 24>;

var<private> global2: vec3<u32> = vec3<u32>(1u, 1u, 40520u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = select(max(21700u, arg_0.c.a), _wgslsmith_div_u32(~(~(~arg_0.c.b)), min(arg_0.c.b, _wgslsmith_mod_u32(~global2.x, 4294967295u))), arg_0.b);
    global0 = array<vec3<u32>, 26>();
    var var_1 = _wgslsmith_add_i32(select(~_wgslsmith_sub_i32(countOneBits(1i), u_input.c.x), -2147483647i, any(vec2<bool>(true, arg_0.b)) & arg_0.b), 1i);
    var var_2 = false;
    var var_3 = Struct_2(-u_input.c.ywy, _wgslsmith_clamp_i32(u_input.a.x, arg_0.c.d.x, -1i | reverseBits(arg_0.a.x)) < _wgslsmith_dot_vec3_i32(u_input.c.zzx, arg_0.c.d ^ select(arg_0.c.d, vec3<i32>(arg_0.a.x, arg_0.c.e.x, arg_0.c.d.x), false)), Struct_1(reverseBits(_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(107766u, 26u)], ~vec3<u32>(arg_0.c.a, 17057u, global2.x))), 20599u, vec3<f32>(_wgslsmith_div_f32(156f, arg_0.c.c.x), 307f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(arg_0.c.c.x)), _wgslsmith_f_op_f32(round(arg_0.c.c.x))))), u_input.c.yxy, u_input.c.xz));
    return 4294967295u;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: f32) -> i32 {
    var var_0 = Struct_2(max((_wgslsmith_mod_vec3_i32(u_input.c.ywx, vec3<i32>(arg_0.e.x, arg_0.e.x, arg_0.e.x)) >> (_wgslsmith_mult_vec3_u32(global0[_wgslsmith_index_u32(arg_1.x, 26u)], vec3<u32>(1u, global2.x, 25007u)) % vec3<u32>(32u))) & vec3<i32>(_wgslsmith_sub_i32(1i, arg_0.e.x), _wgslsmith_add_i32(u_input.b.x, -2147483647i), _wgslsmith_mod_i32(arg_0.e.x, -1i)), arg_0.d), true, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global2.xz, firstTrailingBit(~arg_1.yy)), 24u)]);
    var var_1 = ~reverseBits(_wgslsmith_sub_vec2_u32(arg_1.zz, _wgslsmith_sub_vec2_u32(global2.yx, _wgslsmith_div_vec2_u32(vec2<u32>(1u, 0u), global2.yz))));
    let var_2 = 4294967295u;
    var var_3 = global1[_wgslsmith_index_u32(arg_1.x, 24u)];
    var_1 = ~vec2<u32>(func_3(Struct_2(abs(arg_0.d), true, Struct_1(1u, var_2, vec3<f32>(-836f, -1567f, 211f), vec3<i32>(var_0.c.e.x, 2444i, -2147483647i), vec2<i32>(2147483647i, var_0.a.x)))), var_3.a);
    return firstLeadingBit(~_wgslsmith_dot_vec4_i32(-(vec4<i32>(1i, 2147483647i, var_3.e.x, -2147483647i) << (vec4<u32>(99005u, 11974u, 39668u, arg_0.b) % vec4<u32>(32u))), select(-vec4<i32>(var_0.a.x, u_input.c.x, -1i, u_input.a.x), ~vec4<i32>(14774i, var_0.c.e.x, u_input.d, arg_0.e.x), var_0.b)));
}

fn func_1(arg_0: vec4<bool>) -> StorageBuffer {
    global1 = array<Struct_1, 24>();
    var var_0 = arg_0.x;
    global1 = array<Struct_1, 24>();
    global1 = array<Struct_1, 24>();
    global2 = ~global0[_wgslsmith_index_u32(global2.x, 26u)];
    return StorageBuffer(vec2<i32>(abs(func_2(global1[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(global2.x, 26u)], 584f) | -12035i), ~_wgslsmith_sub_i32(_wgslsmith_div_i32(1626i, u_input.a.x), func_2(global1[_wgslsmith_index_u32(global2.x, 24u)], vec3<u32>(global2.x, 20327u, 4294967295u), 815f))), -2147483647i, max(vec3<u32>(global2.x, global2.x << (49227u % 32u), ~global2.x) & vec3<u32>(global2.x, ~global2.x, 0u), vec3<u32>(1u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global2.x, 90760u, global2.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(8713u, global2.x, 0u, global2.x), vec4<u32>(global2.x, global2.x, global2.x, global2.x), vec4<u32>(global2.x, global2.x, 19267u, 4294967295u))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(!vec4<bool>(true, !(u_input.d >= u_input.a.x), false, true));
}

