struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<i32>,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18>;

var<private> global1: array<u32, 4> = array<u32, 4>(44253u, 0u, 33124u, 20814u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2() -> f32 {
    let var_0 = ~vec2<u32>(~global1[_wgslsmith_index_u32(abs(1u), 4u)], u_input.b.x) << (_wgslsmith_mod_vec2_u32(~(~vec2<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 4u)], 110987u)), u_input.a >> (vec2<u32>(u_input.b.x, firstLeadingBit(global1[_wgslsmith_index_u32(0u, 4u)])) % vec2<u32>(32u))) % vec2<u32>(32u));
    let var_1 = false;
    var var_2 = ~abs(reverseBits(~vec3<i32>(2147483647i, -1i, -16310i)) & -(vec3<i32>(2147483647i, -2147483647i, 1i) >> (u_input.b.xxx % vec3<u32>(32u))));
    var_2 = min(firstTrailingBit(vec3<i32>(-18570i, 0i, _wgslsmith_div_i32(8058i, var_2.x)) >> (u_input.b.xwy % vec3<u32>(32u))), vec3<i32>(~(-var_2.x) | -11424i, ~1i, -1i));
    global1 = array<u32, 4>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 486f);
}

fn func_1(arg_0: Struct_4, arg_1: bool, arg_2: Struct_2, arg_3: Struct_2) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec3<f32>, arg_3: Struct_3) -> vec4<bool> {
    let var_0 = select(vec2<bool>(false, all(select(vec2<bool>(true, true), !vec2<bool>(arg_0.a, false), true))), select(select(vec2<bool>(true, true), select(select(vec2<bool>(false, arg_0.a), vec2<bool>(arg_0.a, arg_1), arg_0.a), vec2<bool>(false, true), !vec2<bool>(arg_0.a, arg_0.a)), vec2<bool>(arg_0.a, arg_1)), select(select(vec2<bool>(true, arg_1), vec2<bool>(false, false), false), select(select(vec2<bool>(true, arg_0.a), vec2<bool>(true, arg_1), vec2<bool>(arg_1, arg_0.a)), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, arg_0.a)), !vec2<bool>(false, arg_0.a)), !arg_0.a), select(select(select(vec2<bool>(arg_0.a, false), vec2<bool>(arg_0.a, arg_1), vec2<bool>(true, arg_0.a)), !vec2<bool>(false, arg_0.a), true), !(!vec2<bool>(true, arg_1)), select(select(vec2<bool>(arg_0.a, false), vec2<bool>(true, true), arg_0.a), select(vec2<bool>(arg_1, arg_0.a), vec2<bool>(false, true), true), all(vec4<bool>(false, false, false, arg_0.a))))), select(select(vec2<bool>(!arg_1, arg_1), vec2<bool>(true, true), select(select(vec2<bool>(arg_1, arg_1), vec2<bool>(false, true), arg_1), vec2<bool>(false, arg_1), !vec2<bool>(arg_1, arg_0.a))), select(vec2<bool>(true, arg_1), select(!vec2<bool>(arg_1, false), vec2<bool>(arg_1, true), vec2<bool>(arg_0.a, arg_0.a)), vec2<bool>(true, arg_1)), true));
    let var_1 = min(_wgslsmith_div_i32(_wgslsmith_mult_i32(arg_3.d, -1i) ^ arg_3.c, firstTrailingBit(i32(-1i) * -1i)), -1i) < max(abs(~(arg_3.d << (arg_3.b % 32u))), _wgslsmith_div_i32(arg_3.d, _wgslsmith_add_i32(-arg_3.c, _wgslsmith_mult_i32(0i, 1i))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(1580f)), -817f) + vec2<f32>(_wgslsmith_f_op_f32(round(arg_2.x)), _wgslsmith_f_op_f32(-arg_2.x)))));
    let var_3 = arg_3;
    var var_4 = Struct_4(arg_0, ~u_input.b, true);
    return vec4<bool>(-1i != -_wgslsmith_dot_vec2_i32(abs(vec2<i32>(arg_3.d, arg_3.c)), vec2<i32>(arg_3.c, -70136i)), (!arg_0.a & arg_0.a) || var_0.x, (var_3.a.x >= var_4.a.d) && arg_0.a, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_div_f32(778f, 1396f), _wgslsmith_f_op_f32(min(var_3.a.x, -1352f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-467f + arg_3.a.x) - _wgslsmith_f_op_f32(-var_2.x)))) >= _wgslsmith_f_op_f32(-var_4.a.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 4u)], 18u)];
    var var_1 = _wgslsmith_dot_vec4_i32(~abs(vec4<i32>(0i, -2147483647i, var_0.c.x, var_0.c.x)), ~(~vec4<i32>(var_0.b, var_0.b, var_0.b, var_0.b))) << (1u % 32u);
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.a.e.x, var_0.e.d, _wgslsmith_f_op_f32(-var_0.e.d), _wgslsmith_f_op_f32(1778f - _wgslsmith_f_op_f32(var_0.d.x + var_0.d.x))))), vec4<f32>(-900f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1599f) - _wgslsmith_f_op_f32(-360f - var_0.a.c)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(Struct_4(var_0.a, vec4<u32>(21415u, u_input.b.x, 26793u, global1[_wgslsmith_index_u32(u_input.b.x, 4u)]), true), false, global0[_wgslsmith_index_u32(4294967295u, 18u)], Struct_2(Struct_1(var_0.e.a, global1[_wgslsmith_index_u32(u_input.a.x, 4u)], var_0.e.e.x, -398f, vec4<f32>(620f, var_0.a.c, -758f, 979f)), var_0.c.x, var_0.c, vec3<f32>(var_0.a.c, var_0.d.x, var_0.e.c), var_0.a)))))), var_0.e.d, var_0.d.x));
    let var_3 = !select(select(select(select(vec4<bool>(true, var_0.a.a, var_0.a.a, var_0.e.a), vec4<bool>(false, true, false, false), false), !vec4<bool>(var_0.e.a, var_0.a.a, var_0.e.a, false), all(vec4<bool>(false, var_0.e.a, false, false))), vec4<bool>(!var_0.e.a, !var_0.e.a, var_2.x <= 622f, true), !vec4<bool>(true, true, var_0.a.a, true)), select(select(!vec4<bool>(var_0.e.a, false, false, var_0.e.a), vec4<bool>(true, true, var_0.a.a, var_0.a.a), true), select(vec4<bool>(true, false, var_0.a.a, var_0.a.a), vec4<bool>(false, var_0.e.a, true, true), vec4<bool>(var_0.e.a, var_0.e.a, var_0.a.a, false)), !select(vec4<bool>(var_0.a.a, false, false, false), vec4<bool>(var_0.e.a, var_0.e.a, false, var_0.a.a), var_0.a.a)), func_3(var_0.e, var_0.a.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.e.e.wzx, vec3<f32>(729f, -771f, 1462f))), Struct_3(vec4<f32>(-1015f, var_2.x, var_2.x, -1380f), _wgslsmith_div_u32(0u, 32761u), _wgslsmith_clamp_i32(var_0.b, -15322i, var_0.c.x), 40103i)));
    let var_4 = !vec2<bool>(!var_3.x, all(vec2<bool>(any(var_3.xxx), false)));
    var var_5 = func_3(Struct_1(var_3.x, 43399u, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-1469f)), _wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(var_2.x, -1526f)))))), var_0.d.x, vec4<f32>(_wgslsmith_div_f32(1378f, -677f), var_2.x, _wgslsmith_f_op_f32(sign(var_0.d.x)), var_2.x)), !(global1[_wgslsmith_index_u32(0u, 4u)] >= select(~u_input.b.x, countOneBits(12867u), !var_0.e.a)), var_0.a.e.yxz, Struct_3(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.e.x, 1353f, var_2.x, var_2.x) - var_0.e.e) * vec4<f32>(var_0.d.x, 1342f, 455f, -576f)))), max(4294967295u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(4294967295u, var_0.e.b), ~24664u)), var_0.c.x << (1u % 32u), ~var_0.b)).zy;
    var var_6 = abs(4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(u_input.b.x, global1[_wgslsmith_index_u32(1u, 4u)] | var_0.e.b)), _wgslsmith_clamp_vec2_u32(~min(u_input.b.xz, u_input.b.xy), u_input.b.zy, vec2<u32>(min(var_0.e.b, 4294967295u), u_input.b.x))), abs(var_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.x)) + 530f));
}

