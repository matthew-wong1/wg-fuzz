struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(-975f, 992f), vec4<bool>(true, false, false, false), false);

var<private> global1: bool;

var<private> global2: array<Struct_1, 1>;

var<private> global3: array<Struct_1, 27>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    global1 = arg_2.c;
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, -652f, arg_2.a.x))), vec3<f32>(_wgslsmith_f_op_f32(max(global0.a.x, arg_2.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1623f), arg_2.a.x)))));
    global3 = array<Struct_1, 27>();
    let var_1 = vec3<bool>(!any(select(vec3<bool>(arg_0, false, true), !vec3<bool>(arg_0, global0.b.x, arg_2.b.x), true)), (firstTrailingBit(u_input.b.x) > ~abs(96860u)) & true, false);
    global1 = !arg_0;
    return -min(~reverseBits(1i), _wgslsmith_clamp_i32(-(-5893i << (u_input.a % 32u)), 40677i, (27978i >> (u_input.a % 32u)) ^ -1i));
}

fn func_1() -> vec4<i32> {
    let var_0 = ~u_input.b.xx;
    global2 = array<Struct_1, 1>();
    global3 = array<Struct_1, 27>();
    global3 = array<Struct_1, 27>();
    return -vec4<i32>(_wgslsmith_mult_i32(22463i, ~1i), countOneBits(firstLeadingBit(-1i)) | select(reverseBits(-2147483647i), ~15086i, global0.c), _wgslsmith_sub_i32(-2147483647i, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-7718i, 1i, 1330i), vec3<i32>(1938i, -35138i, 1i)), 1i)), -2147483647i | func_2(4294967295u >= var_0.x, global3[_wgslsmith_index_u32(~56305u, 27u)], Struct_1(global0.a, vec4<bool>(global0.c, true, true, global0.b.x), true)));
}

fn func_3(arg_0: vec4<i32>, arg_1: i32) -> f32 {
    var var_0 = global3[_wgslsmith_index_u32(~(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.b.x, 0u, u_input.a, u_input.b.x)) << (vec4<u32>(u_input.a, u_input.b.x, u_input.a, u_input.a) % vec4<u32>(32u)), ~countOneBits(vec4<u32>(u_input.b.x, 32096u, 0u, u_input.b.x))) << ((0u & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 0u, u_input.b.x, 105813u), ~vec4<u32>(u_input.b.x, 1144u, u_input.a, u_input.a))) % 32u)), 27u)];
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, -1000f) + var_0.a), select(!vec4<bool>(false, all(vec4<bool>(global0.c, global0.c, false, var_0.b.x)), false, !var_0.c), !select(select(var_0.b, vec4<bool>(var_0.c, global0.c, true, true), var_0.b), vec4<bool>(false, global0.b.x, var_0.b.x, global0.b.x), true), var_0.b.x), !(!var_0.c));
    var var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(global0.a + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_0.a, global0.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(650f, var_0.a.x))), var_0.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-280f, global0.a.x))))) + _wgslsmith_f_op_vec2_f32(max(var_0.a, global0.a))))));
    var var_3 = Struct_1(var_0.a, select(select(vec4<bool>(!var_1.c, var_0.b.x, true, true), !(!vec4<bool>(false, false, var_0.b.x, true)), var_1.b.x), var_0.b, select(vec4<bool>(select(global0.c, false, global0.b.x), true, u_input.b.x == 0u, all(var_1.b.wwx)), select(!var_0.b, !global0.b, vec4<bool>(global0.b.x, true, global0.c, global0.b.x)), select(true, false, false) || !var_0.b.x)), var_1.c);
    var var_4 = vec4<u32>(firstTrailingBit(abs(min(u_input.a, u_input.b.x))), ~0u, _wgslsmith_mod_u32(_wgslsmith_add_u32(abs(abs(1u)), u_input.a), ~u_input.a), ~_wgslsmith_add_u32(min(u_input.b.x ^ 4294967295u, u_input.b.x ^ 52869u), 1u | u_input.a));
    return _wgslsmith_f_op_f32(step(528f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(417f))), 1070f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = true;
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3(select(func_1(), vec4<i32>(1i, 1i, 1i, 1i), global0.b), 68720i)), _wgslsmith_f_op_f32(1620f - -450f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.a.x - 1199f))), global0.a.x))));
    global0 = global3[_wgslsmith_index_u32(~(~(~40911u)), 27u)];
    var var_1 = !all(vec4<bool>(true, global0.c, (21696u << (u_input.b.x % 32u)) == ~u_input.a, global0.c));
    let var_2 = global3[_wgslsmith_index_u32(u_input.b.x, 27u)];
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(var_0.yx)), vec4<bool>(true, var_2.b.x, true, true), !(var_2.c == all(!vec3<bool>(false, false, var_2.c))));
    var var_4 = var_3;
    let var_5 = select(var_4.b, !global0.b, select(select(select(vec4<bool>(global0.c, true, false, true), vec4<bool>(false, false, var_3.b.x, true), vec4<bool>(false, true, true, var_4.c)), select(vec4<bool>(var_3.b.x, var_2.b.x, var_3.c, var_2.b.x), var_4.b, vec4<bool>(true, true, true, true)), !global0.b.x && var_4.b.x), select(vec4<bool>(true, true, false, any(global0.b)), !(!vec4<bool>(true, var_2.c, var_4.c, true)), select(var_4.b, vec4<bool>(var_4.b.x, true, false, var_2.b.x), true)), select(var_2.b, global0.b, _wgslsmith_f_op_f32(-469f * var_0.x) >= -1556f)));
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, u_input.b.x, 1u) ^ u_input.b)), min(min(vec3<i32>(1i, ~(-38902i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 26524i, -2147483647i), vec3<i32>(-1i, 1i, 53692i))), vec3<i32>(~2147483647i, 1i, abs(-67801i))), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, -1i, func_1().x), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-19834i, 1i, -56398i), vec3<i32>(-19910i, 2147483647i, 46148i)), select(vec3<i32>(-12319i, -39312i, 0i), vec3<i32>(-21760i, -59378i, -578i), var_2.b.x), _wgslsmith_mod_vec3_i32(vec3<i32>(-10330i, 29101i, 45424i), vec3<i32>(28739i, 42094i, 2147483647i))), firstTrailingBit(-vec3<i32>(78272i, 9401i, 26629i)))));
}

