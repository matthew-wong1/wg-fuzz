struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 5> = array<vec2<f32>, 5>(vec2<f32>(-1000f, -135f), vec2<f32>(708f, 1149f), vec2<f32>(216f, -808f), vec2<f32>(-189f, -868f), vec2<f32>(-606f, 1000f));

var<private> global1: Struct_2;

var<private> global2: array<bool, 7>;

var<private> global3: array<Struct_1, 23>;

var<private> global4: array<vec3<u32>, 18> = array<vec3<u32>, 18>(vec3<u32>(7457u, 10690u, 4294967295u), vec3<u32>(91628u, 28588u, 81552u), vec3<u32>(1u, 1u, 1u), vec3<u32>(75542u, 4294967295u, 4294967295u), vec3<u32>(55526u, 0u, 1u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(4294967295u, 52546u, 70667u), vec3<u32>(1u, 0u, 84828u), vec3<u32>(97503u, 1u, 1u), vec3<u32>(0u, 4753u, 25774u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(6591u, 1u, 15455u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(19015u, 0u, 40817u), vec3<u32>(1u, 78916u, 4294967295u), vec3<u32>(1u, 25299u, 507u), vec3<u32>(53509u, 0u, 33829u), vec3<u32>(1u, 40440u, 1u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32) -> vec4<bool> {
    global4 = array<vec3<u32>, 18>();
    let var_0 = Struct_4(Struct_3(global3[_wgslsmith_index_u32(7304u | max(u_input.a.x, 0u << (u_input.a.x % 32u)), 23u)]), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(global1.a.wx, vec2<f32>(-567f, global1.a.x), global2[_wgslsmith_index_u32(4294967295u, 7u)]))))), ~(~(u_input.a.xz >> (u_input.a.yz % vec2<u32>(32u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.a)) - global1.a)), reverseBits(-vec3<i32>(~arg_0, _wgslsmith_dot_vec2_i32(vec2<i32>(-26481i, 30390i), vec2<i32>(2147483647i, -28126i)), arg_0)));
    var var_1 = -30885i;
    let var_2 = vec2<i32>(~(1i ^ var_0.c.x), -1i);
    var var_3 = Struct_5(_wgslsmith_f_op_vec3_f32(global1.a.wxy - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-540f, var_0.a.a.a.x, var_0.b.a.x), vec3<f32>(var_0.b.a.x, 546f, var_0.b.c.x))))))));
    return select(vec4<bool>(global2[_wgslsmith_index_u32(~0u, 7u)], all(vec4<bool>(select(global2[_wgslsmith_index_u32(var_0.b.b.x, 7u)], global2[_wgslsmith_index_u32(23441u, 7u)], true), any(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 7u)], true, true)), !global2[_wgslsmith_index_u32(1u, 7u)], false)), false, global2[_wgslsmith_index_u32(countOneBits(~u_input.a.x), 7u)]), !select(select(vec4<bool>(global2[_wgslsmith_index_u32(31281u, 7u)], false, global2[_wgslsmith_index_u32(u_input.a.x, 7u)], global2[_wgslsmith_index_u32(u_input.a.x, 7u)]), vec4<bool>(true, false, global2[_wgslsmith_index_u32(76638u, 7u)], true), true), select(!vec4<bool>(global2[_wgslsmith_index_u32(0u, 7u)], global2[_wgslsmith_index_u32(20556u, 7u)], global2[_wgslsmith_index_u32(0u, 7u)], global2[_wgslsmith_index_u32(0u, 7u)]), !vec4<bool>(true, false, global2[_wgslsmith_index_u32(u_input.a.x, 7u)], global2[_wgslsmith_index_u32(var_0.b.b.x, 7u)]), vec4<bool>(global2[_wgslsmith_index_u32(0u, 7u)], false, global2[_wgslsmith_index_u32(88276u, 7u)], false)), global2[_wgslsmith_index_u32(~reverseBits(4294967295u), 7u)]), !(!select(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 7u)], false, global2[_wgslsmith_index_u32(4294967295u, 7u)], global2[_wgslsmith_index_u32(25970u, 7u)]), !vec4<bool>(global2[_wgslsmith_index_u32(var_0.b.b.x, 7u)], false, global2[_wgslsmith_index_u32(2643u, 7u)], global2[_wgslsmith_index_u32(u_input.a.x, 7u)]), !vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 7u)], true, global2[_wgslsmith_index_u32(96452u, 7u)]))));
}

fn func_2() -> Struct_1 {
    global0 = array<vec2<f32>, 5>();
    let var_0 = func_3(-27486i);
    global2 = array<bool, 7>();
    let var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.a.wyx * global1.a.wwy))))));
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, global1.a.x, var_1.a.x, var_1.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1680f, global1.a.x, 707f, 1000f), vec4<f32>(global1.a.x, var_1.a.x, var_1.a.x, global1.a.x), true)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, var_1.a.x, 474f, 230f) * vec4<f32>(var_1.a.x, var_1.a.x, -637f, -505f)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.a.x, var_1.a.x, -458f, var_1.a.x))), global1.a, select(vec4<bool>(false, false, var_0.x, true), !var_0, var_0.x && false)))));
    return global3[_wgslsmith_index_u32(~u_input.a.x, 23u)];
}

fn func_1() -> Struct_3 {
    global2 = array<bool, 7>();
    global4 = array<vec3<u32>, 18>();
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(global1.a))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-515f, global1.a.x, -1634f, -1000f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, -553f, global1.a.x, -404f))))));
    global4 = array<vec3<u32>, 18>();
    let var_1 = global2[_wgslsmith_index_u32(4294967295u, 7u)];
    return Struct_3(func_2());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -772f;
    var var_1 = func_1();
    global0 = array<vec2<f32>, 5>();
    var var_2 = Struct_3(Struct_1(vec2<f32>(var_1.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-453f)) * var_1.a.a.x)), var_1.a.b, global1.a));
    var var_3 = firstTrailingBit(~(-20251i << (~var_2.a.b.x % 32u)));
    var var_4 = select(!(!select(func_3(-2147483647i).yyx, vec3<bool>(global2[_wgslsmith_index_u32(var_2.a.b.x, 7u)], false, global2[_wgslsmith_index_u32(u_input.a.x, 7u)]), true)), !vec3<bool>(true, !global2[_wgslsmith_index_u32(~0u, 7u)], true), any(vec2<bool>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(0u, var_2.a.b.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, var_1.a.b.x), vec2<u32>(0u, u_input.a.x))), 7u)], all(func_3(0i).yw))));
    var var_5 = reverseBits(abs(vec2<i32>(-(~(-32430i)), _wgslsmith_div_i32(1i, -15929i))));
    var var_6 = _wgslsmith_f_op_f32(abs(121f));
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(1569i, (var_5.x ^ 4461i) & (var_5.x >> (var_1.a.b.x % 32u)), ~var_5.x), _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(35015i, var_5.x, var_5.x), countOneBits(vec3<i32>(2147483647i, 1i, var_5.x)), vec3<i32>(var_5.x, var_5.x, 19225i) ^ vec3<i32>(-2147483647i, 0i, 0i)), -_wgslsmith_clamp_vec3_i32(vec3<i32>(var_5.x, -17118i, var_5.x), vec3<i32>(var_5.x, var_5.x, var_5.x), vec3<i32>(-2147483647i, 8711i, var_5.x))), vec3<i32>(0i, var_5.x, _wgslsmith_div_i32(_wgslsmith_mult_i32(var_5.x, var_5.x), abs(var_5.x)))), _wgslsmith_dot_vec4_u32(min(select(reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, var_1.a.b.x, 0u)), max(vec4<u32>(var_2.a.b.x, var_1.a.b.x, var_1.a.b.x, 4294967295u), vec4<u32>(1706u, 45910u, 0u, var_2.a.b.x)), global1.a.x < -150f), ~(vec4<u32>(var_1.a.b.x, 1u, var_2.a.b.x, 0u) & vec4<u32>(4294967295u, 6910u, var_2.a.b.x, 1797u))), abs(vec4<u32>(1u, ~0u, var_2.a.b.x, _wgslsmith_mod_u32(var_2.a.b.x, u_input.a.x)))), firstLeadingBit(min(-(vec3<i32>(2147483647i, var_5.x, -2147483647i) >> (vec3<u32>(var_2.a.b.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_mod_i32(var_5.x, -2147483647i), 2147483647i, _wgslsmith_clamp_i32(-1i, var_5.x, var_5.x)))));
}

