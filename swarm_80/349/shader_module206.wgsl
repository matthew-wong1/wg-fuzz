struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-1i, -1i, 25267i, 3574i);

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false));

var<private> global3: Struct_1 = Struct_1(true);

var<private> global4: Struct_1 = Struct_1(true);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: Struct_1, arg_3: vec3<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(arg_0 - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-935f + -731f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) * -1204f)));
    let var_1 = vec4<bool>(global3.a, !global4.a, any(!vec4<bool>(global4.a, arg_3.x, arg_2.a, true)) & !global3.a, !((global0.x == -u_input.c) | global3.a));
    global2 = array<Struct_1, 19>();
    global0 = ~_wgslsmith_add_vec4_i32(select(~vec4<i32>(4104i, -3752i, -46617i, global0.x) | ~vec4<i32>(global0.x, 0i, global0.x, 5917i), select(vec4<i32>(u_input.c, u_input.c, 0i, 1i), _wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, 2147483647i, u_input.a.x, 15532i), vec4<i32>(global0.x, global0.x, 0i, 17755i)), select(var_1, vec4<bool>(global1.a, arg_2.a, true, global3.a), vec4<bool>(arg_3.x, true, arg_3.x, arg_3.x))), arg_2.a), vec4<i32>(u_input.a.x, _wgslsmith_sub_i32(30886i, 31522i >> (u_input.b % 32u)), -39282i, global0.x));
    var var_2 = arg_2;
    return true;
}

fn func_3(arg_0: vec2<u32>) -> vec3<u32> {
    var var_0 = vec4<bool>(any(select(select(select(vec2<bool>(global1.a, global3.a), vec2<bool>(global3.a, global3.a), vec2<bool>(global1.a, true)), select(vec2<bool>(global4.a, global1.a), vec2<bool>(global4.a, false), global4.a), select(vec2<bool>(global4.a, global4.a), vec2<bool>(true, false), false)), !select(vec2<bool>(true, false), vec2<bool>(global3.a, global4.a), vec2<bool>(false, global3.a)), !global3.a)), global3.a, global4.a, false);
    var_0 = !select(vec4<bool>(true, arg_0.x <= ~4294967295u, true, !(true && global3.a)), select(!(!vec4<bool>(global3.a, global4.a, global1.a, true)), !select(vec4<bool>(global1.a, global4.a, global3.a, true), vec4<bool>(true, global1.a, false, global4.a), vec4<bool>(false, global4.a, var_0.x, global1.a)), global1.a), all(var_0.ww));
    global2 = array<Struct_1, 19>();
    var var_1 = global2[_wgslsmith_index_u32(firstTrailingBit(u_input.d.x) ^ (u_input.d.x << (~(~62556u) % 32u)), 19u)];
    global2 = array<Struct_1, 19>();
    return vec3<u32>(_wgslsmith_div_u32(arg_0.x, 1u), 1u, 39405u << (u_input.b % 32u));
}

fn func_2(arg_0: f32, arg_1: u32) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1960f * _wgslsmith_f_op_f32(-arg_0)), -704f)));
    let var_1 = vec4<bool>(13828i < select(u_input.c, global0.x, _wgslsmith_f_op_f32(round(1000f)) < _wgslsmith_f_op_f32(min(arg_0, arg_0))), global4.a, false, global0.x != ((u_input.c | ~u_input.c) | u_input.a.x));
    global3 = Struct_1(global4.a);
    global3 = global2[_wgslsmith_index_u32(1u, 19u)];
    var var_2 = _wgslsmith_dot_vec3_u32(func_3(vec2<u32>(_wgslsmith_add_u32(arg_1, u_input.b) << (arg_1 % 32u), arg_1)), vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, 2329u), select(~u_input.d, min(vec2<u32>(arg_1, 1u), vec2<u32>(u_input.b, 4294967295u)), global3.a)), 68921u, 63148u));
    return StorageBuffer(1u, vec4<i32>(min(countOneBits(global0.x), global0.x), _wgslsmith_div_i32(select(select(-17414i, u_input.a.x, var_1.x), -2147483647i >> (u_input.d.x % 32u), any(var_1.yw)), -52783i), global0.x, ~u_input.a.x), countOneBits(u_input.d >> (~(~u_input.d) % vec2<u32>(32u))), _wgslsmith_add_vec4_i32(vec4<i32>(15082i, global0.x, u_input.c, 10878i), vec4<i32>(select(~(-60994i), countOneBits(-1i), true), 18003i, ~(-global0.x), countOneBits(u_input.a.x) ^ u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(!(~u_input.b >= 37518u));
    var var_0 = _wgslsmith_f_op_f32(abs(-1855f));
    global4 = Struct_1(func_1(_wgslsmith_f_op_f32(-1023f - _wgslsmith_f_op_f32(-419f + 250f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1778f - -2731f), _wgslsmith_f_op_f32(f32(-1f) * -942f)), global2[_wgslsmith_index_u32(~0u, 19u)], vec3<bool>(global4.a, global4.a, false)) & any(vec2<bool>(true, true)));
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-816f, 997f, 1000f, 1206f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1356f, -191f, 484f, 376f)), true))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(237f, -940f, -1589f, 1447f))))))));
    var var_3 = Struct_1(any(!vec4<bool>(any(vec3<bool>(false, global1.a, global4.a)), all(vec4<bool>(false, var_1, global3.a, false)), true, var_2.x >= var_2.x)));
    let var_4 = -966f;
    let x = u_input.a;
    s_output = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - var_2.x)), reverseBits(~_wgslsmith_add_u32(~21406u, abs(u_input.d.x))));
}

