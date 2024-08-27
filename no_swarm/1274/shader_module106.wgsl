struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25> = array<bool, 25>(false, false, false, true, true, true, false, true, true, false, true, false, true, true, false, true, true, false, true, true, false, true, false, false, false);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: vec4<u32>) -> u32 {
    var var_0 = arg_1.x;
    let var_1 = false;
    let var_2 = arg_1;
    var var_3 = vec2<i32>(arg_0.x, abs(-54455i));
    return countOneBits(arg_2.x);
}

fn func_3(arg_0: vec2<f32>) -> vec2<u32> {
    global0 = array<bool, 25>();
    var var_0 = u_input.a.x;
    let var_1 = -876f;
    var var_2 = Struct_2(Struct_1(true, _wgslsmith_f_op_vec2_f32(sign(arg_0)), -_wgslsmith_dot_vec3_i32(u_input.a.zwz << (vec3<u32>(5443u, 64618u, 8394u) % vec3<u32>(32u)), abs(vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x)))));
    var_2 = Struct_2(var_2.a);
    return vec2<u32>(~(~4294967295u), ~_wgslsmith_div_u32(abs(0u), _wgslsmith_add_u32(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(40371u, 46037u, 49773u), vec3<u32>(3790u, 203u, 3544u)))));
}

fn func_4(arg_0: vec4<i32>, arg_1: bool) -> vec4<bool> {
    let var_0 = Struct_1(true, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(397f, -372f)), _wgslsmith_f_op_f32(1296f * -1000f)))), arg_0.x);
    var var_1 = var_0;
    global0 = array<bool, 25>();
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.x), -1409f), var_1.b.x)), var_0.b.x)));
    let var_3 = any(vec2<bool>(var_1.a, var_0.b.x > -1489f));
    return vec4<bool>(true, !(all(vec3<bool>(true, false, var_0.a)) || true), false, var_0.a);
}

fn func_1(arg_0: f32, arg_1: vec2<bool>) -> vec4<f32> {
    var var_0 = func_4(abs(firstLeadingBit(vec4<i32>(2147483647i, ~u_input.a.x, _wgslsmith_div_i32(u_input.a.x, -1i), 13349i))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(1u, 4294967295u), func_2(u_input.a, vec2<bool>(true, true), vec4<u32>(0u, 1u, 33187u, 0u))) << (vec2<u32>(~4294967295u, ~15822u) % vec2<u32>(32u)), ~func_3(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(785f, -613f), vec2<f32>(arg_0, -959f))))), 25u)]);
    let var_1 = Struct_2(Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(35978u, 1u)), vec2<u32>(4294967295u, 27589u)), 25u)], vec2<f32>(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -676f)), -1i));
    var var_2 = var_1;
    var_0 = !(!(!select(select(vec4<bool>(false, arg_1.x, var_1.a.a, true), vec4<bool>(var_1.a.a, true, var_1.a.a, true), vec4<bool>(false, true, var_2.a.a, true)), !vec4<bool>(arg_1.x, var_1.a.a, false, true), true)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.b.x, 1405f, -1000f, -619f) * vec4<f32>(var_1.a.b.x, 778f, 1000f, var_1.a.b.x)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0, var_2.a.b.x, var_1.a.b.x, arg_0), vec4<f32>(853f, arg_0, 198f, -1194f))))), vec4<f32>(arg_0, -107f, _wgslsmith_f_op_f32(f32(-1f) * -1239f), _wgslsmith_f_op_f32(step(arg_0, var_1.a.b.x)))) * vec4<f32>(_wgslsmith_div_f32(-468f, var_1.a.b.x), _wgslsmith_f_op_f32(max(var_2.a.b.x, _wgslsmith_f_op_f32(round(-139f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.b.x) + _wgslsmith_f_op_f32(floor(var_2.a.b.x))), 1f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-433f * 279f), _wgslsmith_f_op_f32(arg_0 * var_1.a.b.x), _wgslsmith_f_op_f32(-arg_0), var_1.a.b.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(321f, 251f, arg_0, arg_0), vec4<f32>(var_2.a.b.x, 2713f, var_2.a.b.x, var_1.a.b.x))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(floor(598f)), _wgslsmith_f_op_f32(var_1.a.b.x * var_1.a.b.x), _wgslsmith_f_op_f32(floor(1201f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1288f, var_1.a.b.x, -321f, -2291f) + vec4<f32>(-1068f, -109f, -1344f, arg_0))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(f32(-1f) * -651f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(422f - 382f) + _wgslsmith_div_f32(776f, -122f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -535f)) * 1964f), 464f) + _wgslsmith_div_vec4_f32(vec4<f32>(-1467f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1293f, 1678f)))), 731f, _wgslsmith_div_f32(-1111f, -634f)), _wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(877f, 1000f))), vec2<bool>(all(vec2<bool>(false, true)), true)))));
    let var_1 = Struct_2(Struct_1(true, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -407f), var_0.x), _wgslsmith_clamp_i32(-min(20309i, 5181i), 2147483647i, _wgslsmith_clamp_i32(reverseBits(u_input.a.x), select(u_input.a.x, u_input.a.x, true), u_input.a.x))));
    var var_2 = var_0.x;
    global0 = array<bool, 25>();
    let var_3 = select(!(!(!select(vec3<bool>(var_1.a.a, false, true), vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 25u)], false), vec3<bool>(true, true, global0[_wgslsmith_index_u32(7791u, 25u)])))), !select(select(vec3<bool>(var_1.a.a, global0[_wgslsmith_index_u32(9968u, 25u)], global0[_wgslsmith_index_u32(23138u, 25u)]), vec3<bool>(var_1.a.a, var_1.a.a, var_1.a.a), !global0[_wgslsmith_index_u32(24173u, 25u)]), select(vec3<bool>(true, true, true), !vec3<bool>(false, global0[_wgslsmith_index_u32(33251u, 25u)], true), vec3<bool>(var_1.a.a, var_1.a.a, global0[_wgslsmith_index_u32(4294967295u, 25u)])), false & (true | var_1.a.a)), true);
    var_2 = var_0.x;
    let var_4 = _wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(121f)))), vec2<bool>(any(!vec4<bool>(true, var_3.x, var_1.a.a, false)), !all(var_3)))).yx;
    var var_5 = func_4(max(_wgslsmith_mult_vec4_i32(-vec4<i32>(1i, 22516i, u_input.a.x, var_1.a.c), -vec4<i32>(2807i, 0i, -25618i, -1i)), _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(u_input.a.x, -1i, -43777i, -45209i)), ~u_input.a, _wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(var_1.a.c, u_input.a.x, u_input.a.x, 1i)))) | u_input.a, !any(vec3<bool>(true, true, all(vec4<bool>(true, global0[_wgslsmith_index_u32(53706u, 25u)], true, var_1.a.a))))).wz;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-866f - 1f), var_4.x, var_1.a.b.x), 5781i, select(4294967295u, 1u, !(false & var_1.a.a)), u_input.a.x, -(var_1.a.c ^ (i32(-1i) * -2147483647i)));
}

