struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: i32,
    d: bool,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: f32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<i32>(-26130i, 37280i, 467i));

var<private> global1: array<vec4<i32>, 1>;

var<private> global2: u32;

var<private> global3: array<bool, 7>;

var<private> global4: array<f32, 16> = array<f32, 16>(1129f, 107f, -736f, -784f, 758f, 346f, -1000f, 902f, 530f, 1197f, -535f, -111f, -572f, -1189f, -284f, 588f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: f32) -> u32 {
    let var_0 = Struct_3(reverseBits(~(-vec3<i32>(2147483647i, -32435i, global0.a.x)) & vec3<i32>(-2147483647i, -28020i, u_input.a)));
    global3 = array<bool, 7>();
    var var_1 = ~1u;
    var var_2 = Struct_1(~(~(~select(vec3<u32>(36046u, 0u, 0u), vec3<u32>(57914u, 5472u, 13484u), vec3<bool>(global3[_wgslsmith_index_u32(24863u, 7u)], global3[_wgslsmith_index_u32(42473u, 7u)], true)))), vec3<bool>(_wgslsmith_mod_i32(global0.a.x, 0i) > (u_input.a >> (~0u % 32u)), !arg_0, true), var_0.a.x, all(select(select(vec4<bool>(global3[_wgslsmith_index_u32(0u, 7u)], false, global3[_wgslsmith_index_u32(58699u, 7u)], arg_0), !vec4<bool>(global3[_wgslsmith_index_u32(0u, 7u)], arg_0, false, global3[_wgslsmith_index_u32(4275u, 7u)]), false), vec4<bool>(any(vec3<bool>(arg_0, false, global3[_wgslsmith_index_u32(13664u, 7u)])), global3[_wgslsmith_index_u32(4294967295u, 7u)], true, true), any(vec2<bool>(false, global3[_wgslsmith_index_u32(33664u, 7u)])) || arg_0)), firstLeadingBit(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(max(vec2<u32>(21341u, 1u), vec2<u32>(1u, 9619u)), firstTrailingBit(vec2<u32>(1u, 0u))), _wgslsmith_mult_vec2_u32(~vec2<u32>(0u, 1u), vec2<u32>(1u, 1u)))));
    let var_3 = Struct_3(vec3<i32>(countOneBits(abs(0i)), _wgslsmith_div_i32(var_2.c, i32(-1i) * -2147483647i), _wgslsmith_mod_i32(_wgslsmith_mod_i32(var_0.a.x ^ -2147483647i, _wgslsmith_clamp_i32(2147483647i, var_0.a.x, 38922i)), firstLeadingBit(global0.a.x))));
    return _wgslsmith_div_u32(var_2.a.x, var_2.a.x);
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<f32>) -> vec3<bool> {
    var var_0 = Struct_2(Struct_1(arg_0 << (select(arg_0, ~arg_0, arg_1.x <= arg_1.x) % vec3<u32>(32u)), !(!(!vec3<bool>(true, false, global3[_wgslsmith_index_u32(53807u, 7u)]))), i32(-1i) * -(global0.a.x << (arg_0.x % 32u)), true != global3[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0.x, ~arg_0.x), 7u)], arg_0.yx & arg_0.xz), vec4<u32>(arg_0.x, func_3(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(620f, global4[_wgslsmith_index_u32(arg_0.x, 16u)])))), 0u, ~_wgslsmith_clamp_u32(_wgslsmith_add_u32(arg_0.x, arg_0.x), 36705u, 50926u >> (arg_0.x % 32u))), _wgslsmith_f_op_f32(f32(-1f) * -2871f));
    let var_1 = _wgslsmith_div_vec4_u32(countOneBits(select(abs(vec4<u32>(arg_0.x, 0u, 18515u, var_0.a.a.x)), _wgslsmith_clamp_vec4_u32(var_0.b, vec4<u32>(arg_0.x, arg_0.x, 80660u, arg_0.x), vec4<u32>(65027u, var_0.a.a.x, 72236u, 0u)), var_0.a.b.x)) >> (countOneBits(select(select(var_0.b, vec4<u32>(var_0.a.a.x, var_0.a.a.x, var_0.b.x, 4294967295u), vec4<bool>(false, global3[_wgslsmith_index_u32(var_0.b.x, 7u)], false, var_0.a.b.x)), min(var_0.b, var_0.b), var_0.a.b.x)) % vec4<u32>(32u)), min(countOneBits(vec4<u32>(1291u, var_0.b.x, ~var_0.b.x, 0u)), var_0.b));
    var var_2 = _wgslsmith_f_op_f32(floor(1000f));
    var var_3 = global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(min(~(~var_0.b.x), var_0.b.x), 21916u), 16u)];
    let var_4 = !var_0.a.b.xy;
    return var_0.a.b;
}

fn func_1() -> Struct_2 {
    global4 = array<f32, 16>();
    global0 = Struct_3(firstLeadingBit(vec3<i32>(u_input.b, abs(i32(-1i) * -62579i), ~15623i)));
    global1 = array<vec4<i32>, 1>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1901f - global4[_wgslsmith_index_u32(1u, 16u)])), _wgslsmith_f_op_f32(floor(global4[_wgslsmith_index_u32(1u, 16u)])), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(~1u, 16u)] * _wgslsmith_f_op_f32(f32(-1f) * -812f)), global4[_wgslsmith_index_u32(max(select(53395u, 0u, global3[_wgslsmith_index_u32(0u, 7u)]), _wgslsmith_clamp_u32(1u, 4294967295u, 2622u)), 16u)]) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(1448u, 16u)], global4[_wgslsmith_index_u32(23330u, 16u)], global4[_wgslsmith_index_u32(4294967295u, 16u)], global4[_wgslsmith_index_u32(4294967295u, 16u)]), vec4<f32>(global4[_wgslsmith_index_u32(32196u, 16u)], -1161f, global4[_wgslsmith_index_u32(0u, 16u)], global4[_wgslsmith_index_u32(1u, 16u)])) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-372f, -1000f, -1292f, 742f)))))));
    var var_1 = Struct_1(~vec3<u32>(1u, 1u, 1u), select(!select(!vec3<bool>(global3[_wgslsmith_index_u32(36133u, 7u)], global3[_wgslsmith_index_u32(40516u, 7u)], true), vec3<bool>(global3[_wgslsmith_index_u32(26724u, 7u)], global3[_wgslsmith_index_u32(0u, 7u)], true), !vec3<bool>(false, false, global3[_wgslsmith_index_u32(42530u, 7u)])), select(vec3<bool>(true, true, !global3[_wgslsmith_index_u32(1988u, 7u)]), select(func_2(vec3<u32>(4294967295u, 4294967295u, 1u), vec2<f32>(var_0.x, -716f)), !vec3<bool>(true, global3[_wgslsmith_index_u32(1u, 7u)], global3[_wgslsmith_index_u32(695u, 7u)]), select(vec3<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 7u)], global3[_wgslsmith_index_u32(0u, 7u)]), vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 7u)], true, true), vec3<bool>(false, false, global3[_wgslsmith_index_u32(1u, 7u)]))), any(select(vec2<bool>(true, true), vec2<bool>(global3[_wgslsmith_index_u32(1u, 7u)], false), true))), func_2(vec3<u32>(64924u, _wgslsmith_mult_u32(0u, 156u), 58014u), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(var_0.zz, vec2<f32>(-1108f, -841f)))))).x), -2147483647i | -global0.a.x, !(countOneBits(global0.a.x) < u_input.b), ~vec2<u32>(~(~0u), ~select(4294967295u, 53986u, global3[_wgslsmith_index_u32(4294967295u, 7u)])));
    return Struct_2(Struct_1(var_1.a, !select(func_2(vec3<u32>(var_1.e.x, 82696u, 0u), vec2<f32>(global4[_wgslsmith_index_u32(var_1.e.x, 16u)], global4[_wgslsmith_index_u32(51409u, 16u)])), select(vec3<bool>(false, true, global3[_wgslsmith_index_u32(0u, 7u)]), vec3<bool>(var_1.b.x, global3[_wgslsmith_index_u32(0u, 7u)], false), vec3<bool>(global3[_wgslsmith_index_u32(var_1.a.x, 7u)], true, true)), select(var_1.b, vec3<bool>(global3[_wgslsmith_index_u32(var_1.a.x, 7u)], global3[_wgslsmith_index_u32(var_1.a.x, 7u)], true), vec3<bool>(var_1.d, global3[_wgslsmith_index_u32(4294967295u, 7u)], var_1.b.x))), var_1.c, !all(func_2(vec3<u32>(var_1.a.x, var_1.a.x, var_1.a.x), vec2<f32>(430f, -304f))), vec2<u32>(var_1.a.x, 1u)), abs(_wgslsmith_mult_vec4_u32(select(vec4<u32>(45893u, 0u, 18426u, var_1.a.x), vec4<u32>(var_1.a.x, 6926u, var_1.e.x, 22705u), all(vec3<bool>(global3[_wgslsmith_index_u32(0u, 7u)], false, false))), abs(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_1.e.x, 1u, var_1.e.x), vec4<u32>(var_1.a.x, var_1.a.x, 60812u, 4294967295u))))), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(~(~(~var_1.a.x)), 16u)]));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = !(false || (_wgslsmith_f_op_f32(select(-336f, _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(4294967295u, 16u)] * -370f), true)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-185f, -488f)))));
    var var_2 = 544f;
    var var_3 = func_1().a;
    var var_4 = Struct_3(reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(30597i, 5998i, -23568i) >> (var_3.a % vec3<u32>(32u)), firstTrailingBit(reverseBits(vec3<i32>(2147483647i, var_0.a.c, 0i))))));
    var_0 = Struct_2(func_1().a, vec4<u32>(_wgslsmith_sub_u32(~1u, _wgslsmith_dot_vec2_u32(~var_3.e, firstTrailingBit(vec2<u32>(var_0.a.a.x, 48427u)))), 8232u, _wgslsmith_add_u32(~0u, var_0.b.x), var_0.b.x), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(34936u, 16u)]));
    global3 = array<bool, 7>();
    global4 = array<f32, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.x, ~4294967295u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-600f + -1114f), 1466f, _wgslsmith_f_op_f32(f32(-1f) * -495f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(var_3.e.x, 16u)], -492f, -1362f) * vec3<f32>(var_0.c, 682f, -776f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, var_0.c, -744f) + vec3<f32>(1645f, global4[_wgslsmith_index_u32(1u, 16u)], var_0.c))), all(vec3<bool>(true, true, var_0.a.b.x)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, global4[_wgslsmith_index_u32(76695u, 16u)], _wgslsmith_f_op_f32(-var_0.c)))));
}

