struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: vec3<i32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 29>;

var<private> global1: array<vec4<u32>, 29> = array<vec4<u32>, 29>(vec4<u32>(0u, 62611u, 1u, 4294967295u), vec4<u32>(8470u, 36803u, 22490u, 1u), vec4<u32>(0u, 0u, 1u, 67183u), vec4<u32>(40860u, 0u, 41922u, 11738u), vec4<u32>(16935u, 4294967295u, 1u, 0u), vec4<u32>(25291u, 63829u, 98928u, 100345u), vec4<u32>(4294967295u, 13174u, 0u, 74014u), vec4<u32>(67590u, 1u, 0u, 1u), vec4<u32>(4294967295u, 0u, 11363u, 1u), vec4<u32>(1u, 1u, 30858u, 0u), vec4<u32>(4294967295u, 1u, 1u, 58256u), vec4<u32>(4294967295u, 50791u, 76084u, 4294967295u), vec4<u32>(0u, 11225u, 113833u, 140281u), vec4<u32>(1u, 11988u, 1u, 4294967295u), vec4<u32>(39735u, 40015u, 0u, 113945u), vec4<u32>(1u, 1u, 34736u, 35626u), vec4<u32>(4294967295u, 22539u, 1u, 29366u), vec4<u32>(34374u, 113112u, 44238u, 1u), vec4<u32>(4294967295u, 1u, 1u, 1u), vec4<u32>(31151u, 4294967295u, 45944u, 0u), vec4<u32>(0u, 9570u, 0u, 1u), vec4<u32>(22930u, 0u, 0u, 0u), vec4<u32>(4294967295u, 30483u, 1u, 22993u), vec4<u32>(1u, 49749u, 1u, 1u), vec4<u32>(17108u, 0u, 0u, 1u), vec4<u32>(45452u, 19021u, 6440u, 74976u), vec4<u32>(4294967295u, 0u, 5209u, 1u), vec4<u32>(0u, 4294967295u, 4294967295u, 0u), vec4<u32>(1u, 0u, 1u, 4294967295u));

var<private> global2: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: f32, arg_3: vec2<f32>) -> vec4<u32> {
    let var_0 = Struct_1(_wgslsmith_sub_u32(arg_0.c, 1u), _wgslsmith_mod_u32(17830u, arg_0.a), i32(-1i) * -3172i, ~global1[_wgslsmith_index_u32(38824u, 29u)], ~arg_0.a);
    global0 = array<vec2<bool>, 29>();
    let var_1 = !select(select(select(vec4<bool>(global2.x, global2.x, global2.x, global2.x), !vec4<bool>(global2.x, true, global2.x, global2.x), global2.x), vec4<bool>(true, true, !global2.x, global2.x), (u_input.a << (var_0.d.x % 32u)) < arg_1.x), vec4<bool>(!any(vec4<bool>(global2.x, false, false, global2.x)), select(false || global2.x, false, any(vec3<bool>(global2.x, false, false))), true, any(select(vec4<bool>(true, global2.x, global2.x, true), vec4<bool>(global2.x, false, false, global2.x), false))), select(select(select(vec4<bool>(global2.x, true, true, false), vec4<bool>(global2.x, false, false, global2.x), global2.x), vec4<bool>(global2.x, global2.x, false, global2.x), true), vec4<bool>(any(vec4<bool>(global2.x, global2.x, global2.x, true)), all(vec3<bool>(global2.x, false, global2.x)), !global2.x, false), any(select(vec3<bool>(false, global2.x, true), vec3<bool>(true, false, global2.x), true))));
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - _wgslsmith_f_op_f32(select(-628f, arg_0.b.x, any(vec2<bool>(var_1.x, false))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + -845f)));
    var var_3 = !(!global2.x);
    return abs(vec4<u32>(arg_0.c, 27840u, 11885u, 92199u) << (vec4<u32>(_wgslsmith_div_u32(~arg_0.c, ~46605u), 40770u, arg_0.a, _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(arg_0.a, var_0.e, var_0.d.x)), var_0.d.wzx)) % vec4<u32>(32u)));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_4) -> i32 {
    var var_0 = arg_0.x == 7716u;
    let var_1 = 1u;
    var var_2 = !(!select(select(select(vec4<bool>(global2.x, true, true, true), vec4<bool>(global2.x, false, global2.x, global2.x), vec4<bool>(false, global2.x, global2.x, global2.x)), vec4<bool>(global2.x, global2.x, global2.x, true), select(vec4<bool>(global2.x, global2.x, false, global2.x), vec4<bool>(global2.x, global2.x, true, true), true)), select(vec4<bool>(false, global2.x, false, global2.x), vec4<bool>(global2.x, global2.x, global2.x, global2.x), !vec4<bool>(true, global2.x, true, global2.x)), select(!vec4<bool>(true, global2.x, global2.x, false), vec4<bool>(global2.x, true, true, true), vec4<bool>(global2.x, global2.x, global2.x, false))));
    let var_3 = Struct_5(~(~vec2<u32>(select(42838u, 117058u, global2.x), 4294967295u & arg_0.x)), abs(arg_1.d.x), var_2.x);
    global2 = !vec2<bool>(abs(var_1) > 13361u, !all(select(vec2<bool>(true, var_3.c), global0[_wgslsmith_index_u32(arg_0.x, 29u)], var_3.c)));
    return _wgslsmith_mod_i32(-40149i & u_input.a, -u_input.a);
}

fn func_2(arg_0: Struct_4) -> Struct_1 {
    var var_0 = arg_0.d.x;
    return Struct_1(arg_0.a, ~(~6460u), _wgslsmith_mod_i32(arg_0.d.x, func_4(~func_3(Struct_4(arg_0.c, vec3<f32>(arg_0.b.x, -615f, 622f), 0u, arg_0.d), vec4<i32>(-18227i, u_input.a, 0i, 0i), arg_0.b.x, vec2<f32>(arg_0.b.x, arg_0.b.x)), arg_0)), _wgslsmith_div_vec4_u32(~global1[_wgslsmith_index_u32(abs(arg_0.a), 29u)], global1[_wgslsmith_index_u32(abs(~(~arg_0.c)), 29u)]), 34640u & (_wgslsmith_sub_u32(select(arg_0.c, 31374u, false), arg_0.a) << (countOneBits(arg_0.a) % 32u)));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: Struct_4) -> u32 {
    global1 = array<vec4<u32>, 29>();
    var var_0 = abs(vec4<u32>(~68820u, arg_3.c, ~1u, 0u) << ((global1[_wgslsmith_index_u32(arg_1.a.e, 29u)] & _wgslsmith_sub_vec4_u32(vec4<u32>(1u, arg_1.b, 1u, arg_3.a), vec4<u32>(29345u, arg_1.b, arg_1.b, 1u))) % vec4<u32>(32u))) & firstLeadingBit(global1[_wgslsmith_index_u32(~14329u, 29u)]);
    var_0 = ~(~vec4<u32>(79851u, 1u, arg_1.a.b & (arg_1.b >> (var_0.x % 32u)), reverseBits(_wgslsmith_mod_u32(var_0.x, arg_1.a.d.x))));
    global2 = select(!vec2<bool>(true, all(!vec2<bool>(global2.x, false))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_1.a.d.zxx, select(firstLeadingBit(func_2(Struct_4(var_0.x, vec3<f32>(529f, -1229f, 329f), 53263u, arg_3.d)).d.wzw), arg_1.a.d.zyz, global2.x)), 29u)], global0[_wgslsmith_index_u32(firstLeadingBit(~arg_3.a) << (21107u % 32u), 29u)]);
    let var_1 = Struct_4(1u, arg_2.yzz, arg_3.c ^ arg_3.c, arg_3.d);
    return max(_wgslsmith_mod_u32(0u, ~arg_3.a), _wgslsmith_div_u32(func_2(Struct_4(_wgslsmith_dot_vec2_u32(vec2<u32>(92140u, arg_3.c), vec2<u32>(28299u, arg_1.b)), vec3<f32>(arg_2.x, -1000f, -1073f), 1u, ~var_1.d)).d.x, 1u));
}

fn func_1() -> Struct_3 {
    global1 = array<vec4<u32>, 29>();
    var var_0 = abs(u_input.a);
    let var_1 = vec3<bool>(global2.x, !(!(true & global2.x)), !(!global2.x));
    global2 = !global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_5(vec3<f32>(_wgslsmith_div_f32(-1518f, 1803f), _wgslsmith_f_op_f32(abs(-427f)), -133f), Struct_2(func_2(Struct_4(0u, vec3<f32>(1430f, -361f, -347f), 4294967295u, vec3<i32>(1i, u_input.a, u_input.a))), _wgslsmith_mod_u32(1948u, 33658u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(979f, -1339f, -954f, -1082f))), Struct_4(20316u, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1440f, 283f, 1158f), vec3<f32>(333f, 1241f, 127f))), 1u, vec3<i32>(u_input.a, u_input.a, 34700i))), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 4294967295u, 46750u), vec3<u32>(1u, 1u, 1u)))), 29u)];
    global1 = array<vec4<u32>, 29>();
    return Struct_3(vec2<bool>(var_1.x, false), 1u, Struct_1(max(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 0u), vec3<u32>(1u, 1u, 1u))) >> (30654u % 32u), ~(~697u), firstLeadingBit(u_input.a), vec4<u32>(1u, 1u, 0u, ~func_3(Struct_4(7519u, vec3<f32>(892f, 2318f, 1011f), 1u, vec3<i32>(1i, u_input.a, u_input.a)), vec4<i32>(0i, u_input.a, -66596i, -2147483647i), -557f, vec2<f32>(271f, -526f)).x), ~0u));
}

fn func_6(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_3) -> i32 {
    let var_0 = vec4<bool>(arg_1.x, !arg_2.a.x, !func_1().a.x, !select(firstTrailingBit(arg_2.c.b) > ~4294967295u, !global2.x, arg_1.x));
    global2 = !(!var_0.wy);
    var var_1 = ~(arg_2.c.d.zw ^ max(_wgslsmith_mod_vec2_u32(arg_2.c.d.yz >> (arg_2.c.d.yw % vec2<u32>(32u)), arg_2.c.d.zw >> (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))), ~select(vec2<u32>(arg_2.b, 1u), vec2<u32>(3645u, 5514u), false)));
    let var_2 = _wgslsmith_sub_i32(26779i ^ -u_input.a, -14491i);
    let var_3 = 0i;
    return _wgslsmith_div_i32(_wgslsmith_mod_i32(~arg_2.c.c, var_2), ~_wgslsmith_div_i32(countOneBits(7373i), 7591i) << (~_wgslsmith_add_u32(15766u ^ arg_2.c.a, reverseBits(4294967295u)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec2<i32>(~func_6(_wgslsmith_f_op_f32(-1574f - -1213f), global0[_wgslsmith_index_u32(~0u, 29u)], func_1()), -1i);
    global2 = global0[_wgslsmith_index_u32(countOneBits(~(~1u)), 29u)];
    let var_1 = vec3<i32>(~var_0.x, 1i, -(func_4(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(59432u, 4294967295u), vec2<u32>(82823u, 24719u)), 29u)], Struct_4(3906u, vec3<f32>(992f, 1052f, -252f), 51149u, vec3<i32>(u_input.a, 59956i, u_input.a))) >> (51192u % 32u)));
    var var_2 = _wgslsmith_add_i32(-2147483647i, var_1.x);
    var var_3 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(392f - -515f)))), 681f), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -965f) * _wgslsmith_f_op_f32(sign(1111f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1846f, 728f)) - _wgslsmith_f_op_f32(614f - -647f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1853f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(1423f)))) * 1f), 1f));
}

