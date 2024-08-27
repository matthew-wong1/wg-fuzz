struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: bool,
    d: vec3<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 14> = array<vec2<bool>, 14>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true));

var<private> global1: Struct_1;

var<private> global2: vec4<u32>;

var<private> global3: array<u32, 21>;

var<private> global4: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global4 = arg_2;
    let var_0 = 1000f;
    var var_1 = arg_1;
    let var_2 = arg_2;
    var_1 = Struct_1(select(any(vec3<bool>(any(vec4<bool>(arg_2.a, false, false, true)), 1i < u_input.d.x, true)), select(!global1.a, all(vec4<bool>(false, global1.c, true, false)) || all(vec4<bool>(true, arg_1.c, false, true)), true), var_1.a), ~abs(vec2<u32>(u_input.c.x, 61708u) << (select(var_1.b, vec2<u32>(25935u, 4294967295u), true) % vec2<u32>(32u))), false, ~max(vec3<u32>(global4.d.x | 55651u, 4294967295u, ~46112u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, 1u, arg_1.b.x), ~vec3<u32>(124943u, 4294967295u, 30321u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(853f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.e))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.e))));
    return 4294967295u;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: u32, arg_3: vec3<i32>) -> Struct_1 {
    global3 = array<u32, 21>();
    global4 = Struct_1(1u >= ~select(72112u >> (u_input.a.x % 32u), ~arg_2, u_input.b.x < u_input.d.x), vec2<u32>(26217u, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c.x, global3[_wgslsmith_index_u32(1u, 21u)]) >> (u_input.e % 32u), 21u)]), false, _wgslsmith_add_vec3_u32(arg_0.d, abs(~_wgslsmith_mult_vec3_u32(vec3<u32>(21918u, arg_0.b.x, global1.b.x), vec3<u32>(u_input.a.x, u_input.a.x, global1.d.x)))), global4.e);
    global1 = Struct_1(global4.c, ~_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(23662u, global2.x), 1u), arg_0.d.yy), !arg_0.a, vec3<u32>(reverseBits(54530u), _wgslsmith_div_u32(firstLeadingBit(0u), global4.d.x), countOneBits(func_3(_wgslsmith_f_op_f32(-arg_0.e), arg_0, Struct_1(arg_0.c, u_input.c, global1.c, global4.d, global4.e)))), -616f);
    var var_0 = vec2<bool>(!(!(global4.b.x >= arg_0.b.x)), arg_1 < u_input.b.x);
    let var_1 = arg_0;
    return Struct_1(all(vec2<bool>(any(!vec4<bool>(arg_0.c, false, var_1.a, false)), !(var_1.c | var_0.x))), ~vec2<u32>(global4.b.x, ~(~81329u)), !(arg_1 == ~firstTrailingBit(29501i)), arg_0.d, _wgslsmith_f_op_f32(floor(global4.e)));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> f32 {
    return global4.e;
}

fn func_1() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1248f, global4.e, -1890f, 890f));
    var_0 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-global1.e), _wgslsmith_f_op_f32(select(global4.e, -824f, true)), 609f, _wgslsmith_f_op_f32(func_4(func_2(Struct_1(true, global1.d.xx, false, global1.d, var_0.x), -40040i, reverseBits(global4.d.x), -u_input.d.wzz), -40136i, Struct_1(false, u_input.c, any(vec4<bool>(true, global1.c, true, global1.c)), abs(global2.ywx), _wgslsmith_f_op_f32(var_0.x - var_0.x)), global1.a))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, global4.e, global1.e), _wgslsmith_f_op_vec4_f32(vec4<f32>(680f, 2162f, var_0.x, global1.e) + vec4<f32>(var_0.x, -776f, var_0.x, -1496f))))))));
    global2 = ~_wgslsmith_div_vec4_u32(vec4<u32>(~func_3(-976f, Struct_1(global4.a, vec2<u32>(23365u, global2.x), true, vec3<u32>(u_input.c.x, 1u, 1u), var_0.x), Struct_1(false, global1.d.zy, false, vec3<u32>(4294967295u, global4.b.x, global1.d.x), var_0.x)), 0u, _wgslsmith_sub_u32(39620u, 10838u), 71363u), vec4<u32>(_wgslsmith_mod_u32(u_input.c.x, 0u) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(global1.b.x, 38145u, 1u), vec3<u32>(123808u, 1u, global4.d.x)) % 32u), global4.b.x, ~u_input.c.x, max(_wgslsmith_div_u32(23761u, 1u), 0u)));
    var var_1 = Struct_1(true, _wgslsmith_mod_vec2_u32(vec2<u32>(firstTrailingBit(~global1.d.x), global2.x), ~((u_input.c | vec2<u32>(83166u, u_input.e)) | ~global4.b)), global1.c, global1.d, 1147f);
    var var_2 = vec3<bool>(_wgslsmith_f_op_f32(-func_2(Struct_1(true, vec2<u32>(4294967295u, 0u), global4.c, vec3<u32>(global1.d.x, global3[_wgslsmith_index_u32(var_1.b.x, 21u)], 47299u), -630f), abs(2109i), _wgslsmith_div_u32(global2.x, var_1.b.x), max(u_input.d.wwy, u_input.d.wzy)).e) == _wgslsmith_f_op_f32(global1.e - global1.e), global4.a, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1296f + global4.e), -545f, any(vec2<bool>(false, global4.a))))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.x + global1.e))) * global1.e));
    return !var_2.xx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(true, _wgslsmith_mult_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(global1.d.x, global3[_wgslsmith_index_u32(global2.x, 21u)], 1u), vec3<u32>(16955u, global2.x, 4637u)), abs(~14994u)), global4.b), all(func_1()) == global4.a, ~global2.yzz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.e)) * _wgslsmith_div_f32(-292f, -223f)));
    var var_1 = select(!global0[_wgslsmith_index_u32(global1.b.x, 14u)], !global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~4294967295u, 21u)], 14u)], !(!(!select(global0[_wgslsmith_index_u32(global4.b.x, 14u)], vec2<bool>(var_0.c, true), global1.a))));
    let var_2 = -32587i;
    let var_3 = 1u;
    let var_4 = 1u ^ select(var_3, ~abs(_wgslsmith_clamp_u32(25607u, 45989u, var_0.b.x)), func_1().x);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(-(~6338i)), abs(countOneBits(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.b, u_input.d.wz), firstTrailingBit(vec2<i32>(28765i, 51787i))))), var_2, ~(max(abs(vec2<u32>(global4.d.x, 95336u)), select(var_0.b, vec2<u32>(51218u, global1.d.x), vec2<bool>(true, global1.c))) << (firstLeadingBit(global4.d.yx | var_0.d.xz) % vec2<u32>(32u))));
}

