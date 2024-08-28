struct Struct_1 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: Struct_1,
    d: vec3<f32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24>;

var<private> global1: Struct_2 = Struct_2(false, vec3<u32>(1u, 66488u, 2751u), Struct_1(vec3<i32>(2147483647i, 7312i, 30673i), true), vec3<f32>(-583f, 782f, 2816f), vec3<u32>(46279u, 4294967295u, 4294967295u));

var<private> global2: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec3<i32>(-68860i, 29045i, -24288i), true), Struct_1(vec3<i32>(0i, -5725i, 0i), true), Struct_1(vec3<i32>(i32(-2147483648), 0i, 41433i), false), Struct_1(vec3<i32>(-1i, 16027i, -24859i), true), Struct_1(vec3<i32>(7559i, 0i, -30084i), true), Struct_1(vec3<i32>(i32(-2147483648), 0i, i32(-2147483648)), false), Struct_1(vec3<i32>(0i, -55568i, -29271i), true), Struct_1(vec3<i32>(0i, -66199i, 2147483647i), true), Struct_1(vec3<i32>(2147483647i, 36616i, -1i), false), Struct_1(vec3<i32>(-19638i, -19367i, 1i), false), Struct_1(vec3<i32>(-52i, 29108i, 2147483647i), false), Struct_1(vec3<i32>(-34555i, 51361i, 0i), true), Struct_1(vec3<i32>(8934i, i32(-2147483648), -57123i), true), Struct_1(vec3<i32>(-1i, -2838i, -20002i), true), Struct_1(vec3<i32>(0i, 1i, 1i), true), Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), -6643i), true));

var<private> global3: f32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> bool {
    let var_0 = !arg_1.b;
    global0 = array<i32, 24>();
    var var_1 = countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(2903i, (-39777i ^ global0[_wgslsmith_index_u32(global1.e.x, 24u)]) ^ 4468i, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(42376i, 18925i, 1i), vec3<i32>(arg_1.a.x, global0[_wgslsmith_index_u32(6241u, 24u)], -12003i)), 19465i)), arg_1.a));
    let var_2 = abs(~abs(arg_1.a.x >> (1u % 32u)) >> (global1.e.x % 32u));
    let var_3 = max(_wgslsmith_sub_i32(2147483647i, countOneBits(_wgslsmith_dot_vec3_i32(global1.c.a, vec3<i32>(global1.c.a.x, arg_0.x, 16756i)))) & 15508i, firstLeadingBit(-_wgslsmith_mod_i32(arg_0.x ^ -2147483647i, var_1.x)));
    return min(abs(_wgslsmith_div_i32(-2147483647i << (u_input.a % 32u), 1i >> (1u % 32u))), _wgslsmith_add_i32(2147483647i, _wgslsmith_dot_vec3_i32(countOneBits(arg_0.xzw), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, 40704i, -33415i), arg_0.xxw)))) > ~0i;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_2 {
    var var_0 = Struct_2(!(arg_0 == func_3(min(vec4<i32>(-2147483647i, 67869i, arg_1.a.x, global0[_wgslsmith_index_u32(93467u, 24u)]), vec4<i32>(2147483647i, 2147483647i, global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(global1.e.x, 24u)])), global1.c)), global1.e, Struct_1(-arg_1.a, true), _wgslsmith_f_op_vec3_f32(sign(global1.d)), ~(~vec3<u32>(u_input.a, global1.e.x, 0u)));
    let var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(global1.e.zx, firstTrailingBit(vec2<u32>(19385u, 53872u))), vec2<u32>(u_input.a, 782u)), var_0.e.zx);
    var var_2 = global1.d.x;
    var var_3 = vec3<bool>(true, arg_1.b, arg_2.x);
    let var_4 = arg_2;
    return Struct_2((1u > countOneBits(~u_input.a)) != !all(var_4), max(reverseBits(var_0.e & firstTrailingBit(global1.b)), reverseBits(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, var_0.b.x, var_1), vec3<u32>(28294u, var_1, 21607u)), var_0.e))), Struct_1(global1.c.a, !(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1, global1.e.x, 367u, 15681u), vec4<u32>(u_input.a, var_1, var_0.b.x, u_input.a)) >= var_1)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global1.d, _wgslsmith_div_vec3_f32(var_0.d, vec3<f32>(973f, var_0.d.x, global1.d.x)), vec3<bool>(true, true, true))) + vec3<f32>(global1.d.x, _wgslsmith_f_op_f32(-657f + global1.d.x), -157f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.d.x, global1.d.x, -489f))))))), firstLeadingBit(_wgslsmith_clamp_vec3_u32(global1.e, ~(~global1.e), max(select(vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(0u, var_1, var_0.b.x), var_0.a), abs(vec3<u32>(0u, u_input.a, 0u))))));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: vec3<f32>) -> vec3<i32> {
    global1 = Struct_2(843f < _wgslsmith_f_op_f32(-arg_0), ~((abs(arg_1.b) >> (~global1.e % vec3<u32>(32u))) >> (vec3<u32>(_wgslsmith_mult_u32(24436u, arg_1.e.x), abs(1u), global1.b.x) % vec3<u32>(32u))), global2[_wgslsmith_index_u32(73088u, 16u)], _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-257f, -1294f, global1.c.b | false)), 1000f, _wgslsmith_f_op_f32(960f * arg_0)), _wgslsmith_f_op_vec3_f32(-global1.d)), vec3<u32>(_wgslsmith_clamp_u32(~firstTrailingBit(42531u), arg_1.b.x, u_input.a), 1u | func_2(arg_1.a, Struct_1(vec3<i32>(26498i, global0[_wgslsmith_index_u32(u_input.a, 24u)], -41884i), true), select(vec3<bool>(true, true, global1.a), vec3<bool>(true, true, global1.c.b), true)).b.x, arg_1.b.x));
    var var_0 = _wgslsmith_f_op_f32(step(global1.d.x, -887f));
    let var_1 = !(func_3(vec4<i32>(arg_1.c.a.x >> (4294967295u % 32u), -8634i, arg_1.c.a.x, -1i), global1.c) && !all(vec2<bool>(true, true)));
    let var_2 = vec3<bool>(true, _wgslsmith_dot_vec2_i32(~global1.c.a.xx, firstTrailingBit(vec2<i32>(19949i, 1i))) < global0[_wgslsmith_index_u32(u_input.a, 24u)], any(!vec2<bool>(arg_1.a, global1.a)) || (-global0[_wgslsmith_index_u32(0u, 24u)] < select(global0[_wgslsmith_index_u32(1u ^ arg_1.b.x, 24u)], global1.c.a.x, !global1.a)));
    var var_3 = -global1.c.a.x;
    return -global1.c.a;
}

fn func_1(arg_0: vec4<u32>, arg_1: i32) -> vec4<f32> {
    var var_0 = Struct_1(global1.c.a, global1.c.b);
    var var_1 = Struct_1(vec3<i32>(select(arg_1 << (arg_0.x % 32u), -40285i, global1.c.b), global1.c.a.x, abs(_wgslsmith_clamp_i32(-21744i, -1i, _wgslsmith_mult_i32(-15923i, global1.c.a.x)))), !(var_0.b && (false & global1.a)));
    var_0 = Struct_1(~func_4(251f, func_2(arg_0.x != arg_0.x, Struct_1(global1.c.a, true), !vec3<bool>(var_0.b, var_0.b, false)), vec3<f32>(-168f, _wgslsmith_f_op_f32(f32(-1f) * -727f), _wgslsmith_f_op_f32(trunc(-1209f)))), select(all(select(vec4<bool>(var_0.b, global1.c.b, true, true), select(vec4<bool>(var_1.b, true, var_0.b, false), vec4<bool>(var_0.b, var_1.b, false, var_0.b), vec4<bool>(true, false, true, false)), !global1.c.b)), true, select(true && var_1.b, true, false)));
    var var_2 = Struct_2(global1.c.b, vec3<u32>(arg_0.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(max(vec2<u32>(67963u, 1u), vec2<u32>(4294967295u, global1.b.x)), _wgslsmith_sub_vec2_u32(arg_0.wx, vec2<u32>(arg_0.x, 17184u))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), global1.b.yx), 1u, 0u)), 4294967295u), global2[_wgslsmith_index_u32(global1.b.x, 16u)], _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-global1.d.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(global1.d.x, -1828f)))), -433f))), _wgslsmith_sub_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(51189u, u_input.a, global1.e.x), vec3<u32>(u_input.a, arg_0.x, global1.e.x)) & select(vec3<u32>(u_input.a, 12127u, 0u), vec3<u32>(4294967295u, global1.b.x, global1.b.x) ^ global1.e, var_0.b), _wgslsmith_mod_vec3_u32(~(~vec3<u32>(arg_0.x, 1u, u_input.a)), arg_0.zxw)));
    global0 = array<i32, 24>();
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d.x + global1.d.x)), _wgslsmith_div_f32(486f, global1.d.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.d.x, global1.d.x) * _wgslsmith_f_op_f32(-global1.d.x)), 1142f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2173f, var_2.d.x, global1.d.x, global1.d.x)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-610f, var_2.d.x, global1.d.x, var_2.d.x)))))), vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -2129f), global1.d.x, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(ceil(var_2.d.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(global1.d.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1725f)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(vec4<u32>(u_input.a, 22665u, 44691u, 4294967295u), -30031i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d.x, -896f, 232f, 1303f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -1649f, var_0, var_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d.x, global1.d.x, global1.d.x, -327f)))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -155f) * _wgslsmith_f_op_f32(292f * global1.d.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1310f, 498f, false)), var_0), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.d.x, -605f)), -943f)) + vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec4_f32(func_1(vec4<u32>(global1.b.x, global1.b.x, 1u, global1.e.x), 0i)).x, global1.d.x)))), func_2(firstTrailingBit(-1i) >= ~(-1i), func_2(any(vec4<bool>(global1.a, global1.a, global1.c.b, global1.c.b)), func_2(global1.c.b, global2[_wgslsmith_index_u32(u_input.a, 16u)], vec3<bool>(true, true, global1.c.b)).c, !vec3<bool>(true, global1.a, global1.c.b)).c, vec3<bool>(true == global1.c.b, false, true)).d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.x)), var_0));
    let var_2 = -1000f;
    var var_3 = Struct_2(global1.a, global1.e, func_2(global1.a, Struct_1(~global1.c.a, !any(vec4<bool>(global1.c.b, global1.a, false, false))), select(vec3<bool>(global1.c.b, global1.c.b || global1.c.b, global1.c.a.x == global1.c.a.x), vec3<bool>(true, any(vec3<bool>(false, false, global1.c.b)), 2175i > global0[_wgslsmith_index_u32(69179u, 24u)]), vec3<bool>(global1.c.b, all(vec4<bool>(true, global1.c.b, false, global1.a)), any(vec3<bool>(global1.c.b, false, false))))).c, global1.d, ~global1.e);
    let var_4 = var_3.c;
    var var_5 = countOneBits(abs(func_2(any(select(vec3<bool>(global1.a, global1.c.b, true), vec3<bool>(var_3.c.b, true, true), vec3<bool>(global1.c.b, true, var_4.b))), Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(16641i, global1.c.a.x, 3396i), vec3<i32>(31554i, 1i, var_4.a.x)), any(vec2<bool>(true, var_4.b))), vec3<bool>(var_1.x >= -2590f, true, true)).c.a.yy));
    var var_6 = func_2(false, Struct_1(vec3<i32>(i32(-1i) * -global1.c.a.x, -21062i, var_5.x), true), vec3<bool>(var_4.b, all(vec4<bool>(global1.c.b, !var_3.c.b, !global1.a, func_2(false, var_3.c, vec3<bool>(true, true, global1.a)).a)), global1.a));
    var var_7 = Struct_2(select(true, false, global1.c.b), ~vec3<u32>(1u, firstTrailingBit(var_3.b.x), 0u), global1.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(global1.d.x)), _wgslsmith_f_op_f32(var_1.x + var_1.x), var_6.d.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_6.d))), ~global1.e);
    let var_8 = Struct_1(firstLeadingBit(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, global0[_wgslsmith_index_u32(global1.e.x, 24u)], var_7.c.a.x), vec3<i32>(var_6.c.a.x, var_4.a.x, global1.c.a.x)), ~_wgslsmith_div_vec3_i32(var_6.c.a, vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], 2147483647i, var_6.c.a.x)))), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(~vec4<i32>(var_5.x, 23203i, _wgslsmith_clamp_i32(var_4.a.x, var_5.x, 1i), var_5.x ^ var_7.c.a.x), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(0i, var_4.a.x), -53938i | var_8.a.x), -2147483647i, 2147483647i, max(-2147483647i, ~var_7.c.a.x))), 33684i, (var_4.a.x | _wgslsmith_add_i32(var_7.c.a.x, _wgslsmith_sub_i32(var_6.c.a.x, -15588i))) | _wgslsmith_add_i32(global0[_wgslsmith_index_u32(global1.e.x << (4294967295u % 32u), 24u)], 1i));
}

