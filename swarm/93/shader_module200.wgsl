struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 11> = array<vec3<i32>, 11>(vec3<i32>(17621i, 35453i, -19717i), vec3<i32>(1i, 4010i, -1i), vec3<i32>(42942i, 13514i, 18920i), vec3<i32>(31254i, -58523i, i32(-2147483648)), vec3<i32>(1i, 16829i, 0i), vec3<i32>(-2676i, 52246i, 2147483647i), vec3<i32>(17998i, -1i, i32(-2147483648)), vec3<i32>(-1i, 17118i, -22971i), vec3<i32>(i32(-2147483648), 2351i, 1i), vec3<i32>(-11916i, -33897i, -7159i), vec3<i32>(1i, 1i, 30073i));

var<private> global1: array<i32, 23> = array<i32, 23>(-4139i, -4226i, 5453i, -10624i, 0i, 1i, 2147483647i, i32(-2147483648), 40163i, 0i, 22891i, -1i, -15289i, i32(-2147483648), 385i, 2147483647i, i32(-2147483648), i32(-2147483648), i32(-2147483648), -1i, i32(-2147483648), -47374i, 0i);

var<private> global2: array<u32, 17> = array<u32, 17>(1u, 4294967295u, 2407u, 1163u, 0u, 49253u, 8335u, 0u, 15454u, 22276u, 4294967295u, 1u, 0u, 80082u, 0u, 10828u, 4294967295u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3) -> u32 {
    global0 = array<vec3<i32>, 11>();
    let var_0 = ~(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(17641u, 58136u, 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 17u)], 17u)], 17u)], 17u)], 17u)]), vec4<u32>(16044u, 26688u, 0u, 0u)) << (~vec4<u32>(0u, global2[_wgslsmith_index_u32(4294967295u, 17u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(59786u, 17u)], 17u)], 1u) % vec4<u32>(32u))) ^ abs(~vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 17u)], 17u)], 17u)], 17u)], 17u)], 68470u, 85711u, 4294967295u)));
    var var_1 = vec2<bool>(false, false);
    global1 = array<i32, 23>();
    global0 = array<vec3<i32>, 11>();
    return min(~global2[_wgslsmith_index_u32(0u, 17u)], 1u);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(48289u, _wgslsmith_div_u32(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~1u, 17u)], 17u)])), 23u)]);
    global2 = array<u32, 17>();
    let var_1 = Struct_1(u_input.c.zy, !all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true))));
    let var_2 = _wgslsmith_sub_vec2_u32(vec2<u32>(~func_3(Struct_3(1i)), global2[_wgslsmith_index_u32(~0u, 17u)]), _wgslsmith_div_vec2_u32(~(~(~vec2<u32>(14336u, 4294967295u))), ~vec2<u32>(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(71963u, 17u)], 17u)], ~10046u)));
    let var_3 = var_2;
    return Struct_1(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(~u_input.e, u_input.b) << (~(~var_3) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, var_0.a), ~countOneBits(u_input.b))), false);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_2 {
    global0 = array<vec3<i32>, 11>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1506f + -726f) - _wgslsmith_f_op_f32(f32(-1f) * -290f));
    var var_1 = Struct_3(abs(abs(-1i)));
    let var_2 = global0[_wgslsmith_index_u32(select(46143u, 0u, false), 11u)];
    var var_3 = global2[_wgslsmith_index_u32(4294967295u, 17u)];
    return Struct_2(~_wgslsmith_mod_u32(abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(33268u, 24827u, 6353u), vec3<u32>(global2[_wgslsmith_index_u32(46068u, 17u)], 69266u, 7972u)), 17u)], 17u)]), ~_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(17078u, 17u)], 2682u)), select(!(!(!vec4<bool>(arg_1.b, false, arg_0.x, false))), vec4<bool>(arg_1.b, !(arg_0.x || arg_1.b), true, true), select(select(vec4<bool>(false, arg_1.b, arg_0.x, true), vec4<bool>(true, true, true, false), true), select(vec4<bool>(arg_0.x, arg_1.b, arg_0.x, arg_0.x), !vec4<bool>(true, true, arg_1.b, false), false), vec4<bool>(select(arg_1.b, arg_0.x, false), any(arg_0), all(vec3<bool>(arg_1.b, arg_1.b, false)), !arg_1.b))));
}

fn func_1(arg_0: vec3<f32>) -> bool {
    global1 = array<i32, 23>();
    global1 = array<i32, 23>();
    var var_0 = func_4(vec2<bool>(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 17u)], 17u)] & 17889u, 17u)] < (~5694u >> (_wgslsmith_div_u32(global2[_wgslsmith_index_u32(47286u, 17u)], 3531u) % 32u)), false), func_2());
    global1 = array<i32, 23>();
    var_0 = func_4(vec2<bool>(var_0.b.x, any(!select(var_0.b.ww, vec2<bool>(var_0.b.x, var_0.b.x), var_0.b.xz))), func_2());
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-273f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -537f) + _wgslsmith_f_op_f32(select(-447f, -1252f, false)))) + _wgslsmith_f_op_f32(-105f - 149f)));
    let var_1 = select(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), func_1(vec3<f32>(-233f, 487f, -502f)))), !select(vec2<bool>(true, true), func_4(vec2<bool>(false, false), Struct_1(u_input.e, true)).b.yy, !(84176u == global2[_wgslsmith_index_u32(38549u, 17u)])), func_2().b);
    var var_2 = var_1.x;
    var var_3 = Struct_1(u_input.b, var_1.x);
    let var_4 = Struct_2(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(func_3(Struct_3(u_input.b.x)), 17u)], global2[_wgslsmith_index_u32(firstLeadingBit(4115u), 17u)]), 17u)], 17u)], 17u)], _wgslsmith_mult_u32(firstTrailingBit(66816u) ^ max(global2[_wgslsmith_index_u32(34580u, 17u)], 1u), 0u)), vec4<bool>(all(func_4(var_1, func_2()).b.yw), func_4(select(var_1, vec2<bool>(var_3.b, var_3.b), true), Struct_1(vec2<i32>(88084i, -4713i), var_3.b)).b.x && (global2[_wgslsmith_index_u32(41982u, 17u)] < ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(12684u, 17u)], 17u)]), !(!var_3.b), select(_wgslsmith_div_i32(-31134i, u_input.d.x) < _wgslsmith_clamp_i32(var_3.a.x, -1i, -1i), 2978u < global2[_wgslsmith_index_u32(min(36495u, global2[_wgslsmith_index_u32(4294967295u, 17u)]), 17u)], true)));
    let var_5 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, func_3(Struct_3(-u_input.d.x)), var_4.a), vec3<u32>(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(min(4294967295u, ~global2[_wgslsmith_index_u32(47147u, 17u)]), 17u)], func_4(vec2<bool>(true, true), Struct_1(var_3.a, var_1.x)).a), 4294967295u, var_4.a << (_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(max(global2[_wgslsmith_index_u32(var_4.a, 17u)], 0u), 17u)], ~0u, ~1u) % 32u))), 17u)];
    let var_6 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1408f, -1000f)) - _wgslsmith_f_op_f32(-938f + -585f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(297f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-512f - 1576f) * _wgslsmith_div_f32(2470f, -1068f)) * _wgslsmith_f_op_f32(-1489f - -970f))))));
    let x = u_input.a;
    s_output = StorageBuffer(908f, 4294967295u, var_6, global0[_wgslsmith_index_u32(func_4(!select(var_1, var_1, !var_4.b.zx), Struct_1(var_3.a, false)).a, 11u)]);
}

