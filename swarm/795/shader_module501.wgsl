struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: array<f32, 24> = array<f32, 24>(-828f, -1826f, 833f, 971f, 337f, -1078f, -1805f, 755f, -1000f, -878f, -324f, 1362f, 723f, 1000f, -267f, 1456f, 1092f, -1000f, 106f, 1000f, 705f, -510f, -338f, -845f);

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = !arg_0.b.zx;
    var var_1 = Struct_1(_wgslsmith_div_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(0u, 1u, arg_0.d.b.x), vec3<u32>(u_input.c, u_input.c, 68919u)), arg_0.c.a), reverseBits(vec2<u32>(1u, u_input.c << (1005u % 32u))));
    let var_2 = arg_0.d;
    let var_3 = arg_0;
    var_0 = var_3.b.zy;
    return ~((1u ^ _wgslsmith_add_u32(~12283u, u_input.c)) >> (var_1.b.x % 32u));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(vec3<u32>(15272u, _wgslsmith_add_u32(min(u_input.c << (1u % 32u), u_input.c | 1385u), firstLeadingBit(func_3(Struct_2(164f, vec3<bool>(global0.x, global0.x, true), Struct_1(vec3<u32>(u_input.c, 100031u, 33514u), vec2<u32>(u_input.c, 1u)), Struct_1(vec3<u32>(u_input.c, 4294967295u, u_input.c), vec2<u32>(u_input.c, 41332u)))))), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, ~1u, 1u), reverseBits(~vec3<u32>(5858u, u_input.c, 18744u)))), ~firstLeadingBit(reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.c), vec2<u32>(8497u, u_input.c)))));
    let var_1 = 4294967295u;
    var var_2 = vec2<i32>(_wgslsmith_add_i32(~33852i, max(~u_input.b ^ -9977i, u_input.b)), u_input.b);
    var var_3 = select(!select(select(select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x), vec2<bool>(false, global0.x)), vec2<bool>(global0.x, global0.x), !vec2<bool>(global0.x, false)), vec2<bool>(all(vec2<bool>(true, true)), true), vec2<bool>(!global0.x, true)), select(select(vec2<bool>(true, global0.x), !(!vec2<bool>(global0.x, false)), false), select(vec2<bool>(!global0.x, !global0.x), !select(vec2<bool>(true, false), vec2<bool>(global0.x, global0.x), true), !vec2<bool>(true, global0.x)), all(select(!vec4<bool>(true, global0.x, false, false), !vec4<bool>(false, false, global0.x, global0.x), any(vec2<bool>(false, global0.x))))), vec2<bool>(!((28621u | u_input.c) == ~70584u), u_input.a != _wgslsmith_mod_i32(-var_2.x, _wgslsmith_add_i32(60375i, -2147483647i))));
    var var_4 = _wgslsmith_dot_vec2_u32(vec2<u32>(abs(_wgslsmith_clamp_u32(31572u, ~1u, var_1 | var_0.a.x)), _wgslsmith_add_u32(var_0.b.x, _wgslsmith_dot_vec2_u32(var_0.a.zx, var_0.b)) & ~u_input.c), (var_0.b | var_0.a.yz) ^ _wgslsmith_mult_vec2_u32(~var_0.b, var_0.b));
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> vec3<i32> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a + _wgslsmith_f_op_f32(f32(-1f) * -741f))), vec3<bool>(global0.x, !global0.x, global0.x), Struct_1(select(~_wgslsmith_add_vec3_u32(vec3<u32>(arg_2.a.x, arg_1.b.x, 12609u), vec3<u32>(arg_3.d.a.x, 26688u, 21502u)), ~vec3<u32>(4294967295u, u_input.c, arg_2.b.x), arg_3.b), vec2<u32>(1u, _wgslsmith_mod_u32(0u, arg_0.a.x)) | vec2<u32>(arg_2.b.x ^ 0u, ~arg_2.b.x)), Struct_1(arg_0.a, select(~vec2<u32>(1u, arg_2.a.x), select(max(arg_3.c.b, vec2<u32>(arg_3.d.a.x, arg_2.a.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.b.x, arg_1.b.x), arg_1.a.yy), vec2<bool>(true, false)), arg_3.b.xz)));
    var_0 = Struct_2(-1055f, var_0.b, func_2(), func_2());
    var var_1 = false;
    var_1 = true;
    var_0 = arg_3;
    return select(vec3<i32>((1i & u_input.a) << (~arg_3.c.b.x % 32u), select(i32(-1i) * -16454i, 1i, global0.x && false), select(abs(4870i), ~u_input.b, var_0.b.x)) | select(vec3<i32>(-u_input.b, ~(-23374i), u_input.b), ~firstTrailingBit(vec3<i32>(-29688i, -2147483647i, 54083i)), true), vec3<i32>(-_wgslsmith_div_i32(countOneBits(-1i), _wgslsmith_sub_i32(u_input.b, -2147483647i)), _wgslsmith_div_i32(~_wgslsmith_mult_i32(-13323i, u_input.b), ~(~u_input.b)), _wgslsmith_div_i32(2147483647i, abs(u_input.a) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(38401i, u_input.a), vec2<i32>(-2147483647i, u_input.a)))), !(!arg_3.b));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_add_vec3_i32(-abs(vec3<i32>(-1i) * -vec3<i32>(u_input.b, -2235i, 2147483647i)), func_4(Struct_1(vec3<u32>(u_input.c, u_input.c, 26470u), vec2<u32>(u_input.c, u_input.c)), Struct_1(vec3<u32>(u_input.c, 4294967295u, u_input.c) >> (vec3<u32>(4294967295u, 20291u, u_input.c) % vec3<u32>(32u)), vec2<u32>(u_input.c, 1u)), Struct_1(vec3<u32>(u_input.c, u_input.c, u_input.c), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(0u, 0u))), Struct_2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(33592u, 24u)]), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, false, global0.x), vec3<bool>(false, true, global0.x)), func_2(), func_2())) & vec3<i32>(u_input.b, u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -2147483647i, 45917i), vec3<i32>(-1i, 7817i, u_input.b)) >> (~u_input.c % 32u)));
    global0 = vec2<bool>(true, !global0.x & (func_3(Struct_2(global1[_wgslsmith_index_u32(u_input.c, 24u)], vec3<bool>(global0.x, global0.x, global0.x), Struct_1(vec3<u32>(0u, 4294967295u, u_input.c), vec2<u32>(u_input.c, u_input.c)), Struct_1(vec3<u32>(1u, u_input.c, u_input.c), vec2<u32>(u_input.c, 4294967295u)))) < 22439u));
    var var_1 = vec4<u32>(~func_2().a.x, ~abs(_wgslsmith_div_u32(max(u_input.c, 0u), u_input.c)), select(min(_wgslsmith_sub_u32(abs(u_input.c), abs(u_input.c)), firstLeadingBit(1u ^ u_input.c)), select(abs(1u), 24943u, all(select(vec3<bool>(global0.x, false, true), vec3<bool>(true, false, false), false))), true & global0.x), reverseBits(_wgslsmith_add_u32(u_input.c, u_input.c >> (reverseBits(u_input.c) % 32u))));
    global1 = array<f32, 24>();
    let var_2 = func_2();
    return Struct_1(var_1.zzw, var_2.a.xx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-6344i, u_input.a, max(~(-6991i), ~u_input.a), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -2147483647i, u_input.a), vec3<i32>(-1i, u_input.a, u_input.a))), min(vec4<i32>(_wgslsmith_mult_i32(u_input.b, -1i), -u_input.b, u_input.a, u_input.a), vec4<i32>(-7771i, -u_input.a, _wgslsmith_div_i32(1i, -52686i), u_input.b))), vec4<i32>(-abs(u_input.b), ~24063i, ~u_input.a, _wgslsmith_add_i32(~6315i, select(29066i, u_input.a, global0.x)) ^ -2147483647i));
    let var_2 = _wgslsmith_dot_vec4_u32(~(vec4<u32>(var_0.b.x & 139u, max(1u, 0u), _wgslsmith_mult_u32(22459u, var_0.a.x), u_input.c) | ~max(vec4<u32>(var_0.a.x, var_0.a.x, 1u, 79392u), vec4<u32>(var_0.a.x, 0u, 0u, u_input.c))), ~vec4<u32>(_wgslsmith_mod_u32(4294967295u, u_input.c) | 41283u, abs(var_0.b.x << (u_input.c % 32u)), func_2().a.x, var_0.b.x));
    let var_3 = vec4<i32>(u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, u_input.a, min(-37784i, var_1.x)) >> (abs(vec3<u32>(28907u, var_0.b.x, var_0.b.x)) % vec3<u32>(32u)), vec3<i32>(u_input.a, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_1.x, -1i), var_1.zw), var_1.xy), _wgslsmith_mult_i32(-45060i, -9343i))), firstTrailingBit(func_4(Struct_1(vec3<u32>(4294967295u, var_0.a.x, u_input.c), vec2<u32>(var_2, var_2)), Struct_1(var_0.a, vec2<u32>(u_input.c, 0u)), Struct_1(vec3<u32>(u_input.c, var_2, 120316u), var_0.a.yx), Struct_2(-1664f, vec3<bool>(global0.x, global0.x, false), var_0, var_0)).x) | abs(~var_1.x), ~0i);
    global1 = array<f32, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(select(~firstLeadingBit(abs(var_0.a.x)), 0u, global0.x), 24u)], u_input.c);
}

