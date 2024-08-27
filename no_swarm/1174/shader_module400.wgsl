struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(1000f, -926f, 1852f, 219f);

var<private> global1: array<bool, 24>;

var<private> global2: u32;

var<private> global3: array<vec3<i32>, 16> = array<vec3<i32>, 16>(vec3<i32>(-44764i, -21351i, 0i), vec3<i32>(76569i, 2147483647i, 0i), vec3<i32>(1i, -16306i, -8875i), vec3<i32>(45522i, 28364i, 0i), vec3<i32>(i32(-2147483648), 11587i, -1i), vec3<i32>(-72450i, 14961i, 12601i), vec3<i32>(2147483647i, -1i, -1i), vec3<i32>(-42454i, -21123i, 2147483647i), vec3<i32>(-1i, 1i, i32(-2147483648)), vec3<i32>(-27131i, -40831i, 4625i), vec3<i32>(60327i, -1i, -1i), vec3<i32>(-1i, 1i, 4346i), vec3<i32>(-38675i, -9403i, i32(-2147483648)), vec3<i32>(0i, -1i, 27311i), vec3<i32>(0i, 1i, 43792i), vec3<i32>(427i, 2147483647i, 1i));

var<private> global4: vec4<u32> = vec4<u32>(19020u, 28010u, 4294967295u, 33225u);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec3<bool> {
    let var_0 = global0.x;
    let var_1 = vec4<bool>(any(select(select(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 24u)], false, true, true), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 24u)], false, true), global1[_wgslsmith_index_u32(18481u, 24u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(global4.x, 24u)], global1[_wgslsmith_index_u32(15483u, 24u)], global1[_wgslsmith_index_u32(u_input.e.x, 24u)], false), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.d.x, 24u)], global1[_wgslsmith_index_u32(global4.x, 24u)], global1[_wgslsmith_index_u32(u_input.e.x, 24u)]), global1[_wgslsmith_index_u32(0u, 24u)]), true), vec4<bool>(global1[_wgslsmith_index_u32(107797u, 24u)] | global1[_wgslsmith_index_u32(u_input.d.x, 24u)], false, any(vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 24u)], global1[_wgslsmith_index_u32(global4.x, 24u)])), false), vec4<bool>(u_input.b > u_input.b, true, global1[_wgslsmith_index_u32(global4.x, 24u)] || global1[_wgslsmith_index_u32(4294967295u, 24u)], global1[_wgslsmith_index_u32(u_input.a, 24u)]))), u_input.a >= 50341u, !all(!vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.d.x, 24u)], false, false)), 598f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.x, global0.x)))));
    let var_2 = 474f;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(global0.zz * _wgslsmith_f_op_vec2_f32(global0.yz - vec2<f32>(-1000f, var_2))), _wgslsmith_f_op_vec2_f32(global0.xw + _wgslsmith_f_op_vec2_f32(vec2<f32>(-406f, var_2) + global0.yw)))), _wgslsmith_f_op_vec2_f32(global0.wy + vec2<f32>(112f, _wgslsmith_f_op_f32(-389f + 455f))), !all(select(var_1.zwx, vec3<bool>(var_1.x, true, true), var_1.zxw)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-1000f, global0.x), var_2), global0.wx)));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_3.x, var_2, 1004f, 821f), vec4<f32>(var_2, var_2, var_2, global0.x)))))))));
    return select(var_1.zyy, !select(select(!var_1.yyy, var_1.xzw, var_1.yzx), select(!vec3<bool>(false, global1[_wgslsmith_index_u32(44786u, 24u)], true), vec3<bool>(true, var_1.x, global1[_wgslsmith_index_u32(u_input.e.x, 24u)]), any(var_1.wyx)), global1[_wgslsmith_index_u32(0u, 24u)]), global1[_wgslsmith_index_u32(select(~_wgslsmith_mod_u32(~28791u, ~7500u), _wgslsmith_dot_vec3_u32(abs(u_input.e), global4.yzw), var_1.x), 24u)]);
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = select(vec4<bool>(_wgslsmith_f_op_f32(global0.x - global0.x) != global0.x, global1[_wgslsmith_index_u32(~(~global4.x), 24u)], false, select(all(!vec3<bool>(false, arg_0, arg_0)), global1[_wgslsmith_index_u32(~(~global4.x), 24u)], any(func_3()))), !vec4<bool>(false, u_input.b == u_input.b, select(global4.x != 1u, true, true), arg_0), !select(vec4<bool>(true, any(vec3<bool>(arg_0, false, global1[_wgslsmith_index_u32(u_input.c.x, 24u)])), true, false), select(!vec4<bool>(true, arg_0, true, false), select(vec4<bool>(arg_0, false, true, false), vec4<bool>(global1[_wgslsmith_index_u32(global4.x, 24u)], false, arg_0, arg_0), true), true), all(vec4<bool>(false, arg_0, false, true)) || true));
    var var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, _wgslsmith_clamp_i32(~u_input.b, _wgslsmith_mult_i32(1i, ~0i), _wgslsmith_sub_i32(-u_input.b, 43419i))), ~((countOneBits(vec2<i32>(u_input.b, 2147483647i)) >> (global4.ww % vec2<u32>(32u))) >> (abs(countOneBits(global4.yz)) % vec2<u32>(32u))));
    global0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -307f), global0.x, _wgslsmith_f_op_f32(round(-1581f)), _wgslsmith_f_op_f32(round(global0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(920f, global0.x, global0.x, global0.x)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, global0.x) + _wgslsmith_f_op_f32(ceil(-828f))), _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(global0.x + -405f)), global0.x) * vec4<f32>(1197f, -688f, _wgslsmith_f_op_f32(f32(-1f) * -395f), _wgslsmith_f_op_f32(f32(-1f) * -707f))), select(!var_0, !var_0, var_0)));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.x - 1000f))))), -880f, _wgslsmith_f_op_f32(floor(-1399f)));
    global4 = vec4<u32>(~0u ^ _wgslsmith_mod_u32(1u ^ global4.x, 0u), 3345u, _wgslsmith_dot_vec3_u32(~max(global4.zzx, u_input.e), ~u_input.e << (global4.xxx % vec3<u32>(32u))), global4.x) << (_wgslsmith_sub_vec4_u32(vec4<u32>(global4.x, select(u_input.c.x, u_input.c.x, false), ~4294967295u, 84404u) | vec4<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, 4294967295u, 89927u), global4.zwy), _wgslsmith_div_u32(22845u, 52991u), 1u), ~vec4<u32>(~1840u, 4294967295u ^ u_input.d.x, _wgslsmith_add_u32(43271u, u_input.d.x), global4.x)) % vec4<u32>(32u));
    return Struct_2(Struct_1(_wgslsmith_div_u32(60422u, u_input.a << ((u_input.a ^ global4.x) % 32u)), _wgslsmith_mod_i32(_wgslsmith_mult_i32(-1i, _wgslsmith_sub_i32(-46327i, u_input.b)), -8023i), vec2<f32>(-117f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + -1187f) + -1245f))), ~(~(~vec4<u32>(global4.x, u_input.e.x, global4.x, 1u)) >> (_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.d.x, 22971u, global4.x, 7795u), vec4<u32>(0u, 1u, u_input.e.x, 31071u)) % vec4<u32>(32u))), Struct_1(firstTrailingBit(_wgslsmith_clamp_u32(8871u, 4294967295u, 0u) & global4.x), _wgslsmith_add_i32(select(reverseBits(u_input.b), -1i >> (1u % 32u), global1[_wgslsmith_index_u32(0u, 24u)]), _wgslsmith_add_i32(-1i, -1i)), vec2<f32>(258f, global0.x)), abs(~(vec4<u32>(35632u, 49190u, global4.x, 0u) << (_wgslsmith_add_vec4_u32(vec4<u32>(global4.x, u_input.e.x, global4.x, u_input.a), vec4<u32>(global4.x, global4.x, u_input.a, global4.x)) % vec4<u32>(32u)))));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>) -> Struct_2 {
    let var_0 = func_2(global1[_wgslsmith_index_u32(firstTrailingBit(~(~1u)), 24u)] && all(select(!vec4<bool>(global1[_wgslsmith_index_u32(global4.x, 24u)], arg_1.x, false, global1[_wgslsmith_index_u32(u_input.a, 24u)]), vec4<bool>(global1[_wgslsmith_index_u32(arg_0, 24u)], global1[_wgslsmith_index_u32(arg_0, 24u)], arg_1.x, true), !vec4<bool>(false, global1[_wgslsmith_index_u32(arg_0, 24u)], true, arg_1.x))));
    let var_1 = func_2(false);
    let var_2 = func_2(any(func_3()));
    let var_3 = global0.yzx;
    global2 = _wgslsmith_clamp_u32(~(~0u), ~(~13601u), reverseBits(select(~71515u, _wgslsmith_mult_u32(~u_input.e.x, firstTrailingBit(4877u)), !select(arg_1.x, false, true))));
    return Struct_2(func_2(8278u <= ~var_1.a.a).c, vec4<u32>(0u, global4.x, func_2(false).d.x | _wgslsmith_add_u32(var_0.a.a, 1u), ~1u) >> (~firstTrailingBit(var_0.b) % vec4<u32>(32u)), Struct_1(_wgslsmith_mod_u32(4294967295u, _wgslsmith_mult_u32(var_0.d.x, reverseBits(var_1.d.x))), _wgslsmith_mod_i32(~(~u_input.b), var_1.a.b), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(global0.ww)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_3.yy)))))), abs(~(~select(var_2.d, vec4<u32>(var_0.a.a, 1u, global4.x, var_0.b.x), global1[_wgslsmith_index_u32(global4.x, 24u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 21214u;
    global2 = _wgslsmith_mult_u32(~u_input.c.x, reverseBits(firstTrailingBit(~1u))) | 1u;
    var var_0 = func_1(select(countOneBits(abs(~u_input.a)), u_input.e.x, all(select(!vec4<bool>(global1[_wgslsmith_index_u32(22281u, 24u)], global1[_wgslsmith_index_u32(u_input.e.x, 24u)], true, global1[_wgslsmith_index_u32(u_input.d.x, 24u)]), select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(63028u, 24u)], global1[_wgslsmith_index_u32(u_input.c.x, 24u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(28179u, 24u)], global1[_wgslsmith_index_u32(1144u, 24u)], false), global1[_wgslsmith_index_u32(51984u, 24u)]), global1[_wgslsmith_index_u32(global4.x, 24u)] && false))), !select(!select(vec2<bool>(global1[_wgslsmith_index_u32(11570u, 24u)], global1[_wgslsmith_index_u32(global4.x, 24u)]), vec2<bool>(global1[_wgslsmith_index_u32(global4.x, 24u)], true), vec2<bool>(global1[_wgslsmith_index_u32(global4.x, 24u)], global1[_wgslsmith_index_u32(u_input.c.x, 24u)])), vec2<bool>(global1[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 24u)], true), any(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 24u)], global1[_wgslsmith_index_u32(global4.x, 24u)], global1[_wgslsmith_index_u32(global4.x, 24u)], global1[_wgslsmith_index_u32(1156u, 24u)]))));
    global4 = vec4<u32>(~(~var_0.a.a) >> (14517u % 32u), var_0.a.a | (_wgslsmith_mult_u32(0u, select(4294967295u, 24855u, true)) << (69556u % 32u)), 45953u, var_0.b.x);
    global4 = ~firstTrailingBit(var_0.d);
    let var_1 = Struct_2(Struct_1(u_input.c.x, -_wgslsmith_div_i32(u_input.b, reverseBits(-26716i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.c.c - global0.yw) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.c.c.x, 986f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1876f, 439f), vec2<f32>(946f, -1085f), global1[_wgslsmith_index_u32(var_0.b.x, 24u)])))))), max(~(~_wgslsmith_sub_vec4_u32(var_0.b, vec4<u32>(u_input.c.x, var_0.b.x, 1u, global4.x))), var_0.b), Struct_1(~(~_wgslsmith_sub_u32(global4.x, 4294967295u)), u_input.b, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-860f, -527f) * global0.yy))))), ~var_0.d);
    global2 = 0u;
    global2 = ~max(~global4.x, _wgslsmith_div_u32(_wgslsmith_sub_u32(~u_input.d.x, ~u_input.d.x), _wgslsmith_mult_u32(func_2(true).a.a, 1u)));
    global4 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.c.x, var_0.a.b);
}

