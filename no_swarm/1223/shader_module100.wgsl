struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<f32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31>;

var<private> global1: Struct_2;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<bool>) -> f32 {
    var var_0 = Struct_3(_wgslsmith_sub_vec3_u32(vec3<u32>(~1u, global1.d, ~1u), _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, global1.c, global1.d), vec3<u32>(0u, 15412u, 26553u), vec3<u32>(97409u, 1u, 8987u)), vec3<u32>(u_input.b, u_input.b, global1.c) & vec3<u32>(global1.c, 0u, u_input.b)), ~(~vec3<u32>(4294967295u, u_input.b, u_input.b)))));
    var var_1 = global1.b;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a.a.x, _wgslsmith_f_op_f32(-179f - 108f)) + _wgslsmith_f_op_f32(min(global1.b.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(321f)), var_1.a.x) * -741f))));
    var var_3 = Struct_4(~min(min(_wgslsmith_sub_i32(1i, global1.b.c.x), 5835i), var_1.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global1.a.a, vec2<f32>(-1076f, var_1.a.x)))))), Struct_3(min(abs(vec3<u32>(1u, global1.c, var_0.a.x) >> (var_0.a % vec3<u32>(32u))), min(vec3<u32>(3863u, 106100u, global1.c), var_0.a) | vec3<u32>(0u, u_input.b, 8406u))));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-2038f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(304f))));
    return 1f;
}

fn func_2() -> Struct_3 {
    let var_0 = vec2<i32>(global0[_wgslsmith_index_u32(global1.d, 31u)], u_input.a.x);
    global1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.b.a.x, 445f)))) * global1.a.a), _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(abs(global1.a.b), vec3<i32>(-45419i, global0[_wgslsmith_index_u32(global1.d, 31u)], -15950i), -global1.a.b), firstTrailingBit(u_input.a)), max(~vec2<i32>(u_input.a.x, -1i), _wgslsmith_mod_vec2_i32(global1.b.b.xx, vec2<i32>(global1.b.c.x, var_0.x)))), global1.a, ~max(u_input.b >> (0u % 32u), global1.c), 1u);
    global0 = array<i32, 31>();
    var var_1 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(func_3(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)))), _wgslsmith_f_op_f32(select(1113f, _wgslsmith_f_op_f32(global1.a.a.x * global1.a.a.x), true))), _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-9401i, -20700i, 1i), vec3<i32>(-531i, 20010i, var_0.x) << (vec3<u32>(4294967295u, 0u, u_input.b) % vec3<u32>(32u)), vec3<i32>(-464i, 2147483647i, -7229i)), vec3<i32>(global0[_wgslsmith_index_u32(u_input.b, 31u)], global1.a.b.x << (3214u % 32u), var_0.x)), -(vec2<i32>(u_input.c.x, var_0.x) & reverseBits(vec2<i32>(2147483647i, 1i)))), global1.b, ~_wgslsmith_add_u32(32636u, _wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, global1.d), vec2<u32>(56273u, u_input.b), vec2<bool>(false, false)), vec2<u32>(global1.c, 64841u))), u_input.b);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(757f)));
    return Struct_3(_wgslsmith_sub_vec3_u32(~(~vec3<u32>(u_input.b, 2248u, 1u)), ~vec3<u32>(56776u, ~4294967295u, 44175u)));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = reverseBits(~(-2465i));
    let var_1 = Struct_4(var_0, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global1.a.a.x, global1.b.a.x), global1.a.a) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.a.x, 137f))))))), func_2());
    global1 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-1085f + 1051f), var_1.b.x), ~arg_1, vec2<i32>(-_wgslsmith_clamp_i32(-2147483647i, 1i, -27185i), -global1.b.b.x)), Struct_1(_wgslsmith_f_op_vec2_f32(select(global1.b.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.a.a)), all(vec4<bool>(arg_0.x, true, false, arg_0.x)))), vec3<i32>(global1.b.c.x ^ ~var_1.a, select(u_input.c.x, -1i, arg_0.x), -2147483647i), _wgslsmith_sub_vec2_i32(~(~vec2<i32>(1i, 9762i)), _wgslsmith_mod_vec2_i32(-vec2<i32>(-10713i, -2147483647i), u_input.a.zz))), 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.d, firstTrailingBit(~48444u)), ~(~var_1.c.a.zz) | (var_1.c.a.xz | (vec2<u32>(40145u, global1.c) ^ vec2<u32>(var_1.c.a.x, 28967u)))));
    var var_2 = arg_0;
    let var_3 = 1i;
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(global1.b.a))), arg_1, ~min(vec2<i32>(_wgslsmith_sub_i32(12363i, var_1.a), reverseBits(2751i)), select(u_input.c, u_input.c, true) << (firstLeadingBit(vec2<u32>(global1.d, global1.d)) % vec2<u32>(32u))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1) -> i32 {
    global0 = array<i32, 31>();
    let var_0 = ~arg_0.a;
    let var_1 = vec3<u32>(1u, ~(~4294967295u), 1u);
    return 23576i << (~(~(~_wgslsmith_mod_u32(global1.d, u_input.b))) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(all(vec4<bool>(true, true, true, true)), false, false, 52950i > ~func_4(Struct_4(2147483647i, vec2<f32>(-1341f, -1112f), Struct_3(vec3<u32>(1u, 8218u, 27582u))), func_1(vec3<bool>(false, false, false), vec3<i32>(11994i, global0[_wgslsmith_index_u32(4294967295u, 31u)], 55989i), vec4<bool>(false, true, true, false))));
    let var_1 = vec4<i32>(_wgslsmith_mult_i32(-63406i, global1.a.b.x), global0[_wgslsmith_index_u32(max(countOneBits(9052u | ~global1.c), ~(min(19340u, global1.d) >> (56723u % 32u))), 31u)], firstTrailingBit(global0[_wgslsmith_index_u32(global1.d, 31u)] << (36790u % 32u)), global0[_wgslsmith_index_u32(4294967295u, 31u)]);
    var var_2 = -3105i;
    var_2 = global1.a.c.x;
    global1 = Struct_2(func_1(!(!select(var_0.yxy, var_0.xyz, false)), _wgslsmith_clamp_vec3_i32(var_1.wyx, vec3<i32>(-44815i, u_input.a.x, var_1.x), abs(u_input.a)), !(!select(var_0, vec4<bool>(var_0.x, true, var_0.x, true), var_0.x))), global1.a, _wgslsmith_sub_u32(11002u, _wgslsmith_clamp_u32(~(~4294967295u), global1.d, _wgslsmith_sub_u32(8353u, ~global1.c))), global1.c);
    let var_3 = global1.a;
    global1 = Struct_2(func_1(select(!(!var_0.zxy), var_0.zwx, _wgslsmith_f_op_f32(var_3.a.x * var_3.a.x) <= 1280f), var_3.b, vec4<bool>(!var_0.x, ~u_input.b != 34679u, all(var_0.yz) | var_0.x, var_0.x)), func_1(select(vec3<bool>(true | var_0.x, all(vec3<bool>(var_0.x, true, true)), !var_0.x), select(vec3<bool>(true, true, var_0.x), !vec3<bool>(var_0.x, true, false), !vec3<bool>(var_0.x, var_0.x, true)), var_0.x), firstLeadingBit(~abs(vec3<i32>(u_input.a.x, -1120i, var_1.x))), var_0), 40964u, 47538u);
    let x = u_input.a;
    s_output = StorageBuffer(func_1(var_0.zxy, u_input.a, var_0).a.x, 595f, _wgslsmith_mod_u32(u_input.b, ~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.b, u_input.b, global1.c, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(global1.c, global1.c, global1.c, global1.c), vec4<u32>(0u, u_input.b, u_input.b, global1.d)))), _wgslsmith_mod_u32(_wgslsmith_mod_u32(global1.c >> (~u_input.b % 32u), 1u), 4294967295u));
}

