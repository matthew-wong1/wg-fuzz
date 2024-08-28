struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<f32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: bool,
    d: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<u32, 22> = array<u32, 22>(8538u, 0u, 0u, 4294967295u, 4294967295u, 87551u, 15662u, 6658u, 92140u, 46511u, 4294967295u, 2117u, 0u, 1u, 19805u, 13554u, 4294967295u, 79654u, 11621u, 0u, 1u, 0u);

var<private> global2: array<vec4<i32>, 20> = array<vec4<i32>, 20>(vec4<i32>(3401i, 10193i, 1i, -1i), vec4<i32>(-7932i, 2147483647i, -9361i, i32(-2147483648)), vec4<i32>(40920i, -1i, 2147483647i, -17834i), vec4<i32>(1i, -13948i, 2147483647i, 100977i), vec4<i32>(0i, 6754i, 1i, -2615i), vec4<i32>(43917i, 0i, 3538i, 9256i), vec4<i32>(-14411i, 17861i, 49301i, 0i), vec4<i32>(-14205i, -47867i, 46543i, 1i), vec4<i32>(-9772i, 12162i, 0i, -774i), vec4<i32>(-12153i, 1i, -7602i, -1i), vec4<i32>(-1i, 6732i, 0i, i32(-2147483648)), vec4<i32>(0i, -56640i, 2147483647i, -1054i), vec4<i32>(6911i, -33374i, -1i, 24866i), vec4<i32>(13188i, 0i, 0i, 1431i), vec4<i32>(2266i, 57219i, -33605i, 1i), vec4<i32>(18477i, -19949i, -1i, 12304i), vec4<i32>(2147483647i, 0i, 55756i, 1i), vec4<i32>(-6863i, -1i, -7876i, 0i), vec4<i32>(0i, -24246i, 0i, -1i), vec4<i32>(8376i, 0i, 1i, -10408i));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
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

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_5) -> vec4<u32> {
    global2 = array<vec4<i32>, 20>();
    global2 = array<vec4<i32>, 20>();
    var var_0 = min(0u, ~_wgslsmith_clamp_u32(arg_1.a, max(~global1[_wgslsmith_index_u32(0u, 22u)], _wgslsmith_dot_vec2_u32(arg_0.xy, vec2<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 22u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 22u)], 22u)]))), ~65083u));
    var var_1 = ~(~(-min(1i, -1i))) | _wgslsmith_div_i32(select(firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(49265i, 40432i), vec2<i32>(-10751i, -30206i))), 1i, true), max((i32(-1i) * -1i) << (u_input.a.x % 32u), min(i32(-1i) * -33230i, 1i)));
    global1 = array<u32, 22>();
    return vec4<u32>(_wgslsmith_add_u32(0u, (~arg_0.x ^ u_input.a.x) >> (arg_1.a % 32u)), abs(firstTrailingBit(1u)), _wgslsmith_mod_u32(u_input.a.x, 4294967295u), ~firstLeadingBit(_wgslsmith_dot_vec3_u32(select(arg_0, arg_0, vec3<bool>(false, global0.x, global0.x)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 55018u, 1u), arg_0))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(any(vec2<bool>(global0.x, global0.x)), firstLeadingBit(select(_wgslsmith_sub_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(37176u, 22u)], global1[_wgslsmith_index_u32(u_input.a.x, 22u)], global1[_wgslsmith_index_u32(4294967295u, 22u)]), vec3<u32>(28521u, global1[_wgslsmith_index_u32(4294967295u, 22u)], 1u)) >> (~vec3<u32>(4294967295u, 1u, 1u) % vec3<u32>(32u)), vec3<u32>(~u_input.a.x, ~u_input.a.x, u_input.a.x), true)));
    var_0 = Struct_2(true, var_0.b);
    var var_1 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1637f, 931f, global0.x)))) > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1199f * 345f)))));
    global1 = array<u32, 22>();
    var var_2 = vec3<i32>(0i, ~(~(i32(-1i) * -15913i)), 1i);
    return Struct_1(-var_2.x >> (u_input.a.x % 32u), func_3(vec3<u32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(global1[_wgslsmith_index_u32(var_0.b.x, 22u)], 1u, var_0.b.x, 4294967295u), abs(vec4<u32>(44617u, 69420u, 14526u, 35034u))), 22u)], 50904u, u_input.a.x), Struct_5(~_wgslsmith_clamp_u32(var_0.b.x, 3857u, global1[_wgslsmith_index_u32(u_input.a.x, 22u)]), firstLeadingBit(35882u))), 2147483647i, select(global0.x, !global0.x, var_0.a), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-959f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1949f, _wgslsmith_f_op_f32(round(-696f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2351f * 1579f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -1680f)) - _wgslsmith_f_op_f32(-1066f - -604f))));
}

fn func_4(arg_0: Struct_1) -> Struct_4 {
    global2 = array<vec4<i32>, 20>();
    let var_0 = firstLeadingBit(1049i);
    var var_1 = Struct_5(u_input.a.x, _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 22u)], 22u)], arg_0.b.x));
    let var_2 = !(!(!(!vec3<bool>(arg_0.d, arg_0.d, true))));
    var_1 = Struct_5(~(~1u), ~min(84926u, max(min(3325u, 4294967295u), _wgslsmith_div_u32(49335u, var_1.b))));
    return Struct_4(480f, arg_0.e.x, !func_2().d, Struct_1(var_0, ~_wgslsmith_div_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(arg_0.b.x, 22u)], 9969u, 0u, global1[_wgslsmith_index_u32(arg_0.b.x, 22u)]), vec4<u32>(var_1.b, 4294967295u, global1[_wgslsmith_index_u32(20610u, 22u)], 0u)) & _wgslsmith_mod_vec4_u32(arg_0.b | vec4<u32>(4294967295u, u_input.a.x, arg_0.b.x, global1[_wgslsmith_index_u32(76045u, 22u)]), _wgslsmith_mult_vec4_u32(vec4<u32>(24525u, 51397u, u_input.a.x, 15713u), arg_0.b)), var_0, ((i32(-1i) * -25218i) <= arg_0.c) & global0.x, vec4<f32>(_wgslsmith_f_op_f32(1902f - -1000f), arg_0.e.x, arg_0.e.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(872f, -172f)), arg_0.e.x)))));
}

fn func_5(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: Struct_5) -> bool {
    var var_0 = func_2();
    global1 = array<u32, 22>();
    global1 = array<u32, 22>();
    var var_1 = vec3<bool>(!all(vec3<bool>(global0.x, true, true)), !global0.x, func_4(func_4(arg_0.d).d).c);
    var var_2 = Struct_2(arg_1.x, vec3<u32>(func_3(vec3<u32>(1u, max(37283u, 13931u), var_0.b.x), Struct_5(arg_2.b, min(9629u, global1[_wgslsmith_index_u32(arg_0.d.b.x, 22u)]))).x, var_0.b.x, ~_wgslsmith_mod_u32(arg_2.b, u_input.a.x << (10254u % 32u))));
    return all(select(select(vec3<bool>(true, true, true), !(!vec3<bool>(true, arg_1.x, arg_1.x)), vec3<bool>(true, !global0.x, true)), vec3<bool>(var_0.d, func_4(func_2()).d.d, func_4(arg_0.d).c), select(19567u < _wgslsmith_clamp_u32(0u, 94897u, u_input.a.x), select(arg_0.c, arg_1.x, 62421i >= arg_0.d.a), var_2.a)));
}

fn func_1(arg_0: Struct_5, arg_1: vec4<i32>) -> vec3<u32> {
    global2 = array<vec4<i32>, 20>();
    let var_0 = vec3<bool>(select(global0.x, !any(!vec3<bool>(global0.x, false, false)), any(select(!vec4<bool>(global0.x, false, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(global0.x, false, false, true), vec4<bool>(global0.x, true, true, global0.x), vec4<bool>(true, false, global0.x, false))))), any(vec3<bool>(true, true, true)), all(select(vec2<bool>(true, all(vec3<bool>(global0.x, global0.x, false))), select(!global0.yx, global0.yz, arg_1.x > -31315i), select(global0.xz, select(vec2<bool>(global0.x, true), vec2<bool>(false, global0.x), true), false))));
    global0 = vec3<bool>(!global0.x & var_0.x, true, !func_5(func_4(func_2()), !select(var_0.zz, vec2<bool>(true, global0.x), global0.zx), Struct_5(arg_0.a, 21775u)));
    global1 = array<u32, 22>();
    let var_1 = vec4<u32>(~(~global1[_wgslsmith_index_u32(~(~global1[_wgslsmith_index_u32(1687u, 22u)]), 22u)]), _wgslsmith_add_u32(_wgslsmith_sub_u32(func_4(Struct_1(arg_1.x, vec4<u32>(1u, global1[_wgslsmith_index_u32(arg_0.b, 22u)], 10207u, 9u), arg_1.x, var_0.x, vec4<f32>(-300f, 408f, -869f, 254f))).d.b.x, 1u), 4294967295u) & (select(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(66208u, 22u)], 22u)], 22u)], global1[_wgslsmith_index_u32(~0u, 22u)], arg_1.x <= 2147483647i) ^ 70462u), global1[_wgslsmith_index_u32(max(global1[_wgslsmith_index_u32(abs(37010u), 22u)], u_input.a.x), 22u)], _wgslsmith_mult_u32(_wgslsmith_sub_u32(arg_0.a, 4294967295u), u_input.a.x));
    return vec3<u32>(1u, arg_0.a ^ (abs(arg_0.b) << (_wgslsmith_sub_u32(25753u, 24406u) % 32u)), ~(~arg_0.b | arg_0.a)) ^ ~(~(var_1.yyy & ~var_1.yyw));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(firstTrailingBit(~firstLeadingBit(~vec4<u32>(u_input.a.x, 17892u, 10690u, 57200u))));
    let var_1 = Struct_3(Struct_2(global0.x, reverseBits(var_0.wzx ^ func_1(Struct_5(14055u, 3203u), vec4<i32>(-13225i, 10952i, 1i, 13303i)))), Struct_2(true, abs(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) & var_0.zzx)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(sign(-1935f)), -2018f), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1318f), 721f), !global0.zz)) - vec2<f32>(1f, 155f)), -vec3<i32>(42885i << (u_input.a.x % 32u), func_4(func_4(Struct_1(38662i, vec4<u32>(var_0.x, 4294967295u, 0u, global1[_wgslsmith_index_u32(u_input.a.x, 22u)]), 0i, global0.x, vec4<f32>(909f, 1000f, 610f, 797f))).d).d.c, -1i), vec2<i32>(1i, 1i));
    global2 = array<vec4<i32>, 20>();
    var_0 = vec4<u32>(var_0.x, ~34603u, ~var_0.x, var_1.a.b.x);
    global2 = array<vec4<i32>, 20>();
    global1 = array<u32, 22>();
    var var_2 = global1[_wgslsmith_index_u32(~(~(~global1[_wgslsmith_index_u32(u_input.a.x, 22u)])), 22u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(var_0.x, 0u, u_input.a.x, global1[_wgslsmith_index_u32(4294967295u, 22u)])), ~_wgslsmith_add_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(0u, 22u)], 30073u, var_1.b.b.x, 4294967295u), vec4<u32>(4294967295u, 78256u, 4294967295u, 4294967295u))) >> ((func_2().b >> (_wgslsmith_mult_vec4_u32(~vec4<u32>(5674u, var_1.b.b.x, 4294967295u, 41586u), vec4<u32>(u_input.a.x, 55237u, 4294967295u, u_input.a.x) << (vec4<u32>(4294967295u, 36738u, u_input.a.x, 1u) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u)), ~_wgslsmith_dot_vec3_i32(var_1.d, -vec3<i32>(var_1.e.x, var_1.e.x, 1i)), u_input.a.x);
}

