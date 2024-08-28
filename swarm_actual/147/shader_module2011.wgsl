struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23>;

var<private> global1: bool;

var<private> global2: i32 = -13488i;

var<private> global3: u32;

var<private> global4: Struct_1;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<bool>) -> vec4<i32> {
    global2 = countOneBits(-21121i);
    let var_0 = Struct_1(166f, -select(~select(vec4<i32>(-2147483647i, global4.d, 30102i, 1i), global4.b, vec4<bool>(true, false, false, false)), countOneBits(global4.b), vec4<bool>(true, true, true, true)), -2594f, -global4.d);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(select(431f, var_0.c, !any(!vec4<bool>(global0[_wgslsmith_index_u32(58831u, 23u)], arg_1.x, global0[_wgslsmith_index_u32(u_input.b.x, 23u)], arg_1.x)))), -min(vec4<i32>(var_0.b.x, select(var_0.d, -1i, arg_1.x), -2147483647i, -27239i), firstTrailingBit(firstTrailingBit(global4.b))), 679f, -_wgslsmith_sub_i32(i32(-1i) * -var_0.d, _wgslsmith_mod_i32(var_0.b.x, global4.d)));
    var var_2 = ~(~(~u_input.a));
    let var_3 = firstLeadingBit((_wgslsmith_dot_vec4_i32(var_0.b & vec4<i32>(2147483647i, 42333i, global4.d, global4.d), vec4<i32>(global4.b.x, -60355i, -1i, global4.b.x) & global4.b) << (select(~u_input.b.x, 1u, true) % 32u)) >> (0u % 32u));
    return vec4<i32>(-(~(-(var_0.d | var_3))), abs(i32(-1i) * -_wgslsmith_dot_vec2_i32(global4.b.zz, vec2<i32>(-1i, 34988i))), var_1.b.x, -1i);
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1178f, 1000f, arg_0.c)) * vec3<f32>(_wgslsmith_f_op_f32(abs(420f)), _wgslsmith_div_f32(arg_0.c, arg_0.c), _wgslsmith_div_f32(global4.c, arg_0.c)))));
    let var_1 = vec2<bool>(any(select(vec4<bool>(true, true, true, false), vec4<bool>(select(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], false, false), any(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(u_input.b.x, 23u)])), !global0[_wgslsmith_index_u32(4294967295u, 23u)], all(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(32252u, 23u)], global0[_wgslsmith_index_u32(71406u, 23u)]))), vec4<bool>(true, true, true, true))), _wgslsmith_dot_vec2_i32(-_wgslsmith_mult_vec2_i32(vec2<i32>(-38326i, arg_0.d), arg_0.b.xy), (global4.b.yz >> (vec2<u32>(1u, u_input.c.x) % vec2<u32>(32u))) | global4.b.xz) >= arg_0.d);
    return vec2<bool>(!var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.a)) + _wgslsmith_f_op_f32(-1166f * _wgslsmith_f_op_f32(var_0.x + 638f))) <= _wgslsmith_f_op_f32(ceil(var_0.x)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>) -> vec3<bool> {
    var var_0 = arg_1.zz;
    global0 = array<bool, 23>();
    var_0 = !select(func_4(Struct_1(_wgslsmith_f_op_f32(abs(-540f)), func_3(vec4<f32>(global4.a, -441f, -1153f, 826f), arg_1.zx), _wgslsmith_f_op_f32(global4.c - -460f), 10156i | arg_0.d), -1i), vec2<bool>(true, true), !any(arg_1));
    var var_1 = arg_0.d;
    global1 = arg_1.x;
    return arg_1;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<u32>) -> f32 {
    let var_0 = firstTrailingBit(global4.d);
    let var_1 = vec2<bool>(!any(func_2(arg_2, vec3<bool>(global0[_wgslsmith_index_u32(arg_3.x, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)], false))) != global0[_wgslsmith_index_u32(u_input.c.x, 23u)], true);
    global3 = arg_3.x;
    let var_2 = 0i;
    global2 = reverseBits(_wgslsmith_sub_i32(var_0, global4.b.x));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-168f * 1070f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -global4.b;
    global4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2165f), _wgslsmith_f_op_f32(func_1(Struct_1(-2054f, vec4<i32>(global4.d, -45978i, var_0.x, 0i), 836f, var_0.x), Struct_1(global4.c, vec4<i32>(19326i, global4.b.x, global4.d, 1i), 255f, -1i), Struct_1(-314f, vec4<i32>(-8641i, var_0.x, var_0.x, global4.b.x), global4.c, var_0.x), vec4<u32>(u_input.a.x, 72913u, u_input.c.x, u_input.a.x)))) * 625f) - _wgslsmith_f_op_f32(-global4.c)), global4.b ^ _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, _wgslsmith_mult_i32(1i, -1i), -2147483647i, ~var_0.x), var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.c * _wgslsmith_f_op_f32(global4.a + 1578f))), _wgslsmith_div_i32(25199i, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(var_0.zwy, vec3<i32>(40045i, 0i, 0i)) << (~vec3<u32>(u_input.c.x, u_input.b.x, u_input.a.x) % vec3<u32>(32u)), firstLeadingBit(select(vec3<i32>(22436i, 1i, var_0.x), vec3<i32>(global4.d, 0i, -15705i), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 23u)], global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)]))))));
    let var_1 = ~_wgslsmith_dot_vec3_u32(u_input.c, u_input.c);
    let var_2 = global4.a;
    let var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(44577i), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-193f, 203f, global4.a)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global4.a, global4.a), global4.c, 1f, 464f)), var_0.xzz);
}

