struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-35267i, -41458i);

var<private> global1: u32;

var<private> global2: Struct_1 = Struct_1(vec2<bool>(false, false));

var<private> global3: array<i32, 16> = array<i32, 16>(15020i, -56486i, 16022i, -17929i, -5377i, 0i, -1i, i32(-2147483648), -11636i, -22815i, -1i, -65460i, -6870i, i32(-2147483648), -8895i, -1i);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32) -> vec2<i32> {
    let var_0 = reverseBits(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(-2147483647i, -42193i, 0i, global0.x), -vec4<i32>(u_input.b.x, global3[_wgslsmith_index_u32(arg_0, 16u)], global3[_wgslsmith_index_u32(arg_0, 16u)], 11929i), select(vec4<bool>(global2.a.x, global2.a.x, global2.a.x, global2.a.x), vec4<bool>(true, false, true, global2.a.x), global2.a.x)), vec4<i32>(countOneBits(10682i), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, global3[_wgslsmith_index_u32(67837u, 16u)], u_input.a.x, -2147483647i), vec4<i32>(u_input.b.x, -2147483647i, global0.x, 2147483647i)), 1i, _wgslsmith_sub_i32(-2147483647i, global0.x)), -abs(vec4<i32>(1i, u_input.a.x, global0.x, u_input.b.x)))) | -max(vec4<i32>(_wgslsmith_mult_i32(35839i, -22239i), 0i, -45117i, countOneBits(global0.x)), vec4<i32>(global0.x, global0.x, global0.x, ~2147483647i));
    let var_1 = firstTrailingBit(vec2<u32>(arg_0 >> (4294967295u % 32u), select(_wgslsmith_dot_vec4_u32(~vec4<u32>(1853u, arg_0, 4294967295u, arg_0), vec4<u32>(arg_0, 1u, arg_0, 1u) | vec4<u32>(687u, 48914u, arg_0, 10860u)), arg_0, all(global2.a))));
    let var_2 = !vec2<bool>(select(false, true || global2.a.x, !(!global2.a.x)), true);
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(267f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1605f - 178f))) * -891f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 1471f) - _wgslsmith_f_op_f32(abs(980f))))))));
    return ~var_0.xw;
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    global3 = array<i32, 16>();
    let var_0 = ~(~0u);
    global1 = countOneBits(1u);
    var var_1 = max(func_3(~1u), u_input.b);
    global1 = _wgslsmith_clamp_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(~11981u, ~arg_0), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(35751u, arg_0), vec2<u32>(arg_0, var_0)), _wgslsmith_div_u32(var_0, 8798u))), arg_0, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_0, 4294967295u, var_0, 4294967295u), ~vec4<u32>(var_0, var_0, var_0, var_0)), (vec4<u32>(78482u, 58453u, 13959u, var_0) ^ vec4<u32>(55758u, arg_0, 2454u, 18978u)) & vec4<u32>(arg_0, var_0, 16176u, 36707u)) & 6247u);
    return Struct_1(vec2<bool>(!all(vec4<bool>(false, arg_3.a.x, arg_3.a.x, false)), _wgslsmith_div_f32(356f, _wgslsmith_f_op_f32(-543f + 1385f)) < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1236f)))));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(vec2<bool>(false, true));
    var var_1 = 45862u;
    let var_2 = _wgslsmith_mod_u32(4294967295u, ~1u);
    global0 = vec2<i32>(u_input.b.x, -2147483647i);
    let var_3 = var_0;
    return func_2(_wgslsmith_dot_vec3_u32(vec3<u32>(~countOneBits(var_2), 4294967295u, _wgslsmith_mod_u32(abs(var_2), var_2)), min(vec3<u32>(_wgslsmith_mult_u32(var_2, 78921u), abs(var_2), ~4294967295u), vec3<u32>(31849u, 5180u & var_2, ~107325u))), i32(-1i) * -62849i, global3[_wgslsmith_index_u32(1u, 16u)], Struct_1(vec2<bool>(var_3.a.x, true)));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> vec4<i32> {
    global0 = arg_0.xy;
    global0 = vec2<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(-40948i, _wgslsmith_mult_i32(-2147483647i, u_input.a.x)), _wgslsmith_mult_vec2_i32(~vec2<i32>(0i, u_input.a.x), -arg_0.zx)), firstTrailingBit(global0.x));
    global1 = _wgslsmith_add_u32(_wgslsmith_sub_u32(~23966u, ~28009u), reverseBits(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(1u, 12242u, 0u)), ~vec3<u32>(1u, 1u, 1u))));
    return countOneBits(vec4<i32>(~(~1i << (firstTrailingBit(27363u) % 32u)), abs(countOneBits(2147483647i)), _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.b.x, ~1i), ~global3[_wgslsmith_index_u32(~4294967295u, 16u)]), ~(~_wgslsmith_div_i32(u_input.b.x, global0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<i32>(global0.x, -15956i);
    var var_0 = ~((~vec4<i32>(global3[_wgslsmith_index_u32(28555u, 16u)], 7323i, 2147483647i, u_input.b.x) >> (vec4<u32>(~30765u, min(0u, 4296u), _wgslsmith_mult_u32(0u, 93412u), 1u) % vec4<u32>(32u))) & (vec4<i32>(i32(-1i) * -2147483647i, -30307i | global3[_wgslsmith_index_u32(18864u, 16u)], global3[_wgslsmith_index_u32(~28961u, 16u)], u_input.b.x >> (72984u % 32u)) >> (vec4<u32>(1u, 1u, ~6957u, 1u) % vec4<u32>(32u))));
    var_0 = abs(reverseBits(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(global3[_wgslsmith_index_u32(0u, 16u)], global0.x, global3[_wgslsmith_index_u32(13710u, 16u)], var_0.x), ~vec4<i32>(global3[_wgslsmith_index_u32(117542u, 16u)], 0i, u_input.a.x, 0i)), func_4(var_0.zzw, func_1()))));
    var var_1 = 623f;
    var var_2 = var_0.x;
    global1 = _wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(1u, 1u, 1u) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), 1u), ~abs(~1u));
    let var_3 = Struct_1(!global2.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(876f, 625f, -581f)), vec3<f32>(-1371f, 1257f, -1803f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-986f, -1316f, 290f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-659f, 176f, 1441f))), !vec3<bool>(var_3.a.x, var_3.a.x, var_3.a.x)))), select(!var_3.a.x, !all(vec2<bool>(var_3.a.x, true)), global2.a.x))), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(~1u, ~firstLeadingBit(28562u), _wgslsmith_clamp_u32(4294967295u, ~0u, 1u), ~(1u << (1u % 32u)))), -_wgslsmith_div_vec3_i32(-vec3<i32>(-16170i, u_input.a.x, -1i), ~abs(var_0.yzx)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 501f) + vec2<f32>(483f, 644f)))))), -16959i);
}

