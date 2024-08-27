struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: f32,
}

struct Struct_3 {
    a: i32,
    b: bool,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_2,
    c: vec2<f32>,
    d: vec4<f32>,
}

struct Struct_5 {
    a: u32,
    b: vec2<i32>,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<f32, 24>;

var<private> global2: array<vec3<u32>, 13> = array<vec3<u32>, 13>(vec3<u32>(50406u, 1u, 15210u), vec3<u32>(57590u, 1u, 24014u), vec3<u32>(1767u, 109445u, 0u), vec3<u32>(40043u, 37372u, 7168u), vec3<u32>(14380u, 42179u, 65770u), vec3<u32>(0u, 18672u, 23395u), vec3<u32>(8599u, 4294967295u, 40690u), vec3<u32>(61112u, 0u, 61601u), vec3<u32>(1u, 31653u, 1u), vec3<u32>(1u, 1134u, 4294967295u), vec3<u32>(4228u, 1u, 25690u), vec3<u32>(11952u, 1489u, 10905u), vec3<u32>(39449u, 4294967295u, 43437u));

var<private> global3: array<vec3<u32>, 21> = array<vec3<u32>, 21>(vec3<u32>(4294967295u, 19825u, 13816u), vec3<u32>(4294967295u, 38846u, 52926u), vec3<u32>(13937u, 49075u, 61600u), vec3<u32>(4294967295u, 0u, 7034u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(31656u, 4294967295u, 26371u), vec3<u32>(30355u, 4294967295u, 26714u), vec3<u32>(4294967295u, 10211u, 31136u), vec3<u32>(0u, 1u, 3843u), vec3<u32>(83494u, 1u, 33802u), vec3<u32>(5312u, 0u, 1u), vec3<u32>(0u, 51314u, 1u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(4294967295u, 13159u, 4294967295u), vec3<u32>(1960u, 1u, 7665u), vec3<u32>(1u, 21815u, 76102u), vec3<u32>(4294967295u, 63343u, 48465u));

var<private> global4: Struct_2;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_3) -> vec4<i32> {
    global3 = array<vec3<u32>, 21>();
    var var_0 = Struct_5(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(global4.a, 1u), global0.a), ~(~u_input.a.x), 0u), ~max(~vec4<u32>(1u, 4294967295u, 4294967295u, u_input.a.x), vec4<u32>(global0.a, global4.a, global4.a, u_input.a.x))), vec2<i32>(~_wgslsmith_mod_i32(global4.b.x, _wgslsmith_mult_i32(global0.b.x, 0i)), -firstTrailingBit(_wgslsmith_div_i32(global0.b.x, global0.b.x))), Struct_4(vec3<bool>(false & (global0.a <= global0.a), _wgslsmith_f_op_f32(max(global4.c, -1000f)) != global1[_wgslsmith_index_u32(global0.a, 24u)], false), Struct_2(select(global4.a, _wgslsmith_add_u32(global4.a, 41473u), arg_0.x), global0.b, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(26353u, 24u)], -587f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.c, -398f) * vec2<f32>(-790f, global0.c)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1295f, 282f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, -743f, 1959f, global4.c)))))));
    var_0 = Struct_5(25516u, firstLeadingBit(abs(vec2<i32>(-1i) * -vec2<i32>(-29772i, 17835i))), var_0.c);
    var var_1 = _wgslsmith_f_op_vec4_f32(-var_0.c.d);
    let var_2 = ~1u > reverseBits(_wgslsmith_sub_u32(~global4.a, 0u));
    return reverseBits(~_wgslsmith_mod_vec4_i32(max(var_0.c.b.b, vec4<i32>(1i, -14147i, -68i, 30865i)), vec4<i32>(global0.b.x, global0.b.x, var_0.c.b.b.x, 18621i) & vec4<i32>(0i, -1647i, 66509i, 1i)) ^ min(global0.b, vec4<i32>(_wgslsmith_sub_i32(-2147483647i, arg_1.a), 8715i, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.b.x, 1i, arg_1.a, global0.b.x), var_0.c.b.b), ~1i)));
}

fn func_2() -> vec3<bool> {
    var var_0 = true;
    let var_1 = Struct_2(22984u, select(func_3(vec2<bool>(true, true), Struct_3(~29321i, true)), global4.b, select(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 24u)] <= global0.c, all(vec4<bool>(false, true, true, false)), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false)), vec4<bool>(false, true, true, true)), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2664f * global1[_wgslsmith_index_u32(19504u, 24u)]))))));
    var var_2 = vec3<u32>(max(12828u, 1u), global0.a, var_1.a);
    let var_3 = var_1;
    var var_4 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.c, -1458f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global4.c, -198f))))))));
    return select(!select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), true), vec3<bool>(false, true, var_3.b.x == global0.b.x), (-1i >> (var_2.x % 32u)) < max(10777i, var_1.b.x)), select(!vec3<bool>(any(vec3<bool>(false, true, true)), true, true), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true))), true), true);
}

fn func_1() -> vec3<bool> {
    var var_0 = Struct_1(!select(vec3<bool>(true, true, true), func_2(), false));
    var var_1 = vec4<i32>(countOneBits(_wgslsmith_dot_vec2_i32(~_wgslsmith_mult_vec2_i32(vec2<i32>(-33217i, 2147483647i), vec2<i32>(-1i, global0.b.x)), vec2<i32>(abs(-2147483647i), _wgslsmith_mult_i32(global0.b.x, -2147483647i)))), countOneBits(40104i), -global4.b.x, -21181i);
    global4 = Struct_2(1u, reverseBits(global4.b), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.c))))))));
    let var_2 = Struct_5(abs(48264u), global4.b.zz, Struct_4(vec3<bool>(all(var_0.a.xz), any(var_0.a.zz), !(global0.c < -1772f)), Struct_2(min(_wgslsmith_sub_u32(6930u, global0.a), _wgslsmith_sub_u32(1u, global0.a)), global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-216f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(196f, global1[_wgslsmith_index_u32(31255u, 24u)]))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global4.c, global4.c))))), vec4<f32>(global1[_wgslsmith_index_u32(~global0.a, 24u)], _wgslsmith_f_op_f32(select(-2713f, _wgslsmith_f_op_f32(449f - global0.c), true)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(446f, global4.c), global4.c)), -348f)));
    var var_3 = _wgslsmith_dot_vec3_i32(-select(~var_2.c.b.b.wwx, vec3<i32>(var_2.c.b.b.x, _wgslsmith_mult_i32(3834i, -893i), 1i), select(all(vec4<bool>(var_2.c.a.x, var_2.c.a.x, var_0.a.x, var_2.c.a.x)), var_2.c.a.x & true, var_2.a == var_2.a)), firstTrailingBit(countOneBits(vec3<i32>(1i, var_1.x & global0.b.x, 29215i ^ global0.b.x))));
    return vec3<bool>(true, any(var_0.a), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_1());
    var var_1 = _wgslsmith_dot_vec2_i32(~(~(~firstTrailingBit(vec2<i32>(global0.b.x, 23559i)))), _wgslsmith_sub_vec2_i32(global0.b.wx, max(vec2<i32>(global0.b.x, global0.b.x), global0.b.zw)));
    var_1 = _wgslsmith_mod_i32(_wgslsmith_div_i32(-_wgslsmith_mult_i32(_wgslsmith_sub_i32(-1i, global4.b.x), 39179i), func_3(!var_0.a.zx, Struct_3(global0.b.x, var_0.a.x)).x), ~(-21135i << (_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(1u, global0.a, 10015u, 0u)), vec4<u32>(u_input.a.x, 75682u, 4294967295u, 55424u)) % 32u)));
    var var_2 = false;
    global0 = Struct_2(104440u, global4.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(global0.c)), global0.c)), _wgslsmith_div_f32(-342f, _wgslsmith_f_op_f32(414f + global1[_wgslsmith_index_u32(global0.a, 24u)]))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.c)) + _wgslsmith_f_op_f32(sign(global0.c))))));
    let var_3 = Struct_5(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~53363u << (global4.a % 32u)), countOneBits(abs(vec2<u32>(global0.a, 1u)))), vec2<i32>(-3433i, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(-global0.b.wwx, -vec3<i32>(global4.b.x, global4.b.x, -22974i)), select(global0.b.zyw | vec3<i32>(-35235i, global0.b.x, 2147483647i), global0.b.xxw, vec3<bool>(var_0.a.x, var_0.a.x, true)))), Struct_4(vec3<bool>(all(vec2<bool>(true, var_0.a.x)), !(var_0.a.x | true), select(!var_0.a.x, !var_0.a.x, !var_0.a.x)), Struct_2(0u, global0.b, -1691f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1[_wgslsmith_index_u32(0u, 24u)], global1[_wgslsmith_index_u32(7662u, 24u)]))) * vec2<f32>(-488f, -367f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global4.c, global1[_wgslsmith_index_u32(u_input.a.x, 24u)], global1[_wgslsmith_index_u32(11373u, 24u)], global0.c), vec4<f32>(413f, 277f, -1520f, global4.c), var_0.a.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-890f, 1640f, global4.c, global4.c))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -131f), 1428f, -2704f, 153f), select(vec4<bool>(false, var_0.a.x, true, true), select(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(true, var_0.a.x, true, false), true), vec4<bool>(true, true, true, true))))));
    var_2 = any(var_3.c.a);
    var var_4 = any(!(!(!select(vec4<bool>(false, var_0.a.x, true, false), vec4<bool>(var_0.a.x, false, true, var_3.c.a.x), vec4<bool>(true, var_0.a.x, true, var_3.c.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(global4.a, vec4<u32>(firstLeadingBit(var_3.a), u_input.a.x, min(1u, global0.a), _wgslsmith_clamp_u32(~global4.a >> (abs(26046u) % 32u), 7586u, 1u)));
}

