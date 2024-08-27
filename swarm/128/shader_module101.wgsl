struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: vec4<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec4<bool>;

var<private> global2: Struct_4 = Struct_4(Struct_3(false, 1000f, vec2<i32>(i32(-2147483648), 0i), vec2<i32>(22051i, 1i), Struct_1(3297u, 27185i)), Struct_2(vec4<u32>(1u, 41872u, 4294967295u, 4294967295u)));

var<private> global3: Struct_2;

var<private> global4: array<vec4<u32>, 7>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: bool, arg_2: vec2<f32>, arg_3: i32) -> u32 {
    global3 = global2.b;
    global1 = !(!select(vec4<bool>(global2.a.a, true, select(false, false, false), true), select(vec4<bool>(global2.a.a, global2.a.a, true, true), !vec4<bool>(global2.a.a, true, global2.a.a, global2.a.a), !vec4<bool>(false, arg_1, arg_1, false)), vec4<bool>(false, global1.x, arg_1, true | arg_1)));
    var var_0 = select(~vec2<i32>(reverseBits(-2147483647i) >> ((global2.a.e.a >> (global3.a.x % 32u)) % 32u), _wgslsmith_dot_vec2_i32(global2.a.c, _wgslsmith_mult_vec2_i32(vec2<i32>(18509i, global2.a.c.x), vec2<i32>(-2147483647i, 0i)))), global2.a.d, !(!(all(global1.zz) != global1.x)));
    return ~reverseBits(arg_0.c.a.x) << (~global3.a.x % 32u);
}

fn func_2() -> Struct_2 {
    global4 = array<vec4<u32>, 7>();
    global2 = Struct_4(global2.a, Struct_2(global3.a));
    global1 = select(vec4<bool>(global2.a.a, any(!(!vec3<bool>(global2.a.a, true, global2.a.a))), global2.a.b <= _wgslsmith_f_op_f32(global2.a.b * global2.a.b), true), select(vec4<bool>(false, !global2.a.a, any(vec3<bool>(global1.x, true, false)), global2.a.a), select(!vec4<bool>(global2.a.a, global1.x, global1.x, global1.x), vec4<bool>(true, global1.x, global2.a.a, true), !(!global2.a.a)), ((1u << (u_input.b % 32u)) << (_wgslsmith_dot_vec3_u32(u_input.a.wxw, global3.a.zzx) % 32u)) != func_3(Struct_5(29730i, vec4<f32>(global2.a.b, global2.a.b, -1000f, -1107f), Struct_2(global2.b.a)), !global1.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a.b, 1359f) * vec2<f32>(global2.a.b, global2.a.b)), -2147483647i)), vec4<bool>(any(vec2<bool>(global1.x, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.a.b))) >= -164f, global1.x, global2.a.a));
    let var_0 = Struct_4(global2.a, Struct_2(select(~(~global4[_wgslsmith_index_u32(0u, 7u)]), vec4<u32>(_wgslsmith_add_u32(u_input.a.x, global2.b.a.x), ~61401u, _wgslsmith_dot_vec3_u32(vec3<u32>(global3.a.x, global3.a.x, u_input.b), global2.b.a.xyx), 44761u), true)));
    var var_1 = Struct_2(_wgslsmith_sub_vec4_u32(select(vec4<u32>(~global2.b.a.x, ~18995u, 4294967295u, 42144u), ~select(u_input.a, global3.a, var_0.a.a), global1.x), vec4<u32>(global2.b.a.x, u_input.a.x, abs(global2.b.a.x) << (~27346u % 32u), abs(_wgslsmith_sub_u32(47417u, global2.a.e.a)))));
    return Struct_2(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.a.x, ~u_input.b, 4294967295u, ~global3.a.x), firstLeadingBit(vec4<u32>(global3.a.x, 4294967295u, 0u, 52164u))), _wgslsmith_sub_vec4_u32(~(u_input.a >> (vec4<u32>(4294967295u, 45551u, global2.a.e.a, 4294967295u) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(~global2.b.a, global3.a, vec4<u32>(0u, global2.b.a.x, u_input.a.x, 27360u) | vec4<u32>(0u, 4294967295u, global3.a.x, 27923u)))));
}

fn func_1(arg_0: vec4<i32>) -> i32 {
    var var_0 = global2.b;
    var_0 = func_2();
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -684f))))));
    var var_2 = arg_0.x;
    var var_3 = !select(vec4<bool>(true, global1.x, !all(vec2<bool>(false, global1.x)), global2.a.a), !vec4<bool>(arg_0.x > 2147483647i, global2.a.a, false == global2.a.a, true), vec4<bool>(global1.x, select(false, var_1 >= 1000f, global1.x & global1.x), all(!global1.zy), all(!vec4<bool>(global1.x, true, false, false))));
    return abs(-25315i);
}

fn func_4(arg_0: bool, arg_1: Struct_5, arg_2: u32, arg_3: i32) -> Struct_5 {
    global1 = select(vec4<bool>(all(global1.xzz), global2.a.a && true, global2.a.a, (~arg_3 | global2.a.e.b) >= arg_1.a), vec4<bool>(any(global1.ww), true, true, true), vec4<bool>(_wgslsmith_clamp_u32(2966u, 47486u, 0u) >= 28717u, !arg_0, any(!global1.wxw), select(all(select(vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(false, true, false, global2.a.a), global1.x)), true, true)));
    var var_0 = true;
    global0 = !(~(_wgslsmith_dot_vec2_u32(arg_1.c.a.xz, arg_1.c.a.xy) | arg_2) < ~select(~arg_2, global2.a.e.a | 79095u, global2.a.a));
    var var_1 = arg_1;
    var var_2 = _wgslsmith_mod_vec2_u32(vec2<u32>(~arg_2, _wgslsmith_mod_u32(u_input.b, func_3(Struct_5(global2.a.c.x, var_1.b, Struct_2(global2.b.a)), global2.a.a, vec2<f32>(arg_1.b.x, 1236f), arg_1.a))) >> ((abs(vec2<u32>(global2.b.a.x, arg_1.c.a.x) | arg_1.c.a.yx) >> (var_1.c.a.xz % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(59148u, arg_2), vec2<u32>(6606u, 60388u))), vec2<u32>(select(4294967295u, 350u, arg_0) << (countOneBits(5241u) % 32u), countOneBits(arg_2))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_u32(12713u, global2.a.e.a);
    let var_1 = func_4(global1.x, Struct_5(-global2.a.e.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1470f, -1132f, global2.a.b, 1465f))), Struct_2(~global3.a >> (reverseBits(u_input.a) % vec4<u32>(32u)))), ~(~25105u), abs(max(select(2147483647i, global2.a.d.x, true) << (~142189u % 32u), func_1(~vec4<i32>(global2.a.c.x, -12181i, global2.a.d.x, global2.a.c.x)))));
    let var_2 = global2.a.a;
    let var_3 = var_1.c.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

