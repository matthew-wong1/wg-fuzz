struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28> = array<u32, 28>(41811u, 1u, 4294967295u, 15178u, 1u, 0u, 18176u, 12340u, 4294967295u, 31419u, 0u, 36377u, 1u, 54611u, 4294967295u, 38354u, 1u, 15162u, 48803u, 63222u, 1u, 34263u, 1u, 11371u, 25052u, 9709u, 54454u, 24447u);

var<private> global1: array<f32, 27>;

var<private> global2: i32 = -4810i;

var<private> global3: vec4<f32> = vec4<f32>(-184f, 276f, -2104f, -1528f);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    global0 = array<u32, 28>();
    let var_0 = Struct_1(reverseBits(vec3<i32>(u_input.c, u_input.a, ~u_input.a)) >> (vec3<u32>(select(44374u, 0u, all(vec4<bool>(true, false, false, false))), ~4294967295u, abs(_wgslsmith_dot_vec3_u32(arg_0.xyw, arg_0.xwx))) % vec3<u32>(32u)), ~select(vec2<i32>(17770i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -13699i), vec2<i32>(4944i, -8774i))), min(vec2<i32>(2090i, 2147483647i), _wgslsmith_clamp_vec2_i32(vec2<i32>(-23914i, 56682i), vec2<i32>(28988i, u_input.a), vec2<i32>(u_input.a, -29596i))), any(vec3<bool>(true, true, true))));
    let var_1 = 0u;
    global0 = array<u32, 28>();
    var var_2 = Struct_2(_wgslsmith_mult_i32(_wgslsmith_add_i32(~_wgslsmith_mod_i32(0i, var_0.a.x), u_input.a), ~u_input.a));
    return _wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f)))));
}

fn func_2() -> f32 {
    let var_0 = true;
    var var_1 = u_input.a;
    let var_2 = vec3<f32>(global1[_wgslsmith_index_u32(select(1u, 1u, true != var_0), 27u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 27u)]) - _wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(972f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3.x))))))));
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(1392f, _wgslsmith_f_op_f32(sign(var_2.x))), -2151f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, 658f)), _wgslsmith_f_op_f32(f32(-1f) * -435f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 28u)], 27u)], global3.x, var_2.x, 1446f))))), vec4<bool>((true && var_0) | var_0, !var_0, false, !any(vec3<bool>(var_0, false, false))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1030f, 2225f, var_2.x, global1[_wgslsmith_index_u32(6459u, 27u)]) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-815f, -1170f, -122f, var_2.x)))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 854f, global1[_wgslsmith_index_u32(1u, 27u)], global1[_wgslsmith_index_u32(1u, 27u)])))))));
    global3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(~vec4<u32>(global0[_wgslsmith_index_u32(74379u, 28u)], global0[_wgslsmith_index_u32(u_input.b.x, 28u)], global0[_wgslsmith_index_u32(75131u, 28u)], 19410u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-170f + var_2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -716f)), 1000f, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, 59245u), 27u)]) + vec4<f32>(_wgslsmith_div_f32(-469f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9012u, 28u)], 27u)] - 778f), _wgslsmith_f_op_f32(-var_2.x)))), _wgslsmith_f_op_f32(f32(-1f) * -637f), _wgslsmith_f_op_f32(trunc(-1717f)), _wgslsmith_f_op_f32(f32(-1f) * -1439f)));
    return var_2.x;
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_2, arg_3: u32) -> Struct_1 {
    var var_0 = Struct_1(~vec3<i32>(16558i, min(_wgslsmith_add_i32(arg_0, -26831i), ~arg_2.a), 0i), _wgslsmith_sub_vec2_i32(-(min(vec2<i32>(-2147483647i, 0i), vec2<i32>(2147483647i, arg_2.a)) & (vec2<i32>(u_input.c, 2147483647i) >> (u_input.b % vec2<u32>(32u)))), vec2<i32>(abs(abs(arg_0)), arg_2.a)));
    return Struct_1(var_0.a, ~_wgslsmith_div_vec2_i32(-var_0.b, vec2<i32>(~arg_2.a, arg_2.a)));
}

fn func_1() -> Struct_2 {
    global1 = array<f32, 27>();
    let var_0 = -(_wgslsmith_add_i32(-27483i & u_input.a, u_input.a) << (u_input.b.x % 32u)) >> (48179u % 32u);
    var var_1 = func_4(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(26925u, 27u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(84226u, 27u)] * -1000f))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 27u)])))) + _wgslsmith_f_op_f32(-339f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2()))))), Struct_2(var_0 << (31755u % 32u)), firstLeadingBit(~1u));
    var var_2 = -1335f;
    let var_3 = u_input.b.x;
    return Struct_2(_wgslsmith_mult_i32(var_0, var_0));
}

fn func_5(arg_0: Struct_2, arg_1: u32) -> f32 {
    let var_0 = -2147483647i;
    var var_1 = max(_wgslsmith_clamp_vec3_i32((vec3<i32>(-1i) * -vec3<i32>(var_0, 1i, arg_0.a)) >> (select(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 4294967295u, 36717u), vec3<u32>(arg_1, arg_1, 1u)), ~vec3<u32>(arg_1, global0[_wgslsmith_index_u32(29455u, 28u)], arg_1), true) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(countOneBits(~vec3<i32>(2147483647i, arg_0.a, 0i)), vec3<i32>(-9207i, 2147483647i, _wgslsmith_mod_i32(var_0, 11950i))), vec3<i32>(min(-1i, select(var_0, var_0, false)), u_input.a, _wgslsmith_sub_i32(0i, 2147483647i))), func_4(~_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0, arg_0.a, u_input.a), vec3<i32>(arg_0.a, u_input.c, u_input.a), vec3<i32>(arg_0.a, arg_0.a, arg_0.a)), ~vec3<i32>(arg_0.a, -2147483647i, -34344i)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_add_u32(countOneBits(global0[_wgslsmith_index_u32(7971u, 28u)]), ~arg_1), 27u)]), func_1(), global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(32358u, _wgslsmith_mod_u32(u_input.b.x, 0u)), 28u)]).a);
    var var_2 = arg_0;
    var_1 = _wgslsmith_clamp_vec3_i32(vec3<i32>(func_4((0i << (u_input.b.x % 32u)) & -var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), func_1(), firstTrailingBit(0u)).b.x, 2147483647i, var_1.x | firstLeadingBit(arg_0.a ^ var_0)), abs(vec3<i32>(max(_wgslsmith_sub_i32(13905i, 0i), i32(-1i) * -25784i), ~select(u_input.c, var_2.a, true), 27357i)), vec3<i32>(min(min(~(-1i), max(var_1.x, -2147483647i)), arg_0.a), var_2.a, select(~(-23630i), -2147483647i, true)));
    global1 = array<f32, 27>();
    return -1671f;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(~58974u, 27u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~(1u & global0[_wgslsmith_index_u32(u_input.b.x, 28u)]), 27u)] + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1200f)), _wgslsmith_f_op_f32(f32(-1f) * -708f)))), _wgslsmith_f_op_f32(f32(-1f) * -195f), _wgslsmith_f_op_f32(func_5(func_1(), u_input.b.x))) - vec4<f32>(-154f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 28u)], 27u)]), _wgslsmith_f_op_f32(func_5(Struct_2(-1i), u_input.b.x))), global1[_wgslsmith_index_u32(min(~u_input.b.x, min(global0[_wgslsmith_index_u32(u_input.b.x, 28u)], u_input.b.x)), 27u)], true)), global1[_wgslsmith_index_u32(4294967295u, 27u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1043f, global1[_wgslsmith_index_u32(61856u, 27u)])) + _wgslsmith_f_op_f32(step(global3.x, global3.x))) + _wgslsmith_f_op_f32(-2063f + global1[_wgslsmith_index_u32(1u, 27u)]))));
    var var_0 = firstLeadingBit(_wgslsmith_mod_u32(4294967295u, _wgslsmith_mod_u32(~global0[_wgslsmith_index_u32(28115u, 28u)], 0u) & 4294967295u));
    var_0 = 0u;
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1000f, 755f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 27u)] - 807f)))), global1[_wgslsmith_index_u32(u_input.b.x, 27u)])));
    var var_2 = _wgslsmith_f_op_vec2_f32(global3.zz - _wgslsmith_f_op_vec2_f32(vec2<f32>(-312f, _wgslsmith_f_op_f32(func_2())) * vec2<f32>(1113f, -935f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(min(32819u, ~u_input.b.x), 27u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-248f, 1127f, true)))))), u_input.a, select(vec3<u32>(1u, ~_wgslsmith_dot_vec2_u32(u_input.b, u_input.b), u_input.b.x | 61259u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, global0[_wgslsmith_index_u32(4961u, 28u)], firstLeadingBit(60579u)), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, u_input.b.x, 45643u))), any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true)) || true), ~u_input.a);
}

