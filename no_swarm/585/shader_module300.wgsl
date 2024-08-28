struct Struct_1 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 17> = array<f32, 17>(-1145f, -1125f, 205f, 1752f, -964f, -599f, -1066f, -1694f, -1602f, 856f, 699f, -322f, -132f, 2525f, -2056f, 576f, -107f);

var<private> global1: vec2<bool>;

var<private> global2: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(4294967295u, i32(-2147483648)), Struct_1(4294967295u, 2147483647i), Struct_1(91227u, 0i), Struct_1(4294967295u, 2147483647i), Struct_1(25927u, 2147483647i), Struct_1(1276u, i32(-2147483648)));

var<private> global3: vec4<u32> = vec4<u32>(59613u, 40597u, 1u, 0u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: f32, arg_3: vec2<i32>) -> vec2<bool> {
    var var_0 = Struct_1(~_wgslsmith_add_u32(global3.x, 1u), ~(-4046i));
    let var_1 = !(!((537f == _wgslsmith_f_op_f32(-arg_0.x)) && global1.x));
    global2 = array<Struct_1, 6>();
    let var_2 = vec2<bool>(all(!vec4<bool>(all(vec4<bool>(true, var_1, true, true)), any(vec3<bool>(var_1, global1.x, true)), !global1.x, false)), true);
    global2 = array<Struct_1, 6>();
    return select(var_2, var_2, var_2);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: i32, arg_3: i32) -> vec2<bool> {
    global3 = max(~(~(~vec4<u32>(51160u, arg_0.a, 4294967295u, u_input.a.x)) ^ vec4<u32>(~26226u, ~81771u, ~u_input.a.x, 0u)), u_input.a);
    global3 = vec4<u32>(min(_wgslsmith_mult_u32(4294967295u, min(1u, arg_0.a)), ~global3.x), 4294967295u, ~(~(~abs(0u))), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(0u, _wgslsmith_clamp_u32(22183u, 4294967295u, arg_0.a)), ~u_input.a.x, abs(~1u)), ~reverseBits(vec3<u32>(31016u, global3.x, global3.x))));
    var var_0 = arg_0;
    let var_1 = ~firstLeadingBit(vec2<i32>(arg_2, _wgslsmith_add_i32(5201i, arg_3)));
    var var_2 = _wgslsmith_mult_vec3_u32(vec3<u32>(1u, ~global3.x, 14481u), ~global3.yzx) >> (vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.a.x, 73995u), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 1u, arg_0.a, 3831u), vec4<u32>(global3.x, 0u, 0u, var_0.a))), _wgslsmith_mult_u32(~select(var_0.a, 66831u, global1.x), 21349u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 5450u), vec3<u32>(44337u, 13695u, global3.x)) | (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, arg_0.a), vec2<u32>(1454u, 6602u)) << (~1u % 32u))) % vec3<u32>(32u));
    return vec2<bool>(global3.x != _wgslsmith_div_u32(4294967295u, (1u >> (arg_0.a % 32u)) ^ ~20755u), global1.x);
}

fn func_1(arg_0: i32, arg_1: i32) -> vec2<bool> {
    var var_0 = global2[_wgslsmith_index_u32(abs(20834u), 6u)];
    global2 = array<Struct_1, 6>();
    global3 = vec4<u32>(global3.x >> (~(~u_input.a.x) % 32u), 1u, var_0.a, 0u) & ~vec4<u32>(var_0.a << (min(1u, 38407u) % 32u), 33222u, ~_wgslsmith_div_u32(u_input.a.x, 4294967295u), firstTrailingBit(abs(global3.x)));
    global0 = array<f32, 17>();
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(23770u, 17u)])))), -2036f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global3.x, 17u)] - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(50866u, 17u)] * 321f))))), _wgslsmith_f_op_f32(560f - global0[_wgslsmith_index_u32(5294u, 17u)]));
    return !select(select(select(func_2(vec3<f32>(1000f, 147f, var_1.x), vec4<i32>(arg_1, 1i, 0i, var_0.b), global0[_wgslsmith_index_u32(global3.x, 17u)], vec2<i32>(arg_0, var_0.b)), func_3(global2[_wgslsmith_index_u32(global3.x, 6u)], vec2<f32>(var_1.x, var_1.x), arg_1, arg_0), vec2<bool>(global1.x, global1.x)), select(!vec2<bool>(true, global1.x), vec2<bool>(true, global1.x), global1.x & true), !func_3(global2[_wgslsmith_index_u32(global3.x, 6u)], vec2<f32>(var_1.x, global0[_wgslsmith_index_u32(var_0.a, 17u)]), arg_1, 2147483647i)), !vec2<bool>(!global1.x, global1.x & global1.x), func_3(Struct_1(1u, -10660i), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(608f, -179f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(0u, 17u)], 1000f))), 12110i, abs(~arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.x;
    let var_1 = !func_1(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(-1i, -1i), _wgslsmith_div_i32(9997i, -1i)), vec2<i32>(2147483647i, -2147483647i)), _wgslsmith_mult_i32(-2147483647i << (global3.x % 32u), 1i) ^ 1i);
    global1 = var_1;
    global1 = select(vec2<bool>(_wgslsmith_mod_i32(1i, ~1036i) <= _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(19534i, -58188i, 15282i, 29041i), vec4<i32>(19157i, 24493i, 19890i, -2147483647i)), 0i), all(var_1)), vec2<bool>(global1.x, !all(var_1)), vec2<bool>(reverseBits(global3.x) <= ~(global3.x | u_input.a.x), true));
    let var_2 = 1f;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(3752i, -349i, 1i), vec3<i32>(5507i, -26587i, -2147483647i)))));
}

