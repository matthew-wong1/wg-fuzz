struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 4> = array<vec4<f32>, 4>(vec4<f32>(547f, 1527f, -654f, 259f), vec4<f32>(-557f, 823f, 1526f, -449f), vec4<f32>(-809f, 278f, 2144f, -1000f), vec4<f32>(413f, -968f, -566f, 1626f));

var<private> global1: array<u32, 24>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> u32 {
    let var_0 = _wgslsmith_div_f32(-958f, 894f);
    var var_1 = select(!(!vec2<bool>(arg_0.c & arg_0.c, any(arg_0.a))), arg_0.a, arg_0.a);
    let var_2 = arg_0;
    let var_3 = !(!vec4<bool>(true, true, !var_1.x, !(var_1.x & true)));
    var_1 = var_3.xw;
    return u_input.b.x;
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = !vec2<bool>(true, select(any(vec2<bool>(false, true)) || true, false, true));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1f + 1516f)));
    var var_2 = 60324u;
    var_1 = 459f;
    var var_3 = ~(vec4<u32>(_wgslsmith_mod_u32(~u_input.b.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 24u)] & 12396u, 24u)]), 4294967295u, global1[_wgslsmith_index_u32(abs(u_input.c.x), 24u)], abs(8188u)) & _wgslsmith_mod_vec4_u32(abs(~vec4<u32>(arg_0.x, 3244u, arg_0.x, arg_0.x)), ~(~vec4<u32>(u_input.b.x, u_input.b.x, 1u, 92553u))));
    return Struct_1(select(vec2<bool>(var_0.x, true | var_0.x), select(select(vec2<bool>(false, true), vec2<bool>(var_0.x, var_0.x), false), select(!vec2<bool>(false, var_0.x), vec2<bool>(false, true), true), vec2<bool>(true, true)), !select(vec2<bool>(false, var_0.x), select(vec2<bool>(var_0.x, false), vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, var_0.x)), true)), max(vec4<u32>(_wgslsmith_add_u32(var_3.x, _wgslsmith_add_u32(0u, u_input.c.x)), _wgslsmith_mult_u32(4294967295u, var_3.x), ~reverseBits(37501u), global1[_wgslsmith_index_u32(func_3(Struct_1(vec2<bool>(var_0.x, false), vec4<u32>(15490u, var_3.x, 9925u, 1u), var_0.x, false), u_input.a.x), 24u)]), firstLeadingBit(vec4<u32>(1u, 30580u, arg_0.x, 38976u) & max(vec4<u32>(global1[_wgslsmith_index_u32(u_input.c.x, 24u)], 7356u, 1u, 62195u), vec4<u32>(4294967295u, arg_0.x, arg_0.x, 52333u)))), true, var_0.x);
}

fn func_4(arg_0: Struct_1) -> i32 {
    var var_0 = vec4<f32>(-127f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(543f + 995f), _wgslsmith_f_op_f32(f32(-1f) * -228f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -312f) + 1f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(659f))) + 1431f)), 773f, _wgslsmith_f_op_f32(1140f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(107f, 406f)))))));
    let var_1 = select(vec3<bool>(all(vec3<bool>(arg_0.a.x, arg_0.d, arg_0.d)) & !(true & arg_0.a.x), true, _wgslsmith_mult_i32(-2147483647i, u_input.a.x << (0u % 32u)) == _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x))), vec3<bool>(true, true, true), true);
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * -389f) + var_0.x) - -1302f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1028f)), _wgslsmith_f_op_f32(-1960f * _wgslsmith_f_op_f32(ceil(var_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -1937f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), var_0.x, true)))));
    let var_2 = select(vec3<bool>(var_1.x, arg_0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-873f)), -985f) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-306f * var_0.x) - -783f)), var_1, var_1);
    let var_3 = var_1.x | func_2(arg_0.b.zx).a.x;
    return _wgslsmith_sub_i32(-10566i, (max(1i, 49700i) >> (~_wgslsmith_mult_u32(4294967295u, u_input.b.x) % 32u)) | u_input.a.x);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>) -> u32 {
    var var_0 = 0i;
    var_0 = ~(~func_4(func_2(vec2<u32>(4294967295u, 1u))));
    var var_1 = arg_1;
    global1 = array<u32, 24>();
    let var_2 = Struct_1(vec2<bool>(arg_1.a.x, true), vec4<u32>(14473u, reverseBits(arg_0.b.x), min(4294967295u, 1u), arg_1.b.x), !all(vec2<bool>(true, false)), !var_1.a.x);
    return 36003u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 8051u;
    var var_1 = _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(~0u, ~(~global1[_wgslsmith_index_u32(14533u, 24u)])), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, func_1(Struct_1(vec2<bool>(false, false), vec4<u32>(4294967295u, u_input.b.x, global1[_wgslsmith_index_u32(u_input.c.x, 24u)], u_input.b.x), false, true), Struct_1(vec2<bool>(true, false), vec4<u32>(global1[_wgslsmith_index_u32(var_0, 24u)], 4294967295u, 20652u, 4294967295u), false, false), vec4<i32>(44457i, -1i, u_input.a.x, u_input.a.x))), vec2<u32>(abs(67444u), u_input.c.x))), 4u)] * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(global0[_wgslsmith_index_u32(0u, 4u)], _wgslsmith_f_op_vec4_f32(trunc(global0[_wgslsmith_index_u32(func_1(Struct_1(vec2<bool>(false, true), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0, 24u)], 24u)], 15083u, 55909u, 23339u), false, true), Struct_1(vec2<bool>(false, true), vec4<u32>(4294967295u, u_input.b.x, 44453u, 9330u), false, true), vec4<i32>(0i, u_input.a.x, u_input.a.x, 1i)), 4u)]))))));
    var var_2 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(~(global1[_wgslsmith_index_u32(0u, 24u)] & u_input.b.x), var_0 & var_0, ~(u_input.c.x & u_input.b.x)), ~(~(~vec3<u32>(49939u, var_0, 38953u))));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.wx) + _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.wx * var_1.wx) + _wgslsmith_f_op_vec2_f32(-var_1.yy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, var_1.x))))), var_1.zz));
    var var_4 = _wgslsmith_add_i32(firstLeadingBit(2506i), 32632i);
    let var_5 = Struct_1(vec2<bool>(all(vec4<bool>(true, true, false, any(vec3<bool>(true, true, false)))), !((u_input.a.x | 6952i) < u_input.a.x)), firstTrailingBit(max(~(vec4<u32>(4294967295u, var_0, 280u, u_input.c.x) ^ vec4<u32>(var_0, var_0, u_input.c.x, 1735u)), vec4<u32>(7274u | u_input.b.x, global1[_wgslsmith_index_u32(abs(u_input.b.x), 24u)], func_2(u_input.b.yy).b.x, _wgslsmith_sub_u32(u_input.b.x, global1[_wgslsmith_index_u32(22593u, 24u)])))), !any(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true))), false);
    var var_6 = select(var_5.b ^ ~_wgslsmith_mult_vec4_u32(vec4<u32>(8310u, global1[_wgslsmith_index_u32(var_0, 24u)], 21430u, 5770u) << (vec4<u32>(4294967295u, var_5.b.x, global1[_wgslsmith_index_u32(90631u, 24u)], u_input.b.x) % vec4<u32>(32u)), var_5.b), var_5.b, select(vec4<bool>(var_5.d, true, var_5.d, true), select(vec4<bool>(true, false, var_5.a.x, true), select(select(vec4<bool>(false, var_5.d, false, false), vec4<bool>(var_5.c, true, var_5.d, var_5.d), var_5.d), vec4<bool>(false, var_5.d, false, false), select(vec4<bool>(var_5.d, true, true, var_5.c), vec4<bool>(true, var_5.c, var_5.a.x, true), vec4<bool>(var_5.d, var_5.d, true, var_5.c))), any(vec3<bool>(var_5.d, true, var_5.c))), select(vec4<bool>(var_5.a.x, var_5.d | false, all(vec4<bool>(true, true, var_5.a.x, var_5.a.x)), select(var_5.a.x, false, var_5.c)), vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec4<bool>(false, false, var_5.a.x, true)), var_5.d, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
}

