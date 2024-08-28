struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec4<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1>;

var<private> global1: Struct_2;

var<private> global2: array<vec3<f32>, 30>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: bool) -> i32 {
    var var_0 = Struct_1(u_input.a, ~41224u);
    let var_1 = arg_1.zy;
    global1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(abs(-916f)), global1.a.x), global1.b);
    var_0 = Struct_1(~52395u, countOneBits(reverseBits(select(0u, 4294967295u, false)) >> (~4294967295u % 32u)));
    let var_2 = Struct_1(~_wgslsmith_add_u32(~44412u, 4294967295u << (arg_0.x % 32u)), ~var_0.a);
    return _wgslsmith_mod_i32(global1.b, global1.b);
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.a.x - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(global1.a.x)), _wgslsmith_f_op_f32(-global1.a.x))))))));
    global0 = array<u32, 1>();
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-global1.a), global1.b ^ reverseBits(func_3(~vec4<u32>(87277u, u_input.a, 4294967295u, global0[_wgslsmith_index_u32(0u, 1u)]), vec3<bool>(true, true, true), true)));
    var var_2 = vec4<i32>(firstTrailingBit(2147483647i), reverseBits(var_1.b), -global1.b, ~var_1.b);
    global1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(global1.a)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, global1.a.x) - var_1.a))))), -1i);
    return Struct_1(_wgslsmith_sub_u32(_wgslsmith_div_u32(reverseBits(_wgslsmith_clamp_u32(u_input.a, 4294967295u, 120613u)), 60233u), max(u_input.a, ~1u)), ~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(global0[_wgslsmith_index_u32(2092u, 1u)], u_input.a, 40838u, u_input.a)), ~(~vec4<u32>(43116u, 150000u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 1u)], 1u)], u_input.a))));
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: bool) -> Struct_1 {
    let var_0 = func_2();
    let var_1 = reverseBits(_wgslsmith_sub_vec4_i32(~_wgslsmith_mult_vec4_i32(select(vec4<i32>(72355i, 2475i, global1.b, -16817i), vec4<i32>(1i, global1.b, arg_1.b, -1i), vec4<bool>(arg_2, arg_0, true, arg_0)), vec4<i32>(0i, global1.b, global1.b, -2147483647i)), _wgslsmith_mult_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, global1.b, arg_1.b), vec4<i32>(arg_1.b, -2147483647i, 19628i, 14300i)), vec4<i32>(-2147483647i, arg_1.b, ~global1.b, ~arg_1.b))));
    let var_2 = _wgslsmith_div_f32(-724f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x - global1.a.x))) - arg_1.a.x));
    var var_3 = ~(~_wgslsmith_div_vec2_u32(~min(vec2<u32>(1u, global0[_wgslsmith_index_u32(45596u, 1u)]), vec2<u32>(58008u, u_input.a)), abs(vec2<u32>(u_input.a, 35644u) >> (vec2<u32>(var_0.b, var_0.b) % vec2<u32>(32u)))));
    var var_4 = arg_1;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 1>();
    global0 = array<u32, 1>();
    let var_0 = Struct_1(~global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, _wgslsmith_div_u32(max(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3445u, 1u)], 1u)], 1u)], u_input.a), global0[_wgslsmith_index_u32(26188u, 1u)] >> (u_input.a % 32u))), 1u)], ~(select(firstTrailingBit(0u), select(global0[_wgslsmith_index_u32(0u, 1u)], u_input.a, true), false) << (~(~64732u) % 32u)));
    global0 = array<u32, 1>();
    let var_1 = var_0;
    var var_2 = vec2<bool>(false, true);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-515f + _wgslsmith_f_op_f32(global1.a.x + global1.a.x)), global1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(abs(652f))))), 233f);
    let var_4 = func_1(true, Struct_2(global1.a, _wgslsmith_dot_vec2_i32(vec2<i32>(~(-11712i), -35838i), _wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(-44864i, 7920i)), ~vec2<i32>(9418i, global1.b)))), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~vec3<i32>(9872i, -152195i, global1.b)) >> ((~(~vec3<u32>(72973u, 1u, var_4.a)) & (_wgslsmith_sub_vec3_u32(vec3<u32>(9908u, 0u, var_4.a), vec3<u32>(var_4.a, 16134u, 1u)) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, var_4.b, 1u), vec3<u32>(var_4.b, 4294967295u, 51982u)))) % vec3<u32>(32u)), vec3<u32>(firstTrailingBit(33662u), 88877u, u_input.a), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-339f, global1.a.x, -764f, 1837f) + vec4<f32>(1420f, 3098f, -1307f, -538f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, 899f, global1.a.x, var_3.x) - vec4<f32>(419f, global1.a.x, var_3.x, 216f)))))), vec4<f32>(1177f, -1000f, var_3.x, global1.a.x), _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 0u, 9306u), vec3<u32>(4294967295u, var_1.b, var_0.a)), _wgslsmith_sub_vec3_u32(~vec3<u32>(1u, var_0.a, 8459u), ~vec3<u32>(1u, var_0.b, var_4.b))), abs(abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.b, var_0.b, var_4.b), vec3<u32>(75752u, global0[_wgslsmith_index_u32(1u, 1u)], 1u), vec3<u32>(var_4.a, var_4.b, var_4.a))))));
}

