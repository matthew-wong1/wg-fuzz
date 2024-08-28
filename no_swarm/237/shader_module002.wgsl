struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 16> = array<vec3<u32>, 16>(vec3<u32>(4294967295u, 39498u, 1u), vec3<u32>(3189u, 8348u, 4294967295u), vec3<u32>(0u, 21710u, 4294967295u), vec3<u32>(15752u, 0u, 51895u), vec3<u32>(4294967295u, 1u, 50638u), vec3<u32>(1u, 0u, 27534u), vec3<u32>(1u, 89289u, 83307u), vec3<u32>(68729u, 4294967295u, 5486u), vec3<u32>(0u, 64317u, 4294967295u), vec3<u32>(1u, 4294967295u, 88746u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(25349u, 4294967295u, 13774u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(1u, 0u, 11727u), vec3<u32>(0u, 1u, 21027u), vec3<u32>(4294967295u, 20463u, 32045u));

var<private> global1: array<i32, 26>;

var<private> global2: array<bool, 22>;

var<private> global3: Struct_1;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> f32 {
    global1 = array<i32, 26>();
    let var_0 = ~u_input.b;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-322f, _wgslsmith_f_op_f32(round(arg_1)), _wgslsmith_f_op_f32(-arg_1))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, _wgslsmith_f_op_f32(select(1000f, -310f, global2[_wgslsmith_index_u32(1u, 22u)])), _wgslsmith_f_op_f32(floor(arg_1))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-480f, -191f, arg_1))))));
    var var_2 = Struct_1(~firstTrailingBit(_wgslsmith_mod_vec3_u32(firstLeadingBit(var_0.zwz), ~vec3<u32>(4294967295u, 59752u, 33045u))));
    global3 = arg_0;
    return arg_1;
}

fn func_2(arg_0: vec4<i32>, arg_1: i32, arg_2: vec2<u32>, arg_3: bool) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-1380f - 735f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(220f + -2787f) + -625f), 1377f)));
    global0 = array<vec3<u32>, 16>();
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -887f), -309f, _wgslsmith_f_op_f32(func_3(Struct_1(~vec3<u32>(u_input.a, u_input.b.x, 31951u)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))))));
    var var_1 = Struct_1(abs(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(global3.a.x, 4294967295u, 29983u), global3.a, vec3<u32>(0u, 1u, 4294967295u)))));
    global2 = array<bool, 22>();
    return arg_0.x != select(15387i ^ ~global1[_wgslsmith_index_u32(1u, 26u)], abs(1i), arg_0.x == arg_1);
}

fn func_4(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: i32) -> bool {
    var var_0 = 506f;
    var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(553f, 2414f))), _wgslsmith_f_op_f32(sign(1438f))))));
    global2 = array<bool, 22>();
    var var_1 = -select(~(~vec4<i32>(global1[_wgslsmith_index_u32(0u, 26u)], arg_3, -65704i, -353i) >> (abs(u_input.b) % vec4<u32>(32u))), vec4<i32>(abs(global1[_wgslsmith_index_u32(59098u >> (arg_1.x % 32u), 26u)]), arg_3, 19505i, ~(~arg_3)), select(!vec4<bool>(arg_0, arg_0, global2[_wgslsmith_index_u32(4294967295u, 22u)], false), select(!vec4<bool>(false, arg_0, false, true), select(vec4<bool>(global2[_wgslsmith_index_u32(20136u, 22u)], false, arg_0, false), vec4<bool>(arg_0, true, true, global2[_wgslsmith_index_u32(26882u, 22u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(arg_1.x, 22u)], true, arg_0)), true || arg_0), select(!vec4<bool>(true, false, true, arg_0), !vec4<bool>(global2[_wgslsmith_index_u32(arg_1.x, 22u)], true, global2[_wgslsmith_index_u32(u_input.b.x, 22u)], false), 50897i < arg_3)));
    let var_2 = u_input.a;
    return arg_0;
}

fn func_1(arg_0: Struct_1) -> u32 {
    global2 = array<bool, 22>();
    var var_0 = select(false, !(!(!global2[_wgslsmith_index_u32(arg_0.a.x, 22u)])), func_4(func_2(vec4<i32>(2147483647i, -4589i, global1[_wgslsmith_index_u32(u_input.a, 26u)], global1[_wgslsmith_index_u32(24490u, 26u)]), -2147483647i, arg_0.a.zz, false) != true, ~(~global3.a), arg_0, 2147483647i | (global1[_wgslsmith_index_u32(u_input.b.x, 26u)] >> (u_input.a % 32u)))) || true;
    let var_1 = select(!vec4<bool>(!(!global2[_wgslsmith_index_u32(4294967295u, 22u)]), false, arg_0.a.x != _wgslsmith_add_u32(global3.a.x, 0u), false), !vec4<bool>(!any(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 22u)], global2[_wgslsmith_index_u32(u_input.b.x, 22u)], true)), global2[_wgslsmith_index_u32(global3.a.x, 22u)], false, global2[_wgslsmith_index_u32(max(~u_input.b.x, arg_0.a.x), 22u)]), all(!(!vec3<bool>(global2[_wgslsmith_index_u32(0u, 22u)], global2[_wgslsmith_index_u32(0u, 22u)], global2[_wgslsmith_index_u32(0u, 22u)]))));
    global2 = array<bool, 22>();
    global1 = array<i32, 26>();
    return global3.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec2_i32(-vec2<i32>(2147483647i, (i32(-1i) * -2147483647i) | global1[_wgslsmith_index_u32(1u, 26u)]), -vec2<i32>(-global1[_wgslsmith_index_u32(15281u, 26u)], _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(32746u, 26u)], _wgslsmith_dot_vec3_i32(vec3<i32>(1i, global1[_wgslsmith_index_u32(u_input.b.x, 26u)], 1i), vec3<i32>(global1[_wgslsmith_index_u32(global3.a.x, 26u)], -19213i, -2147483647i)))));
    var var_1 = _wgslsmith_clamp_vec3_u32(u_input.b.zzy, vec3<u32>(u_input.a, countOneBits(~global3.a.x), 1u), ~global3.a);
    var_1 = ~vec3<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a, 20055u << (global3.a.x % 32u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a), global0[_wgslsmith_index_u32(global3.a.x, 16u)])), var_1.x, ~func_1(Struct_1(vec3<u32>(u_input.b.x, global3.a.x, var_1.x))));
    let var_2 = !vec4<bool>(true, ~_wgslsmith_sub_u32(70909u, u_input.a) <= ~abs(var_1.x), any(vec2<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 22u)])) && true, !(true || any(vec2<bool>(global2[_wgslsmith_index_u32(global3.a.x, 22u)], false))));
    let var_3 = var_0.x;
    let var_4 = !vec2<bool>(select(true, all(var_2), false) | false, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32((_wgslsmith_clamp_vec2_u32(u_input.b.xx, u_input.b.yz, vec2<u32>(u_input.b.x, 4294967295u)) ^ ~vec2<u32>(global3.a.x, var_1.x)) | abs(vec2<u32>(21737u, global3.a.x) ^ u_input.b.yx), ~firstTrailingBit(vec2<u32>(var_1.x, 0u) & u_input.b.xx), u_input.b.yx), firstTrailingBit(_wgslsmith_dot_vec4_i32((vec4<i32>(1i, -4024i, global1[_wgslsmith_index_u32(global3.a.x, 26u)], -2147483647i) << (u_input.b % vec4<u32>(32u))) ^ vec4<i32>(-1i, 2147483647i, var_0.x, var_0.x), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, var_0.x, var_0.x, -18695i), vec4<i32>(14507i, var_0.x, -2147483647i, var_0.x) | vec4<i32>(2147483647i, var_0.x, -2147483647i, var_0.x)))));
}

