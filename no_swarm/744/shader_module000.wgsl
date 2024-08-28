struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec3<f32>,
    d: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15>;

var<private> global1: array<i32, 2> = array<i32, 2>(64067i, 2147483647i);

var<private> global2: vec3<f32> = vec3<f32>(-1232f, -691f, 854f);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: Struct_2) -> vec3<f32> {
    let var_0 = true;
    let var_1 = var_0;
    global0 = array<i32, 15>();
    let var_2 = _wgslsmith_div_f32(481f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e.x) - -2066f)) + 448f));
    let var_3 = vec3<u32>(_wgslsmith_mod_u32(~abs(select(4294967295u, u_input.c, var_0)), u_input.b), ~_wgslsmith_sub_u32(arg_0.c.d, abs(_wgslsmith_sub_u32(u_input.b, 4294967295u))), 4792u);
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-571f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(667f * global2.x), _wgslsmith_f_op_f32(select(-1701f, var_2, var_0)))), _wgslsmith_f_op_f32(round(global2.x)))), _wgslsmith_f_op_vec3_f32(-arg_0.e.yzx));
}

fn func_3(arg_0: i32, arg_1: vec4<bool>, arg_2: vec4<bool>) -> vec2<i32> {
    var var_0 = abs(abs(-(~global0[_wgslsmith_index_u32(u_input.b, 15u)])) << (u_input.c % 32u));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.x))) + _wgslsmith_f_op_vec3_f32(func_1(Struct_2(vec3<i32>(u_input.d.x, 2147483647i, 33344i), vec2<f32>(234f, global2.x), Struct_1(u_input.d.wz, 1u, vec3<f32>(global2.x, global2.x, global2.x), 38785u), Struct_1(u_input.d.xy, u_input.b, vec3<f32>(651f, global2.x, global2.x), u_input.b), vec4<f32>(global2.x, global2.x, -1100f, global2.x)))).x) + -118f));
    var var_2 = vec2<bool>(arg_2.x, 1602f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))));
    global1 = array<i32, 2>();
    var var_3 = arg_1;
    return abs(~firstLeadingBit(~abs(vec2<i32>(-2147483647i, -2147483647i))));
}

fn func_2(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_1, arg_3: vec2<f32>) -> vec4<u32> {
    let var_0 = arg_3.x != 1358f;
    var var_1 = arg_3.x;
    var var_2 = Struct_3(Struct_1(_wgslsmith_sub_vec2_i32(func_3(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_1, u_input.a.x), 15u)], vec4<bool>(var_0, var_0, var_0, false), vec4<bool>(var_0, var_0, false, true)), vec2<i32>(min(arg_2.a.x, global0[_wgslsmith_index_u32(4294967295u, 15u)]), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 43803u, u_input.c, arg_1), vec4<u32>(41940u, arg_2.b, arg_2.d, 1u)), 2u)])), arg_2.d, arg_2.c, 0u), arg_2, arg_2);
    var_2 = Struct_3(var_2.c, Struct_1(abs(_wgslsmith_mult_vec2_i32(vec2<i32>(-24529i, u_input.d.x), vec2<i32>(18793i, 1i))), firstLeadingBit(0u), var_2.a.c, ~min(1u, 1u)), Struct_1(vec2<i32>(max(firstLeadingBit(u_input.d.x), arg_2.a.x), _wgslsmith_dot_vec3_i32(u_input.d.wxx, vec3<i32>(-75642i, var_2.b.a.x, u_input.d.x))), ~var_2.b.d, arg_2.c, ~(~(~29781u))));
    let var_3 = var_2.b.c.x;
    return max(reverseBits(firstLeadingBit(vec4<u32>(var_2.c.b, ~4294967295u, 4294967295u, 29878u))), vec4<u32>(firstTrailingBit(~7624u) & 19335u, u_input.b, 4294967295u, min(1u, _wgslsmith_sub_u32(u_input.a.x, var_2.c.b | var_2.b.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(global0[_wgslsmith_index_u32(15437u, 15u)], ~u_input.d.x, u_input.d.x, global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_mod_u32(~(~1u), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 45309u, 0u), vec3<u32>(4294967295u, u_input.a.x, u_input.c))))), 15u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(767f, global2.x, 475f, global2.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1558f, global2.x, global2.x, global2.x))) - vec4<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-1115f + global2.x), _wgslsmith_f_op_f32(step(global2.x, global2.x)), -632f))), 1u, var_0.x, func_2(vec2<bool>(true, _wgslsmith_f_op_f32(global2.x + -303f) >= _wgslsmith_f_op_f32(global2.x * 1361f)), ~countOneBits(~u_input.c), Struct_1(firstTrailingBit(var_0.wy), u_input.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(Struct_2(vec3<i32>(u_input.d.x, -1i, -44096i), vec2<f32>(global2.x, global2.x), Struct_1(vec2<i32>(global0[_wgslsmith_index_u32(u_input.c, 15u)], global1[_wgslsmith_index_u32(4294967295u, 2u)]), 4294967295u, vec3<f32>(global2.x, global2.x, global2.x), 35u), Struct_1(vec2<i32>(var_0.x, u_input.d.x), u_input.b, vec3<f32>(982f, global2.x, 1211f), u_input.a.x), vec4<f32>(-1252f, global2.x, global2.x, global2.x))))), 1u), _wgslsmith_f_op_vec2_f32(-global2.zz)), -52991i);
}

