struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: vec4<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_2,
    c: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec4<f32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: vec3<i32> = vec3<i32>(-1497i, i32(-2147483648), i32(-2147483648));

var<private> global2: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(vec4<u32>(0u, 1u, 1u, 1u), -867f), Struct_2(vec4<u32>(40640u, 1u, 35738u, 4294967295u), -666f), Struct_2(vec4<u32>(38006u, 4294967295u, 89998u, 58251u), 1206f), Struct_2(vec4<u32>(0u, 1u, 3274u, 0u), 2107f), Struct_2(vec4<u32>(1u, 35323u, 0u, 0u), -365f), Struct_2(vec4<u32>(4294967295u, 0u, 0u, 40153u), 694f), Struct_2(vec4<u32>(0u, 4294967295u, 54808u, 13504u), 333f), Struct_2(vec4<u32>(8576u, 0u, 20135u, 64609u), -520f), Struct_2(vec4<u32>(0u, 65206u, 4294967295u, 12429u), -963f), Struct_2(vec4<u32>(0u, 0u, 0u, 61136u), 1122f), Struct_2(vec4<u32>(1u, 0u, 29993u, 28398u), 544f), Struct_2(vec4<u32>(30115u, 9418u, 0u, 18826u), 1206f), Struct_2(vec4<u32>(0u, 4294967295u, 4294967295u, 19524u), -1433f), Struct_2(vec4<u32>(46963u, 4294967295u, 22053u, 0u), 279f), Struct_2(vec4<u32>(0u, 0u, 1u, 112642u), -1278f), Struct_2(vec4<u32>(15430u, 0u, 68287u, 1u), 677f), Struct_2(vec4<u32>(4294967295u, 50412u, 14741u, 137997u), 261f), Struct_2(vec4<u32>(58825u, 0u, 0u, 1u), -615f), Struct_2(vec4<u32>(1u, 79075u, 53888u, 88765u), -323f), Struct_2(vec4<u32>(42183u, 25937u, 37888u, 50840u), 133f), Struct_2(vec4<u32>(0u, 0u, 0u, 689u), 543f), Struct_2(vec4<u32>(1500u, 27226u, 30729u, 18664u), -1023f));

var<private> global3: vec2<i32> = vec2<i32>(1i, 30720i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_4, arg_1: u32) -> bool {
    global0 = _wgslsmith_dot_vec3_u32(arg_0.b.a.yyy, vec3<u32>(firstLeadingBit(~4294967295u), _wgslsmith_mod_u32(firstTrailingBit(arg_1), select(arg_1, u_input.c, false)), ~(~4294967295u)) << (arg_0.a.zzw % vec3<u32>(32u)));
    global0 = _wgslsmith_add_u32(21243u | arg_0.c, ~(~(~17995u << (arg_0.a.x % 32u))));
    let var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~(_wgslsmith_mult_u32(u_input.c, 4294967295u) << (1u % 32u)), ~(~min(arg_1, arg_1))), arg_0.b.a.zzw);
    global3 = global1.zz;
    return 0i > firstLeadingBit(firstTrailingBit(max(global3.x, -29787i)) ^ ((global1.x << (var_0 % 32u)) & reverseBits(global3.x)));
}

fn func_2() -> Struct_3 {
    global2 = array<Struct_2, 22>();
    global0 = 35293u;
    let var_0 = !vec4<bool>(func_3(Struct_4(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 7834u, 0u, 39699u), vec4<u32>(1u, 78338u, u_input.c, 9508u)), 22u)], _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c, 13820u, 15924u), vec4<u32>(u_input.c, u_input.c, 4294967295u, 13234u))), u_input.c), select(false, false, any(vec3<bool>(false, false, false))) && !(u_input.c >= 13843u), !(u_input.c > ~1u), false);
    let var_1 = Struct_4(_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(~8610u, ~u_input.c, u_input.c, 4294967295u)), vec4<u32>(~countOneBits(0u), ~(~4294967295u), ~1u, u_input.c), vec4<u32>(4294967295u, u_input.c, 1u, ~1u)), global2[_wgslsmith_index_u32(u_input.c >> (71451u % 32u), 22u)], u_input.c);
    var var_2 = u_input.c;
    return Struct_3(Struct_1(~(-firstLeadingBit(vec4<i32>(u_input.a, global1.x, -4992i, -12682i))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.b.b), var_1.b.b, var_1.b.b))), false, !(max(-26372i, global1.x) >= ~(~u_input.b.x)), -_wgslsmith_sub_vec4_i32(vec4<i32>(global1.x | 15295i, _wgslsmith_mult_i32(global3.x, -22902i), u_input.b.x, 1i), vec4<i32>(-7013i, abs(u_input.b.x), 33247i, ~(-1i))));
}

fn func_1(arg_0: bool, arg_1: Struct_4) -> Struct_1 {
    var var_0 = 384f;
    var var_1 = func_2();
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.b.b))));
    global0 = _wgslsmith_sub_u32(52313u, 1u) ^ ~u_input.c;
    let var_2 = -(_wgslsmith_sub_vec4_i32(firstTrailingBit(~var_1.d), var_1.a.a) >> (~reverseBits(vec4<u32>(u_input.c, u_input.c, u_input.c, 0u)) % vec4<u32>(32u)));
    return var_1.a;
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = vec4<bool>(true, !(!any(vec2<bool>(false, true))), any(vec3<bool>(any(vec4<bool>(true, true, false, false)), func_2().b, (u_input.c << (arg_0 % 32u)) != u_input.c)), -214f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(func_2().a.b.x)) + _wgslsmith_div_f32(_wgslsmith_div_f32(-531f, 523f), arg_1.b.x)));
    global3 = reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(6815i, _wgslsmith_add_i32(-31899i, -1i)) >> (select(vec2<u32>(arg_0, u_input.c) | vec2<u32>(0u, arg_0), vec2<u32>(0u, arg_0), any(var_0.zw)) % vec2<u32>(32u)), min(vec2<i32>(_wgslsmith_mult_i32(26211i, global3.x), ~(-1i)), ~func_2().a.a.xy)));
    let var_1 = func_2().a.b.x;
    var var_2 = global2[_wgslsmith_index_u32(reverseBits(73205u), 22u)];
    let var_3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(599f, -202f, -228f, var_2.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-813f, var_1, -955f, 1704f) - vec4<f32>(var_1, -167f, 527f, 1300f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1182f, 559f, 2852f, arg_1.b.x) * vec4<f32>(1189f, var_1, var_2.b, -366f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(681f, var_2.b, var_1, arg_1.b.x) - vec4<f32>(687f, arg_1.b.x, -620f, arg_1.b.x)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1, 1418f, arg_1.b.x, arg_1.b.x), vec4<f32>(arg_1.b.x, var_1, -801f, var_1), var_0)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.b.x, 1346f, -130f, 267f))))), select(var_0, vec4<bool>(true, select(false, var_0.x, false), var_0.x, any(var_0)), abs(0i) <= firstTrailingBit(u_input.d))))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(u_input.c << (u_input.c % 32u), func_1(true, Struct_4(~vec4<u32>(0u, u_input.c, 1u, 0u), global2[_wgslsmith_index_u32(144179u, 22u)], ~u_input.c ^ _wgslsmith_mult_u32(u_input.c, u_input.c))));
    let var_1 = ~_wgslsmith_add_i32(max(_wgslsmith_mult_i32(-19994i, ~1i), global3.x), select(~_wgslsmith_dot_vec2_i32(global1.zx, vec2<i32>(global3.x, -26333i)), func_4(firstTrailingBit(10096u), Struct_1(vec4<i32>(-2147483647i, -38019i, global1.x, -15793i), vec3<f32>(var_0.b.x, 751f, 1615f))).a.x, false));
    global3 = var_0.a.zy;
    var var_2 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.c & (0u | u_input.c), u_input.c), min(abs(firstLeadingBit(64677u)), ~(firstLeadingBit(u_input.c) << (76198u % 32u))));
    let var_3 = ~_wgslsmith_mod_vec3_u32(min(~vec3<u32>(4294967295u, 1u, u_input.c), ~vec3<u32>(u_input.c, u_input.c, 0u)), ~(~vec3<u32>(u_input.c, u_input.c, u_input.c))) ^ ~vec3<u32>(u_input.c, u_input.c, u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-var_0.b), -vec4<i32>(-24550i, var_1, _wgslsmith_clamp_i32(global1.x, var_1, _wgslsmith_div_i32(34434i, var_0.a.x)), _wgslsmith_sub_i32(select(29511i, var_1, false), 0i)));
}

