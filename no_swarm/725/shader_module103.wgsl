struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec3<i32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: bool,
    d: vec2<u32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16> = array<u32, 16>(0u, 18251u, 1u, 76263u, 1u, 39658u, 13452u, 15503u, 18449u, 22277u, 1u, 53674u, 1u, 14159u, 31815u, 16221u);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>) -> f32 {
    global0 = array<u32, 16>();
    global0 = array<u32, 16>();
    global0 = array<u32, 16>();
    var var_0 = Struct_1(~(-u_input.b.x), 47153u ^ ~u_input.a.x);
    global0 = array<u32, 16>();
    return 870f;
}

fn func_2() -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(func_3(vec4<bool>(false, false, true, false))), -884f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(829f, -996f)) + vec2<f32>(-531f, -680f))))), vec2<bool>(true, true)));
    var var_1 = reverseBits(_wgslsmith_div_vec3_u32(~u_input.e.xwx, ~firstLeadingBit(u_input.a.yzz) | _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.d, vec3<u32>(u_input.c, 35155u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], 16u)], 16u)])), vec3<u32>(11275u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e.x, 16u)], 16u)], u_input.a.x))));
    var var_2 = vec2<bool>(true, all(vec4<bool>(true, true, true, true)));
    let var_3 = _wgslsmith_div_f32(198f, _wgslsmith_f_op_f32(f32(-1f) * -725f));
    let var_4 = 2147483647i;
    return vec3<f32>(var_3, _wgslsmith_f_op_f32(1270f * var_0.x), _wgslsmith_f_op_f32(func_3(vec4<bool>(select(true, global0[_wgslsmith_index_u32(1u, 16u)] <= 0u, var_2.x), !any(vec3<bool>(var_2.x, false, false)), ~4294967295u >= _wgslsmith_div_u32(35948u, var_1.x), var_3 > -1167f))));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: vec3<bool>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1003f, arg_1, arg_1) - vec3<f32>(arg_1, arg_1, arg_1))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_2()), _wgslsmith_f_op_vec3_f32(vec3<f32>(-304f, arg_1, 1323f) + vec3<f32>(160f, -1352f, arg_1))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -1000f, arg_1) + vec3<f32>(arg_1, 459f, arg_1)) + vec3<f32>(arg_1, arg_1, 638f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1, -1630f, 555f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -356f, arg_1))))));
    let var_1 = Struct_1(_wgslsmith_dot_vec4_i32(~(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0, arg_0, 16703i, arg_0), vec4<i32>(-2147483647i, -69173i, 28892i, u_input.b.x)) & (vec4<i32>(-39211i, -3287i, 16713i, arg_0) | vec4<i32>(u_input.b.x, -7491i, -2147483647i, arg_0))), vec4<i32>(_wgslsmith_dot_vec2_i32(abs(u_input.b.yx), u_input.b.xy), select(-1i, _wgslsmith_dot_vec3_i32(u_input.b, u_input.b), arg_2.x), 1i, u_input.b.x)), firstLeadingBit(_wgslsmith_clamp_u32(64078u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e.x, 16u)], 16u)], select(abs(global0[_wgslsmith_index_u32(1u, 16u)]), 37435u & global0[_wgslsmith_index_u32(0u, 16u)], all(arg_2.yx)))));
    var var_2 = vec3<u32>(4294967295u, ~(~reverseBits(1u)), global0[_wgslsmith_index_u32(firstTrailingBit(abs(~(u_input.d.x | 24565u))), 16u)]);
    var var_3 = 1887f;
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec2_i32(-(~(-vec2<i32>(-26599i, u_input.b.x))), _wgslsmith_mod_vec2_i32(u_input.b.yx >> (vec2<u32>(global0[_wgslsmith_index_u32(21852u, 16u)], u_input.a.x) % vec2<u32>(32u)), u_input.b.zy) & reverseBits(vec2<i32>(-2147483647i, 5770i))) ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(~(-2147483647i), _wgslsmith_div_i32(-1i, u_input.b.x)) << (_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.c, u_input.e.x), u_input.d.xy) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.b.yz, -u_input.b.xz), -vec2<i32>(u_input.b.x, 21924i) | firstLeadingBit(u_input.b.yx)), u_input.b.yz);
    var var_1 = ~(firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(7896u, 16u)], 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 16u)], 16u)]), vec3<u32>(u_input.e.x, 13865u, u_input.d.x))) >> (~(~min(u_input.e.zzz, u_input.a.yzx)) % vec3<u32>(32u)));
    var_1 = ~(~vec3<u32>(~_wgslsmith_mult_u32(0u, 1u), ~min(23699u, u_input.e.x), func_1(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 3252i, -22652i, var_0.x), vec4<i32>(21665i, -75262i, u_input.b.x, u_input.b.x)), _wgslsmith_f_op_f32(min(-1000f, -302f)), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)))));
    var var_2 = abs(~(select(~u_input.b, u_input.b, true) ^ max(u_input.b << (u_input.a.zxw % vec3<u32>(32u)), -u_input.b)));
    let var_3 = max(8267u, ~global0[_wgslsmith_index_u32(~var_1.x, 16u)]);
    var var_4 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-2741f, 1018f, -220f, -1875f))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1032f, 451f, -879f, -1036f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1990f, -817f, 369f, -1374f) - vec4<f32>(366f, 1364f, -939f, 2328f)), vec4<bool>(false, true, false, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-429f, -1900f, 1000f, 242f)))))))));
    var_2 = u_input.b;
    var var_5 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-389f, _wgslsmith_f_op_f32(500f * -542f)))));
}

