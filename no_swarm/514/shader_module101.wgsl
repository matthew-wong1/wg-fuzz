struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: vec2<bool>,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec4<bool>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 1u, 7840u, 4294967295u);

var<private> global1: array<bool, 2>;

var<private> global2: array<u32, 18>;

var<private> global3: array<Struct_3, 19>;

var<private> global4: vec3<i32> = vec3<i32>(-1i, -21530i, 31922i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_3 {
    let var_0 = vec3<u32>(global0.x, ~_wgslsmith_dot_vec4_u32(firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 61628u, 4444u, global2[_wgslsmith_index_u32(5435u, 18u)]), vec4<u32>(global0.x, arg_2.a, arg_2.a, u_input.c))), ~vec4<u32>(1u, 1u, 47575u, 4294967295u)), global0.x);
    let var_1 = 1000f;
    global2 = array<u32, 18>();
    var var_2 = ~1i;
    let var_3 = _wgslsmith_dot_vec2_u32(var_0.zy, countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(global0.x, global0.x, 4294967295u), global0.x), vec2<u32>(var_0.x, 3863u) | vec2<u32>(33866u, 35010u))));
    return global3[_wgslsmith_index_u32(~arg_2.a, 19u)];
}

fn func_3(arg_0: vec2<i32>, arg_1: bool) -> vec4<u32> {
    global3 = array<Struct_3, 19>();
    let var_0 = vec4<bool>(global1[_wgslsmith_index_u32(27080u, 2u)], any(!func_1(_wgslsmith_div_i32(arg_0.x, arg_0.x), u_input.b, Struct_1(u_input.a, vec4<bool>(true, true, arg_1, arg_1))).a.b.zww), global1[_wgslsmith_index_u32(~(~u_input.c), 2u)], false);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1f, 1f, 1f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 758f, 1351f) * vec3<f32>(-842f, 386f, -406f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-965f, -1166f, 689f) + vec3<f32>(-2014f, 539f, 553f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(790f, 277f, -890f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(960f, -475f, 358f))))));
    let var_2 = -global4.x;
    global1 = array<bool, 2>();
    return select(~firstTrailingBit(_wgslsmith_mod_vec4_u32(~vec4<u32>(7800u, 4294967295u, u_input.a, u_input.a), vec4<u32>(0u, 0u, global0.x, 1u) >> (vec4<u32>(1u, global0.x, 1u, global0.x) % vec4<u32>(32u)))), ~(vec4<u32>(u_input.a, 36148u, 23377u, global0.x) >> (~vec4<u32>(1u, 4294967295u, 7160u, global0.x) % vec4<u32>(32u))) << (~(~vec4<u32>(66994u, global0.x, u_input.c, global2[_wgslsmith_index_u32(global0.x, 18u)]) & vec4<u32>(global2[_wgslsmith_index_u32(global0.x, 18u)], 0u, 4294967295u, global0.x)) % vec4<u32>(32u)), var_0);
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: vec3<bool>) -> StorageBuffer {
    global2 = array<u32, 18>();
    global1 = array<bool, 2>();
    global0 = func_3(_wgslsmith_mult_vec2_i32(~global4.xx, ~u_input.b), true);
    global2 = array<u32, 18>();
    global4 = min(~(-_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(45877i, 8115i, 1i)), vec3<i32>(arg_0.x, arg_1.d, 0i), arg_0)), arg_0);
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(sign(arg_1.b.xz)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(global0.yzz);
    let x = u_input.a;
    s_output = func_2(vec3<i32>(2147483647i, -2147483647i, ~u_input.b.x), func_1(_wgslsmith_mult_i32(_wgslsmith_sub_i32(global4.x, max(global4.x, 2147483647i)), global4.x), u_input.b, Struct_1(global0.x, select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 2u)], global1[_wgslsmith_index_u32(40058u, 2u)], false, global1[_wgslsmith_index_u32(1u, 2u)]), select(vec4<bool>(true, global1[_wgslsmith_index_u32(global0.x, 2u)], global1[_wgslsmith_index_u32(9284u, 2u)], global1[_wgslsmith_index_u32(u_input.c, 2u)]), vec4<bool>(global1[_wgslsmith_index_u32(59286u, 2u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.x, 18u)], 2u)], global1[_wgslsmith_index_u32(u_input.c, 2u)], true), global1[_wgslsmith_index_u32(4294967295u, 2u)]), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 2u)], false, global1[_wgslsmith_index_u32(26803u, 2u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 18u)], 18u)], 2u)])))), func_1(~(~u_input.b.x << (~var_0.x % 32u)), ~abs(vec2<i32>(global4.x, u_input.b.x)) << (firstTrailingBit(~global0.xy) % vec2<u32>(32u)), func_1(global4.x, u_input.b, func_1(~(-16469i), max(vec2<i32>(-2147483647i, u_input.b.x), u_input.b), func_1(u_input.b.x, u_input.b, Struct_1(var_0.x, vec4<bool>(false, false, global1[_wgslsmith_index_u32(4294967295u, 2u)], true))).a).a).a).c.xxz);
}

