struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_3, arg_3: vec3<bool>) -> vec4<u32> {
    var var_0 = Struct_2(~global0[_wgslsmith_index_u32(4294967295u, 8u)], vec4<u32>(0u, max(firstLeadingBit(~57317u), ~global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(14614u, 8u)], 8u)]), _wgslsmith_div_u32(0u, global0[_wgslsmith_index_u32(~(1u << (arg_2.a.x % 32u)), 8u)]), arg_2.a.x));
    let var_1 = Struct_3(~_wgslsmith_mult_vec3_u32(min(vec3<u32>(global0[_wgslsmith_index_u32(1u, 8u)], 19291u, 0u) << (vec3<u32>(73691u, arg_2.a.x, global0[_wgslsmith_index_u32(13601u, 8u)]) % vec3<u32>(32u)), vec3<u32>(var_0.a, arg_2.a.x, global0[_wgslsmith_index_u32(var_0.b.x, 8u)])), var_0.b.wwx));
    return _wgslsmith_clamp_vec4_u32(~select(firstLeadingBit(var_0.b), ~firstTrailingBit(var_0.b), select(!vec4<bool>(arg_3.x, false, true, arg_3.x), vec4<bool>(true, true, true, true), any(vec4<bool>(arg_3.x, arg_3.x, arg_3.x, true)))), ~_wgslsmith_sub_vec4_u32(~_wgslsmith_mod_vec4_u32(var_0.b, var_0.b), _wgslsmith_add_vec4_u32(~vec4<u32>(1u, arg_2.a.x, global0[_wgslsmith_index_u32(14887u, 8u)], 1u), _wgslsmith_add_vec4_u32(var_0.b, var_0.b))), ~var_0.b);
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: vec3<i32>, arg_3: vec2<bool>) -> Struct_3 {
    var var_0 = true;
    let var_1 = Struct_1(arg_2.xx, _wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(79283u, 8u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 0u) | func_3(_wgslsmith_div_f32(arg_1.x, arg_1.x), _wgslsmith_f_op_f32(-arg_1.x), Struct_3(vec3<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 8u)], 8u)], 4294967295u)), vec3<bool>(true, true, arg_3.x)), select(~vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 8u)], 4294967295u, global0[_wgslsmith_index_u32(5623u, 8u)]) >> (min(vec4<u32>(0u, global0[_wgslsmith_index_u32(4294967295u, 8u)], 1u, global0[_wgslsmith_index_u32(4294967295u, 8u)]), vec4<u32>(31451u, 0u, 63185u, 46664u)) % vec4<u32>(32u)), (vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20946u, 8u)], 8u)], 24712u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 8u)], 8u)], 8u)], 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)]) ^ vec4<u32>(0u, 1u, global0[_wgslsmith_index_u32(25272u, 8u)], 0u)) >> (select(vec4<u32>(4294967295u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 8u)], 8u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(25504u, 8u)], 8u)], 8u)], 8u)]), vec4<u32>(30206u, 4294967295u, 34265u, global0[_wgslsmith_index_u32(4294967295u, 8u)]), vec4<bool>(false, arg_3.x, true, true)) % vec4<u32>(32u)), select(select(vec4<bool>(false, arg_3.x, arg_3.x, arg_3.x), vec4<bool>(arg_3.x, true, arg_3.x, arg_3.x), arg_3.x), !vec4<bool>(arg_3.x, arg_3.x, arg_3.x, true), vec4<bool>(true, false, true, arg_3.x)))));
    var var_2 = Struct_3(countOneBits(var_1.b.zxz) >> (~var_1.b.xyz % vec3<u32>(32u)));
    let var_3 = Struct_2(103704u >> (global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_2.a.x, var_2.a.x), 8u)] % 32u), _wgslsmith_add_vec4_u32(~(~vec4<u32>(global0[_wgslsmith_index_u32(47272u, 8u)], 1u, var_1.b.x, 4294967295u)), vec4<u32>((global0[_wgslsmith_index_u32(0u, 8u)] & 23841u) & var_1.b.x, _wgslsmith_div_u32(firstLeadingBit(0u), abs(4294967295u)), _wgslsmith_sub_u32(var_2.a.x, 4294967295u | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_2.a.x, 8u)], 8u)]), max(~var_1.b.x, reverseBits(var_2.a.x)))));
    let var_4 = -_wgslsmith_add_i32(-(49801i | arg_2.x), _wgslsmith_div_i32(_wgslsmith_mod_i32(var_1.a.x << (4294967295u % 32u), -arg_0), -11450i | arg_2.x));
    return Struct_3(select(_wgslsmith_sub_vec3_u32(var_3.b.xwx, var_1.b.xzw), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_3.a, var_2.a.x, var_3.a), ~var_2.a, vec3<u32>(var_3.b.x, 55287u, var_2.a.x)), select(vec3<bool>(select(false, false, true), any(vec3<bool>(false, arg_3.x, arg_3.x)), arg_3.x), !select(vec3<bool>(true, arg_3.x, false), vec3<bool>(false, false, true), false), true)));
}

fn func_4(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_3) -> vec3<bool> {
    global0 = array<u32, 8>();
    let var_0 = _wgslsmith_dot_vec3_i32(min(vec3<i32>(~abs(u_input.a), ~firstTrailingBit(-1i), select(-59092i, abs(1i), false)), vec3<i32>(~2147483647i, max(~u_input.a, u_input.a), reverseBits(u_input.a) ^ (u_input.a >> (global0[_wgslsmith_index_u32(0u, 8u)] % 32u)))), select((vec3<i32>(-1i) * -vec3<i32>(-34155i, -2147483647i, 1i)) << (~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1, 8u)], 8u)], arg_2.a.x, arg_1) % vec3<u32>(32u)), vec3<i32>(i32(-1i) * -12158i, abs(-66091i), _wgslsmith_mod_i32(-u_input.a, -u_input.a)), vec3<bool>(all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false))), any(vec4<bool>(true, true, false, false)), _wgslsmith_mod_i32(u_input.a, -31350i) < _wgslsmith_div_i32(u_input.a, -18417i))));
    var var_1 = ~_wgslsmith_mult_vec2_u32(arg_2.a.xz, vec2<u32>(_wgslsmith_mult_u32(arg_2.a.x << (arg_2.a.x % 32u), _wgslsmith_mult_u32(1u, 4294967295u)), ~arg_1));
    let var_2 = var_1.x;
    var var_3 = ~(-(~(~u_input.a << ((var_1.x | arg_1) % 32u))));
    return vec3<bool>(true, !(_wgslsmith_f_op_f32(arg_0.x - 465f) < _wgslsmith_f_op_f32(-641f - 352f)) | false, all(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), false))) || true);
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec4<i32>) -> vec2<u32> {
    var var_0 = select(vec3<bool>(true, true, true), !vec3<bool>(true, false, any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)))), select(!(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false)), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1778f, -414f, -1000f, 1003f)))), ~4294967295u, func_2(i32(-1i) * -2147483647i, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-300f, -213f))), vec3<i32>(1i, 2147483647i, arg_1), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)))), true));
    var_0 = select(!vec3<bool>(var_0.x, select(var_0.x, var_0.x, true) & false, 4294967295u > (4294967295u | arg_0)), select(!vec3<bool>(false, all(vec3<bool>(false, var_0.x, var_0.x)), var_0.x == var_0.x), func_4(_wgslsmith_div_vec4_f32(vec4<f32>(-655f, -285f, -1267f, -241f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1353f, -122f, 1000f, 842f)))), arg_0, func_2(~arg_2.x, _wgslsmith_div_vec2_f32(vec2<f32>(422f, -669f), vec2<f32>(-1000f, -357f)), ~vec3<i32>(arg_1, 0i, arg_1), func_4(vec4<f32>(-1729f, -960f, 606f, -1092f), 1u, Struct_3(vec3<u32>(arg_0, global0[_wgslsmith_index_u32(4294967295u, 8u)], arg_0))).yy)), vec3<bool>(true, true, true)), select(vec3<bool>(func_4(vec4<f32>(611f, -960f, -173f, 857f), min(global0[_wgslsmith_index_u32(arg_0, 8u)], 4294967295u), Struct_3(vec3<u32>(arg_0, global0[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(arg_0, 8u)]))).x, true, false), select(!(!vec3<bool>(var_0.x, true, var_0.x)), vec3<bool>(true, true, true), var_0.x), !var_0.x));
    let var_1 = max(arg_2, arg_2 >> (func_3(1f, _wgslsmith_div_f32(824f, -587f), func_2(-19656i, vec2<f32>(-1159f, -626f), vec3<i32>(arg_1, -14729i, 0i), var_0.zz), func_4(vec4<f32>(-233f, 1222f, -983f, -1110f), 1u, Struct_3(vec3<u32>(23505u, 1u, 0u)))) % vec4<u32>(32u))) ^ abs(select(-_wgslsmith_add_vec4_i32(vec4<i32>(38884i, u_input.a, u_input.a, arg_2.x), arg_2), vec4<i32>(_wgslsmith_dot_vec3_i32(arg_2.wyz, arg_2.xyw), -2147483647i, arg_1 ^ arg_2.x, countOneBits(-2147483647i)), !(!vec4<bool>(true, var_0.x, var_0.x, var_0.x))));
    let var_2 = Struct_2(0u << ((_wgslsmith_sub_u32(~arg_0, arg_0) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 36136u, arg_0, 1u), vec4<u32>(arg_0, 4294967295u, global0[_wgslsmith_index_u32(525u, 8u)], arg_0) >> (vec4<u32>(0u, arg_0, 26954u, arg_0) % vec4<u32>(32u)))) % 32u), ~_wgslsmith_div_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 8u)], global0[_wgslsmith_index_u32(39068u, 8u)], arg_0), vec4<u32>(arg_0, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9690u, 8u)], 8u)], 8u)], 18005u, arg_0)), vec4<u32>(58493u, 5219u, max(22086u, 3153u), ~16902u)));
    let var_3 = arg_1;
    return var_2.b.ww;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 8>();
    global0 = array<u32, 8>();
    let var_0 = _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(~(~4294967295u), global0[_wgslsmith_index_u32(~1u, 8u)]), ~(~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(43544u, 8u)], 8u)], 8u)], 8u)], global0[_wgslsmith_index_u32(0u, 8u)])) & ~_wgslsmith_mod_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 8u)], 148358u), vec2<u32>(4294967295u, 4294967295u))), vec2<u32>(global0[_wgslsmith_index_u32(firstTrailingBit(16366u), 8u)] & 31849u, abs(24137u)), func_1(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(0u), _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12724u, 8u)], 8u)], 8u)], 8u)], 8u)], 1u), vec2<u32>(global0[_wgslsmith_index_u32(1u, 8u)], 0u)), 58501u), _wgslsmith_add_vec3_u32(vec3<u32>(5461u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(97141u, 8u)], 8u)], 8u)], 101241u), vec3<u32>(1u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 8u)], 8u)]))), 8u)], i32(-1i) * -2498i, vec4<i32>(-(u_input.a ^ u_input.a), u_input.a, ~_wgslsmith_div_i32(u_input.a, 20727i), 23621i)));
    let var_1 = true;
    global0 = array<u32, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(-487f)), ~vec3<u32>(13136u, 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, global0[_wgslsmith_index_u32(0u, 8u)]), _wgslsmith_add_vec2_u32(var_0, vec2<u32>(var_0.x, var_0.x)))), u_input.a);
}

