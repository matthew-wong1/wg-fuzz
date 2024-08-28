struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec3<bool>(true, true, true), 67125u, vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, false, true), 1u, vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, true, true), 47665u, vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, false, true), 1u, vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, true, false), 9148u, vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, true, false), 41521u, vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, true, true), 1u, vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, true, true), 71695u, vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, true, true), 23323u, vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, false, true), 4294967295u, vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, false, false), 0u, vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, true, false), 27373u, vec3<bool>(false, false, true)));

var<private> global2: array<u32, 18>;

var<private> global3: Struct_1 = Struct_1(vec3<bool>(false, true, true), 4294967295u, vec3<bool>(true, true, true));

var<private> global4: Struct_1 = Struct_1(vec3<bool>(true, true, true), 43797u, vec3<bool>(false, true, false));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec4<bool>, arg_1: bool) -> Struct_1 {
    return Struct_1(!global4.c, ~_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(global0.b, 18u)] ^ _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 17276u, global0.b), vec3<u32>(58367u, 758u, 0u)), _wgslsmith_dot_vec3_u32(vec3<u32>(15153u, u_input.b, global4.b), vec3<u32>(1u, 17609u, 0u))), vec3<bool>(true, true, false));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<i32>) -> vec4<bool> {
    var var_0 = arg_3.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-793f, 1332f), vec2<f32>(729f, 875f), arg_2.c.zy)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b, 352f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-733f, 1243f))))))));
    global1 = array<Struct_1, 12>();
    var var_2 = true;
    var_0 = ~((i32(-1i) * -2147483647i) ^ _wgslsmith_dot_vec3_i32(u_input.a, abs(vec3<i32>(u_input.a.x, 18487i, 2147483647i) << (vec3<u32>(33037u, global0.b, 1u) % vec3<u32>(32u)))));
    return vec4<bool>(true, false, false, arg_1.a.a.x);
}

fn func_1(arg_0: vec2<f32>, arg_1: bool) -> StorageBuffer {
    global2 = array<u32, 18>();
    global3 = func_2(vec4<bool>(global4.c.x, false, global4.a.x, true), global4.c.x);
    let var_0 = _wgslsmith_f_op_f32(-197f * arg_0.x);
    var var_1 = -757f;
    var var_2 = Struct_2(Struct_1(global3.c, _wgslsmith_mult_u32(~u_input.b, ~1u), !vec3<bool>(global4.a.x, !global3.c.x, arg_1)), var_0);
    return StorageBuffer(func_2(vec4<bool>(func_2(func_3(vec3<u32>(u_input.b, 1u, 62074u), Struct_2(var_2.a, var_2.b), Struct_1(global3.a, global3.b, var_2.a.a), vec2<i32>(-2147483647i, u_input.a.x)), true).c.x, false != var_2.a.a.x, func_3(select(vec3<u32>(global0.b, var_2.a.b, global2[_wgslsmith_index_u32(16980u, 18u)]), vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(var_2.a.b, 18u)], u_input.b), vec3<bool>(false, true, false)), Struct_2(var_2.a, 414f), var_2.a, ~u_input.a.yx).x, arg_1), true).b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~((~(~vec2<u32>(global0.b, global3.b)) | ~vec2<u32>(0u, global3.b)) ^ abs(_wgslsmith_sub_vec2_u32(vec2<u32>(global4.b, 14449u), vec2<u32>(23193u, 61661u) & vec2<u32>(global4.b, global3.b))));
    global4 = global1[_wgslsmith_index_u32(35789u, 12u)];
    var var_1 = ~vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(-2147483647i, _wgslsmith_div_i32(u_input.a.x, u_input.a.x)), (-1i >> (global4.b % 32u)) & -2147483647i), 0i, -2147483647i, _wgslsmith_mod_i32(-2147483647i, u_input.a.x));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(679f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -131f))));
    var var_3 = vec4<bool>(global0.c.x, var_2 >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-796f + var_2) - -2459f), global4.a.x, true);
    var var_4 = vec4<u32>(1u, ~global0.b, ~global3.b, u_input.b);
    var var_5 = vec3<u32>(4294967295u, ~global0.b, global0.b);
    global1 = array<Struct_1, 12>();
    let x = u_input.a;
    s_output = func_1(vec2<f32>(_wgslsmith_f_op_f32(sign(var_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -685f))), true);
}

