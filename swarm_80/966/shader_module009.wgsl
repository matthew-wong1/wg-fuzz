struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: vec4<bool>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 27> = array<vec3<i32>, 27>(vec3<i32>(4683i, -3918i, -36725i), vec3<i32>(-1i, -31910i, -46169i), vec3<i32>(1i, 1i, 12365i), vec3<i32>(44017i, i32(-2147483648), 0i), vec3<i32>(-1440i, 1i, 0i), vec3<i32>(-1i, -64084i, 15230i), vec3<i32>(-9680i, -62160i, -24712i), vec3<i32>(38874i, 1i, -27074i), vec3<i32>(i32(-2147483648), 2147483647i, 14634i), vec3<i32>(4572i, -1i, i32(-2147483648)), vec3<i32>(-1i, 11296i, -12015i), vec3<i32>(0i, 11236i, 33111i), vec3<i32>(2147483647i, -15233i, 17412i), vec3<i32>(-36862i, 2147483647i, 5564i), vec3<i32>(i32(-2147483648), -1i, 1i), vec3<i32>(-24005i, 3601i, 0i), vec3<i32>(i32(-2147483648), -27844i, 1i), vec3<i32>(25153i, -1i, -1i), vec3<i32>(-36608i, -2289i, i32(-2147483648)), vec3<i32>(-37001i, 2147483647i, 51080i), vec3<i32>(-26451i, 10561i, 49864i), vec3<i32>(0i, 0i, 19896i), vec3<i32>(i32(-2147483648), 67362i, i32(-2147483648)), vec3<i32>(-1397i, 69660i, i32(-2147483648)), vec3<i32>(0i, -26721i, -1i), vec3<i32>(1i, 0i, 2147483647i), vec3<i32>(0i, -34554i, -24260i));

var<private> global1: array<Struct_2, 21>;

var<private> global2: f32 = 274f;

var<private> global3: Struct_3 = Struct_3(vec3<u32>(41319u, 0u, 40475u), -1935f, vec4<bool>(true, true, true, false), -1i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool) -> f32 {
    var var_0 = vec3<bool>(any(global3.c) || !(all(global3.c.wzz) && all(vec4<bool>(true, false, true, arg_0))), (select(false, arg_0, false) & !(!global3.c.x)) || global3.c.x, any(vec3<bool>(all(global3.c.zwz) == global3.c.x, true, global3.c.x)));
    var_0 = vec3<bool>(global3.d <= (-1i ^ (1i >> (_wgslsmith_div_u32(global3.a.x, 91536u) % 32u))), var_0.x, true);
    let var_1 = !(!vec2<bool>(arg_0, !(true && var_0.x)));
    let var_2 = Struct_1(vec3<bool>(!(countOneBits(u_input.a) <= _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, 34582u, u_input.a), vec4<u32>(14928u, 11340u, 37917u, global3.a.x))), !all(global3.c.yy), arg_0));
    var_0 = select(vec3<bool>(all(vec2<bool>(!var_0.x, true)), select(global3.c.x, all(!vec3<bool>(arg_0, true, var_2.a.x)), var_1.x), false), vec3<bool>(all(var_2.a), any(!(!vec4<bool>(true, var_2.a.x, true, var_0.x))), false), vec3<bool>(arg_0, global3.d < ~(global3.d & 11262i), false));
    return global3.b;
}

fn func_2(arg_0: i32, arg_1: vec3<bool>, arg_2: vec3<i32>) -> i32 {
    var var_0 = Struct_3(_wgslsmith_sub_vec3_u32(global3.a, global3.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b)), global3.c, -2147483647i);
    global1 = array<Struct_2, 21>();
    let var_1 = Struct_1(!select(global3.c.xxz, select(!global3.c.xxw, !vec3<bool>(global3.c.x, arg_1.x, true), false), arg_1));
    global3 = Struct_3(firstLeadingBit(abs(vec3<u32>(u_input.a, 9906u, global3.a.x) >> (var_0.a % vec3<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(all(var_0.c)))), vec4<bool>(global3.c.x, true, var_1.a.x, !all(vec4<bool>(true, global3.c.x, var_1.a.x, var_0.c.x))), _wgslsmith_add_i32(36286i, -2147483647i));
    var var_2 = global1[_wgslsmith_index_u32(u_input.a, 21u)];
    return global3.d;
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_mod_i32(func_2(global3.d, vec3<bool>(any(vec3<bool>(true, true, global3.c.x)), false, global3.c.x), global0[_wgslsmith_index_u32(4294967295u, 27u)] | reverseBits(_wgslsmith_div_vec3_i32(global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(u_input.a, 27u)]))), _wgslsmith_mult_i32(global3.d, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global3.d), vec2<i32>(-2147483647i, global3.d)), global3.d)));
    return Struct_1(select(vec3<bool>(!select(false, false, global3.c.x), true, any(select(vec2<bool>(false, true), vec2<bool>(false, global3.c.x), global3.c.x))), !vec3<bool>(!global3.c.x, global3.c.x, !global3.c.x), (true | all(vec4<bool>(global3.c.x, false, global3.c.x, true))) && true));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_3) -> f32 {
    global2 = _wgslsmith_f_op_f32(global3.b + 1957f);
    var var_0 = global1[_wgslsmith_index_u32(arg_2.a.x, 21u)];
    var var_1 = _wgslsmith_dot_vec4_i32(-vec4<i32>(global3.d, -1i, -11696i, -28643i), vec4<i32>(~(~(35220i << (global3.a.x % 32u))), _wgslsmith_add_i32(~(-10002i), arg_2.d), 84i >> (0u % 32u), ~37193i));
    var var_2 = arg_1;
    let var_3 = 0i;
    return arg_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(-198i, global3.d << (1u % 32u));
    var var_1 = global0[_wgslsmith_index_u32(~(~1u), 27u)];
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_1(5886u), func_1(1u), Struct_3(global3.a, global3.b, vec4<bool>(true, global3.c.x, false, global3.c.x), global3.d)))))) * _wgslsmith_f_op_f32(f32(-1f) * -1149f));
    let var_3 = ~firstTrailingBit(var_0.x);
    let var_4 = Struct_3(global3.a, global3.b, vec4<bool>(any(select(!global3.c, !vec4<bool>(global3.c.x, true, false, global3.c.x), !vec4<bool>(global3.c.x, true, global3.c.x, global3.c.x))), true, select(false, true, true), true), -select(var_3, -reverseBits(global3.d), global3.c.x));
    global0 = array<vec3<i32>, 27>();
    global1 = array<Struct_2, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(_wgslsmith_mult_i32(global3.d, ~select(-1i, 28751i, var_4.c.x)), 0i), global0[_wgslsmith_index_u32(var_4.a.x, 27u)], ~var_4.a.zz);
}

