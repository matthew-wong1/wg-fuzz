struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: i32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 2>;

var<private> global1: u32 = 0u;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec3<f32>(1000f, -1000f, -167f), 4294967295u, -1i, false, true));

var<private> global3: array<vec3<i32>, 20>;

var<private> global4: array<bool, 1> = array<bool, 1>(false);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: vec3<f32>, arg_1: u32) -> Struct_2 {
    var var_0 = Struct_2(global2.a);
    let var_1 = false;
    return Struct_2(var_0.a);
}

fn func_3() -> Struct_1 {
    global0 = array<vec4<i32>, 2>();
    global2 = Struct_2(global2.a);
    var var_0 = _wgslsmith_f_op_f32(max(global2.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(1509f)))) + _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(1555f * 356f), false))) - 724f)));
    let var_1 = global2.a.a.xy;
    global4 = array<bool, 1>();
    return func_2(vec3<f32>(-541f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.a.x)), global2.a.a.x), 4294967295u).a;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> Struct_2 {
    var var_0 = 19393u;
    global3 = array<vec3<i32>, 20>();
    let var_1 = ~(~vec4<u32>(arg_1.a.b, 35894u, ~global2.a.b, arg_1.a.b) >> (~vec4<u32>(arg_2.b, ~arg_0.a.b, 22959u & global2.a.b, reverseBits(4294967295u)) % vec4<u32>(32u)));
    var var_2 = -17311i;
    var var_3 = var_1.yyw;
    return func_2(arg_1.a.a, ~(~(abs(arg_1.a.b) >> (_wgslsmith_dot_vec4_u32(var_1, var_1) % 32u))));
}

fn func_1() -> vec2<i32> {
    let var_0 = -abs(-countOneBits(-vec4<i32>(-1i, 1i, u_input.a.x, global2.a.c)));
    var var_1 = func_4(func_2(_wgslsmith_f_op_vec3_f32(-global2.a.a), ~(~global2.a.b)), Struct_2(func_3()), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global2.a.a.x, global2.a.a.x, 830f), vec3<f32>(-1753f, 930f, 1000f)) + vec3<f32>(525f, global2.a.a.x, -551f)))), global2.a.b, _wgslsmith_div_i32(1i, -u_input.a.x), true, -_wgslsmith_mult_i32(var_0.x, 6594i) < abs(_wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(87060u, 2u)], var_0))), i32(-1i) * -var_0.x);
    var var_2 = select(vec3<bool>(select(global4[_wgslsmith_index_u32(func_2(var_1.a.a, var_1.a.b << (4294967295u % 32u)).a.b, 1u)], global2.a.e, !(1u < var_1.a.b)), !(1000f == _wgslsmith_f_op_f32(sign(var_1.a.a.x))), global4[_wgslsmith_index_u32(~(~4294967295u), 1u)]), select(select(vec3<bool>(true, true, true), vec3<bool>(var_1.a.e, all(vec2<bool>(true, false)), any(vec3<bool>(true, global2.a.d, true))), _wgslsmith_f_op_f32(f32(-1f) * -385f) > _wgslsmith_f_op_f32(select(var_1.a.a.x, 1162f, global2.a.d))), select(vec3<bool>(true, true, true), vec3<bool>(select(global2.a.d, global4[_wgslsmith_index_u32(7113u, 1u)], global4[_wgslsmith_index_u32(global2.a.b, 1u)]), true, true), !(!global2.a.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.a.x)) <= var_1.a.a.x), !select(vec3<bool>(true, all(vec2<bool>(true, false)), global2.a.e), !select(vec3<bool>(global2.a.e, true, false), vec3<bool>(global4[_wgslsmith_index_u32(var_1.a.b, 1u)], false, false), vec3<bool>(false, global2.a.d, global4[_wgslsmith_index_u32(14007u, 1u)])), !(global4[_wgslsmith_index_u32(global2.a.b, 1u)] || var_1.a.e)));
    let var_3 = _wgslsmith_mult_vec3_u32(~select(~vec3<u32>(global2.a.b, 4294967295u, 20190u), firstLeadingBit(vec3<u32>(global2.a.b, var_1.a.b, 5380u)), select(vec3<bool>(var_1.a.d, false, global2.a.d), vec3<bool>(var_2.x, global2.a.e, false), vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 1u)], global4[_wgslsmith_index_u32(60514u, 1u)], false))), vec3<u32>(global2.a.b, var_1.a.b, _wgslsmith_mod_u32(78951u, 1u)) | _wgslsmith_mod_vec3_u32(abs(vec3<u32>(4294967295u, var_1.a.b, 64524u)), vec3<u32>(global2.a.b, global2.a.b, 4294967295u) << (vec3<u32>(44927u, global2.a.b, global2.a.b) % vec3<u32>(32u)))) | (vec3<u32>(var_1.a.b | 54887u, 4294967295u, ~0u) & abs(_wgslsmith_add_vec3_u32(vec3<u32>(1u, global2.a.b, 52368u), ~vec3<u32>(1u, 1u, global2.a.b))));
    global0 = array<vec4<i32>, 2>();
    return vec2<i32>(abs(1i), u_input.a.x);
}

fn func_5(arg_0: i32, arg_1: vec4<u32>, arg_2: vec4<i32>, arg_3: u32) -> u32 {
    let var_0 = !global4[_wgslsmith_index_u32(16738u, 1u)];
    var var_1 = _wgslsmith_mult_vec2_u32(~_wgslsmith_add_vec2_u32(arg_1.zx, ~arg_1.xx), vec2<u32>(~func_3().b, global2.a.b));
    var var_2 = Struct_1(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.a.a)), _wgslsmith_mult_u32(arg_3, 4294967295u)).a.a, var_1.x, -2147483647i, func_3().d, all(select(vec4<bool>(false, var_0, !global4[_wgslsmith_index_u32(global2.a.b, 1u)], var_0 & true), vec4<bool>(any(vec2<bool>(global2.a.e, true)), var_0, arg_0 > arg_0, func_2(global2.a.a, var_1.x).a.e), !vec4<bool>(global2.a.e, var_0, var_0, false))));
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-global2.a.a), 4294967295u, -_wgslsmith_mult_i32(62229i, select(22118i, 23146i, var_0)), !func_4(func_4(Struct_2(global2.a), Struct_2(global2.a), global2.a, -739i), Struct_2(global2.a), func_3(), -1233i & global2.a.c).a.e, func_3().d));
    global4 = array<bool, 1>();
    return 16895u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(~(-61916i), _wgslsmith_mod_vec4_u32(vec4<u32>(global2.a.b, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.a.b, global2.a.b, 69007u, 50734u), vec4<u32>(4294967295u, global2.a.b, global2.a.b, global2.a.b)), 49369u, ~1u), 33691u, global2.a.b), ~_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(global2.a.b, global2.a.b, 1u, 4294967295u)), vec4<u32>(global2.a.b, 1u, 4294967295u, global2.a.b))), vec4<i32>(_wgslsmith_dot_vec2_i32(~func_1(), ~u_input.a.yw), 16360i, _wgslsmith_mult_i32(u_input.a.x, 2147483647i), u_input.a.x), firstLeadingBit(~((global2.a.b & global2.a.b) & _wgslsmith_add_u32(57888u, 30044u))));
    global0 = array<vec4<i32>, 2>();
    global3 = array<vec3<i32>, 20>();
    let var_1 = global2.a;
    var var_2 = global2.a.a;
    global4 = array<bool, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(~(abs(vec4<u32>(9703u, var_0, 4294967295u, global2.a.b)) | (select(vec4<u32>(32423u, global2.a.b, var_0, global2.a.b), vec4<u32>(59917u, var_1.b, 1u, var_1.b), true) >> (vec4<u32>(69960u, 48572u, var_1.b, global2.a.b) % vec4<u32>(32u)))));
}

