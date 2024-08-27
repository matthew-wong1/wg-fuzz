struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: f32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: vec3<u32>,
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

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(vec4<i32>(-17786i, -24764i, 16181i, 35426i), vec3<f32>(1057f, -1379f, 172f), -478f, vec3<i32>(-1i, -34408i, -38244i));

var<private> global2: array<vec3<bool>, 6> = array<vec3<bool>, 6>(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false));

var<private> global3: array<Struct_1, 3>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: bool) -> vec2<i32> {
    global2 = array<vec3<bool>, 6>();
    var var_0 = select(vec2<bool>(any(!select(global2[_wgslsmith_index_u32(u_input.e.x, 6u)], global2[_wgslsmith_index_u32(u_input.e.x, 6u)], false)), true), !select(vec2<bool>(true, true), !select(vec2<bool>(arg_2, true), vec2<bool>(arg_2, true), arg_2), vec2<bool>(arg_2, true)), arg_2);
    let var_1 = 1i;
    var var_2 = !select(!(!vec4<bool>(true, false, var_0.x, arg_2)), vec4<bool>(true, all(global2[_wgslsmith_index_u32(~4294967295u, 6u)]), any(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.d.x, u_input.e.x), 6u)]), !any(vec4<bool>(arg_2, true, true, arg_2))), true);
    global2 = array<vec3<bool>, 6>();
    return ~(-vec2<i32>(global1.a.x, firstTrailingBit(~global0.d.x)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = -_wgslsmith_mod_vec2_i32(~_wgslsmith_sub_vec2_i32(select(vec2<i32>(u_input.a.x, global0.d.x), u_input.a.yx, vec2<bool>(false, true)), min(arg_0.d.yy, global0.a.zz)), _wgslsmith_add_vec2_i32(arg_0.a.zx, func_3(_wgslsmith_sub_vec2_i32(global0.a.yw, vec2<i32>(39484i, u_input.c)), arg_0, true)));
    let var_1 = 1103f;
    global2 = array<vec3<bool>, 6>();
    global3 = array<Struct_1, 3>();
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.c, global1.b.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c, 2008f)))))));
    return arg_0;
}

fn func_1(arg_0: vec4<bool>, arg_1: f32) -> i32 {
    var var_0 = func_2(Struct_1(_wgslsmith_add_vec4_i32(countOneBits(~global1.a), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.d.x, 1i), global0.a.ww), 34310i, -2147483647i, -1i)), global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c + _wgslsmith_f_op_f32(global0.b.x - 912f))), -_wgslsmith_add_vec3_i32(-u_input.a.yyz, global0.a.xyx)));
    var_0 = Struct_1(max(global1.a << (max(~vec4<u32>(0u, 60295u, 25427u, 18210u), ~vec4<u32>(u_input.e.x, 0u, 0u, u_input.d.x)) % vec4<u32>(32u)), global0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.b * global0.b) + vec3<f32>(-1861f, arg_1, global0.c))), global1.b.x, reverseBits(vec3<i32>(1i, _wgslsmith_mod_i32(global0.a.x, -3181i), -(global1.d.x >> (u_input.d.x % 32u)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1003f + -1000f)), -1285f, func_2(Struct_1(_wgslsmith_mult_vec4_i32(var_0.a, vec4<i32>(var_0.d.x, 2147483647i, global0.d.x, 2147483647i)), global0.b, _wgslsmith_f_op_f32(global1.c - -702f), _wgslsmith_div_vec3_i32(vec3<i32>(var_0.a.x, -1i, var_0.a.x), vec3<i32>(global1.d.x, u_input.c, 26401i)))).b.x)));
    let var_2 = vec3<bool>(arg_0.x, min(_wgslsmith_div_u32(u_input.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 22123u, 32144u, u_input.e.x), vec4<u32>(u_input.e.x, 1u, 47971u, u_input.d.x))), u_input.e.x) < 0u, all(vec2<bool>(!(global1.a.x <= -73751i), true)));
    global0 = func_2(func_2(func_2(func_2(Struct_1(var_0.a, global0.b, 192f, u_input.a.xyw)))));
    return -((1i | var_0.a.x) & min(-_wgslsmith_add_i32(0i, global0.a.x), 4102i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 969f;
    global0 = Struct_1(vec4<i32>(1i, u_input.c & ~_wgslsmith_mod_i32(global1.a.x, global1.a.x), 1i, _wgslsmith_add_i32(func_1(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), true), -1489f), -2147483647i)), global0.b, -117f, _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(global0.a.zyw >> (u_input.e % vec3<u32>(32u)), vec3<i32>(u_input.c, global0.a.x, global0.d.x)), max(_wgslsmith_mod_vec3_i32(vec3<i32>(global0.d.x, global0.a.x, -16566i), global1.a.yyz), abs(u_input.a.yxw)), vec3<i32>(u_input.c, global1.d.x, u_input.a.x) >> (vec3<u32>(u_input.d.x, u_input.d.x, u_input.e.x) % vec3<u32>(32u))), global0.d));
    global0 = Struct_1(countOneBits(-vec4<i32>(func_3(global0.a.yw, Struct_1(global1.a, vec3<f32>(709f, 1000f, -469f), -1234f, global0.a.xzz), false).x, min(-2147483647i, 0i), -1i, global1.d.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(732f, var_0, -639f) - global1.b)))), -311f, u_input.a.zwx);
    global3 = array<Struct_1, 3>();
    global1 = global3[_wgslsmith_index_u32(~u_input.d.x, 3u)];
    global3 = array<Struct_1, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.wyw);
}

