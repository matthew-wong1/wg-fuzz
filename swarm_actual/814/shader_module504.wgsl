struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 22>;

var<private> global1: array<Struct_1, 18>;

var<private> global2: array<bool, 21> = array<bool, 21>(false, true, false, true, false, false, true, false, true, false, true, true, false, false, false, true, true, false, true, false, true);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_1) -> i32 {
    var var_0 = _wgslsmith_mod_i32(1i, ~(-2147483647i));
    let var_1 = global1[_wgslsmith_index_u32(arg_0, 18u)];
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.c))), _wgslsmith_f_op_f32(select(-480f, -872f, !(!var_1.d))), -895f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-235f, 154f))))))));
    global0 = array<vec4<f32>, 22>();
    global2 = array<bool, 21>();
    return -38845i;
}

fn func_2(arg_0: f32) -> vec3<u32> {
    global0 = array<vec4<f32>, 22>();
    global0 = array<vec4<f32>, 22>();
    let var_0 = vec3<i32>(~62720i, ~(-(~func_3(u_input.a.x, global0[_wgslsmith_index_u32(18221u, 22u)], global1[_wgslsmith_index_u32(60072u, 18u)]))), ~1i);
    let var_1 = global1[_wgslsmith_index_u32(~(99489u << (1u % 32u)), 18u)];
    global1 = array<Struct_1, 18>();
    return ~(~(countOneBits(_wgslsmith_clamp_vec3_u32(u_input.a.yxy, vec3<u32>(var_1.b.x, var_1.b.x, var_1.b.x), var_1.b)) & vec3<u32>(u_input.a.x, _wgslsmith_div_u32(8975u, 1u), countOneBits(u_input.a.x))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<u32>) -> vec3<u32> {
    var var_0 = global1[_wgslsmith_index_u32(arg_0.x, 18u)];
    var var_1 = Struct_1(var_0.a, firstTrailingBit(~(vec3<u32>(1u, 0u, 40790u) << (arg_0 % vec3<u32>(32u))) >> (~vec3<u32>(0u, u_input.a.x, 43794u) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-var_0.c), var_0.a.x == (_wgslsmith_div_i32(var_0.a.x, -var_0.a.x) << (24617u % 32u)));
    var var_2 = Struct_1(-vec2<i32>(-(var_0.a.x & -57141i), _wgslsmith_mult_i32(countOneBits(1i), ~(-1i))), arg_0, 1077f, var_1.d);
    var var_3 = Struct_1(_wgslsmith_mult_vec2_i32(firstLeadingBit(var_1.a), -(~var_1.a)), _wgslsmith_mult_vec3_u32(vec3<u32>(43631u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(1u, arg_1.x), _wgslsmith_dot_vec3_u32(var_2.b, arg_1)), 47657u), vec3<u32>(arg_0.x, var_1.b.x, abs(var_2.b.x)) | arg_0), 1000f, var_0.d);
    global2 = array<bool, 21>();
    return var_1.b >> (max(arg_1, var_3.b << ((_wgslsmith_mod_vec3_u32(vec3<u32>(var_3.b.x, var_1.b.x, 1u), vec3<u32>(4601u, var_0.b.x, 1u)) >> (select(vec3<u32>(22274u, 4294967295u, 0u), var_1.b, var_3.d) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u));
}

fn func_1(arg_0: Struct_1) -> bool {
    var var_0 = Struct_1(arg_0.a, ~func_4(_wgslsmith_sub_vec3_u32(func_2(1002f), arg_0.b), firstTrailingBit(vec3<u32>(50030u, arg_0.b.x, u_input.a.x))), _wgslsmith_f_op_f32(-1769f + arg_0.c), global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(u_input.a, countOneBits(vec4<u32>(arg_0.b.x, arg_0.b.x, 1u, 0u))), 21u)]);
    var var_1 = global1[_wgslsmith_index_u32(16405u, 18u)];
    var var_2 = vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(abs(min(vec3<i32>(arg_0.a.x, 0i, 65664i), vec3<i32>(arg_0.a.x, 2147483647i, var_0.a.x))), _wgslsmith_mod_vec3_i32(~vec3<i32>(21964i, 30098i, 11563i), reverseBits(vec3<i32>(var_0.a.x, var_1.a.x, arg_0.a.x)))), -1i), firstTrailingBit(var_0.a.x), ~abs(var_1.a.x), firstLeadingBit(_wgslsmith_mult_i32(min(-16773i, var_1.a.x), _wgslsmith_add_i32(abs(arg_0.a.x), var_0.a.x))));
    var var_3 = ~(~_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.a.x, arg_0.a.x, var_2.x, 30103i), vec4<i32>(arg_0.a.x, 0i, var_2.x, 17445i)), vec4<i32>(5746i, var_2.x, arg_0.a.x, var_1.a.x) ^ vec4<i32>(8567i, 33930i, var_2.x, -1i))) >> (vec4<u32>((~78065u & u_input.a.x) >> (~_wgslsmith_mult_u32(62718u, 1u) % 32u), ~var_1.b.x, ~var_1.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(21630u, 8984u), u_input.a.x, abs(var_1.b.x)), vec3<u32>(47035u, u_input.a.x, 47705u) | u_input.a.xzx)) % vec4<u32>(32u));
    var_1 = Struct_1(vec2<i32>(-(~_wgslsmith_mult_i32(var_2.x, var_2.x)), 2147483647i << (arg_0.b.x % 32u)), var_0.b, var_0.c, true);
    return _wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u >> ((var_0.b.x << (10548u % 32u)) % 32u), abs(8457u)), ~vec2<u32>(abs(4294967295u), ~arg_0.b.x)) >= 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), 18u)];
    var var_1 = Struct_1(_wgslsmith_div_vec2_i32(~vec2<i32>(_wgslsmith_sub_i32(var_0.a.x, -1i), -2147483647i), abs(vec2<i32>(-2147483647i, var_0.a.x) << (~var_0.b.xy % vec2<u32>(32u)))), var_0.b, var_0.c, func_1(Struct_1(_wgslsmith_clamp_vec2_i32(~vec2<i32>(-15607i, var_0.a.x), countOneBits(vec2<i32>(var_0.a.x, var_0.a.x)), var_0.a), _wgslsmith_add_vec3_u32(u_input.a.yzx << (vec3<u32>(38875u, u_input.a.x, 0u) % vec3<u32>(32u)), vec3<u32>(var_0.b.x, u_input.a.x, 27023u) & u_input.a.yzz), 779f, any(vec2<bool>(global2[_wgslsmith_index_u32(var_0.b.x, 21u)], global2[_wgslsmith_index_u32(1u, 21u)])))));
    var var_2 = ~1u;
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -145f), var_1.c, var_1.c);
    global2 = array<bool, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(select(abs(u_input.a), vec4<u32>(1u << (var_0.b.x % 32u), u_input.a.x, var_1.b.x, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(var_1.b.x, u_input.a.x, var_0.b.x), var_1.b.x)), _wgslsmith_div_u32(abs(32829u), abs(u_input.a.x)) == 33896u), _wgslsmith_f_op_f32(f32(-1f) * -574f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x * 169f) * var_3.x)))));
}

