struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(2147483647i, vec2<u32>(1u, 55535u), -958f);

var<private> global1: array<Struct_2, 14>;

var<private> global2: Struct_1;

var<private> global3: array<vec3<bool>, 20>;

var<private> global4: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(-8125i, vec2<u32>(0u, 18849u), 1637f), Struct_1(-1i, vec2<u32>(6578u, 1u), 1015f), Struct_1(1i, vec2<u32>(27797u, 0u), 808f), Struct_1(-17365i, vec2<u32>(38249u, 34346u), -226f), Struct_1(i32(-2147483648), vec2<u32>(0u, 4294967295u), 477f), Struct_1(14301i, vec2<u32>(2287u, 36737u), 517f), Struct_1(-1i, vec2<u32>(31424u, 0u), -481f), Struct_1(-19708i, vec2<u32>(54881u, 62902u), 1045f), Struct_1(i32(-2147483648), vec2<u32>(9376u, 40680u), -1655f), Struct_1(2147483647i, vec2<u32>(1u, 1u), 373f), Struct_1(-14331i, vec2<u32>(17557u, 1u), 1823f), Struct_1(111072i, vec2<u32>(1u, 41690u), 1000f), Struct_1(1i, vec2<u32>(49374u, 0u), 241f), Struct_1(i32(-2147483648), vec2<u32>(0u, 20878u), 676f), Struct_1(23969i, vec2<u32>(1u, 76278u), 356f), Struct_1(-1i, vec2<u32>(33067u, 1u), -1273f), Struct_1(i32(-2147483648), vec2<u32>(1u, 1u), -143f), Struct_1(i32(-2147483648), vec2<u32>(14910u, 21684u), 1000f), Struct_1(0i, vec2<u32>(21529u, 17730u), -1844f), Struct_1(45451i, vec2<u32>(4294967295u, 1u), 192f), Struct_1(2147483647i, vec2<u32>(22515u, 18725u), -799f), Struct_1(-17297i, vec2<u32>(56025u, 31275u), 113f));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = global2.b;
    var var_1 = !any(select(select(arg_0.a.zy, select(arg_1.zy, vec2<bool>(arg_1.x, arg_0.a.x), arg_0.a.ww), true), !vec2<bool>(arg_1.x, arg_1.x), arg_1.x));
    return global4[_wgslsmith_index_u32(12008u, 22u)];
}

fn func_3() -> vec4<bool> {
    global3 = array<vec3<bool>, 20>();
    global2 = Struct_1(global0.a, ~global2.b, _wgslsmith_f_op_f32(step(global2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c + _wgslsmith_f_op_f32(ceil(398f))) * _wgslsmith_f_op_f32(select(808f, _wgslsmith_f_op_f32(trunc(global2.c)), select(true, false, false)))))));
    global1 = array<Struct_2, 14>();
    global3 = array<vec3<bool>, 20>();
    var var_0 = func_2(global1[_wgslsmith_index_u32(~34663u, 14u)], select(select(vec4<bool>(true, true, true, 23190u > u_input.d.x), vec4<bool>(true, true, true, true), vec4<bool>(-1i <= global2.a, true, false, 1838f > global0.c)), !vec4<bool>(true, false, global2.b.x >= 4294967295u, true), !all(vec2<bool>(false, true)) | select(false, true, true)));
    return select(vec4<bool>(true, true, !(!select(true, false, true)), true), select(vec4<bool>(true, any(vec3<bool>(true, true, false)), !select(false, false, true), max(global0.b.x, global0.b.x) > _wgslsmith_div_u32(84225u, 1u)), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), false)), all(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false)))), vec4<bool>(~(~1u) >= reverseBits(~var_0.b.x), true, !all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), true));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(24876u & abs(~(~func_2(arg_1, vec4<bool>(arg_1.a.x, arg_1.a.x, true, arg_1.a.x)).b.x)), 14u)];
    global2 = global4[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(4294967295u, ~arg_0.b.x)), 22u)];
    global4 = array<Struct_1, 22>();
    global2 = Struct_1(-global0.a, ~abs(arg_0.b), global0.c);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1035f), func_2(Struct_2(!vec4<bool>(true, true, false, arg_1.a.x)), var_0.a).c);
    return -global2.a;
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2) -> bool {
    var var_0 = -func_4(func_2(Struct_2(vec4<bool>(true, arg_1.a.x, true, true)), !(!vec4<bool>(false, arg_1.a.x, true, false))), Struct_2(select(func_3(), vec4<bool>(false, false, arg_1.a.x, true), !arg_1.a)));
    global0 = Struct_1(~_wgslsmith_sub_i32(~firstTrailingBit(-1341i), 38351i), _wgslsmith_sub_vec2_u32(global0.b, ~_wgslsmith_mod_vec2_u32(~arg_0.wz, u_input.a)), _wgslsmith_f_op_f32(f32(-1f) * -698f));
    global1 = array<Struct_2, 14>();
    global2 = global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(~0u, max(4469u, ~(~global0.b.x)) & 38221u), 22u)];
    let var_1 = countOneBits(arg_0);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, global0.b.x, global2.b.x), 22u)];
    global3 = array<vec3<bool>, 20>();
    var var_0 = reverseBits(select(reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(global2.b.x, global2.b.x, 9702u, u_input.a.x), vec4<u32>(4294967295u, 0u, 0u, global0.b.x))), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 845u, 62896u, 1u), ~vec4<u32>(1u, 12234u, global0.b.x, 31111u)), true)) | vec4<u32>(abs(firstTrailingBit(22276u)), _wgslsmith_mod_u32(~global2.b.x, ~countOneBits(u_input.a.x)), 66460u, _wgslsmith_dot_vec4_u32(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(34148u, 0u, u_input.d.x, 69322u), vec4<u32>(1448u, 29497u, 76124u, 1u))), ~(~vec4<u32>(global0.b.x, 0u, 4294967295u, 0u))));
    var_0 = max(~_wgslsmith_div_vec4_u32(select(vec4<u32>(u_input.d.x, var_0.x, global2.b.x, 4294967295u), vec4<u32>(var_0.x, 25574u, 78816u, global2.b.x), vec4<bool>(true, false, false, false)), _wgslsmith_div_vec4_u32(vec4<u32>(70047u, global2.b.x, 4294967295u, u_input.a.x), vec4<u32>(1u, global2.b.x, u_input.a.x, 13680u))), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(var_0.x, global0.b.x, u_input.d.x), _wgslsmith_dot_vec4_u32(vec4<u32>(39256u, u_input.d.x, global2.b.x, u_input.d.x), vec4<u32>(4294967295u, 12679u, 4294967295u, 0u))), var_0.x, _wgslsmith_div_u32(abs(global2.b.x), ~global2.b.x), 1u)) << (select(vec4<u32>(select(min(var_0.x, 13032u), global2.b.x ^ global0.b.x, false), u_input.a.x, _wgslsmith_mult_u32(abs(1u), 1u), min(global2.b.x, max(4420u, global2.b.x))), vec4<u32>(var_0.x, 26625u, 0u, abs(global0.b.x ^ 0u)), func_1(~vec4<u32>(4294967295u, u_input.d.x, u_input.d.x, u_input.d.x), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(41609u, global0.b.x) & u_input.a.x, 14u)])) % vec4<u32>(32u));
    let var_1 = vec2<f32>(global2.c, -491f);
    let x = u_input.a;
    s_output = StorageBuffer(global2.b, select(select(_wgslsmith_add_vec2_i32(u_input.c.zz, select(vec2<i32>(1i, global0.a), vec2<i32>(37281i, -1i), vec2<bool>(true, true))), max(~vec2<i32>(0i, -42150i), vec2<i32>(u_input.c.x, 447i)), true), -vec2<i32>(-2147483647i, _wgslsmith_mod_i32(global0.a, u_input.c.x)), !(_wgslsmith_clamp_i32(2147483647i, -1i, -2147483647i) != _wgslsmith_mult_i32(global0.a, 1i))), _wgslsmith_f_op_f32(sign(-548f)));
}

