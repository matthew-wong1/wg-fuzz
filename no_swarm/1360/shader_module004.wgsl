struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: vec4<bool>,
    d: vec2<bool>,
    e: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec3<bool>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: Struct_1 = Struct_1(true);

var<private> global2: array<f32, 4> = array<f32, 4>(-1140f, -896f, -902f, -1000f);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: Struct_1, arg_3: i32) -> i32 {
    var var_0 = arg_2;
    var var_1 = vec3<bool>(var_0.a, false, !(!all(!vec4<bool>(false, var_0.a, true, true))));
    var var_2 = _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(countOneBits(292u), 4u)] * _wgslsmith_f_op_f32(round(-524f))) > 1238f;
    var var_3 = !(!vec2<bool>(arg_2.a, select(true, true, var_1.x)));
    var var_4 = 9886u;
    return _wgslsmith_add_i32(-global0.x, firstTrailingBit(_wgslsmith_sub_i32(_wgslsmith_mod_i32(global0.x, arg_3), global0.x) & (1i | _wgslsmith_sub_i32(2147483647i, arg_3))));
}

fn func_2(arg_0: f32) -> Struct_1 {
    global0 = select(vec4<i32>(global0.x & _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, global0.x) >> (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)), global0.yx >> (vec2<u32>(1u, u_input.a) % vec2<u32>(32u))), max(reverseBits(0i), -1823i), 1i, -24085i), _wgslsmith_div_vec4_i32(-reverseBits(vec4<i32>(-8399i, global0.x, 2147483647i, 26482i)), ~vec4<i32>(global0.x >> (1u % 32u), func_3(global0.x, global1.a, Struct_1(global1.a), global0.x), global0.x, countOneBits(global0.x))), all(!vec3<bool>(false, false, all(vec4<bool>(global1.a, true, global1.a, false)))));
    var var_0 = ~(-(vec3<i32>(1i, 1i, 1i) | select(global0.wxx, vec3<i32>(36930i, global0.x, global0.x), vec3<bool>(true, global1.a, true))) | select(abs(vec3<i32>(2147483647i, global0.x, -16351i)) & abs(vec3<i32>(global0.x, -52903i, -12601i)), global0.wyx, select(vec3<bool>(global1.a, global1.a, global1.a), vec3<bool>(global1.a, global1.a, global1.a), !vec3<bool>(global1.a, true, global1.a))));
    var var_1 = 4294967295u;
    let var_2 = Struct_1(true);
    global0 = vec4<i32>(_wgslsmith_mod_i32(var_0.x & abs(max(0i, global0.x)), -(~_wgslsmith_dot_vec2_i32(vec2<i32>(-51622i, global0.x), vec2<i32>(global0.x, var_0.x)))), global0.x, reverseBits(-1i), _wgslsmith_add_i32(_wgslsmith_clamp_i32(max(global0.x, var_0.x), _wgslsmith_add_i32(var_0.x, 1i) >> (~9189u % 32u), 2147483647i), _wgslsmith_add_i32(~(~global0.x), var_0.x)));
    return Struct_1(_wgslsmith_dot_vec2_i32(global0.xw, global0.zx) <= -1i);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: f32) -> Struct_1 {
    global1 = func_2(887f);
    var var_0 = arg_1.b;
    return func_2(-1101f);
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: i32, arg_3: Struct_3) -> i32 {
    var var_0 = 42697u;
    let var_1 = arg_3.b;
    global1 = Struct_1(false);
    global1 = func_4(func_2(_wgslsmith_f_op_f32(-arg_3.d)), arg_3.b, vec4<bool>(any(select(select(var_1.c, arg_1.b.c, arg_3.b.d.x), select(var_1.c, var_1.c, arg_3.b.d.x), arg_1.b.c)), select(arg_3.b.c.x, arg_3.c.x, all(arg_3.c)) != !(arg_3.c.x || true), false, true), arg_3.a);
    var var_2 = ~arg_2;
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = max(~(~reverseBits(~vec4<i32>(33121i, global0.x, 0i, global0.x))), countOneBits(firstTrailingBit(vec4<i32>(func_1(1i, Struct_3(-1230f, Struct_2(vec4<i32>(global0.x, global0.x, global0.x, global0.x), -1i, vec4<bool>(global1.a, true, false, true), vec2<bool>(true, false), u_input.a), vec3<bool>(true, global1.a, global1.a), global2[_wgslsmith_index_u32(u_input.a, 4u)]), 7922i, Struct_3(global2[_wgslsmith_index_u32(u_input.a, 4u)], Struct_2(vec4<i32>(-1i, global0.x, global0.x, global0.x), global0.x, vec4<bool>(true, global1.a, true, false), vec2<bool>(global1.a, false), 38174u), vec3<bool>(global1.a, true, false), global2[_wgslsmith_index_u32(u_input.a, 4u)])), -global0.x, 1i, global0.x))));
    global0 = -vec4<i32>(-7515i, -abs(-1i), 35292i, 25992i);
    let var_0 = !select(select(select(!vec3<bool>(global1.a, global1.a, false), select(vec3<bool>(true, true, false), vec3<bool>(global1.a, false, global1.a), true), all(vec3<bool>(true, true, false))), vec3<bool>(global1.a, global1.a, false), !(!global1.a)), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, global1.a, true), vec3<bool>(global1.a, true, true), vec3<bool>(global1.a, true, true)), false), vec3<bool>(true, all(vec3<bool>(true, false, global1.a)), global1.a), _wgslsmith_f_op_f32(trunc(371f)) >= global2[_wgslsmith_index_u32(1u, 4u)]), !all(!vec3<bool>(false, global1.a, false)));
    global2 = array<f32, 4>();
    var var_1 = Struct_2(vec4<i32>(26856i, _wgslsmith_dot_vec3_i32(global0.zyw, _wgslsmith_add_vec3_i32(countOneBits(global0.wwx), select(vec3<i32>(-26868i, global0.x, -1062i), vec3<i32>(global0.x, 2147483647i, global0.x), false))), 1i, ~43354i), global0.x, select(select(vec4<bool>(false, true, u_input.a < 22620u, false), vec4<bool>(all(vec4<bool>(var_0.x, var_0.x, global1.a, var_0.x)), true, true, true), vec4<bool>(global1.a, select(false, var_0.x, false), any(vec2<bool>(true, var_0.x)), false && var_0.x)), select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(global1.a, global1.a, true, global1.a), vec4<bool>(true, true, global1.a, global1.a)), vec4<bool>(global1.a, false, global1.a, false), vec4<bool>(var_0.x, true, true, true)), select(select(vec4<bool>(false, true, true, var_0.x), vec4<bool>(global1.a, false, true, false), global1.a), !vec4<bool>(true, var_0.x, false, true), select(vec4<bool>(global1.a, var_0.x, true, var_0.x), vec4<bool>(false, false, true, global1.a), vec4<bool>(var_0.x, false, false, true))), all(var_0.zx)), any(vec3<bool>(true, true, true))), !vec2<bool>(true, !(global1.a || global1.a)), ~(~u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(126f, 837f, global2[_wgslsmith_index_u32(u_input.a, 4u)], -306f)), vec4<f32>(501f, global2[_wgslsmith_index_u32(2603u, 4u)], global2[_wgslsmith_index_u32(u_input.a, 4u)], 1434f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 4u)]), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_1.e, 4u)]), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 4u)]), _wgslsmith_f_op_f32(300f - global2[_wgslsmith_index_u32(0u, 4u)])) + vec4<f32>(-1235f, 1656f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 4u)]), _wgslsmith_f_op_f32(ceil(2328f))))), firstLeadingBit(max(~vec3<u32>(1u, 1u, 1u), ~_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.e, 1u, 1989u), vec3<u32>(1u, 0u, 4294967295u)))), -_wgslsmith_mult_vec3_i32(select(vec3<i32>(global0.x, -12416i, var_1.a.x), vec3<i32>(global0.x, global0.x, var_1.a.x), vec3<bool>(false, true, var_0.x)) | (vec3<i32>(global0.x, 2147483647i, 2147483647i) & vec3<i32>(6426i, 0i, 2147483647i)), _wgslsmith_sub_vec3_i32(global0.yyx, vec3<i32>(34068i, global0.x, var_1.b))));
}

