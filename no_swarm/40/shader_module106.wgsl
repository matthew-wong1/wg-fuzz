struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(1i, -1i, -8165i, -11607i), vec2<u32>(7820u, 1u), true);

var<private> global1: Struct_1 = Struct_1(vec4<i32>(33608i, 0i, i32(-2147483648), -23399i), vec2<u32>(4294967295u, 68213u), true);

var<private> global2: vec2<u32>;

var<private> global3: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec4<i32>(1i, -1i, 1i, -1i), vec2<u32>(1u, 4294967295u), true), Struct_1(vec4<i32>(35708i, 8025i, 0i, -1i), vec2<u32>(13436u, 4294967295u), true), Struct_1(vec4<i32>(1i, 26007i, 2147483647i, 1i), vec2<u32>(4294967295u, 7242u), false), Struct_1(vec4<i32>(50345i, -41946i, i32(-2147483648), i32(-2147483648)), vec2<u32>(44161u, 0u), false), Struct_1(vec4<i32>(-18309i, -23015i, 13239i, -48188i), vec2<u32>(56329u, 27887u), true));

var<private> global4: Struct_1 = Struct_1(vec4<i32>(0i, 70510i, 2147483647i, 1i), vec2<u32>(6087u, 4294967295u), false);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> u32 {
    global4 = global3[_wgslsmith_index_u32(~min(global2.x, _wgslsmith_dot_vec2_u32(global1.b, global4.b)), 5u)];
    var var_0 = vec4<bool>(!(global4.b.x != 4294967295u), !global4.c, !(!all(!vec3<bool>(global1.c, global1.c, global1.c))), !select(false, any(!vec4<bool>(global0.c, false, global0.c, global4.c)), !all(vec2<bool>(false, true))));
    let var_1 = -global0.a.x >= -(~firstTrailingBit(global4.a.x));
    var var_2 = vec4<u32>(_wgslsmith_div_u32(0u, global0.b.x), 51125u | _wgslsmith_div_u32(~u_input.b, 4294967295u >> (1u % 32u)), _wgslsmith_add_u32(~(~u_input.e ^ 40693u), firstLeadingBit(firstLeadingBit(~0u))), abs(12962u) << (1u % 32u));
    var var_3 = _wgslsmith_mod_vec3_u32((firstLeadingBit(var_2.xxw) << (_wgslsmith_mult_vec3_u32(~vec3<u32>(12766u, 6638u, 0u), vec3<u32>(global2.x, 1u, 24777u) & var_2.yzw) % vec3<u32>(32u))) | ~(~var_2.wwy), ~var_2.wyz);
    return ~firstTrailingBit(_wgslsmith_sub_u32(reverseBits(global4.b.x), _wgslsmith_add_u32(var_3.x, global2.x))) & firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(~42886u, 0u), firstLeadingBit(vec2<u32>(var_2.x, u_input.e))));
}

fn func_2() -> Struct_1 {
    global3 = array<Struct_1, 5>();
    var var_0 = !select(vec2<bool>(true, !global4.c), select(vec2<bool>(true, 1u > global1.b.x), vec2<bool>(all(vec3<bool>(global1.c, global4.c, true)), all(vec3<bool>(false, false, true))), !(global4.c != global4.c)), false);
    var var_1 = Struct_1(global4.a & _wgslsmith_add_vec4_i32(vec4<i32>(~21318i, global1.a.x >> (17490u % 32u), -2147483647i, u_input.a.x), vec4<i32>(-global4.a.x, -global4.a.x, global4.a.x, 0i)), vec2<u32>(48031u, ~_wgslsmith_dot_vec2_u32(select(global4.b, global0.b, global0.c), select(vec2<u32>(673u, 21639u), vec2<u32>(global0.b.x, 77215u), true))), all(vec4<bool>(global0.c, var_0.x, !(!var_0.x), true)));
    let var_2 = u_input.c;
    let var_3 = _wgslsmith_sub_i32(~(-1i), 32354i << (((4294967295u >> (global2.x % 32u)) >> ((global4.b.x & func_3()) % 32u)) % 32u));
    return Struct_1(vec4<i32>(-_wgslsmith_clamp_i32(global4.a.x, 0i, _wgslsmith_clamp_i32(17905i, var_1.a.x, var_2)), -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, abs(global1.a.x)), vec2<i32>(-var_3, 28328i & var_2)), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.c, -2147483647i, 1i, 0i)), global1.a)), global4.b, (4982u | (~global4.b.x & global4.b.x)) != (u_input.e >> (~_wgslsmith_sub_u32(global1.b.x, 1u) % 32u)));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> vec3<f32> {
    global1 = global3[_wgslsmith_index_u32(1u, 5u)];
    global4 = func_2();
    let var_0 = select(global1.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(global4.b.x << (0u % 32u), arg_0.b.x), 1u, 4294967295u, ~(~global2.x)), ~_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.b.x, global1.b.x, u_input.b, 18353u), vec4<u32>(0u, 30630u, global0.b.x, 1u)), vec4<u32>(global4.b.x, 85322u, 31331u, global1.b.x))), !func_2().c);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(409f + 637f)) + -1360f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-692f, -1137f)) * _wgslsmith_f_op_f32(max(-1325f, -890f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1711f, -417f)), _wgslsmith_f_op_f32(trunc(-592f))))))), _wgslsmith_f_op_f32(-588f + -1000f), -1129f);
    global4 = global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(global1.b, global0.b), 5u)];
    return var_1.xyw;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-217f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(412f, 2602f)) + -644f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(198f, 797f))))), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1260f, 356f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1277f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1336f))), !select(!vec3<bool>(global1.c, true, true), select(vec3<bool>(true, global0.c, false), vec3<bool>(true, global0.c, global1.c), global4.c), vec3<bool>(true, true, true)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(global3[_wgslsmith_index_u32(4294967295u, 5u)], true)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(2050f, -291f, -1000f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1446f, -384f, -700f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1830f, 1156f, 1088f)))))));
    global1 = global3[_wgslsmith_index_u32(global2.x, 5u)];
    var var_1 = vec3<bool>(!global0.c, all(select(!vec3<bool>(global0.c, true, global0.c), !(!vec3<bool>(true, global0.c, false)), any(!vec2<bool>(global0.c, true)))), global4.c != global1.c);
    var var_2 = func_2();
    let var_3 = vec3<u32>(19924u, 1u, ~var_2.b.x);
    let var_4 = global3[_wgslsmith_index_u32(var_3.x, 5u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -977f, var_0.x) - vec3<f32>(var_0.x, 1205f, var_0.x))), var_0)), (var_3 | vec3<u32>(~0u, _wgslsmith_mult_u32(global2.x, global1.b.x), var_3.x & 65663u)) ^ abs(var_3), ~reverseBits(16379i));
}

